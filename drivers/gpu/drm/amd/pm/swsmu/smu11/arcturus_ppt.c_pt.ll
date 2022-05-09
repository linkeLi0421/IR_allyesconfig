; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c"
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
%struct.PPTable_t = type { i32, [2 x i32], [4 x i16], [4 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i16, i16, i8, [3 x i8], i16, i16, i16, i16, i16, i16, [6 x %struct.DpmDescriptor_t], [16 x i16], [8 x i16], [8 x i16], [8 x i16], [4 x i16], [8 x i16], [16 x i32], [2 x i16], [2 x i16], i16, i16, [4 x i8], i16, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, [2 x i8], [2 x i8], [2 x %struct.QuadraticInt_t], %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, [2 x %struct.LinearInt_t], [2 x %struct.QuadraticInt_t], [2 x i16], [2 x i8], [2 x i8], [2 x i16], [2 x i16], [2 x i16], [2 x i8], [2 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, i16, i16, i8, i8, i16, i16, i16, [6 x i32], i16, i16, i16, i16, i16, i16, i16, i16, [7 x i32], i16, i16, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, [8 x %struct.I2cControllerConfig_t], i32, i8, [3 x i8], i16, i16, [4 x i8], [4 x i8], [4 x i16], [4 x i16], i8, i8, i16, i32, i32, [7 x i32], [8 x i32] }
%struct.DpmDescriptor_t = type { i8, i8, i8, i8, %struct.LinearInt_t, %struct.QuadraticInt_t, i16, i16 }
%struct.LinearInt_t = type { i32, i32 }
%struct.DroopInt_t = type { i32, i32, i32 }
%struct.QuadraticInt_t = type { i32, i32, i32 }
%struct.I2cControllerConfig_t = type { i8, i8, [2 x i8], i32, i8, i8, i8, i8 }
%struct.smu_11_0_dpm_table = type { i32, i32, i32, i8, [16 x %struct.smu_11_0_dpm_clk_level] }
%struct.smu_11_0_dpm_clk_level = type { i8, i32 }
%struct.smu_11_0_dpm_tables = type { %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_pcie_table }
%struct.smu_11_0_pcie_table = type { [2 x i8], [2 x i8] }
%struct.pp_clock_levels_with_latency = type { i32, [16 x %struct.pp_clock_with_latency] }
%struct.pp_clock_with_latency = type { i32, i32 }
%struct.DpmActivityMonitorCoeffInt_t = type { i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, [8 x i32] }
%struct.SmuMetrics_t = type { [6 x i16], i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, [2 x i32], [8 x i32] }
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smu_11_0_powerplay_table = type <{ %struct.atom_common_table_header, i8, i16, i32, i32, i16, i32, i8, i16, i16, i16, i16, i16, i16, [6 x i16], %struct.smu_11_0_power_saving_clock_table, %struct.smu_11_0_overdrive_table, %struct.PPTable_t }>
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct.smu_11_0_power_saving_clock_table = type { i8, [3 x i8], i32, [16 x i32], [16 x i32] }
%struct.smu_11_0_overdrive_table = type { i8, [3 x i8], i32, i32, [32 x i8], [32 x i32], [32 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.gpu_metrics_v1_3 = type { %struct.metrics_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, [4 x i16], i64, i16, i16, i16, i16, i64 }
%struct.metrics_table_header = type { i16, i8, i8 }
%struct.SwI2cRequest_t = type { i8, i8, i16, i8, [3 x i8], [8 x %struct.SwI2cCmd_t], [8 x i32] }
%struct.SwI2cCmd_t = type { i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@arcturus_ppt_funcs = internal constant { %struct.pptable_funcs, [124 x i8] } { %struct.pptable_funcs { ptr @arcturus_run_btc, ptr @arcturus_get_allowed_feature_mask, ptr null, ptr @arcturus_set_default_dpm_table, ptr null, ptr @arcturus_populate_umd_state_clk, ptr @arcturus_print_clk_levels, ptr @arcturus_force_clk_levels, ptr null, ptr null, ptr null, ptr null, ptr @arcturus_get_power_profile_mode, ptr @arcturus_set_power_profile_mode, ptr @arcturus_dpm_set_vcn_enable, ptr null, ptr @arcturus_read_sensor, ptr null, ptr null, ptr null, ptr null, ptr @arcturus_is_dpm_running, ptr @arcturus_get_fan_speed_pwm, ptr @arcturus_get_fan_speed_rpm, ptr null, ptr @arcturus_get_thermal_temperature_range, ptr null, ptr null, ptr @arcturus_set_performance_level, ptr null, ptr @arcturus_dump_pptable, ptr @arcturus_get_power_limit, ptr null, ptr @arcturus_set_df_cstate, ptr @arcturus_allow_xgmi_power_down, ptr null, ptr @arcturus_i2c_control_init, ptr @arcturus_i2c_control_fini, ptr @arcturus_get_unique_id, ptr null, ptr @smu_v11_0_init_microcode, ptr @smu_v11_0_load_microcode, ptr @smu_v11_0_fini_microcode, ptr @arcturus_init_smc_tables, ptr @smu_v11_0_fini_smc_tables, ptr @smu_v11_0_init_power, ptr @smu_v11_0_fini_power, ptr @smu_v11_0_check_fw_status, ptr @smu_cmn_set_mp1_state, ptr @arcturus_setup_pptable, ptr @smu_v11_0_get_vbios_bootup_values, ptr @smu_v11_0_check_fw_version, ptr null, ptr null, ptr @smu_cmn_write_pptable, ptr @smu_v11_0_set_driver_table_location, ptr @smu_v11_0_set_tool_table_location, ptr @smu_v11_0_notify_memory_pool_location, ptr @smu_v11_0_system_features_control, ptr @smu_cmn_send_smc_msg_with_param, ptr @smu_cmn_send_smc_msg, ptr null, ptr @smu_v11_0_set_allowed_mask, ptr @smu_cmn_get_enabled_mask, ptr @smu_cmn_feature_is_enabled, ptr @smu_cmn_disable_all_features_with_exception, ptr null, ptr @smu_v11_0_set_power_limit, ptr @smu_v11_0_init_max_sustainable_clocks, ptr @smu_v11_0_enable_thermal_alert, ptr @smu_v11_0_disable_thermal_alert, ptr null, ptr @smu_v11_0_display_clock_voltage_request, ptr @smu_v11_0_get_fan_control_mode, ptr @smu_v11_0_set_fan_control_mode, ptr @arcturus_set_fan_speed_pwm, ptr @arcturus_set_fan_speed_rpm, ptr @smu_v11_0_set_xgmi_pstate, ptr @smu_v11_0_gfx_off_control, ptr null, ptr @smu_v11_0_register_irq_handler, ptr @smu_v11_0_set_azalia_d3_pme, ptr @smu_v11_0_get_max_sustainable_clocks_by_dc, ptr @smu_v11_0_baco_is_support, ptr @smu_v11_0_baco_get_state, ptr @smu_v11_0_baco_set_state, ptr @smu_v11_0_baco_enter, ptr @smu_v11_0_baco_exit, ptr null, ptr null, ptr null, ptr null, ptr @smu_v11_0_get_dpm_ultimate_freq, ptr @smu_v11_0_set_soft_freq_limited_range, ptr null, ptr @arcturus_log_thermal_throttling_event, ptr @smu_cmn_get_pp_feature_mask, ptr @smu_cmn_set_pp_feature_mask, ptr @arcturus_get_gpu_metrics, ptr null, ptr @smu_v11_0_gfx_ulv_control, ptr @smu_v11_0_deep_sleep_control, ptr @arcturus_get_fan_parameters, ptr null, ptr @smu_v11_0_interrupt_work, ptr null, ptr null, ptr null, ptr @smu_v11_0_handle_passthrough_sbr, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@arcturus_message_map = internal constant { [207 x %struct.cmn2asic_msg_mapping], [620 x i8] } { [207 x %struct.cmn2asic_msg_mapping] [%struct.cmn2asic_msg_mapping { i32 1, i32 1, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 2, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 3, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 4, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 5, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 6, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 7, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 8, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 9, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 10, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 11, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 12, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 13, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 34, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 38, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 14, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 15, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 16, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 17, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 18, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 19, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 20, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 21, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 47, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 24, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 27, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 28, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 29, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 30, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 31, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 32, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 33, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 44, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 51, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 52, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 53, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 64, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 65, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 22, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 23, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 55, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 39, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 54, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 56, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 48, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 25, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 45, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 46, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 26, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 49, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 57, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 35, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 36, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 37, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 40, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 41, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 42, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 43, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 59, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 61, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 66, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer], [620 x i8] zeroinitializer }, align 32
@arcturus_table_map = internal constant { [15 x %struct.cmn2asic_mapping], [40 x i8] } { [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping { i32 1, i32 6 }, %struct.cmn2asic_mapping { i32 1, i32 10 }, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping { i32 1, i32 9 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer], [40 x i8] zeroinitializer }, align 32
@arcturus_pwr_src_map = internal constant { [2 x %struct.cmn2asic_mapping], [16 x i8] } { [2 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }], [16 x i8] zeroinitializer }, align 32
@arcturus_workload_map = internal constant { [7 x %struct.cmn2asic_mapping], [40 x i8] } { [7 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }], [40 x i8] zeroinitializer }, align 32
@arcturus_run_btc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 524, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: RunAfllBtc failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arcturus_run_btc\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arcturus_run_btc._entry_ptr = internal global ptr @arcturus_run_btc._entry, section ".printk_index", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unavailable\0A\00", [19 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 791, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: Attempt to get current gfx clk Failed!\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arcturus_print_clk_levels\00", [38 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr = internal global ptr @arcturus_print_clk_levels._entry, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 798, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: Attempt to get gfx clk levels Failed!\00", [50 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.10 = internal global ptr @arcturus_print_clk_levels._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: %uMhz %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@arcturus_print_clk_levels._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 818, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Attempt to get current mclk Failed!\00", [52 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.16 = internal global ptr @arcturus_print_clk_levels._entry.14, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 825, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: Attempt to get memory clk levels Failed!\00", [47 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.19 = internal global ptr @arcturus_print_clk_levels._entry.17, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.2, i32 841, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: Attempt to get current socclk Failed!\00", [50 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.22 = internal global ptr @arcturus_print_clk_levels._entry.20, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.2, i32 848, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Attempt to get socclk levels Failed!\00", [51 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.25 = internal global ptr @arcturus_print_clk_levels._entry.23, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.2, i32 864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Attempt to get current fclk Failed!\00", [52 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.28 = internal global ptr @arcturus_print_clk_levels._entry.26, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.7, ptr @.str.2, i32 871, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Attempt to get fclk levels Failed!\00", [53 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.31 = internal global ptr @arcturus_print_clk_levels._entry.29, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.7, ptr @.str.2, i32 887, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Attempt to get current vclk Failed!\00", [52 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.34 = internal global ptr @arcturus_print_clk_levels._entry.32, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.7, ptr @.str.2, i32 894, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Attempt to get vclk levels Failed!\00", [53 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.37 = internal global ptr @arcturus_print_clk_levels._entry.35, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.7, ptr @.str.2, i32 910, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Attempt to get current dclk Failed!\00", [52 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.40 = internal global ptr @arcturus_print_clk_levels._entry.38, section ".printk_index", align 4
@arcturus_print_clk_levels._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.7, ptr @.str.2, i32 917, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Attempt to get dclk levels Failed!\00", [53 x i8] zeroinitializer }, align 32
@arcturus_print_clk_levels._entry_ptr.43 = internal global ptr @arcturus_print_clk_levels._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0: %s %s %dMhz *\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.5GT/s,\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5.0GT/s,\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"8.0GT/s,\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"16.0GT/s,\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x1\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x2\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x4\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x8\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x12\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x16\00", [28 x i8] zeroinitializer }, align 32
@amdgpu_ras_in_intr = external dso_local global %struct.atomic_t, align 4
@arcturus_force_clk_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1020, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: Failed to get smu version!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arcturus_force_clk_levels\00", [38 x i8] zeroinitializer }, align 32
@arcturus_force_clk_levels._entry_ptr = internal global ptr @arcturus_force_clk_levels._entry, section ".printk_index", align 4
@arcturus_force_clk_levels._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1027, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"amdgpu: Forcing clock level is not supported with 54.18 - 54.26(included) SMU firmwares\0A\00", [39 x i8] zeroinitializer }, align 32
@arcturus_force_clk_levels._entry_ptr.59 = internal global ptr @arcturus_force_clk_levels._entry.57, section ".printk_index", align 4
@arcturus_force_clk_levels._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 1039, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: Clock level specified %d is over max allowed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arcturus_force_clk_levels._entry_ptr.62 = internal global ptr @arcturus_force_clk_levels._entry.60, section ".printk_index", align 4
@arcturus_force_clk_levels._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 1049, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: Failed to upload boot level to lowest!\0A\00", [48 x i8] zeroinitializer }, align 32
@arcturus_force_clk_levels._entry_ptr.65 = internal global ptr @arcturus_force_clk_levels._entry.63, section ".printk_index", align 4
@arcturus_force_clk_levels._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.2, i32 1058, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: Failed to upload dpm max level to highest!\0A\00", [44 x i8] zeroinitializer }, align 32
@arcturus_force_clk_levels._entry_ptr.68 = internal global ptr @arcturus_force_clk_levels._entry.66, section ".printk_index", align 4
@arcturus_upload_dpm_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 973, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to set soft %s gfxclk !\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arcturus_upload_dpm_level\00", [38 x i8] zeroinitializer }, align 32
@arcturus_upload_dpm_level._entry_ptr = internal global ptr @arcturus_upload_dpm_level._entry, section ".printk_index", align 4
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@arcturus_upload_dpm_level._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.70, ptr @.str.2, i32 987, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to set soft %s memclk !\0A\00", [56 x i8] zeroinitializer }, align 32
@arcturus_upload_dpm_level._entry_ptr.75 = internal global ptr @arcturus_upload_dpm_level._entry.73, section ".printk_index", align 4
@arcturus_upload_dpm_level._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.70, ptr @.str.2, i32 1001, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to set soft %s socclk !\0A\00", [56 x i8] zeroinitializer }, align 32
@arcturus_upload_dpm_level._entry_ptr.78 = internal global ptr @arcturus_upload_dpm_level._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PROFILE_INDEX(NAME)\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CLOCK_TYPE(NAME)\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FPS\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UseRlcBusy\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MinActiveFreqType\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MinActiveFreq\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BoosterFreqType\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BoosterFreq\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PD_Data_limit_c\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PD_Data_error_coeff\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PD_Data_error_rate_coeff\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%16s %s %s %s %s %s %s %s %s %s %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%16s\0A\00", [26 x i8] zeroinitializer }, align 32
@arcturus_get_power_profile_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 1432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: [%s] Failed to get activity monitor!\00", [51 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arcturus_get_power_profile_mode\00", [32 x i8] zeroinitializer }, align 32
@arcturus_get_power_profile_mode._entry_ptr = internal global ptr @arcturus_get_power_profile_mode._entry, section ".printk_index", align 4
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%2d %14s%s\0A\00", [20 x i8] zeroinitializer }, align 32
@amdgpu_pp_profile_name = external dso_local local_unnamed_addr constant [7 x ptr], align 4
@.str.95 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%19s %d(%13s) %7d %7d %7d %7d %7d %7d %7d %7d %7d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GFXCLK\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UCLK\00", [27 x i8] zeroinitializer }, align 32
@arcturus_set_power_profile_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 1485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Invalid power profile mode %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arcturus_set_power_profile_mode\00", [32 x i8] zeroinitializer }, align 32
@arcturus_set_power_profile_mode._entry_ptr = internal global ptr @arcturus_set_power_profile_mode._entry, section ".printk_index", align 4
@arcturus_set_power_profile_mode._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.100, ptr @.str.2, i32 1501, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_set_power_profile_mode._entry_ptr.102 = internal global ptr @arcturus_set_power_profile_mode._entry.101, section ".printk_index", align 4
@arcturus_set_power_profile_mode._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.100, ptr @.str.2, i32 1536, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: [%s] Failed to set activity monitor!\00", [51 x i8] zeroinitializer }, align 32
@arcturus_set_power_profile_mode._entry_ptr.105 = internal global ptr @arcturus_set_power_profile_mode._entry.103, section ".printk_index", align 4
@arcturus_set_power_profile_mode.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.106, ptr @.str.100, ptr @.str.2, ptr @.str.107, i8 1, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: Unsupported power profile mode %d on arcturus\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_set_power_profile_mode._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.100, ptr @.str.2, i32 1558, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Fail to set workload type %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arcturus_set_power_profile_mode._entry_ptr.110 = internal global ptr @arcturus_set_power_profile_mode._entry.108, section ".printk_index", align 4
@arcturus_dpm_set_vcn_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 2054, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: [EnableVCNDPM] failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arcturus_dpm_set_vcn_enable\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dpm_set_vcn_enable._entry_ptr = internal global ptr @arcturus_dpm_set_vcn_enable._entry, section ".printk_index", align 4
@arcturus_dpm_set_vcn_enable._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.2, i32 2062, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: [DisableVCNDPM] failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@arcturus_dpm_set_vcn_enable._entry_ptr.115 = internal global ptr @arcturus_dpm_set_vcn_enable._entry.113, section ".printk_index", align 4
@smu11_thermal_policy = internal constant { [2 x %struct.smu_temperature_range], [48 x i8] } { [2 x %struct.smu_temperature_range] [%struct.smu_temperature_range { i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000, i32 0 }, %struct.smu_temperature_range { i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 0 }], [48 x i8] zeroinitializer }, align 32
@arcturus_set_performance_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.116, ptr @.str.2, i32 1575, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arcturus_set_performance_level\00", [33 x i8] zeroinitializer }, align 32
@arcturus_set_performance_level._entry_ptr = internal global ptr @arcturus_set_performance_level._entry, section ".printk_index", align 4
@arcturus_set_performance_level._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.116, ptr @.str.2, i32 1589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_set_performance_level._entry_ptr.118 = internal global ptr @arcturus_set_performance_level._entry.117, section ".printk_index", align 4
@arcturus_dump_pptable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 1606, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu: Dumped PPTable:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arcturus_dump_pptable\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr = internal global ptr @arcturus_dump_pptable._entry, section ".printk_index", align 4
@arcturus_dump_pptable._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.120, ptr @.str.2, i32 1608, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: Version = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.124 = internal global ptr @arcturus_dump_pptable._entry.122, section ".printk_index", align 4
@arcturus_dump_pptable._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.120, ptr @.str.2, i32 1610, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: FeaturesToRun[0] = 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.127 = internal global ptr @arcturus_dump_pptable._entry.125, section ".printk_index", align 4
@arcturus_dump_pptable._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.120, ptr @.str.2, i32 1611, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: FeaturesToRun[1] = 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.130 = internal global ptr @arcturus_dump_pptable._entry.128, section ".printk_index", align 4
@arcturus_dump_pptable._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.120, ptr @.str.2, i32 1614, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: SocketPowerLimitAc[%d] = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.133 = internal global ptr @arcturus_dump_pptable._entry.131, section ".printk_index", align 4
@arcturus_dump_pptable._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.120, ptr @.str.2, i32 1615, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: SocketPowerLimitAcTau[%d] = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.136 = internal global ptr @arcturus_dump_pptable._entry.134, section ".printk_index", align 4
@arcturus_dump_pptable._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.120, ptr @.str.2, i32 1618, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: TdcLimitSoc = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.139 = internal global ptr @arcturus_dump_pptable._entry.137, section ".printk_index", align 4
@arcturus_dump_pptable._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.120, ptr @.str.2, i32 1619, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: TdcLimitSocTau = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.142 = internal global ptr @arcturus_dump_pptable._entry.140, section ".printk_index", align 4
@arcturus_dump_pptable._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.120, ptr @.str.2, i32 1620, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: TdcLimitGfx = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.145 = internal global ptr @arcturus_dump_pptable._entry.143, section ".printk_index", align 4
@arcturus_dump_pptable._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.120, ptr @.str.2, i32 1621, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: TdcLimitGfxTau = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.148 = internal global ptr @arcturus_dump_pptable._entry.146, section ".printk_index", align 4
@arcturus_dump_pptable._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.120, ptr @.str.2, i32 1623, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu: TedgeLimit = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.151 = internal global ptr @arcturus_dump_pptable._entry.149, section ".printk_index", align 4
@arcturus_dump_pptable._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.120, ptr @.str.2, i32 1624, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: ThotspotLimit = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.154 = internal global ptr @arcturus_dump_pptable._entry.152, section ".printk_index", align 4
@arcturus_dump_pptable._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.120, ptr @.str.2, i32 1625, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu: TmemLimit = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.157 = internal global ptr @arcturus_dump_pptable._entry.155, section ".printk_index", align 4
@arcturus_dump_pptable._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.120, ptr @.str.2, i32 1626, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: Tvr_gfxLimit = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.160 = internal global ptr @arcturus_dump_pptable._entry.158, section ".printk_index", align 4
@arcturus_dump_pptable._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.120, ptr @.str.2, i32 1627, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: Tvr_memLimit = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.163 = internal global ptr @arcturus_dump_pptable._entry.161, section ".printk_index", align 4
@arcturus_dump_pptable._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.120, ptr @.str.2, i32 1628, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: Tvr_socLimit = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.166 = internal global ptr @arcturus_dump_pptable._entry.164, section ".printk_index", align 4
@arcturus_dump_pptable._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.120, ptr @.str.2, i32 1629, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: FitLimit = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.169 = internal global ptr @arcturus_dump_pptable._entry.167, section ".printk_index", align 4
@arcturus_dump_pptable._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.120, ptr @.str.2, i32 1631, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: PpmPowerLimit = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.172 = internal global ptr @arcturus_dump_pptable._entry.170, section ".printk_index", align 4
@arcturus_dump_pptable._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.120, ptr @.str.2, i32 1632, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: PpmTemperatureThreshold = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.175 = internal global ptr @arcturus_dump_pptable._entry.173, section ".printk_index", align 4
@arcturus_dump_pptable._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.120, ptr @.str.2, i32 1634, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: ThrottlerControlMask = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.178 = internal global ptr @arcturus_dump_pptable._entry.176, section ".printk_index", align 4
@arcturus_dump_pptable._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.120, ptr @.str.2, i32 1636, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: UlvVoltageOffsetGfx = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.181 = internal global ptr @arcturus_dump_pptable._entry.179, section ".printk_index", align 4
@arcturus_dump_pptable._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.120, ptr @.str.2, i32 1637, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: UlvPadding = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.184 = internal global ptr @arcturus_dump_pptable._entry.182, section ".printk_index", align 4
@arcturus_dump_pptable._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.120, ptr @.str.2, i32 1639, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: UlvGfxclkBypass = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.187 = internal global ptr @arcturus_dump_pptable._entry.185, section ".printk_index", align 4
@arcturus_dump_pptable._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.120, ptr @.str.2, i32 1640, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: Padding234[0] = 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.190 = internal global ptr @arcturus_dump_pptable._entry.188, section ".printk_index", align 4
@arcturus_dump_pptable._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.120, ptr @.str.2, i32 1641, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: Padding234[1] = 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.193 = internal global ptr @arcturus_dump_pptable._entry.191, section ".printk_index", align 4
@arcturus_dump_pptable._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.120, ptr @.str.2, i32 1642, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: Padding234[2] = 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.196 = internal global ptr @arcturus_dump_pptable._entry.194, section ".printk_index", align 4
@arcturus_dump_pptable._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.120, ptr @.str.2, i32 1644, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: MinVoltageGfx = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.199 = internal global ptr @arcturus_dump_pptable._entry.197, section ".printk_index", align 4
@arcturus_dump_pptable._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.120, ptr @.str.2, i32 1645, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: MinVoltageSoc = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.202 = internal global ptr @arcturus_dump_pptable._entry.200, section ".printk_index", align 4
@arcturus_dump_pptable._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.120, ptr @.str.2, i32 1646, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: MaxVoltageGfx = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.205 = internal global ptr @arcturus_dump_pptable._entry.203, section ".printk_index", align 4
@arcturus_dump_pptable._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.120, ptr @.str.2, i32 1647, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: MaxVoltageSoc = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.208 = internal global ptr @arcturus_dump_pptable._entry.206, section ".printk_index", align 4
@arcturus_dump_pptable._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.120, ptr @.str.2, i32 1649, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: LoadLineResistanceGfx = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.211 = internal global ptr @arcturus_dump_pptable._entry.209, section ".printk_index", align 4
@arcturus_dump_pptable._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.120, ptr @.str.2, i32 1650, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: LoadLineResistanceSoc = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.214 = internal global ptr @arcturus_dump_pptable._entry.212, section ".printk_index", align 4
@arcturus_dump_pptable._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.120, ptr @.str.2, i32 1671, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [325 x i8], [91 x i8] } { [325 x i8] c"amdgpu: [PPCLK_GFXCLK]\0A  .VoltageMode          = 0x%02x\0A  .SnapToDiscrete       = 0x%02x\0A  .NumDiscreteLevels    = 0x%02x\0A  .padding              = 0x%02x\0A  .ConversionToAvfsClk{m = 0x%08x b = 0x%08x}\0A  .SsCurve            {a = 0x%08x b = 0x%08x c = 0x%08x}\0A  .SsFmin               = 0x%04x\0A  .Padding_16           = 0x%04x\0A\00", [91 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.217 = internal global ptr @arcturus_dump_pptable._entry.215, section ".printk_index", align 4
@arcturus_dump_pptable._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.120, ptr @.str.2, i32 1692, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [323 x i8], [93 x i8] } { [323 x i8] c"amdgpu: [PPCLK_VCLK]\0A  .VoltageMode          = 0x%02x\0A  .SnapToDiscrete       = 0x%02x\0A  .NumDiscreteLevels    = 0x%02x\0A  .padding              = 0x%02x\0A  .ConversionToAvfsClk{m = 0x%08x b = 0x%08x}\0A  .SsCurve            {a = 0x%08x b = 0x%08x c = 0x%08x}\0A  .SsFmin               = 0x%04x\0A  .Padding_16           = 0x%04x\0A\00", [93 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.220 = internal global ptr @arcturus_dump_pptable._entry.218, section ".printk_index", align 4
@arcturus_dump_pptable._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.120, ptr @.str.2, i32 1713, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [323 x i8], [93 x i8] } { [323 x i8] c"amdgpu: [PPCLK_DCLK]\0A  .VoltageMode          = 0x%02x\0A  .SnapToDiscrete       = 0x%02x\0A  .NumDiscreteLevels    = 0x%02x\0A  .padding              = 0x%02x\0A  .ConversionToAvfsClk{m = 0x%08x b = 0x%08x}\0A  .SsCurve            {a = 0x%08x b = 0x%08x c = 0x%08x}\0A  .SsFmin               = 0x%04x\0A  .Padding_16           = 0x%04x\0A\00", [93 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.223 = internal global ptr @arcturus_dump_pptable._entry.221, section ".printk_index", align 4
@arcturus_dump_pptable._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.120, ptr @.str.2, i32 1734, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [325 x i8], [91 x i8] } { [325 x i8] c"amdgpu: [PPCLK_SOCCLK]\0A  .VoltageMode          = 0x%02x\0A  .SnapToDiscrete       = 0x%02x\0A  .NumDiscreteLevels    = 0x%02x\0A  .padding              = 0x%02x\0A  .ConversionToAvfsClk{m = 0x%08x b = 0x%08x}\0A  .SsCurve            {a = 0x%08x b = 0x%08x c = 0x%08x}\0A  .SsFmin               = 0x%04x\0A  .Padding_16           = 0x%04x\0A\00", [91 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.226 = internal global ptr @arcturus_dump_pptable._entry.224, section ".printk_index", align 4
@arcturus_dump_pptable._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.120, ptr @.str.2, i32 1755, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [323 x i8], [93 x i8] } { [323 x i8] c"amdgpu: [PPCLK_UCLK]\0A  .VoltageMode          = 0x%02x\0A  .SnapToDiscrete       = 0x%02x\0A  .NumDiscreteLevels    = 0x%02x\0A  .padding              = 0x%02x\0A  .ConversionToAvfsClk{m = 0x%08x b = 0x%08x}\0A  .SsCurve            {a = 0x%08x b = 0x%08x c = 0x%08x}\0A  .SsFmin               = 0x%04x\0A  .Padding_16           = 0x%04x\0A\00", [93 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.229 = internal global ptr @arcturus_dump_pptable._entry.227, section ".printk_index", align 4
@arcturus_dump_pptable._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.120, ptr @.str.2, i32 1776, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [323 x i8], [93 x i8] } { [323 x i8] c"amdgpu: [PPCLK_FCLK]\0A  .VoltageMode          = 0x%02x\0A  .SnapToDiscrete       = 0x%02x\0A  .NumDiscreteLevels    = 0x%02x\0A  .padding              = 0x%02x\0A  .ConversionToAvfsClk{m = 0x%08x b = 0x%08x}\0A  .SsCurve            {a = 0x%08x b = 0x%08x c = 0x%08x}\0A  .SsFmin               = 0x%04x\0A  .Padding_16           = 0x%04x\0A\00", [93 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.232 = internal global ptr @arcturus_dump_pptable._entry.230, section ".printk_index", align 4
@arcturus_dump_pptable._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.120, ptr @.str.2, i32 1779, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu: FreqTableGfx\0A\00", [42 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.235 = internal global ptr @arcturus_dump_pptable._entry.233, section ".printk_index", align 4
@arcturus_dump_pptable._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.120, ptr @.str.2, i32 1781, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu:   .[%02d] = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.238 = internal global ptr @arcturus_dump_pptable._entry.236, section ".printk_index", align 4
@arcturus_dump_pptable._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.120, ptr @.str.2, i32 1783, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: FreqTableVclk\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.241 = internal global ptr @arcturus_dump_pptable._entry.239, section ".printk_index", align 4
@arcturus_dump_pptable._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.120, ptr @.str.2, i32 1785, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.243 = internal global ptr @arcturus_dump_pptable._entry.242, section ".printk_index", align 4
@arcturus_dump_pptable._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.120, ptr @.str.2, i32 1787, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: FreqTableDclk\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.246 = internal global ptr @arcturus_dump_pptable._entry.244, section ".printk_index", align 4
@arcturus_dump_pptable._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.120, ptr @.str.2, i32 1789, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.248 = internal global ptr @arcturus_dump_pptable._entry.247, section ".printk_index", align 4
@arcturus_dump_pptable._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.120, ptr @.str.2, i32 1791, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu: FreqTableSocclk\0A\00", [39 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.251 = internal global ptr @arcturus_dump_pptable._entry.249, section ".printk_index", align 4
@arcturus_dump_pptable._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.120, ptr @.str.2, i32 1793, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.253 = internal global ptr @arcturus_dump_pptable._entry.252, section ".printk_index", align 4
@arcturus_dump_pptable._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.120, ptr @.str.2, i32 1795, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: FreqTableUclk\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.256 = internal global ptr @arcturus_dump_pptable._entry.254, section ".printk_index", align 4
@arcturus_dump_pptable._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.120, ptr @.str.2, i32 1797, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.258 = internal global ptr @arcturus_dump_pptable._entry.257, section ".printk_index", align 4
@arcturus_dump_pptable._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.120, ptr @.str.2, i32 1799, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: FreqTableFclk\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.261 = internal global ptr @arcturus_dump_pptable._entry.259, section ".printk_index", align 4
@arcturus_dump_pptable._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.120, ptr @.str.2, i32 1801, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.263 = internal global ptr @arcturus_dump_pptable._entry.262, section ".printk_index", align 4
@arcturus_dump_pptable._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.120, ptr @.str.2, i32 1803, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu: Mp0clkFreq\0A\00", [44 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.266 = internal global ptr @arcturus_dump_pptable._entry.264, section ".printk_index", align 4
@arcturus_dump_pptable._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.120, ptr @.str.2, i32 1805, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu:   .[%d] = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.269 = internal global ptr @arcturus_dump_pptable._entry.267, section ".printk_index", align 4
@arcturus_dump_pptable._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.120, ptr @.str.2, i32 1807, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: Mp0DpmVoltage\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.272 = internal global ptr @arcturus_dump_pptable._entry.270, section ".printk_index", align 4
@arcturus_dump_pptable._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.120, ptr @.str.2, i32 1809, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.274 = internal global ptr @arcturus_dump_pptable._entry.273, section ".printk_index", align 4
@arcturus_dump_pptable._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.120, ptr @.str.2, i32 1811, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: GfxclkFidle = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.277 = internal global ptr @arcturus_dump_pptable._entry.275, section ".printk_index", align 4
@arcturus_dump_pptable._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.120, ptr @.str.2, i32 1812, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: GfxclkSlewRate = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.280 = internal global ptr @arcturus_dump_pptable._entry.278, section ".printk_index", align 4
@arcturus_dump_pptable._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.120, ptr @.str.2, i32 1813, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: Padding567[0] = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.283 = internal global ptr @arcturus_dump_pptable._entry.281, section ".printk_index", align 4
@arcturus_dump_pptable._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.120, ptr @.str.2, i32 1814, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: Padding567[1] = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.286 = internal global ptr @arcturus_dump_pptable._entry.284, section ".printk_index", align 4
@arcturus_dump_pptable._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.120, ptr @.str.2, i32 1815, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: Padding567[2] = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.289 = internal global ptr @arcturus_dump_pptable._entry.287, section ".printk_index", align 4
@arcturus_dump_pptable._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.120, ptr @.str.2, i32 1816, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: Padding567[3] = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.292 = internal global ptr @arcturus_dump_pptable._entry.290, section ".printk_index", align 4
@arcturus_dump_pptable._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.120, ptr @.str.2, i32 1817, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: GfxclkDsMaxFreq = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.295 = internal global ptr @arcturus_dump_pptable._entry.293, section ".printk_index", align 4
@arcturus_dump_pptable._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.120, ptr @.str.2, i32 1818, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: GfxclkSource = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.298 = internal global ptr @arcturus_dump_pptable._entry.296, section ".printk_index", align 4
@arcturus_dump_pptable._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.120, ptr @.str.2, i32 1819, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: Padding456 = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.301 = internal global ptr @arcturus_dump_pptable._entry.299, section ".printk_index", align 4
@arcturus_dump_pptable._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.120, ptr @.str.2, i32 1821, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu: EnableTdpm = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.304 = internal global ptr @arcturus_dump_pptable._entry.302, section ".printk_index", align 4
@arcturus_dump_pptable._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.120, ptr @.str.2, i32 1822, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: TdpmHighHystTemperature = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.307 = internal global ptr @arcturus_dump_pptable._entry.305, section ".printk_index", align 4
@arcturus_dump_pptable._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.120, ptr @.str.2, i32 1823, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: TdpmLowHystTemperature = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.310 = internal global ptr @arcturus_dump_pptable._entry.308, section ".printk_index", align 4
@arcturus_dump_pptable._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.120, ptr @.str.2, i32 1824, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: GfxclkFreqHighTempLimit = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.313 = internal global ptr @arcturus_dump_pptable._entry.311, section ".printk_index", align 4
@arcturus_dump_pptable._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.120, ptr @.str.2, i32 1826, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: FanStopTemp = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.316 = internal global ptr @arcturus_dump_pptable._entry.314, section ".printk_index", align 4
@arcturus_dump_pptable._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.120, ptr @.str.2, i32 1827, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: FanStartTemp = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.319 = internal global ptr @arcturus_dump_pptable._entry.317, section ".printk_index", align 4
@arcturus_dump_pptable._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.120, ptr @.str.2, i32 1829, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: FanGainEdge = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.322 = internal global ptr @arcturus_dump_pptable._entry.320, section ".printk_index", align 4
@arcturus_dump_pptable._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.120, ptr @.str.2, i32 1830, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: FanGainHotspot = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.325 = internal global ptr @arcturus_dump_pptable._entry.323, section ".printk_index", align 4
@arcturus_dump_pptable._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.327, ptr @.str.120, ptr @.str.2, i32 1831, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: FanGainVrGfx = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.328 = internal global ptr @arcturus_dump_pptable._entry.326, section ".printk_index", align 4
@arcturus_dump_pptable._entry.329 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.120, ptr @.str.2, i32 1832, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: FanGainVrSoc = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.331 = internal global ptr @arcturus_dump_pptable._entry.329, section ".printk_index", align 4
@arcturus_dump_pptable._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.120, ptr @.str.2, i32 1833, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: FanGainVrMem = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.334 = internal global ptr @arcturus_dump_pptable._entry.332, section ".printk_index", align 4
@arcturus_dump_pptable._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.120, ptr @.str.2, i32 1834, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu: FanGainHbm = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.337 = internal global ptr @arcturus_dump_pptable._entry.335, section ".printk_index", align 4
@arcturus_dump_pptable._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.120, ptr @.str.2, i32 1836, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu: FanPwmMin = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.340 = internal global ptr @arcturus_dump_pptable._entry.338, section ".printk_index", align 4
@arcturus_dump_pptable._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.342, ptr @.str.120, ptr @.str.2, i32 1837, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: FanAcousticLimitRpm = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.343 = internal global ptr @arcturus_dump_pptable._entry.341, section ".printk_index", align 4
@arcturus_dump_pptable._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @.str.120, ptr @.str.2, i32 1838, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: FanThrottlingRpm = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.346 = internal global ptr @arcturus_dump_pptable._entry.344, section ".printk_index", align 4
@arcturus_dump_pptable._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.120, ptr @.str.2, i32 1839, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: FanMaximumRpm = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.349 = internal global ptr @arcturus_dump_pptable._entry.347, section ".printk_index", align 4
@arcturus_dump_pptable._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.120, ptr @.str.2, i32 1840, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: FanTargetTemperature = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.352 = internal global ptr @arcturus_dump_pptable._entry.350, section ".printk_index", align 4
@arcturus_dump_pptable._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.120, ptr @.str.2, i32 1841, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: FanTargetGfxclk = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.355 = internal global ptr @arcturus_dump_pptable._entry.353, section ".printk_index", align 4
@arcturus_dump_pptable._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.120, ptr @.str.2, i32 1842, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: FanZeroRpmEnable = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.358 = internal global ptr @arcturus_dump_pptable._entry.356, section ".printk_index", align 4
@arcturus_dump_pptable._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.120, ptr @.str.2, i32 1843, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: FanTachEdgePerRev = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.361 = internal global ptr @arcturus_dump_pptable._entry.359, section ".printk_index", align 4
@arcturus_dump_pptable._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.120, ptr @.str.2, i32 1844, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: FanTempInputSelect = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.364 = internal global ptr @arcturus_dump_pptable._entry.362, section ".printk_index", align 4
@arcturus_dump_pptable._entry.365 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.366, ptr @.str.120, ptr @.str.2, i32 1846, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: FuzzyFan_ErrorSetDelta = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.367 = internal global ptr @arcturus_dump_pptable._entry.365, section ".printk_index", align 4
@arcturus_dump_pptable._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.120, ptr @.str.2, i32 1847, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: FuzzyFan_ErrorRateSetDelta = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.370 = internal global ptr @arcturus_dump_pptable._entry.368, section ".printk_index", align 4
@arcturus_dump_pptable._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.120, ptr @.str.2, i32 1848, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: FuzzyFan_PwmSetDelta = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.373 = internal global ptr @arcturus_dump_pptable._entry.371, section ".printk_index", align 4
@arcturus_dump_pptable._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.120, ptr @.str.2, i32 1849, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: FuzzyFan_Reserved = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.376 = internal global ptr @arcturus_dump_pptable._entry.374, section ".printk_index", align 4
@arcturus_dump_pptable._entry.377 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.120, ptr @.str.2, i32 1851, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: OverrideAvfsGb[AVFS_VOLTAGE_GFX] = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.379 = internal global ptr @arcturus_dump_pptable._entry.377, section ".printk_index", align 4
@arcturus_dump_pptable._entry.380 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @.str.120, ptr @.str.2, i32 1852, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: OverrideAvfsGb[AVFS_VOLTAGE_SOC] = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.382 = internal global ptr @arcturus_dump_pptable._entry.380, section ".printk_index", align 4
@arcturus_dump_pptable._entry.383 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.384, ptr @.str.120, ptr @.str.2, i32 1853, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: Padding8_Avfs[0] = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.385 = internal global ptr @arcturus_dump_pptable._entry.383, section ".printk_index", align 4
@arcturus_dump_pptable._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @.str.120, ptr @.str.2, i32 1854, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: Padding8_Avfs[1] = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.388 = internal global ptr @arcturus_dump_pptable._entry.386, section ".printk_index", align 4
@arcturus_dump_pptable._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.120, ptr @.str.2, i32 1859, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: dBtcGbGfxPll{a = 0x%x b = 0x%x c = 0x%x}\0A\00", [46 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.391 = internal global ptr @arcturus_dump_pptable._entry.389, section ".printk_index", align 4
@arcturus_dump_pptable._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.393, ptr @.str.120, ptr @.str.2, i32 1863, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: dBtcGbGfxAfll{a = 0x%x b = 0x%x c = 0x%x}\0A\00", [45 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.394 = internal global ptr @arcturus_dump_pptable._entry.392, section ".printk_index", align 4
@arcturus_dump_pptable._entry.395 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.396, ptr @.str.120, ptr @.str.2, i32 1867, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: dBtcGbSoc{a = 0x%x b = 0x%x c = 0x%x}\0A\00", [49 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.397 = internal global ptr @arcturus_dump_pptable._entry.395, section ".printk_index", align 4
@arcturus_dump_pptable._entry.398 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.399, ptr @.str.120, ptr @.str.2, i32 1871, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: qAgingGb[AVFS_VOLTAGE_GFX]{m = 0x%x b = 0x%x}\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.400 = internal global ptr @arcturus_dump_pptable._entry.398, section ".printk_index", align 4
@arcturus_dump_pptable._entry.401 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.402, ptr @.str.120, ptr @.str.2, i32 1874, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: qAgingGb[AVFS_VOLTAGE_SOC]{m = 0x%x b = 0x%x}\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.403 = internal global ptr @arcturus_dump_pptable._entry.401, section ".printk_index", align 4
@arcturus_dump_pptable._entry.404 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.405, ptr @.str.120, ptr @.str.2, i32 1879, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"amdgpu: qStaticVoltageOffset[AVFS_VOLTAGE_GFX]{a = 0x%x b = 0x%x c = 0x%x}\0A\00", [52 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.406 = internal global ptr @arcturus_dump_pptable._entry.404, section ".printk_index", align 4
@arcturus_dump_pptable._entry.407 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.408, ptr @.str.120, ptr @.str.2, i32 1883, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"amdgpu: qStaticVoltageOffset[AVFS_VOLTAGE_SOC]{a = 0x%x b = 0x%x c = 0x%x}\0A\00", [52 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.409 = internal global ptr @arcturus_dump_pptable._entry.407, section ".printk_index", align 4
@arcturus_dump_pptable._entry.410 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.411, ptr @.str.120, ptr @.str.2, i32 1885, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: DcTol[AVFS_VOLTAGE_GFX] = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.412 = internal global ptr @arcturus_dump_pptable._entry.410, section ".printk_index", align 4
@arcturus_dump_pptable._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.414, ptr @.str.120, ptr @.str.2, i32 1886, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: DcTol[AVFS_VOLTAGE_SOC] = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.415 = internal global ptr @arcturus_dump_pptable._entry.413, section ".printk_index", align 4
@arcturus_dump_pptable._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.120, ptr @.str.2, i32 1888, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: DcBtcEnabled[AVFS_VOLTAGE_GFX] = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.418 = internal global ptr @arcturus_dump_pptable._entry.416, section ".printk_index", align 4
@arcturus_dump_pptable._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.120, ptr @.str.2, i32 1889, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: DcBtcEnabled[AVFS_VOLTAGE_SOC] = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.421 = internal global ptr @arcturus_dump_pptable._entry.419, section ".printk_index", align 4
@arcturus_dump_pptable._entry.422 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.423, ptr @.str.120, ptr @.str.2, i32 1890, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: Padding8_GfxBtc[0] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.424 = internal global ptr @arcturus_dump_pptable._entry.422, section ".printk_index", align 4
@arcturus_dump_pptable._entry.425 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.426, ptr @.str.120, ptr @.str.2, i32 1891, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: Padding8_GfxBtc[1] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.427 = internal global ptr @arcturus_dump_pptable._entry.425, section ".printk_index", align 4
@arcturus_dump_pptable._entry.428 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.429, ptr @.str.120, ptr @.str.2, i32 1893, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: DcBtcMin[AVFS_VOLTAGE_GFX] = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.430 = internal global ptr @arcturus_dump_pptable._entry.428, section ".printk_index", align 4
@arcturus_dump_pptable._entry.431 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.432, ptr @.str.120, ptr @.str.2, i32 1894, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: DcBtcMin[AVFS_VOLTAGE_SOC] = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.433 = internal global ptr @arcturus_dump_pptable._entry.431, section ".printk_index", align 4
@arcturus_dump_pptable._entry.434 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.435, ptr @.str.120, ptr @.str.2, i32 1895, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: DcBtcMax[AVFS_VOLTAGE_GFX] = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.436 = internal global ptr @arcturus_dump_pptable._entry.434, section ".printk_index", align 4
@arcturus_dump_pptable._entry.437 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.438, ptr @.str.120, ptr @.str.2, i32 1896, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: DcBtcMax[AVFS_VOLTAGE_SOC] = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.439 = internal global ptr @arcturus_dump_pptable._entry.437, section ".printk_index", align 4
@arcturus_dump_pptable._entry.440 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.441, ptr @.str.120, ptr @.str.2, i32 1898, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: DcBtcGb[AVFS_VOLTAGE_GFX] = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.442 = internal global ptr @arcturus_dump_pptable._entry.440, section ".printk_index", align 4
@arcturus_dump_pptable._entry.443 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.444, ptr @.str.120, ptr @.str.2, i32 1899, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: DcBtcGb[AVFS_VOLTAGE_SOC] = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.445 = internal global ptr @arcturus_dump_pptable._entry.443, section ".printk_index", align 4
@arcturus_dump_pptable._entry.446 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.447, ptr @.str.120, ptr @.str.2, i32 1901, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu: XgmiDpmPstates\0A\00", [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.448 = internal global ptr @arcturus_dump_pptable._entry.446, section ".printk_index", align 4
@arcturus_dump_pptable._entry.449 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.120, ptr @.str.2, i32 1903, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.450 = internal global ptr @arcturus_dump_pptable._entry.449, section ".printk_index", align 4
@arcturus_dump_pptable._entry.451 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.452, ptr @.str.120, ptr @.str.2, i32 1904, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: XgmiDpmSpare[0] = 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.453 = internal global ptr @arcturus_dump_pptable._entry.451, section ".printk_index", align 4
@arcturus_dump_pptable._entry.454 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.455, ptr @.str.120, ptr @.str.2, i32 1905, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: XgmiDpmSpare[1] = 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.456 = internal global ptr @arcturus_dump_pptable._entry.454, section ".printk_index", align 4
@arcturus_dump_pptable._entry.457 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.458, ptr @.str.120, ptr @.str.2, i32 1907, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: VDDGFX_TVmin = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.459 = internal global ptr @arcturus_dump_pptable._entry.457, section ".printk_index", align 4
@arcturus_dump_pptable._entry.460 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.461, ptr @.str.120, ptr @.str.2, i32 1908, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.461 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: VDDSOC_TVmin = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.462 = internal global ptr @arcturus_dump_pptable._entry.460, section ".printk_index", align 4
@arcturus_dump_pptable._entry.463 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.464, ptr @.str.120, ptr @.str.2, i32 1909, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: VDDGFX_Vmin_HiTemp = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.465 = internal global ptr @arcturus_dump_pptable._entry.463, section ".printk_index", align 4
@arcturus_dump_pptable._entry.466 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.467, ptr @.str.120, ptr @.str.2, i32 1910, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: VDDGFX_Vmin_LoTemp = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.468 = internal global ptr @arcturus_dump_pptable._entry.466, section ".printk_index", align 4
@arcturus_dump_pptable._entry.469 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.470, ptr @.str.120, ptr @.str.2, i32 1911, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: VDDSOC_Vmin_HiTemp = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.471 = internal global ptr @arcturus_dump_pptable._entry.469, section ".printk_index", align 4
@arcturus_dump_pptable._entry.472 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.473, ptr @.str.120, ptr @.str.2, i32 1912, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.473 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: VDDSOC_Vmin_LoTemp = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.474 = internal global ptr @arcturus_dump_pptable._entry.472, section ".printk_index", align 4
@arcturus_dump_pptable._entry.475 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.476, ptr @.str.120, ptr @.str.2, i32 1913, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: VDDGFX_TVminHystersis = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.477 = internal global ptr @arcturus_dump_pptable._entry.475, section ".printk_index", align 4
@arcturus_dump_pptable._entry.478 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.479, ptr @.str.120, ptr @.str.2, i32 1914, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.479 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: VDDSOC_TVminHystersis = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.480 = internal global ptr @arcturus_dump_pptable._entry.478, section ".printk_index", align 4
@arcturus_dump_pptable._entry.481 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.482, ptr @.str.120, ptr @.str.2, i32 1916, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: DebugOverrides = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.483 = internal global ptr @arcturus_dump_pptable._entry.481, section ".printk_index", align 4
@arcturus_dump_pptable._entry.484 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.485, ptr @.str.120, ptr @.str.2, i32 1920, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: ReservedEquation0{a = 0x%x b = 0x%x c = 0x%x}\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.486 = internal global ptr @arcturus_dump_pptable._entry.484, section ".printk_index", align 4
@arcturus_dump_pptable._entry.487 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.488, ptr @.str.120, ptr @.str.2, i32 1924, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.488 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: ReservedEquation1{a = 0x%x b = 0x%x c = 0x%x}\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.489 = internal global ptr @arcturus_dump_pptable._entry.487, section ".printk_index", align 4
@arcturus_dump_pptable._entry.490 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.491, ptr @.str.120, ptr @.str.2, i32 1928, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.491 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: ReservedEquation2{a = 0x%x b = 0x%x c = 0x%x}\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.492 = internal global ptr @arcturus_dump_pptable._entry.490, section ".printk_index", align 4
@arcturus_dump_pptable._entry.493 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.494, ptr @.str.120, ptr @.str.2, i32 1932, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.494 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: ReservedEquation3{a = 0x%x b = 0x%x c = 0x%x}\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.495 = internal global ptr @arcturus_dump_pptable._entry.493, section ".printk_index", align 4
@arcturus_dump_pptable._entry.496 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.497, ptr @.str.120, ptr @.str.2, i32 1934, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.497 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: MinVoltageUlvGfx = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.498 = internal global ptr @arcturus_dump_pptable._entry.496, section ".printk_index", align 4
@arcturus_dump_pptable._entry.499 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.500, ptr @.str.120, ptr @.str.2, i32 1935, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.500 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu: PaddingUlv = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.501 = internal global ptr @arcturus_dump_pptable._entry.499, section ".printk_index", align 4
@arcturus_dump_pptable._entry.502 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.503, ptr @.str.120, ptr @.str.2, i32 1937, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.503 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: TotalPowerConfig = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.504 = internal global ptr @arcturus_dump_pptable._entry.502, section ".printk_index", align 4
@arcturus_dump_pptable._entry.505 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.506, ptr @.str.120, ptr @.str.2, i32 1938, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.506 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: TotalPowerSpare1 = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.507 = internal global ptr @arcturus_dump_pptable._entry.505, section ".printk_index", align 4
@arcturus_dump_pptable._entry.508 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.509, ptr @.str.120, ptr @.str.2, i32 1939, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.509 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: TotalPowerSpare2 = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.510 = internal global ptr @arcturus_dump_pptable._entry.508, section ".printk_index", align 4
@arcturus_dump_pptable._entry.511 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.512, ptr @.str.120, ptr @.str.2, i32 1941, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: PccThresholdLow = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.513 = internal global ptr @arcturus_dump_pptable._entry.511, section ".printk_index", align 4
@arcturus_dump_pptable._entry.514 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.515, ptr @.str.120, ptr @.str.2, i32 1942, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.515 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: PccThresholdHigh = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.516 = internal global ptr @arcturus_dump_pptable._entry.514, section ".printk_index", align 4
@arcturus_dump_pptable._entry.517 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.518, ptr @.str.120, ptr @.str.2, i32 1944, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.518 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: Board Parameters:\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.519 = internal global ptr @arcturus_dump_pptable._entry.517, section ".printk_index", align 4
@arcturus_dump_pptable._entry.520 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.521, ptr @.str.120, ptr @.str.2, i32 1945, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.521 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: MaxVoltageStepGfx = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.522 = internal global ptr @arcturus_dump_pptable._entry.520, section ".printk_index", align 4
@arcturus_dump_pptable._entry.523 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.524, ptr @.str.120, ptr @.str.2, i32 1946, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.524 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: MaxVoltageStepSoc = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.525 = internal global ptr @arcturus_dump_pptable._entry.523, section ".printk_index", align 4
@arcturus_dump_pptable._entry.526 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.527, ptr @.str.120, ptr @.str.2, i32 1948, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.527 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: VddGfxVrMapping = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.528 = internal global ptr @arcturus_dump_pptable._entry.526, section ".printk_index", align 4
@arcturus_dump_pptable._entry.529 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.530, ptr @.str.120, ptr @.str.2, i32 1949, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.530 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: VddSocVrMapping = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.531 = internal global ptr @arcturus_dump_pptable._entry.529, section ".printk_index", align 4
@arcturus_dump_pptable._entry.532 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.533, ptr @.str.120, ptr @.str.2, i32 1950, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.533 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: VddMemVrMapping = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.534 = internal global ptr @arcturus_dump_pptable._entry.532, section ".printk_index", align 4
@arcturus_dump_pptable._entry.535 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.536, ptr @.str.120, ptr @.str.2, i32 1951, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.536 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: BoardVrMapping = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.537 = internal global ptr @arcturus_dump_pptable._entry.535, section ".printk_index", align 4
@arcturus_dump_pptable._entry.538 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.539, ptr @.str.120, ptr @.str.2, i32 1953, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.539 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: GfxUlvPhaseSheddingMask = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.540 = internal global ptr @arcturus_dump_pptable._entry.538, section ".printk_index", align 4
@arcturus_dump_pptable._entry.541 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.542, ptr @.str.120, ptr @.str.2, i32 1954, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.542 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: ExternalSensorPresent = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.543 = internal global ptr @arcturus_dump_pptable._entry.541, section ".printk_index", align 4
@arcturus_dump_pptable._entry.544 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.545, ptr @.str.120, ptr @.str.2, i32 1956, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.545 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: GfxMaxCurrent = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.546 = internal global ptr @arcturus_dump_pptable._entry.544, section ".printk_index", align 4
@arcturus_dump_pptable._entry.547 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.548, ptr @.str.120, ptr @.str.2, i32 1957, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.548 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: GfxOffset = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.549 = internal global ptr @arcturus_dump_pptable._entry.547, section ".printk_index", align 4
@arcturus_dump_pptable._entry.550 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.551, ptr @.str.120, ptr @.str.2, i32 1958, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.551 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Padding_TelemetryGfx = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.552 = internal global ptr @arcturus_dump_pptable._entry.550, section ".printk_index", align 4
@arcturus_dump_pptable._entry.553 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.554, ptr @.str.120, ptr @.str.2, i32 1960, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.554 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: SocMaxCurrent = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.555 = internal global ptr @arcturus_dump_pptable._entry.553, section ".printk_index", align 4
@arcturus_dump_pptable._entry.556 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.557, ptr @.str.120, ptr @.str.2, i32 1961, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.557 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: SocOffset = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.558 = internal global ptr @arcturus_dump_pptable._entry.556, section ".printk_index", align 4
@arcturus_dump_pptable._entry.559 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.560, ptr @.str.120, ptr @.str.2, i32 1962, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.560 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Padding_TelemetrySoc = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.561 = internal global ptr @arcturus_dump_pptable._entry.559, section ".printk_index", align 4
@arcturus_dump_pptable._entry.562 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.563, ptr @.str.120, ptr @.str.2, i32 1964, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.563 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: MemMaxCurrent = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.564 = internal global ptr @arcturus_dump_pptable._entry.562, section ".printk_index", align 4
@arcturus_dump_pptable._entry.565 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.566, ptr @.str.120, ptr @.str.2, i32 1965, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.566 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: MemOffset = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.567 = internal global ptr @arcturus_dump_pptable._entry.565, section ".printk_index", align 4
@arcturus_dump_pptable._entry.568 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.569, ptr @.str.120, ptr @.str.2, i32 1966, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.569 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Padding_TelemetryMem = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.570 = internal global ptr @arcturus_dump_pptable._entry.568, section ".printk_index", align 4
@arcturus_dump_pptable._entry.571 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.572, ptr @.str.120, ptr @.str.2, i32 1968, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.572 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: BoardMaxCurrent = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.573 = internal global ptr @arcturus_dump_pptable._entry.571, section ".printk_index", align 4
@arcturus_dump_pptable._entry.574 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.575, ptr @.str.120, ptr @.str.2, i32 1969, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.575 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: BoardOffset = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.576 = internal global ptr @arcturus_dump_pptable._entry.574, section ".printk_index", align 4
@arcturus_dump_pptable._entry.577 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.578, ptr @.str.120, ptr @.str.2, i32 1970, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.578 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Padding_TelemetryBoardInput = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.579 = internal global ptr @arcturus_dump_pptable._entry.577, section ".printk_index", align 4
@arcturus_dump_pptable._entry.580 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.581, ptr @.str.120, ptr @.str.2, i32 1972, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.581 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu: VR0HotGpio = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.582 = internal global ptr @arcturus_dump_pptable._entry.580, section ".printk_index", align 4
@arcturus_dump_pptable._entry.583 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.584, ptr @.str.120, ptr @.str.2, i32 1973, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.584 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: VR0HotPolarity = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.585 = internal global ptr @arcturus_dump_pptable._entry.583, section ".printk_index", align 4
@arcturus_dump_pptable._entry.586 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.587, ptr @.str.120, ptr @.str.2, i32 1974, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.587 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu: VR1HotGpio = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.588 = internal global ptr @arcturus_dump_pptable._entry.586, section ".printk_index", align 4
@arcturus_dump_pptable._entry.589 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.590, ptr @.str.120, ptr @.str.2, i32 1975, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.590 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: VR1HotPolarity = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.591 = internal global ptr @arcturus_dump_pptable._entry.589, section ".printk_index", align 4
@arcturus_dump_pptable._entry.592 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.593, ptr @.str.120, ptr @.str.2, i32 1977, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.593 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: PllGfxclkSpreadEnabled = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.594 = internal global ptr @arcturus_dump_pptable._entry.592, section ".printk_index", align 4
@arcturus_dump_pptable._entry.595 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.596, ptr @.str.120, ptr @.str.2, i32 1978, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.596 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: PllGfxclkSpreadPercent = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.597 = internal global ptr @arcturus_dump_pptable._entry.595, section ".printk_index", align 4
@arcturus_dump_pptable._entry.598 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.599, ptr @.str.120, ptr @.str.2, i32 1979, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.599 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: PllGfxclkSpreadFreq = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.600 = internal global ptr @arcturus_dump_pptable._entry.598, section ".printk_index", align 4
@arcturus_dump_pptable._entry.601 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.602, ptr @.str.120, ptr @.str.2, i32 1981, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.602 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: UclkSpreadEnabled = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.603 = internal global ptr @arcturus_dump_pptable._entry.601, section ".printk_index", align 4
@arcturus_dump_pptable._entry.604 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.605, ptr @.str.120, ptr @.str.2, i32 1982, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.605 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: UclkSpreadPercent = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.606 = internal global ptr @arcturus_dump_pptable._entry.604, section ".printk_index", align 4
@arcturus_dump_pptable._entry.607 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.608, ptr @.str.120, ptr @.str.2, i32 1983, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.608 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: UclkSpreadFreq = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.609 = internal global ptr @arcturus_dump_pptable._entry.607, section ".printk_index", align 4
@arcturus_dump_pptable._entry.610 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.611, ptr @.str.120, ptr @.str.2, i32 1985, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.611 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: FclkSpreadEnabled = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.612 = internal global ptr @arcturus_dump_pptable._entry.610, section ".printk_index", align 4
@arcturus_dump_pptable._entry.613 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.614, ptr @.str.120, ptr @.str.2, i32 1986, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.614 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: FclkSpreadPercent = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.615 = internal global ptr @arcturus_dump_pptable._entry.613, section ".printk_index", align 4
@arcturus_dump_pptable._entry.616 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.617, ptr @.str.120, ptr @.str.2, i32 1987, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.617 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: FclkSpreadFreq = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.618 = internal global ptr @arcturus_dump_pptable._entry.616, section ".printk_index", align 4
@arcturus_dump_pptable._entry.619 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.620, ptr @.str.120, ptr @.str.2, i32 1989, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.620 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: FllGfxclkSpreadEnabled = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.621 = internal global ptr @arcturus_dump_pptable._entry.619, section ".printk_index", align 4
@arcturus_dump_pptable._entry.622 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.623, ptr @.str.120, ptr @.str.2, i32 1990, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.623 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: FllGfxclkSpreadPercent = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.624 = internal global ptr @arcturus_dump_pptable._entry.622, section ".printk_index", align 4
@arcturus_dump_pptable._entry.625 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.626, ptr @.str.120, ptr @.str.2, i32 1991, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.626 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: FllGfxclkSpreadFreq = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.627 = internal global ptr @arcturus_dump_pptable._entry.625, section ".printk_index", align 4
@arcturus_dump_pptable._entry.628 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.629, ptr @.str.120, ptr @.str.2, i32 1994, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.629 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: I2cControllers[%d]:\0A\00", [35 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.630 = internal global ptr @arcturus_dump_pptable._entry.628, section ".printk_index", align 4
@arcturus_dump_pptable._entry.631 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.632, ptr @.str.120, ptr @.str.2, i32 1996, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.632 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu:                    .Enabled = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.633 = internal global ptr @arcturus_dump_pptable._entry.631, section ".printk_index", align 4
@arcturus_dump_pptable._entry.634 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.635, ptr @.str.120, ptr @.str.2, i32 1998, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.635 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu:                    .SlaveAddress = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.636 = internal global ptr @arcturus_dump_pptable._entry.634, section ".printk_index", align 4
@arcturus_dump_pptable._entry.637 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.638, ptr @.str.120, ptr @.str.2, i32 2000, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.638 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu:                    .ControllerPort = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.639 = internal global ptr @arcturus_dump_pptable._entry.637, section ".printk_index", align 4
@arcturus_dump_pptable._entry.640 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.641, ptr @.str.120, ptr @.str.2, i32 2002, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.641 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu:                    .ControllerName = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.642 = internal global ptr @arcturus_dump_pptable._entry.640, section ".printk_index", align 4
@arcturus_dump_pptable._entry.643 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.644, ptr @.str.120, ptr @.str.2, i32 2004, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.644 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu:                    .ThermalThrottler = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.645 = internal global ptr @arcturus_dump_pptable._entry.643, section ".printk_index", align 4
@arcturus_dump_pptable._entry.646 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.647, ptr @.str.120, ptr @.str.2, i32 2006, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.647 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu:                    .I2cProtocol = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.648 = internal global ptr @arcturus_dump_pptable._entry.646, section ".printk_index", align 4
@arcturus_dump_pptable._entry.649 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.650, ptr @.str.120, ptr @.str.2, i32 2008, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.650 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu:                    .Speed = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.651 = internal global ptr @arcturus_dump_pptable._entry.649, section ".printk_index", align 4
@arcturus_dump_pptable._entry.652 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.653, ptr @.str.120, ptr @.str.2, i32 2011, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.653 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: MemoryChannelEnabled = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.654 = internal global ptr @arcturus_dump_pptable._entry.652, section ".printk_index", align 4
@arcturus_dump_pptable._entry.655 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.656, ptr @.str.120, ptr @.str.2, i32 2012, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.656 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: DramBitWidth = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.657 = internal global ptr @arcturus_dump_pptable._entry.655, section ".printk_index", align 4
@arcturus_dump_pptable._entry.658 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.659, ptr @.str.120, ptr @.str.2, i32 2014, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.659 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: TotalBoardPower = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.660 = internal global ptr @arcturus_dump_pptable._entry.658, section ".printk_index", align 4
@arcturus_dump_pptable._entry.661 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.662, ptr @.str.120, ptr @.str.2, i32 2016, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.662 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: XgmiLinkSpeed\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.663 = internal global ptr @arcturus_dump_pptable._entry.661, section ".printk_index", align 4
@arcturus_dump_pptable._entry.664 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.120, ptr @.str.2, i32 2018, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.665 = internal global ptr @arcturus_dump_pptable._entry.664, section ".printk_index", align 4
@arcturus_dump_pptable._entry.666 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.667, ptr @.str.120, ptr @.str.2, i32 2019, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.667 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: XgmiLinkWidth\0A\00", [41 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.668 = internal global ptr @arcturus_dump_pptable._entry.666, section ".printk_index", align 4
@arcturus_dump_pptable._entry.669 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.120, ptr @.str.2, i32 2021, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.670 = internal global ptr @arcturus_dump_pptable._entry.669, section ".printk_index", align 4
@arcturus_dump_pptable._entry.671 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.672, ptr @.str.120, ptr @.str.2, i32 2022, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.672 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu: XgmiFclkFreq\0A\00", [42 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.673 = internal global ptr @arcturus_dump_pptable._entry.671, section ".printk_index", align 4
@arcturus_dump_pptable._entry.674 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.120, ptr @.str.2, i32 2024, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.675 = internal global ptr @arcturus_dump_pptable._entry.674, section ".printk_index", align 4
@arcturus_dump_pptable._entry.676 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.677, ptr @.str.120, ptr @.str.2, i32 2025, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.677 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu: XgmiSocVoltage\0A\00", [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.678 = internal global ptr @arcturus_dump_pptable._entry.676, section ".printk_index", align 4
@arcturus_dump_pptable._entry.679 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.120, ptr @.str.2, i32 2027, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@arcturus_dump_pptable._entry_ptr.680 = internal global ptr @arcturus_dump_pptable._entry.679, section ".printk_index", align 4
@arcturus_get_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.681, ptr @.str.682, ptr @.str.2, i32 1350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.681 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Cannot get PPT limit due to pptable missing!\00", [43 x i8] zeroinitializer }, align 32
@.str.682 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arcturus_get_power_limit\00", [39 x i8] zeroinitializer }, align 32
@arcturus_get_power_limit._entry_ptr = internal global ptr @arcturus_get_power_limit._entry, section ".printk_index", align 4
@arcturus_get_power_limit.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.106, ptr @.str.682, ptr @.str.2, ptr @.str.683, i8 1, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.683 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: ODSETTING_POWERPERCENTAGE: %d (default: %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@arcturus_set_df_cstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.684, ptr @.str.2, i32 2225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.684 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arcturus_set_df_cstate\00", [41 x i8] zeroinitializer }, align 32
@arcturus_set_df_cstate._entry_ptr = internal global ptr @arcturus_set_df_cstate._entry, section ".printk_index", align 4
@arcturus_set_df_cstate._entry.685 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.686, ptr @.str.684, ptr @.str.2, i32 2231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.686 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"amdgpu: DFCstateControl is only supported by PMFW 54.15.0 and onwards\0A\00", [57 x i8] zeroinitializer }, align 32
@arcturus_set_df_cstate._entry_ptr.687 = internal global ptr @arcturus_set_df_cstate._entry.685, section ".printk_index", align 4
@arcturus_allow_xgmi_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.688, ptr @.str.2, i32 2245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.688 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arcturus_allow_xgmi_power_down\00", [33 x i8] zeroinitializer }, align 32
@arcturus_allow_xgmi_power_down._entry_ptr = internal global ptr @arcturus_allow_xgmi_power_down._entry, section ".printk_index", align 4
@arcturus_allow_xgmi_power_down._entry.689 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.690, ptr @.str.688, ptr @.str.2, i32 2251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.690 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"amdgpu: XGMI power down control is only supported by PMFW 54.23.0 and onwards\0A\00", [49 x i8] zeroinitializer }, align 32
@arcturus_allow_xgmi_power_down._entry_ptr.691 = internal global ptr @arcturus_allow_xgmi_power_down._entry.689, section ".printk_index", align 4
@arcturus_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @arcturus_i2c_xfer, ptr null, ptr null, ptr null, ptr @arcturus_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@arcturus_i2c_control_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 105, i32 0, i16 8, i16 8, i16 2, i16 6 }, [40 x i8] zeroinitializer }, align 32
@.str.692 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMDGPU SMU\00", [21 x i8] zeroinitializer }, align 32
@.str.693 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register hw i2c, err: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arcturus_get_unique_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.694, ptr @.str.695, ptr @.str.2, i32 2195, ptr @.str.696, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.694 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"amdgpu: Failed to get smu version, cannot get unique_id or serial_number\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.695 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arcturus_get_unique_id\00", [41 x i8] zeroinitializer }, align 32
@.str.696 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@arcturus_get_unique_id._entry_ptr = internal global ptr @arcturus_get_unique_id._entry, section ".printk_index", align 4
@arcturus_get_unique_id._entry.697 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.698, ptr @.str.695, ptr @.str.2, i32 2201, ptr @.str.696, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.698 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"amdgpu: ReadSerial is only supported by PMFW 54.23.0 and onwards\0A\00", [62 x i8] zeroinitializer }, align 32
@arcturus_get_unique_id._entry_ptr.699 = internal global ptr @arcturus_get_unique_id._entry.697, section ".printk_index", align 4
@.str.700 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llx\00", [27 x i8] zeroinitializer }, align 32
@arcturus_append_powerplay_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.701, ptr @.str.702, ptr @.str.2, i32 486, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.701 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"amdgpu: smc_dpm_info table revision(format.content): %d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.702 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arcturus_append_powerplay_table\00", [32 x i8] zeroinitializer }, align 32
@arcturus_append_powerplay_table._entry_ptr = internal global ptr @arcturus_append_powerplay_table._entry, section ".printk_index", align 4
@arcturus_check_fan_support.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@arcturus_check_fan_support._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.703, ptr @.str.704, ptr @.str.2, i32 439, ptr @.str.121, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.703 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: PMFW based fan control disabled\00", [56 x i8] zeroinitializer }, align 32
@.str.704 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arcturus_check_fan_support\00", [37 x i8] zeroinitializer }, align 32
@arcturus_check_fan_support._entry_ptr = internal global ptr @arcturus_check_fan_support._entry, section ".printk_index", align 4
@.str.705 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.706 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" and \00", [26 x i8] zeroinitializer }, align 32
@arcturus_log_thermal_throttling_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.707, ptr @.str.708, ptr @.str.2, i32 2304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.707 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: buffer overflow!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.708 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"arcturus_log_thermal_throttling_event\00", [58 x i8] zeroinitializer }, align 32
@arcturus_log_thermal_throttling_event._entry_ptr = internal global ptr @arcturus_log_thermal_throttling_event._entry, section ".printk_index", align 4
@arcturus_log_thermal_throttling_event._entry.709 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.710, ptr @.str.708, ptr @.str.2, i32 2312, ptr @.str.696, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.710 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"amdgpu: WARN: GPU thermal throttling temperature reached, expect performance decrease. %s.\0A\00", [36 x i8] zeroinitializer }, align 32
@arcturus_log_thermal_throttling_event._entry_ptr.711 = internal global ptr @arcturus_log_thermal_throttling_event._entry.709, section ".printk_index", align 4
@arcturus_throttler_map = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\00#$\22&('\10\11\00\01\02\0389\17,-", [46 x i8] zeroinitializer }, align 32
@.str.712 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPU\00", [28 x i8] zeroinitializer }, align 32
@.str.713 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HBM\00", [28 x i8] zeroinitializer }, align 32
@.str.714 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VR of GFX rail\00", [17 x i8] zeroinitializer }, align 32
@.str.715 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VR of HBM rail\00", [17 x i8] zeroinitializer }, align 32
@.str.716 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VR of SOC rail\00", [17 x i8] zeroinitializer }, align 32
@.str.717 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VR0 HOT\00", [24 x i8] zeroinitializer }, align 32
@.str.718 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VR1 HOT\00", [24 x i8] zeroinitializer }, align 32
@arcturus_clk_map = internal constant { <{ [15 x %struct.cmn2asic_mapping], [8 x %struct.cmn2asic_mapping] }>, [40 x i8] } { <{ [15 x %struct.cmn2asic_mapping], [8 x %struct.cmn2asic_mapping] }> <{ [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 4 }], [8 x %struct.cmn2asic_mapping] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@arcturus_feature_mask_map = internal constant { <{ [63 x %struct.cmn2asic_mapping], [32 x %struct.cmn2asic_mapping] }>, [168 x i8] } { <{ [63 x %struct.cmn2asic_mapping], [32 x %struct.cmn2asic_mapping] }> <{ [63 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 6 }, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping { i32 1, i32 8 }, %struct.cmn2asic_mapping { i32 1, i32 9 }, %struct.cmn2asic_mapping { i32 1, i32 16 }, %struct.cmn2asic_mapping { i32 1, i32 17 }, %struct.cmn2asic_mapping { i32 1, i32 23 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 19 }, %struct.cmn2asic_mapping { i32 1, i32 20 }, %struct.cmn2asic_mapping { i32 1, i32 21 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 22 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 10 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 11 }, %struct.cmn2asic_mapping { i32 1, i32 12 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 14 }, %struct.cmn2asic_mapping { i32 1, i32 18 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 24 }, %struct.cmn2asic_mapping { i32 1, i32 25 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 15 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 13 }], [32 x %struct.cmn2asic_mapping] zeroinitializer }>, [168 x i8] zeroinitializer }, align 32
@switch.table.arcturus_print_clk_levels = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47], [20 x i8] zeroinitializer }, align 32
@switch.table.arcturus_print_clk_levels.721 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 6, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.722 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.723 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.724 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 3, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 15, i64 22]
@__sancov_gen_cov_switch_values.725 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.726 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.727 = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 10, i64 11, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@___asan_gen_.728 = private unnamed_addr constant [19 x i8] c"arcturus_ppt_funcs\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2393, i32 35 }
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c"arcturus_message_map\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 102, i32 42 }
@___asan_gen_.734 = private unnamed_addr constant [19 x i8] c"arcturus_table_map\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 206, i32 38 }
@___asan_gen_.737 = private unnamed_addr constant [21 x i8] c"arcturus_pwr_src_map\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 219, i32 38 }
@___asan_gen_.740 = private unnamed_addr constant [22 x i8] c"arcturus_workload_map\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 224, i32 38 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 524, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 781, i32 36 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 791, i32 4 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 798, i32 4 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 807, i32 37 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 809, i32 33 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 812, i32 19 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 818, i32 4 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 825, i32 4 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 841, i32 4 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 848, i32 4 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 864, i32 4 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 871, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 887, i32 4 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 894, i32 4 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 910, i32 4 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 917, i32 4 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 933, i32 36 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 934, i32 24 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 935, i32 24 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 936, i32 24 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 937, i32 24 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 938, i32 25 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 939, i32 25 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 940, i32 25 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 941, i32 25 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 942, i32 25 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 943, i32 25 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1020, i32 3 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1026, i32 3 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1038, i32 4 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1049, i32 4 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1058, i32 4 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 972, i32 4 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 986, i32 4 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1000, i32 4 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1383, i32 4 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1384, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1385, i32 4 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1386, i32 4 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1387, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1388, i32 4 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1389, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1390, i32 4 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1391, i32 4 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1392, i32 4 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1393, i32 4 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1407, i32 36 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1411, i32 36 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1432, i32 5 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1437, i32 36 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1438, i32 73 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1441, i32 37 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1444, i32 5 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1458, i32 5 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1485, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1501, i32 4 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1536, i32 4 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1549, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1558, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2054, i32 5 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2062, i32 5 }
@___asan_gen_.1049 = private unnamed_addr constant [21 x i8] c"smu11_thermal_policy\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant [52 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/inc/smu_v11_0.h\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1050, i32 70, i32 45 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1575, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1588, i32 4 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1606, i32 2 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1608, i32 2 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1610, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1611, i32 2 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1614, i32 3 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1615, i32 3 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1618, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1619, i32 2 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1620, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1621, i32 2 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1623, i32 2 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1624, i32 2 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1625, i32 2 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1626, i32 2 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1627, i32 2 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1628, i32 2 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1629, i32 2 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1631, i32 2 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1632, i32 2 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1634, i32 2 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1636, i32 2 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1637, i32 2 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1639, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1640, i32 2 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1641, i32 2 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1642, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1644, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1645, i32 2 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1646, i32 2 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1647, i32 2 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1649, i32 2 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1650, i32 2 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1652, i32 2 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1673, i32 2 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1694, i32 2 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1715, i32 2 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1736, i32 2 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1757, i32 2 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1779, i32 2 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1781, i32 3 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1783, i32 2 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1785, i32 3 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1787, i32 2 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1789, i32 3 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1791, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1793, i32 3 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1795, i32 2 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1797, i32 3 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1799, i32 2 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1801, i32 3 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1803, i32 2 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1805, i32 3 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1807, i32 2 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1809, i32 3 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1811, i32 2 }
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1812, i32 2 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1813, i32 2 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1814, i32 2 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1815, i32 2 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1816, i32 2 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1817, i32 2 }
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1818, i32 2 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1819, i32 2 }
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1821, i32 2 }
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1822, i32 2 }
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1823, i32 2 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1824, i32 2 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1826, i32 2 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1827, i32 2 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1829, i32 2 }
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1830, i32 2 }
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1831, i32 2 }
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1832, i32 2 }
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1833, i32 2 }
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1834, i32 2 }
@___asan_gen_.1504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1836, i32 2 }
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1837, i32 2 }
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1838, i32 2 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1839, i32 2 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1840, i32 2 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1841, i32 2 }
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1842, i32 2 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1843, i32 2 }
@___asan_gen_.1552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1844, i32 2 }
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1846, i32 2 }
@___asan_gen_.1564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1847, i32 2 }
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1848, i32 2 }
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1849, i32 2 }
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1851, i32 2 }
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1852, i32 2 }
@___asan_gen_.1594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1853, i32 2 }
@___asan_gen_.1600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1854, i32 2 }
@___asan_gen_.1606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1856, i32 2 }
@___asan_gen_.1612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1860, i32 2 }
@___asan_gen_.1618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1864, i32 2 }
@___asan_gen_.1624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1869, i32 2 }
@___asan_gen_.1630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1872, i32 2 }
@___asan_gen_.1636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1876, i32 2 }
@___asan_gen_.1642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1880, i32 2 }
@___asan_gen_.1648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1885, i32 2 }
@___asan_gen_.1654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1886, i32 2 }
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1888, i32 2 }
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1889, i32 2 }
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1890, i32 2 }
@___asan_gen_.1678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1891, i32 2 }
@___asan_gen_.1684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1893, i32 2 }
@___asan_gen_.1690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1894, i32 2 }
@___asan_gen_.1696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1895, i32 2 }
@___asan_gen_.1702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1896, i32 2 }
@___asan_gen_.1708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1898, i32 2 }
@___asan_gen_.1714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1899, i32 2 }
@___asan_gen_.1720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1901, i32 2 }
@___asan_gen_.1723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1903, i32 3 }
@___asan_gen_.1729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1904, i32 2 }
@___asan_gen_.1735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1905, i32 2 }
@___asan_gen_.1741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1907, i32 2 }
@___asan_gen_.1747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1908, i32 2 }
@___asan_gen_.1753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1909, i32 2 }
@___asan_gen_.1759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1910, i32 2 }
@___asan_gen_.1765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1911, i32 2 }
@___asan_gen_.1771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1912, i32 2 }
@___asan_gen_.1777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1913, i32 2 }
@___asan_gen_.1783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1914, i32 2 }
@___asan_gen_.1789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1916, i32 2 }
@___asan_gen_.1795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1917, i32 2 }
@___asan_gen_.1801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1921, i32 2 }
@___asan_gen_.1807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1925, i32 2 }
@___asan_gen_.1813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1929, i32 2 }
@___asan_gen_.1819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1934, i32 2 }
@___asan_gen_.1825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1935, i32 2 }
@___asan_gen_.1831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1937, i32 2 }
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1938, i32 2 }
@___asan_gen_.1843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1939, i32 2 }
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1941, i32 2 }
@___asan_gen_.1855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1942, i32 2 }
@___asan_gen_.1861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1944, i32 2 }
@___asan_gen_.1867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1945, i32 2 }
@___asan_gen_.1873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1946, i32 2 }
@___asan_gen_.1879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1948, i32 2 }
@___asan_gen_.1885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1949, i32 2 }
@___asan_gen_.1891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1950, i32 2 }
@___asan_gen_.1897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1951, i32 2 }
@___asan_gen_.1903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1953, i32 2 }
@___asan_gen_.1909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1954, i32 2 }
@___asan_gen_.1915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1956, i32 2 }
@___asan_gen_.1921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1957, i32 2 }
@___asan_gen_.1927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1958, i32 2 }
@___asan_gen_.1933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1960, i32 2 }
@___asan_gen_.1939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1961, i32 2 }
@___asan_gen_.1945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1962, i32 2 }
@___asan_gen_.1951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1964, i32 2 }
@___asan_gen_.1957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1965, i32 2 }
@___asan_gen_.1963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1966, i32 2 }
@___asan_gen_.1969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1968, i32 2 }
@___asan_gen_.1975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1969, i32 2 }
@___asan_gen_.1981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1970, i32 2 }
@___asan_gen_.1987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1972, i32 2 }
@___asan_gen_.1993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1973, i32 2 }
@___asan_gen_.1999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1974, i32 2 }
@___asan_gen_.2005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1975, i32 2 }
@___asan_gen_.2011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1977, i32 2 }
@___asan_gen_.2017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1978, i32 2 }
@___asan_gen_.2023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1979, i32 2 }
@___asan_gen_.2029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1981, i32 2 }
@___asan_gen_.2035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1982, i32 2 }
@___asan_gen_.2041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1983, i32 2 }
@___asan_gen_.2047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1985, i32 2 }
@___asan_gen_.2053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1986, i32 2 }
@___asan_gen_.2059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1987, i32 2 }
@___asan_gen_.2065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1989, i32 2 }
@___asan_gen_.2071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1990, i32 2 }
@___asan_gen_.2077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1991, i32 2 }
@___asan_gen_.2083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1994, i32 3 }
@___asan_gen_.2089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1995, i32 3 }
@___asan_gen_.2095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1997, i32 3 }
@___asan_gen_.2101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1999, i32 3 }
@___asan_gen_.2107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2001, i32 3 }
@___asan_gen_.2113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2003, i32 3 }
@___asan_gen_.2119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2005, i32 3 }
@___asan_gen_.2125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2007, i32 3 }
@___asan_gen_.2131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2011, i32 2 }
@___asan_gen_.2137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2012, i32 2 }
@___asan_gen_.2143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2014, i32 2 }
@___asan_gen_.2149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2016, i32 2 }
@___asan_gen_.2152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2018, i32 3 }
@___asan_gen_.2158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2019, i32 2 }
@___asan_gen_.2161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2021, i32 3 }
@___asan_gen_.2167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2022, i32 2 }
@___asan_gen_.2170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2024, i32 3 }
@___asan_gen_.2176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2025, i32 2 }
@___asan_gen_.2179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2027, i32 3 }
@___asan_gen_.2188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1350, i32 4 }
@___asan_gen_.2191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 1366, i32 4 }
@___asan_gen_.2197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2225, i32 3 }
@___asan_gen_.2203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2231, i32 3 }
@___asan_gen_.2209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2245, i32 3 }
@___asan_gen_.2215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2251, i32 3 }
@___asan_gen_.2216 = private unnamed_addr constant [18 x i8] c"arcturus_i2c_algo\00", align 1
@___asan_gen_.2218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2150, i32 35 }
@___asan_gen_.2219 = private unnamed_addr constant [28 x i8] c"arcturus_i2c_control_quirks\00", align 1
@___asan_gen_.2221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2156, i32 40 }
@___asan_gen_.2224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2174, i32 49 }
@___asan_gen_.2227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2178, i32 3 }
@___asan_gen_.2239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2195, i32 3 }
@___asan_gen_.2245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2201, i32 3 }
@___asan_gen_.2248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2214, i32 24 }
@___asan_gen_.2257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 484, i32 2 }
@___asan_gen_.2266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 438, i32 3 }
@___asan_gen_.2269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2300, i32 10 }
@___asan_gen_.2272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2301, i32 33 }
@___asan_gen_.2281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2304, i32 5 }
@___asan_gen_.2282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2311, i32 2 }
@___asan_gen_.2288 = private unnamed_addr constant [23 x i8] c"arcturus_throttler_map\00", align 1
@___asan_gen_.2290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 232, i32 22 }
@___asan_gen_.2293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2271, i32 39 }
@___asan_gen_.2296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2272, i32 35 }
@___asan_gen_.2299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2273, i32 38 }
@___asan_gen_.2302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2274, i32 38 }
@___asan_gen_.2305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2275, i32 38 }
@___asan_gen_.2308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2276, i32 33 }
@___asan_gen_.2309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 2277, i32 33 }
@___asan_gen_.2312 = private unnamed_addr constant [17 x i8] c"arcturus_clk_map\00", align 1
@___asan_gen_.2314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 166, i32 38 }
@___asan_gen_.2315 = private unnamed_addr constant [26 x i8] c"arcturus_feature_mask_map\00", align 1
@___asan_gen_.2316 = private constant [63 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c\00", align 1
@___asan_gen_.2317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2316, i32 177, i32 38 }
@___asan_gen_.2318 = private unnamed_addr constant [39 x i8] c"switch.table.arcturus_print_clk_levels\00", align 1
@___asan_gen_.2319 = private unnamed_addr constant [43 x i8] c"switch.table.arcturus_print_clk_levels.721\00", align 1
@llvm.compiler.used = appending global [764 x ptr] [ptr @arcturus_allow_xgmi_power_down._entry, ptr @arcturus_allow_xgmi_power_down._entry.689, ptr @arcturus_allow_xgmi_power_down._entry_ptr, ptr @arcturus_allow_xgmi_power_down._entry_ptr.691, ptr @arcturus_append_powerplay_table._entry, ptr @arcturus_append_powerplay_table._entry_ptr, ptr @arcturus_check_fan_support._entry, ptr @arcturus_check_fan_support._entry_ptr, ptr @arcturus_dpm_set_vcn_enable._entry, ptr @arcturus_dpm_set_vcn_enable._entry.113, ptr @arcturus_dpm_set_vcn_enable._entry_ptr, ptr @arcturus_dpm_set_vcn_enable._entry_ptr.115, ptr @arcturus_dump_pptable._entry, ptr @arcturus_dump_pptable._entry.122, ptr @arcturus_dump_pptable._entry.125, ptr @arcturus_dump_pptable._entry.128, ptr @arcturus_dump_pptable._entry.131, ptr @arcturus_dump_pptable._entry.134, ptr @arcturus_dump_pptable._entry.137, ptr @arcturus_dump_pptable._entry.140, ptr @arcturus_dump_pptable._entry.143, ptr @arcturus_dump_pptable._entry.146, ptr @arcturus_dump_pptable._entry.149, ptr @arcturus_dump_pptable._entry.152, ptr @arcturus_dump_pptable._entry.155, ptr @arcturus_dump_pptable._entry.158, ptr @arcturus_dump_pptable._entry.161, ptr @arcturus_dump_pptable._entry.164, ptr @arcturus_dump_pptable._entry.167, ptr @arcturus_dump_pptable._entry.170, ptr @arcturus_dump_pptable._entry.173, ptr @arcturus_dump_pptable._entry.176, ptr @arcturus_dump_pptable._entry.179, ptr @arcturus_dump_pptable._entry.182, ptr @arcturus_dump_pptable._entry.185, ptr @arcturus_dump_pptable._entry.188, ptr @arcturus_dump_pptable._entry.191, ptr @arcturus_dump_pptable._entry.194, ptr @arcturus_dump_pptable._entry.197, ptr @arcturus_dump_pptable._entry.200, ptr @arcturus_dump_pptable._entry.203, ptr @arcturus_dump_pptable._entry.206, ptr @arcturus_dump_pptable._entry.209, ptr @arcturus_dump_pptable._entry.212, ptr @arcturus_dump_pptable._entry.215, ptr @arcturus_dump_pptable._entry.218, ptr @arcturus_dump_pptable._entry.221, ptr @arcturus_dump_pptable._entry.224, ptr @arcturus_dump_pptable._entry.227, ptr @arcturus_dump_pptable._entry.230, ptr @arcturus_dump_pptable._entry.233, ptr @arcturus_dump_pptable._entry.236, ptr @arcturus_dump_pptable._entry.239, ptr @arcturus_dump_pptable._entry.242, ptr @arcturus_dump_pptable._entry.244, ptr @arcturus_dump_pptable._entry.247, ptr @arcturus_dump_pptable._entry.249, ptr @arcturus_dump_pptable._entry.252, ptr @arcturus_dump_pptable._entry.254, ptr @arcturus_dump_pptable._entry.257, ptr @arcturus_dump_pptable._entry.259, ptr @arcturus_dump_pptable._entry.262, ptr @arcturus_dump_pptable._entry.264, ptr @arcturus_dump_pptable._entry.267, ptr @arcturus_dump_pptable._entry.270, ptr @arcturus_dump_pptable._entry.273, ptr @arcturus_dump_pptable._entry.275, ptr @arcturus_dump_pptable._entry.278, ptr @arcturus_dump_pptable._entry.281, ptr @arcturus_dump_pptable._entry.284, ptr @arcturus_dump_pptable._entry.287, ptr @arcturus_dump_pptable._entry.290, ptr @arcturus_dump_pptable._entry.293, ptr @arcturus_dump_pptable._entry.296, ptr @arcturus_dump_pptable._entry.299, ptr @arcturus_dump_pptable._entry.302, ptr @arcturus_dump_pptable._entry.305, ptr @arcturus_dump_pptable._entry.308, ptr @arcturus_dump_pptable._entry.311, ptr @arcturus_dump_pptable._entry.314, ptr @arcturus_dump_pptable._entry.317, ptr @arcturus_dump_pptable._entry.320, ptr @arcturus_dump_pptable._entry.323, ptr @arcturus_dump_pptable._entry.326, ptr @arcturus_dump_pptable._entry.329, ptr @arcturus_dump_pptable._entry.332, ptr @arcturus_dump_pptable._entry.335, ptr @arcturus_dump_pptable._entry.338, ptr @arcturus_dump_pptable._entry.341, ptr @arcturus_dump_pptable._entry.344, ptr @arcturus_dump_pptable._entry.347, ptr @arcturus_dump_pptable._entry.350, ptr @arcturus_dump_pptable._entry.353, ptr @arcturus_dump_pptable._entry.356, ptr @arcturus_dump_pptable._entry.359, ptr @arcturus_dump_pptable._entry.362, ptr @arcturus_dump_pptable._entry.365, ptr @arcturus_dump_pptable._entry.368, ptr @arcturus_dump_pptable._entry.371, ptr @arcturus_dump_pptable._entry.374, ptr @arcturus_dump_pptable._entry.377, ptr @arcturus_dump_pptable._entry.380, ptr @arcturus_dump_pptable._entry.383, ptr @arcturus_dump_pptable._entry.386, ptr @arcturus_dump_pptable._entry.389, ptr @arcturus_dump_pptable._entry.392, ptr @arcturus_dump_pptable._entry.395, ptr @arcturus_dump_pptable._entry.398, ptr @arcturus_dump_pptable._entry.401, ptr @arcturus_dump_pptable._entry.404, ptr @arcturus_dump_pptable._entry.407, ptr @arcturus_dump_pptable._entry.410, ptr @arcturus_dump_pptable._entry.413, ptr @arcturus_dump_pptable._entry.416, ptr @arcturus_dump_pptable._entry.419, ptr @arcturus_dump_pptable._entry.422, ptr @arcturus_dump_pptable._entry.425, ptr @arcturus_dump_pptable._entry.428, ptr @arcturus_dump_pptable._entry.431, ptr @arcturus_dump_pptable._entry.434, ptr @arcturus_dump_pptable._entry.437, ptr @arcturus_dump_pptable._entry.440, ptr @arcturus_dump_pptable._entry.443, ptr @arcturus_dump_pptable._entry.446, ptr @arcturus_dump_pptable._entry.449, ptr @arcturus_dump_pptable._entry.451, ptr @arcturus_dump_pptable._entry.454, ptr @arcturus_dump_pptable._entry.457, ptr @arcturus_dump_pptable._entry.460, ptr @arcturus_dump_pptable._entry.463, ptr @arcturus_dump_pptable._entry.466, ptr @arcturus_dump_pptable._entry.469, ptr @arcturus_dump_pptable._entry.472, ptr @arcturus_dump_pptable._entry.475, ptr @arcturus_dump_pptable._entry.478, ptr @arcturus_dump_pptable._entry.481, ptr @arcturus_dump_pptable._entry.484, ptr @arcturus_dump_pptable._entry.487, ptr @arcturus_dump_pptable._entry.490, ptr @arcturus_dump_pptable._entry.493, ptr @arcturus_dump_pptable._entry.496, ptr @arcturus_dump_pptable._entry.499, ptr @arcturus_dump_pptable._entry.502, ptr @arcturus_dump_pptable._entry.505, ptr @arcturus_dump_pptable._entry.508, ptr @arcturus_dump_pptable._entry.511, ptr @arcturus_dump_pptable._entry.514, ptr @arcturus_dump_pptable._entry.517, ptr @arcturus_dump_pptable._entry.520, ptr @arcturus_dump_pptable._entry.523, ptr @arcturus_dump_pptable._entry.526, ptr @arcturus_dump_pptable._entry.529, ptr @arcturus_dump_pptable._entry.532, ptr @arcturus_dump_pptable._entry.535, ptr @arcturus_dump_pptable._entry.538, ptr @arcturus_dump_pptable._entry.541, ptr @arcturus_dump_pptable._entry.544, ptr @arcturus_dump_pptable._entry.547, ptr @arcturus_dump_pptable._entry.550, ptr @arcturus_dump_pptable._entry.553, ptr @arcturus_dump_pptable._entry.556, ptr @arcturus_dump_pptable._entry.559, ptr @arcturus_dump_pptable._entry.562, ptr @arcturus_dump_pptable._entry.565, ptr @arcturus_dump_pptable._entry.568, ptr @arcturus_dump_pptable._entry.571, ptr @arcturus_dump_pptable._entry.574, ptr @arcturus_dump_pptable._entry.577, ptr @arcturus_dump_pptable._entry.580, ptr @arcturus_dump_pptable._entry.583, ptr @arcturus_dump_pptable._entry.586, ptr @arcturus_dump_pptable._entry.589, ptr @arcturus_dump_pptable._entry.592, ptr @arcturus_dump_pptable._entry.595, ptr @arcturus_dump_pptable._entry.598, ptr @arcturus_dump_pptable._entry.601, ptr @arcturus_dump_pptable._entry.604, ptr @arcturus_dump_pptable._entry.607, ptr @arcturus_dump_pptable._entry.610, ptr @arcturus_dump_pptable._entry.613, ptr @arcturus_dump_pptable._entry.616, ptr @arcturus_dump_pptable._entry.619, ptr @arcturus_dump_pptable._entry.622, ptr @arcturus_dump_pptable._entry.625, ptr @arcturus_dump_pptable._entry.628, ptr @arcturus_dump_pptable._entry.631, ptr @arcturus_dump_pptable._entry.634, ptr @arcturus_dump_pptable._entry.637, ptr @arcturus_dump_pptable._entry.640, ptr @arcturus_dump_pptable._entry.643, ptr @arcturus_dump_pptable._entry.646, ptr @arcturus_dump_pptable._entry.649, ptr @arcturus_dump_pptable._entry.652, ptr @arcturus_dump_pptable._entry.655, ptr @arcturus_dump_pptable._entry.658, ptr @arcturus_dump_pptable._entry.661, ptr @arcturus_dump_pptable._entry.664, ptr @arcturus_dump_pptable._entry.666, ptr @arcturus_dump_pptable._entry.669, ptr @arcturus_dump_pptable._entry.671, ptr @arcturus_dump_pptable._entry.674, ptr @arcturus_dump_pptable._entry.676, ptr @arcturus_dump_pptable._entry.679, ptr @arcturus_dump_pptable._entry_ptr, ptr @arcturus_dump_pptable._entry_ptr.124, ptr @arcturus_dump_pptable._entry_ptr.127, ptr @arcturus_dump_pptable._entry_ptr.130, ptr @arcturus_dump_pptable._entry_ptr.133, ptr @arcturus_dump_pptable._entry_ptr.136, ptr @arcturus_dump_pptable._entry_ptr.139, ptr @arcturus_dump_pptable._entry_ptr.142, ptr @arcturus_dump_pptable._entry_ptr.145, ptr @arcturus_dump_pptable._entry_ptr.148, ptr @arcturus_dump_pptable._entry_ptr.151, ptr @arcturus_dump_pptable._entry_ptr.154, ptr @arcturus_dump_pptable._entry_ptr.157, ptr @arcturus_dump_pptable._entry_ptr.160, ptr @arcturus_dump_pptable._entry_ptr.163, ptr @arcturus_dump_pptable._entry_ptr.166, ptr @arcturus_dump_pptable._entry_ptr.169, ptr @arcturus_dump_pptable._entry_ptr.172, ptr @arcturus_dump_pptable._entry_ptr.175, ptr @arcturus_dump_pptable._entry_ptr.178, ptr @arcturus_dump_pptable._entry_ptr.181, ptr @arcturus_dump_pptable._entry_ptr.184, ptr @arcturus_dump_pptable._entry_ptr.187, ptr @arcturus_dump_pptable._entry_ptr.190, ptr @arcturus_dump_pptable._entry_ptr.193, ptr @arcturus_dump_pptable._entry_ptr.196, ptr @arcturus_dump_pptable._entry_ptr.199, ptr @arcturus_dump_pptable._entry_ptr.202, ptr @arcturus_dump_pptable._entry_ptr.205, ptr @arcturus_dump_pptable._entry_ptr.208, ptr @arcturus_dump_pptable._entry_ptr.211, ptr @arcturus_dump_pptable._entry_ptr.214, ptr @arcturus_dump_pptable._entry_ptr.217, ptr @arcturus_dump_pptable._entry_ptr.220, ptr @arcturus_dump_pptable._entry_ptr.223, ptr @arcturus_dump_pptable._entry_ptr.226, ptr @arcturus_dump_pptable._entry_ptr.229, ptr @arcturus_dump_pptable._entry_ptr.232, ptr @arcturus_dump_pptable._entry_ptr.235, ptr @arcturus_dump_pptable._entry_ptr.238, ptr @arcturus_dump_pptable._entry_ptr.241, ptr @arcturus_dump_pptable._entry_ptr.243, ptr @arcturus_dump_pptable._entry_ptr.246, ptr @arcturus_dump_pptable._entry_ptr.248, ptr @arcturus_dump_pptable._entry_ptr.251, ptr @arcturus_dump_pptable._entry_ptr.253, ptr @arcturus_dump_pptable._entry_ptr.256, ptr @arcturus_dump_pptable._entry_ptr.258, ptr @arcturus_dump_pptable._entry_ptr.261, ptr @arcturus_dump_pptable._entry_ptr.263, ptr @arcturus_dump_pptable._entry_ptr.266, ptr @arcturus_dump_pptable._entry_ptr.269, ptr @arcturus_dump_pptable._entry_ptr.272, ptr @arcturus_dump_pptable._entry_ptr.274, ptr @arcturus_dump_pptable._entry_ptr.277, ptr @arcturus_dump_pptable._entry_ptr.280, ptr @arcturus_dump_pptable._entry_ptr.283, ptr @arcturus_dump_pptable._entry_ptr.286, ptr @arcturus_dump_pptable._entry_ptr.289, ptr @arcturus_dump_pptable._entry_ptr.292, ptr @arcturus_dump_pptable._entry_ptr.295, ptr @arcturus_dump_pptable._entry_ptr.298, ptr @arcturus_dump_pptable._entry_ptr.301, ptr @arcturus_dump_pptable._entry_ptr.304, ptr @arcturus_dump_pptable._entry_ptr.307, ptr @arcturus_dump_pptable._entry_ptr.310, ptr @arcturus_dump_pptable._entry_ptr.313, ptr @arcturus_dump_pptable._entry_ptr.316, ptr @arcturus_dump_pptable._entry_ptr.319, ptr @arcturus_dump_pptable._entry_ptr.322, ptr @arcturus_dump_pptable._entry_ptr.325, ptr @arcturus_dump_pptable._entry_ptr.328, ptr @arcturus_dump_pptable._entry_ptr.331, ptr @arcturus_dump_pptable._entry_ptr.334, ptr @arcturus_dump_pptable._entry_ptr.337, ptr @arcturus_dump_pptable._entry_ptr.340, ptr @arcturus_dump_pptable._entry_ptr.343, ptr @arcturus_dump_pptable._entry_ptr.346, ptr @arcturus_dump_pptable._entry_ptr.349, ptr @arcturus_dump_pptable._entry_ptr.352, ptr @arcturus_dump_pptable._entry_ptr.355, ptr @arcturus_dump_pptable._entry_ptr.358, ptr @arcturus_dump_pptable._entry_ptr.361, ptr @arcturus_dump_pptable._entry_ptr.364, ptr @arcturus_dump_pptable._entry_ptr.367, ptr @arcturus_dump_pptable._entry_ptr.370, ptr @arcturus_dump_pptable._entry_ptr.373, ptr @arcturus_dump_pptable._entry_ptr.376, ptr @arcturus_dump_pptable._entry_ptr.379, ptr @arcturus_dump_pptable._entry_ptr.382, ptr @arcturus_dump_pptable._entry_ptr.385, ptr @arcturus_dump_pptable._entry_ptr.388, ptr @arcturus_dump_pptable._entry_ptr.391, ptr @arcturus_dump_pptable._entry_ptr.394, ptr @arcturus_dump_pptable._entry_ptr.397, ptr @arcturus_dump_pptable._entry_ptr.400, ptr @arcturus_dump_pptable._entry_ptr.403, ptr @arcturus_dump_pptable._entry_ptr.406, ptr @arcturus_dump_pptable._entry_ptr.409, ptr @arcturus_dump_pptable._entry_ptr.412, ptr @arcturus_dump_pptable._entry_ptr.415, ptr @arcturus_dump_pptable._entry_ptr.418, ptr @arcturus_dump_pptable._entry_ptr.421, ptr @arcturus_dump_pptable._entry_ptr.424, ptr @arcturus_dump_pptable._entry_ptr.427, ptr @arcturus_dump_pptable._entry_ptr.430, ptr @arcturus_dump_pptable._entry_ptr.433, ptr @arcturus_dump_pptable._entry_ptr.436, ptr @arcturus_dump_pptable._entry_ptr.439, ptr @arcturus_dump_pptable._entry_ptr.442, ptr @arcturus_dump_pptable._entry_ptr.445, ptr @arcturus_dump_pptable._entry_ptr.448, ptr @arcturus_dump_pptable._entry_ptr.450, ptr @arcturus_dump_pptable._entry_ptr.453, ptr @arcturus_dump_pptable._entry_ptr.456, ptr @arcturus_dump_pptable._entry_ptr.459, ptr @arcturus_dump_pptable._entry_ptr.462, ptr @arcturus_dump_pptable._entry_ptr.465, ptr @arcturus_dump_pptable._entry_ptr.468, ptr @arcturus_dump_pptable._entry_ptr.471, ptr @arcturus_dump_pptable._entry_ptr.474, ptr @arcturus_dump_pptable._entry_ptr.477, ptr @arcturus_dump_pptable._entry_ptr.480, ptr @arcturus_dump_pptable._entry_ptr.483, ptr @arcturus_dump_pptable._entry_ptr.486, ptr @arcturus_dump_pptable._entry_ptr.489, ptr @arcturus_dump_pptable._entry_ptr.492, ptr @arcturus_dump_pptable._entry_ptr.495, ptr @arcturus_dump_pptable._entry_ptr.498, ptr @arcturus_dump_pptable._entry_ptr.501, ptr @arcturus_dump_pptable._entry_ptr.504, ptr @arcturus_dump_pptable._entry_ptr.507, ptr @arcturus_dump_pptable._entry_ptr.510, ptr @arcturus_dump_pptable._entry_ptr.513, ptr @arcturus_dump_pptable._entry_ptr.516, ptr @arcturus_dump_pptable._entry_ptr.519, ptr @arcturus_dump_pptable._entry_ptr.522, ptr @arcturus_dump_pptable._entry_ptr.525, ptr @arcturus_dump_pptable._entry_ptr.528, ptr @arcturus_dump_pptable._entry_ptr.531, ptr @arcturus_dump_pptable._entry_ptr.534, ptr @arcturus_dump_pptable._entry_ptr.537, ptr @arcturus_dump_pptable._entry_ptr.540, ptr @arcturus_dump_pptable._entry_ptr.543, ptr @arcturus_dump_pptable._entry_ptr.546, ptr @arcturus_dump_pptable._entry_ptr.549, ptr @arcturus_dump_pptable._entry_ptr.552, ptr @arcturus_dump_pptable._entry_ptr.555, ptr @arcturus_dump_pptable._entry_ptr.558, ptr @arcturus_dump_pptable._entry_ptr.561, ptr @arcturus_dump_pptable._entry_ptr.564, ptr @arcturus_dump_pptable._entry_ptr.567, ptr @arcturus_dump_pptable._entry_ptr.570, ptr @arcturus_dump_pptable._entry_ptr.573, ptr @arcturus_dump_pptable._entry_ptr.576, ptr @arcturus_dump_pptable._entry_ptr.579, ptr @arcturus_dump_pptable._entry_ptr.582, ptr @arcturus_dump_pptable._entry_ptr.585, ptr @arcturus_dump_pptable._entry_ptr.588, ptr @arcturus_dump_pptable._entry_ptr.591, ptr @arcturus_dump_pptable._entry_ptr.594, ptr @arcturus_dump_pptable._entry_ptr.597, ptr @arcturus_dump_pptable._entry_ptr.600, ptr @arcturus_dump_pptable._entry_ptr.603, ptr @arcturus_dump_pptable._entry_ptr.606, ptr @arcturus_dump_pptable._entry_ptr.609, ptr @arcturus_dump_pptable._entry_ptr.612, ptr @arcturus_dump_pptable._entry_ptr.615, ptr @arcturus_dump_pptable._entry_ptr.618, ptr @arcturus_dump_pptable._entry_ptr.621, ptr @arcturus_dump_pptable._entry_ptr.624, ptr @arcturus_dump_pptable._entry_ptr.627, ptr @arcturus_dump_pptable._entry_ptr.630, ptr @arcturus_dump_pptable._entry_ptr.633, ptr @arcturus_dump_pptable._entry_ptr.636, ptr @arcturus_dump_pptable._entry_ptr.639, ptr @arcturus_dump_pptable._entry_ptr.642, ptr @arcturus_dump_pptable._entry_ptr.645, ptr @arcturus_dump_pptable._entry_ptr.648, ptr @arcturus_dump_pptable._entry_ptr.651, ptr @arcturus_dump_pptable._entry_ptr.654, ptr @arcturus_dump_pptable._entry_ptr.657, ptr @arcturus_dump_pptable._entry_ptr.660, ptr @arcturus_dump_pptable._entry_ptr.663, ptr @arcturus_dump_pptable._entry_ptr.665, ptr @arcturus_dump_pptable._entry_ptr.668, ptr @arcturus_dump_pptable._entry_ptr.670, ptr @arcturus_dump_pptable._entry_ptr.673, ptr @arcturus_dump_pptable._entry_ptr.675, ptr @arcturus_dump_pptable._entry_ptr.678, ptr @arcturus_dump_pptable._entry_ptr.680, ptr @arcturus_force_clk_levels._entry, ptr @arcturus_force_clk_levels._entry.57, ptr @arcturus_force_clk_levels._entry.60, ptr @arcturus_force_clk_levels._entry.63, ptr @arcturus_force_clk_levels._entry.66, ptr @arcturus_force_clk_levels._entry_ptr, ptr @arcturus_force_clk_levels._entry_ptr.59, ptr @arcturus_force_clk_levels._entry_ptr.62, ptr @arcturus_force_clk_levels._entry_ptr.65, ptr @arcturus_force_clk_levels._entry_ptr.68, ptr @arcturus_get_power_limit._entry, ptr @arcturus_get_power_limit._entry_ptr, ptr @arcturus_get_power_profile_mode._entry, ptr @arcturus_get_power_profile_mode._entry_ptr, ptr @arcturus_get_unique_id._entry, ptr @arcturus_get_unique_id._entry.697, ptr @arcturus_get_unique_id._entry_ptr, ptr @arcturus_get_unique_id._entry_ptr.699, ptr @arcturus_log_thermal_throttling_event._entry, ptr @arcturus_log_thermal_throttling_event._entry.709, ptr @arcturus_log_thermal_throttling_event._entry_ptr, ptr @arcturus_log_thermal_throttling_event._entry_ptr.711, ptr @arcturus_print_clk_levels._entry, ptr @arcturus_print_clk_levels._entry.14, ptr @arcturus_print_clk_levels._entry.17, ptr @arcturus_print_clk_levels._entry.20, ptr @arcturus_print_clk_levels._entry.23, ptr @arcturus_print_clk_levels._entry.26, ptr @arcturus_print_clk_levels._entry.29, ptr @arcturus_print_clk_levels._entry.32, ptr @arcturus_print_clk_levels._entry.35, ptr @arcturus_print_clk_levels._entry.38, ptr @arcturus_print_clk_levels._entry.41, ptr @arcturus_print_clk_levels._entry.8, ptr @arcturus_print_clk_levels._entry_ptr, ptr @arcturus_print_clk_levels._entry_ptr.10, ptr @arcturus_print_clk_levels._entry_ptr.16, ptr @arcturus_print_clk_levels._entry_ptr.19, ptr @arcturus_print_clk_levels._entry_ptr.22, ptr @arcturus_print_clk_levels._entry_ptr.25, ptr @arcturus_print_clk_levels._entry_ptr.28, ptr @arcturus_print_clk_levels._entry_ptr.31, ptr @arcturus_print_clk_levels._entry_ptr.34, ptr @arcturus_print_clk_levels._entry_ptr.37, ptr @arcturus_print_clk_levels._entry_ptr.40, ptr @arcturus_print_clk_levels._entry_ptr.43, ptr @arcturus_run_btc._entry, ptr @arcturus_run_btc._entry_ptr, ptr @arcturus_set_df_cstate._entry, ptr @arcturus_set_df_cstate._entry.685, ptr @arcturus_set_df_cstate._entry_ptr, ptr @arcturus_set_df_cstate._entry_ptr.687, ptr @arcturus_set_performance_level._entry, ptr @arcturus_set_performance_level._entry.117, ptr @arcturus_set_performance_level._entry_ptr, ptr @arcturus_set_performance_level._entry_ptr.118, ptr @arcturus_set_power_profile_mode._entry, ptr @arcturus_set_power_profile_mode._entry.101, ptr @arcturus_set_power_profile_mode._entry.103, ptr @arcturus_set_power_profile_mode._entry.108, ptr @arcturus_set_power_profile_mode._entry_ptr, ptr @arcturus_set_power_profile_mode._entry_ptr.102, ptr @arcturus_set_power_profile_mode._entry_ptr.105, ptr @arcturus_set_power_profile_mode._entry_ptr.110, ptr @arcturus_upload_dpm_level._entry, ptr @arcturus_upload_dpm_level._entry.73, ptr @arcturus_upload_dpm_level._entry.76, ptr @arcturus_upload_dpm_level._entry_ptr, ptr @arcturus_upload_dpm_level._entry_ptr.75, ptr @arcturus_upload_dpm_level._entry_ptr.78, ptr @arcturus_ppt_funcs, ptr @arcturus_message_map, ptr @arcturus_table_map, ptr @arcturus_pwr_src_map, ptr @arcturus_workload_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @smu11_thermal_policy, ptr @.str.116, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.240, ptr @.str.245, ptr @.str.250, ptr @.str.255, ptr @.str.260, ptr @.str.265, ptr @.str.268, ptr @.str.271, ptr @.str.276, ptr @.str.279, ptr @.str.282, ptr @.str.285, ptr @.str.288, ptr @.str.291, ptr @.str.294, ptr @.str.297, ptr @.str.300, ptr @.str.303, ptr @.str.306, ptr @.str.309, ptr @.str.312, ptr @.str.315, ptr @.str.318, ptr @.str.321, ptr @.str.324, ptr @.str.327, ptr @.str.330, ptr @.str.333, ptr @.str.336, ptr @.str.339, ptr @.str.342, ptr @.str.345, ptr @.str.348, ptr @.str.351, ptr @.str.354, ptr @.str.357, ptr @.str.360, ptr @.str.363, ptr @.str.366, ptr @.str.369, ptr @.str.372, ptr @.str.375, ptr @.str.378, ptr @.str.381, ptr @.str.384, ptr @.str.387, ptr @.str.390, ptr @.str.393, ptr @.str.396, ptr @.str.399, ptr @.str.402, ptr @.str.405, ptr @.str.408, ptr @.str.411, ptr @.str.414, ptr @.str.417, ptr @.str.420, ptr @.str.423, ptr @.str.426, ptr @.str.429, ptr @.str.432, ptr @.str.435, ptr @.str.438, ptr @.str.441, ptr @.str.444, ptr @.str.447, ptr @.str.452, ptr @.str.455, ptr @.str.458, ptr @.str.461, ptr @.str.464, ptr @.str.467, ptr @.str.470, ptr @.str.473, ptr @.str.476, ptr @.str.479, ptr @.str.482, ptr @.str.485, ptr @.str.488, ptr @.str.491, ptr @.str.494, ptr @.str.497, ptr @.str.500, ptr @.str.503, ptr @.str.506, ptr @.str.509, ptr @.str.512, ptr @.str.515, ptr @.str.518, ptr @.str.521, ptr @.str.524, ptr @.str.527, ptr @.str.530, ptr @.str.533, ptr @.str.536, ptr @.str.539, ptr @.str.542, ptr @.str.545, ptr @.str.548, ptr @.str.551, ptr @.str.554, ptr @.str.557, ptr @.str.560, ptr @.str.563, ptr @.str.566, ptr @.str.569, ptr @.str.572, ptr @.str.575, ptr @.str.578, ptr @.str.581, ptr @.str.584, ptr @.str.587, ptr @.str.590, ptr @.str.593, ptr @.str.596, ptr @.str.599, ptr @.str.602, ptr @.str.605, ptr @.str.608, ptr @.str.611, ptr @.str.614, ptr @.str.617, ptr @.str.620, ptr @.str.623, ptr @.str.626, ptr @.str.629, ptr @.str.632, ptr @.str.635, ptr @.str.638, ptr @.str.641, ptr @.str.644, ptr @.str.647, ptr @.str.650, ptr @.str.653, ptr @.str.656, ptr @.str.659, ptr @.str.662, ptr @.str.667, ptr @.str.672, ptr @.str.677, ptr @.str.681, ptr @.str.682, ptr @.str.683, ptr @.str.684, ptr @.str.686, ptr @.str.688, ptr @.str.690, ptr @arcturus_i2c_algo, ptr @arcturus_i2c_control_quirks, ptr @.str.692, ptr @.str.693, ptr @.str.694, ptr @.str.695, ptr @.str.696, ptr @.str.698, ptr @.str.700, ptr @.str.701, ptr @.str.702, ptr @.str.703, ptr @.str.704, ptr @.str.705, ptr @.str.706, ptr @.str.707, ptr @.str.708, ptr @.str.710, ptr @arcturus_throttler_map, ptr @.str.712, ptr @.str.713, ptr @.str.714, ptr @.str.715, ptr @.str.716, ptr @.str.717, ptr @.str.718, ptr @arcturus_clk_map, ptr @arcturus_feature_mask_map, ptr @switch.table.arcturus_print_clk_levels, ptr @switch.table.arcturus_print_clk_levels.721], section "llvm.metadata"
@0 = internal global [532 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_ppt_funcs to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_message_map to i32), i32 2484, i32 3104, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_table_map to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_pwr_src_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_workload_map to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_run_btc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_print_clk_levels._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_force_clk_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_force_clk_levels._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_force_clk_levels._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_force_clk_levels._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_force_clk_levels._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_upload_dpm_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_upload_dpm_level._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_upload_dpm_level._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_get_power_profile_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_set_power_profile_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_set_power_profile_mode._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_set_power_profile_mode._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_set_power_profile_mode._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dpm_set_vcn_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dpm_set_vcn_enable._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu11_thermal_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_set_performance_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_set_performance_level._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 325, i32 416, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 323, i32 416, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 323, i32 416, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 325, i32 416, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 323, i32 416, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 323, i32 416, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.377 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.383 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.395 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.404 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.407 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.410 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.425 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.428 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.431 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.434 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.437 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.440 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.443 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.446 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.449 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.451 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.454 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.457 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.460 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.463 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.466 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.469 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.472 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.475 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.478 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.481 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.484 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.487 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.490 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.491 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.493 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.494 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.496 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.497 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.499 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.502 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.503 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.505 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.506 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.508 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.509 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.511 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.514 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.515 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.517 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.520 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.521 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.523 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.524 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.526 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.527 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.529 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.532 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.533 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.535 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.536 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.538 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.539 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.541 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.542 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.544 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.545 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.547 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.548 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.550 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.551 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.553 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.554 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.556 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.557 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.559 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.560 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.562 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.563 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.565 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.566 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.568 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.569 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.571 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.572 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.574 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.575 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.577 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.578 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.580 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.581 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.583 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.584 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.586 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.587 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.589 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.590 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.592 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.593 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.595 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.596 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.598 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.599 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.601 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.602 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.604 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.605 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.607 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.608 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.610 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.611 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.613 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.614 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.616 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.617 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.619 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.620 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.622 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.623 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.625 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.626 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.628 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.629 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.631 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.632 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.634 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.635 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.637 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.638 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.640 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.641 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.643 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.644 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.646 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.647 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.649 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.650 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.652 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.653 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.655 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.656 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.658 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.659 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.661 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.662 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.664 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.666 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.667 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.669 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.671 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.672 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.674 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.676 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.677 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_dump_pptable._entry.679 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_get_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.681 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.682 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.683 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_set_df_cstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.684 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_set_df_cstate._entry.685 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.686 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_allow_xgmi_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.688 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_allow_xgmi_power_down._entry.689 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.690 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_i2c_control_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2219 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.692 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.693 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_get_unique_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.694 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.695 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.696 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_get_unique_id._entry.697 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.698 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.700 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_append_powerplay_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.701 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.702 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_check_fan_support._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.703 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.704 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.705 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.706 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_log_thermal_throttling_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.707 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.708 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_log_thermal_throttling_event._entry.709 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.710 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_throttler_map to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2288 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.712 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.713 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.714 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.715 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.716 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.717 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.718 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_clk_map to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.2312 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_feature_mask_map to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.2315 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arcturus_print_clk_levels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2318 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arcturus_print_clk_levels.721 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2319 to i32), i32 ptrtoint (ptr @___asan_gen_.2316 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @arcturus_set_ppt_funcs(ptr nocapture noundef writeonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @arcturus_ppt_funcs, ptr %ppt_funcs, align 8
  %message_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 3
  %1 = ptrtoint ptr %message_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @arcturus_message_map, ptr %message_map, align 4
  %clock_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 4
  %2 = ptrtoint ptr %clock_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @arcturus_clk_map, ptr %clock_map, align 8
  %feature_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %3 = ptrtoint ptr %feature_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @arcturus_feature_mask_map, ptr %feature_map, align 4
  %table_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %4 = ptrtoint ptr %table_map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @arcturus_table_map, ptr %table_map, align 8
  %pwr_src_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 7
  %5 = ptrtoint ptr %pwr_src_map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @arcturus_pwr_src_map, ptr %pwr_src_map, align 4
  %workload_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 8
  %6 = ptrtoint ptr %workload_map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @arcturus_workload_map, ptr %workload_map, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_run_btc(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 79, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 91, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @arcturus_get_allowed_feature_mask(ptr nocapture noundef readnone %smu, ptr nocapture noundef writeonly %feature_mask, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp ugt i32 %num, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mul = shl nuw nsw i32 %num, 2
  %0 = call ptr @memset(ptr %feature_mask, i32 255, i32 %mul)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_set_default_dpm_table(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %2 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_pptable, align 4
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 6, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %SnapToDiscrete = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 28, i32 3, i32 1
  %4 = ptrtoint ptr %SnapToDiscrete to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %SnapToDiscrete, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %is_fine_grained = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 3
  %frombool = zext i1 %tobool5.not to i8
  %6 = ptrtoint ptr %is_fine_grained to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %is_fine_grained, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %count = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count, align 4
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %8 = ptrtoint ptr %socclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %socclk, align 4
  %div = udiv i32 %9, 100
  %dpm_levels = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 4
  %value = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %value, align 4
  %11 = ptrtoint ptr %dpm_levels to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %dpm_levels, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %1, align 4
  %max = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %max, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end
  %gfx_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1
  %call18 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else32, label %if.then20

if.then20:                                        ; preds = %if.end16
  %call21 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 0, ptr noundef %gfx_table) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %SnapToDiscrete27 = getelementptr inbounds %struct.PPTable_t, ptr %3, i32 0, i32 28, i32 0, i32 1
  %14 = ptrtoint ptr %SnapToDiscrete27 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %SnapToDiscrete27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool28.not = icmp eq i8 %15, 0
  %is_fine_grained30 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3
  %frombool31 = zext i1 %tobool28.not to i8
  %16 = ptrtoint ptr %is_fine_grained30 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool31, ptr %is_fine_grained30, align 4
  br label %if.end51

if.else32:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %count33 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %count33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %count33, align 4
  %gfxclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %18 = ptrtoint ptr %gfxclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gfxclk, align 4
  %div36 = udiv i32 %19, 100
  %dpm_levels37 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 4
  %value39 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %value39 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div36, ptr %value39, align 4
  %21 = ptrtoint ptr %dpm_levels37 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %dpm_levels37, align 4
  %22 = ptrtoint ptr %gfx_table to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div36, ptr %gfx_table, align 4
  %max50 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %max50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div36, ptr %max50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else32, %if.end24
  %uclk_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2
  %call53 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else67, label %if.then55

if.then55:                                        ; preds = %if.end51
  %call56 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 7, ptr noundef %uclk_table) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %SnapToDiscrete62 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 28, i32 4, i32 1
  %24 = ptrtoint ptr %SnapToDiscrete62 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %SnapToDiscrete62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool63.not = icmp eq i8 %25, 0
  %is_fine_grained65 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 3
  %frombool66 = zext i1 %tobool63.not to i8
  %26 = ptrtoint ptr %is_fine_grained65 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool66, ptr %is_fine_grained65, align 4
  br label %if.end86

if.else67:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %count68 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %count68 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %count68, align 4
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %28 = ptrtoint ptr %uclk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %uclk, align 8
  %div71 = udiv i32 %29, 100
  %dpm_levels72 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 4
  %value74 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %value74 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div71, ptr %value74, align 4
  %31 = ptrtoint ptr %dpm_levels72 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %dpm_levels72, align 4
  %32 = ptrtoint ptr %uclk_table to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div71, ptr %uclk_table, align 4
  %max85 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %max85 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div71, ptr %max85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else67, %if.end59
  %fclk_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 12
  %call88 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else102, label %if.then90

if.then90:                                        ; preds = %if.end86
  %call91 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 12, ptr noundef %fclk_table) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.then90.cleanup_crit_edge

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end94:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %SnapToDiscrete97 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 28, i32 5, i32 1
  %34 = ptrtoint ptr %SnapToDiscrete97 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %SnapToDiscrete97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool98.not = icmp eq i8 %35, 0
  %is_fine_grained100 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 12, i32 3
  %frombool101 = zext i1 %tobool98.not to i8
  %36 = ptrtoint ptr %is_fine_grained100 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool101, ptr %is_fine_grained100, align 4
  br label %cleanup

if.else102:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %count103 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 12, i32 2
  %37 = ptrtoint ptr %count103 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %count103, align 4
  %fclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %38 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fclk, align 8
  %div106 = udiv i32 %39, 100
  %dpm_levels107 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 12, i32 4
  %value109 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 12, i32 4, i32 0, i32 1
  %40 = ptrtoint ptr %value109 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div106, ptr %value109, align 4
  %41 = ptrtoint ptr %dpm_levels107 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %dpm_levels107, align 4
  %42 = ptrtoint ptr %fclk_table to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div106, ptr %fclk_table, align 4
  %max120 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 12, i32 1
  %43 = ptrtoint ptr %max120 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div106, ptr %max120, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else102, %if.end94, %if.then90.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ], [ %call56, %if.then55.cleanup_crit_edge ], [ %call91, %if.then90.cleanup_crit_edge ], [ 0, %if.else102 ], [ 0, %if.end94 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arcturus_populate_umd_state_clk(ptr nocapture noundef %smu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  %gfx_table2 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1
  %uclk_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2
  %pstate_table6 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22
  %2 = ptrtoint ptr %gfx_table2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfx_table2, align 4
  %4 = ptrtoint ptr %pstate_table6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pstate_table6, align 4
  %max = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %peak = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 2
  %7 = ptrtoint ptr %peak to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %peak, align 4
  %8 = ptrtoint ptr %uclk_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uclk_table, align 4
  %uclk_pstate = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2
  %10 = ptrtoint ptr %uclk_pstate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %uclk_pstate, align 4
  %max11 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %max11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max11, align 4
  %peak13 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 2
  %13 = ptrtoint ptr %peak13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %peak13, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %socclk_pstate = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1
  %16 = ptrtoint ptr %socclk_pstate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %socclk_pstate, align 4
  %max16 = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %max16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max16, align 4
  %peak18 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1, i32 2
  %19 = ptrtoint ptr %peak18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %peak18, align 4
  %count = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp = icmp ugt i32 %21, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %count19 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %count19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp20 = icmp ugt i32 %23, 2
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true21:                                  ; preds = %land.lhs.true
  %count22 = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %count22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp23 = icmp ugt i32 %25, 3
  br i1 %cmp23, label %if.then, label %land.lhs.true21.if.else_crit_edge

land.lhs.true21.if.else_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 4, i32 3, i32 1
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %standard = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 1
  %28 = ptrtoint ptr %standard to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %standard, align 4
  %value27 = getelementptr %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 4, i32 2, i32 1
  %29 = ptrtoint ptr %value27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value27, align 4
  %standard29 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 1
  %31 = ptrtoint ptr %standard29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %standard29, align 4
  %value32 = getelementptr %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 4, i32 3, i32 1
  %32 = ptrtoint ptr %value32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value32, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true21.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %standard38 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 1
  %34 = ptrtoint ptr %standard38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %3, ptr %standard38, align 4
  %standard42 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 1
  %35 = ptrtoint ptr %standard42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %9, ptr %standard42, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %15, %if.else ], [ %33, %if.then ]
  %standard46 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1, i32 1
  %36 = ptrtoint ptr %standard46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %standard46, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_print_clk_levels(ptr noundef %smu, i32 noundef %type, ptr noundef %buf) #1 align 64 {
entry:
  %now = alloca i32, align 4
  %clocks = alloca %struct.pp_clock_levels_with_latency, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %now) #12
  %0 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %now, align 4, !annotation !1068
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %clocks) #12
  %1 = call ptr @memset(ptr %clocks, i32 255, i32 132)
  %tobool.not.i = icmp eq ptr %buf, null
  %2 = ptrtoint ptr %buf to i32
  %and.i = and i32 %2, 4095
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %idx.neg.i
  %buf.addr.0 = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %size.0 = select i1 %tobool.not.i, i32 0, i32 %and.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %3 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.5) #12
  %add = add i32 %call2, %size.0
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpm_context3 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %dpm_context3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dpm_context3, align 4
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 13, label %sw.bb
    i32 14, label %sw.bb27
    i32 6, label %sw.bb73
    i32 12, label %sw.bb119
    i32 1, label %sw.bb161
    i32 2, label %sw.bb206
    i32 15, label %sw.bb251
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call4 = call fastcc i32 @arcturus_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %count1.i = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count1.i, align 4
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 16) #12
  %14 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp31.not.i = icmp eq i32 %13, 0
  br i1 %cmp31.not.i, label %if.end6.cleanup_crit_edge, label %if.end6.for.body.i_crit_edge

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 1, i32 4, i32 %i.02.i, i32 1
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i, align 4
  %mul.i = mul i32 %16, 1000
  %arrayidx4.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i, ptr %arrayidx4.i, align 4
  %latency_in_us.i = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i, i32 1
  %18 = ptrtoint ptr %latency_in_us.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %latency_in_us.i, align 4
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %arcturus_get_clk_table.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

arcturus_get_clk_table.exit:                      ; preds = %for.body.i
  %19 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp541.not = icmp eq i32 %.pr, 0
  br i1 %cmp541.not, label %arcturus_get_clk_table.exit.cleanup_crit_edge, label %arcturus_get_clk_table.exit.for.body_crit_edge

arcturus_get_clk_table.exit.for.body_crit_edge:   ; preds = %arcturus_get_clk_table.exit
  br label %for.body

arcturus_get_clk_table.exit.cleanup_crit_edge:    ; preds = %arcturus_get_clk_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %arcturus_get_clk_table.exit.for.body_crit_edge
  %20 = phi i32 [ %27, %cond.end.for.body_crit_edge ], [ %.pr, %arcturus_get_clk_table.exit.for.body_crit_edge ]
  %i.0543 = phi i32 [ %inc, %cond.end.for.body_crit_edge ], [ 0, %arcturus_get_clk_table.exit.for.body_crit_edge ]
  %size.1542 = phi i32 [ %add26, %cond.end.for.body_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.0543
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %div = udiv i32 %22, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp17 = icmp eq i32 %20, 1
  br i1 %cmp17, label %for.body.cond.end_crit_edge, label %cond.false

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %now, align 4
  %sub.i = sub i32 %div, %24
  %25 = call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp2.i = icmp sgt i32 %25, 1
  %cond = select i1 %cmp2.i, ptr @.str.13, ptr @.str.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond24 = phi ptr [ %cond, %cond.false ], [ @.str.12, %for.body.cond.end_crit_edge ]
  %call25 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.1542, ptr noundef nonnull @.str.11, i32 noundef %i.0543, i32 noundef %div, ptr noundef nonnull %cond24) #12
  %add26 = add i32 %call25, %size.1542
  %inc = add nuw i32 %i.0543, 1
  %26 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clocks, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %cond.end.for.body_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sw.bb27:                                          ; preds = %if.end
  %call28 = call fastcc i32 @arcturus_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 7, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smu, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.15) #15
  br label %cleanup

if.end36:                                         ; preds = %sw.bb27
  %count1.i419 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %count1.i419 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count1.i419, align 4
  %34 = call i32 @llvm.umin.i32(i32 %33, i32 16) #12
  %35 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp31.not.i420 = icmp eq i32 %34, 0
  br i1 %cmp31.not.i420, label %if.end36.cleanup_crit_edge, label %if.end36.for.body.i428_crit_edge

if.end36.for.body.i428_crit_edge:                 ; preds = %if.end36
  br label %for.body.i428

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i428:                                    ; preds = %for.body.i428.for.body.i428_crit_edge, %if.end36.for.body.i428_crit_edge
  %i.02.i421 = phi i32 [ %inc.i426, %for.body.i428.for.body.i428_crit_edge ], [ 0, %if.end36.for.body.i428_crit_edge ]
  %value.i422 = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 2, i32 4, i32 %i.02.i421, i32 1
  %36 = ptrtoint ptr %value.i422 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %value.i422, align 4
  %mul.i423 = mul i32 %37, 1000
  %arrayidx4.i424 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i421
  %38 = ptrtoint ptr %arrayidx4.i424 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul.i423, ptr %arrayidx4.i424, align 4
  %latency_in_us.i425 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i421, i32 1
  %39 = ptrtoint ptr %latency_in_us.i425 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %latency_in_us.i425, align 4
  %inc.i426 = add nuw nsw i32 %i.02.i421, 1
  %exitcond.not.i427 = icmp eq i32 %inc.i426, %34
  br i1 %exitcond.not.i427, label %arcturus_get_clk_table.exit429, label %for.body.i428.for.body.i428_crit_edge

for.body.i428.for.body.i428_crit_edge:            ; preds = %for.body.i428
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i428

arcturus_get_clk_table.exit429:                   ; preds = %for.body.i428
  %40 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr551 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr551)
  %cmp49537.not = icmp eq i32 %.pr551, 0
  br i1 %cmp49537.not, label %arcturus_get_clk_table.exit429.cleanup_crit_edge, label %arcturus_get_clk_table.exit429.for.body50_crit_edge

arcturus_get_clk_table.exit429.for.body50_crit_edge: ; preds = %arcturus_get_clk_table.exit429
  br label %for.body50

arcturus_get_clk_table.exit429.cleanup_crit_edge: ; preds = %arcturus_get_clk_table.exit429
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body50:                                       ; preds = %cond.end66.for.body50_crit_edge, %arcturus_get_clk_table.exit429.for.body50_crit_edge
  %41 = phi i32 [ %48, %cond.end66.for.body50_crit_edge ], [ %.pr551, %arcturus_get_clk_table.exit429.for.body50_crit_edge ]
  %i.1539 = phi i32 [ %inc71, %cond.end66.for.body50_crit_edge ], [ 0, %arcturus_get_clk_table.exit429.for.body50_crit_edge ]
  %size.2538 = phi i32 [ %add69, %cond.end66.for.body50_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit429.for.body50_crit_edge ]
  %arrayidx52 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.1539
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx52, align 4
  %div54 = udiv i32 %43, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp56 = icmp eq i32 %41, 1
  br i1 %cmp56, label %for.body50.cond.end66_crit_edge, label %cond.false58

for.body50.cond.end66_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end66

cond.false58:                                     ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %now, align 4
  %sub.i430 = sub i32 %div54, %45
  %46 = call i32 @llvm.abs.i32(i32 %sub.i430, i1 false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp2.i431 = icmp sgt i32 %46, 1
  %cond65 = select i1 %cmp2.i431, ptr @.str.13, ptr @.str.12
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false58, %for.body50.cond.end66_crit_edge
  %cond67 = phi ptr [ %cond65, %cond.false58 ], [ @.str.12, %for.body50.cond.end66_crit_edge ]
  %call68 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.2538, ptr noundef nonnull @.str.11, i32 noundef %i.1539, i32 noundef %div54, ptr noundef nonnull %cond67) #12
  %add69 = add i32 %call68, %size.2538
  %inc71 = add nuw i32 %i.1539, 1
  %47 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clocks, align 4
  %cmp49 = icmp ult i32 %inc71, %48
  br i1 %cmp49, label %cond.end66.for.body50_crit_edge, label %cond.end66.cleanup_crit_edge

cond.end66.cleanup_crit_edge:                     ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end66.for.body50_crit_edge:                  ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body50

sw.bb73:                                          ; preds = %if.end
  %call74 = call fastcc i32 @arcturus_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 6, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end82, label %do.end79

do.end79:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %smu, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end82:                                         ; preds = %sw.bb73
  %count1.i433 = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %5, i32 0, i32 2
  %53 = ptrtoint ptr %count1.i433 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count1.i433, align 4
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 16) #12
  %56 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp31.not.i434 = icmp eq i32 %55, 0
  br i1 %cmp31.not.i434, label %if.end82.cleanup_crit_edge, label %if.end82.for.body.i442_crit_edge

if.end82.for.body.i442_crit_edge:                 ; preds = %if.end82
  br label %for.body.i442

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i442:                                    ; preds = %for.body.i442.for.body.i442_crit_edge, %if.end82.for.body.i442_crit_edge
  %i.02.i435 = phi i32 [ %inc.i440, %for.body.i442.for.body.i442_crit_edge ], [ 0, %if.end82.for.body.i442_crit_edge ]
  %value.i436 = getelementptr %struct.smu_11_0_dpm_table, ptr %5, i32 0, i32 4, i32 %i.02.i435, i32 1
  %57 = ptrtoint ptr %value.i436 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value.i436, align 4
  %mul.i437 = mul i32 %58, 1000
  %arrayidx4.i438 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i435
  %59 = ptrtoint ptr %arrayidx4.i438 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul.i437, ptr %arrayidx4.i438, align 4
  %latency_in_us.i439 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i435, i32 1
  %60 = ptrtoint ptr %latency_in_us.i439 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %latency_in_us.i439, align 4
  %inc.i440 = add nuw nsw i32 %i.02.i435, 1
  %exitcond.not.i441 = icmp eq i32 %inc.i440, %55
  br i1 %exitcond.not.i441, label %arcturus_get_clk_table.exit443, label %for.body.i442.for.body.i442_crit_edge

for.body.i442.for.body.i442_crit_edge:            ; preds = %for.body.i442
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i442

arcturus_get_clk_table.exit443:                   ; preds = %for.body.i442
  %61 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr553 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr553)
  %cmp95533.not = icmp eq i32 %.pr553, 0
  br i1 %cmp95533.not, label %arcturus_get_clk_table.exit443.cleanup_crit_edge, label %arcturus_get_clk_table.exit443.for.body96_crit_edge

arcturus_get_clk_table.exit443.for.body96_crit_edge: ; preds = %arcturus_get_clk_table.exit443
  br label %for.body96

arcturus_get_clk_table.exit443.cleanup_crit_edge: ; preds = %arcturus_get_clk_table.exit443
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body96:                                       ; preds = %cond.end112.for.body96_crit_edge, %arcturus_get_clk_table.exit443.for.body96_crit_edge
  %62 = phi i32 [ %69, %cond.end112.for.body96_crit_edge ], [ %.pr553, %arcturus_get_clk_table.exit443.for.body96_crit_edge ]
  %i.2535 = phi i32 [ %inc117, %cond.end112.for.body96_crit_edge ], [ 0, %arcturus_get_clk_table.exit443.for.body96_crit_edge ]
  %size.3534 = phi i32 [ %add115, %cond.end112.for.body96_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit443.for.body96_crit_edge ]
  %arrayidx98 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.2535
  %63 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx98, align 4
  %div100 = udiv i32 %64, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp102 = icmp eq i32 %62, 1
  br i1 %cmp102, label %for.body96.cond.end112_crit_edge, label %cond.false104

for.body96.cond.end112_crit_edge:                 ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end112

cond.false104:                                    ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %now, align 4
  %sub.i444 = sub i32 %div100, %66
  %67 = call i32 @llvm.abs.i32(i32 %sub.i444, i1 false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp2.i445 = icmp sgt i32 %67, 1
  %cond111 = select i1 %cmp2.i445, ptr @.str.13, ptr @.str.12
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false104, %for.body96.cond.end112_crit_edge
  %cond113 = phi ptr [ %cond111, %cond.false104 ], [ @.str.12, %for.body96.cond.end112_crit_edge ]
  %call114 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.3534, ptr noundef nonnull @.str.11, i32 noundef %i.2535, i32 noundef %div100, ptr noundef nonnull %cond113) #12
  %add115 = add i32 %call114, %size.3534
  %inc117 = add nuw i32 %i.2535, 1
  %68 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %clocks, align 4
  %cmp95 = icmp ult i32 %inc117, %69
  br i1 %cmp95, label %cond.end112.for.body96_crit_edge, label %cond.end112.cleanup_crit_edge

cond.end112.cleanup_crit_edge:                    ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end112.for.body96_crit_edge:                 ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body96

sw.bb119:                                         ; preds = %if.end
  %call120 = call fastcc i32 @arcturus_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 12, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end128, label %do.end125

do.end125:                                        ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %smu, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.27) #15
  br label %cleanup

if.end128:                                        ; preds = %sw.bb119
  %count1.i447 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 12, i32 2
  %74 = ptrtoint ptr %count1.i447 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count1.i447, align 4
  %76 = call i32 @llvm.umin.i32(i32 %75, i32 16) #12
  %77 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp31.not.i448 = icmp eq i32 %76, 0
  br i1 %cmp31.not.i448, label %if.end128.arcturus_get_clk_table.exit457_crit_edge, label %if.end128.for.body.i456_crit_edge

if.end128.for.body.i456_crit_edge:                ; preds = %if.end128
  br label %for.body.i456

if.end128.arcturus_get_clk_table.exit457_crit_edge: ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_clk_table.exit457

for.body.i456:                                    ; preds = %for.body.i456.for.body.i456_crit_edge, %if.end128.for.body.i456_crit_edge
  %i.02.i449 = phi i32 [ %inc.i454, %for.body.i456.for.body.i456_crit_edge ], [ 0, %if.end128.for.body.i456_crit_edge ]
  %value.i450 = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 12, i32 4, i32 %i.02.i449, i32 1
  %78 = ptrtoint ptr %value.i450 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %value.i450, align 4
  %mul.i451 = mul i32 %79, 1000
  %arrayidx4.i452 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i449
  %80 = ptrtoint ptr %arrayidx4.i452 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul.i451, ptr %arrayidx4.i452, align 4
  %latency_in_us.i453 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i449, i32 1
  %81 = ptrtoint ptr %latency_in_us.i453 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %latency_in_us.i453, align 4
  %inc.i454 = add nuw nsw i32 %i.02.i449, 1
  %exitcond.not.i455 = icmp eq i32 %inc.i454, %76
  br i1 %exitcond.not.i455, label %arcturus_get_clk_table.exit457thread-pre-split, label %for.body.i456.for.body.i456_crit_edge

for.body.i456.for.body.i456_crit_edge:            ; preds = %for.body.i456
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i456

arcturus_get_clk_table.exit457thread-pre-split:   ; preds = %for.body.i456
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %count1.i447 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr555 = load i32, ptr %count1.i447, align 4
  br label %arcturus_get_clk_table.exit457

arcturus_get_clk_table.exit457:                   ; preds = %arcturus_get_clk_table.exit457thread-pre-split, %if.end128.arcturus_get_clk_table.exit457_crit_edge
  %83 = phi i32 [ %.pr555, %arcturus_get_clk_table.exit457thread-pre-split ], [ %75, %if.end128.arcturus_get_clk_table.exit457_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp140528.not = icmp eq i32 %83, 0
  br i1 %cmp140528.not, label %arcturus_get_clk_table.exit457.cleanup_crit_edge, label %arcturus_get_clk_table.exit457.for.body141_crit_edge

arcturus_get_clk_table.exit457.for.body141_crit_edge: ; preds = %arcturus_get_clk_table.exit457
  br label %for.body141

arcturus_get_clk_table.exit457.cleanup_crit_edge: ; preds = %arcturus_get_clk_table.exit457
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body141:                                      ; preds = %cond.end154.for.body141_crit_edge, %arcturus_get_clk_table.exit457.for.body141_crit_edge
  %i.3530 = phi i32 [ %inc159, %cond.end154.for.body141_crit_edge ], [ 0, %arcturus_get_clk_table.exit457.for.body141_crit_edge ]
  %size.4529 = phi i32 [ %add157, %cond.end154.for.body141_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit457.for.body141_crit_edge ]
  %value = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 12, i32 4, i32 %i.3530, i32 1
  %84 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %value, align 4
  %86 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp144 = icmp eq i32 %87, 1
  br i1 %cmp144, label %for.body141.cond.end154_crit_edge, label %cond.false146

for.body141.cond.end154_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end154

cond.false146:                                    ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx148 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.3530
  %88 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx148, align 4
  %div150 = udiv i32 %89, 1000
  %90 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %now, align 4
  %sub.i458 = sub i32 %div150, %91
  %92 = call i32 @llvm.abs.i32(i32 %sub.i458, i1 false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp2.i459 = icmp sgt i32 %92, 1
  %cond153 = select i1 %cmp2.i459, ptr @.str.13, ptr @.str.12
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false146, %for.body141.cond.end154_crit_edge
  %cond155 = phi ptr [ %cond153, %cond.false146 ], [ @.str.12, %for.body141.cond.end154_crit_edge ]
  %call156 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.4529, ptr noundef nonnull @.str.11, i32 noundef %i.3530, i32 noundef %85, ptr noundef nonnull %cond155) #12
  %add157 = add i32 %call156, %size.4529
  %inc159 = add nuw i32 %i.3530, 1
  %93 = ptrtoint ptr %count1.i447 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count1.i447, align 4
  %cmp140 = icmp ult i32 %inc159, %94
  br i1 %cmp140, label %cond.end154.for.body141_crit_edge, label %cond.end154.cleanup_crit_edge

cond.end154.cleanup_crit_edge:                    ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end154.for.body141_crit_edge:                ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body141

sw.bb161:                                         ; preds = %if.end
  %call162 = call fastcc i32 @arcturus_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 1, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end170, label %do.end167

do.end167:                                        ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %smu, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.33) #15
  br label %cleanup

if.end170:                                        ; preds = %sw.bb161
  %count1.i461 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 4, i32 2
  %99 = ptrtoint ptr %count1.i461 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %count1.i461, align 4
  %101 = call i32 @llvm.umin.i32(i32 %100, i32 16) #12
  %102 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp31.not.i462 = icmp eq i32 %101, 0
  br i1 %cmp31.not.i462, label %if.end170.arcturus_get_clk_table.exit471_crit_edge, label %if.end170.for.body.i470_crit_edge

if.end170.for.body.i470_crit_edge:                ; preds = %if.end170
  br label %for.body.i470

if.end170.arcturus_get_clk_table.exit471_crit_edge: ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_clk_table.exit471

for.body.i470:                                    ; preds = %for.body.i470.for.body.i470_crit_edge, %if.end170.for.body.i470_crit_edge
  %i.02.i463 = phi i32 [ %inc.i468, %for.body.i470.for.body.i470_crit_edge ], [ 0, %if.end170.for.body.i470_crit_edge ]
  %value.i464 = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 4, i32 4, i32 %i.02.i463, i32 1
  %103 = ptrtoint ptr %value.i464 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %value.i464, align 4
  %mul.i465 = mul i32 %104, 1000
  %arrayidx4.i466 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i463
  %105 = ptrtoint ptr %arrayidx4.i466 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul.i465, ptr %arrayidx4.i466, align 4
  %latency_in_us.i467 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i463, i32 1
  %106 = ptrtoint ptr %latency_in_us.i467 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %latency_in_us.i467, align 4
  %inc.i468 = add nuw nsw i32 %i.02.i463, 1
  %exitcond.not.i469 = icmp eq i32 %inc.i468, %101
  br i1 %exitcond.not.i469, label %arcturus_get_clk_table.exit471thread-pre-split, label %for.body.i470.for.body.i470_crit_edge

for.body.i470.for.body.i470_crit_edge:            ; preds = %for.body.i470
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i470

arcturus_get_clk_table.exit471thread-pre-split:   ; preds = %for.body.i470
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %count1.i461 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr556 = load i32, ptr %count1.i461, align 4
  br label %arcturus_get_clk_table.exit471

arcturus_get_clk_table.exit471:                   ; preds = %arcturus_get_clk_table.exit471thread-pre-split, %if.end170.arcturus_get_clk_table.exit471_crit_edge
  %108 = phi i32 [ %.pr556, %arcturus_get_clk_table.exit471thread-pre-split ], [ %100, %if.end170.arcturus_get_clk_table.exit471_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp183523.not = icmp eq i32 %108, 0
  br i1 %cmp183523.not, label %arcturus_get_clk_table.exit471.cleanup_crit_edge, label %arcturus_get_clk_table.exit471.for.body184_crit_edge

arcturus_get_clk_table.exit471.for.body184_crit_edge: ; preds = %arcturus_get_clk_table.exit471
  br label %for.body184

arcturus_get_clk_table.exit471.cleanup_crit_edge: ; preds = %arcturus_get_clk_table.exit471
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body184:                                      ; preds = %cond.end199.for.body184_crit_edge, %arcturus_get_clk_table.exit471.for.body184_crit_edge
  %i.4525 = phi i32 [ %inc204, %cond.end199.for.body184_crit_edge ], [ 0, %arcturus_get_clk_table.exit471.for.body184_crit_edge ]
  %size.5524 = phi i32 [ %add202, %cond.end199.for.body184_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit471.for.body184_crit_edge ]
  %value187 = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 4, i32 4, i32 %i.4525, i32 1
  %109 = ptrtoint ptr %value187 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %value187, align 4
  %111 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp189 = icmp eq i32 %112, 1
  br i1 %cmp189, label %for.body184.cond.end199_crit_edge, label %cond.false191

for.body184.cond.end199_crit_edge:                ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end199

cond.false191:                                    ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx193 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.4525
  %113 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx193, align 4
  %div195 = udiv i32 %114, 1000
  %115 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %now, align 4
  %sub.i472 = sub i32 %div195, %116
  %117 = call i32 @llvm.abs.i32(i32 %sub.i472, i1 false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp2.i473 = icmp sgt i32 %117, 1
  %cond198 = select i1 %cmp2.i473, ptr @.str.13, ptr @.str.12
  br label %cond.end199

cond.end199:                                      ; preds = %cond.false191, %for.body184.cond.end199_crit_edge
  %cond200 = phi ptr [ %cond198, %cond.false191 ], [ @.str.12, %for.body184.cond.end199_crit_edge ]
  %call201 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.5524, ptr noundef nonnull @.str.11, i32 noundef %i.4525, i32 noundef %110, ptr noundef nonnull %cond200) #12
  %add202 = add i32 %call201, %size.5524
  %inc204 = add nuw i32 %i.4525, 1
  %118 = ptrtoint ptr %count1.i461 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count1.i461, align 4
  %cmp183 = icmp ult i32 %inc204, %119
  br i1 %cmp183, label %cond.end199.for.body184_crit_edge, label %cond.end199.cleanup_crit_edge

cond.end199.cleanup_crit_edge:                    ; preds = %cond.end199
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end199.for.body184_crit_edge:                ; preds = %cond.end199
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body184

sw.bb206:                                         ; preds = %if.end
  %call207 = call fastcc i32 @arcturus_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 2, ptr noundef nonnull %now)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end215, label %do.end212

do.end212:                                        ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %smu, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.39) #15
  br label %cleanup

if.end215:                                        ; preds = %sw.bb206
  %count1.i475 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 6, i32 2
  %124 = ptrtoint ptr %count1.i475 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count1.i475, align 4
  %126 = call i32 @llvm.umin.i32(i32 %125, i32 16) #12
  %127 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp31.not.i476 = icmp eq i32 %126, 0
  br i1 %cmp31.not.i476, label %if.end215.arcturus_get_clk_table.exit485_crit_edge, label %if.end215.for.body.i484_crit_edge

if.end215.for.body.i484_crit_edge:                ; preds = %if.end215
  br label %for.body.i484

if.end215.arcturus_get_clk_table.exit485_crit_edge: ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_clk_table.exit485

for.body.i484:                                    ; preds = %for.body.i484.for.body.i484_crit_edge, %if.end215.for.body.i484_crit_edge
  %i.02.i477 = phi i32 [ %inc.i482, %for.body.i484.for.body.i484_crit_edge ], [ 0, %if.end215.for.body.i484_crit_edge ]
  %value.i478 = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 6, i32 4, i32 %i.02.i477, i32 1
  %128 = ptrtoint ptr %value.i478 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %value.i478, align 4
  %mul.i479 = mul i32 %129, 1000
  %arrayidx4.i480 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i477
  %130 = ptrtoint ptr %arrayidx4.i480 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %mul.i479, ptr %arrayidx4.i480, align 4
  %latency_in_us.i481 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.02.i477, i32 1
  %131 = ptrtoint ptr %latency_in_us.i481 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %latency_in_us.i481, align 4
  %inc.i482 = add nuw nsw i32 %i.02.i477, 1
  %exitcond.not.i483 = icmp eq i32 %inc.i482, %126
  br i1 %exitcond.not.i483, label %arcturus_get_clk_table.exit485thread-pre-split, label %for.body.i484.for.body.i484_crit_edge

for.body.i484.for.body.i484_crit_edge:            ; preds = %for.body.i484
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i484

arcturus_get_clk_table.exit485thread-pre-split:   ; preds = %for.body.i484
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %count1.i475 to i32
  call void @__asan_load4_noabort(i32 %132)
  %.pr557 = load i32, ptr %count1.i475, align 4
  br label %arcturus_get_clk_table.exit485

arcturus_get_clk_table.exit485:                   ; preds = %arcturus_get_clk_table.exit485thread-pre-split, %if.end215.arcturus_get_clk_table.exit485_crit_edge
  %133 = phi i32 [ %.pr557, %arcturus_get_clk_table.exit485thread-pre-split ], [ %125, %if.end215.arcturus_get_clk_table.exit485_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp228519.not = icmp eq i32 %133, 0
  br i1 %cmp228519.not, label %arcturus_get_clk_table.exit485.cleanup_crit_edge, label %arcturus_get_clk_table.exit485.for.body229_crit_edge

arcturus_get_clk_table.exit485.for.body229_crit_edge: ; preds = %arcturus_get_clk_table.exit485
  br label %for.body229

arcturus_get_clk_table.exit485.cleanup_crit_edge: ; preds = %arcturus_get_clk_table.exit485
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body229:                                      ; preds = %cond.end244.for.body229_crit_edge, %arcturus_get_clk_table.exit485.for.body229_crit_edge
  %i.5521 = phi i32 [ %inc249, %cond.end244.for.body229_crit_edge ], [ 0, %arcturus_get_clk_table.exit485.for.body229_crit_edge ]
  %size.6520 = phi i32 [ %add247, %cond.end244.for.body229_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit485.for.body229_crit_edge ]
  %value232 = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 6, i32 4, i32 %i.5521, i32 1
  %134 = ptrtoint ptr %value232 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %value232, align 4
  %136 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp234 = icmp eq i32 %137, 1
  br i1 %cmp234, label %for.body229.cond.end244_crit_edge, label %cond.false236

for.body229.cond.end244_crit_edge:                ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end244

cond.false236:                                    ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx238 = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.5521
  %138 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx238, align 4
  %div240 = udiv i32 %139, 1000
  %140 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %now, align 4
  %sub.i486 = sub i32 %div240, %141
  %142 = call i32 @llvm.abs.i32(i32 %sub.i486, i1 false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %142)
  %cmp2.i487 = icmp sgt i32 %142, 1
  %cond243 = select i1 %cmp2.i487, ptr @.str.13, ptr @.str.12
  br label %cond.end244

cond.end244:                                      ; preds = %cond.false236, %for.body229.cond.end244_crit_edge
  %cond245 = phi ptr [ %cond243, %cond.false236 ], [ @.str.12, %for.body229.cond.end244_crit_edge ]
  %call246 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.6520, ptr noundef nonnull @.str.11, i32 noundef %i.5521, i32 noundef %135, ptr noundef nonnull %cond245) #12
  %add247 = add i32 %call246, %size.6520
  %inc249 = add nuw i32 %i.5521, 1
  %143 = ptrtoint ptr %count1.i475 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %count1.i475, align 4
  %cmp228 = icmp ult i32 %inc249, %144
  br i1 %cmp228, label %cond.end244.for.body229_crit_edge, label %cond.end244.cleanup_crit_edge

cond.end244.cleanup_crit_edge:                    ; preds = %cond.end244
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end244.for.body229_crit_edge:                ; preds = %cond.end244
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body229

sw.bb251:                                         ; preds = %if.end
  %call252 = tail call i32 @smu_v11_0_get_current_pcie_link_speed_level(ptr noundef %smu) #12
  %call253 = tail call i32 @smu_v11_0_get_current_pcie_link_width_level(ptr noundef %smu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call252)
  %145 = icmp ult i32 %call252, 3
  br i1 %145, label %switch.lookup, label %cond.false262

cond.false262:                                    ; preds = %sw.bb251
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call252)
  %cmp263 = icmp eq i32 %call252, 3
  %cond264 = select i1 %cmp263, ptr @.str.48, ptr @.str.13
  br label %cond.end269

switch.lookup:                                    ; preds = %sw.bb251
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.arcturus_print_clk_levels, i32 0, i32 %call252
  %146 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %146)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end269

cond.end269:                                      ; preds = %switch.lookup, %cond.false262
  %cond270 = phi ptr [ %cond264, %cond.false262 ], [ %switch.load, %switch.lookup ]
  %switch.tableidx = add i32 %call253, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %147 = icmp ult i32 %switch.tableidx, 5
  br i1 %147, label %switch.lookup568, label %cond.false285

cond.false285:                                    ; preds = %cond.end269
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call253)
  %cmp286 = icmp eq i32 %call253, 6
  %cond287 = select i1 %cmp286, ptr @.str.54, ptr @.str.13
  br label %cond.end296

switch.lookup568:                                 ; preds = %cond.end269
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep569 = getelementptr inbounds [5 x ptr], ptr @switch.table.arcturus_print_clk_levels.721, i32 0, i32 %switch.tableidx
  %148 = ptrtoint ptr %switch.gep569 to i32
  call void @__asan_load4_noabort(i32 %148)
  %switch.load570 = load ptr, ptr %switch.gep569, align 4
  br label %cond.end296

cond.end296:                                      ; preds = %switch.lookup568, %cond.false285
  %cond297 = phi ptr [ %cond287, %cond.false285 ], [ %switch.load570, %switch.lookup568 ]
  %lclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 17
  %149 = ptrtoint ptr %lclk to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %lclk, align 4
  %div298 = udiv i32 %150, 100
  %call299 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond270, ptr noundef nonnull %cond297, i32 noundef %div298) #12
  %add300 = add i32 %call299, %size.0
  br label %cleanup

cleanup:                                          ; preds = %cond.end296, %cond.end244.cleanup_crit_edge, %arcturus_get_clk_table.exit485.cleanup_crit_edge, %do.end212, %cond.end199.cleanup_crit_edge, %arcturus_get_clk_table.exit471.cleanup_crit_edge, %do.end167, %cond.end154.cleanup_crit_edge, %arcturus_get_clk_table.exit457.cleanup_crit_edge, %do.end125, %cond.end112.cleanup_crit_edge, %arcturus_get_clk_table.exit443.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %do.end79, %cond.end66.cleanup_crit_edge, %arcturus_get_clk_table.exit429.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %do.end33, %cond.end.cleanup_crit_edge, %arcturus_get_clk_table.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ %call207, %do.end212 ], [ %call162, %do.end167 ], [ %call120, %do.end125 ], [ %call74, %do.end79 ], [ %call28, %do.end33 ], [ %call4, %do.end ], [ %size.0, %if.end.cleanup_crit_edge ], [ %add300, %cond.end296 ], [ %size.0, %arcturus_get_clk_table.exit.cleanup_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit429.cleanup_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit443.cleanup_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit457.cleanup_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit471.cleanup_crit_edge ], [ %size.0, %arcturus_get_clk_table.exit485.cleanup_crit_edge ], [ %size.0, %if.end6.cleanup_crit_edge ], [ %size.0, %if.end36.cleanup_crit_edge ], [ %size.0, %if.end82.cleanup_crit_edge ], [ %add26, %cond.end.cleanup_crit_edge ], [ %add69, %cond.end66.cleanup_crit_edge ], [ %add115, %cond.end112.cleanup_crit_edge ], [ %add157, %cond.end154.cleanup_crit_edge ], [ %add202, %cond.end199.cleanup_crit_edge ], [ %add247, %cond.end244.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %clocks) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %now) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_force_clk_levels(ptr noundef %smu, i32 noundef %type, i32 noundef %mask) #1 align 64 {
entry:
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #12
  %2 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %smu_version, align 4, !annotation !1068
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smu, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.55) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smu_version, align 4
  %9 = add i32 %8, -3543552
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %9)
  %10 = icmp ult i32 %9, 2049
  br i1 %10, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smu, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.58) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool10.not = icmp eq i32 %mask, 0
  %15 = call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !1069
  %spec.select = select i1 %tobool10.not, i32 0, i32 %15
  %16 = call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #12, !range !1069
  %sub14 = sub nsw i32 31, %16
  %cond17 = select i1 %tobool10.not, i32 0, i32 %sub14
  %17 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.722)
  switch i32 %type, label %if.end9.cleanup_crit_edge [
    i32 13, label %sw.bb
    i32 14, label %if.end9.sw.bb46_crit_edge
    i32 6, label %if.end9.sw.bb46_crit_edge89
    i32 12, label %if.end9.sw.bb46_crit_edge90
  ]

if.end9.sw.bb46_crit_edge90:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46

if.end9.sw.bb46_crit_edge89:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46

if.end9.sw.bb46_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb46

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  %count = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond17, i32 %19)
  %cmp18.not = icmp ult i32 %cond17, %19
  br i1 %cmp18.not, label %if.end27, label %do.end22

do.end22:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smu, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %sub26 = add i32 %19, -1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.61, i32 noundef %cond17, i32 noundef %sub26) #15
  br label %cleanup

if.end27:                                         ; preds = %sw.bb
  %24 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dpm_context1, align 4
  %call.i = call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end27.if.end36_crit_edge, label %if.then.i

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then.i:                                        ; preds = %if.end27
  %value.i = getelementptr %struct.smu_11_0_dpm_tables, ptr %25, i32 0, i32 1, i32 4, i32 %spec.select, i32 1
  %26 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value.i, align 4
  %and4.i = and i32 %27, 65535
  %call5.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 32, i32 noundef %and4.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end36_crit_edge, label %do.end33

if.then.i.if.end36_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end33:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smu, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.72) #15
  %32 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smu, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.64) #15
  br label %cleanup

if.end36:                                         ; preds = %if.then.i.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  %call11.i = call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #12
  %call37.i = call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #12
  %36 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dpm_context1, align 4
  %call.i72 = call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %if.end36.arcturus_upload_dpm_level.exit84.thread_crit_edge, label %if.then.i78

if.end36.arcturus_upload_dpm_level.exit84.thread_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_upload_dpm_level.exit84.thread

if.then.i78:                                      ; preds = %if.end36
  %value.i74 = getelementptr %struct.smu_11_0_dpm_tables, ptr %37, i32 0, i32 1, i32 4, i32 %cond17, i32 1
  %38 = ptrtoint ptr %value.i74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value.i74, align 4
  %and4.i75 = and i32 %39, 65535
  %call5.i76 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 33, i32 noundef %and4.i75, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i76)
  %tobool6.not.i77 = icmp eq i32 %call5.i76, 0
  br i1 %tobool6.not.i77, label %if.then.i78.arcturus_upload_dpm_level.exit84.thread_crit_edge, label %do.end42

if.then.i78.arcturus_upload_dpm_level.exit84.thread_crit_edge: ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_upload_dpm_level.exit84.thread

arcturus_upload_dpm_level.exit84.thread:          ; preds = %if.then.i78.arcturus_upload_dpm_level.exit84.thread_crit_edge, %if.end36.arcturus_upload_dpm_level.exit84.thread_crit_edge
  %call11.i80 = call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #12
  %call37.i81 = call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #12
  br label %cleanup

do.end42:                                         ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smu, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.71) #15
  %44 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %smu, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.67) #15
  br label %cleanup

sw.bb46:                                          ; preds = %if.end9.sw.bb46_crit_edge, %if.end9.sw.bb46_crit_edge89, %if.end9.sw.bb46_crit_edge90
  br label %cleanup

cleanup:                                          ; preds = %sw.bb46, %do.end42, %arcturus_upload_dpm_level.exit84.thread, %do.end33, %do.end22, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -95, %do.end6 ], [ 0, %if.end9.cleanup_crit_edge ], [ -22, %sw.bb46 ], [ -22, %do.end22 ], [ %call5.i, %do.end33 ], [ %call5.i76, %do.end42 ], [ 0, %arcturus_upload_dpm_level.exit84.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_get_power_profile_mode(ptr noundef %smu, ptr noundef %buf) #1 align 64 {
entry:
  %activity_monitor = alloca %struct.DpmActivityMonitorCoeffInt_t, align 4
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %activity_monitor) #12
  %0 = call ptr @memset(ptr %activity_monitor, i32 255, i32 124)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #12
  %1 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %smu_version, align 4, !annotation !1068
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3542271, i32 %3)
  %cmp = icmp ugt i32 %3, 3542271
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89) #12
  br label %if.end8

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.79) #12
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %size.0 = phi i32 [ %call5, %if.then4 ], [ %call6, %if.else ]
  %power_profile_mode = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 40
  %Gfx_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 2
  %Gfx_UseRlcBusy = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 6
  %Gfx_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 3
  %Gfx_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 8
  %Gfx_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 4
  %Gfx_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 9
  %Gfx_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 13
  %Gfx_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 14
  %Gfx_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 15
  %Mem_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 18
  %Mem_UseRlcBusy = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 22
  %Mem_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 19
  %Mem_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 24
  %Mem_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 20
  %Mem_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 25
  %Mem_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 29
  %Mem_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 30
  %Mem_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8
  %size.184 = phi i32 [ %size.0, %if.end8 ], [ %size.2, %for.inc.for.body_crit_edge ]
  %i.083 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %call10 = call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef %i.083) #12
  %sext = shl i32 %call10, 16
  %conv11 = ashr exact i32 %sext, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp12 = icmp slt i32 %sext, 0
  br i1 %cmp12, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %4 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3542271, i32 %5)
  %cmp16 = icmp ugt i32 %5, 3542271
  br i1 %cmp16, label %if.then18, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then18:                                        ; preds = %if.end15
  %call20 = call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 10, i32 noundef %conv11, ptr noundef nonnull %activity_monitor, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then18.if.end24_crit_edge, label %do.end

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #15
  br label %cleanup

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %arrayidx = getelementptr [7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 %i.083
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.083, i32 %13)
  %cmp25 = icmp eq i32 %i.083, %13
  %cond = select i1 %cmp25, ptr @.str.12, ptr @.str.95
  %call27 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.184, ptr noundef nonnull @.str.94, i32 noundef %i.083, ptr noundef %11, ptr noundef nonnull %cond) #12
  %add28 = add i32 %call27, %size.184
  %14 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3542271, i32 %15)
  %cmp29 = icmp ugt i32 %15, 3542271
  br i1 %cmp29, label %if.then31, label %if.end24.for.inc_crit_edge

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %Gfx_FPS to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %Gfx_FPS, align 2
  %conv32 = zext i8 %17 to i32
  %18 = ptrtoint ptr %Gfx_UseRlcBusy to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %Gfx_UseRlcBusy, align 2
  %conv33 = zext i8 %19 to i32
  %20 = ptrtoint ptr %Gfx_MinActiveFreqType to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %Gfx_MinActiveFreqType, align 1
  %conv34 = zext i8 %21 to i32
  %22 = ptrtoint ptr %Gfx_MinActiveFreq to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %Gfx_MinActiveFreq, align 2
  %conv35 = zext i16 %23 to i32
  %24 = ptrtoint ptr %Gfx_BoosterFreqType to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %Gfx_BoosterFreqType, align 4
  %conv36 = zext i8 %25 to i32
  %26 = ptrtoint ptr %Gfx_BoosterFreq to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %Gfx_BoosterFreq, align 4
  %conv37 = zext i16 %27 to i32
  %28 = ptrtoint ptr %Gfx_PD_Data_limit_c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %Gfx_PD_Data_limit_c, align 4
  %30 = ptrtoint ptr %Gfx_PD_Data_error_coeff to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %Gfx_PD_Data_error_coeff, align 4
  %32 = ptrtoint ptr %Gfx_PD_Data_error_rate_coeff to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %Gfx_PD_Data_error_rate_coeff, align 4
  %call38 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %add28, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef 0, ptr noundef nonnull @.str.97, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %conv36, i32 noundef %conv37, i32 noundef %29, i32 noundef %31, i32 noundef %33) #12
  %add39 = add i32 %call38, %add28
  %34 = ptrtoint ptr %Mem_FPS to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %Mem_FPS, align 2
  %conv40 = zext i8 %35 to i32
  %36 = ptrtoint ptr %Mem_UseRlcBusy to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %Mem_UseRlcBusy, align 2
  %conv41 = zext i8 %37 to i32
  %38 = ptrtoint ptr %Mem_MinActiveFreqType to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %Mem_MinActiveFreqType, align 1
  %conv42 = zext i8 %39 to i32
  %40 = ptrtoint ptr %Mem_MinActiveFreq to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %Mem_MinActiveFreq, align 2
  %conv43 = zext i16 %41 to i32
  %42 = ptrtoint ptr %Mem_BoosterFreqType to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %Mem_BoosterFreqType, align 4
  %conv44 = zext i8 %43 to i32
  %44 = ptrtoint ptr %Mem_BoosterFreq to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %Mem_BoosterFreq, align 4
  %conv45 = zext i16 %45 to i32
  %46 = ptrtoint ptr %Mem_PD_Data_limit_c to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %Mem_PD_Data_limit_c, align 4
  %48 = ptrtoint ptr %Mem_PD_Data_error_coeff to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %Mem_PD_Data_error_coeff, align 4
  %50 = ptrtoint ptr %Mem_PD_Data_error_rate_coeff to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %Mem_PD_Data_error_rate_coeff, align 4
  %call46 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %add39, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef 1, ptr noundef nonnull @.str.98, i32 noundef %conv40, i32 noundef %conv41, i32 noundef %conv42, i32 noundef %conv43, i32 noundef %conv44, i32 noundef %conv45, i32 noundef %47, i32 noundef %49, i32 noundef %51) #12
  %add47 = add i32 %call46, %add39
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %if.end24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %size.2 = phi i32 [ %size.184, %for.body.for.inc_crit_edge ], [ %add47, %if.then31 ], [ %add28, %if.end24.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %size.2, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #12
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %activity_monitor) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_set_power_profile_mode(ptr noundef %smu, ptr nocapture noundef readonly %input, i32 noundef %size) #1 align 64 {
entry:
  %activity_monitor = alloca %struct.DpmActivityMonitorCoeffInt_t, align 4
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %activity_monitor) #12
  %0 = call ptr @memset(ptr %activity_monitor, i32 255, i32 124)
  %arrayidx = getelementptr i32, ptr %input, i32 %size
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #12
  %3 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %smu_version, align 4, !annotation !1068
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp = icmp ugt i32 %2, 6
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.99, i32 noundef %2) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp3 = icmp eq i32 %2, 6
  br i1 %cmp3, label %land.lhs.true, label %if.end2.if.end55_crit_edge

if.end2.if.end55_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end2
  %8 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3542271, i32 %9)
  %cmp4 = icmp ugt i32 %9, 3542271
  br i1 %cmp4, label %if.then5, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %activity_monitor, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.100) #15
  br label %cleanup

if.end14:                                         ; preds = %if.then5
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.723)
  switch i32 %15, label %if.end14.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx16 = getelementptr i32, ptr %input, i32 1
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16, align 4
  %conv = trunc i32 %18 to i8
  %Gfx_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 2
  %19 = ptrtoint ptr %Gfx_FPS to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %Gfx_FPS, align 2
  %arrayidx17 = getelementptr i32, ptr %input, i32 2
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17, align 4
  %conv18 = trunc i32 %21 to i8
  %Gfx_UseRlcBusy = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 6
  %22 = ptrtoint ptr %Gfx_UseRlcBusy to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv18, ptr %Gfx_UseRlcBusy, align 2
  %arrayidx19 = getelementptr i32, ptr %input, i32 3
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx19, align 4
  %conv20 = trunc i32 %24 to i8
  %Gfx_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 3
  %25 = ptrtoint ptr %Gfx_MinActiveFreqType to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv20, ptr %Gfx_MinActiveFreqType, align 1
  %arrayidx21 = getelementptr i32, ptr %input, i32 4
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx21, align 4
  %conv22 = trunc i32 %27 to i16
  %Gfx_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 8
  %28 = ptrtoint ptr %Gfx_MinActiveFreq to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv22, ptr %Gfx_MinActiveFreq, align 2
  %arrayidx23 = getelementptr i32, ptr %input, i32 5
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx23, align 4
  %conv24 = trunc i32 %30 to i8
  %Gfx_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 4
  %31 = ptrtoint ptr %Gfx_BoosterFreqType to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv24, ptr %Gfx_BoosterFreqType, align 4
  %arrayidx25 = getelementptr i32, ptr %input, i32 6
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx25, align 4
  %conv26 = trunc i32 %33 to i16
  %Gfx_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 9
  %34 = ptrtoint ptr %Gfx_BoosterFreq to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv26, ptr %Gfx_BoosterFreq, align 4
  %arrayidx27 = getelementptr i32, ptr %input, i32 7
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx27, align 4
  %Gfx_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 13
  %37 = ptrtoint ptr %Gfx_PD_Data_limit_c to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %Gfx_PD_Data_limit_c, align 4
  %arrayidx28 = getelementptr i32, ptr %input, i32 8
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx28, align 4
  %Gfx_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 14
  %40 = ptrtoint ptr %Gfx_PD_Data_error_coeff to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %Gfx_PD_Data_error_coeff, align 4
  %arrayidx29 = getelementptr i32, ptr %input, i32 9
  %41 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx29, align 4
  %Gfx_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 15
  %43 = ptrtoint ptr %Gfx_PD_Data_error_rate_coeff to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %Gfx_PD_Data_error_rate_coeff, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx31 = getelementptr i32, ptr %input, i32 1
  %44 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx31, align 4
  %conv32 = trunc i32 %45 to i8
  %Mem_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 18
  %46 = ptrtoint ptr %Mem_FPS to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv32, ptr %Mem_FPS, align 2
  %arrayidx33 = getelementptr i32, ptr %input, i32 2
  %47 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx33, align 4
  %conv34 = trunc i32 %48 to i8
  %Mem_UseRlcBusy = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 22
  %49 = ptrtoint ptr %Mem_UseRlcBusy to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv34, ptr %Mem_UseRlcBusy, align 2
  %arrayidx35 = getelementptr i32, ptr %input, i32 3
  %50 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx35, align 4
  %conv36 = trunc i32 %51 to i8
  %Mem_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 19
  %52 = ptrtoint ptr %Mem_MinActiveFreqType to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv36, ptr %Mem_MinActiveFreqType, align 1
  %arrayidx37 = getelementptr i32, ptr %input, i32 4
  %53 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx37, align 4
  %conv38 = trunc i32 %54 to i16
  %Mem_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 24
  %55 = ptrtoint ptr %Mem_MinActiveFreq to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv38, ptr %Mem_MinActiveFreq, align 2
  %arrayidx39 = getelementptr i32, ptr %input, i32 5
  %56 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx39, align 4
  %conv40 = trunc i32 %57 to i8
  %Mem_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 20
  %58 = ptrtoint ptr %Mem_BoosterFreqType to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv40, ptr %Mem_BoosterFreqType, align 4
  %arrayidx41 = getelementptr i32, ptr %input, i32 6
  %59 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx41, align 4
  %conv42 = trunc i32 %60 to i16
  %Mem_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 25
  %61 = ptrtoint ptr %Mem_BoosterFreq to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv42, ptr %Mem_BoosterFreq, align 4
  %arrayidx43 = getelementptr i32, ptr %input, i32 7
  %62 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx43, align 4
  %Mem_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 29
  %64 = ptrtoint ptr %Mem_PD_Data_limit_c to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %Mem_PD_Data_limit_c, align 4
  %arrayidx44 = getelementptr i32, ptr %input, i32 8
  %65 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx44, align 4
  %Mem_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 30
  %67 = ptrtoint ptr %Mem_PD_Data_error_coeff to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %Mem_PD_Data_error_coeff, align 4
  %arrayidx45 = getelementptr i32, ptr %input, i32 9
  %68 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx45, align 4
  %Mem_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 31
  %70 = ptrtoint ptr %Mem_PD_Data_error_rate_coeff to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %Mem_PD_Data_error_rate_coeff, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb, %if.end14.sw.epilog_crit_edge
  %call46 = call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %activity_monitor, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %sw.epilog.if.end55_crit_edge, label %do.end51

sw.epilog.if.end55_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

do.end51:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %smu, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.100) #15
  br label %cleanup

if.end55:                                         ; preds = %sw.epilog.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.end2.if.end55_crit_edge
  %call56 = call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.body60, label %if.end71

do.body60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arcturus_set_power_profile_mode.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arcturus_set_power_profile_mode, %if.then65)) #12
          to label %cleanup [label %if.then65], !srcloc !1070

if.then65:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %smu, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arcturus_set_power_profile_mode.__UNIQUE_ID_ddebug345, ptr noundef %78, ptr noundef nonnull @.str.107, i32 noundef %2) #12
  br label %cleanup

if.end71:                                         ; preds = %if.end55
  %shl = shl nuw i32 1, %call56
  %call72 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 14, i32 noundef %shl, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end80, label %do.end77

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %smu, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.109, i32 noundef %call56) #15
  br label %cleanup

if.end80:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %power_profile_mode = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 40
  %83 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %2, ptr %power_profile_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %do.end77, %if.then65, %do.body60, %do.end51, %do.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call6, %do.end11 ], [ %call46, %do.end51 ], [ %call72, %do.end77 ], [ 0, %if.end80 ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.then65 ], [ -22, %do.body60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #12
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %activity_monitor) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_dpm_set_vcn_enable(ptr noundef %smu, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @smu_cmn_feature_set_enabled(ptr noundef %smu, i32 noundef 62, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.else
  %call10 = tail call i32 @smu_cmn_feature_set_enabled(ptr noundef %smu, i32 noundef 62, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %if.then9.cleanup.sink.split_crit_edge

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then9.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %.str.114.sink = phi ptr [ @.str.111, %if.then2.cleanup.sink.split_crit_edge ], [ @.str.114, %if.then9.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call3, %if.then2.cleanup.sink.split_crit_edge ], [ %call10, %if.then9.cleanup.sink.split_crit_edge ]
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.114.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_read_sensor(ptr noundef %smu, i32 noundef %sensor, ptr noundef %data, ptr noundef writeonly %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %2 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sensor_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %sensor_lock, i32 noundef 0) #12
  %3 = zext i32 %sensor to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.724)
  switch i32 %sensor, label %if.end3.sw.epilog_crit_edge [
    i32 22, label %sw.bb
    i32 8, label %sw.bb4
    i32 7, label %sw.bb6
    i32 15, label %sw.bb8
    i32 11, label %sw.bb10
    i32 10, label %sw.bb12
    i32 12, label %sw.bb14
    i32 9, label %sw.bb16
    i32 0, label %sw.bb18
    i32 3, label %sw.bb21
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %FanMaximumRpm = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 59
  %4 = ptrtoint ptr %FanMaximumRpm to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %FanMaximumRpm, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %if.end3
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %7 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #12
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb4.arcturus_get_smu_metrics_data.exit_crit_edge

sw.bb4.arcturus_get_smu_metrics_data.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %AverageUclkActivity.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %AverageUclkActivity.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %AverageUclkActivity.i, align 4
  %conv36.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv36.i, ptr %data, align 4
  br label %arcturus_get_smu_metrics_data.exit

arcturus_get_smu_metrics_data.exit:               ; preds = %if.end.i, %sw.bb4.arcturus_get_smu_metrics_data.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #12
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %if.end3
  %metrics_table.i59 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %metrics_table.i59 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %metrics_table.i59, align 8
  %metrics_lock.i60 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i60, i32 noundef 0) #12
  %call.i61 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end.i63, label %sw.bb6.arcturus_get_smu_metrics_data.exit64_crit_edge

sw.bb6.arcturus_get_smu_metrics_data.exit64_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_smu_metrics_data.exit64

if.end.i63:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %AverageGfxActivity.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %AverageGfxActivity.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %AverageGfxActivity.i, align 2
  %conv34.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv34.i, ptr %data, align 4
  br label %arcturus_get_smu_metrics_data.exit64

arcturus_get_smu_metrics_data.exit64:             ; preds = %if.end.i63, %sw.bb6.arcturus_get_smu_metrics_data.exit64_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i60) #12
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %if.end3
  %metrics_table.i65 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %17 = ptrtoint ptr %metrics_table.i65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %metrics_table.i65, align 8
  %metrics_lock.i66 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i66, i32 noundef 0) #12
  %call.i67 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %if.end.i69, label %sw.bb8.arcturus_get_smu_metrics_data.exit70_crit_edge

sw.bb8.arcturus_get_smu_metrics_data.exit70_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_smu_metrics_data.exit70

if.end.i69:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %AverageSocketPower.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %AverageSocketPower.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %AverageSocketPower.i, align 2
  %conv40.i = zext i16 %20 to i32
  %shl.i = shl nuw nsw i32 %conv40.i, 8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl.i, ptr %data, align 4
  br label %arcturus_get_smu_metrics_data.exit70

arcturus_get_smu_metrics_data.exit70:             ; preds = %if.end.i69, %sw.bb8.arcturus_get_smu_metrics_data.exit70_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i66) #12
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %if.end3
  %metrics_table.i71 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %22 = ptrtoint ptr %metrics_table.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %metrics_table.i71, align 8
  %metrics_lock.i72 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i72, i32 noundef 0) #12
  %call.i73 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i74, label %if.end.i75, label %sw.bb10.arcturus_get_smu_metrics_data.exit76_crit_edge

sw.bb10.arcturus_get_smu_metrics_data.exit76_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_smu_metrics_data.exit76

if.end.i75:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  %TemperatureHotspot.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %TemperatureHotspot.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %TemperatureHotspot.i, align 2
  %conv44.i = zext i16 %25 to i32
  %mul45.i = mul nuw nsw i32 %conv44.i, 1000
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul45.i, ptr %data, align 4
  br label %arcturus_get_smu_metrics_data.exit76

arcturus_get_smu_metrics_data.exit76:             ; preds = %if.end.i75, %sw.bb10.arcturus_get_smu_metrics_data.exit76_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i72) #12
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %if.end3
  %metrics_table.i77 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %27 = ptrtoint ptr %metrics_table.i77 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %metrics_table.i77, align 8
  %metrics_lock.i78 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i78, i32 noundef 0) #12
  %call.i79 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %if.end.i81, label %sw.bb12.arcturus_get_smu_metrics_data.exit82_crit_edge

sw.bb12.arcturus_get_smu_metrics_data.exit82_crit_edge: ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_smu_metrics_data.exit82

if.end.i81:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  %TemperatureEdge.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %TemperatureEdge.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %TemperatureEdge.i, align 4
  %conv42.i = zext i16 %30 to i32
  %mul.i = mul nuw nsw i32 %conv42.i, 1000
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i, ptr %data, align 4
  br label %arcturus_get_smu_metrics_data.exit82

arcturus_get_smu_metrics_data.exit82:             ; preds = %if.end.i81, %sw.bb12.arcturus_get_smu_metrics_data.exit82_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i78) #12
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %if.end3
  %metrics_table.i83 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %32 = ptrtoint ptr %metrics_table.i83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %metrics_table.i83, align 8
  %metrics_lock.i84 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i84, i32 noundef 0) #12
  %call.i85 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %if.end.i87, label %sw.bb14.arcturus_get_smu_metrics_data.exit88_crit_edge

sw.bb14.arcturus_get_smu_metrics_data.exit88_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_smu_metrics_data.exit88

if.end.i87:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  %TemperatureHBM.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %TemperatureHBM.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %TemperatureHBM.i, align 4
  %conv47.i = zext i16 %35 to i32
  %mul48.i = mul nuw nsw i32 %conv47.i, 1000
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul48.i, ptr %data, align 4
  br label %arcturus_get_smu_metrics_data.exit88

arcturus_get_smu_metrics_data.exit88:             ; preds = %if.end.i87, %sw.bb14.arcturus_get_smu_metrics_data.exit88_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i84) #12
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call fastcc i32 @arcturus_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 7, ptr noundef nonnull %data)
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data, align 4
  %mul = mul i32 %38, 100
  store i32 %mul, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb18:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call fastcc i32 @arcturus_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %data)
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data, align 4
  %mul20 = mul i32 %40, 100
  store i32 %mul20, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb21:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 @smu_v11_0_get_gfx_vdd(ptr noundef %smu, ptr noundef nonnull %data) #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb21, %sw.bb18, %sw.bb16, %arcturus_get_smu_metrics_data.exit88, %arcturus_get_smu_metrics_data.exit82, %arcturus_get_smu_metrics_data.exit76, %arcturus_get_smu_metrics_data.exit70, %arcturus_get_smu_metrics_data.exit64, %arcturus_get_smu_metrics_data.exit, %sw.bb
  %ret.0.ph = phi i32 [ 0, %sw.bb ], [ %call.i, %arcturus_get_smu_metrics_data.exit ], [ %call.i61, %arcturus_get_smu_metrics_data.exit64 ], [ %call.i67, %arcturus_get_smu_metrics_data.exit70 ], [ %call.i73, %arcturus_get_smu_metrics_data.exit76 ], [ %call.i79, %arcturus_get_smu_metrics_data.exit82 ], [ %call.i85, %arcturus_get_smu_metrics_data.exit88 ], [ %call17, %sw.bb16 ], [ %call19, %sw.bb18 ], [ %call22, %sw.bb21 ]
  %41 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end3.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %if.end3.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %sensor_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @arcturus_is_dpm_running(ptr noundef %smu) #1 align 64 {
entry:
  %feature_mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask) #12
  %0 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %feature_mask, align 4, !annotation !1068
  %1 = getelementptr inbounds [2 x i32], ptr %feature_mask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !1068
  %call = call i32 @smu_cmn_get_enabled_mask(ptr noundef %smu, ptr noundef nonnull %feature_mask, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %feature_mask, align 4
  %5 = and i32 %4, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3 = icmp ne i32 %5, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool3, %if.end ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask) #12
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_get_fan_speed_pwm(ptr nocapture noundef readonly %smu, ptr nocapture noundef writeonly %speed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %flags = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 64, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fan_speed_pwm = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 64, i32 2
  %4 = ptrtoint ptr %fan_speed_pwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fan_speed_pwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and4 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.cond.false_crit_edge, label %land.lhs.true6

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true6:                                   ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %land.lhs.true6.cond.false_crit_edge, label %land.lhs.true8

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %land.lhs.true8.cond.false_crit_edge, label %cond.true

land.lhs.true8.cond.false_crit_edge:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add = add i32 %15, 140
  %call = tail call i32 %11(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true8.cond.false_crit_edge, %land.lhs.true6.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx20, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add23 = add i32 %19, 140
  %call24 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add23, i32 noundef 0) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call24, %cond.false ]
  %and25 = and i32 %cond, 255
  %20 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt, align 8
  %and28 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.end.cond.false52_crit_edge, label %land.lhs.true30

cond.end.cond.false52_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false52

land.lhs.true30:                                  ; preds = %cond.end
  %funcs33 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs33, align 4
  %tobool34.not = icmp eq ptr %23, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false52_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false52_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false52

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_rreg39 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %sriov_rreg39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_rreg39, align 4
  %tobool40.not = icmp eq ptr %25, null
  br i1 %tobool40.not, label %land.lhs.true35.cond.false52_crit_edge, label %cond.true41

land.lhs.true35.cond.false52_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false52

cond.true41:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx47, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add50 = add i32 %29, 144
  %call51 = tail call i32 %25(ptr noundef %1, i32 noundef %add50, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end59

cond.false52:                                     ; preds = %land.lhs.true35.cond.false52_crit_edge, %land.lhs.true30.cond.false52_crit_edge, %cond.end.cond.false52_crit_edge
  %arrayidx54 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %30 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx54, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add57 = add i32 %33, 144
  %call58 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add57, i32 noundef 0) #12
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false52, %cond.true41
  %cond60 = phi i32 [ %call51, %cond.true41 ], [ %call58, %cond.false52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool63.not = icmp eq i32 %and25, 0
  br i1 %tobool63.not, label %cond.end59.cleanup_crit_edge, label %if.end257

cond.end59.cleanup_crit_edge:                     ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end257:                                        ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #14
  %and61 = lshr i32 %cond60, 9
  %34 = trunc i32 %and61 to i16
  %35 = and i16 %34, 255
  %div251.lhs.trunc = mul nuw i16 %35, 255
  %div251.rhs.trunc = trunc i32 %and25 to i16
  %div251401 = udiv i16 %div251.lhs.trunc, %div251.rhs.trunc
  %36 = call i16 @llvm.umin.i16(i16 %div251401, i16 255)
  %37 = zext i16 %36 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end257, %cond.end59.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %storemerge374 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %37, %if.end257 ], [ 0, %cond.end59.cleanup_crit_edge ]
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %storemerge374, ptr %speed, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_get_fan_speed_rpm(ptr noundef %smu, ptr noundef writeonly %speed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %tobool.not = icmp eq ptr %speed, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @smu_v11_0_get_fan_control_mode(ptr noundef %smu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cond233 = icmp eq i32 %call, 2
  br i1 %cond233, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #12
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.arcturus_get_smu_metrics_data.exit_crit_edge

sw.bb.arcturus_get_smu_metrics_data.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %CurrFanSpeed.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %CurrFanSpeed.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %CurrFanSpeed.i, align 4
  %conv60.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv60.i, ptr %speed, align 4
  br label %arcturus_get_smu_metrics_data.exit

arcturus_get_smu_metrics_data.exit:               ; preds = %if.end.i, %sw.bb.arcturus_get_smu_metrics_data.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #12
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %flags = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 64, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %sw.default.if.end7_crit_edge, label %land.lhs.true

sw.default.if.end7_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %sw.default
  %fan_speed_rpm = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 64, i32 3
  %9 = ptrtoint ptr %fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fan_speed_rpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %speed, align 4
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %sw.default.if.end7_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %12 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %virt, align 8
  %and9 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.cond.false_crit_edge, label %land.lhs.true11

if.end7.cond.false_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true11:                                  ; preds = %if.end7
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %land.lhs.true11.cond.false_crit_edge, label %land.lhs.true13

land.lhs.true11.cond.false_crit_edge:             ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sriov_rreg, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %land.lhs.true13.cond.false_crit_edge, label %cond.true

land.lhs.true13.cond.false_crit_edge:             ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add = add i32 %21, 143
  %call24 = tail call i32 %17(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true13.cond.false_crit_edge, %land.lhs.true11.cond.false_crit_edge, %if.end7.cond.false_crit_edge
  %arrayidx26 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx26, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add29 = add i32 %25, 143
  %call30 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add29, i32 noundef 0) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call24, %cond.true ], [ %call30, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool31.not = icmp eq i32 %cond, 0
  br i1 %tobool31.not, label %if.else227, label %if.end224

if.end224:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %div218 = udiv i32 1500000000, %cond
  %26 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div218, ptr %speed, align 4
  br label %cleanup

if.else227:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else227, %if.end224, %if.then6, %arcturus_get_smu_metrics_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %arcturus_get_smu_metrics_data.exit ], [ 0, %if.end224 ], [ 0, %if.else227 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arcturus_get_thermal_temperature_range(ptr nocapture noundef readonly %smu, ptr noundef writeonly %range) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %range, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %smu_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14
  %2 = ptrtoint ptr %smu_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_table, align 8
  %4 = call ptr @memcpy(ptr %range, ptr @smu11_thermal_policy, i32 40)
  %TedgeLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %TedgeLimit to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %TedgeLimit, align 4
  %conv = zext i16 %6 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %max, align 4
  %8 = load i16, ptr %TedgeLimit, align 4
  %conv3 = zext i16 %8 to i32
  %9 = mul nuw nsw i32 %conv3, 1000
  %mul4 = add nuw nsw i32 %9, 5000
  %edge_emergency_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 2
  %10 = ptrtoint ptr %edge_emergency_max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul4, ptr %edge_emergency_max, align 4
  %ThotspotLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %ThotspotLimit to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ThotspotLimit, align 2
  %conv5 = zext i16 %12 to i32
  %mul6 = mul nuw nsw i32 %conv5, 1000
  %hotspot_crit_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 4
  %13 = ptrtoint ptr %hotspot_crit_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul6, ptr %hotspot_crit_max, align 4
  %14 = load i16, ptr %ThotspotLimit, align 2
  %conv8 = zext i16 %14 to i32
  %15 = mul nuw nsw i32 %conv8, 1000
  %mul10 = add nuw nsw i32 %15, 5000
  %hotspot_emergency_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 5
  %16 = ptrtoint ptr %hotspot_emergency_max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul10, ptr %hotspot_emergency_max, align 4
  %TmemLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %TmemLimit to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %TmemLimit, align 4
  %conv11 = zext i16 %18 to i32
  %mul12 = mul nuw nsw i32 %conv11, 1000
  %mem_crit_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 7
  %19 = ptrtoint ptr %mem_crit_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul12, ptr %mem_crit_max, align 4
  %20 = load i16, ptr %TmemLimit, align 4
  %conv14 = zext i16 %20 to i32
  %21 = mul nuw nsw i32 %conv14, 1000
  %mul16 = add nuw nsw i32 %21, 5000
  %mem_emergency_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 8
  %22 = ptrtoint ptr %mem_emergency_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul16, ptr %mem_emergency_max, align 4
  %software_shutdown_temp = getelementptr inbounds %struct.smu_11_0_powerplay_table, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %software_shutdown_temp to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %software_shutdown_temp, align 1
  %conv17 = zext i16 %24 to i32
  %software_shutdown_temp18 = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 9
  %25 = ptrtoint ptr %software_shutdown_temp18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv17, ptr %software_shutdown_temp18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_set_performance_level(ptr noundef %smu, i32 noundef %level) #1 align 64 {
entry:
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #12
  %0 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smu_version, align 4, !annotation !1068
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.55) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.725)
  switch i32 %level, label %if.end.sw.epilog_crit_edge [
    i32 8, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge16
    i32 16, label %if.end.sw.bb_crit_edge17
    i32 32, label %if.end.sw.bb_crit_edge18
    i32 64, label %if.end.sw.bb_crit_edge19
    i32 128, label %if.end.sw.bb_crit_edge20
  ]

if.end.sw.bb_crit_edge20:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge19:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge18:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge17:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge16:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge16, %if.end.sw.bb_crit_edge17, %if.end.sw.bb_crit_edge18, %if.end.sw.bb_crit_edge19, %if.end.sw.bb_crit_edge20
  %6 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smu_version, align 4
  %8 = add i32 %7, -3543552
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %8)
  %9 = icmp ult i32 %8, 2049
  br i1 %9, label %do.end5, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.58) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %call9 = call i32 @smu_v11_0_set_performance_level(ptr noundef %smu, i32 noundef %level) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end5, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call9, %sw.epilog ], [ -95, %do.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcturus_dump_pptable(ptr noundef readonly %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.119) #15
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.123, i32 noundef %11) #15
  %12 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smu, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %FeaturesToRun = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %FeaturesToRun to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %FeaturesToRun, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.126, i32 noundef %17) #15
  %18 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smu, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %arrayidx17 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.129, i32 noundef %23) #15
  %24 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smu, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %arrayidx23 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 2, i32 0
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx23, align 2
  %conv = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.132, i32 noundef 0, i32 noundef %conv) #15
  %30 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smu, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %arrayidx29 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 3, i32 0
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx29, align 2
  %conv30 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.135, i32 noundef 0, i32 noundef %conv30) #15
  %36 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smu, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %arrayidx23.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx23.1, align 2
  %conv.1 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.132, i32 noundef 1, i32 noundef %conv.1) #15
  %42 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %smu, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %arrayidx29.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx29.1, align 2
  %conv30.1 = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef %conv30.1) #15
  %48 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %smu, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %arrayidx23.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx23.2, align 2
  %conv.2 = zext i16 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.132, i32 noundef 2, i32 noundef %conv.2) #15
  %54 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smu, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %arrayidx29.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx29.2, align 2
  %conv30.2 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.135, i32 noundef 2, i32 noundef %conv30.2) #15
  %60 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smu, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %arrayidx23.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx23.3, align 2
  %conv.3 = zext i16 %65 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.132, i32 noundef 3, i32 noundef %conv.3) #15
  %66 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %smu, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %arrayidx29.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx29.3, align 2
  %conv30.3 = zext i16 %71 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.135, i32 noundef 3, i32 noundef %conv30.3) #15
  %72 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %smu, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %TdcLimitSoc = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %TdcLimitSoc to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %TdcLimitSoc, align 4
  %conv36 = zext i16 %77 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.138, i32 noundef %conv36) #15
  %78 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %smu, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %TdcLimitSocTau = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 5
  %82 = ptrtoint ptr %TdcLimitSocTau to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %TdcLimitSocTau, align 2
  %conv42 = zext i16 %83 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.141, i32 noundef %conv42) #15
  %84 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %smu, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %TdcLimitGfx = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 6
  %88 = ptrtoint ptr %TdcLimitGfx to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %TdcLimitGfx, align 4
  %conv48 = zext i16 %89 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.144, i32 noundef %conv48) #15
  %90 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %smu, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 8
  %TdcLimitGfxTau = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 7
  %94 = ptrtoint ptr %TdcLimitGfxTau to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %TdcLimitGfxTau, align 2
  %conv54 = zext i16 %95 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.147, i32 noundef %conv54) #15
  %96 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %smu, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  %TedgeLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 8
  %100 = ptrtoint ptr %TedgeLimit to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %TedgeLimit, align 4
  %conv60 = zext i16 %101 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.150, i32 noundef %conv60) #15
  %102 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %smu, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %ThotspotLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 9
  %106 = ptrtoint ptr %ThotspotLimit to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %ThotspotLimit, align 2
  %conv66 = zext i16 %107 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str.153, i32 noundef %conv66) #15
  %108 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %smu, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 8
  %TmemLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 10
  %112 = ptrtoint ptr %TmemLimit to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %TmemLimit, align 4
  %conv72 = zext i16 %113 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.156, i32 noundef %conv72) #15
  %114 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %smu, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 8
  %Tvr_gfxLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 11
  %118 = ptrtoint ptr %Tvr_gfxLimit to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %Tvr_gfxLimit, align 2
  %conv78 = zext i16 %119 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %117, ptr noundef nonnull @.str.159, i32 noundef %conv78) #15
  %120 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %smu, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 8
  %Tvr_memLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 12
  %124 = ptrtoint ptr %Tvr_memLimit to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %Tvr_memLimit, align 4
  %conv84 = zext i16 %125 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %123, ptr noundef nonnull @.str.162, i32 noundef %conv84) #15
  %126 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %smu, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 8
  %Tvr_socLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 13
  %130 = ptrtoint ptr %Tvr_socLimit to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %Tvr_socLimit, align 2
  %conv90 = zext i16 %131 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %129, ptr noundef nonnull @.str.165, i32 noundef %conv90) #15
  %132 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %smu, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 8
  %FitLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 14
  %136 = ptrtoint ptr %FitLimit to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %FitLimit, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %135, ptr noundef nonnull @.str.168, i32 noundef %137) #15
  %138 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %smu, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 8
  %PpmPowerLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 15
  %142 = ptrtoint ptr %PpmPowerLimit to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %PpmPowerLimit, align 4
  %conv101 = zext i16 %143 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %141, ptr noundef nonnull @.str.171, i32 noundef %conv101) #15
  %144 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %smu, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 8
  %PpmTemperatureThreshold = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 16
  %148 = ptrtoint ptr %PpmTemperatureThreshold to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %PpmTemperatureThreshold, align 2
  %conv107 = zext i16 %149 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %147, ptr noundef nonnull @.str.174, i32 noundef %conv107) #15
  %150 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %smu, align 8
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 8
  %ThrottlerControlMask = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 17
  %154 = ptrtoint ptr %ThrottlerControlMask to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ThrottlerControlMask, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %153, ptr noundef nonnull @.str.177, i32 noundef %155) #15
  %156 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %smu, align 8
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 8
  %UlvVoltageOffsetGfx = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 18
  %160 = ptrtoint ptr %UlvVoltageOffsetGfx to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %UlvVoltageOffsetGfx, align 4
  %conv118 = zext i16 %161 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %159, ptr noundef nonnull @.str.180, i32 noundef %conv118) #15
  %162 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %smu, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 8
  %UlvPadding = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 19
  %166 = ptrtoint ptr %UlvPadding to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %UlvPadding, align 2
  %conv124 = zext i16 %167 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %165, ptr noundef nonnull @.str.183, i32 noundef %conv124) #15
  %168 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %smu, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 8
  %UlvGfxclkBypass = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 20
  %172 = ptrtoint ptr %UlvGfxclkBypass to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %UlvGfxclkBypass, align 4
  %conv130 = zext i8 %173 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %171, ptr noundef nonnull @.str.186, i32 noundef %conv130) #15
  %174 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %smu, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 8
  %Padding234 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 21
  %178 = ptrtoint ptr %Padding234 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %Padding234, align 1
  %conv137 = zext i8 %179 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %177, ptr noundef nonnull @.str.189, i32 noundef %conv137) #15
  %180 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %smu, align 8
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 8
  %arrayidx144 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 21, i32 1
  %184 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %185 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %183, ptr noundef nonnull @.str.192, i32 noundef %conv145) #15
  %186 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %smu, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 8
  %arrayidx152 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 21, i32 2
  %190 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx152, align 1
  %conv153 = zext i8 %191 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %189, ptr noundef nonnull @.str.195, i32 noundef %conv153) #15
  %192 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %smu, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 8
  %MinVoltageGfx = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 22
  %196 = ptrtoint ptr %MinVoltageGfx to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %MinVoltageGfx, align 4
  %conv159 = zext i16 %197 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %195, ptr noundef nonnull @.str.198, i32 noundef %conv159) #15
  %198 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %smu, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 8
  %MinVoltageSoc = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 23
  %202 = ptrtoint ptr %MinVoltageSoc to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %MinVoltageSoc, align 2
  %conv165 = zext i16 %203 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %201, ptr noundef nonnull @.str.201, i32 noundef %conv165) #15
  %204 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %smu, align 8
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 8
  %MaxVoltageGfx = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 24
  %208 = ptrtoint ptr %MaxVoltageGfx to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %MaxVoltageGfx, align 4
  %conv171 = zext i16 %209 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %207, ptr noundef nonnull @.str.204, i32 noundef %conv171) #15
  %210 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %smu, align 8
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 8
  %MaxVoltageSoc = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 25
  %214 = ptrtoint ptr %MaxVoltageSoc to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %MaxVoltageSoc, align 2
  %conv177 = zext i16 %215 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %213, ptr noundef nonnull @.str.207, i32 noundef %conv177) #15
  %216 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %smu, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 8
  %LoadLineResistanceGfx = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 26
  %220 = ptrtoint ptr %LoadLineResistanceGfx to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %LoadLineResistanceGfx, align 4
  %conv183 = zext i16 %221 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %219, ptr noundef nonnull @.str.210, i32 noundef %conv183) #15
  %222 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %smu, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 8
  %LoadLineResistanceSoc = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 27
  %226 = ptrtoint ptr %LoadLineResistanceSoc to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %LoadLineResistanceSoc, align 2
  %conv189 = zext i16 %227 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %225, ptr noundef nonnull @.str.213, i32 noundef %conv189) #15
  %228 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %smu, align 8
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 8
  %DpmDescriptor = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28
  %232 = ptrtoint ptr %DpmDescriptor to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %DpmDescriptor, align 4
  %conv196 = zext i8 %233 to i32
  %SnapToDiscrete = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 1
  %234 = ptrtoint ptr %SnapToDiscrete to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %SnapToDiscrete, align 1
  %conv199 = zext i8 %235 to i32
  %NumDiscreteLevels = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 2
  %236 = ptrtoint ptr %NumDiscreteLevels to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %NumDiscreteLevels, align 2
  %conv202 = zext i8 %237 to i32
  %padding = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 3
  %238 = ptrtoint ptr %padding to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %padding, align 1
  %conv205 = zext i8 %239 to i32
  %ConversionToAvfsClk = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 4
  %240 = ptrtoint ptr %ConversionToAvfsClk to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %ConversionToAvfsClk, align 4
  %b = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 4, i32 1
  %242 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %b, align 4
  %SsCurve = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 5
  %244 = ptrtoint ptr %SsCurve to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %SsCurve, align 4
  %b216 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 5, i32 1
  %246 = ptrtoint ptr %b216 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %b216, align 4
  %c = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 5, i32 2
  %248 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %c, align 4
  %SsFmin = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 6
  %250 = ptrtoint ptr %SsFmin to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %SsFmin, align 4
  %conv222 = zext i16 %251 to i32
  %Padding16 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 0, i32 7
  %252 = ptrtoint ptr %Padding16 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %Padding16, align 2
  %conv225 = zext i16 %253 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %231, ptr noundef nonnull @.str.216, i32 noundef %conv196, i32 noundef %conv199, i32 noundef %conv202, i32 noundef %conv205, i32 noundef %241, i32 noundef %243, i32 noundef %245, i32 noundef %247, i32 noundef %249, i32 noundef %conv222, i32 noundef %conv225) #15
  %254 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %smu, align 8
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 8
  %arrayidx232 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1
  %258 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx232, align 4
  %conv234 = zext i8 %259 to i32
  %SnapToDiscrete237 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 1
  %260 = ptrtoint ptr %SnapToDiscrete237 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %SnapToDiscrete237, align 1
  %conv238 = zext i8 %261 to i32
  %NumDiscreteLevels241 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 2
  %262 = ptrtoint ptr %NumDiscreteLevels241 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %NumDiscreteLevels241, align 2
  %conv242 = zext i8 %263 to i32
  %padding245 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 3
  %264 = ptrtoint ptr %padding245 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %padding245, align 1
  %conv246 = zext i8 %265 to i32
  %ConversionToAvfsClk249 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 4
  %266 = ptrtoint ptr %ConversionToAvfsClk249 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %ConversionToAvfsClk249, align 4
  %b254 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 4, i32 1
  %268 = ptrtoint ptr %b254 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %b254, align 4
  %SsCurve257 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 5
  %270 = ptrtoint ptr %SsCurve257 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %SsCurve257, align 4
  %b262 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 5, i32 1
  %272 = ptrtoint ptr %b262 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %b262, align 4
  %c266 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 5, i32 2
  %274 = ptrtoint ptr %c266 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %c266, align 4
  %SsFmin269 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 6
  %276 = ptrtoint ptr %SsFmin269 to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %SsFmin269, align 4
  %conv270 = zext i16 %277 to i32
  %Padding16273 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 1, i32 7
  %278 = ptrtoint ptr %Padding16273 to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %Padding16273, align 2
  %conv274 = zext i16 %279 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %257, ptr noundef nonnull @.str.219, i32 noundef %conv234, i32 noundef %conv238, i32 noundef %conv242, i32 noundef %conv246, i32 noundef %267, i32 noundef %269, i32 noundef %271, i32 noundef %273, i32 noundef %275, i32 noundef %conv270, i32 noundef %conv274) #15
  %280 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %smu, align 8
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %281, align 8
  %arrayidx281 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2
  %284 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx281, align 4
  %conv283 = zext i8 %285 to i32
  %SnapToDiscrete286 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 1
  %286 = ptrtoint ptr %SnapToDiscrete286 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %SnapToDiscrete286, align 1
  %conv287 = zext i8 %287 to i32
  %NumDiscreteLevels290 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 2
  %288 = ptrtoint ptr %NumDiscreteLevels290 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %NumDiscreteLevels290, align 2
  %conv291 = zext i8 %289 to i32
  %padding294 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 3
  %290 = ptrtoint ptr %padding294 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %padding294, align 1
  %conv295 = zext i8 %291 to i32
  %ConversionToAvfsClk298 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 4
  %292 = ptrtoint ptr %ConversionToAvfsClk298 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %ConversionToAvfsClk298, align 4
  %b303 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 4, i32 1
  %294 = ptrtoint ptr %b303 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %b303, align 4
  %SsCurve306 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 5
  %296 = ptrtoint ptr %SsCurve306 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %SsCurve306, align 4
  %b311 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 5, i32 1
  %298 = ptrtoint ptr %b311 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %b311, align 4
  %c315 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 5, i32 2
  %300 = ptrtoint ptr %c315 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %c315, align 4
  %SsFmin318 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 6
  %302 = ptrtoint ptr %SsFmin318 to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %SsFmin318, align 4
  %conv319 = zext i16 %303 to i32
  %Padding16322 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 2, i32 7
  %304 = ptrtoint ptr %Padding16322 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %Padding16322, align 2
  %conv323 = zext i16 %305 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %283, ptr noundef nonnull @.str.222, i32 noundef %conv283, i32 noundef %conv287, i32 noundef %conv291, i32 noundef %conv295, i32 noundef %293, i32 noundef %295, i32 noundef %297, i32 noundef %299, i32 noundef %301, i32 noundef %conv319, i32 noundef %conv323) #15
  %306 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %smu, align 8
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %307, align 8
  %arrayidx330 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3
  %310 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx330, align 4
  %conv332 = zext i8 %311 to i32
  %SnapToDiscrete335 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 1
  %312 = ptrtoint ptr %SnapToDiscrete335 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %SnapToDiscrete335, align 1
  %conv336 = zext i8 %313 to i32
  %NumDiscreteLevels339 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 2
  %314 = ptrtoint ptr %NumDiscreteLevels339 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %NumDiscreteLevels339, align 2
  %conv340 = zext i8 %315 to i32
  %padding343 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 3
  %316 = ptrtoint ptr %padding343 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %padding343, align 1
  %conv344 = zext i8 %317 to i32
  %ConversionToAvfsClk347 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 4
  %318 = ptrtoint ptr %ConversionToAvfsClk347 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %ConversionToAvfsClk347, align 4
  %b352 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 4, i32 1
  %320 = ptrtoint ptr %b352 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %b352, align 4
  %SsCurve355 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 5
  %322 = ptrtoint ptr %SsCurve355 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %SsCurve355, align 4
  %b360 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 5, i32 1
  %324 = ptrtoint ptr %b360 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %b360, align 4
  %c364 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 5, i32 2
  %326 = ptrtoint ptr %c364 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %c364, align 4
  %SsFmin367 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 6
  %328 = ptrtoint ptr %SsFmin367 to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %SsFmin367, align 4
  %conv368 = zext i16 %329 to i32
  %Padding16371 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 3, i32 7
  %330 = ptrtoint ptr %Padding16371 to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %Padding16371, align 2
  %conv372 = zext i16 %331 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %309, ptr noundef nonnull @.str.225, i32 noundef %conv332, i32 noundef %conv336, i32 noundef %conv340, i32 noundef %conv344, i32 noundef %319, i32 noundef %321, i32 noundef %323, i32 noundef %325, i32 noundef %327, i32 noundef %conv368, i32 noundef %conv372) #15
  %332 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %smu, align 8
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %333, align 8
  %arrayidx379 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4
  %336 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx379, align 4
  %conv381 = zext i8 %337 to i32
  %SnapToDiscrete384 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 1
  %338 = ptrtoint ptr %SnapToDiscrete384 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %SnapToDiscrete384, align 1
  %conv385 = zext i8 %339 to i32
  %NumDiscreteLevels388 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 2
  %340 = ptrtoint ptr %NumDiscreteLevels388 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %NumDiscreteLevels388, align 2
  %conv389 = zext i8 %341 to i32
  %padding392 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 3
  %342 = ptrtoint ptr %padding392 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %padding392, align 1
  %conv393 = zext i8 %343 to i32
  %ConversionToAvfsClk396 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 4
  %344 = ptrtoint ptr %ConversionToAvfsClk396 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %ConversionToAvfsClk396, align 4
  %b401 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 4, i32 1
  %346 = ptrtoint ptr %b401 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %b401, align 4
  %SsCurve404 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 5
  %348 = ptrtoint ptr %SsCurve404 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %SsCurve404, align 4
  %b409 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 5, i32 1
  %350 = ptrtoint ptr %b409 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %b409, align 4
  %c413 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 5, i32 2
  %352 = ptrtoint ptr %c413 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %c413, align 4
  %SsFmin416 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 6
  %354 = ptrtoint ptr %SsFmin416 to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %SsFmin416, align 4
  %conv417 = zext i16 %355 to i32
  %Padding16420 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 4, i32 7
  %356 = ptrtoint ptr %Padding16420 to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %Padding16420, align 2
  %conv421 = zext i16 %357 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %335, ptr noundef nonnull @.str.228, i32 noundef %conv381, i32 noundef %conv385, i32 noundef %conv389, i32 noundef %conv393, i32 noundef %345, i32 noundef %347, i32 noundef %349, i32 noundef %351, i32 noundef %353, i32 noundef %conv417, i32 noundef %conv421) #15
  %358 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %smu, align 8
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %359, align 8
  %arrayidx428 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5
  %362 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx428, align 4
  %conv430 = zext i8 %363 to i32
  %SnapToDiscrete433 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 1
  %364 = ptrtoint ptr %SnapToDiscrete433 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %SnapToDiscrete433, align 1
  %conv434 = zext i8 %365 to i32
  %NumDiscreteLevels437 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 2
  %366 = ptrtoint ptr %NumDiscreteLevels437 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %NumDiscreteLevels437, align 2
  %conv438 = zext i8 %367 to i32
  %padding441 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 3
  %368 = ptrtoint ptr %padding441 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %padding441, align 1
  %conv442 = zext i8 %369 to i32
  %ConversionToAvfsClk445 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 4
  %370 = ptrtoint ptr %ConversionToAvfsClk445 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %ConversionToAvfsClk445, align 4
  %b450 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 4, i32 1
  %372 = ptrtoint ptr %b450 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %b450, align 4
  %SsCurve453 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 5
  %374 = ptrtoint ptr %SsCurve453 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %SsCurve453, align 4
  %b458 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 5, i32 1
  %376 = ptrtoint ptr %b458 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %b458, align 4
  %c462 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 5, i32 2
  %378 = ptrtoint ptr %c462 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %c462, align 4
  %SsFmin465 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 6
  %380 = ptrtoint ptr %SsFmin465 to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %SsFmin465, align 4
  %conv466 = zext i16 %381 to i32
  %Padding16469 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 28, i32 5, i32 7
  %382 = ptrtoint ptr %Padding16469 to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %Padding16469, align 2
  %conv470 = zext i16 %383 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %361, ptr noundef nonnull @.str.231, i32 noundef %conv430, i32 noundef %conv434, i32 noundef %conv438, i32 noundef %conv442, i32 noundef %371, i32 noundef %373, i32 noundef %375, i32 noundef %377, i32 noundef %379, i32 noundef %conv466, i32 noundef %conv470) #15
  %384 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %smu, align 8
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %385, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %387, ptr noundef nonnull @.str.234) #15
  %388 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %smu, align 8
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %389, align 8
  %arrayidx485 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 0
  %392 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load2_noabort(i32 %392)
  %393 = load i16, ptr %arrayidx485, align 2
  %conv486 = zext i16 %393 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %391, ptr noundef nonnull @.str.237, i32 noundef 0, i32 noundef %conv486) #15
  %394 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %smu, align 8
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %395, align 8
  %arrayidx485.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 1
  %398 = ptrtoint ptr %arrayidx485.1 to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %arrayidx485.1, align 2
  %conv486.1 = zext i16 %399 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %397, ptr noundef nonnull @.str.237, i32 noundef 1, i32 noundef %conv486.1) #15
  %400 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %smu, align 8
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %401, align 8
  %arrayidx485.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 2
  %404 = ptrtoint ptr %arrayidx485.2 to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %arrayidx485.2, align 2
  %conv486.2 = zext i16 %405 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %403, ptr noundef nonnull @.str.237, i32 noundef 2, i32 noundef %conv486.2) #15
  %406 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %smu, align 8
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %407, align 8
  %arrayidx485.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 3
  %410 = ptrtoint ptr %arrayidx485.3 to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %arrayidx485.3, align 2
  %conv486.3 = zext i16 %411 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %409, ptr noundef nonnull @.str.237, i32 noundef 3, i32 noundef %conv486.3) #15
  %412 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %smu, align 8
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %413, align 8
  %arrayidx485.4 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 4
  %416 = ptrtoint ptr %arrayidx485.4 to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %arrayidx485.4, align 2
  %conv486.4 = zext i16 %417 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %415, ptr noundef nonnull @.str.237, i32 noundef 4, i32 noundef %conv486.4) #15
  %418 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %smu, align 8
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %419, align 8
  %arrayidx485.5 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 5
  %422 = ptrtoint ptr %arrayidx485.5 to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %arrayidx485.5, align 2
  %conv486.5 = zext i16 %423 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %421, ptr noundef nonnull @.str.237, i32 noundef 5, i32 noundef %conv486.5) #15
  %424 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %smu, align 8
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %425, align 8
  %arrayidx485.6 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 6
  %428 = ptrtoint ptr %arrayidx485.6 to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %arrayidx485.6, align 2
  %conv486.6 = zext i16 %429 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %427, ptr noundef nonnull @.str.237, i32 noundef 6, i32 noundef %conv486.6) #15
  %430 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %smu, align 8
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %431, align 8
  %arrayidx485.7 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 7
  %434 = ptrtoint ptr %arrayidx485.7 to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %arrayidx485.7, align 2
  %conv486.7 = zext i16 %435 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %433, ptr noundef nonnull @.str.237, i32 noundef 7, i32 noundef %conv486.7) #15
  %436 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %smu, align 8
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 8
  %arrayidx485.8 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 8
  %440 = ptrtoint ptr %arrayidx485.8 to i32
  call void @__asan_load2_noabort(i32 %440)
  %441 = load i16, ptr %arrayidx485.8, align 2
  %conv486.8 = zext i16 %441 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %439, ptr noundef nonnull @.str.237, i32 noundef 8, i32 noundef %conv486.8) #15
  %442 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %smu, align 8
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %443, align 8
  %arrayidx485.9 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 9
  %446 = ptrtoint ptr %arrayidx485.9 to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %arrayidx485.9, align 2
  %conv486.9 = zext i16 %447 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %445, ptr noundef nonnull @.str.237, i32 noundef 9, i32 noundef %conv486.9) #15
  %448 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %smu, align 8
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 8
  %arrayidx485.10 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 10
  %452 = ptrtoint ptr %arrayidx485.10 to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %arrayidx485.10, align 2
  %conv486.10 = zext i16 %453 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %451, ptr noundef nonnull @.str.237, i32 noundef 10, i32 noundef %conv486.10) #15
  %454 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %smu, align 8
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %455, align 8
  %arrayidx485.11 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 11
  %458 = ptrtoint ptr %arrayidx485.11 to i32
  call void @__asan_load2_noabort(i32 %458)
  %459 = load i16, ptr %arrayidx485.11, align 2
  %conv486.11 = zext i16 %459 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %457, ptr noundef nonnull @.str.237, i32 noundef 11, i32 noundef %conv486.11) #15
  %460 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %smu, align 8
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %461, align 8
  %arrayidx485.12 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 12
  %464 = ptrtoint ptr %arrayidx485.12 to i32
  call void @__asan_load2_noabort(i32 %464)
  %465 = load i16, ptr %arrayidx485.12, align 2
  %conv486.12 = zext i16 %465 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %463, ptr noundef nonnull @.str.237, i32 noundef 12, i32 noundef %conv486.12) #15
  %466 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %smu, align 8
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %467, align 8
  %arrayidx485.13 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 13
  %470 = ptrtoint ptr %arrayidx485.13 to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %arrayidx485.13, align 2
  %conv486.13 = zext i16 %471 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %469, ptr noundef nonnull @.str.237, i32 noundef 13, i32 noundef %conv486.13) #15
  %472 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %smu, align 8
  %474 = ptrtoint ptr %473 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %473, align 8
  %arrayidx485.14 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 14
  %476 = ptrtoint ptr %arrayidx485.14 to i32
  call void @__asan_load2_noabort(i32 %476)
  %477 = load i16, ptr %arrayidx485.14, align 2
  %conv486.14 = zext i16 %477 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %475, ptr noundef nonnull @.str.237, i32 noundef 14, i32 noundef %conv486.14) #15
  %478 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %smu, align 8
  %480 = ptrtoint ptr %479 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %479, align 8
  %arrayidx485.15 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 29, i32 15
  %482 = ptrtoint ptr %arrayidx485.15 to i32
  call void @__asan_load2_noabort(i32 %482)
  %483 = load i16, ptr %arrayidx485.15, align 2
  %conv486.15 = zext i16 %483 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %481, ptr noundef nonnull @.str.237, i32 noundef 15, i32 noundef %conv486.15) #15
  %484 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %smu, align 8
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %485, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %487, ptr noundef nonnull @.str.240) #15
  %488 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %smu, align 8
  %490 = ptrtoint ptr %489 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %489, align 8
  %arrayidx504 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 30, i32 0
  %492 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_load2_noabort(i32 %492)
  %493 = load i16, ptr %arrayidx504, align 2
  %conv505 = zext i16 %493 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %491, ptr noundef nonnull @.str.237, i32 noundef 0, i32 noundef %conv505) #15
  %494 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %smu, align 8
  %496 = ptrtoint ptr %495 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %495, align 8
  %arrayidx504.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 30, i32 1
  %498 = ptrtoint ptr %arrayidx504.1 to i32
  call void @__asan_load2_noabort(i32 %498)
  %499 = load i16, ptr %arrayidx504.1, align 2
  %conv505.1 = zext i16 %499 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %497, ptr noundef nonnull @.str.237, i32 noundef 1, i32 noundef %conv505.1) #15
  %500 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %smu, align 8
  %502 = ptrtoint ptr %501 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %501, align 8
  %arrayidx504.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 30, i32 2
  %504 = ptrtoint ptr %arrayidx504.2 to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %arrayidx504.2, align 2
  %conv505.2 = zext i16 %505 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %503, ptr noundef nonnull @.str.237, i32 noundef 2, i32 noundef %conv505.2) #15
  %506 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %smu, align 8
  %508 = ptrtoint ptr %507 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %507, align 8
  %arrayidx504.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 30, i32 3
  %510 = ptrtoint ptr %arrayidx504.3 to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %arrayidx504.3, align 2
  %conv505.3 = zext i16 %511 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %509, ptr noundef nonnull @.str.237, i32 noundef 3, i32 noundef %conv505.3) #15
  %512 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %smu, align 8
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %513, align 8
  %arrayidx504.4 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 30, i32 4
  %516 = ptrtoint ptr %arrayidx504.4 to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %arrayidx504.4, align 2
  %conv505.4 = zext i16 %517 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %515, ptr noundef nonnull @.str.237, i32 noundef 4, i32 noundef %conv505.4) #15
  %518 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %smu, align 8
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %519, align 8
  %arrayidx504.5 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 30, i32 5
  %522 = ptrtoint ptr %arrayidx504.5 to i32
  call void @__asan_load2_noabort(i32 %522)
  %523 = load i16, ptr %arrayidx504.5, align 2
  %conv505.5 = zext i16 %523 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %521, ptr noundef nonnull @.str.237, i32 noundef 5, i32 noundef %conv505.5) #15
  %524 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %smu, align 8
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %525, align 8
  %arrayidx504.6 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 30, i32 6
  %528 = ptrtoint ptr %arrayidx504.6 to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %arrayidx504.6, align 2
  %conv505.6 = zext i16 %529 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %527, ptr noundef nonnull @.str.237, i32 noundef 6, i32 noundef %conv505.6) #15
  %530 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %smu, align 8
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %531, align 8
  %arrayidx504.7 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 30, i32 7
  %534 = ptrtoint ptr %arrayidx504.7 to i32
  call void @__asan_load2_noabort(i32 %534)
  %535 = load i16, ptr %arrayidx504.7, align 2
  %conv505.7 = zext i16 %535 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %533, ptr noundef nonnull @.str.237, i32 noundef 7, i32 noundef %conv505.7) #15
  %536 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %smu, align 8
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %537, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %539, ptr noundef nonnull @.str.245) #15
  %540 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %smu, align 8
  %542 = ptrtoint ptr %541 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %541, align 8
  %arrayidx523 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 31, i32 0
  %544 = ptrtoint ptr %arrayidx523 to i32
  call void @__asan_load2_noabort(i32 %544)
  %545 = load i16, ptr %arrayidx523, align 2
  %conv524 = zext i16 %545 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %543, ptr noundef nonnull @.str.237, i32 noundef 0, i32 noundef %conv524) #15
  %546 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %smu, align 8
  %548 = ptrtoint ptr %547 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %547, align 8
  %arrayidx523.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 31, i32 1
  %550 = ptrtoint ptr %arrayidx523.1 to i32
  call void @__asan_load2_noabort(i32 %550)
  %551 = load i16, ptr %arrayidx523.1, align 2
  %conv524.1 = zext i16 %551 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %549, ptr noundef nonnull @.str.237, i32 noundef 1, i32 noundef %conv524.1) #15
  %552 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %smu, align 8
  %554 = ptrtoint ptr %553 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %553, align 8
  %arrayidx523.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 31, i32 2
  %556 = ptrtoint ptr %arrayidx523.2 to i32
  call void @__asan_load2_noabort(i32 %556)
  %557 = load i16, ptr %arrayidx523.2, align 2
  %conv524.2 = zext i16 %557 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %555, ptr noundef nonnull @.str.237, i32 noundef 2, i32 noundef %conv524.2) #15
  %558 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %smu, align 8
  %560 = ptrtoint ptr %559 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %559, align 8
  %arrayidx523.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 31, i32 3
  %562 = ptrtoint ptr %arrayidx523.3 to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %arrayidx523.3, align 2
  %conv524.3 = zext i16 %563 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %561, ptr noundef nonnull @.str.237, i32 noundef 3, i32 noundef %conv524.3) #15
  %564 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %smu, align 8
  %566 = ptrtoint ptr %565 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %565, align 8
  %arrayidx523.4 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 31, i32 4
  %568 = ptrtoint ptr %arrayidx523.4 to i32
  call void @__asan_load2_noabort(i32 %568)
  %569 = load i16, ptr %arrayidx523.4, align 2
  %conv524.4 = zext i16 %569 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %567, ptr noundef nonnull @.str.237, i32 noundef 4, i32 noundef %conv524.4) #15
  %570 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %smu, align 8
  %572 = ptrtoint ptr %571 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %571, align 8
  %arrayidx523.5 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 31, i32 5
  %574 = ptrtoint ptr %arrayidx523.5 to i32
  call void @__asan_load2_noabort(i32 %574)
  %575 = load i16, ptr %arrayidx523.5, align 2
  %conv524.5 = zext i16 %575 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %573, ptr noundef nonnull @.str.237, i32 noundef 5, i32 noundef %conv524.5) #15
  %576 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %smu, align 8
  %578 = ptrtoint ptr %577 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %577, align 8
  %arrayidx523.6 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 31, i32 6
  %580 = ptrtoint ptr %arrayidx523.6 to i32
  call void @__asan_load2_noabort(i32 %580)
  %581 = load i16, ptr %arrayidx523.6, align 2
  %conv524.6 = zext i16 %581 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %579, ptr noundef nonnull @.str.237, i32 noundef 6, i32 noundef %conv524.6) #15
  %582 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %smu, align 8
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %583, align 8
  %arrayidx523.7 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 31, i32 7
  %586 = ptrtoint ptr %arrayidx523.7 to i32
  call void @__asan_load2_noabort(i32 %586)
  %587 = load i16, ptr %arrayidx523.7, align 2
  %conv524.7 = zext i16 %587 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %585, ptr noundef nonnull @.str.237, i32 noundef 7, i32 noundef %conv524.7) #15
  %588 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %smu, align 8
  %590 = ptrtoint ptr %589 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %589, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %591, ptr noundef nonnull @.str.250) #15
  %592 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %smu, align 8
  %594 = ptrtoint ptr %593 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %593, align 8
  %arrayidx542 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 32, i32 0
  %596 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %arrayidx542, align 2
  %conv543 = zext i16 %597 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %595, ptr noundef nonnull @.str.237, i32 noundef 0, i32 noundef %conv543) #15
  %598 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %smu, align 8
  %600 = ptrtoint ptr %599 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %599, align 8
  %arrayidx542.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 32, i32 1
  %602 = ptrtoint ptr %arrayidx542.1 to i32
  call void @__asan_load2_noabort(i32 %602)
  %603 = load i16, ptr %arrayidx542.1, align 2
  %conv543.1 = zext i16 %603 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %601, ptr noundef nonnull @.str.237, i32 noundef 1, i32 noundef %conv543.1) #15
  %604 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %smu, align 8
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %605, align 8
  %arrayidx542.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 32, i32 2
  %608 = ptrtoint ptr %arrayidx542.2 to i32
  call void @__asan_load2_noabort(i32 %608)
  %609 = load i16, ptr %arrayidx542.2, align 2
  %conv543.2 = zext i16 %609 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %607, ptr noundef nonnull @.str.237, i32 noundef 2, i32 noundef %conv543.2) #15
  %610 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %smu, align 8
  %612 = ptrtoint ptr %611 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %611, align 8
  %arrayidx542.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 32, i32 3
  %614 = ptrtoint ptr %arrayidx542.3 to i32
  call void @__asan_load2_noabort(i32 %614)
  %615 = load i16, ptr %arrayidx542.3, align 2
  %conv543.3 = zext i16 %615 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %613, ptr noundef nonnull @.str.237, i32 noundef 3, i32 noundef %conv543.3) #15
  %616 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %smu, align 8
  %618 = ptrtoint ptr %617 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %617, align 8
  %arrayidx542.4 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 32, i32 4
  %620 = ptrtoint ptr %arrayidx542.4 to i32
  call void @__asan_load2_noabort(i32 %620)
  %621 = load i16, ptr %arrayidx542.4, align 2
  %conv543.4 = zext i16 %621 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %619, ptr noundef nonnull @.str.237, i32 noundef 4, i32 noundef %conv543.4) #15
  %622 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %smu, align 8
  %624 = ptrtoint ptr %623 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %623, align 8
  %arrayidx542.5 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 32, i32 5
  %626 = ptrtoint ptr %arrayidx542.5 to i32
  call void @__asan_load2_noabort(i32 %626)
  %627 = load i16, ptr %arrayidx542.5, align 2
  %conv543.5 = zext i16 %627 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %625, ptr noundef nonnull @.str.237, i32 noundef 5, i32 noundef %conv543.5) #15
  %628 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %smu, align 8
  %630 = ptrtoint ptr %629 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %629, align 8
  %arrayidx542.6 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 32, i32 6
  %632 = ptrtoint ptr %arrayidx542.6 to i32
  call void @__asan_load2_noabort(i32 %632)
  %633 = load i16, ptr %arrayidx542.6, align 2
  %conv543.6 = zext i16 %633 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %631, ptr noundef nonnull @.str.237, i32 noundef 6, i32 noundef %conv543.6) #15
  %634 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %smu, align 8
  %636 = ptrtoint ptr %635 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %635, align 8
  %arrayidx542.7 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 32, i32 7
  %638 = ptrtoint ptr %arrayidx542.7 to i32
  call void @__asan_load2_noabort(i32 %638)
  %639 = load i16, ptr %arrayidx542.7, align 2
  %conv543.7 = zext i16 %639 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %637, ptr noundef nonnull @.str.237, i32 noundef 7, i32 noundef %conv543.7) #15
  %640 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %smu, align 8
  %642 = ptrtoint ptr %641 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %641, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %643, ptr noundef nonnull @.str.255) #15
  %644 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %smu, align 8
  %646 = ptrtoint ptr %645 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %645, align 8
  %arrayidx561 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 33, i32 0
  %648 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_load2_noabort(i32 %648)
  %649 = load i16, ptr %arrayidx561, align 2
  %conv562 = zext i16 %649 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %647, ptr noundef nonnull @.str.237, i32 noundef 0, i32 noundef %conv562) #15
  %650 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %smu, align 8
  %652 = ptrtoint ptr %651 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %651, align 8
  %arrayidx561.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 33, i32 1
  %654 = ptrtoint ptr %arrayidx561.1 to i32
  call void @__asan_load2_noabort(i32 %654)
  %655 = load i16, ptr %arrayidx561.1, align 2
  %conv562.1 = zext i16 %655 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %653, ptr noundef nonnull @.str.237, i32 noundef 1, i32 noundef %conv562.1) #15
  %656 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %smu, align 8
  %658 = ptrtoint ptr %657 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %657, align 8
  %arrayidx561.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 33, i32 2
  %660 = ptrtoint ptr %arrayidx561.2 to i32
  call void @__asan_load2_noabort(i32 %660)
  %661 = load i16, ptr %arrayidx561.2, align 2
  %conv562.2 = zext i16 %661 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %659, ptr noundef nonnull @.str.237, i32 noundef 2, i32 noundef %conv562.2) #15
  %662 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %smu, align 8
  %664 = ptrtoint ptr %663 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %663, align 8
  %arrayidx561.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 33, i32 3
  %666 = ptrtoint ptr %arrayidx561.3 to i32
  call void @__asan_load2_noabort(i32 %666)
  %667 = load i16, ptr %arrayidx561.3, align 2
  %conv562.3 = zext i16 %667 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %665, ptr noundef nonnull @.str.237, i32 noundef 3, i32 noundef %conv562.3) #15
  %668 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %smu, align 8
  %670 = ptrtoint ptr %669 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %669, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %671, ptr noundef nonnull @.str.260) #15
  %672 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %smu, align 8
  %674 = ptrtoint ptr %673 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %673, align 8
  %arrayidx580 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 34, i32 0
  %676 = ptrtoint ptr %arrayidx580 to i32
  call void @__asan_load2_noabort(i32 %676)
  %677 = load i16, ptr %arrayidx580, align 2
  %conv581 = zext i16 %677 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %675, ptr noundef nonnull @.str.237, i32 noundef 0, i32 noundef %conv581) #15
  %678 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %smu, align 8
  %680 = ptrtoint ptr %679 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %679, align 8
  %arrayidx580.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 34, i32 1
  %682 = ptrtoint ptr %arrayidx580.1 to i32
  call void @__asan_load2_noabort(i32 %682)
  %683 = load i16, ptr %arrayidx580.1, align 2
  %conv581.1 = zext i16 %683 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %681, ptr noundef nonnull @.str.237, i32 noundef 1, i32 noundef %conv581.1) #15
  %684 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %smu, align 8
  %686 = ptrtoint ptr %685 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %685, align 8
  %arrayidx580.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 34, i32 2
  %688 = ptrtoint ptr %arrayidx580.2 to i32
  call void @__asan_load2_noabort(i32 %688)
  %689 = load i16, ptr %arrayidx580.2, align 2
  %conv581.2 = zext i16 %689 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %687, ptr noundef nonnull @.str.237, i32 noundef 2, i32 noundef %conv581.2) #15
  %690 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %smu, align 8
  %692 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %691, align 8
  %arrayidx580.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 34, i32 3
  %694 = ptrtoint ptr %arrayidx580.3 to i32
  call void @__asan_load2_noabort(i32 %694)
  %695 = load i16, ptr %arrayidx580.3, align 2
  %conv581.3 = zext i16 %695 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %693, ptr noundef nonnull @.str.237, i32 noundef 3, i32 noundef %conv581.3) #15
  %696 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %smu, align 8
  %698 = ptrtoint ptr %697 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %697, align 8
  %arrayidx580.4 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 34, i32 4
  %700 = ptrtoint ptr %arrayidx580.4 to i32
  call void @__asan_load2_noabort(i32 %700)
  %701 = load i16, ptr %arrayidx580.4, align 2
  %conv581.4 = zext i16 %701 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %699, ptr noundef nonnull @.str.237, i32 noundef 4, i32 noundef %conv581.4) #15
  %702 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %smu, align 8
  %704 = ptrtoint ptr %703 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %703, align 8
  %arrayidx580.5 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 34, i32 5
  %706 = ptrtoint ptr %arrayidx580.5 to i32
  call void @__asan_load2_noabort(i32 %706)
  %707 = load i16, ptr %arrayidx580.5, align 2
  %conv581.5 = zext i16 %707 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %705, ptr noundef nonnull @.str.237, i32 noundef 5, i32 noundef %conv581.5) #15
  %708 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %smu, align 8
  %710 = ptrtoint ptr %709 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %709, align 8
  %arrayidx580.6 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 34, i32 6
  %712 = ptrtoint ptr %arrayidx580.6 to i32
  call void @__asan_load2_noabort(i32 %712)
  %713 = load i16, ptr %arrayidx580.6, align 2
  %conv581.6 = zext i16 %713 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %711, ptr noundef nonnull @.str.237, i32 noundef 6, i32 noundef %conv581.6) #15
  %714 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %smu, align 8
  %716 = ptrtoint ptr %715 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %715, align 8
  %arrayidx580.7 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 34, i32 7
  %718 = ptrtoint ptr %arrayidx580.7 to i32
  call void @__asan_load2_noabort(i32 %718)
  %719 = load i16, ptr %arrayidx580.7, align 2
  %conv581.7 = zext i16 %719 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %717, ptr noundef nonnull @.str.237, i32 noundef 7, i32 noundef %conv581.7) #15
  %720 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %smu, align 8
  %722 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %721, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %723, ptr noundef nonnull @.str.265) #15
  %724 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %smu, align 8
  %726 = ptrtoint ptr %725 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %725, align 8
  %arrayidx599 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 36, i32 0
  %728 = ptrtoint ptr %arrayidx599 to i32
  call void @__asan_load2_noabort(i32 %728)
  %729 = load i16, ptr %arrayidx599, align 2
  %conv600 = zext i16 %729 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %727, ptr noundef nonnull @.str.268, i32 noundef 0, i32 noundef %conv600) #15
  %730 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %smu, align 8
  %732 = ptrtoint ptr %731 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %731, align 8
  %arrayidx599.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 36, i32 1
  %734 = ptrtoint ptr %arrayidx599.1 to i32
  call void @__asan_load2_noabort(i32 %734)
  %735 = load i16, ptr %arrayidx599.1, align 2
  %conv600.1 = zext i16 %735 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %733, ptr noundef nonnull @.str.268, i32 noundef 1, i32 noundef %conv600.1) #15
  %736 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %smu, align 8
  %738 = ptrtoint ptr %737 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %737, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %739, ptr noundef nonnull @.str.271) #15
  %740 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %smu, align 8
  %742 = ptrtoint ptr %741 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %741, align 8
  %arrayidx618 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 37, i32 0
  %744 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_load2_noabort(i32 %744)
  %745 = load i16, ptr %arrayidx618, align 2
  %conv619 = zext i16 %745 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %743, ptr noundef nonnull @.str.268, i32 noundef 0, i32 noundef %conv619) #15
  %746 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %smu, align 8
  %748 = ptrtoint ptr %747 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %747, align 8
  %arrayidx618.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 37, i32 1
  %750 = ptrtoint ptr %arrayidx618.1 to i32
  call void @__asan_load2_noabort(i32 %750)
  %751 = load i16, ptr %arrayidx618.1, align 2
  %conv619.1 = zext i16 %751 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %749, ptr noundef nonnull @.str.268, i32 noundef 1, i32 noundef %conv619.1) #15
  %752 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %smu, align 8
  %754 = ptrtoint ptr %753 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %753, align 8
  %GfxclkFidle = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 38
  %756 = ptrtoint ptr %GfxclkFidle to i32
  call void @__asan_load2_noabort(i32 %756)
  %757 = load i16, ptr %GfxclkFidle, align 4
  %conv628 = zext i16 %757 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %755, ptr noundef nonnull @.str.276, i32 noundef %conv628) #15
  %758 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %smu, align 8
  %760 = ptrtoint ptr %759 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %759, align 8
  %GfxclkSlewRate = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 39
  %762 = ptrtoint ptr %GfxclkSlewRate to i32
  call void @__asan_load2_noabort(i32 %762)
  %763 = load i16, ptr %GfxclkSlewRate, align 2
  %conv634 = zext i16 %763 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %761, ptr noundef nonnull @.str.279, i32 noundef %conv634) #15
  %764 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %smu, align 8
  %766 = ptrtoint ptr %765 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %765, align 8
  %Padding567 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 40
  %768 = ptrtoint ptr %Padding567 to i32
  call void @__asan_load1_noabort(i32 %768)
  %769 = load i8, ptr %Padding567, align 4
  %conv641 = zext i8 %769 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %767, ptr noundef nonnull @.str.282, i32 noundef %conv641) #15
  %770 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %smu, align 8
  %772 = ptrtoint ptr %771 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %771, align 8
  %arrayidx648 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 40, i32 1
  %774 = ptrtoint ptr %arrayidx648 to i32
  call void @__asan_load1_noabort(i32 %774)
  %775 = load i8, ptr %arrayidx648, align 1
  %conv649 = zext i8 %775 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %773, ptr noundef nonnull @.str.285, i32 noundef %conv649) #15
  %776 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %smu, align 8
  %778 = ptrtoint ptr %777 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %777, align 8
  %arrayidx656 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 40, i32 2
  %780 = ptrtoint ptr %arrayidx656 to i32
  call void @__asan_load1_noabort(i32 %780)
  %781 = load i8, ptr %arrayidx656, align 2
  %conv657 = zext i8 %781 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %779, ptr noundef nonnull @.str.288, i32 noundef %conv657) #15
  %782 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %smu, align 8
  %784 = ptrtoint ptr %783 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %783, align 8
  %arrayidx664 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 40, i32 3
  %786 = ptrtoint ptr %arrayidx664 to i32
  call void @__asan_load1_noabort(i32 %786)
  %787 = load i8, ptr %arrayidx664, align 1
  %conv665 = zext i8 %787 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %785, ptr noundef nonnull @.str.291, i32 noundef %conv665) #15
  %788 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %smu, align 8
  %790 = ptrtoint ptr %789 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %789, align 8
  %GfxclkDsMaxFreq = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 41
  %792 = ptrtoint ptr %GfxclkDsMaxFreq to i32
  call void @__asan_load2_noabort(i32 %792)
  %793 = load i16, ptr %GfxclkDsMaxFreq, align 4
  %conv671 = zext i16 %793 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %791, ptr noundef nonnull @.str.294, i32 noundef %conv671) #15
  %794 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %smu, align 8
  %796 = ptrtoint ptr %795 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %795, align 8
  %GfxclkSource = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 42
  %798 = ptrtoint ptr %GfxclkSource to i32
  call void @__asan_load1_noabort(i32 %798)
  %799 = load i8, ptr %GfxclkSource, align 2
  %conv677 = zext i8 %799 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %797, ptr noundef nonnull @.str.297, i32 noundef %conv677) #15
  %800 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %smu, align 8
  %802 = ptrtoint ptr %801 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %801, align 8
  %Padding456 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 43
  %804 = ptrtoint ptr %Padding456 to i32
  call void @__asan_load1_noabort(i32 %804)
  %805 = load i8, ptr %Padding456, align 1
  %conv683 = zext i8 %805 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %803, ptr noundef nonnull @.str.300, i32 noundef %conv683) #15
  %806 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %smu, align 8
  %808 = ptrtoint ptr %807 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %807, align 8
  %EnableTdpm = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 44
  %810 = ptrtoint ptr %EnableTdpm to i32
  call void @__asan_load2_noabort(i32 %810)
  %811 = load i16, ptr %EnableTdpm, align 4
  %conv689 = zext i16 %811 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %809, ptr noundef nonnull @.str.303, i32 noundef %conv689) #15
  %812 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %smu, align 8
  %814 = ptrtoint ptr %813 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %813, align 8
  %TdpmHighHystTemperature = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 45
  %816 = ptrtoint ptr %TdpmHighHystTemperature to i32
  call void @__asan_load2_noabort(i32 %816)
  %817 = load i16, ptr %TdpmHighHystTemperature, align 2
  %conv695 = zext i16 %817 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %815, ptr noundef nonnull @.str.306, i32 noundef %conv695) #15
  %818 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %smu, align 8
  %820 = ptrtoint ptr %819 to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %819, align 8
  %TdpmLowHystTemperature = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 46
  %822 = ptrtoint ptr %TdpmLowHystTemperature to i32
  call void @__asan_load2_noabort(i32 %822)
  %823 = load i16, ptr %TdpmLowHystTemperature, align 4
  %conv701 = zext i16 %823 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %821, ptr noundef nonnull @.str.309, i32 noundef %conv701) #15
  %824 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %smu, align 8
  %826 = ptrtoint ptr %825 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %825, align 8
  %GfxclkFreqHighTempLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 47
  %828 = ptrtoint ptr %GfxclkFreqHighTempLimit to i32
  call void @__asan_load2_noabort(i32 %828)
  %829 = load i16, ptr %GfxclkFreqHighTempLimit, align 2
  %conv707 = zext i16 %829 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %827, ptr noundef nonnull @.str.312, i32 noundef %conv707) #15
  %830 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %smu, align 8
  %832 = ptrtoint ptr %831 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %831, align 8
  %FanStopTemp = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 48
  %834 = ptrtoint ptr %FanStopTemp to i32
  call void @__asan_load2_noabort(i32 %834)
  %835 = load i16, ptr %FanStopTemp, align 4
  %conv713 = zext i16 %835 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %833, ptr noundef nonnull @.str.315, i32 noundef %conv713) #15
  %836 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %smu, align 8
  %838 = ptrtoint ptr %837 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %837, align 8
  %FanStartTemp = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 49
  %840 = ptrtoint ptr %FanStartTemp to i32
  call void @__asan_load2_noabort(i32 %840)
  %841 = load i16, ptr %FanStartTemp, align 2
  %conv719 = zext i16 %841 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %839, ptr noundef nonnull @.str.318, i32 noundef %conv719) #15
  %842 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %smu, align 8
  %844 = ptrtoint ptr %843 to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %843, align 8
  %FanGainEdge = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 50
  %846 = ptrtoint ptr %FanGainEdge to i32
  call void @__asan_load2_noabort(i32 %846)
  %847 = load i16, ptr %FanGainEdge, align 4
  %conv725 = zext i16 %847 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %845, ptr noundef nonnull @.str.321, i32 noundef %conv725) #15
  %848 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %smu, align 8
  %850 = ptrtoint ptr %849 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %849, align 8
  %FanGainHotspot = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 51
  %852 = ptrtoint ptr %FanGainHotspot to i32
  call void @__asan_load2_noabort(i32 %852)
  %853 = load i16, ptr %FanGainHotspot, align 2
  %conv731 = zext i16 %853 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %851, ptr noundef nonnull @.str.324, i32 noundef %conv731) #15
  %854 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %smu, align 8
  %856 = ptrtoint ptr %855 to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %855, align 8
  %FanGainVrGfx = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 52
  %858 = ptrtoint ptr %FanGainVrGfx to i32
  call void @__asan_load2_noabort(i32 %858)
  %859 = load i16, ptr %FanGainVrGfx, align 4
  %conv737 = zext i16 %859 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %857, ptr noundef nonnull @.str.327, i32 noundef %conv737) #15
  %860 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %smu, align 8
  %862 = ptrtoint ptr %861 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %861, align 8
  %FanGainVrSoc = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 53
  %864 = ptrtoint ptr %FanGainVrSoc to i32
  call void @__asan_load2_noabort(i32 %864)
  %865 = load i16, ptr %FanGainVrSoc, align 2
  %conv743 = zext i16 %865 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %863, ptr noundef nonnull @.str.330, i32 noundef %conv743) #15
  %866 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %smu, align 8
  %868 = ptrtoint ptr %867 to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %867, align 8
  %FanGainVrMem = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 54
  %870 = ptrtoint ptr %FanGainVrMem to i32
  call void @__asan_load2_noabort(i32 %870)
  %871 = load i16, ptr %FanGainVrMem, align 4
  %conv749 = zext i16 %871 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %869, ptr noundef nonnull @.str.333, i32 noundef %conv749) #15
  %872 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %smu, align 8
  %874 = ptrtoint ptr %873 to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %873, align 8
  %FanGainHbm = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 55
  %876 = ptrtoint ptr %FanGainHbm to i32
  call void @__asan_load2_noabort(i32 %876)
  %877 = load i16, ptr %FanGainHbm, align 2
  %conv755 = zext i16 %877 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %875, ptr noundef nonnull @.str.336, i32 noundef %conv755) #15
  %878 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %smu, align 8
  %880 = ptrtoint ptr %879 to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %879, align 8
  %FanPwmMin = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 56
  %882 = ptrtoint ptr %FanPwmMin to i32
  call void @__asan_load2_noabort(i32 %882)
  %883 = load i16, ptr %FanPwmMin, align 4
  %conv761 = zext i16 %883 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %881, ptr noundef nonnull @.str.339, i32 noundef %conv761) #15
  %884 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %smu, align 8
  %886 = ptrtoint ptr %885 to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %885, align 8
  %FanAcousticLimitRpm = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 57
  %888 = ptrtoint ptr %FanAcousticLimitRpm to i32
  call void @__asan_load2_noabort(i32 %888)
  %889 = load i16, ptr %FanAcousticLimitRpm, align 2
  %conv767 = zext i16 %889 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %887, ptr noundef nonnull @.str.342, i32 noundef %conv767) #15
  %890 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %smu, align 8
  %892 = ptrtoint ptr %891 to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %891, align 8
  %FanThrottlingRpm = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 58
  %894 = ptrtoint ptr %FanThrottlingRpm to i32
  call void @__asan_load2_noabort(i32 %894)
  %895 = load i16, ptr %FanThrottlingRpm, align 4
  %conv773 = zext i16 %895 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %893, ptr noundef nonnull @.str.345, i32 noundef %conv773) #15
  %896 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %smu, align 8
  %898 = ptrtoint ptr %897 to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %897, align 8
  %FanMaximumRpm = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 59
  %900 = ptrtoint ptr %FanMaximumRpm to i32
  call void @__asan_load2_noabort(i32 %900)
  %901 = load i16, ptr %FanMaximumRpm, align 2
  %conv779 = zext i16 %901 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %899, ptr noundef nonnull @.str.348, i32 noundef %conv779) #15
  %902 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %smu, align 8
  %904 = ptrtoint ptr %903 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %903, align 8
  %FanTargetTemperature = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 60
  %906 = ptrtoint ptr %FanTargetTemperature to i32
  call void @__asan_load2_noabort(i32 %906)
  %907 = load i16, ptr %FanTargetTemperature, align 4
  %conv785 = zext i16 %907 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %905, ptr noundef nonnull @.str.351, i32 noundef %conv785) #15
  %908 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %smu, align 8
  %910 = ptrtoint ptr %909 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %909, align 8
  %FanTargetGfxclk = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 61
  %912 = ptrtoint ptr %FanTargetGfxclk to i32
  call void @__asan_load2_noabort(i32 %912)
  %913 = load i16, ptr %FanTargetGfxclk, align 2
  %conv791 = zext i16 %913 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %911, ptr noundef nonnull @.str.354, i32 noundef %conv791) #15
  %914 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %smu, align 8
  %916 = ptrtoint ptr %915 to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %915, align 8
  %FanZeroRpmEnable = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 62
  %918 = ptrtoint ptr %FanZeroRpmEnable to i32
  call void @__asan_load1_noabort(i32 %918)
  %919 = load i8, ptr %FanZeroRpmEnable, align 4
  %conv797 = zext i8 %919 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %917, ptr noundef nonnull @.str.357, i32 noundef %conv797) #15
  %920 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %smu, align 8
  %922 = ptrtoint ptr %921 to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %921, align 8
  %FanTachEdgePerRev = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 63
  %924 = ptrtoint ptr %FanTachEdgePerRev to i32
  call void @__asan_load1_noabort(i32 %924)
  %925 = load i8, ptr %FanTachEdgePerRev, align 1
  %conv803 = zext i8 %925 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %923, ptr noundef nonnull @.str.360, i32 noundef %conv803) #15
  %926 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %smu, align 8
  %928 = ptrtoint ptr %927 to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %927, align 8
  %FanTempInputSelect = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 64
  %930 = ptrtoint ptr %FanTempInputSelect to i32
  call void @__asan_load1_noabort(i32 %930)
  %931 = load i8, ptr %FanTempInputSelect, align 2
  %conv809 = zext i8 %931 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %929, ptr noundef nonnull @.str.363, i32 noundef %conv809) #15
  %932 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %smu, align 8
  %934 = ptrtoint ptr %933 to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %933, align 8
  %FuzzyFan_ErrorSetDelta = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 66
  %936 = ptrtoint ptr %FuzzyFan_ErrorSetDelta to i32
  call void @__asan_load2_noabort(i32 %936)
  %937 = load i16, ptr %FuzzyFan_ErrorSetDelta, align 4
  %conv815 = sext i16 %937 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %935, ptr noundef nonnull @.str.366, i32 noundef %conv815) #15
  %938 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %smu, align 8
  %940 = ptrtoint ptr %939 to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %939, align 8
  %FuzzyFan_ErrorRateSetDelta = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 67
  %942 = ptrtoint ptr %FuzzyFan_ErrorRateSetDelta to i32
  call void @__asan_load2_noabort(i32 %942)
  %943 = load i16, ptr %FuzzyFan_ErrorRateSetDelta, align 2
  %conv821 = sext i16 %943 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %941, ptr noundef nonnull @.str.369, i32 noundef %conv821) #15
  %944 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load ptr, ptr %smu, align 8
  %946 = ptrtoint ptr %945 to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load ptr, ptr %945, align 8
  %FuzzyFan_PwmSetDelta = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 68
  %948 = ptrtoint ptr %FuzzyFan_PwmSetDelta to i32
  call void @__asan_load2_noabort(i32 %948)
  %949 = load i16, ptr %FuzzyFan_PwmSetDelta, align 4
  %conv827 = sext i16 %949 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %947, ptr noundef nonnull @.str.372, i32 noundef %conv827) #15
  %950 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load ptr, ptr %smu, align 8
  %952 = ptrtoint ptr %951 to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load ptr, ptr %951, align 8
  %FuzzyFan_Reserved = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 69
  %954 = ptrtoint ptr %FuzzyFan_Reserved to i32
  call void @__asan_load2_noabort(i32 %954)
  %955 = load i16, ptr %FuzzyFan_Reserved, align 2
  %conv833 = zext i16 %955 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %953, ptr noundef nonnull @.str.375, i32 noundef %conv833) #15
  %956 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %smu, align 8
  %958 = ptrtoint ptr %957 to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %957, align 8
  %OverrideAvfsGb = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 70
  %960 = ptrtoint ptr %OverrideAvfsGb to i32
  call void @__asan_load1_noabort(i32 %960)
  %961 = load i8, ptr %OverrideAvfsGb, align 4
  %conv840 = zext i8 %961 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %959, ptr noundef nonnull @.str.378, i32 noundef %conv840) #15
  %962 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %smu, align 8
  %964 = ptrtoint ptr %963 to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %963, align 8
  %arrayidx847 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 70, i32 1
  %966 = ptrtoint ptr %arrayidx847 to i32
  call void @__asan_load1_noabort(i32 %966)
  %967 = load i8, ptr %arrayidx847, align 1
  %conv848 = zext i8 %967 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %965, ptr noundef nonnull @.str.381, i32 noundef %conv848) #15
  %968 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %smu, align 8
  %970 = ptrtoint ptr %969 to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %969, align 8
  %Padding8_Avfs = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 71
  %972 = ptrtoint ptr %Padding8_Avfs to i32
  call void @__asan_load1_noabort(i32 %972)
  %973 = load i8, ptr %Padding8_Avfs, align 2
  %conv855 = zext i8 %973 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %971, ptr noundef nonnull @.str.384, i32 noundef %conv855) #15
  %974 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %smu, align 8
  %976 = ptrtoint ptr %975 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %975, align 8
  %arrayidx862 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 71, i32 1
  %978 = ptrtoint ptr %arrayidx862 to i32
  call void @__asan_load1_noabort(i32 %978)
  %979 = load i8, ptr %arrayidx862, align 1
  %conv863 = zext i8 %979 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %977, ptr noundef nonnull @.str.387, i32 noundef %conv863) #15
  %980 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %smu, align 8
  %982 = ptrtoint ptr %981 to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %981, align 8
  %dBtcGbGfxPll = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 73
  %984 = ptrtoint ptr %dBtcGbGfxPll to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load i32, ptr %dBtcGbGfxPll, align 4
  %b871 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 73, i32 1
  %986 = ptrtoint ptr %b871 to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load i32, ptr %b871, align 4
  %c873 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 73, i32 2
  %988 = ptrtoint ptr %c873 to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load i32, ptr %c873, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %983, ptr noundef nonnull @.str.390, i32 noundef %985, i32 noundef %987, i32 noundef %989) #15
  %990 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load ptr, ptr %smu, align 8
  %992 = ptrtoint ptr %991 to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %991, align 8
  %dBtcGbGfxAfll = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 74
  %994 = ptrtoint ptr %dBtcGbGfxAfll to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load i32, ptr %dBtcGbGfxAfll, align 4
  %b881 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 74, i32 1
  %996 = ptrtoint ptr %b881 to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load i32, ptr %b881, align 4
  %c883 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 74, i32 2
  %998 = ptrtoint ptr %c883 to i32
  call void @__asan_load4_noabort(i32 %998)
  %999 = load i32, ptr %c883, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %993, ptr noundef nonnull @.str.393, i32 noundef %995, i32 noundef %997, i32 noundef %999) #15
  %1000 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load ptr, ptr %smu, align 8
  %1002 = ptrtoint ptr %1001 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load ptr, ptr %1001, align 8
  %dBtcGbSoc = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 75
  %1004 = ptrtoint ptr %dBtcGbSoc to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load i32, ptr %dBtcGbSoc, align 4
  %b891 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 75, i32 1
  %1006 = ptrtoint ptr %b891 to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load i32, ptr %b891, align 4
  %c893 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 75, i32 2
  %1008 = ptrtoint ptr %c893 to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load i32, ptr %c893, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1003, ptr noundef nonnull @.str.396, i32 noundef %1005, i32 noundef %1007, i32 noundef %1009) #15
  %1010 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %smu, align 8
  %1012 = ptrtoint ptr %1011 to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %1011, align 8
  %qAgingGb = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 76
  %1014 = ptrtoint ptr %qAgingGb to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load i32, ptr %qAgingGb, align 4
  %b903 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 76, i32 0, i32 1
  %1016 = ptrtoint ptr %b903 to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load i32, ptr %b903, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1013, ptr noundef nonnull @.str.399, i32 noundef %1015, i32 noundef %1017) #15
  %1018 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %smu, align 8
  %1020 = ptrtoint ptr %1019 to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %1019, align 8
  %arrayidx910 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 76, i32 1
  %1022 = ptrtoint ptr %arrayidx910 to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load i32, ptr %arrayidx910, align 4
  %b914 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 76, i32 1, i32 1
  %1024 = ptrtoint ptr %b914 to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load i32, ptr %b914, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1021, ptr noundef nonnull @.str.402, i32 noundef %1023, i32 noundef %1025) #15
  %1026 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %smu, align 8
  %1028 = ptrtoint ptr %1027 to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %1027, align 8
  %qStaticVoltageOffset = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 77
  %1030 = ptrtoint ptr %qStaticVoltageOffset to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load i32, ptr %qStaticVoltageOffset, align 4
  %b924 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 77, i32 0, i32 1
  %1032 = ptrtoint ptr %b924 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load i32, ptr %b924, align 4
  %c927 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 77, i32 0, i32 2
  %1034 = ptrtoint ptr %c927 to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load i32, ptr %c927, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1029, ptr noundef nonnull @.str.405, i32 noundef %1031, i32 noundef %1033, i32 noundef %1035) #15
  %1036 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %smu, align 8
  %1038 = ptrtoint ptr %1037 to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %1037, align 8
  %arrayidx934 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 77, i32 1
  %1040 = ptrtoint ptr %arrayidx934 to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load i32, ptr %arrayidx934, align 4
  %b938 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 77, i32 1, i32 1
  %1042 = ptrtoint ptr %b938 to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load i32, ptr %b938, align 4
  %c941 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 77, i32 1, i32 2
  %1044 = ptrtoint ptr %c941 to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load i32, ptr %c941, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1039, ptr noundef nonnull @.str.408, i32 noundef %1041, i32 noundef %1043, i32 noundef %1045) #15
  %1046 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %smu, align 8
  %1048 = ptrtoint ptr %1047 to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %1047, align 8
  %DcTol = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 78
  %1050 = ptrtoint ptr %DcTol to i32
  call void @__asan_load2_noabort(i32 %1050)
  %1051 = load i16, ptr %DcTol, align 4
  %conv948 = zext i16 %1051 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1049, ptr noundef nonnull @.str.411, i32 noundef %conv948) #15
  %1052 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %smu, align 8
  %1054 = ptrtoint ptr %1053 to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %1053, align 8
  %arrayidx955 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 78, i32 1
  %1056 = ptrtoint ptr %arrayidx955 to i32
  call void @__asan_load2_noabort(i32 %1056)
  %1057 = load i16, ptr %arrayidx955, align 2
  %conv956 = zext i16 %1057 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1055, ptr noundef nonnull @.str.414, i32 noundef %conv956) #15
  %1058 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %smu, align 8
  %1060 = ptrtoint ptr %1059 to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load ptr, ptr %1059, align 8
  %DcBtcEnabled = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 79
  %1062 = ptrtoint ptr %DcBtcEnabled to i32
  call void @__asan_load1_noabort(i32 %1062)
  %1063 = load i8, ptr %DcBtcEnabled, align 4
  %conv963 = zext i8 %1063 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1061, ptr noundef nonnull @.str.417, i32 noundef %conv963) #15
  %1064 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load ptr, ptr %smu, align 8
  %1066 = ptrtoint ptr %1065 to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %1065, align 8
  %arrayidx970 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 79, i32 1
  %1068 = ptrtoint ptr %arrayidx970 to i32
  call void @__asan_load1_noabort(i32 %1068)
  %1069 = load i8, ptr %arrayidx970, align 1
  %conv971 = zext i8 %1069 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1067, ptr noundef nonnull @.str.420, i32 noundef %conv971) #15
  %1070 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %smu, align 8
  %1072 = ptrtoint ptr %1071 to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load ptr, ptr %1071, align 8
  %Padding8_GfxBtc = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 80
  %1074 = ptrtoint ptr %Padding8_GfxBtc to i32
  call void @__asan_load1_noabort(i32 %1074)
  %1075 = load i8, ptr %Padding8_GfxBtc, align 2
  %conv978 = zext i8 %1075 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1073, ptr noundef nonnull @.str.423, i32 noundef %conv978) #15
  %1076 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %smu, align 8
  %1078 = ptrtoint ptr %1077 to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %1077, align 8
  %arrayidx985 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 80, i32 1
  %1080 = ptrtoint ptr %arrayidx985 to i32
  call void @__asan_load1_noabort(i32 %1080)
  %1081 = load i8, ptr %arrayidx985, align 1
  %conv986 = zext i8 %1081 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1079, ptr noundef nonnull @.str.426, i32 noundef %conv986) #15
  %1082 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load ptr, ptr %smu, align 8
  %1084 = ptrtoint ptr %1083 to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %1083, align 8
  %DcBtcMin = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 81
  %1086 = ptrtoint ptr %DcBtcMin to i32
  call void @__asan_load2_noabort(i32 %1086)
  %1087 = load i16, ptr %DcBtcMin, align 4
  %conv993 = zext i16 %1087 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1085, ptr noundef nonnull @.str.429, i32 noundef %conv993) #15
  %1088 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %smu, align 8
  %1090 = ptrtoint ptr %1089 to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load ptr, ptr %1089, align 8
  %arrayidx1000 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 81, i32 1
  %1092 = ptrtoint ptr %arrayidx1000 to i32
  call void @__asan_load2_noabort(i32 %1092)
  %1093 = load i16, ptr %arrayidx1000, align 2
  %conv1001 = zext i16 %1093 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1091, ptr noundef nonnull @.str.432, i32 noundef %conv1001) #15
  %1094 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load ptr, ptr %smu, align 8
  %1096 = ptrtoint ptr %1095 to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load ptr, ptr %1095, align 8
  %DcBtcMax = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 82
  %1098 = ptrtoint ptr %DcBtcMax to i32
  call void @__asan_load2_noabort(i32 %1098)
  %1099 = load i16, ptr %DcBtcMax, align 4
  %conv1008 = zext i16 %1099 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1097, ptr noundef nonnull @.str.435, i32 noundef %conv1008) #15
  %1100 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load ptr, ptr %smu, align 8
  %1102 = ptrtoint ptr %1101 to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %1101, align 8
  %arrayidx1015 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 82, i32 1
  %1104 = ptrtoint ptr %arrayidx1015 to i32
  call void @__asan_load2_noabort(i32 %1104)
  %1105 = load i16, ptr %arrayidx1015, align 2
  %conv1016 = zext i16 %1105 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1103, ptr noundef nonnull @.str.438, i32 noundef %conv1016) #15
  %1106 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %smu, align 8
  %1108 = ptrtoint ptr %1107 to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %1107, align 8
  %DcBtcGb = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 83
  %1110 = ptrtoint ptr %DcBtcGb to i32
  call void @__asan_load2_noabort(i32 %1110)
  %1111 = load i16, ptr %DcBtcGb, align 4
  %conv1023 = zext i16 %1111 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1109, ptr noundef nonnull @.str.441, i32 noundef %conv1023) #15
  %1112 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %smu, align 8
  %1114 = ptrtoint ptr %1113 to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load ptr, ptr %1113, align 8
  %arrayidx1030 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 83, i32 1
  %1116 = ptrtoint ptr %arrayidx1030 to i32
  call void @__asan_load2_noabort(i32 %1116)
  %1117 = load i16, ptr %arrayidx1030, align 2
  %conv1031 = zext i16 %1117 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1115, ptr noundef nonnull @.str.444, i32 noundef %conv1031) #15
  %1118 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load ptr, ptr %smu, align 8
  %1120 = ptrtoint ptr %1119 to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %1119, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1121, ptr noundef nonnull @.str.447) #15
  %1122 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %smu, align 8
  %1124 = ptrtoint ptr %1123 to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load ptr, ptr %1123, align 8
  %arrayidx1046 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 84, i32 0
  %1126 = ptrtoint ptr %arrayidx1046 to i32
  call void @__asan_load1_noabort(i32 %1126)
  %1127 = load i8, ptr %arrayidx1046, align 1
  %conv1047 = zext i8 %1127 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1125, ptr noundef nonnull @.str.268, i32 noundef 0, i32 noundef %conv1047) #15
  %1128 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %smu, align 8
  %1130 = ptrtoint ptr %1129 to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load ptr, ptr %1129, align 8
  %arrayidx1046.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 84, i32 1
  %1132 = ptrtoint ptr %arrayidx1046.1 to i32
  call void @__asan_load1_noabort(i32 %1132)
  %1133 = load i8, ptr %arrayidx1046.1, align 1
  %conv1047.1 = zext i8 %1133 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1131, ptr noundef nonnull @.str.268, i32 noundef 1, i32 noundef %conv1047.1) #15
  %1134 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %smu, align 8
  %1136 = ptrtoint ptr %1135 to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %1135, align 8
  %XgmiDpmSpare = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 85
  %1138 = ptrtoint ptr %XgmiDpmSpare to i32
  call void @__asan_load1_noabort(i32 %1138)
  %1139 = load i8, ptr %XgmiDpmSpare, align 2
  %conv1057 = zext i8 %1139 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1137, ptr noundef nonnull @.str.452, i32 noundef %conv1057) #15
  %1140 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %smu, align 8
  %1142 = ptrtoint ptr %1141 to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %1141, align 8
  %arrayidx1064 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 85, i32 1
  %1144 = ptrtoint ptr %arrayidx1064 to i32
  call void @__asan_load1_noabort(i32 %1144)
  %1145 = load i8, ptr %arrayidx1064, align 1
  %conv1065 = zext i8 %1145 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1143, ptr noundef nonnull @.str.455, i32 noundef %conv1065) #15
  %1146 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %smu, align 8
  %1148 = ptrtoint ptr %1147 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %1147, align 8
  %VDDGFX_TVmin = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 86
  %1150 = ptrtoint ptr %VDDGFX_TVmin to i32
  call void @__asan_load2_noabort(i32 %1150)
  %1151 = load i16, ptr %VDDGFX_TVmin, align 4
  %conv1071 = zext i16 %1151 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1149, ptr noundef nonnull @.str.458, i32 noundef %conv1071) #15
  %1152 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load ptr, ptr %smu, align 8
  %1154 = ptrtoint ptr %1153 to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load ptr, ptr %1153, align 8
  %VDDSOC_TVmin = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 87
  %1156 = ptrtoint ptr %VDDSOC_TVmin to i32
  call void @__asan_load2_noabort(i32 %1156)
  %1157 = load i16, ptr %VDDSOC_TVmin, align 2
  %conv1077 = zext i16 %1157 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1155, ptr noundef nonnull @.str.461, i32 noundef %conv1077) #15
  %1158 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load ptr, ptr %smu, align 8
  %1160 = ptrtoint ptr %1159 to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %1159, align 8
  %VDDGFX_Vmin_HiTemp = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 88
  %1162 = ptrtoint ptr %VDDGFX_Vmin_HiTemp to i32
  call void @__asan_load2_noabort(i32 %1162)
  %1163 = load i16, ptr %VDDGFX_Vmin_HiTemp, align 4
  %conv1083 = zext i16 %1163 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1161, ptr noundef nonnull @.str.464, i32 noundef %conv1083) #15
  %1164 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load ptr, ptr %smu, align 8
  %1166 = ptrtoint ptr %1165 to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load ptr, ptr %1165, align 8
  %VDDGFX_Vmin_LoTemp = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 89
  %1168 = ptrtoint ptr %VDDGFX_Vmin_LoTemp to i32
  call void @__asan_load2_noabort(i32 %1168)
  %1169 = load i16, ptr %VDDGFX_Vmin_LoTemp, align 2
  %conv1089 = zext i16 %1169 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1167, ptr noundef nonnull @.str.467, i32 noundef %conv1089) #15
  %1170 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1170)
  %1171 = load ptr, ptr %smu, align 8
  %1172 = ptrtoint ptr %1171 to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %1171, align 8
  %VDDSOC_Vmin_HiTemp = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 90
  %1174 = ptrtoint ptr %VDDSOC_Vmin_HiTemp to i32
  call void @__asan_load2_noabort(i32 %1174)
  %1175 = load i16, ptr %VDDSOC_Vmin_HiTemp, align 4
  %conv1095 = zext i16 %1175 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1173, ptr noundef nonnull @.str.470, i32 noundef %conv1095) #15
  %1176 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load ptr, ptr %smu, align 8
  %1178 = ptrtoint ptr %1177 to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load ptr, ptr %1177, align 8
  %VDDSOC_Vmin_LoTemp = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 91
  %1180 = ptrtoint ptr %VDDSOC_Vmin_LoTemp to i32
  call void @__asan_load2_noabort(i32 %1180)
  %1181 = load i16, ptr %VDDSOC_Vmin_LoTemp, align 2
  %conv1101 = zext i16 %1181 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1179, ptr noundef nonnull @.str.473, i32 noundef %conv1101) #15
  %1182 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %smu, align 8
  %1184 = ptrtoint ptr %1183 to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %1183, align 8
  %VDDGFX_TVminHystersis = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 92
  %1186 = ptrtoint ptr %VDDGFX_TVminHystersis to i32
  call void @__asan_load2_noabort(i32 %1186)
  %1187 = load i16, ptr %VDDGFX_TVminHystersis, align 4
  %conv1107 = zext i16 %1187 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1185, ptr noundef nonnull @.str.476, i32 noundef %conv1107) #15
  %1188 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %smu, align 8
  %1190 = ptrtoint ptr %1189 to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load ptr, ptr %1189, align 8
  %VDDSOC_TVminHystersis = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 93
  %1192 = ptrtoint ptr %VDDSOC_TVminHystersis to i32
  call void @__asan_load2_noabort(i32 %1192)
  %1193 = load i16, ptr %VDDSOC_TVminHystersis, align 2
  %conv1113 = zext i16 %1193 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1191, ptr noundef nonnull @.str.479, i32 noundef %conv1113) #15
  %1194 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load ptr, ptr %smu, align 8
  %1196 = ptrtoint ptr %1195 to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load ptr, ptr %1195, align 8
  %DebugOverrides = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 94
  %1198 = ptrtoint ptr %DebugOverrides to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load i32, ptr %DebugOverrides, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1197, ptr noundef nonnull @.str.482, i32 noundef %1199) #15
  %1200 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1200)
  %1201 = load ptr, ptr %smu, align 8
  %1202 = ptrtoint ptr %1201 to i32
  call void @__asan_load4_noabort(i32 %1202)
  %1203 = load ptr, ptr %1201, align 8
  %ReservedEquation0 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 95
  %1204 = ptrtoint ptr %ReservedEquation0 to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load i32, ptr %ReservedEquation0, align 4
  %b1126 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 95, i32 1
  %1206 = ptrtoint ptr %b1126 to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load i32, ptr %b1126, align 4
  %c1128 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 95, i32 2
  %1208 = ptrtoint ptr %c1128 to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load i32, ptr %c1128, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1203, ptr noundef nonnull @.str.485, i32 noundef %1205, i32 noundef %1207, i32 noundef %1209) #15
  %1210 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load ptr, ptr %smu, align 8
  %1212 = ptrtoint ptr %1211 to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load ptr, ptr %1211, align 8
  %ReservedEquation1 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 96
  %1214 = ptrtoint ptr %ReservedEquation1 to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load i32, ptr %ReservedEquation1, align 4
  %b1136 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 96, i32 1
  %1216 = ptrtoint ptr %b1136 to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load i32, ptr %b1136, align 4
  %c1138 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 96, i32 2
  %1218 = ptrtoint ptr %c1138 to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load i32, ptr %c1138, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1213, ptr noundef nonnull @.str.488, i32 noundef %1215, i32 noundef %1217, i32 noundef %1219) #15
  %1220 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %smu, align 8
  %1222 = ptrtoint ptr %1221 to i32
  call void @__asan_load4_noabort(i32 %1222)
  %1223 = load ptr, ptr %1221, align 8
  %ReservedEquation2 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 97
  %1224 = ptrtoint ptr %ReservedEquation2 to i32
  call void @__asan_load4_noabort(i32 %1224)
  %1225 = load i32, ptr %ReservedEquation2, align 4
  %b1146 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 97, i32 1
  %1226 = ptrtoint ptr %b1146 to i32
  call void @__asan_load4_noabort(i32 %1226)
  %1227 = load i32, ptr %b1146, align 4
  %c1148 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 97, i32 2
  %1228 = ptrtoint ptr %c1148 to i32
  call void @__asan_load4_noabort(i32 %1228)
  %1229 = load i32, ptr %c1148, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1223, ptr noundef nonnull @.str.491, i32 noundef %1225, i32 noundef %1227, i32 noundef %1229) #15
  %1230 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1230)
  %1231 = load ptr, ptr %smu, align 8
  %1232 = ptrtoint ptr %1231 to i32
  call void @__asan_load4_noabort(i32 %1232)
  %1233 = load ptr, ptr %1231, align 8
  %ReservedEquation3 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 98
  %1234 = ptrtoint ptr %ReservedEquation3 to i32
  call void @__asan_load4_noabort(i32 %1234)
  %1235 = load i32, ptr %ReservedEquation3, align 4
  %b1156 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 98, i32 1
  %1236 = ptrtoint ptr %b1156 to i32
  call void @__asan_load4_noabort(i32 %1236)
  %1237 = load i32, ptr %b1156, align 4
  %c1158 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 98, i32 2
  %1238 = ptrtoint ptr %c1158 to i32
  call void @__asan_load4_noabort(i32 %1238)
  %1239 = load i32, ptr %c1158, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1233, ptr noundef nonnull @.str.494, i32 noundef %1235, i32 noundef %1237, i32 noundef %1239) #15
  %1240 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1240)
  %1241 = load ptr, ptr %smu, align 8
  %1242 = ptrtoint ptr %1241 to i32
  call void @__asan_load4_noabort(i32 %1242)
  %1243 = load ptr, ptr %1241, align 8
  %MinVoltageUlvGfx = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 99
  %1244 = ptrtoint ptr %MinVoltageUlvGfx to i32
  call void @__asan_load2_noabort(i32 %1244)
  %1245 = load i16, ptr %MinVoltageUlvGfx, align 4
  %conv1164 = zext i16 %1245 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1243, ptr noundef nonnull @.str.497, i32 noundef %conv1164) #15
  %1246 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1246)
  %1247 = load ptr, ptr %smu, align 8
  %1248 = ptrtoint ptr %1247 to i32
  call void @__asan_load4_noabort(i32 %1248)
  %1249 = load ptr, ptr %1247, align 8
  %PaddingUlv = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 100
  %1250 = ptrtoint ptr %PaddingUlv to i32
  call void @__asan_load2_noabort(i32 %1250)
  %1251 = load i16, ptr %PaddingUlv, align 2
  %conv1170 = zext i16 %1251 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1249, ptr noundef nonnull @.str.500, i32 noundef %conv1170) #15
  %1252 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1252)
  %1253 = load ptr, ptr %smu, align 8
  %1254 = ptrtoint ptr %1253 to i32
  call void @__asan_load4_noabort(i32 %1254)
  %1255 = load ptr, ptr %1253, align 8
  %TotalPowerConfig = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 101
  %1256 = ptrtoint ptr %TotalPowerConfig to i32
  call void @__asan_load1_noabort(i32 %1256)
  %1257 = load i8, ptr %TotalPowerConfig, align 4
  %conv1176 = zext i8 %1257 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1255, ptr noundef nonnull @.str.503, i32 noundef %conv1176) #15
  %1258 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1258)
  %1259 = load ptr, ptr %smu, align 8
  %1260 = ptrtoint ptr %1259 to i32
  call void @__asan_load4_noabort(i32 %1260)
  %1261 = load ptr, ptr %1259, align 8
  %TotalPowerSpare1 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 102
  %1262 = ptrtoint ptr %TotalPowerSpare1 to i32
  call void @__asan_load1_noabort(i32 %1262)
  %1263 = load i8, ptr %TotalPowerSpare1, align 1
  %conv1182 = zext i8 %1263 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1261, ptr noundef nonnull @.str.506, i32 noundef %conv1182) #15
  %1264 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1264)
  %1265 = load ptr, ptr %smu, align 8
  %1266 = ptrtoint ptr %1265 to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load ptr, ptr %1265, align 8
  %TotalPowerSpare2 = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 103
  %1268 = ptrtoint ptr %TotalPowerSpare2 to i32
  call void @__asan_load2_noabort(i32 %1268)
  %1269 = load i16, ptr %TotalPowerSpare2, align 2
  %conv1188 = zext i16 %1269 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1267, ptr noundef nonnull @.str.509, i32 noundef %conv1188) #15
  %1270 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load ptr, ptr %smu, align 8
  %1272 = ptrtoint ptr %1271 to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load ptr, ptr %1271, align 8
  %PccThresholdLow = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 104
  %1274 = ptrtoint ptr %PccThresholdLow to i32
  call void @__asan_load2_noabort(i32 %1274)
  %1275 = load i16, ptr %PccThresholdLow, align 4
  %conv1194 = zext i16 %1275 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1273, ptr noundef nonnull @.str.512, i32 noundef %conv1194) #15
  %1276 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1276)
  %1277 = load ptr, ptr %smu, align 8
  %1278 = ptrtoint ptr %1277 to i32
  call void @__asan_load4_noabort(i32 %1278)
  %1279 = load ptr, ptr %1277, align 8
  %PccThresholdHigh = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 105
  %1280 = ptrtoint ptr %PccThresholdHigh to i32
  call void @__asan_load2_noabort(i32 %1280)
  %1281 = load i16, ptr %PccThresholdHigh, align 2
  %conv1200 = zext i16 %1281 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1279, ptr noundef nonnull @.str.515, i32 noundef %conv1200) #15
  %1282 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1282)
  %1283 = load ptr, ptr %smu, align 8
  %1284 = ptrtoint ptr %1283 to i32
  call void @__asan_load4_noabort(i32 %1284)
  %1285 = load ptr, ptr %1283, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1285, ptr noundef nonnull @.str.518) #15
  %1286 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1286)
  %1287 = load ptr, ptr %smu, align 8
  %1288 = ptrtoint ptr %1287 to i32
  call void @__asan_load4_noabort(i32 %1288)
  %1289 = load ptr, ptr %1287, align 8
  %MaxVoltageStepGfx = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 116
  %1290 = ptrtoint ptr %MaxVoltageStepGfx to i32
  call void @__asan_load2_noabort(i32 %1290)
  %1291 = load i16, ptr %MaxVoltageStepGfx, align 4
  %conv1211 = zext i16 %1291 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1289, ptr noundef nonnull @.str.521, i32 noundef %conv1211) #15
  %1292 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1292)
  %1293 = load ptr, ptr %smu, align 8
  %1294 = ptrtoint ptr %1293 to i32
  call void @__asan_load4_noabort(i32 %1294)
  %1295 = load ptr, ptr %1293, align 8
  %MaxVoltageStepSoc = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 117
  %1296 = ptrtoint ptr %MaxVoltageStepSoc to i32
  call void @__asan_load2_noabort(i32 %1296)
  %1297 = load i16, ptr %MaxVoltageStepSoc, align 2
  %conv1217 = zext i16 %1297 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1295, ptr noundef nonnull @.str.524, i32 noundef %conv1217) #15
  %1298 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1298)
  %1299 = load ptr, ptr %smu, align 8
  %1300 = ptrtoint ptr %1299 to i32
  call void @__asan_load4_noabort(i32 %1300)
  %1301 = load ptr, ptr %1299, align 8
  %VddGfxVrMapping = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 118
  %1302 = ptrtoint ptr %VddGfxVrMapping to i32
  call void @__asan_load1_noabort(i32 %1302)
  %1303 = load i8, ptr %VddGfxVrMapping, align 4
  %conv1223 = zext i8 %1303 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1301, ptr noundef nonnull @.str.527, i32 noundef %conv1223) #15
  %1304 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1304)
  %1305 = load ptr, ptr %smu, align 8
  %1306 = ptrtoint ptr %1305 to i32
  call void @__asan_load4_noabort(i32 %1306)
  %1307 = load ptr, ptr %1305, align 8
  %VddSocVrMapping = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 119
  %1308 = ptrtoint ptr %VddSocVrMapping to i32
  call void @__asan_load1_noabort(i32 %1308)
  %1309 = load i8, ptr %VddSocVrMapping, align 1
  %conv1229 = zext i8 %1309 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1307, ptr noundef nonnull @.str.530, i32 noundef %conv1229) #15
  %1310 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1310)
  %1311 = load ptr, ptr %smu, align 8
  %1312 = ptrtoint ptr %1311 to i32
  call void @__asan_load4_noabort(i32 %1312)
  %1313 = load ptr, ptr %1311, align 8
  %VddMemVrMapping = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 120
  %1314 = ptrtoint ptr %VddMemVrMapping to i32
  call void @__asan_load1_noabort(i32 %1314)
  %1315 = load i8, ptr %VddMemVrMapping, align 2
  %conv1235 = zext i8 %1315 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1313, ptr noundef nonnull @.str.533, i32 noundef %conv1235) #15
  %1316 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1316)
  %1317 = load ptr, ptr %smu, align 8
  %1318 = ptrtoint ptr %1317 to i32
  call void @__asan_load4_noabort(i32 %1318)
  %1319 = load ptr, ptr %1317, align 8
  %BoardVrMapping = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 121
  %1320 = ptrtoint ptr %BoardVrMapping to i32
  call void @__asan_load1_noabort(i32 %1320)
  %1321 = load i8, ptr %BoardVrMapping, align 1
  %conv1241 = zext i8 %1321 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1319, ptr noundef nonnull @.str.536, i32 noundef %conv1241) #15
  %1322 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1322)
  %1323 = load ptr, ptr %smu, align 8
  %1324 = ptrtoint ptr %1323 to i32
  call void @__asan_load4_noabort(i32 %1324)
  %1325 = load ptr, ptr %1323, align 8
  %GfxUlvPhaseSheddingMask = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 122
  %1326 = ptrtoint ptr %GfxUlvPhaseSheddingMask to i32
  call void @__asan_load1_noabort(i32 %1326)
  %1327 = load i8, ptr %GfxUlvPhaseSheddingMask, align 4
  %conv1247 = zext i8 %1327 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1325, ptr noundef nonnull @.str.539, i32 noundef %conv1247) #15
  %1328 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1328)
  %1329 = load ptr, ptr %smu, align 8
  %1330 = ptrtoint ptr %1329 to i32
  call void @__asan_load4_noabort(i32 %1330)
  %1331 = load ptr, ptr %1329, align 8
  %ExternalSensorPresent = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 123
  %1332 = ptrtoint ptr %ExternalSensorPresent to i32
  call void @__asan_load1_noabort(i32 %1332)
  %1333 = load i8, ptr %ExternalSensorPresent, align 1
  %conv1253 = zext i8 %1333 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1331, ptr noundef nonnull @.str.542, i32 noundef %conv1253) #15
  %1334 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1334)
  %1335 = load ptr, ptr %smu, align 8
  %1336 = ptrtoint ptr %1335 to i32
  call void @__asan_load4_noabort(i32 %1336)
  %1337 = load ptr, ptr %1335, align 8
  %GfxMaxCurrent = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 125
  %1338 = ptrtoint ptr %GfxMaxCurrent to i32
  call void @__asan_load2_noabort(i32 %1338)
  %1339 = load i16, ptr %GfxMaxCurrent, align 4
  %conv1259 = zext i16 %1339 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1337, ptr noundef nonnull @.str.545, i32 noundef %conv1259) #15
  %1340 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1340)
  %1341 = load ptr, ptr %smu, align 8
  %1342 = ptrtoint ptr %1341 to i32
  call void @__asan_load4_noabort(i32 %1342)
  %1343 = load ptr, ptr %1341, align 8
  %GfxOffset = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 126
  %1344 = ptrtoint ptr %GfxOffset to i32
  call void @__asan_load1_noabort(i32 %1344)
  %1345 = load i8, ptr %GfxOffset, align 2
  %conv1265 = sext i8 %1345 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1343, ptr noundef nonnull @.str.548, i32 noundef %conv1265) #15
  %1346 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1346)
  %1347 = load ptr, ptr %smu, align 8
  %1348 = ptrtoint ptr %1347 to i32
  call void @__asan_load4_noabort(i32 %1348)
  %1349 = load ptr, ptr %1347, align 8
  %Padding_TelemetryGfx = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 127
  %1350 = ptrtoint ptr %Padding_TelemetryGfx to i32
  call void @__asan_load1_noabort(i32 %1350)
  %1351 = load i8, ptr %Padding_TelemetryGfx, align 1
  %conv1271 = zext i8 %1351 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1349, ptr noundef nonnull @.str.551, i32 noundef %conv1271) #15
  %1352 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1352)
  %1353 = load ptr, ptr %smu, align 8
  %1354 = ptrtoint ptr %1353 to i32
  call void @__asan_load4_noabort(i32 %1354)
  %1355 = load ptr, ptr %1353, align 8
  %SocMaxCurrent = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 128
  %1356 = ptrtoint ptr %SocMaxCurrent to i32
  call void @__asan_load2_noabort(i32 %1356)
  %1357 = load i16, ptr %SocMaxCurrent, align 4
  %conv1277 = zext i16 %1357 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1355, ptr noundef nonnull @.str.554, i32 noundef %conv1277) #15
  %1358 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1358)
  %1359 = load ptr, ptr %smu, align 8
  %1360 = ptrtoint ptr %1359 to i32
  call void @__asan_load4_noabort(i32 %1360)
  %1361 = load ptr, ptr %1359, align 8
  %SocOffset = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 129
  %1362 = ptrtoint ptr %SocOffset to i32
  call void @__asan_load1_noabort(i32 %1362)
  %1363 = load i8, ptr %SocOffset, align 2
  %conv1283 = sext i8 %1363 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1361, ptr noundef nonnull @.str.557, i32 noundef %conv1283) #15
  %1364 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1364)
  %1365 = load ptr, ptr %smu, align 8
  %1366 = ptrtoint ptr %1365 to i32
  call void @__asan_load4_noabort(i32 %1366)
  %1367 = load ptr, ptr %1365, align 8
  %Padding_TelemetrySoc = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 130
  %1368 = ptrtoint ptr %Padding_TelemetrySoc to i32
  call void @__asan_load1_noabort(i32 %1368)
  %1369 = load i8, ptr %Padding_TelemetrySoc, align 1
  %conv1289 = zext i8 %1369 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1367, ptr noundef nonnull @.str.560, i32 noundef %conv1289) #15
  %1370 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1370)
  %1371 = load ptr, ptr %smu, align 8
  %1372 = ptrtoint ptr %1371 to i32
  call void @__asan_load4_noabort(i32 %1372)
  %1373 = load ptr, ptr %1371, align 8
  %MemMaxCurrent = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 131
  %1374 = ptrtoint ptr %MemMaxCurrent to i32
  call void @__asan_load2_noabort(i32 %1374)
  %1375 = load i16, ptr %MemMaxCurrent, align 4
  %conv1295 = zext i16 %1375 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1373, ptr noundef nonnull @.str.563, i32 noundef %conv1295) #15
  %1376 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1376)
  %1377 = load ptr, ptr %smu, align 8
  %1378 = ptrtoint ptr %1377 to i32
  call void @__asan_load4_noabort(i32 %1378)
  %1379 = load ptr, ptr %1377, align 8
  %MemOffset = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 132
  %1380 = ptrtoint ptr %MemOffset to i32
  call void @__asan_load1_noabort(i32 %1380)
  %1381 = load i8, ptr %MemOffset, align 2
  %conv1301 = sext i8 %1381 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1379, ptr noundef nonnull @.str.566, i32 noundef %conv1301) #15
  %1382 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1382)
  %1383 = load ptr, ptr %smu, align 8
  %1384 = ptrtoint ptr %1383 to i32
  call void @__asan_load4_noabort(i32 %1384)
  %1385 = load ptr, ptr %1383, align 8
  %Padding_TelemetryMem = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 133
  %1386 = ptrtoint ptr %Padding_TelemetryMem to i32
  call void @__asan_load1_noabort(i32 %1386)
  %1387 = load i8, ptr %Padding_TelemetryMem, align 1
  %conv1307 = zext i8 %1387 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1385, ptr noundef nonnull @.str.569, i32 noundef %conv1307) #15
  %1388 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1388)
  %1389 = load ptr, ptr %smu, align 8
  %1390 = ptrtoint ptr %1389 to i32
  call void @__asan_load4_noabort(i32 %1390)
  %1391 = load ptr, ptr %1389, align 8
  %BoardMaxCurrent = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 134
  %1392 = ptrtoint ptr %BoardMaxCurrent to i32
  call void @__asan_load2_noabort(i32 %1392)
  %1393 = load i16, ptr %BoardMaxCurrent, align 4
  %conv1313 = zext i16 %1393 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1391, ptr noundef nonnull @.str.572, i32 noundef %conv1313) #15
  %1394 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1394)
  %1395 = load ptr, ptr %smu, align 8
  %1396 = ptrtoint ptr %1395 to i32
  call void @__asan_load4_noabort(i32 %1396)
  %1397 = load ptr, ptr %1395, align 8
  %BoardOffset = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 135
  %1398 = ptrtoint ptr %BoardOffset to i32
  call void @__asan_load1_noabort(i32 %1398)
  %1399 = load i8, ptr %BoardOffset, align 2
  %conv1319 = sext i8 %1399 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1397, ptr noundef nonnull @.str.575, i32 noundef %conv1319) #15
  %1400 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1400)
  %1401 = load ptr, ptr %smu, align 8
  %1402 = ptrtoint ptr %1401 to i32
  call void @__asan_load4_noabort(i32 %1402)
  %1403 = load ptr, ptr %1401, align 8
  %Padding_TelemetryBoardInput = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 136
  %1404 = ptrtoint ptr %Padding_TelemetryBoardInput to i32
  call void @__asan_load1_noabort(i32 %1404)
  %1405 = load i8, ptr %Padding_TelemetryBoardInput, align 1
  %conv1325 = zext i8 %1405 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1403, ptr noundef nonnull @.str.578, i32 noundef %conv1325) #15
  %1406 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1406)
  %1407 = load ptr, ptr %smu, align 8
  %1408 = ptrtoint ptr %1407 to i32
  call void @__asan_load4_noabort(i32 %1408)
  %1409 = load ptr, ptr %1407, align 8
  %VR0HotGpio = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 137
  %1410 = ptrtoint ptr %VR0HotGpio to i32
  call void @__asan_load1_noabort(i32 %1410)
  %1411 = load i8, ptr %VR0HotGpio, align 4
  %conv1331 = zext i8 %1411 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1409, ptr noundef nonnull @.str.581, i32 noundef %conv1331) #15
  %1412 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1412)
  %1413 = load ptr, ptr %smu, align 8
  %1414 = ptrtoint ptr %1413 to i32
  call void @__asan_load4_noabort(i32 %1414)
  %1415 = load ptr, ptr %1413, align 8
  %VR0HotPolarity = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 138
  %1416 = ptrtoint ptr %VR0HotPolarity to i32
  call void @__asan_load1_noabort(i32 %1416)
  %1417 = load i8, ptr %VR0HotPolarity, align 1
  %conv1337 = zext i8 %1417 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1415, ptr noundef nonnull @.str.584, i32 noundef %conv1337) #15
  %1418 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1418)
  %1419 = load ptr, ptr %smu, align 8
  %1420 = ptrtoint ptr %1419 to i32
  call void @__asan_load4_noabort(i32 %1420)
  %1421 = load ptr, ptr %1419, align 8
  %VR1HotGpio = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 139
  %1422 = ptrtoint ptr %VR1HotGpio to i32
  call void @__asan_load1_noabort(i32 %1422)
  %1423 = load i8, ptr %VR1HotGpio, align 2
  %conv1343 = zext i8 %1423 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1421, ptr noundef nonnull @.str.587, i32 noundef %conv1343) #15
  %1424 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1424)
  %1425 = load ptr, ptr %smu, align 8
  %1426 = ptrtoint ptr %1425 to i32
  call void @__asan_load4_noabort(i32 %1426)
  %1427 = load ptr, ptr %1425, align 8
  %VR1HotPolarity = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 140
  %1428 = ptrtoint ptr %VR1HotPolarity to i32
  call void @__asan_load1_noabort(i32 %1428)
  %1429 = load i8, ptr %VR1HotPolarity, align 1
  %conv1349 = zext i8 %1429 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1427, ptr noundef nonnull @.str.590, i32 noundef %conv1349) #15
  %1430 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1430)
  %1431 = load ptr, ptr %smu, align 8
  %1432 = ptrtoint ptr %1431 to i32
  call void @__asan_load4_noabort(i32 %1432)
  %1433 = load ptr, ptr %1431, align 8
  %PllGfxclkSpreadEnabled = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 141
  %1434 = ptrtoint ptr %PllGfxclkSpreadEnabled to i32
  call void @__asan_load1_noabort(i32 %1434)
  %1435 = load i8, ptr %PllGfxclkSpreadEnabled, align 4
  %conv1355 = zext i8 %1435 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1433, ptr noundef nonnull @.str.593, i32 noundef %conv1355) #15
  %1436 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1436)
  %1437 = load ptr, ptr %smu, align 8
  %1438 = ptrtoint ptr %1437 to i32
  call void @__asan_load4_noabort(i32 %1438)
  %1439 = load ptr, ptr %1437, align 8
  %PllGfxclkSpreadPercent = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 142
  %1440 = ptrtoint ptr %PllGfxclkSpreadPercent to i32
  call void @__asan_load1_noabort(i32 %1440)
  %1441 = load i8, ptr %PllGfxclkSpreadPercent, align 1
  %conv1361 = zext i8 %1441 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1439, ptr noundef nonnull @.str.596, i32 noundef %conv1361) #15
  %1442 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1442)
  %1443 = load ptr, ptr %smu, align 8
  %1444 = ptrtoint ptr %1443 to i32
  call void @__asan_load4_noabort(i32 %1444)
  %1445 = load ptr, ptr %1443, align 8
  %PllGfxclkSpreadFreq = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 143
  %1446 = ptrtoint ptr %PllGfxclkSpreadFreq to i32
  call void @__asan_load2_noabort(i32 %1446)
  %1447 = load i16, ptr %PllGfxclkSpreadFreq, align 2
  %conv1367 = zext i16 %1447 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1445, ptr noundef nonnull @.str.599, i32 noundef %conv1367) #15
  %1448 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1448)
  %1449 = load ptr, ptr %smu, align 8
  %1450 = ptrtoint ptr %1449 to i32
  call void @__asan_load4_noabort(i32 %1450)
  %1451 = load ptr, ptr %1449, align 8
  %UclkSpreadEnabled = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 144
  %1452 = ptrtoint ptr %UclkSpreadEnabled to i32
  call void @__asan_load1_noabort(i32 %1452)
  %1453 = load i8, ptr %UclkSpreadEnabled, align 4
  %conv1373 = zext i8 %1453 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1451, ptr noundef nonnull @.str.602, i32 noundef %conv1373) #15
  %1454 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1454)
  %1455 = load ptr, ptr %smu, align 8
  %1456 = ptrtoint ptr %1455 to i32
  call void @__asan_load4_noabort(i32 %1456)
  %1457 = load ptr, ptr %1455, align 8
  %UclkSpreadPercent = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 145
  %1458 = ptrtoint ptr %UclkSpreadPercent to i32
  call void @__asan_load1_noabort(i32 %1458)
  %1459 = load i8, ptr %UclkSpreadPercent, align 1
  %conv1379 = zext i8 %1459 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1457, ptr noundef nonnull @.str.605, i32 noundef %conv1379) #15
  %1460 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1460)
  %1461 = load ptr, ptr %smu, align 8
  %1462 = ptrtoint ptr %1461 to i32
  call void @__asan_load4_noabort(i32 %1462)
  %1463 = load ptr, ptr %1461, align 8
  %UclkSpreadFreq = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 146
  %1464 = ptrtoint ptr %UclkSpreadFreq to i32
  call void @__asan_load2_noabort(i32 %1464)
  %1465 = load i16, ptr %UclkSpreadFreq, align 2
  %conv1385 = zext i16 %1465 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1463, ptr noundef nonnull @.str.608, i32 noundef %conv1385) #15
  %1466 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1466)
  %1467 = load ptr, ptr %smu, align 8
  %1468 = ptrtoint ptr %1467 to i32
  call void @__asan_load4_noabort(i32 %1468)
  %1469 = load ptr, ptr %1467, align 8
  %FclkSpreadEnabled = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 147
  %1470 = ptrtoint ptr %FclkSpreadEnabled to i32
  call void @__asan_load1_noabort(i32 %1470)
  %1471 = load i8, ptr %FclkSpreadEnabled, align 4
  %conv1391 = zext i8 %1471 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1469, ptr noundef nonnull @.str.611, i32 noundef %conv1391) #15
  %1472 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1472)
  %1473 = load ptr, ptr %smu, align 8
  %1474 = ptrtoint ptr %1473 to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load ptr, ptr %1473, align 8
  %FclkSpreadPercent = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 148
  %1476 = ptrtoint ptr %FclkSpreadPercent to i32
  call void @__asan_load1_noabort(i32 %1476)
  %1477 = load i8, ptr %FclkSpreadPercent, align 1
  %conv1397 = zext i8 %1477 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1475, ptr noundef nonnull @.str.614, i32 noundef %conv1397) #15
  %1478 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1478)
  %1479 = load ptr, ptr %smu, align 8
  %1480 = ptrtoint ptr %1479 to i32
  call void @__asan_load4_noabort(i32 %1480)
  %1481 = load ptr, ptr %1479, align 8
  %FclkSpreadFreq = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 149
  %1482 = ptrtoint ptr %FclkSpreadFreq to i32
  call void @__asan_load2_noabort(i32 %1482)
  %1483 = load i16, ptr %FclkSpreadFreq, align 2
  %conv1403 = zext i16 %1483 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1481, ptr noundef nonnull @.str.617, i32 noundef %conv1403) #15
  %1484 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1484)
  %1485 = load ptr, ptr %smu, align 8
  %1486 = ptrtoint ptr %1485 to i32
  call void @__asan_load4_noabort(i32 %1486)
  %1487 = load ptr, ptr %1485, align 8
  %FllGfxclkSpreadEnabled = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 150
  %1488 = ptrtoint ptr %FllGfxclkSpreadEnabled to i32
  call void @__asan_load1_noabort(i32 %1488)
  %1489 = load i8, ptr %FllGfxclkSpreadEnabled, align 4
  %conv1409 = zext i8 %1489 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1487, ptr noundef nonnull @.str.620, i32 noundef %conv1409) #15
  %1490 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1490)
  %1491 = load ptr, ptr %smu, align 8
  %1492 = ptrtoint ptr %1491 to i32
  call void @__asan_load4_noabort(i32 %1492)
  %1493 = load ptr, ptr %1491, align 8
  %FllGfxclkSpreadPercent = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 151
  %1494 = ptrtoint ptr %FllGfxclkSpreadPercent to i32
  call void @__asan_load1_noabort(i32 %1494)
  %1495 = load i8, ptr %FllGfxclkSpreadPercent, align 1
  %conv1415 = zext i8 %1495 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1493, ptr noundef nonnull @.str.623, i32 noundef %conv1415) #15
  %1496 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1496)
  %1497 = load ptr, ptr %smu, align 8
  %1498 = ptrtoint ptr %1497 to i32
  call void @__asan_load4_noabort(i32 %1498)
  %1499 = load ptr, ptr %1497, align 8
  %FllGfxclkSpreadFreq = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 152
  %1500 = ptrtoint ptr %FllGfxclkSpreadFreq to i32
  call void @__asan_load2_noabort(i32 %1500)
  %1501 = load i16, ptr %FllGfxclkSpreadFreq, align 2
  %conv1421 = zext i16 %1501 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1499, ptr noundef nonnull @.str.626, i32 noundef %conv1421) #15
  br label %do.end1428

do.end1428:                                       ; preds = %do.end1428.do.end1428_crit_edge, %entry
  %i.102103 = phi i32 [ 0, %entry ], [ %inc1486, %do.end1428.do.end1428_crit_edge ]
  %1502 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1502)
  %1503 = load ptr, ptr %smu, align 8
  %1504 = ptrtoint ptr %1503 to i32
  call void @__asan_load4_noabort(i32 %1504)
  %1505 = load ptr, ptr %1503, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1505, ptr noundef nonnull @.str.629, i32 noundef %i.102103) #15
  %1506 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1506)
  %1507 = load ptr, ptr %smu, align 8
  %1508 = ptrtoint ptr %1507 to i32
  call void @__asan_load4_noabort(i32 %1508)
  %1509 = load ptr, ptr %1507, align 8
  %arrayidx1436 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 153, i32 %i.102103
  %1510 = ptrtoint ptr %arrayidx1436 to i32
  call void @__asan_load1_noabort(i32 %1510)
  %1511 = load i8, ptr %arrayidx1436, align 4
  %conv1437 = zext i8 %1511 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1509, ptr noundef nonnull @.str.632, i32 noundef %conv1437) #15
  %1512 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1512)
  %1513 = load ptr, ptr %smu, align 8
  %1514 = ptrtoint ptr %1513 to i32
  call void @__asan_load4_noabort(i32 %1514)
  %1515 = load ptr, ptr %1513, align 8
  %SlaveAddress = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 153, i32 %i.102103, i32 3
  %1516 = ptrtoint ptr %SlaveAddress to i32
  call void @__asan_load4_noabort(i32 %1516)
  %1517 = load i32, ptr %SlaveAddress, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1515, ptr noundef nonnull @.str.635, i32 noundef %1517) #15
  %1518 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1518)
  %1519 = load ptr, ptr %smu, align 8
  %1520 = ptrtoint ptr %1519 to i32
  call void @__asan_load4_noabort(i32 %1520)
  %1521 = load ptr, ptr %1519, align 8
  %ControllerPort = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 153, i32 %i.102103, i32 4
  %1522 = ptrtoint ptr %ControllerPort to i32
  call void @__asan_load1_noabort(i32 %1522)
  %1523 = load i8, ptr %ControllerPort, align 4
  %conv1452 = zext i8 %1523 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1521, ptr noundef nonnull @.str.638, i32 noundef %conv1452) #15
  %1524 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1524)
  %1525 = load ptr, ptr %smu, align 8
  %1526 = ptrtoint ptr %1525 to i32
  call void @__asan_load4_noabort(i32 %1526)
  %1527 = load ptr, ptr %1525, align 8
  %ControllerName = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 153, i32 %i.102103, i32 5
  %1528 = ptrtoint ptr %ControllerName to i32
  call void @__asan_load1_noabort(i32 %1528)
  %1529 = load i8, ptr %ControllerName, align 1
  %conv1460 = zext i8 %1529 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1527, ptr noundef nonnull @.str.641, i32 noundef %conv1460) #15
  %1530 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1530)
  %1531 = load ptr, ptr %smu, align 8
  %1532 = ptrtoint ptr %1531 to i32
  call void @__asan_load4_noabort(i32 %1532)
  %1533 = load ptr, ptr %1531, align 8
  %ThermalThrotter = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 153, i32 %i.102103, i32 6
  %1534 = ptrtoint ptr %ThermalThrotter to i32
  call void @__asan_load1_noabort(i32 %1534)
  %1535 = load i8, ptr %ThermalThrotter, align 2
  %conv1468 = zext i8 %1535 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1533, ptr noundef nonnull @.str.644, i32 noundef %conv1468) #15
  %1536 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1536)
  %1537 = load ptr, ptr %smu, align 8
  %1538 = ptrtoint ptr %1537 to i32
  call void @__asan_load4_noabort(i32 %1538)
  %1539 = load ptr, ptr %1537, align 8
  %I2cProtocol = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 153, i32 %i.102103, i32 7
  %1540 = ptrtoint ptr %I2cProtocol to i32
  call void @__asan_load1_noabort(i32 %1540)
  %1541 = load i8, ptr %I2cProtocol, align 1
  %conv1476 = zext i8 %1541 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1539, ptr noundef nonnull @.str.647, i32 noundef %conv1476) #15
  %1542 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1542)
  %1543 = load ptr, ptr %smu, align 8
  %1544 = ptrtoint ptr %1543 to i32
  call void @__asan_load4_noabort(i32 %1544)
  %1545 = load ptr, ptr %1543, align 8
  %Speed = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 153, i32 %i.102103, i32 1
  %1546 = ptrtoint ptr %Speed to i32
  call void @__asan_load1_noabort(i32 %1546)
  %1547 = load i8, ptr %Speed, align 1
  %conv1484 = zext i8 %1547 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1545, ptr noundef nonnull @.str.650, i32 noundef %conv1484) #15
  %inc1486 = add nuw nsw i32 %i.102103, 1
  %exitcond.not = icmp eq i32 %inc1486, 8
  br i1 %exitcond.not, label %do.end1490, label %do.end1428.do.end1428_crit_edge

do.end1428.do.end1428_crit_edge:                  ; preds = %do.end1428
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end1428

do.end1490:                                       ; preds = %do.end1428
  call void @__sanitizer_cov_trace_pc() #14
  %1548 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1548)
  %1549 = load ptr, ptr %smu, align 8
  %1550 = ptrtoint ptr %1549 to i32
  call void @__asan_load4_noabort(i32 %1550)
  %1551 = load ptr, ptr %1549, align 8
  %MemoryChannelEnabled = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 154
  %1552 = ptrtoint ptr %MemoryChannelEnabled to i32
  call void @__asan_load4_noabort(i32 %1552)
  %1553 = load i32, ptr %MemoryChannelEnabled, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1551, ptr noundef nonnull @.str.653, i32 noundef %1553) #15
  %1554 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1554)
  %1555 = load ptr, ptr %smu, align 8
  %1556 = ptrtoint ptr %1555 to i32
  call void @__asan_load4_noabort(i32 %1556)
  %1557 = load ptr, ptr %1555, align 8
  %DramBitWidth = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 155
  %1558 = ptrtoint ptr %DramBitWidth to i32
  call void @__asan_load1_noabort(i32 %1558)
  %1559 = load i8, ptr %DramBitWidth, align 4
  %conv1498 = zext i8 %1559 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1557, ptr noundef nonnull @.str.656, i32 noundef %conv1498) #15
  %1560 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1560)
  %1561 = load ptr, ptr %smu, align 8
  %1562 = ptrtoint ptr %1561 to i32
  call void @__asan_load4_noabort(i32 %1562)
  %1563 = load ptr, ptr %1561, align 8
  %TotalBoardPower = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 157
  %1564 = ptrtoint ptr %TotalBoardPower to i32
  call void @__asan_load2_noabort(i32 %1564)
  %1565 = load i16, ptr %TotalBoardPower, align 4
  %conv1504 = zext i16 %1565 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1563, ptr noundef nonnull @.str.659, i32 noundef %conv1504) #15
  %1566 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1566)
  %1567 = load ptr, ptr %smu, align 8
  %1568 = ptrtoint ptr %1567 to i32
  call void @__asan_load4_noabort(i32 %1568)
  %1569 = load ptr, ptr %1567, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1569, ptr noundef nonnull @.str.662) #15
  %1570 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1570)
  %1571 = load ptr, ptr %smu, align 8
  %1572 = ptrtoint ptr %1571 to i32
  call void @__asan_load4_noabort(i32 %1572)
  %1573 = load ptr, ptr %1571, align 8
  %arrayidx1519 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 159, i32 0
  %1574 = ptrtoint ptr %arrayidx1519 to i32
  call void @__asan_load1_noabort(i32 %1574)
  %1575 = load i8, ptr %arrayidx1519, align 1
  %conv1520 = zext i8 %1575 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1573, ptr noundef nonnull @.str.268, i32 noundef 0, i32 noundef %conv1520) #15
  %1576 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1576)
  %1577 = load ptr, ptr %smu, align 8
  %1578 = ptrtoint ptr %1577 to i32
  call void @__asan_load4_noabort(i32 %1578)
  %1579 = load ptr, ptr %1577, align 8
  %arrayidx1519.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 159, i32 1
  %1580 = ptrtoint ptr %arrayidx1519.1 to i32
  call void @__asan_load1_noabort(i32 %1580)
  %1581 = load i8, ptr %arrayidx1519.1, align 1
  %conv1520.1 = zext i8 %1581 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1579, ptr noundef nonnull @.str.268, i32 noundef 1, i32 noundef %conv1520.1) #15
  %1582 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1582)
  %1583 = load ptr, ptr %smu, align 8
  %1584 = ptrtoint ptr %1583 to i32
  call void @__asan_load4_noabort(i32 %1584)
  %1585 = load ptr, ptr %1583, align 8
  %arrayidx1519.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 159, i32 2
  %1586 = ptrtoint ptr %arrayidx1519.2 to i32
  call void @__asan_load1_noabort(i32 %1586)
  %1587 = load i8, ptr %arrayidx1519.2, align 1
  %conv1520.2 = zext i8 %1587 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1585, ptr noundef nonnull @.str.268, i32 noundef 2, i32 noundef %conv1520.2) #15
  %1588 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1588)
  %1589 = load ptr, ptr %smu, align 8
  %1590 = ptrtoint ptr %1589 to i32
  call void @__asan_load4_noabort(i32 %1590)
  %1591 = load ptr, ptr %1589, align 8
  %arrayidx1519.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 159, i32 3
  %1592 = ptrtoint ptr %arrayidx1519.3 to i32
  call void @__asan_load1_noabort(i32 %1592)
  %1593 = load i8, ptr %arrayidx1519.3, align 1
  %conv1520.3 = zext i8 %1593 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1591, ptr noundef nonnull @.str.268, i32 noundef 3, i32 noundef %conv1520.3) #15
  %1594 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1594)
  %1595 = load ptr, ptr %smu, align 8
  %1596 = ptrtoint ptr %1595 to i32
  call void @__asan_load4_noabort(i32 %1596)
  %1597 = load ptr, ptr %1595, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1597, ptr noundef nonnull @.str.667) #15
  %1598 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1598)
  %1599 = load ptr, ptr %smu, align 8
  %1600 = ptrtoint ptr %1599 to i32
  call void @__asan_load4_noabort(i32 %1600)
  %1601 = load ptr, ptr %1599, align 8
  %arrayidx1538 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 160, i32 0
  %1602 = ptrtoint ptr %arrayidx1538 to i32
  call void @__asan_load1_noabort(i32 %1602)
  %1603 = load i8, ptr %arrayidx1538, align 1
  %conv1539 = zext i8 %1603 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1601, ptr noundef nonnull @.str.268, i32 noundef 0, i32 noundef %conv1539) #15
  %1604 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1604)
  %1605 = load ptr, ptr %smu, align 8
  %1606 = ptrtoint ptr %1605 to i32
  call void @__asan_load4_noabort(i32 %1606)
  %1607 = load ptr, ptr %1605, align 8
  %arrayidx1538.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 160, i32 1
  %1608 = ptrtoint ptr %arrayidx1538.1 to i32
  call void @__asan_load1_noabort(i32 %1608)
  %1609 = load i8, ptr %arrayidx1538.1, align 1
  %conv1539.1 = zext i8 %1609 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1607, ptr noundef nonnull @.str.268, i32 noundef 1, i32 noundef %conv1539.1) #15
  %1610 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1610)
  %1611 = load ptr, ptr %smu, align 8
  %1612 = ptrtoint ptr %1611 to i32
  call void @__asan_load4_noabort(i32 %1612)
  %1613 = load ptr, ptr %1611, align 8
  %arrayidx1538.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 160, i32 2
  %1614 = ptrtoint ptr %arrayidx1538.2 to i32
  call void @__asan_load1_noabort(i32 %1614)
  %1615 = load i8, ptr %arrayidx1538.2, align 1
  %conv1539.2 = zext i8 %1615 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1613, ptr noundef nonnull @.str.268, i32 noundef 2, i32 noundef %conv1539.2) #15
  %1616 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1616)
  %1617 = load ptr, ptr %smu, align 8
  %1618 = ptrtoint ptr %1617 to i32
  call void @__asan_load4_noabort(i32 %1618)
  %1619 = load ptr, ptr %1617, align 8
  %arrayidx1538.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 160, i32 3
  %1620 = ptrtoint ptr %arrayidx1538.3 to i32
  call void @__asan_load1_noabort(i32 %1620)
  %1621 = load i8, ptr %arrayidx1538.3, align 1
  %conv1539.3 = zext i8 %1621 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1619, ptr noundef nonnull @.str.268, i32 noundef 3, i32 noundef %conv1539.3) #15
  %1622 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1622)
  %1623 = load ptr, ptr %smu, align 8
  %1624 = ptrtoint ptr %1623 to i32
  call void @__asan_load4_noabort(i32 %1624)
  %1625 = load ptr, ptr %1623, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1625, ptr noundef nonnull @.str.672) #15
  %1626 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1626)
  %1627 = load ptr, ptr %smu, align 8
  %1628 = ptrtoint ptr %1627 to i32
  call void @__asan_load4_noabort(i32 %1628)
  %1629 = load ptr, ptr %1627, align 8
  %arrayidx1557 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 161, i32 0
  %1630 = ptrtoint ptr %arrayidx1557 to i32
  call void @__asan_load2_noabort(i32 %1630)
  %1631 = load i16, ptr %arrayidx1557, align 2
  %conv1558 = zext i16 %1631 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1629, ptr noundef nonnull @.str.268, i32 noundef 0, i32 noundef %conv1558) #15
  %1632 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1632)
  %1633 = load ptr, ptr %smu, align 8
  %1634 = ptrtoint ptr %1633 to i32
  call void @__asan_load4_noabort(i32 %1634)
  %1635 = load ptr, ptr %1633, align 8
  %arrayidx1557.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 161, i32 1
  %1636 = ptrtoint ptr %arrayidx1557.1 to i32
  call void @__asan_load2_noabort(i32 %1636)
  %1637 = load i16, ptr %arrayidx1557.1, align 2
  %conv1558.1 = zext i16 %1637 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1635, ptr noundef nonnull @.str.268, i32 noundef 1, i32 noundef %conv1558.1) #15
  %1638 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1638)
  %1639 = load ptr, ptr %smu, align 8
  %1640 = ptrtoint ptr %1639 to i32
  call void @__asan_load4_noabort(i32 %1640)
  %1641 = load ptr, ptr %1639, align 8
  %arrayidx1557.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 161, i32 2
  %1642 = ptrtoint ptr %arrayidx1557.2 to i32
  call void @__asan_load2_noabort(i32 %1642)
  %1643 = load i16, ptr %arrayidx1557.2, align 2
  %conv1558.2 = zext i16 %1643 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1641, ptr noundef nonnull @.str.268, i32 noundef 2, i32 noundef %conv1558.2) #15
  %1644 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1644)
  %1645 = load ptr, ptr %smu, align 8
  %1646 = ptrtoint ptr %1645 to i32
  call void @__asan_load4_noabort(i32 %1646)
  %1647 = load ptr, ptr %1645, align 8
  %arrayidx1557.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 161, i32 3
  %1648 = ptrtoint ptr %arrayidx1557.3 to i32
  call void @__asan_load2_noabort(i32 %1648)
  %1649 = load i16, ptr %arrayidx1557.3, align 2
  %conv1558.3 = zext i16 %1649 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1647, ptr noundef nonnull @.str.268, i32 noundef 3, i32 noundef %conv1558.3) #15
  %1650 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1650)
  %1651 = load ptr, ptr %smu, align 8
  %1652 = ptrtoint ptr %1651 to i32
  call void @__asan_load4_noabort(i32 %1652)
  %1653 = load ptr, ptr %1651, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1653, ptr noundef nonnull @.str.677) #15
  %1654 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1654)
  %1655 = load ptr, ptr %smu, align 8
  %1656 = ptrtoint ptr %1655 to i32
  call void @__asan_load4_noabort(i32 %1656)
  %1657 = load ptr, ptr %1655, align 8
  %arrayidx1576 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 162, i32 0
  %1658 = ptrtoint ptr %arrayidx1576 to i32
  call void @__asan_load2_noabort(i32 %1658)
  %1659 = load i16, ptr %arrayidx1576, align 2
  %conv1577 = zext i16 %1659 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1657, ptr noundef nonnull @.str.268, i32 noundef 0, i32 noundef %conv1577) #15
  %1660 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1660)
  %1661 = load ptr, ptr %smu, align 8
  %1662 = ptrtoint ptr %1661 to i32
  call void @__asan_load4_noabort(i32 %1662)
  %1663 = load ptr, ptr %1661, align 8
  %arrayidx1576.1 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 162, i32 1
  %1664 = ptrtoint ptr %arrayidx1576.1 to i32
  call void @__asan_load2_noabort(i32 %1664)
  %1665 = load i16, ptr %arrayidx1576.1, align 2
  %conv1577.1 = zext i16 %1665 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1663, ptr noundef nonnull @.str.268, i32 noundef 1, i32 noundef %conv1577.1) #15
  %1666 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1666)
  %1667 = load ptr, ptr %smu, align 8
  %1668 = ptrtoint ptr %1667 to i32
  call void @__asan_load4_noabort(i32 %1668)
  %1669 = load ptr, ptr %1667, align 8
  %arrayidx1576.2 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 162, i32 2
  %1670 = ptrtoint ptr %arrayidx1576.2 to i32
  call void @__asan_load2_noabort(i32 %1670)
  %1671 = load i16, ptr %arrayidx1576.2, align 2
  %conv1577.2 = zext i16 %1671 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1669, ptr noundef nonnull @.str.268, i32 noundef 2, i32 noundef %conv1577.2) #15
  %1672 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1672)
  %1673 = load ptr, ptr %smu, align 8
  %1674 = ptrtoint ptr %1673 to i32
  call void @__asan_load4_noabort(i32 %1674)
  %1675 = load ptr, ptr %1673, align 8
  %arrayidx1576.3 = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 162, i32 3
  %1676 = ptrtoint ptr %arrayidx1576.3 to i32
  call void @__asan_load2_noabort(i32 %1676)
  %1677 = load i16, ptr %arrayidx1576.3, align 2
  %conv1577.3 = zext i16 %1677 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1675, ptr noundef nonnull @.str.268, i32 noundef 3, i32 noundef %conv1577.3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_get_power_limit(ptr noundef %smu, ptr noundef writeonly %current_power_limit, ptr noundef writeonly %default_power_limit, ptr noundef writeonly %max_power_limit) #1 align 64 {
entry:
  %power_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14
  %0 = ptrtoint ptr %smu_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_table, align 8
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %2 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_pptable, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power_limit) #12
  %4 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %power_limit, align 4, !annotation !1068
  %call = call i32 @smu_v11_0_get_current_power_limit(ptr noundef %smu, ptr noundef nonnull %power_limit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.681) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %SocketPowerLimitAc = getelementptr inbounds %struct.PPTable_t, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %SocketPowerLimitAc to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %SocketPowerLimitAc, align 4
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %power_limit, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %current_power_limit, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_limit, align 4
  %14 = ptrtoint ptr %current_power_limit to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %current_power_limit, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %default_power_limit, null
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %power_limit, align 4
  %17 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %default_power_limit, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %max_power_limit, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %od_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 25
  %18 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %od_enabled, align 4, !range !1071
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  br i1 %tobool13.not, label %if.then12.if.end27_crit_edge, label %if.then14

if.then12.if.end27_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then14:                                        ; preds = %if.then12
  %arrayidx15 = getelementptr %struct.smu_11_0_powerplay_table, ptr %1, i32 0, i32 16, i32 5, i32 9
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx15, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arcturus_get_power_limit.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arcturus_get_power_limit, %if.then21)) #12
          to label %do.end26 [label %if.then21], !srcloc !1070

if.then21:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smu, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %power_limit, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arcturus_get_power_limit.__UNIQUE_ID_ddebug344, ptr noundef %26, ptr noundef nonnull @.str.683, i32 noundef %22, i32 noundef %28) #12
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %if.then14
  %add = add i32 %22, 100
  %29 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %power_limit, align 4
  %mul = mul i32 %30, %add
  %div = udiv i32 %mul, 100
  store i32 %div, ptr %power_limit, align 4
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %if.then12.if.end27_crit_edge
  %31 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %power_limit, align 4
  %33 = ptrtoint ptr %max_power_limit to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_power_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end27 ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power_limit) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_set_df_cstate(ptr noundef %smu, i32 noundef %state) #1 align 64 {
entry:
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #12
  %0 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smu_version, align 4, !annotation !1068
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.55) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3542784, i32 %6)
  %cmp = icmp ult i32 %6, 3542784
  br i1 %cmp, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.686) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 144, i32 noundef %state, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end4 ], [ %call8, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_allow_xgmi_power_down(ptr noundef %smu, i1 noundef zeroext %en) #1 align 64 {
entry:
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #12
  %0 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smu_version, align 4, !annotation !1068
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.55) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3544832, i32 %6)
  %cmp = icmp ult i32 %6, 3544832
  br i1 %cmp, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.690) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br i1 %en, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 145, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 145, i32 noundef 0, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %do.end4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end4 ], [ %call10, %if.then9 ], [ %call12, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_i2c_control_init(ptr nocapture noundef readnone %smu, ptr noundef %control) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %control, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 1
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %class, align 4
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
  store ptr @arcturus_i2c_algo, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 17
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @arcturus_i2c_control_quirks, ptr %quirks, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %name, ptr @.str.692, i32 11)
  %call2 = tail call i32 @i2c_add_adapter(ptr noundef %control) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.693, i32 noundef %call2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcturus_i2c_control_fini(ptr nocapture noundef readnone %smu, ptr noundef %control) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef %control) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcturus_get_unique_id(ptr noundef %smu) #1 align 64 {
entry:
  %top32 = alloca i32, align 4
  %bottom32 = alloca i32, align 4
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %top32) #12
  %2 = ptrtoint ptr %top32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %top32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bottom32) #12
  %3 = ptrtoint ptr %bottom32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bottom32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #12
  %4 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %smu_version, align 4, !annotation !1068
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.694) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3544832, i32 %8)
  %cmp = icmp ult i32 %8, 3544832
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.698) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 67, ptr noundef nonnull %top32) #12
  %call9 = call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 68, ptr noundef nonnull %bottom32) #12
  %11 = ptrtoint ptr %bottom32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bottom32, align 4
  %conv = zext i32 %12 to i64
  %shl = shl nuw i64 %conv, 32
  %13 = ptrtoint ptr %top32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %top32, align 4
  %conv10 = zext i32 %14 to i64
  %or = or i64 %shl, %conv10
  %unique_id = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 153
  %15 = ptrtoint ptr %unique_id to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or, ptr %unique_id, align 8
  %serial = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 163
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %serial, ptr noundef nonnull @.str.700, i64 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end5, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bottom32) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %top32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_microcode(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_load_microcode(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_v11_0_fini_microcode(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_init_smc_tables(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tables2.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11
  %0 = ptrtoint ptr %tables2.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1012, ptr %tables2.i, align 8
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
  store i64 96, ptr %arrayidx15.i, align 8
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
  store i64 72, ptr %arrayidx24.i, align 8
  %align27.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 12, i32 1
  %10 = ptrtoint ptr %align27.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %align27.i, align 8
  %domain29.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 12, i32 2
  %11 = ptrtoint ptr %domain29.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %domain29.i, align 4
  %arrayidx33.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 10
  %12 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 124, ptr %arrayidx33.i, align 8
  %align36.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 10, i32 1
  %13 = ptrtoint ptr %align36.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4096, ptr %align36.i, align 8
  %domain38.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 10, i32 2
  %14 = ptrtoint ptr %domain38.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %domain38.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 96) #16
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %16 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %metrics_table.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  %call7.i.i72.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 120) #16
  %gpu_metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %20 = ptrtoint ptr %gpu_metrics_table.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i72.i, ptr %gpu_metrics_table.i, align 4
  %tobool45.not.i = icmp eq ptr %call7.i.i72.i, null
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end

if.then46.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %metrics_table.i, align 8
  tail call void @kfree(ptr noundef %22) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 1884) #16
  %dpm_context.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %dpm_context.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i11, ptr %dpm_context.i, align 4
  %tobool.not.i12 = icmp eq ptr %call7.i.i.i11, null
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %smu_dpm1.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15
  %25 = ptrtoint ptr %smu_dpm1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1884, ptr %smu_dpm1.i, align 4
  %call5 = tail call i32 @smu_v11_0_init_smc_tables(ptr noundef %smu) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then46.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then46.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_fini_smc_tables(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_power(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_fini_power(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_check_fw_status(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_set_mp1_state(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_setup_pptable(ptr noundef %smu) #1 align 64 {
entry:
  %smc_dpm_table.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_v11_0_setup_pptable(ptr noundef %smu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14
  %0 = ptrtoint ptr %smu_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_table.i, align 8
  %driver_pptable.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %2 = ptrtoint ptr %driver_pptable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_pptable.i, align 4
  %smc_pptable.i = getelementptr inbounds %struct.smu_11_0_powerplay_table, ptr %1, i32 0, i32 17
  %4 = call ptr @memcpy(ptr %3, ptr %smc_pptable.i, i32 1012)
  %5 = load ptr, ptr %driver_pptable.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_dpm_table.i) #12
  %6 = ptrtoint ptr %smc_dpm_table.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %smc_dpm_table.i, align 4, !annotation !1068
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %call.i = call i32 @amdgpu_atombios_get_data_table(ptr noundef %8, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %smc_dpm_table.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %arcturus_append_powerplay_table.exit

do.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smu, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = ptrtoint ptr %smc_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smc_dpm_table.i, align 4
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %format_revision.i, align 1
  %conv.i = zext i8 %16 to i32
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %content_revision.i, align 1
  %conv3.i = zext i8 %18 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.701, i32 noundef %conv.i, i32 noundef %conv3.i) #15
  %19 = ptrtoint ptr %smc_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smc_dpm_table.i, align 4
  %format_revision5.i = getelementptr inbounds %struct.atom_common_table_header, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %format_revision5.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %format_revision5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp.i = icmp eq i8 %22, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i.if.end8_crit_edge

do.end.i.if.end8_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true.i:                                  ; preds = %do.end.i
  %content_revision9.i = getelementptr inbounds %struct.atom_common_table_header, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %content_revision9.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %content_revision9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %cmp11.i = icmp eq i8 %24, 6
  br i1 %cmp11.i, label %do.end21.i, label %land.lhs.true.i.if.end8_crit_edge

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.end21.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %5, i32 760
  %add.ptr22.i = getelementptr i8, ptr %20, i32 16
  %25 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr22.i, i32 220)
  br label %if.end8

arcturus_append_powerplay_table.exit:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_dpm_table.i) #12
  br label %cleanup

if.end8:                                          ; preds = %do.end21.i, %land.lhs.true.i.if.end8_crit_edge, %do.end.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_dpm_table.i) #12
  %26 = ptrtoint ptr %smu_table.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %smu_table.i, align 8
  %28 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smu, align 8
  %platform_caps.i.i = getelementptr inbounds %struct.smu_11_0_powerplay_table, ptr %27, i32 0, i32 6
  %30 = ptrtoint ptr %platform_caps.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %platform_caps.i.i, align 1
  %32 = and i32 %31, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %if.end8.arcturus_check_bxco_support.exit.i_crit_edge, label %if.then.i.i

if.end8.arcturus_check_bxco_support.exit.i_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_check_bxco_support.exit.i

if.then.i.i:                                      ; preds = %if.end8
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %29, i32 0, i32 132
  %34 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt.i.i, align 8
  %and6.i.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then.i.i.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.cond.false.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %29, i32 0, i32 106, i32 2, i32 15
  %36 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %37, null
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %sriov_rreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %sriov_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_rreg.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %39, null
  br i1 %tobool13.not.i.i, label %land.lhs.true9.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true9.i.i.cond.false.i.i_crit_edge:      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %29, i32 0, i32 130, i32 13
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx19.i.i = getelementptr i32, ptr %41, i32 2
  %42 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx19.i.i, align 4
  %call.i.i = call i32 %39(ptr noundef %29, i32 noundef %43, i32 noundef 0, i32 noundef 13) #12
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true9.i.i.cond.false.i.i_crit_edge, %land.lhs.true.i.i.cond.false.i.i_crit_edge, %if.then.i.i.cond.false.i.i_crit_edge
  %arrayidx21.i.i = getelementptr %struct.amdgpu_device, ptr %29, i32 0, i32 130, i32 13
  %44 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx21.i.i, align 8
  %arrayidx23.i.i = getelementptr i32, ptr %45, i32 2
  %46 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx23.i.i, align 4
  %call25.i.i = call i32 @amdgpu_device_rreg(ptr noundef %29, i32 noundef %47, i32 noundef 0) #12
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ %call25.i.i, %cond.false.i.i ]
  %platform_support.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 19, i32 2
  %48 = trunc i32 %cond.i.i to i8
  %49 = lshr i8 %48, 7
  %50 = ptrtoint ptr %platform_support.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %platform_support.i.i, align 4
  br label %arcturus_check_bxco_support.exit.i

arcturus_check_bxco_support.exit.i:               ; preds = %cond.end.i.i, %if.end8.arcturus_check_bxco_support.exit.i_crit_edge
  %51 = ptrtoint ptr %driver_pptable.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_pptable.i, align 4
  %FeaturesToRun.i.i = getelementptr inbounds %struct.PPTable_t, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %FeaturesToRun.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %FeaturesToRun.i.i, align 4
  %55 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %smu, align 8
  %no_fan.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %56, i32 0, i32 98, i32 9
  %and.i.i = lshr i32 %54, 22
  %57 = trunc i32 %and.i.i to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  %60 = ptrtoint ptr %no_fan.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %no_fan.i.i, align 4
  %61 = load ptr, ptr %smu, align 8
  %no_fan3.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %61, i32 0, i32 98, i32 9
  %62 = ptrtoint ptr %no_fan3.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %no_fan3.i.i, align 4, !range !1071
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool4.not.i.i = icmp eq i8 %63, 0
  br i1 %tobool4.not.i.i, label %arcturus_check_bxco_support.exit.i.arcturus_check_powerplay_table.exit_crit_edge, label %do.body.i.i

arcturus_check_bxco_support.exit.i.arcturus_check_powerplay_table.exit_crit_edge: ; preds = %arcturus_check_bxco_support.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_check_powerplay_table.exit

do.body.i.i:                                      ; preds = %arcturus_check_bxco_support.exit.i
  %.b15.i.i = load i1, ptr @arcturus_check_fan_support.__print_once, align 1
  br i1 %.b15.i.i, label %do.body.i.i.arcturus_check_powerplay_table.exit_crit_edge, label %if.then6.i.i

do.body.i.i.arcturus_check_powerplay_table.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arcturus_check_powerplay_table.exit

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @arcturus_check_fan_support.__print_once, align 1
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.703) #15
  br label %arcturus_check_powerplay_table.exit

arcturus_check_powerplay_table.exit:              ; preds = %if.then6.i.i, %do.body.i.i.arcturus_check_powerplay_table.exit_crit_edge, %arcturus_check_bxco_support.exit.i.arcturus_check_powerplay_table.exit_crit_edge
  %thermal_controller_type.i = getelementptr inbounds %struct.smu_11_0_powerplay_table, ptr %27, i32 0, i32 7
  %66 = ptrtoint ptr %thermal_controller_type.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %thermal_controller_type.i, align 1
  %thermal_controller_type1.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 15
  %68 = ptrtoint ptr %thermal_controller_type1.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %thermal_controller_type1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %arcturus_check_powerplay_table.exit, %arcturus_append_powerplay_table.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %arcturus_check_powerplay_table.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %arcturus_append_powerplay_table.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_vbios_bootup_values(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_check_fw_version(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_write_pptable(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_driver_table_location(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_tool_table_location(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_notify_memory_pool_location(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_system_features_control(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_allowed_mask(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_enabled_mask(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_enabled(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_disable_all_features_with_exception(ptr noundef, i1 noundef zeroext, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_power_limit(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_max_sustainable_clocks(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_enable_thermal_alert(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_disable_thermal_alert(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_display_clock_voltage_request(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_fan_control_mode(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_fan_control_mode(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_set_fan_speed_pwm(ptr nocapture noundef readonly %smu, i32 noundef %speed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %speed, i32 255)
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false15_crit_edge, label %land.lhs.true

entry.cond.false15_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false15

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false15_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false15_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false15

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false15_crit_edge, label %cond.true8

land.lhs.true3.cond.false15_crit_edge:            ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false15

cond.true8:                                       ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add = add i32 %12, 140
  %call = tail call i32 %8(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end22

cond.false15:                                     ; preds = %land.lhs.true3.cond.false15_crit_edge, %land.lhs.true.cond.false15_crit_edge, %entry.cond.false15_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx17, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add20 = add i32 %16, 140
  %call21 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add20, i32 noundef 0) #12
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false15, %cond.true8
  %cond23 = phi i32 [ %call, %cond.true8 ], [ %call21, %cond.false15 ]
  %and24 = and i32 %cond23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cond.end22.cleanup_crit_edge, label %if.end220

cond.end22.cleanup_crit_edge:                     ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end220:                                        ; preds = %cond.end22
  %narrow = mul nuw nsw i32 %and24, %2
  %mul = zext i32 %narrow to i64
  %17 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul, i64 72340172838076673) #17, !srcloc !1072
  %18 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul, i64 %17) #17, !srcloc !1073
  %extract.t457 = trunc i64 %18 to i32
  %19 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %virt, align 8
  %and225 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end220.cond.false318.sink.split_crit_edge, label %land.lhs.true227

if.end220.cond.false318.sink.split_crit_edge:     ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false318.sink.split

land.lhs.true227:                                 ; preds = %if.end220
  %funcs230 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %21 = ptrtoint ptr %funcs230 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs230, align 4
  %tobool231.not = icmp eq ptr %22, null
  br i1 %tobool231.not, label %land.lhs.true227.cond.false318.sink.split_crit_edge, label %land.lhs.true232

land.lhs.true227.cond.false318.sink.split_crit_edge: ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false318.sink.split

land.lhs.true232:                                 ; preds = %land.lhs.true227
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sriov_wreg, align 4
  %tobool236.not = icmp eq ptr %24, null
  br i1 %tobool236.not, label %land.lhs.true296, label %cond.true237

cond.true237:                                     ; preds = %land.lhs.true232
  %arrayidx243 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %25 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx243, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add246 = add i32 %28, 139
  %sriov_rreg260 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %22, i32 0, i32 13
  %29 = ptrtoint ptr %sriov_rreg260 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov_rreg260, align 4
  %tobool261.not = icmp eq ptr %30, null
  br i1 %tobool261.not, label %cond.false273, label %cond.true262

cond.true262:                                     ; preds = %cond.true237
  call void @__sanitizer_cov_trace_pc() #14
  %call272 = tail call i32 %30(ptr noundef %1, i32 noundef %add246, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end280

cond.false273:                                    ; preds = %cond.true237
  call void @__sanitizer_cov_trace_pc() #14
  %call279 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add246, i32 noundef 0) #12
  br label %cond.end280

cond.end280:                                      ; preds = %cond.false273, %cond.true262
  %cond281 = phi i32 [ %call272, %cond.true262 ], [ %call279, %cond.false273 ]
  %and282 = and i32 %cond281, -256
  %and284 = and i32 %extract.t457, 255
  %or285 = or i32 %and282, %and284
  tail call void %24(ptr noundef %1, i32 noundef %add246, i32 noundef %or285, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end331

land.lhs.true296:                                 ; preds = %land.lhs.true232
  %31 = ptrtoint ptr %funcs230 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load ptr, ptr %funcs230, align 4
  %arrayidx288458 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %32 = ptrtoint ptr %arrayidx288458 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx288458, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add291459 = add i32 %35, 139
  %tobool300.not = icmp eq ptr %.pr, null
  br i1 %tobool300.not, label %land.lhs.true296.cond.false318_crit_edge, label %land.lhs.true301

land.lhs.true296.cond.false318_crit_edge:         ; preds = %land.lhs.true296
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false318

land.lhs.true301:                                 ; preds = %land.lhs.true296
  %sriov_rreg305 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %36 = ptrtoint ptr %sriov_rreg305 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_rreg305, align 4
  %tobool306.not = icmp eq ptr %37, null
  br i1 %tobool306.not, label %land.lhs.true301.cond.false318_crit_edge, label %cond.true307

land.lhs.true301.cond.false318_crit_edge:         ; preds = %land.lhs.true301
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false318

cond.true307:                                     ; preds = %land.lhs.true301
  call void @__sanitizer_cov_trace_pc() #14
  %call317 = tail call i32 %37(ptr noundef %1, i32 noundef %add291459, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end325

cond.false318.sink.split:                         ; preds = %land.lhs.true227.cond.false318.sink.split_crit_edge, %if.end220.cond.false318.sink.split_crit_edge
  %arrayidx288458463 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %38 = ptrtoint ptr %arrayidx288458463 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx288458463, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add291459464 = add i32 %41, 139
  br label %cond.false318

cond.false318:                                    ; preds = %cond.false318.sink.split, %land.lhs.true301.cond.false318_crit_edge, %land.lhs.true296.cond.false318_crit_edge
  %add291462 = phi i32 [ %add291459, %land.lhs.true301.cond.false318_crit_edge ], [ %add291459, %land.lhs.true296.cond.false318_crit_edge ], [ %add291459464, %cond.false318.sink.split ]
  %call324 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add291462, i32 noundef 0) #12
  br label %cond.end325

cond.end325:                                      ; preds = %cond.false318, %cond.true307
  %add291460 = phi i32 [ %add291459, %cond.true307 ], [ %add291462, %cond.false318 ]
  %cond326 = phi i32 [ %call317, %cond.true307 ], [ %call324, %cond.false318 ]
  %and327 = and i32 %cond326, -256
  %and329 = and i32 %extract.t457, 255
  %or330 = or i32 %and327, %and329
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add291460, i32 noundef %or330, i32 noundef 0) #12
  br label %cond.end331

cond.end331:                                      ; preds = %cond.end325, %cond.end280
  tail call fastcc void @arcturus_set_fan_static_mode(ptr noundef %smu, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %cond.end331, %cond.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end331 ], [ -22, %cond.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_set_fan_speed_rpm(ptr nocapture noundef readonly %smu, i32 noundef %speed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %mul3 = shl i32 %speed, 3
  %div = udiv i32 1500000000, %mul3
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false80.sink.split_crit_edge, label %land.lhs.true

entry.cond.false80.sink.split_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false80.sink.split

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.cond.false80.sink.split_crit_edge, label %land.lhs.true5

land.lhs.true.cond.false80.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false80.sink.split

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %land.lhs.true58, label %cond.true

cond.true:                                        ; preds = %land.lhs.true5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 142
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg, align 4
  %tobool29.not = icmp eq ptr %13, null
  br i1 %tobool29.not, label %cond.false, label %cond.true30

cond.true30:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %13(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true30
  %cond = phi i32 [ %call, %cond.true30 ], [ %call45, %cond.false ]
  %and46 = and i32 %cond, 7
  %shl = shl i32 %div, 3
  %or = or i32 %and46, %shl
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %or, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end93

land.lhs.true58:                                  ; preds = %land.lhs.true5
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx50124 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %15 = ptrtoint ptr %arrayidx50124 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx50124, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add53125 = add i32 %18, 142
  %tobool62.not = icmp eq ptr %.pr, null
  br i1 %tobool62.not, label %land.lhs.true58.cond.false80_crit_edge, label %land.lhs.true63

land.lhs.true58.cond.false80_crit_edge:           ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false80

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %sriov_rreg67 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %19 = ptrtoint ptr %sriov_rreg67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sriov_rreg67, align 4
  %tobool68.not = icmp eq ptr %20, null
  br i1 %tobool68.not, label %land.lhs.true63.cond.false80_crit_edge, label %cond.true69

land.lhs.true63.cond.false80_crit_edge:           ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false80

cond.true69:                                      ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  %call79 = tail call i32 %20(ptr noundef %1, i32 noundef %add53125, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end87

cond.false80.sink.split:                          ; preds = %land.lhs.true.cond.false80.sink.split_crit_edge, %entry.cond.false80.sink.split_crit_edge
  %arrayidx50124129 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %21 = ptrtoint ptr %arrayidx50124129 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx50124129, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add53125130 = add i32 %24, 142
  br label %cond.false80

cond.false80:                                     ; preds = %cond.false80.sink.split, %land.lhs.true63.cond.false80_crit_edge, %land.lhs.true58.cond.false80_crit_edge
  %add53128 = phi i32 [ %add53125, %land.lhs.true63.cond.false80_crit_edge ], [ %add53125, %land.lhs.true58.cond.false80_crit_edge ], [ %add53125130, %cond.false80.sink.split ]
  %call86 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add53128, i32 noundef 0) #12
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false80, %cond.true69
  %add53126 = phi i32 [ %add53125, %cond.true69 ], [ %add53128, %cond.false80 ]
  %cond88 = phi i32 [ %call79, %cond.true69 ], [ %call86, %cond.false80 ]
  %and89 = and i32 %cond88, 7
  %shl90 = shl i32 %div, 3
  %or92 = or i32 %and89, %shl90
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add53126, i32 noundef %or92, i32 noundef 0) #12
  br label %cond.end93

cond.end93:                                       ; preds = %cond.end87, %cond.end
  tail call fastcc void @arcturus_set_fan_static_mode(ptr noundef %smu, i32 noundef 5)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_xgmi_pstate(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_gfx_off_control(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_register_irq_handler(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_azalia_d3_pme(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_max_sustainable_clocks_by_dc(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu_v11_0_baco_is_support(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_baco_get_state(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_baco_set_state(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_baco_enter(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_baco_exit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_dpm_ultimate_freq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_soft_freq_limited_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcturus_log_thermal_throttling_event(ptr noundef %smu) #1 align 64 {
entry:
  %log_buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %log_buf) #12
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #12
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %arcturus_get_smu_metrics_data.exit

arcturus_get_smu_metrics_data.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ThrottlerStatus.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ThrottlerStatus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ThrottlerStatus.i, align 4
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #12
  %6 = call ptr @memset(ptr %log_buf, i32 0, i32 256)
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.then3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %if.end
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %log_buf, i32 noundef 256, ptr noundef nonnull @.str.705, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.712)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call7)
  %cmp8 = icmp ugt i32 %call7, 255
  br i1 %cmp8, label %if.then3.do.end_crit_edge, label %if.then3.for.inc_crit_edge

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.then3.6.do.end_crit_edge, %if.then3.5.do.end_crit_edge, %if.then3.4.do.end_crit_edge, %if.then3.3.do.end_crit_edge, %if.then3.2.do.end_crit_edge, %if.then3.1.do.end_crit_edge, %if.then3.do.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.707) #15
  %arrayidx10 = getelementptr inbounds [256 x i8], ptr %log_buf, i32 0, i32 255
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx10, align 1
  br label %do.end16

for.inc:                                          ; preds = %if.then3.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %throtting_events.1 = phi i32 [ 1, %if.then3.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ]
  %buf_idx.1 = phi i32 [ %call7, %if.then3.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ]
  %and.1 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  %inc.1 = add nuw nsw i32 %throtting_events.1, 1
  %add.ptr.1 = getelementptr i8, ptr %log_buf, i32 %buf_idx.1
  %sub.1 = sub nuw nsw i32 256, %buf_idx.1
  %cond.1 = select i1 %tobool2.not, ptr @.str.13, ptr @.str.706
  %call7.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.705, ptr noundef nonnull %cond.1, ptr noundef nonnull @.str.713)
  %add.1 = add i32 %call7.1, %buf_idx.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.1)
  %cmp8.1 = icmp ugt i32 %add.1, 255
  br i1 %cmp8.1, label %if.then3.1.do.end_crit_edge, label %if.then3.1.for.inc.1_crit_edge

if.then3.1.for.inc.1_crit_edge:                   ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then3.1.do.end_crit_edge:                      ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.inc.1:                                        ; preds = %if.then3.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %throtting_events.1.1 = phi i32 [ %inc.1, %if.then3.1.for.inc.1_crit_edge ], [ %throtting_events.1, %for.inc.for.inc.1_crit_edge ]
  %buf_idx.1.1 = phi i32 [ %add.1, %if.then3.1.for.inc.1_crit_edge ], [ %buf_idx.1, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then3.2:                                       ; preds = %for.inc.1
  %inc.2 = add nuw nsw i32 %throtting_events.1.1, 1
  %add.ptr.2 = getelementptr i8, ptr %log_buf, i32 %buf_idx.1.1
  %sub.2 = sub nuw nsw i32 256, %buf_idx.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %throtting_events.1.1)
  %cmp5.2.not = icmp eq i32 %throtting_events.1.1, 0
  %cond.2 = select i1 %cmp5.2.not, ptr @.str.13, ptr @.str.706
  %call7.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.705, ptr noundef nonnull %cond.2, ptr noundef nonnull @.str.714)
  %add.2 = add i32 %call7.2, %buf_idx.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.2)
  %cmp8.2 = icmp ugt i32 %add.2, 255
  br i1 %cmp8.2, label %if.then3.2.do.end_crit_edge, label %if.then3.2.for.inc.2_crit_edge

if.then3.2.for.inc.2_crit_edge:                   ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then3.2.do.end_crit_edge:                      ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.inc.2:                                        ; preds = %if.then3.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %throtting_events.1.2 = phi i32 [ %inc.2, %if.then3.2.for.inc.2_crit_edge ], [ %throtting_events.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %buf_idx.1.2 = phi i32 [ %add.2, %if.then3.2.for.inc.2_crit_edge ], [ %buf_idx.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool2.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then3.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then3.3:                                       ; preds = %for.inc.2
  %inc.3 = add nuw nsw i32 %throtting_events.1.2, 1
  %add.ptr.3 = getelementptr i8, ptr %log_buf, i32 %buf_idx.1.2
  %sub.3 = sub nuw nsw i32 256, %buf_idx.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %throtting_events.1.2)
  %cmp5.3.not = icmp eq i32 %throtting_events.1.2, 0
  %cond.3 = select i1 %cmp5.3.not, ptr @.str.13, ptr @.str.706
  %call7.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.705, ptr noundef nonnull %cond.3, ptr noundef nonnull @.str.715)
  %add.3 = add i32 %call7.3, %buf_idx.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.3)
  %cmp8.3 = icmp ugt i32 %add.3, 255
  br i1 %cmp8.3, label %if.then3.3.do.end_crit_edge, label %if.then3.3.for.inc.3_crit_edge

if.then3.3.for.inc.3_crit_edge:                   ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then3.3.do.end_crit_edge:                      ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.inc.3:                                        ; preds = %if.then3.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %throtting_events.1.3 = phi i32 [ %inc.3, %if.then3.3.for.inc.3_crit_edge ], [ %throtting_events.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %buf_idx.1.3 = phi i32 [ %add.3, %if.then3.3.for.inc.3_crit_edge ], [ %buf_idx.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %and.4 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool2.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool2.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then3.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then3.4:                                       ; preds = %for.inc.3
  %inc.4 = add nuw nsw i32 %throtting_events.1.3, 1
  %add.ptr.4 = getelementptr i8, ptr %log_buf, i32 %buf_idx.1.3
  %sub.4 = sub nuw nsw i32 256, %buf_idx.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %throtting_events.1.3)
  %cmp5.4.not = icmp eq i32 %throtting_events.1.3, 0
  %cond.4 = select i1 %cmp5.4.not, ptr @.str.13, ptr @.str.706
  %call7.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.705, ptr noundef nonnull %cond.4, ptr noundef nonnull @.str.716)
  %add.4 = add i32 %call7.4, %buf_idx.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.4)
  %cmp8.4 = icmp ugt i32 %add.4, 255
  br i1 %cmp8.4, label %if.then3.4.do.end_crit_edge, label %if.then3.4.for.inc.4_crit_edge

if.then3.4.for.inc.4_crit_edge:                   ; preds = %if.then3.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then3.4.do.end_crit_edge:                      ; preds = %if.then3.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.inc.4:                                        ; preds = %if.then3.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %throtting_events.1.4 = phi i32 [ %inc.4, %if.then3.4.for.inc.4_crit_edge ], [ %throtting_events.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %buf_idx.1.4 = phi i32 [ %add.4, %if.then3.4.for.inc.4_crit_edge ], [ %buf_idx.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %and.5 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool2.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool2.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then3.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then3.5:                                       ; preds = %for.inc.4
  %inc.5 = add nuw nsw i32 %throtting_events.1.4, 1
  %add.ptr.5 = getelementptr i8, ptr %log_buf, i32 %buf_idx.1.4
  %sub.5 = sub nuw nsw i32 256, %buf_idx.1.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %throtting_events.1.4)
  %cmp5.5.not = icmp eq i32 %throtting_events.1.4, 0
  %cond.5 = select i1 %cmp5.5.not, ptr @.str.13, ptr @.str.706
  %call7.5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.705, ptr noundef nonnull %cond.5, ptr noundef nonnull @.str.717)
  %add.5 = add i32 %call7.5, %buf_idx.1.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.5)
  %cmp8.5 = icmp ugt i32 %add.5, 255
  br i1 %cmp8.5, label %if.then3.5.do.end_crit_edge, label %if.then3.5.for.inc.5_crit_edge

if.then3.5.for.inc.5_crit_edge:                   ; preds = %if.then3.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then3.5.do.end_crit_edge:                      ; preds = %if.then3.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.inc.5:                                        ; preds = %if.then3.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %throtting_events.1.5 = phi i32 [ %inc.5, %if.then3.5.for.inc.5_crit_edge ], [ %throtting_events.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %buf_idx.1.5 = phi i32 [ %add.5, %if.then3.5.for.inc.5_crit_edge ], [ %buf_idx.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %and.6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool2.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool2.not.6, label %for.inc.5.do.end16_crit_edge, label %if.then3.6

for.inc.5.do.end16_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

if.then3.6:                                       ; preds = %for.inc.5
  %add.ptr.6 = getelementptr i8, ptr %log_buf, i32 %buf_idx.1.5
  %sub.6 = sub nuw nsw i32 256, %buf_idx.1.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %throtting_events.1.5)
  %cmp5.6.not = icmp eq i32 %throtting_events.1.5, 0
  %cond.6 = select i1 %cmp5.6.not, ptr @.str.13, ptr @.str.706
  %call7.6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.705, ptr noundef nonnull %cond.6, ptr noundef nonnull @.str.718)
  %add.6 = add i32 %call7.6, %buf_idx.1.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.6)
  %cmp8.6 = icmp ugt i32 %add.6, 255
  br i1 %cmp8.6, label %if.then3.6.do.end_crit_edge, label %if.then3.6.do.end16_crit_edge

if.then3.6.do.end16_crit_edge:                    ; preds = %if.then3.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

if.then3.6.do.end_crit_edge:                      ; preds = %if.then3.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end16:                                         ; preds = %if.then3.6.do.end16_crit_edge, %for.inc.5.do.end16_crit_edge, %do.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.710, ptr noundef nonnull %log_buf) #15
  %call21 = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %5, ptr noundef nonnull @arcturus_throttler_map) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %arcturus_get_smu_metrics_data.exit
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %log_buf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_pp_feature_mask(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_set_pp_feature_mask(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_get_gpu_metrics(ptr noundef %smu, ptr nocapture noundef writeonly %table) #1 align 64 {
entry:
  %metrics = alloca %struct.SmuMetrics_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %0 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu_metrics_table, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %metrics) #12
  %2 = call ptr @memset(ptr %metrics, i32 255, i32 96)
  %call = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 3) #12
  %TemperatureEdge = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 11
  %3 = ptrtoint ptr %TemperatureEdge to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %TemperatureEdge, align 4
  %temperature_edge = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %temperature_edge to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %temperature_edge, align 4
  %TemperatureHotspot = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 12
  %6 = ptrtoint ptr %TemperatureHotspot to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %TemperatureHotspot, align 2
  %temperature_hotspot = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %temperature_hotspot to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %temperature_hotspot, align 2
  %TemperatureHBM = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 13
  %9 = ptrtoint ptr %TemperatureHBM to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %TemperatureHBM, align 4
  %temperature_mem = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %temperature_mem to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %temperature_mem, align 8
  %TemperatureVrGfx = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 14
  %12 = ptrtoint ptr %TemperatureVrGfx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %TemperatureVrGfx, align 2
  %temperature_vrgfx = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %temperature_vrgfx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %temperature_vrgfx, align 2
  %TemperatureVrSoc = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 15
  %15 = ptrtoint ptr %TemperatureVrSoc to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %TemperatureVrSoc, align 4
  %temperature_vrsoc = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %temperature_vrsoc to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %temperature_vrsoc, align 4
  %TemperatureVrMem = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 16
  %18 = ptrtoint ptr %TemperatureVrMem to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %TemperatureVrMem, align 2
  %temperature_vrmem = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %temperature_vrmem to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %temperature_vrmem, align 2
  %AverageGfxActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 4
  %21 = ptrtoint ptr %AverageGfxActivity to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %AverageGfxActivity, align 2
  %average_gfx_activity = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %average_gfx_activity to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %average_gfx_activity, align 8
  %AverageUclkActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 5
  %24 = ptrtoint ptr %AverageUclkActivity to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %AverageUclkActivity, align 4
  %average_umc_activity = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %average_umc_activity to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %average_umc_activity, align 2
  %VcnActivityPercentage = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 21
  %27 = ptrtoint ptr %VcnActivityPercentage to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %VcnActivityPercentage, align 2
  %average_mm_activity = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %average_mm_activity to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %average_mm_activity, align 4
  %AverageSocketPower = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 10
  %30 = ptrtoint ptr %AverageSocketPower to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %AverageSocketPower, align 2
  %average_socket_power = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %average_socket_power to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %average_socket_power, align 2
  %EnergyAccumulator = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 22
  %33 = ptrtoint ptr %EnergyAccumulator to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %EnergyAccumulator, align 4
  %conv = zext i32 %34 to i64
  %energy_accumulator = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %energy_accumulator to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv, ptr %energy_accumulator, align 8
  %AverageGfxclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1
  %36 = ptrtoint ptr %AverageGfxclkFrequency to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %AverageGfxclkFrequency, align 4
  %average_gfxclk_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 13
  %38 = ptrtoint ptr %average_gfxclk_frequency to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %average_gfxclk_frequency, align 8
  %AverageSocclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 2
  %39 = ptrtoint ptr %AverageSocclkFrequency to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %AverageSocclkFrequency, align 2
  %average_socclk_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 14
  %41 = ptrtoint ptr %average_socclk_frequency to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %average_socclk_frequency, align 2
  %AverageUclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 3
  %42 = ptrtoint ptr %AverageUclkFrequency to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %AverageUclkFrequency, align 4
  %average_uclk_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %average_uclk_frequency to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %average_uclk_frequency, align 4
  %AverageVclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 19
  %45 = ptrtoint ptr %AverageVclkFrequency to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %AverageVclkFrequency, align 2
  %average_vclk0_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 16
  %47 = ptrtoint ptr %average_vclk0_frequency to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %average_vclk0_frequency, align 2
  %AverageDclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 20
  %48 = ptrtoint ptr %AverageDclkFrequency to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %AverageDclkFrequency, align 4
  %average_dclk0_frequency = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 17
  %50 = ptrtoint ptr %average_dclk0_frequency to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %average_dclk0_frequency, align 8
  %51 = ptrtoint ptr %metrics to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %metrics, align 4
  %current_gfxclk = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 20
  %53 = ptrtoint ptr %current_gfxclk to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %current_gfxclk, align 2
  %arrayidx3 = getelementptr inbounds [6 x i16], ptr %metrics, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx3, align 2
  %current_socclk = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 21
  %56 = ptrtoint ptr %current_socclk to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %current_socclk, align 8
  %arrayidx5 = getelementptr inbounds [6 x i16], ptr %metrics, i32 0, i32 4
  %57 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx5, align 4
  %current_uclk = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 22
  %59 = ptrtoint ptr %current_uclk to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %current_uclk, align 2
  %arrayidx7 = getelementptr inbounds [6 x i16], ptr %metrics, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx7, align 2
  %current_vclk0 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 23
  %62 = ptrtoint ptr %current_vclk0 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %current_vclk0, align 4
  %arrayidx9 = getelementptr inbounds [6 x i16], ptr %metrics, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx9, align 4
  %current_dclk0 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 24
  %65 = ptrtoint ptr %current_dclk0 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %current_dclk0, align 2
  %ThrottlerStatus = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 17
  %66 = ptrtoint ptr %ThrottlerStatus to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ThrottlerStatus, align 4
  %throttle_status = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 27
  %68 = ptrtoint ptr %throttle_status to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %throttle_status, align 4
  %call11 = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %67, ptr noundef nonnull @arcturus_throttler_map) #12
  %indep_throttle_status = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 40
  %69 = ptrtoint ptr %indep_throttle_status to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %call11, ptr %indep_throttle_status, align 8
  %CurrFanSpeed = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 18
  %70 = ptrtoint ptr %CurrFanSpeed to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %CurrFanSpeed, align 4
  %current_fan_speed = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 28
  %72 = ptrtoint ptr %current_fan_speed to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %current_fan_speed, align 8
  %call12 = call zeroext i16 @smu_v11_0_get_current_pcie_link_width(ptr noundef %smu) #12
  %pcie_link_width = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 29
  %73 = ptrtoint ptr %pcie_link_width to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %call12, ptr %pcie_link_width, align 2
  %74 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %smu, align 8
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %75, i32 0, i32 39
  %76 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i = call i32 %77(ptr noundef %75, i32 noundef 286262224) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 32768
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %78 = trunc i32 %call.i to i16
  %79 = lshr i16 %78, 8
  %80 = and i16 %79, 63
  %conv.i = or i16 %80, 128
  br label %arcturus_get_current_pcie_link_speed.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = call zeroext i16 @smu_v11_0_get_current_pcie_link_speed(ptr noundef %smu) #12
  br label %arcturus_get_current_pcie_link_speed.exit

arcturus_get_current_pcie_link_speed.exit:        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i16 [ %conv.i, %if.then.i ], [ %call4.i, %if.end.i ]
  %pcie_link_speed = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 30
  %81 = ptrtoint ptr %pcie_link_speed to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %retval.0.i, ptr %pcie_link_speed, align 4
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 1) #12
  %system_clock_counter = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %1, i32 0, i32 12
  %82 = ptrtoint ptr %system_clock_counter to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %call.i.i, ptr %system_clock_counter, align 8
  %83 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %1, ptr %table, align 4
  br label %cleanup

cleanup:                                          ; preds = %arcturus_get_current_pcie_link_speed.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 120, %arcturus_get_current_pcie_link_speed.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %metrics) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_gfx_ulv_control(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_deep_sleep_control(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arcturus_get_fan_parameters(ptr nocapture noundef %smu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %FanMaximumRpm = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %FanMaximumRpm to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %FanMaximumRpm, align 2
  %conv = zext i16 %3 to i32
  %fan_max_rpm = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 52
  %4 = ptrtoint ptr %fan_max_rpm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %fan_max_rpm, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_v11_0_interrupt_work(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_handle_passthrough_sbr(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_single_dpm_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arcturus_get_current_clk_freq_by_table(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %value) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.726)
  switch i32 %call, label %if.end2.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb7
    i32 3, label %sw.bb13
    i32 1, label %sw.bb19
    i32 2, label %sw.bb25
    i32 5, label %if.end2.sw.epilog_crit_edge
  ]

if.end2.sw.epilog_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i32 10, i32 0
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %.42 = select i1 %tobool9.not, i32 13, i32 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %.43 = select i1 %tobool15.not, i32 11, i32 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  %.44 = select i1 %tobool21.not, i32 14, i32 3
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %.45 = select i1 %tobool27.not, i32 15, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb19, %sw.bb13, %sw.bb7, %sw.bb, %if.end2.sw.epilog_crit_edge
  %member_type.0 = phi i32 [ %., %sw.bb ], [ %.42, %sw.bb7 ], [ %.43, %sw.bb13 ], [ %.44, %sw.bb19 ], [ %.45, %sw.bb25 ], [ 7, %if.end2.sw.epilog_crit_edge ]
  %call32 = tail call fastcc i32 @arcturus_get_smu_metrics_data(ptr noundef %smu, i32 noundef %member_type.0, ptr noundef nonnull %value)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_current_pcie_link_speed_level(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_current_pcie_link_width_level(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_to_asic_specific_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arcturus_get_smu_metrics_data(ptr noundef %smu, i32 noundef %member, ptr noundef writeonly %value) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %metrics_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metrics_table, align 8
  %metrics_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock, i32 noundef 0) #12
  %call = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %member to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.727)
  switch i32 %member, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
    i32 3, label %sw.bb11
    i32 5, label %sw.bb15
    i32 7, label %sw.bb19
    i32 10, label %sw.bb23
    i32 11, label %sw.bb25
    i32 13, label %sw.bb27
    i32 14, label %sw.bb29
    i32 15, label %sw.bb31
    i32 16, label %sw.bb33
    i32 17, label %sw.bb35
    i32 18, label %sw.bb37
    i32 19, label %sw.bb39
    i32 20, label %sw.bb41
    i32 21, label %sw.bb43
    i32 22, label %sw.bb46
    i32 23, label %sw.bb49
    i32 24, label %sw.bb52
    i32 25, label %sw.bb55
    i32 26, label %sw.bb58
    i32 27, label %sw.bb59
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 4
  %conv = zext i16 %4 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx5 = getelementptr [6 x i16], ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %6 to i32
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx9 = getelementptr [6 x i16], ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx9, align 4
  %conv10 = zext i16 %8 to i32
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13 = getelementptr [6 x i16], ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %10 to i32
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx17 = getelementptr [6 x i16], ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx17, align 4
  %conv18 = zext i16 %12 to i32
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx21 = getelementptr [6 x i16], ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %14 to i32
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %AverageGfxclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %AverageGfxclkFrequency to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %AverageGfxclkFrequency, align 4
  %conv24 = zext i16 %16 to i32
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %AverageSocclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %AverageSocclkFrequency to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %AverageSocclkFrequency, align 2
  %conv26 = zext i16 %18 to i32
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %AverageUclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %AverageUclkFrequency to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %AverageUclkFrequency, align 4
  %conv28 = zext i16 %20 to i32
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %AverageVclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %AverageVclkFrequency to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %AverageVclkFrequency, align 2
  %conv30 = zext i16 %22 to i32
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %AverageDclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %AverageDclkFrequency to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %AverageDclkFrequency, align 4
  %conv32 = zext i16 %24 to i32
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %AverageGfxActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %AverageGfxActivity to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %AverageGfxActivity, align 2
  %conv34 = zext i16 %26 to i32
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %AverageUclkActivity = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %AverageUclkActivity to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %AverageUclkActivity, align 4
  %conv36 = zext i16 %28 to i32
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %VcnActivityPercentage = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 21
  %29 = ptrtoint ptr %VcnActivityPercentage to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %VcnActivityPercentage, align 2
  %conv38 = zext i16 %30 to i32
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %AverageSocketPower = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %AverageSocketPower to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %AverageSocketPower, align 2
  %conv40 = zext i16 %32 to i32
  %shl = shl nuw nsw i32 %conv40, 8
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %TemperatureEdge = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %TemperatureEdge to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %TemperatureEdge, align 4
  %conv42 = zext i16 %34 to i32
  %mul = mul nuw nsw i32 %conv42, 1000
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %TemperatureHotspot = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %TemperatureHotspot to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %TemperatureHotspot, align 2
  %conv44 = zext i16 %36 to i32
  %mul45 = mul nuw nsw i32 %conv44, 1000
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %TemperatureHBM = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %TemperatureHBM to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %TemperatureHBM, align 4
  %conv47 = zext i16 %38 to i32
  %mul48 = mul nuw nsw i32 %conv47, 1000
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %TemperatureVrGfx = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %TemperatureVrGfx to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %TemperatureVrGfx, align 2
  %conv50 = zext i16 %40 to i32
  %mul51 = mul nuw nsw i32 %conv50, 1000
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %TemperatureVrSoc = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 15
  %41 = ptrtoint ptr %TemperatureVrSoc to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %TemperatureVrSoc, align 4
  %conv53 = zext i16 %42 to i32
  %mul54 = mul nuw nsw i32 %conv53, 1000
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %TemperatureVrMem = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 16
  %43 = ptrtoint ptr %TemperatureVrMem to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %TemperatureVrMem, align 2
  %conv56 = zext i16 %44 to i32
  %mul57 = mul nuw nsw i32 %conv56, 1000
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ThrottlerStatus = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %ThrottlerStatus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ThrottlerStatus, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %CurrFanSpeed = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 18
  %47 = ptrtoint ptr %CurrFanSpeed to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %CurrFanSpeed, align 4
  %conv60 = zext i16 %48 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb59, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb49, %sw.bb46, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ %conv60, %sw.bb59 ], [ %46, %sw.bb58 ], [ %mul57, %sw.bb55 ], [ %mul54, %sw.bb52 ], [ %mul51, %sw.bb49 ], [ %mul48, %sw.bb46 ], [ %mul45, %sw.bb43 ], [ %mul, %sw.bb41 ], [ %shl, %sw.bb39 ], [ %conv38, %sw.bb37 ], [ %conv36, %sw.bb35 ], [ %conv34, %sw.bb33 ], [ %conv32, %sw.bb31 ], [ %conv30, %sw.bb29 ], [ %conv28, %sw.bb27 ], [ %conv26, %sw.bb25 ], [ %conv24, %sw.bb23 ], [ %conv22, %sw.bb19 ], [ %conv18, %sw.bb15 ], [ %conv14, %sw.bb11 ], [ %conv10, %sw.bb7 ], [ %conv6, %sw.bb3 ], [ %conv, %sw.bb ], [ -1, %if.end.sw.epilog_crit_edge ]
  %49 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_smc_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_update_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_set_enabled(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_gfx_vdd(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_performance_level(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_current_power_limit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcturus_i2c_xfer(ptr noundef %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %num_msgs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %smu = getelementptr i8, ptr %i2c_adap, i32 -4464
  %cpu_addr = getelementptr i8, ptr %i2c_adap, i32 -3424
  %0 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_addr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  %shl = shl i16 %6, 1
  %SlaveAddress = getelementptr inbounds %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %SlaveAddress to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %shl, ptr %SlaveAddress, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_msgs)
  %cmp180 = icmp sgt i32 %num_msgs, 0
  br i1 %cmp180, label %for.cond7.preheader.lr.ph, label %if.end.for.end65_crit_edge

if.end.for.end65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end65

for.cond7.preheader.lr.ph:                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 1
  %NumCmds = getelementptr inbounds %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 3
  %sub43 = add nsw i32 %num_msgs, -1
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc63.for.cond7.preheader_crit_edge, %for.cond7.preheader.lr.ph
  %dir.0184 = phi i16 [ %10, %for.cond7.preheader.lr.ph ], [ %dir.1.lcssa, %for.inc63.for.cond7.preheader_crit_edge ]
  %c.0183 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %c.1.lcssa, %for.inc63.for.cond7.preheader_crit_edge ]
  %i.0181 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc64, %for.inc63.for.cond7.preheader_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0181, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len, align 4
  %conv9 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp10173.not = icmp eq i16 %12, 0
  br i1 %cmp10173.not, label %for.cond7.preheader.for.inc63_crit_edge, label %for.body12.lr.ph

for.cond7.preheader.for.inc63_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc63

for.body12.lr.ph:                                 ; preds = %for.cond7.preheader
  %flags15 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0181, i32 1
  %13 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags15, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool18.not = icmp eq i16 %15, 0
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0181, i32 3
  %sub = add nsw i32 %conv9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0181, i32 %sub43)
  %cmp44 = icmp ne i32 %i.0181, %sub43
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %tobool50.not = icmp sgt i16 %14, -1
  %or.cond = select i1 %cmp44, i1 %tobool50.not, i1 false
  br label %for.body12

for.body12:                                       ; preds = %if.end60.for.body12_crit_edge, %for.body12.lr.ph
  %dir.1178 = phi i16 [ %dir.0184, %for.body12.lr.ph ], [ %dir.2, %if.end60.for.body12_crit_edge ]
  %c.1175 = phi i32 [ %c.0183, %for.body12.lr.ph ], [ %inc62, %if.end60.for.body12_crit_edge ]
  %j.0174 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc61, %if.end60.for.body12_crit_edge ]
  br i1 %tobool18.not, label %if.then19, label %for.body12.if.end22_crit_edge

for.body12.if.end22_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then19:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13 = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 5, i32 %c.1175
  %Cmd = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 5, i32 %c.1175, i32 1
  %16 = ptrtoint ptr %Cmd to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %Cmd, align 1
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %arrayidx21 = getelementptr i8, ptr %18, i32 %j.0174
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21, align 1
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx13, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %for.body12.if.end22_crit_edge
  %xor172 = xor i16 %14, %dir.1178
  %22 = and i16 %xor172, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool28.not = icmp eq i16 %22, 0
  br i1 %tobool28.not, label %if.end22.if.end37_crit_edge, label %if.then29

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %CmdConfig = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 5, i32 %c.1175, i32 3
  %23 = ptrtoint ptr %CmdConfig to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %CmdConfig, align 1
  %25 = or i8 %24, 2
  store i8 %25, ptr %CmdConfig, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end22.if.end37_crit_edge
  %dir.2 = phi i16 [ %15, %if.then29 ], [ %dir.1178, %if.end22.if.end37_crit_edge ]
  %26 = ptrtoint ptr %NumCmds to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %NumCmds, align 4
  %inc = add i8 %27, 1
  store i8 %inc, ptr %NumCmds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0174, i32 %sub)
  %cmp41 = icmp ne i32 %j.0174, %sub
  %brmerge = select i1 %cmp41, i1 true, i1 %or.cond
  br i1 %brmerge, label %if.end37.if.end60_crit_edge, label %if.then51

if.end37.if.end60_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %CmdConfig52 = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 5, i32 %c.1175, i32 3
  %28 = ptrtoint ptr %CmdConfig52 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %CmdConfig52, align 1
  %30 = and i8 %29, -4
  %31 = or i8 %30, 1
  store i8 %31, ptr %CmdConfig52, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then51, %if.end37.if.end60_crit_edge
  %inc61 = add nuw nsw i32 %j.0174, 1
  %inc62 = add i32 %c.1175, 1
  %exitcond.not = icmp eq i32 %inc61, %conv9
  br i1 %exitcond.not, label %if.end60.for.inc63_crit_edge, label %if.end60.for.body12_crit_edge

if.end60.for.body12_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12

if.end60.for.inc63_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc63

for.inc63:                                        ; preds = %if.end60.for.inc63_crit_edge, %for.cond7.preheader.for.inc63_crit_edge
  %c.1.lcssa = phi i32 [ %c.0183, %for.cond7.preheader.for.inc63_crit_edge ], [ %inc62, %if.end60.for.inc63_crit_edge ]
  %dir.1.lcssa = phi i16 [ %dir.0184, %for.cond7.preheader.for.inc63_crit_edge ], [ %dir.2, %if.end60.for.inc63_crit_edge ]
  %inc64 = add nuw nsw i32 %i.0181, 1
  %exitcond195.not = icmp eq i32 %inc64, %num_msgs
  br i1 %exitcond195.not, label %for.inc63.for.end65_crit_edge, label %for.inc63.for.cond7.preheader_crit_edge

for.inc63.for.cond7.preheader_crit_edge:          ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond7.preheader

for.inc63.for.end65_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end65

for.end65:                                        ; preds = %for.inc63.for.end65_crit_edge, %if.end.for.end65_crit_edge
  %mutex = getelementptr i8, ptr %i2c_adap, i32 -4420
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %call68 = tail call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool71.not = icmp ne i32 %call68, 0
  %cmp180.not = xor i1 %cmp180, true
  %brmerge197 = or i1 %tobool71.not, %cmp180.not
  %call68.mux = select i1 %tobool71.not, i32 %call68, i32 %num_msgs
  br i1 %brmerge197, label %for.end65.fail_crit_edge, label %for.end65.for.body77_crit_edge

for.end65.for.body77_crit_edge:                   ; preds = %for.end65
  br label %for.body77

for.end65.fail_crit_edge:                         ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

for.body77:                                       ; preds = %for.inc105.for.body77_crit_edge, %for.end65.for.body77_crit_edge
  %c.2194 = phi i32 [ %c.4, %for.inc105.for.body77_crit_edge ], [ 0, %for.end65.for.body77_crit_edge ]
  %i.1191 = phi i32 [ %inc106, %for.inc105.for.body77_crit_edge ], [ 0, %for.end65.for.body77_crit_edge ]
  %flags79 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1191, i32 1
  %32 = ptrtoint ptr %flags79 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags79, align 2
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool82.not = icmp eq i16 %34, 0
  %len85 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1191, i32 2
  %35 = ptrtoint ptr %len85 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len85, align 4
  br i1 %tobool82.not, label %if.then83, label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %for.body77
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp92186.not = icmp eq i16 %36, 0
  br i1 %cmp92186.not, label %for.cond88.preheader.for.inc105_crit_edge, label %for.body94.lr.ph

for.cond88.preheader.for.inc105_crit_edge:        ; preds = %for.cond88.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc105

for.body94.lr.ph:                                 ; preds = %for.cond88.preheader
  %buf99 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1191, i32 3
  br label %for.body94

if.then83:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #14
  %conv86 = zext i16 %36 to i32
  %add = add i32 %c.2194, %conv86
  br label %for.inc105

for.body94:                                       ; preds = %for.body94.for.body94_crit_edge, %for.body94.lr.ph
  %c.3188 = phi i32 [ %c.2194, %for.body94.lr.ph ], [ %inc103, %for.body94.for.body94_crit_edge ]
  %j.1187 = phi i32 [ 0, %for.body94.lr.ph ], [ %inc102, %for.body94.for.body94_crit_edge ]
  %Data = getelementptr %struct.SwI2cRequest_t, ptr %1, i32 0, i32 5, i32 %c.3188, i32 2
  %37 = ptrtoint ptr %Data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %Data, align 1
  %39 = ptrtoint ptr %buf99 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf99, align 4
  %arrayidx100 = getelementptr i8, ptr %40, i32 %j.1187
  %41 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %38, ptr %arrayidx100, align 1
  %inc102 = add nuw nsw i32 %j.1187, 1
  %inc103 = add i32 %c.3188, 1
  %42 = ptrtoint ptr %len85 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len85, align 4
  %conv91 = zext i16 %43 to i32
  %cmp92 = icmp ult i32 %inc102, %conv91
  br i1 %cmp92, label %for.body94.for.body94_crit_edge, label %for.body94.for.inc105_crit_edge

for.body94.for.inc105_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc105

for.body94.for.body94_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body94

for.inc105:                                       ; preds = %for.body94.for.inc105_crit_edge, %if.then83, %for.cond88.preheader.for.inc105_crit_edge
  %c.4 = phi i32 [ %add, %if.then83 ], [ %c.2194, %for.cond88.preheader.for.inc105_crit_edge ], [ %inc103, %for.body94.for.inc105_crit_edge ]
  %inc106 = add nuw nsw i32 %i.1191, 1
  %exitcond196.not = icmp eq i32 %inc106, %num_msgs
  br i1 %exitcond196.not, label %for.inc105.fail_crit_edge, label %for.inc105.for.body77_crit_edge

for.inc105.for.body77_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body77

for.inc105.fail_crit_edge:                        ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

fail:                                             ; preds = %for.inc105.fail_crit_edge, %for.end65.fail_crit_edge
  %r.0 = phi i32 [ %call68.mux, %for.end65.fail_crit_edge ], [ %num_msgs, %for.inc105.fail_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %fail ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arcturus_i2c_func(ptr nocapture noundef readnone %adap) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_smc_tables(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_setup_pptable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arcturus_set_fan_static_mode(ptr nocapture noundef readonly %smu, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false77.sink.split_crit_edge, label %land.lhs.true

entry.cond.false77.sink.split_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false77.sink.split

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false77.sink.split_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false77.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false77.sink.split

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true55, label %cond.true

cond.true:                                        ; preds = %land.lhs.true3
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 141
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg, align 4
  %tobool27.not = icmp eq ptr %13, null
  br i1 %tobool27.not, label %cond.false, label %cond.true28

cond.true28:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %13(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true28
  %cond = phi i32 [ %call, %cond.true28 ], [ %call43, %cond.false ]
  %and44 = and i32 %cond, -256
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %and44, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end88

land.lhs.true55:                                  ; preds = %land.lhs.true3
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx471 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %15 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx471, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add502 = add i32 %18, 141
  %tobool59.not = icmp eq ptr %.pr, null
  br i1 %tobool59.not, label %land.lhs.true55.cond.false77_crit_edge, label %land.lhs.true60

land.lhs.true55.cond.false77_crit_edge:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false77

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %sriov_rreg64 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %19 = ptrtoint ptr %sriov_rreg64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sriov_rreg64, align 4
  %tobool65.not = icmp eq ptr %20, null
  br i1 %tobool65.not, label %land.lhs.true60.cond.false77_crit_edge, label %cond.true66

land.lhs.true60.cond.false77_crit_edge:           ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false77

cond.true66:                                      ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  %call76 = tail call i32 %20(ptr noundef %1, i32 noundef %add502, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end84

cond.false77.sink.split:                          ; preds = %land.lhs.true.cond.false77.sink.split_crit_edge, %entry.cond.false77.sink.split_crit_edge
  %arrayidx47111 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %21 = ptrtoint ptr %arrayidx47111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx47111, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add50212 = add i32 %24, 141
  br label %cond.false77

cond.false77:                                     ; preds = %cond.false77.sink.split, %land.lhs.true60.cond.false77_crit_edge, %land.lhs.true55.cond.false77_crit_edge
  %add505 = phi i32 [ %add502, %land.lhs.true60.cond.false77_crit_edge ], [ %add502, %land.lhs.true55.cond.false77_crit_edge ], [ %add50212, %cond.false77.sink.split ]
  %call83 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add505, i32 noundef 0) #12
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false77, %cond.true66
  %add503 = phi i32 [ %add502, %cond.true66 ], [ %add505, %cond.false77 ]
  %cond85 = phi i32 [ %call76, %cond.true66 ], [ %call83, %cond.false77 ]
  %and86 = and i32 %cond85, -256
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add503, i32 noundef %and86, i32 noundef 0) #12
  br label %cond.end88

cond.end88:                                       ; preds = %cond.end84, %cond.end
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virt, align 8
  %and91 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %cond.end88.cond.false184.sink.split_crit_edge, label %land.lhs.true93

cond.end88.cond.false184.sink.split_crit_edge:    ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false184.sink.split

land.lhs.true93:                                  ; preds = %cond.end88
  %funcs96 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %27 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs96, align 4
  %tobool97.not = icmp eq ptr %28, null
  br i1 %tobool97.not, label %land.lhs.true93.cond.false184.sink.split_crit_edge, label %land.lhs.true98

land.lhs.true93.cond.false184.sink.split_crit_edge: ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false184.sink.split

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %sriov_wreg102 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %sriov_wreg102 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov_wreg102, align 4
  %tobool103.not = icmp eq ptr %30, null
  br i1 %tobool103.not, label %land.lhs.true162, label %cond.true104

cond.true104:                                     ; preds = %land.lhs.true98
  %arrayidx110 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %31 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx110, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add113 = add i32 %34, 141
  %sriov_rreg127 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg127 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg127, align 4
  %tobool128.not = icmp eq ptr %36, null
  br i1 %tobool128.not, label %cond.false140, label %cond.true129

cond.true129:                                     ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #14
  %call139 = tail call i32 %36(ptr noundef %1, i32 noundef %add113, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end147

cond.false140:                                    ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #14
  %call146 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add113, i32 noundef 0) #12
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false140, %cond.true129
  %cond148 = phi i32 [ %call139, %cond.true129 ], [ %call146, %cond.false140 ]
  %and149 = and i32 %cond148, -14337
  %shl = shl i32 %mode, 11
  %and150 = and i32 %shl, 14336
  %or151 = or i32 %and149, %and150
  tail call void %30(ptr noundef %1, i32 noundef %add113, i32 noundef %or151, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end197

land.lhs.true162:                                 ; preds = %land.lhs.true98
  %37 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr14 = load ptr, ptr %funcs96, align 4
  %arrayidx1546 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %38 = ptrtoint ptr %arrayidx1546 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx1546, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add1577 = add i32 %41, 141
  %tobool166.not = icmp eq ptr %.pr14, null
  br i1 %tobool166.not, label %land.lhs.true162.cond.false184_crit_edge, label %land.lhs.true167

land.lhs.true162.cond.false184_crit_edge:         ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false184

land.lhs.true167:                                 ; preds = %land.lhs.true162
  %sriov_rreg171 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr14, i32 0, i32 13
  %42 = ptrtoint ptr %sriov_rreg171 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_rreg171, align 4
  %tobool172.not = icmp eq ptr %43, null
  br i1 %tobool172.not, label %land.lhs.true167.cond.false184_crit_edge, label %cond.true173

land.lhs.true167.cond.false184_crit_edge:         ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false184

cond.true173:                                     ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #14
  %call183 = tail call i32 %43(ptr noundef %1, i32 noundef %add1577, i32 noundef 0, i32 noundef 25) #12
  br label %cond.end191

cond.false184.sink.split:                         ; preds = %land.lhs.true93.cond.false184.sink.split_crit_edge, %cond.end88.cond.false184.sink.split_crit_edge
  %arrayidx154615 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %44 = ptrtoint ptr %arrayidx154615 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx154615, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add157716 = add i32 %47, 141
  br label %cond.false184

cond.false184:                                    ; preds = %cond.false184.sink.split, %land.lhs.true167.cond.false184_crit_edge, %land.lhs.true162.cond.false184_crit_edge
  %add15710 = phi i32 [ %add1577, %land.lhs.true167.cond.false184_crit_edge ], [ %add1577, %land.lhs.true162.cond.false184_crit_edge ], [ %add157716, %cond.false184.sink.split ]
  %call190 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add15710, i32 noundef 0) #12
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false184, %cond.true173
  %add1578 = phi i32 [ %add1577, %cond.true173 ], [ %add15710, %cond.false184 ]
  %cond192 = phi i32 [ %call183, %cond.true173 ], [ %call190, %cond.false184 ]
  %and193 = and i32 %cond192, -14337
  %shl194 = shl i32 %mode, 11
  %and195 = and i32 %shl194, 14336
  %or196 = or i32 %and193, %and195
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add1578, i32 noundef %or196, i32 noundef 0) #12
  br label %cond.end197

cond.end197:                                      ; preds = %cond.end191, %cond.end147
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @smu_cmn_get_indep_throttler_status(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_cmn_init_soft_gpu_metrics(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @smu_v11_0_get_current_pcie_link_width(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @smu_v11_0_get_current_pcie_link_speed(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 532)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 532)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !162, !164, !166, !168, !170, !171, !172, !173, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !199, !201, !202, !203, !205, !206, !208, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !377, !378, !379, !381, !382, !384, !385, !386, !388, !389, !391, !392, !393, !395, !396, !398, !399, !400, !402, !403, !405, !406, !407, !409, !410, !411, !413, !414, !415, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !497, !498, !500, !501, !502, !504, !505, !506, !508, !509, !510, !512, !513, !514, !516, !517, !518, !520, !521, !522, !524, !525, !526, !528, !529, !530, !532, !533, !534, !536, !537, !538, !540, !541, !542, !544, !545, !546, !548, !549, !550, !552, !553, !554, !556, !557, !558, !560, !561, !562, !564, !565, !566, !568, !569, !570, !572, !573, !574, !576, !577, !578, !580, !581, !582, !584, !585, !586, !588, !589, !590, !592, !593, !594, !596, !597, !598, !600, !601, !602, !604, !605, !606, !608, !609, !610, !612, !613, !614, !616, !617, !618, !620, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !634, !636, !637, !638, !640, !641, !642, !644, !645, !646, !648, !649, !650, !652, !653, !655, !656, !657, !659, !660, !661, !663, !664, !665, !667, !668, !669, !671, !672, !673, !675, !676, !677, !679, !680, !681, !683, !684, !685, !687, !688, !689, !691, !692, !693, !695, !696, !697, !699, !700, !701, !703, !704, !705, !707, !708, !709, !711, !712, !713, !715, !716, !717, !719, !720, !721, !723, !724, !725, !727, !728, !729, !731, !732, !733, !735, !736, !737, !739, !740, !741, !743, !744, !745, !747, !748, !749, !751, !752, !753, !755, !756, !757, !759, !760, !761, !763, !764, !765, !767, !768, !769, !771, !772, !773, !775, !776, !777, !779, !780, !781, !783, !784, !785, !787, !788, !789, !791, !792, !793, !795, !796, !797, !799, !800, !801, !803, !804, !805, !807, !808, !809, !811, !812, !813, !815, !816, !817, !819, !820, !821, !823, !824, !825, !827, !828, !829, !831, !832, !833, !835, !836, !837, !839, !840, !841, !843, !844, !845, !847, !848, !849, !851, !852, !853, !855, !856, !857, !859, !860, !861, !863, !864, !865, !867, !868, !869, !871, !872, !873, !875, !876, !877, !879, !880, !881, !883, !884, !885, !887, !888, !889, !891, !892, !893, !895, !896, !897, !899, !900, !901, !903, !904, !905, !907, !908, !909, !911, !912, !913, !915, !916, !917, !919, !920, !921, !923, !924, !925, !927, !928, !929, !931, !932, !933, !935, !936, !937, !939, !940, !942, !943, !944, !946, !947, !949, !950, !951, !953, !954, !956, !957, !958, !960, !961, !963, !964, !965, !966, !968, !969, !971, !972, !973, !975, !976, !977, !979, !980, !981, !983, !984, !985, !987, !989, !991, !993, !995, !996, !997, !998, !999, !1001, !1002, !1003, !1005, !1007, !1008, !1009, !1010, !1012, !1013, !1014, !1015, !1016, !1018, !1020, !1022, !1023, !1024, !1025, !1027, !1028, !1029, !1031, !1033, !1035, !1037, !1039, !1041, !1043, !1045, !1047, !1049, !1051, !1053, !1055, !1057}
!llvm.module.flags = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066}
!llvm.ident = !{!1067}

!0 = !{ptr @arcturus_ppt_funcs, !1, !"arcturus_ppt_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2393, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 524, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @arcturus_run_btc._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @arcturus_run_btc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 781, i32 36}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 791, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @arcturus_print_clk_levels._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @arcturus_print_clk_levels._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 798, i32 4}
!19 = !{ptr @arcturus_print_clk_levels._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @arcturus_print_clk_levels._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 807, i32 37}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 809, i32 33}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 812, i32 19}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 818, i32 4}
!29 = !{ptr @arcturus_print_clk_levels._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @arcturus_print_clk_levels._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 825, i32 4}
!33 = !{ptr @arcturus_print_clk_levels._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @arcturus_print_clk_levels._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 841, i32 4}
!37 = !{ptr @arcturus_print_clk_levels._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @arcturus_print_clk_levels._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 848, i32 4}
!41 = !{ptr @arcturus_print_clk_levels._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @arcturus_print_clk_levels._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 864, i32 4}
!45 = !{ptr @arcturus_print_clk_levels._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @arcturus_print_clk_levels._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 871, i32 4}
!49 = !{ptr @arcturus_print_clk_levels._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @arcturus_print_clk_levels._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 887, i32 4}
!53 = !{ptr @arcturus_print_clk_levels._entry.32, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @arcturus_print_clk_levels._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 894, i32 4}
!57 = !{ptr @arcturus_print_clk_levels._entry.35, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @arcturus_print_clk_levels._entry_ptr.37, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.39, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 910, i32 4}
!61 = !{ptr @arcturus_print_clk_levels._entry.38, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @arcturus_print_clk_levels._entry_ptr.40, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.42, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 917, i32 4}
!65 = !{ptr @arcturus_print_clk_levels._entry.41, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @arcturus_print_clk_levels._entry_ptr.43, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.44, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 933, i32 36}
!69 = !{ptr @.str.45, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 934, i32 24}
!71 = !{ptr @.str.46, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 935, i32 24}
!73 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 936, i32 24}
!75 = !{ptr @.str.48, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 937, i32 24}
!77 = !{ptr @.str.49, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 938, i32 25}
!79 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 939, i32 25}
!81 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 940, i32 25}
!83 = !{ptr @.str.52, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 941, i32 25}
!85 = !{ptr @.str.53, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 942, i32 25}
!87 = !{ptr @.str.54, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 943, i32 25}
!89 = !{ptr @.str.55, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1020, i32 3}
!91 = !{ptr @.str.56, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @arcturus_force_clk_levels._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @arcturus_force_clk_levels._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.58, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1026, i32 3}
!96 = !{ptr @arcturus_force_clk_levels._entry.57, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @arcturus_force_clk_levels._entry_ptr.59, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1038, i32 4}
!100 = !{ptr @arcturus_force_clk_levels._entry.60, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @arcturus_force_clk_levels._entry_ptr.62, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.64, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1049, i32 4}
!104 = !{ptr @arcturus_force_clk_levels._entry.63, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @arcturus_force_clk_levels._entry_ptr.65, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.67, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1058, i32 4}
!108 = !{ptr @arcturus_force_clk_levels._entry.66, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @arcturus_force_clk_levels._entry_ptr.68, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.69, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 972, i32 4}
!112 = !{ptr @.str.70, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @arcturus_upload_dpm_level._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @arcturus_upload_dpm_level._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.71, !111, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.72, !111, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.74, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 986, i32 4}
!119 = !{ptr @arcturus_upload_dpm_level._entry.73, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @arcturus_upload_dpm_level._entry_ptr.75, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.77, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1000, i32 4}
!123 = !{ptr @arcturus_upload_dpm_level._entry.76, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @arcturus_upload_dpm_level._entry_ptr.78, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.79, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1383, i32 4}
!127 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1384, i32 4}
!129 = !{ptr @.str.81, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1385, i32 4}
!131 = !{ptr @.str.82, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1386, i32 4}
!133 = !{ptr @.str.83, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1387, i32 4}
!135 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1388, i32 4}
!137 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1389, i32 4}
!139 = !{ptr @.str.86, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1390, i32 4}
!141 = !{ptr @.str.87, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1391, i32 4}
!143 = !{ptr @.str.88, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1392, i32 4}
!145 = !{ptr @.str.89, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1393, i32 4}
!147 = distinct !{null, !148, !"title", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1382, i32 21}
!149 = !{ptr @.str.90, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1407, i32 36}
!151 = !{ptr @.str.91, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1411, i32 36}
!153 = !{ptr @.str.92, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1432, i32 5}
!155 = !{ptr @.str.93, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @arcturus_get_power_profile_mode._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @arcturus_get_power_profile_mode._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.94, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1437, i32 36}
!160 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1438, i32 73}
!162 = !{ptr @.str.96, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1441, i32 37}
!164 = !{ptr @.str.97, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1444, i32 5}
!166 = !{ptr @.str.98, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1458, i32 5}
!168 = !{ptr @.str.99, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1485, i32 3}
!170 = !{ptr @.str.100, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @arcturus_set_power_profile_mode._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @arcturus_set_power_profile_mode._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @arcturus_set_power_profile_mode._entry.101, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1501, i32 4}
!175 = !{ptr @arcturus_set_power_profile_mode._entry_ptr.102, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.104, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1536, i32 4}
!178 = !{ptr @arcturus_set_power_profile_mode._entry.103, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @arcturus_set_power_profile_mode._entry_ptr.105, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.106, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1549, i32 3}
!182 = !{ptr @.str.107, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @arcturus_set_power_profile_mode.__UNIQUE_ID_ddebug345, !181, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!184 = !{ptr @.str.109, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1558, i32 3}
!186 = !{ptr @arcturus_set_power_profile_mode._entry.108, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @arcturus_set_power_profile_mode._entry_ptr.110, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.111, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2054, i32 5}
!190 = !{ptr @.str.112, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @arcturus_dpm_set_vcn_enable._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @arcturus_dpm_set_vcn_enable._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.114, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2062, i32 5}
!195 = !{ptr @arcturus_dpm_set_vcn_enable._entry.113, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @arcturus_dpm_set_vcn_enable._entry_ptr.115, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @smu11_thermal_policy, !198, !"smu11_thermal_policy", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/smu_v11_0.h", i32 70, i32 45}
!199 = !{ptr @.str.116, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1575, i32 3}
!201 = !{ptr @arcturus_set_performance_level._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @arcturus_set_performance_level._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @arcturus_set_performance_level._entry.117, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1588, i32 4}
!205 = !{ptr @arcturus_set_performance_level._entry_ptr.118, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.119, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1606, i32 2}
!208 = !{ptr @.str.120, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.121, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @arcturus_dump_pptable._entry, !207, !"_entry", i1 false, i1 false}
!211 = !{ptr @arcturus_dump_pptable._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.123, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1608, i32 2}
!214 = !{ptr @arcturus_dump_pptable._entry.122, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @arcturus_dump_pptable._entry_ptr.124, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.126, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1610, i32 2}
!218 = !{ptr @arcturus_dump_pptable._entry.125, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @arcturus_dump_pptable._entry_ptr.127, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.129, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1611, i32 2}
!222 = !{ptr @arcturus_dump_pptable._entry.128, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @arcturus_dump_pptable._entry_ptr.130, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.132, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1614, i32 3}
!226 = !{ptr @arcturus_dump_pptable._entry.131, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @arcturus_dump_pptable._entry_ptr.133, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.135, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1615, i32 3}
!230 = !{ptr @arcturus_dump_pptable._entry.134, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @arcturus_dump_pptable._entry_ptr.136, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.138, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1618, i32 2}
!234 = !{ptr @arcturus_dump_pptable._entry.137, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @arcturus_dump_pptable._entry_ptr.139, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.141, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1619, i32 2}
!238 = !{ptr @arcturus_dump_pptable._entry.140, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @arcturus_dump_pptable._entry_ptr.142, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.144, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1620, i32 2}
!242 = !{ptr @arcturus_dump_pptable._entry.143, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @arcturus_dump_pptable._entry_ptr.145, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.147, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1621, i32 2}
!246 = !{ptr @arcturus_dump_pptable._entry.146, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @arcturus_dump_pptable._entry_ptr.148, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.150, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1623, i32 2}
!250 = !{ptr @arcturus_dump_pptable._entry.149, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @arcturus_dump_pptable._entry_ptr.151, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.153, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1624, i32 2}
!254 = !{ptr @arcturus_dump_pptable._entry.152, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @arcturus_dump_pptable._entry_ptr.154, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.156, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1625, i32 2}
!258 = !{ptr @arcturus_dump_pptable._entry.155, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @arcturus_dump_pptable._entry_ptr.157, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.159, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1626, i32 2}
!262 = !{ptr @arcturus_dump_pptable._entry.158, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @arcturus_dump_pptable._entry_ptr.160, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.162, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1627, i32 2}
!266 = !{ptr @arcturus_dump_pptable._entry.161, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @arcturus_dump_pptable._entry_ptr.163, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.165, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1628, i32 2}
!270 = !{ptr @arcturus_dump_pptable._entry.164, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @arcturus_dump_pptable._entry_ptr.166, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.168, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1629, i32 2}
!274 = !{ptr @arcturus_dump_pptable._entry.167, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @arcturus_dump_pptable._entry_ptr.169, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.171, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1631, i32 2}
!278 = !{ptr @arcturus_dump_pptable._entry.170, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @arcturus_dump_pptable._entry_ptr.172, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.174, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1632, i32 2}
!282 = !{ptr @arcturus_dump_pptable._entry.173, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @arcturus_dump_pptable._entry_ptr.175, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.177, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1634, i32 2}
!286 = !{ptr @arcturus_dump_pptable._entry.176, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @arcturus_dump_pptable._entry_ptr.178, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.180, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1636, i32 2}
!290 = !{ptr @arcturus_dump_pptable._entry.179, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @arcturus_dump_pptable._entry_ptr.181, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.183, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1637, i32 2}
!294 = !{ptr @arcturus_dump_pptable._entry.182, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @arcturus_dump_pptable._entry_ptr.184, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.186, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1639, i32 2}
!298 = !{ptr @arcturus_dump_pptable._entry.185, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @arcturus_dump_pptable._entry_ptr.187, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.189, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1640, i32 2}
!302 = !{ptr @arcturus_dump_pptable._entry.188, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @arcturus_dump_pptable._entry_ptr.190, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.192, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1641, i32 2}
!306 = !{ptr @arcturus_dump_pptable._entry.191, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @arcturus_dump_pptable._entry_ptr.193, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.195, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1642, i32 2}
!310 = !{ptr @arcturus_dump_pptable._entry.194, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @arcturus_dump_pptable._entry_ptr.196, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.198, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1644, i32 2}
!314 = !{ptr @arcturus_dump_pptable._entry.197, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @arcturus_dump_pptable._entry_ptr.199, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.201, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1645, i32 2}
!318 = !{ptr @arcturus_dump_pptable._entry.200, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @arcturus_dump_pptable._entry_ptr.202, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.204, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1646, i32 2}
!322 = !{ptr @arcturus_dump_pptable._entry.203, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @arcturus_dump_pptable._entry_ptr.205, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.207, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1647, i32 2}
!326 = !{ptr @arcturus_dump_pptable._entry.206, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @arcturus_dump_pptable._entry_ptr.208, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.210, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1649, i32 2}
!330 = !{ptr @arcturus_dump_pptable._entry.209, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @arcturus_dump_pptable._entry_ptr.211, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.213, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1650, i32 2}
!334 = !{ptr @arcturus_dump_pptable._entry.212, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @arcturus_dump_pptable._entry_ptr.214, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.216, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1652, i32 2}
!338 = !{ptr @arcturus_dump_pptable._entry.215, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @arcturus_dump_pptable._entry_ptr.217, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.219, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1673, i32 2}
!342 = !{ptr @arcturus_dump_pptable._entry.218, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @arcturus_dump_pptable._entry_ptr.220, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.222, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1694, i32 2}
!346 = !{ptr @arcturus_dump_pptable._entry.221, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @arcturus_dump_pptable._entry_ptr.223, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.225, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1715, i32 2}
!350 = !{ptr @arcturus_dump_pptable._entry.224, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @arcturus_dump_pptable._entry_ptr.226, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.228, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1736, i32 2}
!354 = !{ptr @arcturus_dump_pptable._entry.227, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @arcturus_dump_pptable._entry_ptr.229, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.231, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1757, i32 2}
!358 = !{ptr @arcturus_dump_pptable._entry.230, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @arcturus_dump_pptable._entry_ptr.232, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.234, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1779, i32 2}
!362 = !{ptr @arcturus_dump_pptable._entry.233, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @arcturus_dump_pptable._entry_ptr.235, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.237, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1781, i32 3}
!366 = !{ptr @arcturus_dump_pptable._entry.236, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @arcturus_dump_pptable._entry_ptr.238, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.240, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1783, i32 2}
!370 = !{ptr @arcturus_dump_pptable._entry.239, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @arcturus_dump_pptable._entry_ptr.241, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @arcturus_dump_pptable._entry.242, !373, !"_entry", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1785, i32 3}
!374 = !{ptr @arcturus_dump_pptable._entry_ptr.243, !373, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.245, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1787, i32 2}
!377 = !{ptr @arcturus_dump_pptable._entry.244, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @arcturus_dump_pptable._entry_ptr.246, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @arcturus_dump_pptable._entry.247, !380, !"_entry", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1789, i32 3}
!381 = !{ptr @arcturus_dump_pptable._entry_ptr.248, !380, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.250, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1791, i32 2}
!384 = !{ptr @arcturus_dump_pptable._entry.249, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @arcturus_dump_pptable._entry_ptr.251, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @arcturus_dump_pptable._entry.252, !387, !"_entry", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1793, i32 3}
!388 = !{ptr @arcturus_dump_pptable._entry_ptr.253, !387, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.255, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1795, i32 2}
!391 = !{ptr @arcturus_dump_pptable._entry.254, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @arcturus_dump_pptable._entry_ptr.256, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @arcturus_dump_pptable._entry.257, !394, !"_entry", i1 false, i1 false}
!394 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1797, i32 3}
!395 = !{ptr @arcturus_dump_pptable._entry_ptr.258, !394, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.260, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1799, i32 2}
!398 = !{ptr @arcturus_dump_pptable._entry.259, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @arcturus_dump_pptable._entry_ptr.261, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @arcturus_dump_pptable._entry.262, !401, !"_entry", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1801, i32 3}
!402 = !{ptr @arcturus_dump_pptable._entry_ptr.263, !401, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.265, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1803, i32 2}
!405 = !{ptr @arcturus_dump_pptable._entry.264, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @arcturus_dump_pptable._entry_ptr.266, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.268, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1805, i32 3}
!409 = !{ptr @arcturus_dump_pptable._entry.267, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @arcturus_dump_pptable._entry_ptr.269, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.271, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1807, i32 2}
!413 = !{ptr @arcturus_dump_pptable._entry.270, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @arcturus_dump_pptable._entry_ptr.272, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @arcturus_dump_pptable._entry.273, !416, !"_entry", i1 false, i1 false}
!416 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1809, i32 3}
!417 = !{ptr @arcturus_dump_pptable._entry_ptr.274, !416, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.276, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1811, i32 2}
!420 = !{ptr @arcturus_dump_pptable._entry.275, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @arcturus_dump_pptable._entry_ptr.277, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.279, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1812, i32 2}
!424 = !{ptr @arcturus_dump_pptable._entry.278, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @arcturus_dump_pptable._entry_ptr.280, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.282, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1813, i32 2}
!428 = !{ptr @arcturus_dump_pptable._entry.281, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @arcturus_dump_pptable._entry_ptr.283, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.285, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1814, i32 2}
!432 = !{ptr @arcturus_dump_pptable._entry.284, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @arcturus_dump_pptable._entry_ptr.286, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.288, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1815, i32 2}
!436 = !{ptr @arcturus_dump_pptable._entry.287, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @arcturus_dump_pptable._entry_ptr.289, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.291, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1816, i32 2}
!440 = !{ptr @arcturus_dump_pptable._entry.290, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @arcturus_dump_pptable._entry_ptr.292, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.294, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1817, i32 2}
!444 = !{ptr @arcturus_dump_pptable._entry.293, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @arcturus_dump_pptable._entry_ptr.295, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.297, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1818, i32 2}
!448 = !{ptr @arcturus_dump_pptable._entry.296, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @arcturus_dump_pptable._entry_ptr.298, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.300, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1819, i32 2}
!452 = !{ptr @arcturus_dump_pptable._entry.299, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @arcturus_dump_pptable._entry_ptr.301, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.303, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1821, i32 2}
!456 = !{ptr @arcturus_dump_pptable._entry.302, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @arcturus_dump_pptable._entry_ptr.304, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.306, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1822, i32 2}
!460 = !{ptr @arcturus_dump_pptable._entry.305, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @arcturus_dump_pptable._entry_ptr.307, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.309, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1823, i32 2}
!464 = !{ptr @arcturus_dump_pptable._entry.308, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @arcturus_dump_pptable._entry_ptr.310, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.312, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1824, i32 2}
!468 = !{ptr @arcturus_dump_pptable._entry.311, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @arcturus_dump_pptable._entry_ptr.313, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.315, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1826, i32 2}
!472 = !{ptr @arcturus_dump_pptable._entry.314, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @arcturus_dump_pptable._entry_ptr.316, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.318, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1827, i32 2}
!476 = !{ptr @arcturus_dump_pptable._entry.317, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @arcturus_dump_pptable._entry_ptr.319, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.321, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1829, i32 2}
!480 = !{ptr @arcturus_dump_pptable._entry.320, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @arcturus_dump_pptable._entry_ptr.322, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.324, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1830, i32 2}
!484 = !{ptr @arcturus_dump_pptable._entry.323, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @arcturus_dump_pptable._entry_ptr.325, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.327, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1831, i32 2}
!488 = !{ptr @arcturus_dump_pptable._entry.326, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @arcturus_dump_pptable._entry_ptr.328, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.330, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1832, i32 2}
!492 = !{ptr @arcturus_dump_pptable._entry.329, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @arcturus_dump_pptable._entry_ptr.331, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.333, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1833, i32 2}
!496 = !{ptr @arcturus_dump_pptable._entry.332, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @arcturus_dump_pptable._entry_ptr.334, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.336, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1834, i32 2}
!500 = !{ptr @arcturus_dump_pptable._entry.335, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @arcturus_dump_pptable._entry_ptr.337, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.339, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1836, i32 2}
!504 = !{ptr @arcturus_dump_pptable._entry.338, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @arcturus_dump_pptable._entry_ptr.340, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.342, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1837, i32 2}
!508 = !{ptr @arcturus_dump_pptable._entry.341, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @arcturus_dump_pptable._entry_ptr.343, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.345, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1838, i32 2}
!512 = !{ptr @arcturus_dump_pptable._entry.344, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @arcturus_dump_pptable._entry_ptr.346, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.348, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1839, i32 2}
!516 = !{ptr @arcturus_dump_pptable._entry.347, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @arcturus_dump_pptable._entry_ptr.349, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.351, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1840, i32 2}
!520 = !{ptr @arcturus_dump_pptable._entry.350, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @arcturus_dump_pptable._entry_ptr.352, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.354, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1841, i32 2}
!524 = !{ptr @arcturus_dump_pptable._entry.353, !523, !"_entry", i1 false, i1 false}
!525 = !{ptr @arcturus_dump_pptable._entry_ptr.355, !523, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.357, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1842, i32 2}
!528 = !{ptr @arcturus_dump_pptable._entry.356, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @arcturus_dump_pptable._entry_ptr.358, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.360, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1843, i32 2}
!532 = !{ptr @arcturus_dump_pptable._entry.359, !531, !"_entry", i1 false, i1 false}
!533 = !{ptr @arcturus_dump_pptable._entry_ptr.361, !531, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.363, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1844, i32 2}
!536 = !{ptr @arcturus_dump_pptable._entry.362, !535, !"_entry", i1 false, i1 false}
!537 = !{ptr @arcturus_dump_pptable._entry_ptr.364, !535, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.366, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1846, i32 2}
!540 = !{ptr @arcturus_dump_pptable._entry.365, !539, !"_entry", i1 false, i1 false}
!541 = !{ptr @arcturus_dump_pptable._entry_ptr.367, !539, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.369, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1847, i32 2}
!544 = !{ptr @arcturus_dump_pptable._entry.368, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @arcturus_dump_pptable._entry_ptr.370, !543, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.372, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1848, i32 2}
!548 = !{ptr @arcturus_dump_pptable._entry.371, !547, !"_entry", i1 false, i1 false}
!549 = !{ptr @arcturus_dump_pptable._entry_ptr.373, !547, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.375, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1849, i32 2}
!552 = !{ptr @arcturus_dump_pptable._entry.374, !551, !"_entry", i1 false, i1 false}
!553 = !{ptr @arcturus_dump_pptable._entry_ptr.376, !551, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @.str.378, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1851, i32 2}
!556 = !{ptr @arcturus_dump_pptable._entry.377, !555, !"_entry", i1 false, i1 false}
!557 = !{ptr @arcturus_dump_pptable._entry_ptr.379, !555, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @.str.381, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1852, i32 2}
!560 = !{ptr @arcturus_dump_pptable._entry.380, !559, !"_entry", i1 false, i1 false}
!561 = !{ptr @arcturus_dump_pptable._entry_ptr.382, !559, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @.str.384, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1853, i32 2}
!564 = !{ptr @arcturus_dump_pptable._entry.383, !563, !"_entry", i1 false, i1 false}
!565 = !{ptr @arcturus_dump_pptable._entry_ptr.385, !563, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.387, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1854, i32 2}
!568 = !{ptr @arcturus_dump_pptable._entry.386, !567, !"_entry", i1 false, i1 false}
!569 = !{ptr @arcturus_dump_pptable._entry_ptr.388, !567, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @.str.390, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1856, i32 2}
!572 = !{ptr @arcturus_dump_pptable._entry.389, !571, !"_entry", i1 false, i1 false}
!573 = !{ptr @arcturus_dump_pptable._entry_ptr.391, !571, !"_entry_ptr", i1 false, i1 false}
!574 = !{ptr @.str.393, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1860, i32 2}
!576 = !{ptr @arcturus_dump_pptable._entry.392, !575, !"_entry", i1 false, i1 false}
!577 = !{ptr @arcturus_dump_pptable._entry_ptr.394, !575, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.396, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1864, i32 2}
!580 = !{ptr @arcturus_dump_pptable._entry.395, !579, !"_entry", i1 false, i1 false}
!581 = !{ptr @arcturus_dump_pptable._entry_ptr.397, !579, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.399, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1869, i32 2}
!584 = !{ptr @arcturus_dump_pptable._entry.398, !583, !"_entry", i1 false, i1 false}
!585 = !{ptr @arcturus_dump_pptable._entry_ptr.400, !583, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.402, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1872, i32 2}
!588 = !{ptr @arcturus_dump_pptable._entry.401, !587, !"_entry", i1 false, i1 false}
!589 = !{ptr @arcturus_dump_pptable._entry_ptr.403, !587, !"_entry_ptr", i1 false, i1 false}
!590 = !{ptr @.str.405, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1876, i32 2}
!592 = !{ptr @arcturus_dump_pptable._entry.404, !591, !"_entry", i1 false, i1 false}
!593 = !{ptr @arcturus_dump_pptable._entry_ptr.406, !591, !"_entry_ptr", i1 false, i1 false}
!594 = !{ptr @.str.408, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1880, i32 2}
!596 = !{ptr @arcturus_dump_pptable._entry.407, !595, !"_entry", i1 false, i1 false}
!597 = !{ptr @arcturus_dump_pptable._entry_ptr.409, !595, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @.str.411, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1885, i32 2}
!600 = !{ptr @arcturus_dump_pptable._entry.410, !599, !"_entry", i1 false, i1 false}
!601 = !{ptr @arcturus_dump_pptable._entry_ptr.412, !599, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @.str.414, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1886, i32 2}
!604 = !{ptr @arcturus_dump_pptable._entry.413, !603, !"_entry", i1 false, i1 false}
!605 = !{ptr @arcturus_dump_pptable._entry_ptr.415, !603, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.417, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1888, i32 2}
!608 = !{ptr @arcturus_dump_pptable._entry.416, !607, !"_entry", i1 false, i1 false}
!609 = !{ptr @arcturus_dump_pptable._entry_ptr.418, !607, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.420, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1889, i32 2}
!612 = !{ptr @arcturus_dump_pptable._entry.419, !611, !"_entry", i1 false, i1 false}
!613 = !{ptr @arcturus_dump_pptable._entry_ptr.421, !611, !"_entry_ptr", i1 false, i1 false}
!614 = !{ptr @.str.423, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1890, i32 2}
!616 = !{ptr @arcturus_dump_pptable._entry.422, !615, !"_entry", i1 false, i1 false}
!617 = !{ptr @arcturus_dump_pptable._entry_ptr.424, !615, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.426, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1891, i32 2}
!620 = !{ptr @arcturus_dump_pptable._entry.425, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @arcturus_dump_pptable._entry_ptr.427, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.429, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1893, i32 2}
!624 = !{ptr @arcturus_dump_pptable._entry.428, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @arcturus_dump_pptable._entry_ptr.430, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.432, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1894, i32 2}
!628 = !{ptr @arcturus_dump_pptable._entry.431, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @arcturus_dump_pptable._entry_ptr.433, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.435, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1895, i32 2}
!632 = !{ptr @arcturus_dump_pptable._entry.434, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @arcturus_dump_pptable._entry_ptr.436, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.438, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1896, i32 2}
!636 = !{ptr @arcturus_dump_pptable._entry.437, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @arcturus_dump_pptable._entry_ptr.439, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.441, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1898, i32 2}
!640 = !{ptr @arcturus_dump_pptable._entry.440, !639, !"_entry", i1 false, i1 false}
!641 = !{ptr @arcturus_dump_pptable._entry_ptr.442, !639, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @.str.444, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1899, i32 2}
!644 = !{ptr @arcturus_dump_pptable._entry.443, !643, !"_entry", i1 false, i1 false}
!645 = !{ptr @arcturus_dump_pptable._entry_ptr.445, !643, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @.str.447, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1901, i32 2}
!648 = !{ptr @arcturus_dump_pptable._entry.446, !647, !"_entry", i1 false, i1 false}
!649 = !{ptr @arcturus_dump_pptable._entry_ptr.448, !647, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @arcturus_dump_pptable._entry.449, !651, !"_entry", i1 false, i1 false}
!651 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1903, i32 3}
!652 = !{ptr @arcturus_dump_pptable._entry_ptr.450, !651, !"_entry_ptr", i1 false, i1 false}
!653 = !{ptr @.str.452, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1904, i32 2}
!655 = !{ptr @arcturus_dump_pptable._entry.451, !654, !"_entry", i1 false, i1 false}
!656 = !{ptr @arcturus_dump_pptable._entry_ptr.453, !654, !"_entry_ptr", i1 false, i1 false}
!657 = !{ptr @.str.455, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1905, i32 2}
!659 = !{ptr @arcturus_dump_pptable._entry.454, !658, !"_entry", i1 false, i1 false}
!660 = !{ptr @arcturus_dump_pptable._entry_ptr.456, !658, !"_entry_ptr", i1 false, i1 false}
!661 = !{ptr @.str.458, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1907, i32 2}
!663 = !{ptr @arcturus_dump_pptable._entry.457, !662, !"_entry", i1 false, i1 false}
!664 = !{ptr @arcturus_dump_pptable._entry_ptr.459, !662, !"_entry_ptr", i1 false, i1 false}
!665 = !{ptr @.str.461, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1908, i32 2}
!667 = !{ptr @arcturus_dump_pptable._entry.460, !666, !"_entry", i1 false, i1 false}
!668 = !{ptr @arcturus_dump_pptable._entry_ptr.462, !666, !"_entry_ptr", i1 false, i1 false}
!669 = !{ptr @.str.464, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1909, i32 2}
!671 = !{ptr @arcturus_dump_pptable._entry.463, !670, !"_entry", i1 false, i1 false}
!672 = !{ptr @arcturus_dump_pptable._entry_ptr.465, !670, !"_entry_ptr", i1 false, i1 false}
!673 = !{ptr @.str.467, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1910, i32 2}
!675 = !{ptr @arcturus_dump_pptable._entry.466, !674, !"_entry", i1 false, i1 false}
!676 = !{ptr @arcturus_dump_pptable._entry_ptr.468, !674, !"_entry_ptr", i1 false, i1 false}
!677 = !{ptr @.str.470, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1911, i32 2}
!679 = !{ptr @arcturus_dump_pptable._entry.469, !678, !"_entry", i1 false, i1 false}
!680 = !{ptr @arcturus_dump_pptable._entry_ptr.471, !678, !"_entry_ptr", i1 false, i1 false}
!681 = !{ptr @.str.473, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1912, i32 2}
!683 = !{ptr @arcturus_dump_pptable._entry.472, !682, !"_entry", i1 false, i1 false}
!684 = !{ptr @arcturus_dump_pptable._entry_ptr.474, !682, !"_entry_ptr", i1 false, i1 false}
!685 = !{ptr @.str.476, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1913, i32 2}
!687 = !{ptr @arcturus_dump_pptable._entry.475, !686, !"_entry", i1 false, i1 false}
!688 = !{ptr @arcturus_dump_pptable._entry_ptr.477, !686, !"_entry_ptr", i1 false, i1 false}
!689 = !{ptr @.str.479, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1914, i32 2}
!691 = !{ptr @arcturus_dump_pptable._entry.478, !690, !"_entry", i1 false, i1 false}
!692 = !{ptr @arcturus_dump_pptable._entry_ptr.480, !690, !"_entry_ptr", i1 false, i1 false}
!693 = !{ptr @.str.482, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1916, i32 2}
!695 = !{ptr @arcturus_dump_pptable._entry.481, !694, !"_entry", i1 false, i1 false}
!696 = !{ptr @arcturus_dump_pptable._entry_ptr.483, !694, !"_entry_ptr", i1 false, i1 false}
!697 = !{ptr @.str.485, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1917, i32 2}
!699 = !{ptr @arcturus_dump_pptable._entry.484, !698, !"_entry", i1 false, i1 false}
!700 = !{ptr @arcturus_dump_pptable._entry_ptr.486, !698, !"_entry_ptr", i1 false, i1 false}
!701 = !{ptr @.str.488, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1921, i32 2}
!703 = !{ptr @arcturus_dump_pptable._entry.487, !702, !"_entry", i1 false, i1 false}
!704 = !{ptr @arcturus_dump_pptable._entry_ptr.489, !702, !"_entry_ptr", i1 false, i1 false}
!705 = !{ptr @.str.491, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1925, i32 2}
!707 = !{ptr @arcturus_dump_pptable._entry.490, !706, !"_entry", i1 false, i1 false}
!708 = !{ptr @arcturus_dump_pptable._entry_ptr.492, !706, !"_entry_ptr", i1 false, i1 false}
!709 = !{ptr @.str.494, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1929, i32 2}
!711 = !{ptr @arcturus_dump_pptable._entry.493, !710, !"_entry", i1 false, i1 false}
!712 = !{ptr @arcturus_dump_pptable._entry_ptr.495, !710, !"_entry_ptr", i1 false, i1 false}
!713 = !{ptr @.str.497, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1934, i32 2}
!715 = !{ptr @arcturus_dump_pptable._entry.496, !714, !"_entry", i1 false, i1 false}
!716 = !{ptr @arcturus_dump_pptable._entry_ptr.498, !714, !"_entry_ptr", i1 false, i1 false}
!717 = !{ptr @.str.500, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1935, i32 2}
!719 = !{ptr @arcturus_dump_pptable._entry.499, !718, !"_entry", i1 false, i1 false}
!720 = !{ptr @arcturus_dump_pptable._entry_ptr.501, !718, !"_entry_ptr", i1 false, i1 false}
!721 = !{ptr @.str.503, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1937, i32 2}
!723 = !{ptr @arcturus_dump_pptable._entry.502, !722, !"_entry", i1 false, i1 false}
!724 = !{ptr @arcturus_dump_pptable._entry_ptr.504, !722, !"_entry_ptr", i1 false, i1 false}
!725 = !{ptr @.str.506, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1938, i32 2}
!727 = !{ptr @arcturus_dump_pptable._entry.505, !726, !"_entry", i1 false, i1 false}
!728 = !{ptr @arcturus_dump_pptable._entry_ptr.507, !726, !"_entry_ptr", i1 false, i1 false}
!729 = !{ptr @.str.509, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1939, i32 2}
!731 = !{ptr @arcturus_dump_pptable._entry.508, !730, !"_entry", i1 false, i1 false}
!732 = !{ptr @arcturus_dump_pptable._entry_ptr.510, !730, !"_entry_ptr", i1 false, i1 false}
!733 = !{ptr @.str.512, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1941, i32 2}
!735 = !{ptr @arcturus_dump_pptable._entry.511, !734, !"_entry", i1 false, i1 false}
!736 = !{ptr @arcturus_dump_pptable._entry_ptr.513, !734, !"_entry_ptr", i1 false, i1 false}
!737 = !{ptr @.str.515, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1942, i32 2}
!739 = !{ptr @arcturus_dump_pptable._entry.514, !738, !"_entry", i1 false, i1 false}
!740 = !{ptr @arcturus_dump_pptable._entry_ptr.516, !738, !"_entry_ptr", i1 false, i1 false}
!741 = !{ptr @.str.518, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1944, i32 2}
!743 = !{ptr @arcturus_dump_pptable._entry.517, !742, !"_entry", i1 false, i1 false}
!744 = !{ptr @arcturus_dump_pptable._entry_ptr.519, !742, !"_entry_ptr", i1 false, i1 false}
!745 = !{ptr @.str.521, !746, !"<string literal>", i1 false, i1 false}
!746 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1945, i32 2}
!747 = !{ptr @arcturus_dump_pptable._entry.520, !746, !"_entry", i1 false, i1 false}
!748 = !{ptr @arcturus_dump_pptable._entry_ptr.522, !746, !"_entry_ptr", i1 false, i1 false}
!749 = !{ptr @.str.524, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1946, i32 2}
!751 = !{ptr @arcturus_dump_pptable._entry.523, !750, !"_entry", i1 false, i1 false}
!752 = !{ptr @arcturus_dump_pptable._entry_ptr.525, !750, !"_entry_ptr", i1 false, i1 false}
!753 = !{ptr @.str.527, !754, !"<string literal>", i1 false, i1 false}
!754 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1948, i32 2}
!755 = !{ptr @arcturus_dump_pptable._entry.526, !754, !"_entry", i1 false, i1 false}
!756 = !{ptr @arcturus_dump_pptable._entry_ptr.528, !754, !"_entry_ptr", i1 false, i1 false}
!757 = !{ptr @.str.530, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1949, i32 2}
!759 = !{ptr @arcturus_dump_pptable._entry.529, !758, !"_entry", i1 false, i1 false}
!760 = !{ptr @arcturus_dump_pptable._entry_ptr.531, !758, !"_entry_ptr", i1 false, i1 false}
!761 = !{ptr @.str.533, !762, !"<string literal>", i1 false, i1 false}
!762 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1950, i32 2}
!763 = !{ptr @arcturus_dump_pptable._entry.532, !762, !"_entry", i1 false, i1 false}
!764 = !{ptr @arcturus_dump_pptable._entry_ptr.534, !762, !"_entry_ptr", i1 false, i1 false}
!765 = !{ptr @.str.536, !766, !"<string literal>", i1 false, i1 false}
!766 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1951, i32 2}
!767 = !{ptr @arcturus_dump_pptable._entry.535, !766, !"_entry", i1 false, i1 false}
!768 = !{ptr @arcturus_dump_pptable._entry_ptr.537, !766, !"_entry_ptr", i1 false, i1 false}
!769 = !{ptr @.str.539, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1953, i32 2}
!771 = !{ptr @arcturus_dump_pptable._entry.538, !770, !"_entry", i1 false, i1 false}
!772 = !{ptr @arcturus_dump_pptable._entry_ptr.540, !770, !"_entry_ptr", i1 false, i1 false}
!773 = !{ptr @.str.542, !774, !"<string literal>", i1 false, i1 false}
!774 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1954, i32 2}
!775 = !{ptr @arcturus_dump_pptable._entry.541, !774, !"_entry", i1 false, i1 false}
!776 = !{ptr @arcturus_dump_pptable._entry_ptr.543, !774, !"_entry_ptr", i1 false, i1 false}
!777 = !{ptr @.str.545, !778, !"<string literal>", i1 false, i1 false}
!778 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1956, i32 2}
!779 = !{ptr @arcturus_dump_pptable._entry.544, !778, !"_entry", i1 false, i1 false}
!780 = !{ptr @arcturus_dump_pptable._entry_ptr.546, !778, !"_entry_ptr", i1 false, i1 false}
!781 = !{ptr @.str.548, !782, !"<string literal>", i1 false, i1 false}
!782 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1957, i32 2}
!783 = !{ptr @arcturus_dump_pptable._entry.547, !782, !"_entry", i1 false, i1 false}
!784 = !{ptr @arcturus_dump_pptable._entry_ptr.549, !782, !"_entry_ptr", i1 false, i1 false}
!785 = !{ptr @.str.551, !786, !"<string literal>", i1 false, i1 false}
!786 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1958, i32 2}
!787 = !{ptr @arcturus_dump_pptable._entry.550, !786, !"_entry", i1 false, i1 false}
!788 = !{ptr @arcturus_dump_pptable._entry_ptr.552, !786, !"_entry_ptr", i1 false, i1 false}
!789 = !{ptr @.str.554, !790, !"<string literal>", i1 false, i1 false}
!790 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1960, i32 2}
!791 = !{ptr @arcturus_dump_pptable._entry.553, !790, !"_entry", i1 false, i1 false}
!792 = !{ptr @arcturus_dump_pptable._entry_ptr.555, !790, !"_entry_ptr", i1 false, i1 false}
!793 = !{ptr @.str.557, !794, !"<string literal>", i1 false, i1 false}
!794 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1961, i32 2}
!795 = !{ptr @arcturus_dump_pptable._entry.556, !794, !"_entry", i1 false, i1 false}
!796 = !{ptr @arcturus_dump_pptable._entry_ptr.558, !794, !"_entry_ptr", i1 false, i1 false}
!797 = !{ptr @.str.560, !798, !"<string literal>", i1 false, i1 false}
!798 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1962, i32 2}
!799 = !{ptr @arcturus_dump_pptable._entry.559, !798, !"_entry", i1 false, i1 false}
!800 = !{ptr @arcturus_dump_pptable._entry_ptr.561, !798, !"_entry_ptr", i1 false, i1 false}
!801 = !{ptr @.str.563, !802, !"<string literal>", i1 false, i1 false}
!802 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1964, i32 2}
!803 = !{ptr @arcturus_dump_pptable._entry.562, !802, !"_entry", i1 false, i1 false}
!804 = !{ptr @arcturus_dump_pptable._entry_ptr.564, !802, !"_entry_ptr", i1 false, i1 false}
!805 = !{ptr @.str.566, !806, !"<string literal>", i1 false, i1 false}
!806 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1965, i32 2}
!807 = !{ptr @arcturus_dump_pptable._entry.565, !806, !"_entry", i1 false, i1 false}
!808 = !{ptr @arcturus_dump_pptable._entry_ptr.567, !806, !"_entry_ptr", i1 false, i1 false}
!809 = !{ptr @.str.569, !810, !"<string literal>", i1 false, i1 false}
!810 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1966, i32 2}
!811 = !{ptr @arcturus_dump_pptable._entry.568, !810, !"_entry", i1 false, i1 false}
!812 = !{ptr @arcturus_dump_pptable._entry_ptr.570, !810, !"_entry_ptr", i1 false, i1 false}
!813 = !{ptr @.str.572, !814, !"<string literal>", i1 false, i1 false}
!814 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1968, i32 2}
!815 = !{ptr @arcturus_dump_pptable._entry.571, !814, !"_entry", i1 false, i1 false}
!816 = !{ptr @arcturus_dump_pptable._entry_ptr.573, !814, !"_entry_ptr", i1 false, i1 false}
!817 = !{ptr @.str.575, !818, !"<string literal>", i1 false, i1 false}
!818 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1969, i32 2}
!819 = !{ptr @arcturus_dump_pptable._entry.574, !818, !"_entry", i1 false, i1 false}
!820 = !{ptr @arcturus_dump_pptable._entry_ptr.576, !818, !"_entry_ptr", i1 false, i1 false}
!821 = !{ptr @.str.578, !822, !"<string literal>", i1 false, i1 false}
!822 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1970, i32 2}
!823 = !{ptr @arcturus_dump_pptable._entry.577, !822, !"_entry", i1 false, i1 false}
!824 = !{ptr @arcturus_dump_pptable._entry_ptr.579, !822, !"_entry_ptr", i1 false, i1 false}
!825 = !{ptr @.str.581, !826, !"<string literal>", i1 false, i1 false}
!826 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1972, i32 2}
!827 = !{ptr @arcturus_dump_pptable._entry.580, !826, !"_entry", i1 false, i1 false}
!828 = !{ptr @arcturus_dump_pptable._entry_ptr.582, !826, !"_entry_ptr", i1 false, i1 false}
!829 = !{ptr @.str.584, !830, !"<string literal>", i1 false, i1 false}
!830 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1973, i32 2}
!831 = !{ptr @arcturus_dump_pptable._entry.583, !830, !"_entry", i1 false, i1 false}
!832 = !{ptr @arcturus_dump_pptable._entry_ptr.585, !830, !"_entry_ptr", i1 false, i1 false}
!833 = !{ptr @.str.587, !834, !"<string literal>", i1 false, i1 false}
!834 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1974, i32 2}
!835 = !{ptr @arcturus_dump_pptable._entry.586, !834, !"_entry", i1 false, i1 false}
!836 = !{ptr @arcturus_dump_pptable._entry_ptr.588, !834, !"_entry_ptr", i1 false, i1 false}
!837 = !{ptr @.str.590, !838, !"<string literal>", i1 false, i1 false}
!838 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1975, i32 2}
!839 = !{ptr @arcturus_dump_pptable._entry.589, !838, !"_entry", i1 false, i1 false}
!840 = !{ptr @arcturus_dump_pptable._entry_ptr.591, !838, !"_entry_ptr", i1 false, i1 false}
!841 = !{ptr @.str.593, !842, !"<string literal>", i1 false, i1 false}
!842 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1977, i32 2}
!843 = !{ptr @arcturus_dump_pptable._entry.592, !842, !"_entry", i1 false, i1 false}
!844 = !{ptr @arcturus_dump_pptable._entry_ptr.594, !842, !"_entry_ptr", i1 false, i1 false}
!845 = !{ptr @.str.596, !846, !"<string literal>", i1 false, i1 false}
!846 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1978, i32 2}
!847 = !{ptr @arcturus_dump_pptable._entry.595, !846, !"_entry", i1 false, i1 false}
!848 = !{ptr @arcturus_dump_pptable._entry_ptr.597, !846, !"_entry_ptr", i1 false, i1 false}
!849 = !{ptr @.str.599, !850, !"<string literal>", i1 false, i1 false}
!850 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1979, i32 2}
!851 = !{ptr @arcturus_dump_pptable._entry.598, !850, !"_entry", i1 false, i1 false}
!852 = !{ptr @arcturus_dump_pptable._entry_ptr.600, !850, !"_entry_ptr", i1 false, i1 false}
!853 = !{ptr @.str.602, !854, !"<string literal>", i1 false, i1 false}
!854 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1981, i32 2}
!855 = !{ptr @arcturus_dump_pptable._entry.601, !854, !"_entry", i1 false, i1 false}
!856 = !{ptr @arcturus_dump_pptable._entry_ptr.603, !854, !"_entry_ptr", i1 false, i1 false}
!857 = !{ptr @.str.605, !858, !"<string literal>", i1 false, i1 false}
!858 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1982, i32 2}
!859 = !{ptr @arcturus_dump_pptable._entry.604, !858, !"_entry", i1 false, i1 false}
!860 = !{ptr @arcturus_dump_pptable._entry_ptr.606, !858, !"_entry_ptr", i1 false, i1 false}
!861 = !{ptr @.str.608, !862, !"<string literal>", i1 false, i1 false}
!862 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1983, i32 2}
!863 = !{ptr @arcturus_dump_pptable._entry.607, !862, !"_entry", i1 false, i1 false}
!864 = !{ptr @arcturus_dump_pptable._entry_ptr.609, !862, !"_entry_ptr", i1 false, i1 false}
!865 = !{ptr @.str.611, !866, !"<string literal>", i1 false, i1 false}
!866 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1985, i32 2}
!867 = !{ptr @arcturus_dump_pptable._entry.610, !866, !"_entry", i1 false, i1 false}
!868 = !{ptr @arcturus_dump_pptable._entry_ptr.612, !866, !"_entry_ptr", i1 false, i1 false}
!869 = !{ptr @.str.614, !870, !"<string literal>", i1 false, i1 false}
!870 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1986, i32 2}
!871 = !{ptr @arcturus_dump_pptable._entry.613, !870, !"_entry", i1 false, i1 false}
!872 = !{ptr @arcturus_dump_pptable._entry_ptr.615, !870, !"_entry_ptr", i1 false, i1 false}
!873 = !{ptr @.str.617, !874, !"<string literal>", i1 false, i1 false}
!874 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1987, i32 2}
!875 = !{ptr @arcturus_dump_pptable._entry.616, !874, !"_entry", i1 false, i1 false}
!876 = !{ptr @arcturus_dump_pptable._entry_ptr.618, !874, !"_entry_ptr", i1 false, i1 false}
!877 = !{ptr @.str.620, !878, !"<string literal>", i1 false, i1 false}
!878 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1989, i32 2}
!879 = !{ptr @arcturus_dump_pptable._entry.619, !878, !"_entry", i1 false, i1 false}
!880 = !{ptr @arcturus_dump_pptable._entry_ptr.621, !878, !"_entry_ptr", i1 false, i1 false}
!881 = !{ptr @.str.623, !882, !"<string literal>", i1 false, i1 false}
!882 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1990, i32 2}
!883 = !{ptr @arcturus_dump_pptable._entry.622, !882, !"_entry", i1 false, i1 false}
!884 = !{ptr @arcturus_dump_pptable._entry_ptr.624, !882, !"_entry_ptr", i1 false, i1 false}
!885 = !{ptr @.str.626, !886, !"<string literal>", i1 false, i1 false}
!886 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1991, i32 2}
!887 = !{ptr @arcturus_dump_pptable._entry.625, !886, !"_entry", i1 false, i1 false}
!888 = !{ptr @arcturus_dump_pptable._entry_ptr.627, !886, !"_entry_ptr", i1 false, i1 false}
!889 = !{ptr @.str.629, !890, !"<string literal>", i1 false, i1 false}
!890 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1994, i32 3}
!891 = !{ptr @arcturus_dump_pptable._entry.628, !890, !"_entry", i1 false, i1 false}
!892 = !{ptr @arcturus_dump_pptable._entry_ptr.630, !890, !"_entry_ptr", i1 false, i1 false}
!893 = !{ptr @.str.632, !894, !"<string literal>", i1 false, i1 false}
!894 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1995, i32 3}
!895 = !{ptr @arcturus_dump_pptable._entry.631, !894, !"_entry", i1 false, i1 false}
!896 = !{ptr @arcturus_dump_pptable._entry_ptr.633, !894, !"_entry_ptr", i1 false, i1 false}
!897 = !{ptr @.str.635, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1997, i32 3}
!899 = !{ptr @arcturus_dump_pptable._entry.634, !898, !"_entry", i1 false, i1 false}
!900 = !{ptr @arcturus_dump_pptable._entry_ptr.636, !898, !"_entry_ptr", i1 false, i1 false}
!901 = !{ptr @.str.638, !902, !"<string literal>", i1 false, i1 false}
!902 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1999, i32 3}
!903 = !{ptr @arcturus_dump_pptable._entry.637, !902, !"_entry", i1 false, i1 false}
!904 = !{ptr @arcturus_dump_pptable._entry_ptr.639, !902, !"_entry_ptr", i1 false, i1 false}
!905 = !{ptr @.str.641, !906, !"<string literal>", i1 false, i1 false}
!906 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2001, i32 3}
!907 = !{ptr @arcturus_dump_pptable._entry.640, !906, !"_entry", i1 false, i1 false}
!908 = !{ptr @arcturus_dump_pptable._entry_ptr.642, !906, !"_entry_ptr", i1 false, i1 false}
!909 = !{ptr @.str.644, !910, !"<string literal>", i1 false, i1 false}
!910 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2003, i32 3}
!911 = !{ptr @arcturus_dump_pptable._entry.643, !910, !"_entry", i1 false, i1 false}
!912 = !{ptr @arcturus_dump_pptable._entry_ptr.645, !910, !"_entry_ptr", i1 false, i1 false}
!913 = !{ptr @.str.647, !914, !"<string literal>", i1 false, i1 false}
!914 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2005, i32 3}
!915 = !{ptr @arcturus_dump_pptable._entry.646, !914, !"_entry", i1 false, i1 false}
!916 = !{ptr @arcturus_dump_pptable._entry_ptr.648, !914, !"_entry_ptr", i1 false, i1 false}
!917 = !{ptr @.str.650, !918, !"<string literal>", i1 false, i1 false}
!918 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2007, i32 3}
!919 = !{ptr @arcturus_dump_pptable._entry.649, !918, !"_entry", i1 false, i1 false}
!920 = !{ptr @arcturus_dump_pptable._entry_ptr.651, !918, !"_entry_ptr", i1 false, i1 false}
!921 = !{ptr @.str.653, !922, !"<string literal>", i1 false, i1 false}
!922 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2011, i32 2}
!923 = !{ptr @arcturus_dump_pptable._entry.652, !922, !"_entry", i1 false, i1 false}
!924 = !{ptr @arcturus_dump_pptable._entry_ptr.654, !922, !"_entry_ptr", i1 false, i1 false}
!925 = !{ptr @.str.656, !926, !"<string literal>", i1 false, i1 false}
!926 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2012, i32 2}
!927 = !{ptr @arcturus_dump_pptable._entry.655, !926, !"_entry", i1 false, i1 false}
!928 = !{ptr @arcturus_dump_pptable._entry_ptr.657, !926, !"_entry_ptr", i1 false, i1 false}
!929 = !{ptr @.str.659, !930, !"<string literal>", i1 false, i1 false}
!930 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2014, i32 2}
!931 = !{ptr @arcturus_dump_pptable._entry.658, !930, !"_entry", i1 false, i1 false}
!932 = !{ptr @arcturus_dump_pptable._entry_ptr.660, !930, !"_entry_ptr", i1 false, i1 false}
!933 = !{ptr @.str.662, !934, !"<string literal>", i1 false, i1 false}
!934 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2016, i32 2}
!935 = !{ptr @arcturus_dump_pptable._entry.661, !934, !"_entry", i1 false, i1 false}
!936 = !{ptr @arcturus_dump_pptable._entry_ptr.663, !934, !"_entry_ptr", i1 false, i1 false}
!937 = !{ptr @arcturus_dump_pptable._entry.664, !938, !"_entry", i1 false, i1 false}
!938 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2018, i32 3}
!939 = !{ptr @arcturus_dump_pptable._entry_ptr.665, !938, !"_entry_ptr", i1 false, i1 false}
!940 = !{ptr @.str.667, !941, !"<string literal>", i1 false, i1 false}
!941 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2019, i32 2}
!942 = !{ptr @arcturus_dump_pptable._entry.666, !941, !"_entry", i1 false, i1 false}
!943 = !{ptr @arcturus_dump_pptable._entry_ptr.668, !941, !"_entry_ptr", i1 false, i1 false}
!944 = !{ptr @arcturus_dump_pptable._entry.669, !945, !"_entry", i1 false, i1 false}
!945 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2021, i32 3}
!946 = !{ptr @arcturus_dump_pptable._entry_ptr.670, !945, !"_entry_ptr", i1 false, i1 false}
!947 = !{ptr @.str.672, !948, !"<string literal>", i1 false, i1 false}
!948 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2022, i32 2}
!949 = !{ptr @arcturus_dump_pptable._entry.671, !948, !"_entry", i1 false, i1 false}
!950 = !{ptr @arcturus_dump_pptable._entry_ptr.673, !948, !"_entry_ptr", i1 false, i1 false}
!951 = !{ptr @arcturus_dump_pptable._entry.674, !952, !"_entry", i1 false, i1 false}
!952 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2024, i32 3}
!953 = !{ptr @arcturus_dump_pptable._entry_ptr.675, !952, !"_entry_ptr", i1 false, i1 false}
!954 = !{ptr @.str.677, !955, !"<string literal>", i1 false, i1 false}
!955 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2025, i32 2}
!956 = !{ptr @arcturus_dump_pptable._entry.676, !955, !"_entry", i1 false, i1 false}
!957 = !{ptr @arcturus_dump_pptable._entry_ptr.678, !955, !"_entry_ptr", i1 false, i1 false}
!958 = !{ptr @arcturus_dump_pptable._entry.679, !959, !"_entry", i1 false, i1 false}
!959 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2027, i32 3}
!960 = !{ptr @arcturus_dump_pptable._entry_ptr.680, !959, !"_entry_ptr", i1 false, i1 false}
!961 = !{ptr @.str.681, !962, !"<string literal>", i1 false, i1 false}
!962 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1350, i32 4}
!963 = !{ptr @.str.682, !962, !"<string literal>", i1 false, i1 false}
!964 = !{ptr @arcturus_get_power_limit._entry, !962, !"_entry", i1 false, i1 false}
!965 = !{ptr @arcturus_get_power_limit._entry_ptr, !962, !"_entry_ptr", i1 false, i1 false}
!966 = !{ptr @.str.683, !967, !"<string literal>", i1 false, i1 false}
!967 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 1366, i32 4}
!968 = !{ptr @arcturus_get_power_limit.__UNIQUE_ID_ddebug344, !967, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!969 = !{ptr @.str.684, !970, !"<string literal>", i1 false, i1 false}
!970 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2225, i32 3}
!971 = !{ptr @arcturus_set_df_cstate._entry, !970, !"_entry", i1 false, i1 false}
!972 = !{ptr @arcturus_set_df_cstate._entry_ptr, !970, !"_entry_ptr", i1 false, i1 false}
!973 = !{ptr @.str.686, !974, !"<string literal>", i1 false, i1 false}
!974 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2231, i32 3}
!975 = !{ptr @arcturus_set_df_cstate._entry.685, !974, !"_entry", i1 false, i1 false}
!976 = !{ptr @arcturus_set_df_cstate._entry_ptr.687, !974, !"_entry_ptr", i1 false, i1 false}
!977 = !{ptr @.str.688, !978, !"<string literal>", i1 false, i1 false}
!978 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2245, i32 3}
!979 = !{ptr @arcturus_allow_xgmi_power_down._entry, !978, !"_entry", i1 false, i1 false}
!980 = !{ptr @arcturus_allow_xgmi_power_down._entry_ptr, !978, !"_entry_ptr", i1 false, i1 false}
!981 = !{ptr @.str.690, !982, !"<string literal>", i1 false, i1 false}
!982 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2251, i32 3}
!983 = !{ptr @arcturus_allow_xgmi_power_down._entry.689, !982, !"_entry", i1 false, i1 false}
!984 = !{ptr @arcturus_allow_xgmi_power_down._entry_ptr.691, !982, !"_entry_ptr", i1 false, i1 false}
!985 = !{ptr @.str.692, !986, !"<string literal>", i1 false, i1 false}
!986 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2174, i32 49}
!987 = !{ptr @.str.693, !988, !"<string literal>", i1 false, i1 false}
!988 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2178, i32 3}
!989 = !{ptr @arcturus_i2c_algo, !990, !"arcturus_i2c_algo", i1 false, i1 false}
!990 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2150, i32 35}
!991 = !{ptr @arcturus_i2c_control_quirks, !992, !"arcturus_i2c_control_quirks", i1 false, i1 false}
!992 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2156, i32 40}
!993 = !{ptr @.str.694, !994, !"<string literal>", i1 false, i1 false}
!994 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2195, i32 3}
!995 = !{ptr @.str.695, !994, !"<string literal>", i1 false, i1 false}
!996 = !{ptr @.str.696, !994, !"<string literal>", i1 false, i1 false}
!997 = !{ptr @arcturus_get_unique_id._entry, !994, !"_entry", i1 false, i1 false}
!998 = !{ptr @arcturus_get_unique_id._entry_ptr, !994, !"_entry_ptr", i1 false, i1 false}
!999 = !{ptr @.str.698, !1000, !"<string literal>", i1 false, i1 false}
!1000 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2201, i32 3}
!1001 = !{ptr @arcturus_get_unique_id._entry.697, !1000, !"_entry", i1 false, i1 false}
!1002 = !{ptr @arcturus_get_unique_id._entry_ptr.699, !1000, !"_entry_ptr", i1 false, i1 false}
!1003 = !{ptr @.str.700, !1004, !"<string literal>", i1 false, i1 false}
!1004 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2214, i32 24}
!1005 = !{ptr @.str.701, !1006, !"<string literal>", i1 false, i1 false}
!1006 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 484, i32 2}
!1007 = !{ptr @.str.702, !1006, !"<string literal>", i1 false, i1 false}
!1008 = !{ptr @arcturus_append_powerplay_table._entry, !1006, !"_entry", i1 false, i1 false}
!1009 = !{ptr @arcturus_append_powerplay_table._entry_ptr, !1006, !"_entry_ptr", i1 false, i1 false}
!1010 = distinct !{null, !1011, !"__print_once", i1 false, i1 false}
!1011 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 438, i32 3}
!1012 = !{ptr @.str.703, !1011, !"<string literal>", i1 false, i1 false}
!1013 = !{ptr @.str.704, !1011, !"<string literal>", i1 false, i1 false}
!1014 = !{ptr @arcturus_check_fan_support._entry, !1011, !"_entry", i1 false, i1 false}
!1015 = !{ptr @arcturus_check_fan_support._entry_ptr, !1011, !"_entry_ptr", i1 false, i1 false}
!1016 = !{ptr @.str.705, !1017, !"<string literal>", i1 false, i1 false}
!1017 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2300, i32 10}
!1018 = !{ptr @.str.706, !1019, !"<string literal>", i1 false, i1 false}
!1019 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2301, i32 33}
!1020 = !{ptr @.str.707, !1021, !"<string literal>", i1 false, i1 false}
!1021 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2304, i32 5}
!1022 = !{ptr @.str.708, !1021, !"<string literal>", i1 false, i1 false}
!1023 = !{ptr @arcturus_log_thermal_throttling_event._entry, !1021, !"_entry", i1 false, i1 false}
!1024 = !{ptr @arcturus_log_thermal_throttling_event._entry_ptr, !1021, !"_entry_ptr", i1 false, i1 false}
!1025 = !{ptr @.str.710, !1026, !"<string literal>", i1 false, i1 false}
!1026 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2311, i32 2}
!1027 = !{ptr @arcturus_log_thermal_throttling_event._entry.709, !1026, !"_entry", i1 false, i1 false}
!1028 = !{ptr @arcturus_log_thermal_throttling_event._entry_ptr.711, !1026, !"_entry_ptr", i1 false, i1 false}
!1029 = !{ptr @.str.712, !1030, !"<string literal>", i1 false, i1 false}
!1030 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2271, i32 39}
!1031 = !{ptr @.str.713, !1032, !"<string literal>", i1 false, i1 false}
!1032 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2272, i32 35}
!1033 = !{ptr @.str.714, !1034, !"<string literal>", i1 false, i1 false}
!1034 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2273, i32 38}
!1035 = !{ptr @.str.715, !1036, !"<string literal>", i1 false, i1 false}
!1036 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2274, i32 38}
!1037 = !{ptr @.str.716, !1038, !"<string literal>", i1 false, i1 false}
!1038 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2275, i32 38}
!1039 = !{ptr @.str.717, !1040, !"<string literal>", i1 false, i1 false}
!1040 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2276, i32 33}
!1041 = !{ptr @.str.718, !1042, !"<string literal>", i1 false, i1 false}
!1042 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2277, i32 33}
!1043 = distinct !{null, !1044, !"logging_label", i1 false, i1 false}
!1044 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 2270, i32 3}
!1045 = !{ptr @arcturus_throttler_map, !1046, !"arcturus_throttler_map", i1 false, i1 false}
!1046 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 232, i32 22}
!1047 = !{ptr @arcturus_message_map, !1048, !"arcturus_message_map", i1 false, i1 false}
!1048 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 102, i32 42}
!1049 = !{ptr @arcturus_clk_map, !1050, !"arcturus_clk_map", i1 false, i1 false}
!1050 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 166, i32 38}
!1051 = !{ptr @arcturus_feature_mask_map, !1052, !"arcturus_feature_mask_map", i1 false, i1 false}
!1052 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 177, i32 38}
!1053 = !{ptr @arcturus_table_map, !1054, !"arcturus_table_map", i1 false, i1 false}
!1054 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 206, i32 38}
!1055 = !{ptr @arcturus_pwr_src_map, !1056, !"arcturus_pwr_src_map", i1 false, i1 false}
!1056 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 219, i32 38}
!1057 = !{ptr @arcturus_workload_map, !1058, !"arcturus_workload_map", i1 false, i1 false}
!1058 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/arcturus_ppt.c", i32 224, i32 38}
!1059 = !{i32 1, !"wchar_size", i32 2}
!1060 = !{i32 1, !"min_enum_size", i32 4}
!1061 = !{i32 8, !"branch-target-enforcement", i32 0}
!1062 = !{i32 8, !"sign-return-address", i32 0}
!1063 = !{i32 8, !"sign-return-address-all", i32 0}
!1064 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1065 = !{i32 7, !"uwtable", i32 1}
!1066 = !{i32 7, !"frame-pointer", i32 2}
!1067 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1068 = !{!"auto-init"}
!1069 = !{i32 0, i32 33}
!1070 = !{i64 2148264679, i64 2148264684, i64 2148264697, i64 2148264741, i64 2148264775, i64 2148264796}
!1071 = !{i8 0, i8 2}
!1072 = !{i64 1008077, i64 1008104}
!1073 = !{i64 1008417, i64 1008444, i64 1008478, i64 1008499}
