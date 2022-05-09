; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nbio_hdp_flush_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_df_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_smuio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.93] }
%struct.anon.93 = type { [12 x %struct.ttm_pool_type] }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.binary_header = type { i32, i16, i16, i16, i16, [6 x %struct.table_info] }
%struct.table_info = type { i16, i16, i16, i16 }
%struct.ip_discovery_header = type { i32, i16, i16, i32, i16, [16 x %struct.die_info], [1 x i16] }
%struct.die_info = type { i16, i16 }
%struct.gpu_info_header = type { i32, i16, i16, i32 }
%struct.die_header = type { i16, i16 }
%struct.ip = type { i16, i8, i8, i8, i8, i8, i8, [1 x i32] }
%struct.harvest_table = type { %struct.harvest_info_header, [32 x %struct.harvest_info] }
%struct.harvest_info_header = type { i32, i32 }
%struct.harvest_info = type { i16, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.gc_info_v1_0 = type { %struct.gpu_info_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gc_info_v2_0 = type { %struct.gpu_info_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_firmware343 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/ip_discovery.bin\00", section ".modinfo", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu_discovery_init failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"number of dies: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid die id %d, expected %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"number of hardware IPs on die%d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(%d) #%d v%d.%d.%d:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\090x%08x\0A\00", [23 x i8] zeroinitializer }, align 32
@hw_id_map = internal constant { [31 x i32], [36 x i8] } { [31 x i32] [i32 0, i32 11, i32 41, i32 42, i32 43, i32 68, i32 69, i32 0, i32 0, i32 0, i32 0, i32 34, i32 35, i32 108, i32 255, i32 1, i32 12, i32 0, i32 32, i32 46, i32 271, i32 40, i32 4, i32 10, i32 108, i32 3, i32 6, i32 150, i32 0, i32 200, i32 15], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"set register base offset for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ip discovery uninitialized\0A\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_discovery_get_gfx_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 653, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Unhandled GC info table %d.%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu_discovery_get_gfx_info\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_discovery_get_gfx_info._entry_ptr = internal global ptr @amdgpu_discovery_get_gfx_info._entry, section ".printk_index", align 4
@nbio_v6_1_funcs = external dso_local constant %struct.amdgpu_nbio_funcs, align 4
@nbio_v6_1_hdp_flush_reg = external dso_local constant %struct.nbio_hdp_flush_reg, align 4
@nbio_v7_0_funcs = external dso_local constant %struct.amdgpu_nbio_funcs, align 4
@nbio_v7_0_hdp_flush_reg = external dso_local constant %struct.nbio_hdp_flush_reg, align 4
@nbio_v7_4_funcs = external dso_local constant %struct.amdgpu_nbio_funcs, align 4
@nbio_v7_4_hdp_flush_reg = external dso_local constant %struct.nbio_hdp_flush_reg, align 4
@nbio_v7_4_hdp_flush_reg_ald = external dso_local constant %struct.nbio_hdp_flush_reg, align 4
@nbio_v7_2_funcs = external dso_local constant %struct.amdgpu_nbio_funcs, align 4
@nbio_v7_2_hdp_flush_reg = external dso_local constant %struct.nbio_hdp_flush_reg, align 4
@nbio_v2_3_funcs = external dso_local constant %struct.amdgpu_nbio_funcs, align 4
@nbio_v2_3_hdp_flush_reg = external dso_local constant %struct.nbio_hdp_flush_reg, align 4
@nbio_v2_3_hdp_flush_reg_sc = external dso_local constant %struct.nbio_hdp_flush_reg, align 4
@hdp_v4_0_funcs = external dso_local constant %struct.amdgpu_hdp_funcs, align 4
@hdp_v5_0_funcs = external dso_local constant %struct.amdgpu_hdp_funcs, align 4
@df_v3_6_funcs = external dso_local constant %struct.amdgpu_df_funcs, align 4
@df_v1_7_funcs = external dso_local constant %struct.amdgpu_df_funcs, align 4
@smuio_v9_0_funcs = external dso_local constant %struct.amdgpu_smuio_funcs, align 4
@smuio_v11_0_funcs = external dso_local constant %struct.amdgpu_smuio_funcs, align 4
@smuio_v11_0_6_funcs = external dso_local constant %struct.amdgpu_smuio_funcs, align 4
@smuio_v13_0_funcs = external dso_local constant %struct.amdgpu_smuio_funcs, align 4
@amdgpu_discovery_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.10, i32 288, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: failed to read ip discovery binary from vram\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu_discovery_init\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_discovery_init._entry_ptr = internal global ptr @amdgpu_discovery_init._entry, section ".printk_index", align 4
@amdgpu_discovery_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.10, i32 294, ptr @.str.17, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"amdgpu: get invalid ip discovery binary signature from vram\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_discovery_init._entry_ptr.18 = internal global ptr @amdgpu_discovery_init._entry.15, section ".printk_index", align 4
@amdgpu_discovery_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.10, i32 298, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: failed to read ip discovery binary from file\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_discovery_init._entry_ptr.21 = internal global ptr @amdgpu_discovery_init._entry.19, section ".printk_index", align 4
@amdgpu_discovery_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.10, i32 304, ptr @.str.17, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"amdgpu: get invalid ip discovery binary signature from file\0A\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_discovery_init._entry_ptr.24 = internal global ptr @amdgpu_discovery_init._entry.22, section ".printk_index", align 4
@amdgpu_discovery_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.14, ptr @.str.10, i32 319, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: invalid ip discovery binary checksum\0A\00", [50 x i8] zeroinitializer }, align 32
@amdgpu_discovery_init._entry_ptr.27 = internal global ptr @amdgpu_discovery_init._entry.25, section ".printk_index", align 4
@amdgpu_discovery_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.14, ptr @.str.10, i32 330, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: invalid ip discovery data table signature\0A\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_discovery_init._entry_ptr.30 = internal global ptr @amdgpu_discovery_init._entry.28, section ".printk_index", align 4
@amdgpu_discovery_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.14, ptr @.str.10, i32 337, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: invalid ip discovery data table checksum\0A\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_discovery_init._entry_ptr.33 = internal global ptr @amdgpu_discovery_init._entry.31, section ".printk_index", align 4
@amdgpu_discovery_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.14, ptr @.str.10, i32 349, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: invalid gc data table checksum\0A\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_discovery_init._entry_ptr.36 = internal global ptr @amdgpu_discovery_init._entry.34, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@amdgpu_discovery = external dso_local local_unnamed_addr global i32, align 4
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu/ip_discovery.bin\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_discovery_read_binary_from_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.10, i32 204, ptr @.str.17, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: amdgpu_discovery is not set properly\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu_discovery_read_binary_from_file\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_discovery_read_binary_from_file._entry_ptr = internal global ptr @amdgpu_discovery_read_binary_from_file._entry, section ".printk_index", align 4
@amdgpu_discovery_read_binary_from_file._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.10, i32 211, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: can't load firmware \22%s\22\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_discovery_read_binary_from_file._entry_ptr.42 = internal global ptr @amdgpu_discovery_read_binary_from_file._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Unexpected number_instance (%d) from ip discovery blob\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unexpected hw_id (%d) from ip discovery blob\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP1\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP2\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"THM\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMUIO\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FUSE\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CLKA\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PWR\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GC\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UVD\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AUDIO_AZ\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACP\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCI\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCO\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XDMA\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCEAZ\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDPMUX\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NTB\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IOHC\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"L2IMU\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCE\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MMHUB\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATHUB\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DBGU_NBIO\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DFX\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBGU0\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBGU1\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OSSSYS\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HDP\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA0\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA1\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISP\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DBGU_IO\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DF\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CLKB\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCH\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DFX_DAP\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"L1IMU_PCIE\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"L1IMU_NBIF\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"L1IMU_IOAGR\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"L1IMU3\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"L1IMU4\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"L1IMU5\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"L1IMU6\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"L1IMU7\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"L1IMU8\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"L1IMU9\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L1IMU10\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L1IMU11\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L1IMU12\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L1IMU13\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L1IMU14\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L1IMU15\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WAFLC\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FCH_USB_PD\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA2\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA3\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIE\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCS\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDCL\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SST\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IOAGR\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NBIF\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IOAPIC\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYSTEMHUB\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTBCCP\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UMC\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SATA\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CCXSEC\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XGMI\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XGBE\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP0\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMU\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DIO\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAZ\00", [28 x i8] zeroinitializer }, align 32
@hw_id_names = internal constant { <{ [275 x ptr], [25 x ptr] }>, [304 x i8] } { <{ [275 x ptr], [25 x ptr] }> <{ [275 x ptr] [ptr null, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr null, ptr null, ptr null, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr null, ptr null, ptr null, ptr @.str.62, ptr null, ptr null, ptr null, ptr @.str.63, ptr null, ptr null, ptr null, ptr @.str.64, ptr null, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.102, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.103, ptr @.str.104, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.105, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.106, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.107, ptr null, ptr null, ptr null, ptr @.str.108, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.109, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.110, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.111, ptr null, ptr @.str.112, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.113, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.114, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.115, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.116, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.117, ptr @.str.118, ptr null, ptr @.str.119], [25 x ptr] zeroinitializer }>, [304 x i8] zeroinitializer }, align 32
@vega10_common_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@nv_common_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_common_ip_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.10, i32 688, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Failed to add common ip block(GC_HWIP:0x%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu_discovery_set_common_ip_blocks\00", [58 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_common_ip_blocks._entry_ptr = internal global ptr @amdgpu_discovery_set_common_ip_blocks._entry, section ".printk_index", align 4
@gmc_v9_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gmc_v10_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_gmc_ip_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.10, i32 723, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: Failed to add gmc ip block(GC_HWIP:0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu_discovery_set_gmc_ip_blocks\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_gmc_ip_blocks._entry_ptr = internal global ptr @amdgpu_discovery_set_gmc_ip_blocks._entry, section ".printk_index", align 4
@psp_v3_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@psp_v10_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@psp_v11_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@psp_v11_0_8_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@psp_v12_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@psp_v13_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_psp_ip_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.10, i32 798, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: Failed to add psp ip block(MP0_HWIP:0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu_discovery_set_psp_ip_blocks\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_psp_ip_blocks._entry_ptr = internal global ptr @amdgpu_discovery_set_psp_ip_blocks._entry, section ".printk_index", align 4
@vega10_ih_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vega20_ih_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@navi10_ih_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_ih_ip_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.10, i32 755, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Failed to add ih ip block(OSSSYS_HWIP:0x%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu_discovery_set_ih_ip_blocks\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_ih_ip_blocks._entry_ptr = internal global ptr @amdgpu_discovery_set_ih_ip_blocks._entry, section ".printk_index", align 4
@smu_v11_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@pp_smu_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@smu_v12_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@smu_v13_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_smu_ip_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.10, i32 839, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: Failed to add smu ip block(MP1_HWIP:0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu_discovery_set_smu_ip_blocks\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_smu_ip_blocks._entry_ptr = internal global ptr @amdgpu_discovery_set_smu_ip_blocks._entry, section ".printk_index", align 4
@amdgpu_vkms_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@dm_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_display_ip_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.10, i32 869, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: Failed to add dm ip block(DCE_HWIP:0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu_discovery_set_display_ip_blocks\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_display_ip_blocks._entry_ptr = internal global ptr @amdgpu_discovery_set_display_ip_blocks._entry, section ".printk_index", align 4
@amdgpu_discovery_set_display_ip_blocks._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.10, i32 882, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: Failed to add dm ip block(DCI_HWIP:0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_display_ip_blocks._entry_ptr.135 = internal global ptr @amdgpu_discovery_set_display_ip_blocks._entry.133, section ".printk_index", align 4
@gfx_v9_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@gfx_v10_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_gc_ip_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.10, i32 918, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: Failed to add gfx ip block(GC_HWIP:0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu_discovery_set_gc_ip_blocks\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_gc_ip_blocks._entry_ptr = internal global ptr @amdgpu_discovery_set_gc_ip_blocks._entry, section ".printk_index", align 4
@sdma_v4_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@sdma_v5_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@sdma_v5_2_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_sdma_ip_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.10, i32 954, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: Failed to add sdma ip block(SDMA0_HWIP:0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu_discovery_set_sdma_ip_blocks\00", [60 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_sdma_ip_blocks._entry_ptr = internal global ptr @amdgpu_discovery_set_sdma_ip_blocks._entry, section ".printk_index", align 4
@uvd_v7_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_mm_ip_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.10, i32 973, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: Failed to add uvd v7 ip block(UVD_HWIP:0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu_discovery_set_mm_ip_blocks\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_mm_ip_blocks._entry_ptr = internal global ptr @amdgpu_discovery_set_mm_ip_blocks._entry, section ".printk_index", align 4
@vce_v4_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_mm_ip_blocks._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.10, i32 986, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: Failed to add VCE v4 ip block(VCE_HWIP:0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_mm_ip_blocks._entry_ptr.144 = internal global ptr @amdgpu_discovery_set_mm_ip_blocks._entry.142, section ".printk_index", align 4
@vcn_v1_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vcn_v2_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@jpeg_v2_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vcn_v2_5_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@jpeg_v2_5_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vcn_v2_6_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@jpeg_v2_6_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@vcn_v3_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@jpeg_v3_0_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@amdgpu_discovery_set_mm_ip_blocks._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.141, ptr @.str.10, i32 1027, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: Failed to add vcn/jpeg ip block(UVD_HWIP:0x%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_discovery_set_mm_ip_blocks._entry_ptr.147 = internal global ptr @amdgpu_discovery_set_mm_ip_blocks._entry.145, section ".printk_index", align 4
@mes_v10_1_ip_block = external dso_local constant %struct.amdgpu_ip_block_version, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 10752, i64 11008, i64 17408, i64 17664]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 271]
@__sancov_gen_cov_switch_values.149 = internal global [9 x i64] [i64 7, i64 8, i64 193, i64 194, i64 195, i64 197, i64 199, i64 207, i64 223]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 16, i64 29470, i64 29504, i64 29536]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.152 = internal global [8 x i64] [i64 6, i64 32, i64 19, i64 20, i64 21, i64 22, i64 23, i64 25]
@__sancov_gen_cov_switch_values.153 = internal global [20 x i64] [i64 18, i64 32, i64 589825, i64 590080, i64 590337, i64 590338, i64 590592, i64 590848, i64 590849, i64 590850, i64 655617, i64 655618, i64 655619, i64 655626, i64 656128, i64 656129, i64 656130, i64 656131, i64 656132, i64 656133]
@__sancov_gen_cov_switch_values.154 = internal global [21 x i64] [i64 19, i64 32, i64 131329, i64 131840, i64 131841, i64 131842, i64 132352, i64 197376, i64 197377, i64 197378, i64 197379, i64 393472, i64 393728, i64 458752, i64 458753, i64 459264, i64 459265, i64 459776, i64 459777, i64 459780, i64 460032]
@__sancov_gen_cov_switch_values.155 = internal global [16 x i64] [i64 14, i64 32, i64 262144, i64 262145, i64 262400, i64 262401, i64 262402, i64 262656, i64 262657, i64 263168, i64 327680, i64 327681, i64 327682, i64 327683, i64 327684, i64 328192]
@__sancov_gen_cov_switch_values.156 = internal global [10 x i64] [i64 8, i64 32, i64 131328, i64 131329, i64 132352, i64 197889, i64 197890, i64 198144, i64 198145, i64 198146]
@__sancov_gen_cov_switch_values.157 = internal global [19 x i64] [i64 17, i64 32, i64 589824, i64 589825, i64 655360, i64 655361, i64 655362, i64 720896, i64 720898, i64 720899, i64 720900, i64 720902, i64 720903, i64 720904, i64 720906, i64 720907, i64 722176, i64 851969, i64 851970]
@__sancov_gen_cov_switch_values.158 = internal global [20 x i64] [i64 18, i64 32, i64 589825, i64 590080, i64 590337, i64 590338, i64 590592, i64 590848, i64 590849, i64 590850, i64 655617, i64 655618, i64 655619, i64 655626, i64 656128, i64 656129, i64 656130, i64 656131, i64 656132, i64 656133]
@__sancov_gen_cov_switch_values.159 = internal global [20 x i64] [i64 18, i64 32, i64 589825, i64 590080, i64 590337, i64 590338, i64 590592, i64 590848, i64 590849, i64 590850, i64 655617, i64 655618, i64 655619, i64 655626, i64 656128, i64 656129, i64 656130, i64 656131, i64 656132, i64 656133]
@__sancov_gen_cov_switch_values.160 = internal global [21 x i64] [i64 19, i64 32, i64 589824, i64 655360, i64 655361, i64 720896, i64 720898, i64 720899, i64 720900, i64 720901, i64 720903, i64 720904, i64 720905, i64 720907, i64 720908, i64 720909, i64 722176, i64 786433, i64 851969, i64 851970, i64 851971]
@__sancov_gen_cov_switch_values.161 = internal global [16 x i64] [i64 14, i64 32, i64 262144, i64 262145, i64 262400, i64 262401, i64 262656, i64 262657, i64 262912, i64 263168, i64 327680, i64 327681, i64 327682, i64 327683, i64 328192, i64 328193]
@__sancov_gen_cov_switch_values.162 = internal global [20 x i64] [i64 18, i64 32, i64 589824, i64 655360, i64 655361, i64 720896, i64 720898, i64 720901, i64 720903, i64 720904, i64 720905, i64 720907, i64 720908, i64 720909, i64 722176, i64 786432, i64 786433, i64 851969, i64 851970, i64 851971]
@__sancov_gen_cov_switch_values.163 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 65536, i64 65537, i64 131072, i64 131074, i64 131075, i64 131328, i64 196608, i64 196609, i64 196610, i64 196611, i64 196866, i64 196867]
@__sancov_gen_cov_switch_values.164 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 786432, i64 786433, i64 786688]
@__sancov_gen_cov_switch_values.165 = internal global [20 x i64] [i64 18, i64 32, i64 589825, i64 590080, i64 590337, i64 590338, i64 590592, i64 590848, i64 590849, i64 590850, i64 655617, i64 655618, i64 655619, i64 655626, i64 656128, i64 656129, i64 656130, i64 656131, i64 656132, i64 656133]
@__sancov_gen_cov_switch_values.166 = internal global [20 x i64] [i64 18, i64 32, i64 262144, i64 262145, i64 262400, i64 262401, i64 262402, i64 262656, i64 262658, i64 263168, i64 327680, i64 327681, i64 327682, i64 327685, i64 328192, i64 328193, i64 328194, i64 328195, i64 328196, i64 328197]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 458752, i64 459264]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 262144, i64 262400]
@__sancov_gen_cov_switch_values.169 = internal global [16 x i64] [i64 14, i64 32, i64 65536, i64 65537, i64 131072, i64 131074, i64 131075, i64 131584, i64 132352, i64 132608, i64 196608, i64 196610, i64 196624, i64 196641, i64 196800, i64 196865]
@__sancov_gen_cov_switch_values.170 = internal global [12 x i64] [i64 10, i64 32, i64 655617, i64 655618, i64 655619, i64 655626, i64 656128, i64 656129, i64 656130, i64 656131, i64 656132, i64 656133]
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 402, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 411, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 420, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 425, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 436, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 467, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant [10 x i8] c"hw_id_map\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 156, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 472, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 512, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 650, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 288, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 294, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 298, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 304, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 319, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 330, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 337, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 349, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 201, i32 13 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 204, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 210, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 372, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 377, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 79, i32 16 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 80, i32 16 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 81, i32 16 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 82, i32 18 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 83, i32 17 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 84, i32 17 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 85, i32 16 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 86, i32 15 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 87, i32 16 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 88, i32 21 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 89, i32 16 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 90, i32 16 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 92, i32 16 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 94, i32 17 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 95, i32 18 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 97, i32 19 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 98, i32 16 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 99, i32 17 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 100, i32 18 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 101, i32 16 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 102, i32 18 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 103, i32 18 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 104, i32 21 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 105, i32 16 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 106, i32 18 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 107, i32 18 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 108, i32 19 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 109, i32 16 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 110, i32 18 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 111, i32 18 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 114, i32 16 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 115, i32 20 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 116, i32 15 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 117, i32 17 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 118, i32 16 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 119, i32 20 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 120, i32 22 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 121, i32 22 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 122, i32 23 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 123, i32 19 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 124, i32 19 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 125, i32 19 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 126, i32 19 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 127, i32 19 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 128, i32 19 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 129, i32 19 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 130, i32 20 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 131, i32 20 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 132, i32 20 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 133, i32 20 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 134, i32 20 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 135, i32 20 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 136, i32 18 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 137, i32 22 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 112, i32 18 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 113, i32 18 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 138, i32 17 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 139, i32 16 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 140, i32 17 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 141, i32 16 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 142, i32 18 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 143, i32 17 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 144, i32 19 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 145, i32 21 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 146, i32 19 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 147, i32 16 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 148, i32 17 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 149, i32 16 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 150, i32 19 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 151, i32 17 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 152, i32 17 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 153, i32 16 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 91, i32 16 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 93, i32 16 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 96, i32 16 }
@___asan_gen_.519 = private unnamed_addr constant [12 x i8] c"hw_id_names\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 78, i32 20 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 686, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 721, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 796, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 753, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 837, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 867, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 880, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 916, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 952, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 971, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 984, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.619 = private constant [49 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1025, i32 4 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @amdgpu_discovery_get_gfx_info._entry, ptr @amdgpu_discovery_get_gfx_info._entry_ptr, ptr @amdgpu_discovery_init._entry, ptr @amdgpu_discovery_init._entry.15, ptr @amdgpu_discovery_init._entry.19, ptr @amdgpu_discovery_init._entry.22, ptr @amdgpu_discovery_init._entry.25, ptr @amdgpu_discovery_init._entry.28, ptr @amdgpu_discovery_init._entry.31, ptr @amdgpu_discovery_init._entry.34, ptr @amdgpu_discovery_init._entry_ptr, ptr @amdgpu_discovery_init._entry_ptr.18, ptr @amdgpu_discovery_init._entry_ptr.21, ptr @amdgpu_discovery_init._entry_ptr.24, ptr @amdgpu_discovery_init._entry_ptr.27, ptr @amdgpu_discovery_init._entry_ptr.30, ptr @amdgpu_discovery_init._entry_ptr.33, ptr @amdgpu_discovery_init._entry_ptr.36, ptr @amdgpu_discovery_read_binary_from_file._entry, ptr @amdgpu_discovery_read_binary_from_file._entry.40, ptr @amdgpu_discovery_read_binary_from_file._entry_ptr, ptr @amdgpu_discovery_read_binary_from_file._entry_ptr.42, ptr @amdgpu_discovery_set_common_ip_blocks._entry, ptr @amdgpu_discovery_set_common_ip_blocks._entry_ptr, ptr @amdgpu_discovery_set_display_ip_blocks._entry, ptr @amdgpu_discovery_set_display_ip_blocks._entry.133, ptr @amdgpu_discovery_set_display_ip_blocks._entry_ptr, ptr @amdgpu_discovery_set_display_ip_blocks._entry_ptr.135, ptr @amdgpu_discovery_set_gc_ip_blocks._entry, ptr @amdgpu_discovery_set_gc_ip_blocks._entry_ptr, ptr @amdgpu_discovery_set_gmc_ip_blocks._entry, ptr @amdgpu_discovery_set_gmc_ip_blocks._entry_ptr, ptr @amdgpu_discovery_set_ih_ip_blocks._entry, ptr @amdgpu_discovery_set_ih_ip_blocks._entry_ptr, ptr @amdgpu_discovery_set_mm_ip_blocks._entry, ptr @amdgpu_discovery_set_mm_ip_blocks._entry.142, ptr @amdgpu_discovery_set_mm_ip_blocks._entry.145, ptr @amdgpu_discovery_set_mm_ip_blocks._entry_ptr, ptr @amdgpu_discovery_set_mm_ip_blocks._entry_ptr.144, ptr @amdgpu_discovery_set_mm_ip_blocks._entry_ptr.147, ptr @amdgpu_discovery_set_psp_ip_blocks._entry, ptr @amdgpu_discovery_set_psp_ip_blocks._entry_ptr, ptr @amdgpu_discovery_set_sdma_ip_blocks._entry, ptr @amdgpu_discovery_set_sdma_ip_blocks._entry_ptr, ptr @amdgpu_discovery_set_smu_ip_blocks._entry, ptr @amdgpu_discovery_set_smu_ip_blocks._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hw_id_map, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @hw_id_names, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.146], section "llvm.metadata"
@0 = internal global [150 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_id_map to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_get_gfx_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_read_binary_from_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_read_binary_from_file._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_id_names to i32), i32 1200, i32 1504, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_common_ip_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_gmc_ip_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_psp_ip_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_ih_ip_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_smu_ip_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_display_ip_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_display_ip_blocks._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_gc_ip_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_sdma_ip_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_mm_ip_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_mm_ip_blocks._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery_set_mm_ip_blocks._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_discovery_fini(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %discovery_bin = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 19
  %0 = ptrtoint ptr %discovery_bin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %discovery_bin, align 8
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %discovery_bin to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %discovery_bin, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_discovery_reg_base_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %fw.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %discovery_tmr_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 20
  %0 = ptrtoint ptr %discovery_tmr_size.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %discovery_tmr_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4096) #10
  %discovery_bin.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 19
  %2 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %discovery_bin.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 3555, i32 noundef 0) #7
  %conv.i.i = zext i32 %call.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 20
  %sub.i.i = add nsw i64 %shl.i.i, -65536
  %3 = ptrtoint ptr %discovery_tmr_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %discovery_tmr_size.i, align 4
  tail call void @amdgpu_device_vram_access(ptr noundef %adev, i64 noundef %sub.i.i, ptr noundef nonnull %call7.i.i.i, i32 noundef %4, i1 noundef zeroext false) #7
  %5 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %discovery_bin.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 118759720, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 118759720
  br i1 %cmp.i.i, label %if.end.i.if.end39.i_crit_edge, label %do.end18.i

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

do.end18.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.16) #11
  %11 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %discovery_bin.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #7
  %13 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !295
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_discovery to i32))
  %14 = load i32, ptr @amdgpu_discovery, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cond.i.i = icmp eq i32 %14, 2
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  br i1 %cond.i.i, label %sw.bb.i.i, label %do.end.i.i

sw.bb.i.i:                                        ; preds = %do.end18.i
  %call.i153.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull @.str.37, ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i)
  %tobool.not.i.i = icmp eq i32 %call.i153.i, 0
  br i1 %tobool.not.i.i, label %if.end29.i, label %do.end4.i.i

do.end.i.i:                                       ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.38) #11
  br label %do.end27.i

do.end4.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.37) #11
  br label %do.end27.i

do.end27.i:                                       ; preds = %do.end4.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #7
  %19 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.20) #11
  br label %out.i

if.end29.i:                                       ; preds = %sw.bb.i.i
  %21 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %25 = ptrtoint ptr %discovery_tmr_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %discovery_tmr_size.i, align 4
  %27 = call ptr @memcpy(ptr %12, ptr %24, i32 %26)
  call void @release_firmware(ptr noundef %22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #7
  %28 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %discovery_bin.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 118759720, i32 %31)
  %cmp.i155.i = icmp eq i32 %31, 118759720
  br i1 %cmp.i155.i, label %if.end29.i.if.end39.i_crit_edge, label %do.end36.i

if.end29.i.if.end39.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

do.end36.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.23) #11
  br label %out.i

if.end39.i:                                       ; preds = %if.end29.i.if.end39.i_crit_edge, %if.end.i.if.end39.i_crit_edge
  %34 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %discovery_bin.i, align 8
  %binary_size.i = getelementptr %struct.binary_header, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %binary_size.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %binary_size.i, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37) #7
  %sub.i = add i16 %38, -10
  %binary_checksum.i = getelementptr inbounds %struct.binary_header, ptr %35, i32 0, i32 3
  %39 = ptrtoint ptr %binary_checksum.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %binary_checksum.i, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40) #7
  %conv47.i = zext i16 %sub.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp6.not.i.i.i = icmp eq i16 %sub.i, 0
  br i1 %cmp6.not.i.i.i, label %if.end39.i.amdgpu_discovery_verify_checksum.exit.i_crit_edge, label %if.end39.i.for.body.i.i.i_crit_edge

if.end39.i.for.body.i.i.i_crit_edge:              ; preds = %if.end39.i
  br label %for.body.i.i.i

if.end39.i.amdgpu_discovery_verify_checksum.exit.i_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_discovery_verify_checksum.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end39.i.for.body.i.i.i_crit_edge
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end39.i.for.body.i.i.i_crit_edge ]
  %checksum.07.i.i.i = phi i16 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end39.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %binary_size.i, i32 %i.08.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %43 to i16
  %add.i.i.i = add i16 %checksum.07.i.i.i, %conv.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv47.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.amdgpu_discovery_verify_checksum.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i.amdgpu_discovery_verify_checksum.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_discovery_verify_checksum.exit.i

amdgpu_discovery_verify_checksum.exit.i:          ; preds = %for.body.i.i.i.amdgpu_discovery_verify_checksum.exit.i_crit_edge, %if.end39.i.amdgpu_discovery_verify_checksum.exit.i_crit_edge
  %checksum.0.lcssa.i.i.i = phi i16 [ 0, %if.end39.i.amdgpu_discovery_verify_checksum.exit.i_crit_edge ], [ %add.i.i.i, %for.body.i.i.i.amdgpu_discovery_verify_checksum.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %checksum.0.lcssa.i.i.i, i16 %41)
  %cmp.i156.i = icmp eq i16 %checksum.0.lcssa.i.i.i, %41
  br i1 %cmp.i156.i, label %if.end54.i, label %do.end52.i

do.end52.i:                                       ; preds = %amdgpu_discovery_verify_checksum.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.26) #11
  br label %out.i

if.end54.i:                                       ; preds = %amdgpu_discovery_verify_checksum.exit.i
  %table_list.i = getelementptr inbounds %struct.binary_header, ptr %35, i32 0, i32 5
  %46 = ptrtoint ptr %table_list.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %table_list.i, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47) #7
  %conv59.i = zext i16 %48 to i32
  %add.ptr60.i = getelementptr i8, ptr %35, i32 %conv59.i
  %49 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %add.ptr60.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1229997139, i32 %50)
  %cmp.not.i = icmp eq i32 %50, 1229997139
  br i1 %cmp.not.i, label %if.end67.i, label %do.end65.i

do.end65.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.29) #11
  br label %out.i

if.end67.i:                                       ; preds = %if.end54.i
  %checksum56.i = getelementptr inbounds %struct.binary_header, ptr %35, i32 0, i32 5, i32 0, i32 1
  %53 = ptrtoint ptr %checksum56.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %checksum56.i, align 1
  %55 = call i16 @llvm.bswap.i16(i16 %54) #7
  %size72.i = getelementptr inbounds %struct.ip_discovery_header, ptr %add.ptr60.i, i32 0, i32 2
  %56 = ptrtoint ptr %size72.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %size72.i, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57) #7
  %conv73.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp6.not.i.i157.i = icmp eq i16 %57, 0
  br i1 %cmp6.not.i.i157.i, label %if.end67.i.amdgpu_discovery_verify_checksum.exit168.i_crit_edge, label %if.end67.i.for.body.i.i165.i_crit_edge

if.end67.i.for.body.i.i165.i_crit_edge:           ; preds = %if.end67.i
  br label %for.body.i.i165.i

if.end67.i.amdgpu_discovery_verify_checksum.exit168.i_crit_edge: ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_discovery_verify_checksum.exit168.i

for.body.i.i165.i:                                ; preds = %for.body.i.i165.i.for.body.i.i165.i_crit_edge, %if.end67.i.for.body.i.i165.i_crit_edge
  %i.08.i.i158.i = phi i32 [ %inc.i.i163.i, %for.body.i.i165.i.for.body.i.i165.i_crit_edge ], [ 0, %if.end67.i.for.body.i.i165.i_crit_edge ]
  %checksum.07.i.i159.i = phi i16 [ %add.i.i162.i, %for.body.i.i165.i.for.body.i.i165.i_crit_edge ], [ 0, %if.end67.i.for.body.i.i165.i_crit_edge ]
  %arrayidx.i.i160.i = getelementptr i8, ptr %add.ptr60.i, i32 %i.08.i.i158.i
  %59 = ptrtoint ptr %arrayidx.i.i160.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i160.i, align 1
  %conv.i.i161.i = zext i8 %60 to i16
  %add.i.i162.i = add i16 %checksum.07.i.i159.i, %conv.i.i161.i
  %inc.i.i163.i = add nuw i32 %i.08.i.i158.i, 1
  %exitcond.not.i.i164.i = icmp eq i32 %inc.i.i163.i, %conv73.i
  br i1 %exitcond.not.i.i164.i, label %for.body.i.i165.i.amdgpu_discovery_verify_checksum.exit168.i_crit_edge, label %for.body.i.i165.i.for.body.i.i165.i_crit_edge

for.body.i.i165.i.for.body.i.i165.i_crit_edge:    ; preds = %for.body.i.i165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i165.i

for.body.i.i165.i.amdgpu_discovery_verify_checksum.exit168.i_crit_edge: ; preds = %for.body.i.i165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_discovery_verify_checksum.exit168.i

amdgpu_discovery_verify_checksum.exit168.i:       ; preds = %for.body.i.i165.i.amdgpu_discovery_verify_checksum.exit168.i_crit_edge, %if.end67.i.amdgpu_discovery_verify_checksum.exit168.i_crit_edge
  %checksum.0.lcssa.i.i166.i = phi i16 [ 0, %if.end67.i.amdgpu_discovery_verify_checksum.exit168.i_crit_edge ], [ %add.i.i162.i, %for.body.i.i165.i.amdgpu_discovery_verify_checksum.exit168.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %checksum.0.lcssa.i.i166.i, i16 %55)
  %cmp.i167.i = icmp eq i16 %checksum.0.lcssa.i.i166.i, %55
  br i1 %cmp.i167.i, label %if.end80.i, label %do.end78.i

do.end78.i:                                       ; preds = %amdgpu_discovery_verify_checksum.exit168.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.32) #11
  br label %out.i

if.end80.i:                                       ; preds = %amdgpu_discovery_verify_checksum.exit168.i
  %arrayidx82.i = getelementptr %struct.binary_header, ptr %35, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %arrayidx82.i, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #7
  %checksum84.i = getelementptr %struct.binary_header, ptr %35, i32 0, i32 5, i32 1, i32 1
  %66 = ptrtoint ptr %checksum84.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %checksum84.i, align 1
  %68 = call i16 @llvm.bswap.i16(i16 %67) #7
  %conv87.i = zext i16 %65 to i32
  %add.ptr88.i = getelementptr i8, ptr %35, i32 %conv87.i
  %size93.i = getelementptr inbounds %struct.gpu_info_header, ptr %add.ptr88.i, i32 0, i32 3
  %69 = ptrtoint ptr %size93.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %size93.i, align 1
  %71 = call i32 @llvm.bswap.i32(i32 %70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp6.not.i.i169.i = icmp eq i32 %70, 0
  br i1 %cmp6.not.i.i169.i, label %if.end80.i.amdgpu_discovery_verify_checksum.exit180.i_crit_edge, label %if.end80.i.for.body.i.i177.i_crit_edge

if.end80.i.for.body.i.i177.i_crit_edge:           ; preds = %if.end80.i
  br label %for.body.i.i177.i

if.end80.i.amdgpu_discovery_verify_checksum.exit180.i_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_discovery_verify_checksum.exit180.i

for.body.i.i177.i:                                ; preds = %for.body.i.i177.i.for.body.i.i177.i_crit_edge, %if.end80.i.for.body.i.i177.i_crit_edge
  %i.08.i.i170.i = phi i32 [ %inc.i.i175.i, %for.body.i.i177.i.for.body.i.i177.i_crit_edge ], [ 0, %if.end80.i.for.body.i.i177.i_crit_edge ]
  %checksum.07.i.i171.i = phi i16 [ %add.i.i174.i, %for.body.i.i177.i.for.body.i.i177.i_crit_edge ], [ 0, %if.end80.i.for.body.i.i177.i_crit_edge ]
  %arrayidx.i.i172.i = getelementptr i8, ptr %add.ptr88.i, i32 %i.08.i.i170.i
  %72 = ptrtoint ptr %arrayidx.i.i172.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i172.i, align 1
  %conv.i.i173.i = zext i8 %73 to i16
  %add.i.i174.i = add i16 %checksum.07.i.i171.i, %conv.i.i173.i
  %inc.i.i175.i = add nuw i32 %i.08.i.i170.i, 1
  %exitcond.not.i.i176.i = icmp eq i32 %inc.i.i175.i, %71
  br i1 %exitcond.not.i.i176.i, label %for.body.i.i177.i.amdgpu_discovery_verify_checksum.exit180.i_crit_edge, label %for.body.i.i177.i.for.body.i.i177.i_crit_edge

for.body.i.i177.i.for.body.i.i177.i_crit_edge:    ; preds = %for.body.i.i177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i177.i

for.body.i.i177.i.amdgpu_discovery_verify_checksum.exit180.i_crit_edge: ; preds = %for.body.i.i177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_discovery_verify_checksum.exit180.i

amdgpu_discovery_verify_checksum.exit180.i:       ; preds = %for.body.i.i177.i.amdgpu_discovery_verify_checksum.exit180.i_crit_edge, %if.end80.i.amdgpu_discovery_verify_checksum.exit180.i_crit_edge
  %checksum.0.lcssa.i.i178.i = phi i16 [ 0, %if.end80.i.amdgpu_discovery_verify_checksum.exit180.i_crit_edge ], [ %add.i.i174.i, %for.body.i.i177.i.amdgpu_discovery_verify_checksum.exit180.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %checksum.0.lcssa.i.i178.i, i16 %68)
  %cmp.i179.i = icmp eq i16 %checksum.0.lcssa.i.i178.i, %68
  br i1 %cmp.i179.i, label %if.end, label %do.end98.i

do.end98.i:                                       ; preds = %amdgpu_discovery_verify_checksum.exit180.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.35) #11
  br label %out.i

out.i:                                            ; preds = %do.end98.i, %do.end78.i, %do.end65.i, %do.end52.i, %do.end36.i, %do.end27.i
  %76 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %discovery_bin.i, align 8
  call void @kfree(ptr noundef %77) #7
  %78 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %discovery_bin.i, align 8
  br label %if.then

if.then:                                          ; preds = %out.i, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %entry.if.then_crit_edge ], [ -22, %out.i ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %amdgpu_discovery_verify_checksum.exit180.i
  %79 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %discovery_bin.i, align 8
  %table_list = getelementptr inbounds %struct.binary_header, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %table_list to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %table_list, align 1
  %83 = call i16 @llvm.bswap.i16(i16 %82)
  %conv = zext i16 %83 to i32
  %add.ptr = getelementptr i8, ptr %80, i32 %conv
  %num_dies3 = getelementptr inbounds %struct.ip_discovery_header, ptr %add.ptr, i32 0, i32 4
  %84 = ptrtoint ptr %num_dies3 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %num_dies3, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85)
  %conv4 = zext i16 %86 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %conv4) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp229.not = icmp eq i16 %85, 0
  br i1 %cmp229.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %die_info = getelementptr inbounds %struct.ip_discovery_header, ptr %add.ptr, i32 0, i32 5
  %num_vcn_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %smax235 = call i32 @llvm.smax.i32(i32 %conv4, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc140.for.body_crit_edge, %for.body.lr.ph
  %i.0230 = phi i32 [ 0, %for.body.lr.ph ], [ %inc141, %for.inc140.for.body_crit_edge ]
  %die_offset8 = getelementptr [16 x %struct.die_info], ptr %die_info, i32 0, i32 %i.0230, i32 1
  %87 = ptrtoint ptr %die_offset8 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %die_offset8, align 1
  %89 = call i16 @llvm.bswap.i16(i16 %88)
  %90 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %discovery_bin.i, align 8
  %conv11 = zext i16 %89 to i32
  %add.ptr12 = getelementptr i8, ptr %91, i32 %conv11
  %92 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %add.ptr12, align 1
  %94 = call i16 @llvm.bswap.i16(i16 %93)
  %conv16 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0230, i32 %conv16)
  %cmp17.not = icmp eq i32 %i.0230, %conv16
  br i1 %cmp17.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %conv16, i32 noundef %i.0230) #7
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %num_ips13 = getelementptr inbounds %struct.die_header, ptr %add.ptr12, i32 0, i32 1
  %95 = ptrtoint ptr %num_ips13 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %num_ips13, align 1
  %97 = call i16 @llvm.bswap.i16(i16 %96)
  %conv25 = zext i16 %97 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %i.0230, i32 noundef %conv25) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp28226.not = icmp eq i16 %96, 0
  br i1 %cmp28226.not, label %if.end22.for.inc140_crit_edge, label %for.body30.preheader

if.end22.for.inc140_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc140

for.body30.preheader:                             ; preds = %if.end22
  %add = add i16 %89, 4
  %smax = call i32 @llvm.smax.i32(i32 %conv25, i32 1)
  br label %for.body30

for.body30:                                       ; preds = %next_ip.for.body30_crit_edge, %for.body30.preheader
  %j.0228 = phi i32 [ %inc138, %next_ip.for.body30_crit_edge ], [ 0, %for.body30.preheader ]
  %ip_offset.0227 = phi i16 [ %add135, %next_ip.for.body30_crit_edge ], [ %add, %for.body30.preheader ]
  %98 = ptrtoint ptr %discovery_bin.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %discovery_bin.i, align 8
  %conv33 = zext i16 %ip_offset.0227 to i32
  %add.ptr34 = getelementptr i8, ptr %99, i32 %conv33
  %number_instance.i = getelementptr inbounds %struct.ip, ptr %add.ptr34, i32 0, i32 1
  %100 = ptrtoint ptr %number_instance.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %number_instance.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %101)
  %cmp.i = icmp ugt i8 %101, 9
  br i1 %cmp.i, label %if.then.i, label %if.end.i214

if.then.i:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %101 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef %conv.i) #7
  br label %next_ip

if.end.i214:                                      ; preds = %for.body30
  %102 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %add.ptr34, align 1
  %104 = call i16 @llvm.bswap.i16(i16 %103) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 299, i16 %104)
  %cmp5.i = icmp ugt i16 %104, 299
  br i1 %cmp5.i, label %if.then7.i, label %if.end38

if.then7.i:                                       ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = zext i16 %104 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %conv4.i) #7
  br label %next_ip

if.end38:                                         ; preds = %if.end.i214
  %num_base_address39 = getelementptr inbounds %struct.ip, ptr %add.ptr34, i32 0, i32 2
  %105 = ptrtoint ptr %num_base_address39 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_base_address39, align 1
  %107 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %add.ptr34, align 1
  %109 = call i16 @llvm.bswap.i16(i16 %108)
  %idxprom = zext i16 %109 to i32
  %arrayidx40 = getelementptr [300 x ptr], ptr @hw_id_names, i32 0, i32 %idxprom
  %110 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx40, align 4
  %112 = ptrtoint ptr %number_instance.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %number_instance.i, align 1
  %conv43 = zext i8 %113 to i32
  %major = getelementptr inbounds %struct.ip, ptr %add.ptr34, i32 0, i32 3
  %114 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %major, align 1
  %conv44 = zext i8 %115 to i32
  %minor = getelementptr inbounds %struct.ip, ptr %add.ptr34, i32 0, i32 4
  %116 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %minor, align 1
  %conv45 = zext i8 %117 to i32
  %revision = getelementptr inbounds %struct.ip, ptr %add.ptr34, i32 0, i32 5
  %118 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %revision, align 1
  %conv46 = zext i8 %119 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %111, i32 noundef %idxprom, i32 noundef %conv43, i32 noundef %conv44, i32 noundef %conv45, i32 noundef %conv46) #7
  %120 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %add.ptr34, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %121)
  %cmp49 = icmp eq i16 %121, 3072
  br i1 %cmp49, label %if.then51, label %if.end38.if.end64_crit_edge

if.end38.if.end64_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then51:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %revision, align 1
  %124 = and i8 %123, -64
  %125 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %num_vcn_inst, align 1
  %idxprom56 = zext i8 %126 to i32
  %arrayidx57 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 8, i32 %idxprom56
  %127 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %124, ptr %arrayidx57, align 1
  %128 = load i8, ptr %revision, align 1
  %129 = and i8 %128, 63
  store i8 %129, ptr %revision, align 1
  %130 = load i8, ptr %num_vcn_inst, align 1
  %inc = add i8 %130, 1
  store i8 %inc, ptr %num_vcn_inst, align 1
  %131 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %.pr = load i16, ptr %add.ptr34, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then51, %if.end38.if.end64_crit_edge
  %132 = phi i16 [ %.pr, %if.then51 ], [ %121, %if.end38.if.end64_crit_edge ]
  %133 = zext i16 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values)
  switch i16 %132, label %if.end64.if.end85_crit_edge [
    i16 10752, label %if.end64.if.then83_crit_edge
    i16 11008, label %if.end64.if.then83_crit_edge245
    i16 17408, label %if.end64.if.then83_crit_edge246
    i16 17664, label %if.end64.if.then83_crit_edge247
  ]

if.end64.if.then83_crit_edge247:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end64.if.then83_crit_edge246:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end64.if.then83_crit_edge245:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end64.if.then83_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then83:                                        ; preds = %if.end64.if.then83_crit_edge, %if.end64.if.then83_crit_edge245, %if.end64.if.then83_crit_edge246, %if.end64.if.then83_crit_edge247
  %134 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_instances, align 4
  %inc84 = add i32 %135, 1
  store i32 %inc84, ptr %num_instances, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end64.if.end85_crit_edge
  %conv87 = zext i8 %106 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp88222.not = icmp eq i8 %106, 0
  br i1 %cmp88222.not, label %if.end85.for.cond97.preheader_crit_edge, label %for.body90.lr.ph

if.end85.for.cond97.preheader_crit_edge:          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond97.preheader

for.body90.lr.ph:                                 ; preds = %if.end85
  %base_address = getelementptr inbounds %struct.ip, ptr %add.ptr34, i32 0, i32 7
  br label %for.body90

for.cond97.preheader:                             ; preds = %for.body90.for.cond97.preheader_crit_edge, %if.end85.for.cond97.preheader_crit_edge
  %base_address110 = getelementptr inbounds %struct.ip, ptr %add.ptr34, i32 0, i32 7
  br label %for.body100

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %for.body90.lr.ph
  %k.0223 = phi i32 [ 0, %for.body90.lr.ph ], [ %inc96, %for.body90.for.body90_crit_edge ]
  %arrayidx91 = getelementptr [1 x i32], ptr %base_address, i32 0, i32 %k.0223
  %136 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %arrayidx91, align 1
  %138 = call i32 @llvm.bswap.i32(i32 %137)
  %139 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %138, ptr %arrayidx91, align 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %138) #7
  %inc96 = add nuw nsw i32 %k.0223, 1
  %exitcond.not = icmp eq i32 %inc96, %conv87
  br i1 %exitcond.not, label %for.body90.for.cond97.preheader_crit_edge, label %for.body90.for.body90_crit_edge

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body90

for.body90.for.cond97.preheader_crit_edge:        ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond97.preheader

for.body100:                                      ; preds = %for.inc128.for.body100_crit_edge, %for.cond97.preheader
  %hw_ip.0224 = phi i32 [ 0, %for.cond97.preheader ], [ %inc129, %for.inc128.for.body100_crit_edge ]
  %arrayidx101 = getelementptr [31 x i32], ptr @hw_id_map, i32 0, i32 %hw_ip.0224
  %140 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx101, align 4
  %142 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %add.ptr34, align 1
  %144 = call i16 @llvm.bswap.i16(i16 %143)
  %conv103 = zext i16 %144 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %conv103)
  %cmp104 = icmp eq i32 %141, %conv103
  br i1 %cmp104, label %if.then106, label %for.body100.for.inc128_crit_edge

for.body100.for.inc128_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc128

if.then106:                                       ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx109 = getelementptr [300 x ptr], ptr @hw_id_names, i32 0, i32 %141
  %145 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx109, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef %146) #7
  %147 = ptrtoint ptr %number_instance.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %number_instance.i, align 1
  %idxprom113 = zext i8 %148 to i32
  %arrayidx114 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 %hw_ip.0224, i32 %idxprom113
  %149 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %base_address110, ptr %arrayidx114, align 4
  %150 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %major, align 1
  %conv116 = zext i8 %151 to i32
  %shl = shl nuw nsw i32 %conv116, 16
  %152 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %minor, align 1
  %conv118 = zext i8 %153 to i32
  %shl119 = shl nuw nsw i32 %conv118, 8
  %or = or i32 %shl119, %shl
  %154 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %revision, align 1
  %conv121 = zext i8 %155 to i32
  %or122 = or i32 %or, %conv121
  %156 = load i8, ptr %number_instance.i, align 1
  %idxprom125 = zext i8 %156 to i32
  %arrayidx126 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 %hw_ip.0224, i32 %idxprom125
  %157 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or122, ptr %arrayidx126, align 4
  br label %for.inc128

for.inc128:                                       ; preds = %if.then106, %for.body100.for.inc128_crit_edge
  %inc129 = add nuw nsw i32 %hw_ip.0224, 1
  %exitcond233.not = icmp eq i32 %inc129, 31
  br i1 %exitcond233.not, label %for.inc128.next_ip_crit_edge, label %for.inc128.for.body100_crit_edge

for.inc128.for.body100_crit_edge:                 ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body100

for.inc128.next_ip_crit_edge:                     ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_ip

next_ip:                                          ; preds = %for.inc128.next_ip_crit_edge, %if.then7.i, %if.then.i
  %num_base_address131 = getelementptr inbounds %struct.ip, ptr %add.ptr34, i32 0, i32 2
  %158 = ptrtoint ptr %num_base_address131 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %num_base_address131, align 1
  %conv132 = zext i8 %159 to i16
  %sub = shl nuw nsw i16 %conv132, 2
  %add133 = add i16 %ip_offset.0227, 8
  %add135 = add i16 %add133, %sub
  %inc138 = add nuw nsw i32 %j.0228, 1
  %exitcond234.not = icmp eq i32 %inc138, %smax
  br i1 %exitcond234.not, label %next_ip.for.inc140_crit_edge, label %next_ip.for.body30_crit_edge

next_ip.for.body30_crit_edge:                     ; preds = %next_ip
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body30

next_ip.for.inc140_crit_edge:                     ; preds = %next_ip
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc140

for.inc140:                                       ; preds = %next_ip.for.inc140_crit_edge, %if.end22.for.inc140_crit_edge
  %inc141 = add nuw nsw i32 %i.0230, 1
  %exitcond236.not = icmp eq i32 %inc141, %smax235
  br i1 %exitcond236.not, label %for.inc140.cleanup_crit_edge, label %for.inc140.for.body_crit_edge

for.inc140.for.body_crit_edge:                    ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc140.cleanup_crit_edge:                     ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc140.cleanup_crit_edge, %if.then19, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ -22, %if.then19 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc140.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_discovery_get_ip_version(ptr nocapture noundef readonly %adev, i32 noundef %hw_id, i32 noundef %number_instance, ptr noundef writeonly %major, ptr noundef writeonly %minor, ptr noundef writeonly %revision) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %discovery_bin = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 19
  %0 = ptrtoint ptr %discovery_bin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %discovery_bin, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %table_list = getelementptr inbounds %struct.binary_header, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %table_list to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %table_list, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %num_dies5 = getelementptr inbounds %struct.ip_discovery_header, ptr %add.ptr, i32 0, i32 4
  %5 = ptrtoint ptr %num_dies5 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %num_dies5, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp89.not = icmp eq i16 %6, 0
  br i1 %cmp89.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv6 = zext i16 %7 to i32
  %die_info = getelementptr inbounds %struct.ip_discovery_header, ptr %add.ptr, i32 0, i32 5
  %smax = call i32 @llvm.smax.i32(i32 %conv6, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc56.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc57, %for.inc56.for.body_crit_edge ]
  %die_offset9 = getelementptr [16 x %struct.die_info], ptr %die_info, i32 0, i32 %i.090, i32 1
  %8 = ptrtoint ptr %die_offset9 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %die_offset9, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv12 = zext i16 %10 to i32
  %add.ptr13 = getelementptr i8, ptr %1, i32 %conv12
  %num_ips14 = getelementptr inbounds %struct.die_header, ptr %add.ptr13, i32 0, i32 1
  %11 = ptrtoint ptr %num_ips14 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %num_ips14, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp1986.not = icmp eq i16 %12, 0
  br i1 %cmp1986.not, label %for.body.for.inc56_crit_edge, label %for.body21.preheader

for.body.for.inc56_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56

for.body21.preheader:                             ; preds = %for.body
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %add = add i16 %10, 4
  %14 = call i16 @llvm.umax.i16(i16 %13, i16 1)
  %umax = zext i16 %14 to i32
  br label %for.body21

for.body21:                                       ; preds = %if.end50.for.body21_crit_edge, %for.body21.preheader
  %j.088 = phi i32 [ %inc, %if.end50.for.body21_crit_edge ], [ 0, %for.body21.preheader ]
  %ip_offset.087 = phi i16 [ %add54, %if.end50.for.body21_crit_edge ], [ %add, %for.body21.preheader ]
  %conv24 = zext i16 %ip_offset.087 to i32
  %add.ptr25 = getelementptr i8, ptr %1, i32 %conv24
  %15 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr25, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv27 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv27, i32 %hw_id)
  %cmp28 = icmp eq i32 %conv27, %hw_id
  br i1 %cmp28, label %land.lhs.true, label %for.body21.if.end50_crit_edge

for.body21.if.end50_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

land.lhs.true:                                    ; preds = %for.body21
  %number_instance30 = getelementptr inbounds %struct.ip, ptr %add.ptr25, i32 0, i32 1
  %18 = ptrtoint ptr %number_instance30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %number_instance30, align 1
  %conv31 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31, i32 %number_instance)
  %cmp32 = icmp eq i32 %conv31, %number_instance
  br i1 %cmp32, label %if.then34, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then34:                                        ; preds = %land.lhs.true
  %tobool35.not = icmp eq ptr %major, null
  br i1 %tobool35.not, label %if.then34.if.end39_crit_edge, label %if.then36

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %major37 = getelementptr inbounds %struct.ip, ptr %add.ptr25, i32 0, i32 3
  %20 = ptrtoint ptr %major37 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %major37, align 1
  %conv38 = zext i8 %21 to i32
  %22 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv38, ptr %major, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then34.if.end39_crit_edge
  %tobool40.not = icmp eq ptr %minor, null
  br i1 %tobool40.not, label %if.end39.if.end44_crit_edge, label %if.then41

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %minor42 = getelementptr inbounds %struct.ip, ptr %add.ptr25, i32 0, i32 4
  %23 = ptrtoint ptr %minor42 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %minor42, align 1
  %conv43 = zext i8 %24 to i32
  %25 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv43, ptr %minor, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end39.if.end44_crit_edge
  %tobool45.not = icmp eq ptr %revision, null
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.then46

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %revision47 = getelementptr inbounds %struct.ip, ptr %add.ptr25, i32 0, i32 5
  %26 = ptrtoint ptr %revision47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %revision47, align 1
  %conv48 = zext i8 %27 to i32
  %28 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv48, ptr %revision, align 4
  br label %cleanup

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %for.body21.if.end50_crit_edge
  %num_base_address = getelementptr inbounds %struct.ip, ptr %add.ptr25, i32 0, i32 2
  %29 = ptrtoint ptr %num_base_address to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_base_address, align 1
  %conv51 = zext i8 %30 to i16
  %sub = shl nuw nsw i16 %conv51, 2
  %add52 = add i16 %ip_offset.087, 8
  %add54 = add i16 %add52, %sub
  %inc = add nuw nsw i32 %j.088, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end50.for.inc56_crit_edge, label %if.end50.for.body21_crit_edge

if.end50.for.body21_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

if.end50.for.inc56_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56

for.inc56:                                        ; preds = %if.end50.for.inc56_crit_edge, %for.body.for.inc56_crit_edge
  %inc57 = add nuw nsw i32 %i.090, 1
  %exitcond92.not = icmp eq i32 %inc57, %smax
  br i1 %exitcond92.not, label %for.inc56.cleanup_crit_edge, label %for.inc56.for.body_crit_edge

for.inc56.for.body_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc56.cleanup_crit_edge:                      ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc56.cleanup_crit_edge, %if.then46, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then46 ], [ 0, %if.end44.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_discovery_harvest_ip(ptr nocapture noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %discovery_bin = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 19
  %0 = ptrtoint ptr %discovery_bin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %discovery_bin, align 8
  %arrayidx = getelementptr %struct.binary_header, ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %arrayidx, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %list = getelementptr inbounds %struct.harvest_table, ptr %add.ptr, i32 0, i32 1
  %harvest_ip_mask = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 123
  %harvest_config19 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %vcn_harvest_count.0105 = phi i32 [ 0, %entry ], [ %vcn_harvest_count.1, %for.inc.for.body_crit_edge ]
  %i.0103 = phi i32 [ 0, %entry ], [ %inc24, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr [32 x %struct.harvest_info], ptr %list, i32 0, i32 %i.0103
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp6 = icmp eq i16 %6, 0
  br i1 %cmp6, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.148)
  switch i16 %7, label %if.end.for.inc_crit_edge [
    i16 12, label %sw.bb
    i16 271, label %sw.bb22
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  %inc = add i32 %vcn_harvest_count.0105, 1
  %number_instance = getelementptr [32 x %struct.harvest_info], ptr %list, i32 0, i32 %i.0103, i32 1
  %9 = ptrtoint ptr %number_instance to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %number_instance, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp15 = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %harvest_config19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %harvest_config19, align 4
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %12, 1
  %13 = ptrtoint ptr %harvest_config19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %harvest_config19, align 4
  br label %for.inc

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %or20 = or i32 %12, 2
  %14 = ptrtoint ptr %harvest_config19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or20, ptr %harvest_config19, align 4
  br label %for.inc

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %harvest_ip_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %harvest_ip_mask, align 4
  %or23 = or i32 %16, 4
  store i32 %or23, ptr %harvest_ip_mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb22, %if.else, %if.then17, %if.end.for.inc_crit_edge
  %vcn_harvest_count.1 = phi i32 [ %vcn_harvest_count.0105, %if.end.for.inc_crit_edge ], [ %vcn_harvest_count.0105, %sw.bb22 ], [ %inc, %if.then17 ], [ %inc, %if.else ]
  %inc24 = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc24, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %vcn_harvest_count.0.lcssa = phi i32 [ %vcn_harvest_count.0105, %for.body.for.end_crit_edge ], [ %vcn_harvest_count.1, %for.inc.for.end_crit_edge ]
  %arrayidx1.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16, i32 1
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196609, i32 %18)
  %cmp.i = icmp eq i32 %18, 196609
  br i1 %cmp.i, label %land.lhs.true.i, label %for.end.amdgpu_discovery_harvest_config_quirk.exit_crit_edge

for.end.amdgpu_discovery_harvest_config_quirk.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_discovery_harvest_config_quirk.exit

land.lhs.true.i:                                  ; preds = %for.end
  %arrayidx3.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 656130, i32 %20)
  %cmp5.i = icmp eq i32 %20, 656130
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.amdgpu_discovery_harvest_config_quirk.exit_crit_edge

land.lhs.true.i.amdgpu_discovery_harvest_config_quirk.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_discovery_harvest_config_quirk.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %revision.i, align 4
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %24, label %if.then.i.amdgpu_discovery_harvest_config_quirk.exit_crit_edge [
    i8 -63, label %if.then.i.sw.bb.i_crit_edge
    i8 -62, label %if.then.i.sw.bb.i_crit_edge106
    i8 -61, label %if.then.i.sw.bb.i_crit_edge107
    i8 -59, label %if.then.i.sw.bb.i_crit_edge108
    i8 -57, label %if.then.i.sw.bb.i_crit_edge109
    i8 -49, label %if.then.i.sw.bb.i_crit_edge110
    i8 -33, label %if.then.i.sw.bb.i_crit_edge111
  ]

if.then.i.sw.bb.i_crit_edge111:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge110:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge109:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge108:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge107:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge106:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.amdgpu_discovery_harvest_config_quirk.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_discovery_harvest_config_quirk.exit

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge106, %if.then.i.sw.bb.i_crit_edge107, %if.then.i.sw.bb.i_crit_edge108, %if.then.i.sw.bb.i_crit_edge109, %if.then.i.sw.bb.i_crit_edge110, %if.then.i.sw.bb.i_crit_edge111
  %26 = ptrtoint ptr %harvest_config19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %harvest_config19, align 4
  %or.i = or i32 %27, 2
  store i32 %or.i, ptr %harvest_config19, align 4
  br label %amdgpu_discovery_harvest_config_quirk.exit

amdgpu_discovery_harvest_config_quirk.exit:       ; preds = %sw.bb.i, %if.then.i.amdgpu_discovery_harvest_config_quirk.exit_crit_edge, %land.lhs.true.i.amdgpu_discovery_harvest_config_quirk.exit_crit_edge, %for.end.amdgpu_discovery_harvest_config_quirk.exit_crit_edge
  %num_vcn_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %28 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_vcn_inst, align 1
  %conv26 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %vcn_harvest_count.0.lcssa, i32 %conv26)
  %cmp27 = icmp eq i32 %vcn_harvest_count.0.lcssa, %conv26
  br i1 %cmp27, label %if.then29, label %amdgpu_discovery_harvest_config_quirk.exit.if.end34_crit_edge

amdgpu_discovery_harvest_config_quirk.exit.if.end34_crit_edge: ; preds = %amdgpu_discovery_harvest_config_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %amdgpu_discovery_harvest_config_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %harvest_ip_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %harvest_ip_mask, align 4
  %or33 = or i32 %31, 3
  store i32 %or33, ptr %harvest_ip_mask, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %amdgpu_discovery_harvest_config_quirk.exit.if.end34_crit_edge
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.150)
  switch i16 %35, label %if.end34.if.end76_crit_edge [
    i16 29470, label %land.lhs.true
    i16 29504, label %land.lhs.true53
    i16 29536, label %land.lhs.true65
  ]

if.end34.if.end76_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end34
  %revision = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 12
  %37 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %revision, align 4
  %39 = and i8 %38, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -58, i8 %39)
  %switch = icmp eq i8 %39, -58
  br i1 %switch, label %land.lhs.true.if.then71_crit_edge, label %land.lhs.true.if.end76_crit_edge

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

land.lhs.true.if.then71_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

land.lhs.true53:                                  ; preds = %if.end34
  %revision55 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 12
  %40 = ptrtoint ptr %revision55 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %revision55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -55, i8 %41)
  %cmp57 = icmp eq i8 %41, -55
  br i1 %cmp57, label %land.lhs.true53.if.then71_crit_edge, label %land.lhs.true53.if.end76_crit_edge

land.lhs.true53.if.end76_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

land.lhs.true53.if.then71_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

land.lhs.true65:                                  ; preds = %if.end34
  %revision67 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 12
  %42 = ptrtoint ptr %revision67 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %revision67, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %43)
  %cmp69 = icmp eq i8 %43, -57
  br i1 %cmp69, label %land.lhs.true65.if.then71_crit_edge, label %land.lhs.true65.if.end76_crit_edge

land.lhs.true65.if.end76_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

land.lhs.true65.if.then71_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

if.then71:                                        ; preds = %land.lhs.true65.if.then71_crit_edge, %land.lhs.true53.if.then71_crit_edge, %land.lhs.true.if.then71_crit_edge
  %44 = ptrtoint ptr %harvest_ip_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %harvest_ip_mask, align 4
  %or75 = or i32 %45, 3
  store i32 %or75, ptr %harvest_ip_mask, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %land.lhs.true65.if.end76_crit_edge, %land.lhs.true53.if.end76_crit_edge, %land.lhs.true.if.end76_crit_edge, %if.end34.if.end76_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_discovery_get_gfx_info(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %discovery_bin = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 19
  %0 = ptrtoint ptr %discovery_bin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %discovery_bin, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.binary_header, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %arrayidx, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %version_major = getelementptr inbounds %struct.gpu_info_header, ptr %add.ptr, i32 0, i32 1
  %5 = ptrtoint ptr %version_major to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %version_major, align 1
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.151)
  switch i16 %6, label %do.end [
    i16 1, label %sw.bb
    i16 2, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gc_num_se = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 1
  %8 = ptrtoint ptr %gc_num_se to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %gc_num_se, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %config, align 8
  %gc_num_wgp0_per_sa = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 2
  %12 = ptrtoint ptr %gc_num_wgp0_per_sa to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %gc_num_wgp0_per_sa, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %gc_num_wgp1_per_sa = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 3
  %15 = ptrtoint ptr %gc_num_wgp1_per_sa to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %gc_num_wgp1_per_sa, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add = add i32 %17, %14
  %mul = shl i32 %add, 1
  %max_cu_per_sh = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %18 = ptrtoint ptr %max_cu_per_sh to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %max_cu_per_sh, align 8
  %gc_num_sa_per_se = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 17
  %19 = ptrtoint ptr %gc_num_sa_per_se to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %gc_num_sa_per_se, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %max_sh_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %22 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_sh_per_se, align 4
  %gc_num_rb_per_se = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 4
  %23 = ptrtoint ptr %gc_num_rb_per_se to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %gc_num_rb_per_se, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %max_backends_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 4
  %26 = ptrtoint ptr %max_backends_per_se to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max_backends_per_se, align 8
  %gc_num_gl2c = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 5
  %27 = ptrtoint ptr %gc_num_gl2c to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %gc_num_gl2c, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %max_texture_channel_caches = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 5
  %30 = ptrtoint ptr %max_texture_channel_caches to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %max_texture_channel_caches, align 4
  %gc_num_gprs = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 6
  %31 = ptrtoint ptr %gc_num_gprs to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %gc_num_gprs, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %max_gprs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 6
  %34 = ptrtoint ptr %max_gprs to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_gprs, align 8
  %gc_num_max_gs_thds = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 7
  %35 = ptrtoint ptr %gc_num_max_gs_thds to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %gc_num_max_gs_thds, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %max_gs_threads = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 7
  %38 = ptrtoint ptr %max_gs_threads to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_gs_threads, align 4
  %gc_gs_table_depth = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 8
  %39 = ptrtoint ptr %gc_gs_table_depth to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %gc_gs_table_depth, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %gs_vgt_table_depth = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 25
  %42 = ptrtoint ptr %gs_vgt_table_depth to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %gs_vgt_table_depth, align 4
  %gc_gsprim_buff_depth = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 9
  %43 = ptrtoint ptr %gc_gsprim_buff_depth to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %gc_gsprim_buff_depth, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %gs_prim_buffer_depth = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 26
  %46 = ptrtoint ptr %gs_prim_buffer_depth to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %gs_prim_buffer_depth, align 8
  %gc_double_offchip_lds_buffer = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 11
  %47 = ptrtoint ptr %gc_double_offchip_lds_buffer to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %gc_double_offchip_lds_buffer, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %double_offchip_lds_buf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 31
  %50 = ptrtoint ptr %double_offchip_lds_buf to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %double_offchip_lds_buf, align 4
  %gc_wave_size = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 12
  %51 = ptrtoint ptr %gc_wave_size to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %gc_wave_size, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %wave_front_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 2
  %54 = ptrtoint ptr %wave_front_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %wave_front_size, align 8
  %gc_max_waves_per_simd = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 13
  %55 = ptrtoint ptr %gc_max_waves_per_simd to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %gc_max_waves_per_simd, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %max_waves_per_simd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 1
  %58 = ptrtoint ptr %max_waves_per_simd to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %max_waves_per_simd, align 4
  %gc_max_scratch_slots_per_cu = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 14
  %59 = ptrtoint ptr %gc_max_scratch_slots_per_cu to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %gc_max_scratch_slots_per_cu, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %max_scratch_slots_per_cu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 3
  %62 = ptrtoint ptr %max_scratch_slots_per_cu to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %max_scratch_slots_per_cu, align 4
  %gc_lds_size = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 15
  %63 = ptrtoint ptr %gc_lds_size to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %gc_lds_size, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %lds_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 4
  %66 = ptrtoint ptr %lds_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %lds_size, align 8
  %gc_num_sc_per_se = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 16
  %67 = ptrtoint ptr %gc_num_sc_per_se to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %gc_num_sc_per_se, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %70 = ptrtoint ptr %gc_num_sa_per_se to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %gc_num_sa_per_se, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %div = udiv i32 %69, %72
  %num_sc_per_sh = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 33
  %73 = ptrtoint ptr %num_sc_per_sh to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %div, ptr %num_sc_per_sh, align 4
  %gc_num_packer_per_sc = getelementptr inbounds %struct.gc_info_v1_0, ptr %add.ptr, i32 0, i32 18
  %74 = ptrtoint ptr %gc_num_packer_per_sc to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %gc_num_packer_per_sc, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %num_packer_per_sc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 34
  %77 = ptrtoint ptr %num_packer_per_sc to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %num_packer_per_sc, align 8
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gc_num_se37 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 1
  %78 = ptrtoint ptr %gc_num_se37 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %gc_num_se37, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %config39 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %81 = ptrtoint ptr %config39 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %config39, align 8
  %gc_num_cu_per_sh = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 2
  %82 = ptrtoint ptr %gc_num_cu_per_sh to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %gc_num_cu_per_sh, align 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %max_cu_per_sh43 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %85 = ptrtoint ptr %max_cu_per_sh43 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %max_cu_per_sh43, align 8
  %gc_num_sh_per_se = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 3
  %86 = ptrtoint ptr %gc_num_sh_per_se to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %gc_num_sh_per_se, align 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %max_sh_per_se46 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %89 = ptrtoint ptr %max_sh_per_se46 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %max_sh_per_se46, align 4
  %gc_num_rb_per_se47 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 4
  %90 = ptrtoint ptr %gc_num_rb_per_se47 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %gc_num_rb_per_se47, align 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %max_backends_per_se50 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 4
  %93 = ptrtoint ptr %max_backends_per_se50 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %max_backends_per_se50, align 8
  %gc_num_tccs = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 5
  %94 = ptrtoint ptr %gc_num_tccs to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %gc_num_tccs, align 1
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %max_texture_channel_caches53 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 5
  %97 = ptrtoint ptr %max_texture_channel_caches53 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %max_texture_channel_caches53, align 4
  %gc_num_gprs54 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 6
  %98 = ptrtoint ptr %gc_num_gprs54 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %gc_num_gprs54, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %max_gprs57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 6
  %101 = ptrtoint ptr %max_gprs57 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %max_gprs57, align 8
  %gc_num_max_gs_thds58 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 7
  %102 = ptrtoint ptr %gc_num_max_gs_thds58 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %gc_num_max_gs_thds58, align 1
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %max_gs_threads61 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 7
  %105 = ptrtoint ptr %max_gs_threads61 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %max_gs_threads61, align 4
  %gc_gs_table_depth62 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 8
  %106 = ptrtoint ptr %gc_gs_table_depth62 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %gc_gs_table_depth62, align 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %gs_vgt_table_depth65 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 25
  %109 = ptrtoint ptr %gs_vgt_table_depth65 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %gs_vgt_table_depth65, align 4
  %gc_gsprim_buff_depth66 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 9
  %110 = ptrtoint ptr %gc_gsprim_buff_depth66 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %gc_gsprim_buff_depth66, align 1
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %gs_prim_buffer_depth69 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 26
  %113 = ptrtoint ptr %gs_prim_buffer_depth69 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %gs_prim_buffer_depth69, align 8
  %gc_double_offchip_lds_buffer70 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 11
  %114 = ptrtoint ptr %gc_double_offchip_lds_buffer70 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %gc_double_offchip_lds_buffer70, align 1
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %double_offchip_lds_buf73 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 31
  %117 = ptrtoint ptr %double_offchip_lds_buf73 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %double_offchip_lds_buf73, align 4
  %gc_wave_size74 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 12
  %118 = ptrtoint ptr %gc_wave_size74 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %gc_wave_size74, align 1
  %120 = tail call i32 @llvm.bswap.i32(i32 %119)
  %wave_front_size77 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 2
  %121 = ptrtoint ptr %wave_front_size77 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %wave_front_size77, align 8
  %gc_max_waves_per_simd78 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 13
  %122 = ptrtoint ptr %gc_max_waves_per_simd78 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %gc_max_waves_per_simd78, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  %max_waves_per_simd81 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 1
  %125 = ptrtoint ptr %max_waves_per_simd81 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %max_waves_per_simd81, align 4
  %gc_max_scratch_slots_per_cu82 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 14
  %126 = ptrtoint ptr %gc_max_scratch_slots_per_cu82 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %gc_max_scratch_slots_per_cu82, align 1
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %max_scratch_slots_per_cu85 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 3
  %129 = ptrtoint ptr %max_scratch_slots_per_cu85 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %max_scratch_slots_per_cu85, align 4
  %gc_lds_size86 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 15
  %130 = ptrtoint ptr %gc_lds_size86 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %gc_lds_size86, align 1
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  %lds_size89 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 4
  %133 = ptrtoint ptr %lds_size89 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %lds_size89, align 8
  %gc_num_sc_per_se90 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 16
  %134 = ptrtoint ptr %gc_num_sc_per_se90 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %gc_num_sc_per_se90, align 1
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %137 = ptrtoint ptr %gc_num_sh_per_se to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %gc_num_sh_per_se, align 1
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %div92 = udiv i32 %136, %139
  %num_sc_per_sh95 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 33
  %140 = ptrtoint ptr %num_sc_per_sh95 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %div92, ptr %num_sc_per_sh95, align 4
  %gc_num_packer_per_sc96 = getelementptr inbounds %struct.gc_info_v2_0, ptr %add.ptr, i32 0, i32 17
  %141 = ptrtoint ptr %gc_num_packer_per_sc96 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %gc_num_packer_per_sc96, align 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  %num_packer_per_sc99 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 34
  %144 = ptrtoint ptr %num_packer_per_sc99 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %num_packer_per_sc99, align 8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv5 = zext i16 %6 to i32
  %145 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %adev, align 8
  %version_minor = getelementptr inbounds %struct.gpu_info_header, ptr %add.ptr, i32 0, i32 2
  %147 = ptrtoint ptr %version_minor to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %version_minor, align 1
  %conv104 = zext i16 %148 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.8, i32 noundef %conv5, i32 noundef %conv104) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb36, %sw.bb, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then ], [ 0, %sw.bb36 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_discovery_set_ip_blocks(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %1, label %sw.default [
    i32 19, label %sw.bb
    i32 20, label %sw.bb50
    i32 22, label %sw.bb105
    i32 21, label %sw.bb199
    i32 23, label %sw.bb257
    i32 25, label %sw.bb329
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @vega10_reg_base_init(ptr noundef %adev) #7
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %3 = ptrtoint ptr %num_instances to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %num_instances, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 589824, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 12
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 589824, ptr %arrayidx3, align 4
  %arrayidx6 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 21
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 262144, ptr %arrayidx6, align 4
  %arrayidx9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 2
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 262144, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262144, ptr %arrayidx12, align 4
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 262144, ptr %arrayidx15, align 4
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 19
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 131328, ptr %arrayidx18, align 4
  %arrayidx21 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 13
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 393472, ptr %arrayidx21, align 4
  %arrayidx24 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 27
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 393216, ptr %arrayidx24, align 4
  %arrayidx27 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 14
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 589824, ptr %arrayidx27, align 4
  %arrayidx30 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 589824, ptr %arrayidx30, align 4
  %arrayidx33 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 25
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 589824, ptr %arrayidx33, align 4
  %arrayidx36 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 22
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 589824, ptr %arrayidx36, align 4
  %arrayidx39 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 589825, ptr %arrayidx39, align 4
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 458752, ptr %arrayidx42, align 4
  %arrayidx45 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 18
  %19 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262144, ptr %arrayidx45, align 4
  %arrayidx48 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 30
  %20 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 786432, ptr %arrayidx48, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 @vega10_reg_base_init(ptr noundef %adev) #7
  %num_instances53 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %21 = ptrtoint ptr %num_instances53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %num_instances53, align 4
  %arrayidx55 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  %22 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 590592, ptr %arrayidx55, align 4
  %arrayidx58 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 12
  %23 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 590592, ptr %arrayidx58, align 4
  %arrayidx61 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 21
  %24 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 262145, ptr %arrayidx61, align 4
  %arrayidx64 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 2
  %25 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 262145, ptr %arrayidx64, align 4
  %arrayidx67 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %26 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 262145, ptr %arrayidx67, align 4
  %arrayidx70 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4
  %27 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 262145, ptr %arrayidx70, align 4
  %arrayidx73 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 19
  %28 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 132352, ptr %arrayidx73, align 4
  %arrayidx76 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 13
  %29 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 393728, ptr %arrayidx76, align 4
  %arrayidx79 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 27
  %30 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 393472, ptr %arrayidx79, align 4
  %arrayidx82 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 14
  %31 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 589824, ptr %arrayidx82, align 4
  %arrayidx85 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %32 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 589824, ptr %arrayidx85, align 4
  %arrayidx88 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 25
  %33 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 589824, ptr %arrayidx88, align 4
  %arrayidx91 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 22
  %34 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 589825, ptr %arrayidx91, align 4
  %arrayidx94 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %35 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 590337, ptr %arrayidx94, align 4
  %arrayidx97 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %36 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 458752, ptr %arrayidx97, align 4
  %arrayidx100 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 18
  %37 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 262144, ptr %arrayidx100, align 4
  %arrayidx103 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 30
  %38 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 786433, ptr %arrayidx103, align 4
  br label %sw.epilog

sw.bb105:                                         ; preds = %entry
  %call106 = tail call i32 @vega10_reg_base_init(ptr noundef %adev) #7
  %num_instances108 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %39 = ptrtoint ptr %num_instances108 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %num_instances108, align 4
  %num_vcn_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %40 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %num_vcn_inst, align 1
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 10
  %41 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %apu_flags, align 4
  %and = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx155 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 590336, ptr %arrayidx155, align 4
  %arrayidx113 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 12
  %44 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 590336, ptr %arrayidx113, align 4
  %arrayidx116 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 21
  %45 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 262401, ptr %arrayidx116, align 4
  %arrayidx119 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 2
  %46 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262401, ptr %arrayidx119, align 4
  %arrayidx122 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %47 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 262401, ptr %arrayidx122, align 4
  %arrayidx125 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 19
  %48 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 131329, ptr %arrayidx125, align 4
  %arrayidx128 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 13
  %49 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 458753, ptr %arrayidx128, align 4
  %arrayidx131 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 27
  %50 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 460032, ptr %arrayidx131, align 4
  %arrayidx134 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 14
  %51 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 655361, ptr %arrayidx134, align 4
  %arrayidx137 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %52 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 655361, ptr %arrayidx137, align 4
  %arrayidx140 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 25
  %53 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 655616, ptr %arrayidx140, align 4
  %arrayidx143 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 22
  %54 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 655361, ptr %arrayidx143, align 4
  %arrayidx146 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %55 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 590338, ptr %arrayidx146, align 4
  %arrayidx149 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %56 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 65537, ptr %arrayidx149, align 4
  %arrayidx152 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 20
  %57 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 65537, ptr %arrayidx152, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 590080, ptr %arrayidx155, align 4
  %arrayidx158 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 12
  %59 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 590080, ptr %arrayidx158, align 4
  %arrayidx161 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 21
  %60 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 262400, ptr %arrayidx161, align 4
  %arrayidx164 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 2
  %61 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 262400, ptr %arrayidx164, align 4
  %arrayidx167 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %62 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 262400, ptr %arrayidx167, align 4
  %arrayidx170 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 19
  %63 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 131328, ptr %arrayidx170, align 4
  %arrayidx173 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 13
  %64 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 458752, ptr %arrayidx173, align 4
  %arrayidx176 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 27
  %65 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 458752, ptr %arrayidx176, align 4
  %arrayidx179 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 14
  %66 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 655360, ptr %arrayidx179, align 4
  %arrayidx182 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %67 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 655360, ptr %arrayidx182, align 4
  %arrayidx185 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 25
  %68 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 655360, ptr %arrayidx185, align 4
  %arrayidx188 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 22
  %69 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 655360, ptr %arrayidx188, align 4
  %arrayidx191 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %70 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 590080, ptr %arrayidx191, align 4
  %arrayidx194 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %71 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 65536, ptr %arrayidx194, align 4
  %arrayidx197 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 20
  %72 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 65536, ptr %arrayidx197, align 4
  br label %sw.epilog

sw.bb199:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call200 = tail call i32 @vega20_reg_base_init(ptr noundef %adev) #7
  %num_instances202 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %73 = ptrtoint ptr %num_instances202 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %num_instances202, align 4
  %arrayidx204 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  %74 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 590848, ptr %arrayidx204, align 4
  %arrayidx207 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 12
  %75 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 590848, ptr %arrayidx207, align 4
  %arrayidx210 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 21
  %76 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 262656, ptr %arrayidx210, align 4
  %arrayidx213 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 2
  %77 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 262656, ptr %arrayidx213, align 4
  %arrayidx216 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %78 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 262656, ptr %arrayidx216, align 4
  %arrayidx219 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4
  %79 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 262656, ptr %arrayidx219, align 4
  %arrayidx222 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 19
  %80 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 198144, ptr %arrayidx222, align 4
  %arrayidx225 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 13
  %81 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 459776, ptr %arrayidx225, align 4
  %arrayidx228 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 27
  %82 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 393473, ptr %arrayidx228, align 4
  %arrayidx231 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 14
  %83 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 720898, ptr %arrayidx231, align 4
  %arrayidx234 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %84 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 720898, ptr %arrayidx234, align 4
  %arrayidx237 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 25
  %85 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 720898, ptr %arrayidx237, align 4
  %arrayidx240 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 22
  %86 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 720898, ptr %arrayidx240, align 4
  %arrayidx243 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %87 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 590848, ptr %arrayidx243, align 4
  %arrayidx246 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %88 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 459264, ptr %arrayidx246, align 4
  %arrayidx250 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16, i32 1
  %89 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 459264, ptr %arrayidx250, align 4
  %arrayidx252 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 18
  %90 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 262400, ptr %arrayidx252, align 4
  %arrayidx255 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 30
  %91 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 786688, ptr %arrayidx255, align 4
  br label %sw.epilog

sw.bb257:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call258 = tail call i32 @arct_reg_base_init(ptr noundef %adev) #7
  %num_instances260 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %92 = ptrtoint ptr %num_instances260 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 8, ptr %num_instances260, align 4
  %num_vcn_inst262 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %93 = ptrtoint ptr %num_vcn_inst262 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 2, ptr %num_vcn_inst262, align 1
  %arrayidx264 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  %94 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 590849, ptr %arrayidx264, align 4
  %arrayidx267 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 12
  %95 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 590849, ptr %arrayidx267, align 4
  %arrayidx270 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 21
  %96 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 262657, ptr %arrayidx270, align 4
  %arrayidx273 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 2
  %97 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 262657, ptr %arrayidx273, align 4
  %arrayidx276 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %98 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 262658, ptr %arrayidx276, align 4
  %arrayidx279 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4
  %99 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 262658, ptr %arrayidx279, align 4
  %arrayidx283 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4, i32 1
  %100 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 262658, ptr %arrayidx283, align 4
  %arrayidx286 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4, i32 2
  %101 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 262658, ptr %arrayidx286, align 4
  %arrayidx289 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4, i32 3
  %102 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 262658, ptr %arrayidx289, align 4
  %arrayidx292 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4, i32 4
  %103 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 262658, ptr %arrayidx292, align 4
  %arrayidx295 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4, i32 5
  %104 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 262658, ptr %arrayidx295, align 4
  %arrayidx298 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 4, i32 6
  %105 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 262658, ptr %arrayidx298, align 4
  %arrayidx300 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 19
  %106 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 198145, ptr %arrayidx300, align 4
  %arrayidx303 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 13
  %107 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 459777, ptr %arrayidx303, align 4
  %arrayidx306 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 27
  %108 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 393474, ptr %arrayidx306, align 4
  %arrayidx309 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 14
  %109 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 720900, ptr %arrayidx309, align 4
  %arrayidx312 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %110 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 720898, ptr %arrayidx312, align 4
  %arrayidx315 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 25
  %111 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 720899, ptr %arrayidx315, align 4
  %arrayidx318 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 22
  %112 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 720899, ptr %arrayidx318, align 4
  %arrayidx321 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %113 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 590849, ptr %arrayidx321, align 4
  %arrayidx324 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %114 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 132352, ptr %arrayidx324, align 4
  %arrayidx328 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16, i32 1
  %115 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 132352, ptr %arrayidx328, align 4
  br label %sw.epilog

sw.bb329:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call330 = tail call i32 @aldebaran_reg_base_init(ptr noundef %adev) #7
  %num_instances332 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %116 = ptrtoint ptr %num_instances332 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 5, ptr %num_instances332, align 4
  %num_vcn_inst334 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %117 = ptrtoint ptr %num_vcn_inst334 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 2, ptr %num_vcn_inst334, align 1
  %arrayidx336 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  %118 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 590850, ptr %arrayidx336, align 4
  %arrayidx339 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 12
  %119 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 590850, ptr %arrayidx339, align 4
  %arrayidx342 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 21
  %120 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 263168, ptr %arrayidx342, align 4
  %arrayidx345 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 2
  %121 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 263168, ptr %arrayidx345, align 4
  %arrayidx348 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %122 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 263168, ptr %arrayidx348, align 4
  %arrayidx352 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3, i32 1
  %123 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 263168, ptr %arrayidx352, align 4
  %arrayidx355 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3, i32 2
  %124 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 263168, ptr %arrayidx355, align 4
  %arrayidx358 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3, i32 3
  %125 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 263168, ptr %arrayidx358, align 4
  %arrayidx361 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3, i32 4
  %126 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 263168, ptr %arrayidx361, align 4
  %arrayidx363 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 19
  %127 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 198146, ptr %arrayidx363, align 4
  %arrayidx366 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 13
  %128 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 459780, ptr %arrayidx366, align 4
  %arrayidx369 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 27
  %129 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 395008, ptr %arrayidx369, align 4
  %arrayidx372 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 14
  %130 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 851970, ptr %arrayidx372, align 4
  %arrayidx375 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %131 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 851970, ptr %arrayidx375, align 4
  %arrayidx378 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 25
  %132 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 851970, ptr %arrayidx378, align 4
  %arrayidx381 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 22
  %133 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 851970, ptr %arrayidx381, align 4
  %arrayidx384 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %134 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 590850, ptr %arrayidx384, align 4
  %arrayidx387 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %135 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 132608, ptr %arrayidx387, align 4
  %arrayidx391 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16, i32 1
  %136 = ptrtoint ptr %arrayidx391 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 132608, ptr %arrayidx391, align 4
  %arrayidx393 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 29
  %137 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 393472, ptr %arrayidx393, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call395 = tail call i32 @amdgpu_discovery_reg_base_init(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call395)
  %tobool396.not = icmp eq i32 %call395, 0
  br i1 %tobool396.not, label %if.end398, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end398:                                        ; preds = %sw.default
  tail call void @amdgpu_discovery_harvest_ip(ptr noundef %adev)
  %discovery_bin = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 19
  %138 = ptrtoint ptr %discovery_bin to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %discovery_bin, align 8
  %tobool399.not = icmp eq ptr %139, null
  br i1 %tobool399.not, label %if.then400, label %if.end398.sw.epilog_crit_edge

if.end398.sw.epilog_crit_edge:                    ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then400:                                       ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end398.sw.epilog_crit_edge, %sw.bb329, %sw.bb257, %sw.bb199, %if.else, %if.then, %sw.bb50, %sw.bb
  %arrayidx403 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %140 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx403, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %141, label %sw.epilog.cleanup_crit_edge [
    i32 589825, label %sw.epilog.sw.epilog415_crit_edge
    i32 590337, label %sw.epilog.sw.epilog415_crit_edge812
    i32 590848, label %sw.epilog.sw.epilog415_crit_edge813
    i32 590849, label %sw.epilog.sw.epilog415_crit_edge814
    i32 590850, label %sw.epilog.sw.epilog415_crit_edge815
    i32 590080, label %sw.epilog.sw.bb406_crit_edge
    i32 590338, label %sw.epilog.sw.bb406_crit_edge816
    i32 590592, label %sw.epilog.sw.bb406_crit_edge817
    i32 655626, label %sw.epilog.sw.bb408_crit_edge
    i32 655617, label %sw.epilog.sw.bb408_crit_edge818
    i32 655618, label %sw.epilog.sw.bb408_crit_edge819
    i32 655619, label %sw.epilog.sw.bb408_crit_edge820
    i32 656128, label %sw.epilog.sw.bb408_crit_edge821
    i32 656130, label %sw.epilog.sw.bb408_crit_edge822
    i32 656132, label %sw.epilog.sw.bb408_crit_edge823
    i32 656133, label %sw.epilog.sw.bb408_crit_edge824
    i32 656129, label %sw.bb410
    i32 656131, label %sw.bb412
  ]

sw.epilog.sw.bb408_crit_edge824:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb408

sw.epilog.sw.bb408_crit_edge823:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb408

sw.epilog.sw.bb408_crit_edge822:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb408

sw.epilog.sw.bb408_crit_edge821:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb408

sw.epilog.sw.bb408_crit_edge820:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb408

sw.epilog.sw.bb408_crit_edge819:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb408

sw.epilog.sw.bb408_crit_edge818:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb408

sw.epilog.sw.bb408_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb408

sw.epilog.sw.bb406_crit_edge817:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb406

sw.epilog.sw.bb406_crit_edge816:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb406

sw.epilog.sw.bb406_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb406

sw.epilog.sw.epilog415_crit_edge815:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog415

sw.epilog.sw.epilog415_crit_edge814:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog415

sw.epilog.sw.epilog415_crit_edge813:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog415

sw.epilog.sw.epilog415_crit_edge812:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog415

sw.epilog.sw.epilog415_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog415

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb406:                                         ; preds = %sw.epilog.sw.bb406_crit_edge, %sw.epilog.sw.bb406_crit_edge816, %sw.epilog.sw.bb406_crit_edge817
  br label %sw.epilog415

sw.bb408:                                         ; preds = %sw.epilog.sw.bb408_crit_edge, %sw.epilog.sw.bb408_crit_edge818, %sw.epilog.sw.bb408_crit_edge819, %sw.epilog.sw.bb408_crit_edge820, %sw.epilog.sw.bb408_crit_edge821, %sw.epilog.sw.bb408_crit_edge822, %sw.epilog.sw.bb408_crit_edge823, %sw.epilog.sw.bb408_crit_edge824
  br label %sw.epilog415

sw.bb410:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog415

sw.bb412:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog415

sw.epilog415:                                     ; preds = %sw.bb412, %sw.bb410, %sw.bb408, %sw.bb406, %sw.epilog.sw.epilog415_crit_edge, %sw.epilog.sw.epilog415_crit_edge812, %sw.epilog.sw.epilog415_crit_edge813, %sw.epilog.sw.epilog415_crit_edge814, %sw.epilog.sw.epilog415_crit_edge815
  %.sink = phi i32 [ 146, %sw.bb412 ], [ 144, %sw.bb410 ], [ 143, %sw.bb408 ], [ 142, %sw.bb406 ], [ 141, %sw.epilog.sw.epilog415_crit_edge ], [ 141, %sw.epilog.sw.epilog415_crit_edge812 ], [ 141, %sw.epilog.sw.epilog415_crit_edge813 ], [ 141, %sw.epilog.sw.epilog415_crit_edge814 ], [ 141, %sw.epilog.sw.epilog415_crit_edge815 ]
  %family413 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 6
  %143 = ptrtoint ptr %family413 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %.sink, ptr %family413, align 4
  %arrayidx417 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 29
  %144 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 264192, i32 %145)
  %cmp = icmp eq i32 %145, 264192
  br i1 %cmp, label %if.then419, label %sw.epilog415.if.end420_crit_edge

sw.epilog415.if.end420_crit_edge:                 ; preds = %sw.epilog415
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end420

if.then419:                                       ; preds = %sw.epilog415
  call void @__sanitizer_cov_trace_pc() #9
  %supported = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 6
  %146 = ptrtoint ptr %supported to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %supported, align 8
  br label %if.end420

if.end420:                                        ; preds = %if.then419, %sw.epilog415.if.end420_crit_edge
  %arrayidx422 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 13
  %147 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx422, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %148, label %if.end420.sw.epilog457_crit_edge [
    i32 393472, label %if.end420.sw.epilog457.sink.split_crit_edge
    i32 393728, label %if.end420.sw.epilog457.sink.split_crit_edge825
    i32 458752, label %if.end420.sw.bb426_crit_edge
    i32 458753, label %if.end420.sw.bb426_crit_edge826
    i32 132352, label %if.end420.sw.bb426_crit_edge827
    i32 459776, label %if.end420.sw.bb431_crit_edge
    i32 459777, label %if.end420.sw.bb431_crit_edge828
    i32 459780, label %sw.bb436
    i32 459264, label %if.end420.sw.bb441_crit_edge
    i32 459265, label %if.end420.sw.bb441_crit_edge829
    i32 460032, label %if.end420.sw.bb441_crit_edge830
    i32 131329, label %if.end420.sw.bb446_crit_edge
    i32 131840, label %if.end420.sw.bb446_crit_edge831
    i32 131841, label %if.end420.sw.bb446_crit_edge832
    i32 131842, label %if.end420.sw.bb446_crit_edge833
    i32 197376, label %if.end420.sw.bb451_crit_edge
    i32 197377, label %if.end420.sw.bb451_crit_edge834
    i32 197378, label %if.end420.sw.bb451_crit_edge835
    i32 197379, label %if.end420.sw.bb451_crit_edge836
  ]

if.end420.sw.bb451_crit_edge836:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb451

if.end420.sw.bb451_crit_edge835:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb451

if.end420.sw.bb451_crit_edge834:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb451

if.end420.sw.bb451_crit_edge:                     ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb451

if.end420.sw.bb446_crit_edge833:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb446

if.end420.sw.bb446_crit_edge832:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb446

if.end420.sw.bb446_crit_edge831:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb446

if.end420.sw.bb446_crit_edge:                     ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb446

if.end420.sw.bb441_crit_edge830:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb441

if.end420.sw.bb441_crit_edge829:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb441

if.end420.sw.bb441_crit_edge:                     ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb441

if.end420.sw.bb431_crit_edge828:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb431

if.end420.sw.bb431_crit_edge:                     ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb431

if.end420.sw.bb426_crit_edge827:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb426

if.end420.sw.bb426_crit_edge826:                  ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb426

if.end420.sw.bb426_crit_edge:                     ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb426

if.end420.sw.epilog457.sink.split_crit_edge825:   ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog457.sink.split

if.end420.sw.epilog457.sink.split_crit_edge:      ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog457.sink.split

if.end420.sw.epilog457_crit_edge:                 ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog457

sw.bb426:                                         ; preds = %if.end420.sw.bb426_crit_edge, %if.end420.sw.bb426_crit_edge826, %if.end420.sw.bb426_crit_edge827
  br label %sw.epilog457.sink.split

sw.bb431:                                         ; preds = %if.end420.sw.bb431_crit_edge, %if.end420.sw.bb431_crit_edge828
  br label %sw.epilog457.sink.split

sw.bb436:                                         ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog457.sink.split

sw.bb441:                                         ; preds = %if.end420.sw.bb441_crit_edge, %if.end420.sw.bb441_crit_edge829, %if.end420.sw.bb441_crit_edge830
  br label %sw.epilog457.sink.split

sw.bb446:                                         ; preds = %if.end420.sw.bb446_crit_edge, %if.end420.sw.bb446_crit_edge831, %if.end420.sw.bb446_crit_edge832, %if.end420.sw.bb446_crit_edge833
  br label %sw.epilog457.sink.split

sw.bb451:                                         ; preds = %if.end420.sw.bb451_crit_edge, %if.end420.sw.bb451_crit_edge834, %if.end420.sw.bb451_crit_edge835, %if.end420.sw.bb451_crit_edge836
  br label %sw.epilog457.sink.split

sw.epilog457.sink.split:                          ; preds = %sw.bb451, %sw.bb446, %sw.bb441, %sw.bb436, %sw.bb431, %sw.bb426, %if.end420.sw.epilog457.sink.split_crit_edge, %if.end420.sw.epilog457.sink.split_crit_edge825
  %nbio_v2_3_funcs.sink = phi ptr [ @nbio_v2_3_funcs, %sw.bb451 ], [ @nbio_v2_3_funcs, %sw.bb446 ], [ @nbio_v7_2_funcs, %sw.bb441 ], [ @nbio_v7_4_funcs, %sw.bb436 ], [ @nbio_v7_4_funcs, %sw.bb431 ], [ @nbio_v7_0_funcs, %sw.bb426 ], [ @nbio_v6_1_funcs, %if.end420.sw.epilog457.sink.split_crit_edge ], [ @nbio_v6_1_funcs, %if.end420.sw.epilog457.sink.split_crit_edge825 ]
  %nbio_v2_3_hdp_flush_reg_sc.sink = phi ptr [ @nbio_v2_3_hdp_flush_reg_sc, %sw.bb451 ], [ @nbio_v2_3_hdp_flush_reg, %sw.bb446 ], [ @nbio_v7_2_hdp_flush_reg, %sw.bb441 ], [ @nbio_v7_4_hdp_flush_reg_ald, %sw.bb436 ], [ @nbio_v7_4_hdp_flush_reg, %sw.bb431 ], [ @nbio_v7_0_hdp_flush_reg, %sw.bb426 ], [ @nbio_v6_1_hdp_flush_reg, %if.end420.sw.epilog457.sink.split_crit_edge ], [ @nbio_v6_1_hdp_flush_reg, %if.end420.sw.epilog457.sink.split_crit_edge825 ]
  %nbio452 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101
  %funcs453 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %150 = ptrtoint ptr %funcs453 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %nbio_v2_3_funcs.sink, ptr %funcs453, align 8
  %151 = ptrtoint ptr %nbio452 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %nbio_v2_3_hdp_flush_reg_sc.sink, ptr %nbio452, align 8
  br label %sw.epilog457

sw.epilog457:                                     ; preds = %sw.epilog457.sink.split, %if.end420.sw.epilog457_crit_edge
  %arrayidx459 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 2
  %152 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx459, align 4
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %153, label %sw.epilog457.sw.epilog467_crit_edge [
    i32 262144, label %sw.epilog457.sw.epilog467.sink.split_crit_edge
    i32 262145, label %sw.epilog457.sw.epilog467.sink.split_crit_edge837
    i32 262400, label %sw.epilog457.sw.epilog467.sink.split_crit_edge838
    i32 262401, label %sw.epilog457.sw.epilog467.sink.split_crit_edge839
    i32 262402, label %sw.epilog457.sw.epilog467.sink.split_crit_edge840
    i32 262656, label %sw.epilog457.sw.epilog467.sink.split_crit_edge841
    i32 262657, label %sw.epilog457.sw.epilog467.sink.split_crit_edge842
    i32 263168, label %sw.epilog457.sw.epilog467.sink.split_crit_edge843
    i32 327680, label %sw.epilog457.sw.bb463_crit_edge
    i32 327681, label %sw.epilog457.sw.bb463_crit_edge844
    i32 327682, label %sw.epilog457.sw.bb463_crit_edge845
    i32 327683, label %sw.epilog457.sw.bb463_crit_edge846
    i32 327684, label %sw.epilog457.sw.bb463_crit_edge847
    i32 328192, label %sw.epilog457.sw.bb463_crit_edge848
  ]

sw.epilog457.sw.bb463_crit_edge848:               ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb463

sw.epilog457.sw.bb463_crit_edge847:               ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb463

sw.epilog457.sw.bb463_crit_edge846:               ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb463

sw.epilog457.sw.bb463_crit_edge845:               ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb463

sw.epilog457.sw.bb463_crit_edge844:               ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb463

sw.epilog457.sw.bb463_crit_edge:                  ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb463

sw.epilog457.sw.epilog467.sink.split_crit_edge843: ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog467.sink.split

sw.epilog457.sw.epilog467.sink.split_crit_edge842: ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog467.sink.split

sw.epilog457.sw.epilog467.sink.split_crit_edge841: ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog467.sink.split

sw.epilog457.sw.epilog467.sink.split_crit_edge840: ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog467.sink.split

sw.epilog457.sw.epilog467.sink.split_crit_edge839: ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog467.sink.split

sw.epilog457.sw.epilog467.sink.split_crit_edge838: ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog467.sink.split

sw.epilog457.sw.epilog467.sink.split_crit_edge837: ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog467.sink.split

sw.epilog457.sw.epilog467.sink.split_crit_edge:   ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog467.sink.split

sw.epilog457.sw.epilog467_crit_edge:              ; preds = %sw.epilog457
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog467

sw.bb463:                                         ; preds = %sw.epilog457.sw.bb463_crit_edge, %sw.epilog457.sw.bb463_crit_edge844, %sw.epilog457.sw.bb463_crit_edge845, %sw.epilog457.sw.bb463_crit_edge846, %sw.epilog457.sw.bb463_crit_edge847, %sw.epilog457.sw.bb463_crit_edge848
  br label %sw.epilog467.sink.split

sw.epilog467.sink.split:                          ; preds = %sw.bb463, %sw.epilog457.sw.epilog467.sink.split_crit_edge, %sw.epilog457.sw.epilog467.sink.split_crit_edge837, %sw.epilog457.sw.epilog467.sink.split_crit_edge838, %sw.epilog457.sw.epilog467.sink.split_crit_edge839, %sw.epilog457.sw.epilog467.sink.split_crit_edge840, %sw.epilog457.sw.epilog467.sink.split_crit_edge841, %sw.epilog457.sw.epilog467.sink.split_crit_edge842, %sw.epilog457.sw.epilog467.sink.split_crit_edge843
  %hdp_v5_0_funcs.sink = phi ptr [ @hdp_v5_0_funcs, %sw.bb463 ], [ @hdp_v4_0_funcs, %sw.epilog457.sw.epilog467.sink.split_crit_edge ], [ @hdp_v4_0_funcs, %sw.epilog457.sw.epilog467.sink.split_crit_edge837 ], [ @hdp_v4_0_funcs, %sw.epilog457.sw.epilog467.sink.split_crit_edge838 ], [ @hdp_v4_0_funcs, %sw.epilog457.sw.epilog467.sink.split_crit_edge839 ], [ @hdp_v4_0_funcs, %sw.epilog457.sw.epilog467.sink.split_crit_edge840 ], [ @hdp_v4_0_funcs, %sw.epilog457.sw.epilog467.sink.split_crit_edge841 ], [ @hdp_v4_0_funcs, %sw.epilog457.sw.epilog467.sink.split_crit_edge842 ], [ @hdp_v4_0_funcs, %sw.epilog457.sw.epilog467.sink.split_crit_edge843 ]
  %funcs465 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 102, i32 1
  %155 = ptrtoint ptr %funcs465 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %hdp_v5_0_funcs.sink, ptr %funcs465, align 4
  br label %sw.epilog467

sw.epilog467:                                     ; preds = %sw.epilog467.sink.split, %sw.epilog457.sw.epilog467_crit_edge
  %arrayidx469 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 19
  %156 = ptrtoint ptr %arrayidx469 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx469, align 4
  %158 = zext i32 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %157, label %sw.epilog467.sw.epilog477_crit_edge [
    i32 198144, label %sw.epilog467.sw.epilog477.sink.split_crit_edge
    i32 198145, label %sw.epilog467.sw.epilog477.sink.split_crit_edge849
    i32 198146, label %sw.epilog467.sw.epilog477.sink.split_crit_edge850
    i32 131328, label %sw.epilog467.sw.bb473_crit_edge
    i32 131329, label %sw.epilog467.sw.bb473_crit_edge851
    i32 132352, label %sw.epilog467.sw.bb473_crit_edge852
    i32 197889, label %sw.epilog467.sw.bb473_crit_edge853
    i32 197890, label %sw.epilog467.sw.bb473_crit_edge854
  ]

sw.epilog467.sw.bb473_crit_edge854:               ; preds = %sw.epilog467
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb473

sw.epilog467.sw.bb473_crit_edge853:               ; preds = %sw.epilog467
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb473

sw.epilog467.sw.bb473_crit_edge852:               ; preds = %sw.epilog467
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb473

sw.epilog467.sw.bb473_crit_edge851:               ; preds = %sw.epilog467
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb473

sw.epilog467.sw.bb473_crit_edge:                  ; preds = %sw.epilog467
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb473

sw.epilog467.sw.epilog477.sink.split_crit_edge850: ; preds = %sw.epilog467
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog477.sink.split

sw.epilog467.sw.epilog477.sink.split_crit_edge849: ; preds = %sw.epilog467
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog477.sink.split

sw.epilog467.sw.epilog477.sink.split_crit_edge:   ; preds = %sw.epilog467
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog477.sink.split

sw.epilog467.sw.epilog477_crit_edge:              ; preds = %sw.epilog467
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog477

sw.bb473:                                         ; preds = %sw.epilog467.sw.bb473_crit_edge, %sw.epilog467.sw.bb473_crit_edge851, %sw.epilog467.sw.bb473_crit_edge852, %sw.epilog467.sw.bb473_crit_edge853, %sw.epilog467.sw.bb473_crit_edge854
  br label %sw.epilog477.sink.split

sw.epilog477.sink.split:                          ; preds = %sw.bb473, %sw.epilog467.sw.epilog477.sink.split_crit_edge, %sw.epilog467.sw.epilog477.sink.split_crit_edge849, %sw.epilog467.sw.epilog477.sink.split_crit_edge850
  %df_v1_7_funcs.sink = phi ptr [ @df_v1_7_funcs, %sw.bb473 ], [ @df_v3_6_funcs, %sw.epilog467.sw.epilog477.sink.split_crit_edge ], [ @df_v3_6_funcs, %sw.epilog467.sw.epilog477.sink.split_crit_edge849 ], [ @df_v3_6_funcs, %sw.epilog467.sw.epilog477.sink.split_crit_edge850 ]
  %funcs475 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 120, i32 1
  %159 = ptrtoint ptr %funcs475 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %df_v1_7_funcs.sink, ptr %funcs475, align 4
  br label %sw.epilog477

sw.epilog477:                                     ; preds = %sw.epilog477.sink.split, %sw.epilog467.sw.epilog477_crit_edge
  %arrayidx479 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 22
  %160 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx479, align 4
  %162 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %161, label %sw.epilog477.sw.epilog493_crit_edge [
    i32 589824, label %sw.epilog477.sw.epilog493.sink.split_crit_edge
    i32 589825, label %sw.epilog477.sw.epilog493.sink.split_crit_edge855
    i32 655360, label %sw.epilog477.sw.epilog493.sink.split_crit_edge856
    i32 655361, label %sw.epilog477.sw.epilog493.sink.split_crit_edge857
    i32 655362, label %sw.epilog477.sw.epilog493.sink.split_crit_edge858
    i32 720896, label %sw.epilog477.sw.bb483_crit_edge
    i32 720898, label %sw.epilog477.sw.bb483_crit_edge859
    i32 720899, label %sw.epilog477.sw.bb483_crit_edge860
    i32 720900, label %sw.epilog477.sw.bb483_crit_edge861
    i32 720903, label %sw.epilog477.sw.bb483_crit_edge862
    i32 720904, label %sw.epilog477.sw.bb483_crit_edge863
    i32 720902, label %sw.epilog477.sw.bb486_crit_edge
    i32 720906, label %sw.epilog477.sw.bb486_crit_edge864
    i32 720907, label %sw.epilog477.sw.bb486_crit_edge865
    i32 722176, label %sw.epilog477.sw.bb486_crit_edge866
    i32 851969, label %sw.epilog477.sw.bb486_crit_edge867
    i32 851970, label %sw.bb489
  ]

sw.epilog477.sw.bb486_crit_edge867:               ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb486

sw.epilog477.sw.bb486_crit_edge866:               ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb486

sw.epilog477.sw.bb486_crit_edge865:               ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb486

sw.epilog477.sw.bb486_crit_edge864:               ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb486

sw.epilog477.sw.bb486_crit_edge:                  ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb486

sw.epilog477.sw.bb483_crit_edge863:               ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb483

sw.epilog477.sw.bb483_crit_edge862:               ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb483

sw.epilog477.sw.bb483_crit_edge861:               ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb483

sw.epilog477.sw.bb483_crit_edge860:               ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb483

sw.epilog477.sw.bb483_crit_edge859:               ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb483

sw.epilog477.sw.bb483_crit_edge:                  ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb483

sw.epilog477.sw.epilog493.sink.split_crit_edge858: ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog493.sink.split

sw.epilog477.sw.epilog493.sink.split_crit_edge857: ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog493.sink.split

sw.epilog477.sw.epilog493.sink.split_crit_edge856: ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog493.sink.split

sw.epilog477.sw.epilog493.sink.split_crit_edge855: ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog493.sink.split

sw.epilog477.sw.epilog493.sink.split_crit_edge:   ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog493.sink.split

sw.epilog477.sw.epilog493_crit_edge:              ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog493

sw.bb483:                                         ; preds = %sw.epilog477.sw.bb483_crit_edge, %sw.epilog477.sw.bb483_crit_edge859, %sw.epilog477.sw.bb483_crit_edge860, %sw.epilog477.sw.bb483_crit_edge861, %sw.epilog477.sw.bb483_crit_edge862, %sw.epilog477.sw.bb483_crit_edge863
  br label %sw.epilog493.sink.split

sw.bb486:                                         ; preds = %sw.epilog477.sw.bb486_crit_edge, %sw.epilog477.sw.bb486_crit_edge864, %sw.epilog477.sw.bb486_crit_edge865, %sw.epilog477.sw.bb486_crit_edge866, %sw.epilog477.sw.bb486_crit_edge867
  br label %sw.epilog493.sink.split

sw.bb489:                                         ; preds = %sw.epilog477
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog493.sink.split

sw.epilog493.sink.split:                          ; preds = %sw.bb489, %sw.bb486, %sw.bb483, %sw.epilog477.sw.epilog493.sink.split_crit_edge, %sw.epilog477.sw.epilog493.sink.split_crit_edge855, %sw.epilog477.sw.epilog493.sink.split_crit_edge856, %sw.epilog477.sw.epilog493.sink.split_crit_edge857, %sw.epilog477.sw.epilog493.sink.split_crit_edge858
  %smuio_v13_0_funcs.sink = phi ptr [ @smuio_v13_0_funcs, %sw.bb489 ], [ @smuio_v11_0_6_funcs, %sw.bb486 ], [ @smuio_v11_0_funcs, %sw.bb483 ], [ @smuio_v9_0_funcs, %sw.epilog477.sw.epilog493.sink.split_crit_edge ], [ @smuio_v9_0_funcs, %sw.epilog477.sw.epilog493.sink.split_crit_edge855 ], [ @smuio_v9_0_funcs, %sw.epilog477.sw.epilog493.sink.split_crit_edge856 ], [ @smuio_v9_0_funcs, %sw.epilog477.sw.epilog493.sink.split_crit_edge857 ], [ @smuio_v9_0_funcs, %sw.epilog477.sw.epilog493.sink.split_crit_edge858 ]
  %smuio490 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 103
  %163 = ptrtoint ptr %smuio490 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %smuio_v13_0_funcs.sink, ptr %smuio490, align 4
  br label %sw.epilog493

sw.epilog493:                                     ; preds = %sw.epilog493.sink.split, %sw.epilog477.sw.epilog493_crit_edge
  %164 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %141, label %amdgpu_discovery_set_common_ip_blocks.exit [
    i32 589825, label %sw.epilog493.if.end497_crit_edge
    i32 590080, label %sw.epilog493.if.end497_crit_edge868
    i32 590337, label %sw.epilog493.if.end497_crit_edge869
    i32 590338, label %sw.epilog493.if.end497_crit_edge870
    i32 590592, label %sw.epilog493.if.end497_crit_edge871
    i32 590848, label %sw.epilog493.if.end497_crit_edge872
    i32 590849, label %sw.epilog493.if.end497_crit_edge873
    i32 590850, label %sw.epilog493.if.end497_crit_edge874
    i32 655626, label %sw.epilog493.sw.bb2.i_crit_edge
    i32 655617, label %sw.epilog493.sw.bb2.i_crit_edge875
    i32 655618, label %sw.epilog493.sw.bb2.i_crit_edge876
    i32 655619, label %sw.epilog493.sw.bb2.i_crit_edge877
    i32 656128, label %sw.epilog493.sw.bb2.i_crit_edge878
    i32 656129, label %sw.epilog493.sw.bb2.i_crit_edge879
    i32 656130, label %sw.epilog493.sw.bb2.i_crit_edge880
    i32 656131, label %sw.epilog493.sw.bb2.i_crit_edge881
    i32 656132, label %sw.epilog493.sw.bb2.i_crit_edge882
    i32 656133, label %sw.epilog493.sw.bb2.i_crit_edge883
  ]

sw.epilog493.sw.bb2.i_crit_edge883:               ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.sw.bb2.i_crit_edge882:               ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.sw.bb2.i_crit_edge881:               ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.sw.bb2.i_crit_edge880:               ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.sw.bb2.i_crit_edge879:               ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.sw.bb2.i_crit_edge878:               ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.sw.bb2.i_crit_edge877:               ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.sw.bb2.i_crit_edge876:               ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.sw.bb2.i_crit_edge875:               ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.sw.bb2.i_crit_edge:                  ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.epilog493.if.end497_crit_edge874:              ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end497

sw.epilog493.if.end497_crit_edge873:              ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end497

sw.epilog493.if.end497_crit_edge872:              ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end497

sw.epilog493.if.end497_crit_edge871:              ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end497

sw.epilog493.if.end497_crit_edge870:              ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end497

sw.epilog493.if.end497_crit_edge869:              ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end497

sw.epilog493.if.end497_crit_edge868:              ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end497

sw.epilog493.if.end497_crit_edge:                 ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end497

sw.bb2.i:                                         ; preds = %sw.epilog493.sw.bb2.i_crit_edge, %sw.epilog493.sw.bb2.i_crit_edge875, %sw.epilog493.sw.bb2.i_crit_edge876, %sw.epilog493.sw.bb2.i_crit_edge877, %sw.epilog493.sw.bb2.i_crit_edge878, %sw.epilog493.sw.bb2.i_crit_edge879, %sw.epilog493.sw.bb2.i_crit_edge880, %sw.epilog493.sw.bb2.i_crit_edge881, %sw.epilog493.sw.bb2.i_crit_edge882, %sw.epilog493.sw.bb2.i_crit_edge883
  br label %if.end497

amdgpu_discovery_set_common_ip_blocks.exit:       ; preds = %sw.epilog493
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.121, i32 noundef %141) #11
  br label %cleanup

if.end497:                                        ; preds = %sw.bb2.i, %sw.epilog493.if.end497_crit_edge, %sw.epilog493.if.end497_crit_edge868, %sw.epilog493.if.end497_crit_edge869, %sw.epilog493.if.end497_crit_edge870, %sw.epilog493.if.end497_crit_edge871, %sw.epilog493.if.end497_crit_edge872, %sw.epilog493.if.end497_crit_edge873, %sw.epilog493.if.end497_crit_edge874
  %nv_common_ip_block.sink = phi ptr [ @nv_common_ip_block, %sw.bb2.i ], [ @vega10_common_ip_block, %sw.epilog493.if.end497_crit_edge ], [ @vega10_common_ip_block, %sw.epilog493.if.end497_crit_edge868 ], [ @vega10_common_ip_block, %sw.epilog493.if.end497_crit_edge869 ], [ @vega10_common_ip_block, %sw.epilog493.if.end497_crit_edge870 ], [ @vega10_common_ip_block, %sw.epilog493.if.end497_crit_edge871 ], [ @vega10_common_ip_block, %sw.epilog493.if.end497_crit_edge872 ], [ @vega10_common_ip_block, %sw.epilog493.if.end497_crit_edge873 ], [ @vega10_common_ip_block, %sw.epilog493.if.end497_crit_edge874 ]
  %call3.i = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %nv_common_ip_block.sink) #7
  %167 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx403, align 4
  %169 = zext i32 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %168, label %amdgpu_discovery_set_gmc_ip_blocks.exit [
    i32 589825, label %if.end497.if.end501_crit_edge
    i32 590080, label %if.end497.if.end501_crit_edge884
    i32 590337, label %if.end497.if.end501_crit_edge885
    i32 590338, label %if.end497.if.end501_crit_edge886
    i32 590592, label %if.end497.if.end501_crit_edge887
    i32 590848, label %if.end497.if.end501_crit_edge888
    i32 590849, label %if.end497.if.end501_crit_edge889
    i32 590850, label %if.end497.if.end501_crit_edge890
    i32 655626, label %if.end497.sw.bb2.i805_crit_edge
    i32 655617, label %if.end497.sw.bb2.i805_crit_edge891
    i32 655618, label %if.end497.sw.bb2.i805_crit_edge892
    i32 655619, label %if.end497.sw.bb2.i805_crit_edge893
    i32 656128, label %if.end497.sw.bb2.i805_crit_edge894
    i32 656129, label %if.end497.sw.bb2.i805_crit_edge895
    i32 656130, label %if.end497.sw.bb2.i805_crit_edge896
    i32 656131, label %if.end497.sw.bb2.i805_crit_edge897
    i32 656132, label %if.end497.sw.bb2.i805_crit_edge898
    i32 656133, label %if.end497.sw.bb2.i805_crit_edge899
  ]

if.end497.sw.bb2.i805_crit_edge899:               ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.sw.bb2.i805_crit_edge898:               ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.sw.bb2.i805_crit_edge897:               ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.sw.bb2.i805_crit_edge896:               ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.sw.bb2.i805_crit_edge895:               ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.sw.bb2.i805_crit_edge894:               ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.sw.bb2.i805_crit_edge893:               ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.sw.bb2.i805_crit_edge892:               ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.sw.bb2.i805_crit_edge891:               ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.sw.bb2.i805_crit_edge:                  ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i805

if.end497.if.end501_crit_edge890:                 ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

if.end497.if.end501_crit_edge889:                 ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

if.end497.if.end501_crit_edge888:                 ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

if.end497.if.end501_crit_edge887:                 ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

if.end497.if.end501_crit_edge886:                 ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

if.end497.if.end501_crit_edge885:                 ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

if.end497.if.end501_crit_edge884:                 ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

if.end497.if.end501_crit_edge:                    ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

sw.bb2.i805:                                      ; preds = %if.end497.sw.bb2.i805_crit_edge, %if.end497.sw.bb2.i805_crit_edge891, %if.end497.sw.bb2.i805_crit_edge892, %if.end497.sw.bb2.i805_crit_edge893, %if.end497.sw.bb2.i805_crit_edge894, %if.end497.sw.bb2.i805_crit_edge895, %if.end497.sw.bb2.i805_crit_edge896, %if.end497.sw.bb2.i805_crit_edge897, %if.end497.sw.bb2.i805_crit_edge898, %if.end497.sw.bb2.i805_crit_edge899
  br label %if.end501

amdgpu_discovery_set_gmc_ip_blocks.exit:          ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.123, i32 noundef %168) #11
  br label %cleanup

if.end501:                                        ; preds = %sw.bb2.i805, %if.end497.if.end501_crit_edge, %if.end497.if.end501_crit_edge884, %if.end497.if.end501_crit_edge885, %if.end497.if.end501_crit_edge886, %if.end497.if.end501_crit_edge887, %if.end497.if.end501_crit_edge888, %if.end497.if.end501_crit_edge889, %if.end497.if.end501_crit_edge890
  %gmc_v10_0_ip_block.sink = phi ptr [ @gmc_v10_0_ip_block, %sw.bb2.i805 ], [ @gmc_v9_0_ip_block, %if.end497.if.end501_crit_edge ], [ @gmc_v9_0_ip_block, %if.end497.if.end501_crit_edge884 ], [ @gmc_v9_0_ip_block, %if.end497.if.end501_crit_edge885 ], [ @gmc_v9_0_ip_block, %if.end497.if.end501_crit_edge886 ], [ @gmc_v9_0_ip_block, %if.end497.if.end501_crit_edge887 ], [ @gmc_v9_0_ip_block, %if.end497.if.end501_crit_edge888 ], [ @gmc_v9_0_ip_block, %if.end497.if.end501_crit_edge889 ], [ @gmc_v9_0_ip_block, %if.end497.if.end501_crit_edge890 ]
  %call3.i804 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull %gmc_v10_0_ip_block.sink) #7
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %172 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %virt, align 8
  %and502 = and i32 %173, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and502)
  %tobool503.not = icmp eq i32 %and502, 0
  br i1 %tobool503.not, label %if.else513, label %if.then504

if.then504:                                       ; preds = %if.end501
  %call505 = tail call fastcc i32 @amdgpu_discovery_set_psp_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call505)
  %tobool506.not = icmp eq i32 %call505, 0
  br i1 %tobool506.not, label %if.end508, label %if.then504.cleanup_crit_edge

if.then504.cleanup_crit_edge:                     ; preds = %if.then504
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end508:                                        ; preds = %if.then504
  %call509 = tail call fastcc i32 @amdgpu_discovery_set_ih_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call509)
  %tobool510.not = icmp eq i32 %call509, 0
  br i1 %tobool510.not, label %if.end508.if.end527_crit_edge, label %if.end508.cleanup_crit_edge

if.end508.cleanup_crit_edge:                      ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end508.if.end527_crit_edge:                    ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end527

if.else513:                                       ; preds = %if.end501
  %call514 = tail call fastcc i32 @amdgpu_discovery_set_ih_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call514)
  %tobool515.not = icmp eq i32 %call514, 0
  br i1 %tobool515.not, label %if.end517, label %if.else513.cleanup_crit_edge

if.else513.cleanup_crit_edge:                     ; preds = %if.else513
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end517:                                        ; preds = %if.else513
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %174 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %175)
  %cmp518 = icmp eq i32 %175, 2
  br i1 %cmp518, label %if.then521, label %if.end517.if.end527_crit_edge, !prof !296

if.end517.if.end527_crit_edge:                    ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end527

if.then521:                                       ; preds = %if.end517
  %call522 = tail call fastcc i32 @amdgpu_discovery_set_psp_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call522)
  %tobool523.not = icmp eq i32 %call522, 0
  br i1 %tobool523.not, label %if.then521.if.end527_crit_edge, label %if.then521.cleanup_crit_edge

if.then521.cleanup_crit_edge:                     ; preds = %if.then521
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then521.if.end527_crit_edge:                   ; preds = %if.then521
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end527

if.end527:                                        ; preds = %if.then521.if.end527_crit_edge, %if.end517.if.end527_crit_edge, %if.end508.if.end527_crit_edge
  %load_type529 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %176 = ptrtoint ptr %load_type529 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %load_type529, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %177)
  %cmp530 = icmp eq i32 %177, 2
  br i1 %cmp530, label %if.then537, label %if.end527.if.end542_crit_edge, !prof !296

if.end527.if.end542_crit_edge:                    ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end542

if.then537:                                       ; preds = %if.end527
  %call538 = tail call fastcc i32 @amdgpu_discovery_set_smu_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call538)
  %tobool539.not = icmp eq i32 %call538, 0
  br i1 %tobool539.not, label %if.then537.if.end542_crit_edge, label %if.then537.cleanup_crit_edge

if.then537.cleanup_crit_edge:                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then537.if.end542_crit_edge:                   ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end542

if.end542:                                        ; preds = %if.then537.if.end542_crit_edge, %if.end527.if.end542_crit_edge
  %call543 = tail call fastcc i32 @amdgpu_discovery_set_display_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call543)
  %tobool544.not = icmp eq i32 %call543, 0
  br i1 %tobool544.not, label %if.end546, label %if.end542.cleanup_crit_edge

if.end542.cleanup_crit_edge:                      ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end546:                                        ; preds = %if.end542
  %call547 = tail call fastcc i32 @amdgpu_discovery_set_gc_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call547)
  %tobool548.not = icmp eq i32 %call547, 0
  br i1 %tobool548.not, label %if.end550, label %if.end546.cleanup_crit_edge

if.end546.cleanup_crit_edge:                      ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end550:                                        ; preds = %if.end546
  %call551 = tail call fastcc i32 @amdgpu_discovery_set_sdma_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call551)
  %tobool552.not = icmp eq i32 %call551, 0
  br i1 %tobool552.not, label %if.end554, label %if.end550.cleanup_crit_edge

if.end550.cleanup_crit_edge:                      ; preds = %if.end550
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end554:                                        ; preds = %if.end550
  %178 = ptrtoint ptr %load_type529 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %load_type529, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp557 = icmp eq i32 %179, 0
  br i1 %cmp557, label %land.lhs.true, label %if.end554.if.end567_crit_edge

if.end554.if.end567_crit_edge:                    ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end567

land.lhs.true:                                    ; preds = %if.end554
  %180 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %virt, align 8
  %and560 = and i32 %181, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and560)
  %tobool561.not = icmp eq i32 %and560, 0
  br i1 %tobool561.not, label %if.then562, label %land.lhs.true.if.end567_crit_edge

land.lhs.true.if.end567_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end567

if.then562:                                       ; preds = %land.lhs.true
  %call563 = tail call fastcc i32 @amdgpu_discovery_set_smu_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call563)
  %tobool564.not = icmp eq i32 %call563, 0
  br i1 %tobool564.not, label %if.then562.if.end567_crit_edge, label %if.then562.cleanup_crit_edge

if.then562.cleanup_crit_edge:                     ; preds = %if.then562
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then562.if.end567_crit_edge:                   ; preds = %if.then562
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end567

if.end567:                                        ; preds = %if.then562.if.end567_crit_edge, %land.lhs.true.if.end567_crit_edge, %if.end554.if.end567_crit_edge
  %call568 = tail call fastcc i32 @amdgpu_discovery_set_mm_ip_blocks(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call568)
  %tobool569.not = icmp eq i32 %call568, 0
  br i1 %tobool569.not, label %if.end571, label %if.end567.cleanup_crit_edge

if.end567.cleanup_crit_edge:                      ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end571:                                        ; preds = %if.end567
  %enable_mes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 118
  %182 = ptrtoint ptr %enable_mes to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %enable_mes, align 8, !range !297
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool572.not = icmp eq i8 %183, 0
  br i1 %tobool572.not, label %if.end571.cleanup_crit_edge, label %if.then573

if.end571.cleanup_crit_edge:                      ; preds = %if.end571
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then573:                                       ; preds = %if.end571
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @amdgpu_discovery_set_mes_ip_blocks(ptr noundef %adev)
  br label %cleanup

cleanup:                                          ; preds = %if.then573, %if.end571.cleanup_crit_edge, %if.end567.cleanup_crit_edge, %if.then562.cleanup_crit_edge, %if.end550.cleanup_crit_edge, %if.end546.cleanup_crit_edge, %if.end542.cleanup_crit_edge, %if.then537.cleanup_crit_edge, %if.then521.cleanup_crit_edge, %if.else513.cleanup_crit_edge, %if.end508.cleanup_crit_edge, %if.then504.cleanup_crit_edge, %amdgpu_discovery_set_gmc_ip_blocks.exit, %amdgpu_discovery_set_common_ip_blocks.exit, %sw.epilog.cleanup_crit_edge, %if.then400, %sw.default.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then400 ], [ -22, %sw.default.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %amdgpu_discovery_set_common_ip_blocks.exit ], [ -22, %amdgpu_discovery_set_gmc_ip_blocks.exit ], [ %call505, %if.then504.cleanup_crit_edge ], [ %call509, %if.end508.cleanup_crit_edge ], [ %call514, %if.else513.cleanup_crit_edge ], [ %call522, %if.then521.cleanup_crit_edge ], [ %call538, %if.then537.cleanup_crit_edge ], [ %call543, %if.end542.cleanup_crit_edge ], [ %call547, %if.end546.cleanup_crit_edge ], [ %call551, %if.end550.cleanup_crit_edge ], [ %call563, %if.then562.cleanup_crit_edge ], [ %call568, %if.end567.cleanup_crit_edge ], [ 0, %if.then573 ], [ 0, %if.end571.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega10_reg_base_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega20_reg_base_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arct_reg_base_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aldebaran_reg_base_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_discovery_set_psp_ip_blocks(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 14
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %1, label %do.end [
    i32 589824, label %sw.bb
    i32 655360, label %entry.sw.bb2_crit_edge
    i32 655361, label %entry.sw.bb2_crit_edge23
    i32 720896, label %entry.sw.bb4_crit_edge
    i32 720898, label %entry.sw.bb4_crit_edge24
    i32 720900, label %entry.sw.bb4_crit_edge25
    i32 720901, label %entry.sw.bb4_crit_edge26
    i32 720905, label %entry.sw.bb4_crit_edge27
    i32 720903, label %entry.sw.bb4_crit_edge28
    i32 720907, label %entry.sw.bb4_crit_edge29
    i32 720908, label %entry.sw.bb4_crit_edge30
    i32 720909, label %entry.sw.bb4_crit_edge31
    i32 722176, label %entry.sw.bb4_crit_edge32
    i32 720904, label %sw.bb6
    i32 720899, label %entry.sw.bb8_crit_edge
    i32 786433, label %entry.sw.bb8_crit_edge33
    i32 851969, label %entry.sw.bb10_crit_edge
    i32 851970, label %entry.sw.bb10_crit_edge34
    i32 851971, label %entry.sw.bb10_crit_edge35
  ]

entry.sw.bb10_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb10_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb8_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb4_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb2_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @psp_v3_1_ip_block) #7
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge23
  %call3 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @psp_v10_0_ip_block) #7
  br label %return

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge24, %entry.sw.bb4_crit_edge25, %entry.sw.bb4_crit_edge26, %entry.sw.bb4_crit_edge27, %entry.sw.bb4_crit_edge28, %entry.sw.bb4_crit_edge29, %entry.sw.bb4_crit_edge30, %entry.sw.bb4_crit_edge31, %entry.sw.bb4_crit_edge32
  %call5 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @psp_v11_0_ip_block) #7
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @psp_v11_0_8_ip_block) #7
  br label %return

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge33
  %call9 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @psp_v12_0_ip_block) #7
  br label %return

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge34, %entry.sw.bb10_crit_edge35
  %call11 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @psp_v13_0_ip_block) #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.125, i32 noundef %1) #11
  br label %return

return:                                           ; preds = %do.end, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb10 ], [ 0, %sw.bb8 ], [ 0, %sw.bb6 ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_discovery_set_ih_ip_blocks(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 21
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %1, label %do.end [
    i32 262144, label %entry.sw.bb_crit_edge
    i32 262145, label %entry.sw.bb_crit_edge14
    i32 262400, label %entry.sw.bb_crit_edge15
    i32 262401, label %entry.sw.bb_crit_edge16
    i32 262912, label %entry.sw.bb_crit_edge17
    i32 262656, label %entry.sw.bb2_crit_edge
    i32 262657, label %entry.sw.bb2_crit_edge18
    i32 263168, label %entry.sw.bb2_crit_edge19
    i32 327680, label %entry.sw.bb4_crit_edge
    i32 327681, label %entry.sw.bb4_crit_edge20
    i32 327682, label %entry.sw.bb4_crit_edge21
    i32 327683, label %entry.sw.bb4_crit_edge22
    i32 328192, label %entry.sw.bb4_crit_edge23
    i32 328193, label %entry.sw.bb4_crit_edge24
  ]

entry.sw.bb4_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb2_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vega10_ih_ip_block) #7
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge18, %entry.sw.bb2_crit_edge19
  %call3 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vega20_ih_ip_block) #7
  br label %return

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge20, %entry.sw.bb4_crit_edge21, %entry.sw.bb4_crit_edge22, %entry.sw.bb4_crit_edge23, %entry.sw.bb4_crit_edge24
  %call5 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @navi10_ih_ip_block) #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.127, i32 noundef %1) #11
  br label %return

return:                                           ; preds = %do.end, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_discovery_set_smu_ip_blocks(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %1, label %do.end [
    i32 589824, label %entry.sw.bb_crit_edge
    i32 655360, label %entry.sw.bb_crit_edge20
    i32 655361, label %entry.sw.bb_crit_edge21
    i32 720898, label %entry.sw.bb_crit_edge22
    i32 720896, label %entry.sw.bb3_crit_edge
    i32 720901, label %entry.sw.bb3_crit_edge23
    i32 720905, label %entry.sw.bb3_crit_edge24
    i32 720903, label %entry.sw.bb3_crit_edge25
    i32 720904, label %entry.sw.bb3_crit_edge26
    i32 720907, label %entry.sw.bb3_crit_edge27
    i32 720908, label %entry.sw.bb3_crit_edge28
    i32 720909, label %entry.sw.bb3_crit_edge29
    i32 722176, label %entry.sw.bb3_crit_edge30
    i32 786432, label %entry.sw.bb5_crit_edge
    i32 786433, label %entry.sw.bb5_crit_edge31
    i32 851969, label %entry.sw.bb7_crit_edge
    i32 851970, label %entry.sw.bb7_crit_edge32
    i32 851971, label %entry.sw.bb7_crit_edge33
  ]

entry.sw.bb7_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb5_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb3_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge20, %entry.sw.bb_crit_edge21, %entry.sw.bb_crit_edge22
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %3 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %4)
  %cmp = icmp eq i32 %4, 23
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @smu_v11_0_ip_block) #7
  br label %return

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @pp_smu_ip_block) #7
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge23, %entry.sw.bb3_crit_edge24, %entry.sw.bb3_crit_edge25, %entry.sw.bb3_crit_edge26, %entry.sw.bb3_crit_edge27, %entry.sw.bb3_crit_edge28, %entry.sw.bb3_crit_edge29, %entry.sw.bb3_crit_edge30
  %call4 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @smu_v11_0_ip_block) #7
  br label %return

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge31
  %call6 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @smu_v12_0_ip_block) #7
  br label %return

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge32, %entry.sw.bb7_crit_edge33
  %call8 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @smu_v13_0_ip_block) #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.129, i32 noundef %1) #11
  br label %return

return:                                           ; preds = %do.end, %sw.bb7, %sw.bb5, %sw.bb3, %if.else, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_discovery_set_display_ip_blocks(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_virtual_display = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %0 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_virtual_display, align 8, !range !297
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @amdgpu_vkms_ip_block) #7
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 20
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %5, label %do.end [
    i32 0, label %if.else12
    i32 65536, label %if.else.sw.bb_crit_edge
    i32 65537, label %if.else.sw.bb_crit_edge46
    i32 131074, label %if.else.sw.bb_crit_edge47
    i32 131072, label %if.else.sw.bb_crit_edge48
    i32 131075, label %if.else.sw.bb_crit_edge49
    i32 131328, label %if.else.sw.bb_crit_edge50
    i32 196608, label %if.else.sw.bb_crit_edge51
    i32 196610, label %if.else.sw.bb_crit_edge52
    i32 196611, label %if.else.sw.bb_crit_edge53
    i32 196609, label %if.else.sw.bb_crit_edge54
    i32 196866, label %if.else.sw.bb_crit_edge55
    i32 196867, label %if.else.sw.bb_crit_edge56
  ]

if.else.sw.bb_crit_edge56:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge55:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge54:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge53:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge52:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge51:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge50:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge49:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge48:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge47:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge46:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.else.sw.bb_crit_edge, %if.else.sw.bb_crit_edge46, %if.else.sw.bb_crit_edge47, %if.else.sw.bb_crit_edge48, %if.else.sw.bb_crit_edge49, %if.else.sw.bb_crit_edge50, %if.else.sw.bb_crit_edge51, %if.else.sw.bb_crit_edge52, %if.else.sw.bb_crit_edge53, %if.else.sw.bb_crit_edge54, %if.else.sw.bb_crit_edge55, %if.else.sw.bb_crit_edge56
  %call8 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @dm_ip_block) #7
  br label %return

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.131, i32 noundef %5) #11
  br label %return

if.else12:                                        ; preds = %if.else
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 30
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx14, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %10, label %do.end25 [
    i32 0, label %if.else12.return_crit_edge
    i32 786432, label %if.else12.sw.bb21_crit_edge
    i32 786433, label %if.else12.sw.bb21_crit_edge57
    i32 786688, label %if.else12.sw.bb21_crit_edge58
  ]

if.else12.sw.bb21_crit_edge58:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.else12.sw.bb21_crit_edge57:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.else12.sw.bb21_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.else12.return_crit_edge:                       ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb21:                                          ; preds = %if.else12.sw.bb21_crit_edge, %if.else12.sw.bb21_crit_edge57, %if.else12.sw.bb21_crit_edge58
  %call22 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @dm_ip_block) #7
  br label %return

do.end25:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.134, i32 noundef %10) #11
  br label %return

return:                                           ; preds = %do.end25, %sw.bb21, %if.else12.return_crit_edge, %do.end, %sw.bb, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end25 ], [ %10, %if.else12.return_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.bb21 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_discovery_set_gc_ip_blocks(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %1, label %do.end [
    i32 589825, label %entry.sw.bb_crit_edge
    i32 590080, label %entry.sw.bb_crit_edge11
    i32 590337, label %entry.sw.bb_crit_edge12
    i32 590338, label %entry.sw.bb_crit_edge13
    i32 590592, label %entry.sw.bb_crit_edge14
    i32 590848, label %entry.sw.bb_crit_edge15
    i32 590849, label %entry.sw.bb_crit_edge16
    i32 590850, label %entry.sw.bb_crit_edge17
    i32 655626, label %entry.sw.bb2_crit_edge
    i32 655618, label %entry.sw.bb2_crit_edge18
    i32 655617, label %entry.sw.bb2_crit_edge19
    i32 655619, label %entry.sw.bb2_crit_edge20
    i32 656128, label %entry.sw.bb2_crit_edge21
    i32 656130, label %entry.sw.bb2_crit_edge22
    i32 656129, label %entry.sw.bb2_crit_edge23
    i32 656132, label %entry.sw.bb2_crit_edge24
    i32 656133, label %entry.sw.bb2_crit_edge25
    i32 656131, label %entry.sw.bb2_crit_edge26
  ]

entry.sw.bb2_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v9_0_ip_block) #7
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge18, %entry.sw.bb2_crit_edge19, %entry.sw.bb2_crit_edge20, %entry.sw.bb2_crit_edge21, %entry.sw.bb2_crit_edge22, %entry.sw.bb2_crit_edge23, %entry.sw.bb2_crit_edge24, %entry.sw.bb2_crit_edge25, %entry.sw.bb2_crit_edge26
  %call3 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @gfx_v10_0_ip_block) #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.136, i32 noundef %1) #11
  br label %return

return:                                           ; preds = %do.end, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_discovery_set_sdma_ip_blocks(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %1, label %do.end [
    i32 262144, label %entry.sw.bb_crit_edge
    i32 262145, label %entry.sw.bb_crit_edge14
    i32 262400, label %entry.sw.bb_crit_edge15
    i32 262401, label %entry.sw.bb_crit_edge16
    i32 262402, label %entry.sw.bb_crit_edge17
    i32 262656, label %entry.sw.bb_crit_edge18
    i32 262658, label %entry.sw.bb_crit_edge19
    i32 263168, label %entry.sw.bb_crit_edge20
    i32 327680, label %entry.sw.bb2_crit_edge
    i32 327681, label %entry.sw.bb2_crit_edge21
    i32 327682, label %entry.sw.bb2_crit_edge22
    i32 327685, label %entry.sw.bb2_crit_edge23
    i32 328192, label %entry.sw.bb4_crit_edge
    i32 328194, label %entry.sw.bb4_crit_edge24
    i32 328196, label %entry.sw.bb4_crit_edge25
    i32 328197, label %entry.sw.bb4_crit_edge26
    i32 328195, label %entry.sw.bb4_crit_edge27
    i32 328193, label %entry.sw.bb4_crit_edge28
  ]

entry.sw.bb4_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb2_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @sdma_v4_0_ip_block) #7
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge21, %entry.sw.bb2_crit_edge22, %entry.sw.bb2_crit_edge23
  %call3 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @sdma_v5_0_ip_block) #7
  br label %return

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge24, %entry.sw.bb4_crit_edge25, %entry.sw.bb4_crit_edge26, %entry.sw.bb4_crit_edge27, %entry.sw.bb4_crit_edge28
  %call5 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @sdma_v5_2_ip_block) #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.138, i32 noundef %1) #11
  br label %return

return:                                           ; preds = %do.end, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_discovery_set_mm_ip_blocks(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 18
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %arrayidx33 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 16
  %2 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx33, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %3, label %do.end [
    i32 458752, label %if.then.sw.bb_crit_edge
    i32 459264, label %if.then.sw.bb_crit_edge99
  ]

if.then.sw.bb_crit_edge99:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge99
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %5 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %6)
  %cmp = icmp eq i32 %6, 21
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.then6_crit_edge

sw.bb.if.then6_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

land.lhs.true:                                    ; preds = %sw.bb
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.if.then6_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.if.then6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %land.lhs.true.if.then6_crit_edge, %sw.bb.if.then6_crit_edge
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @uvd_v7_0_ip_block) #7
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.140, i32 noundef %3) #11
  br label %return

sw.epilog:                                        ; preds = %if.then6, %land.lhs.true.sw.epilog_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %12, label %do.end26 [
    i32 262144, label %sw.epilog.sw.bb13_crit_edge
    i32 262400, label %sw.epilog.sw.bb13_crit_edge100
  ]

sw.epilog.sw.bb13_crit_edge100:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

sw.epilog.sw.bb13_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.epilog.sw.bb13_crit_edge, %sw.epilog.sw.bb13_crit_edge100
  %14 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %15)
  %cmp15 = icmp eq i32 %15, 21
  br i1 %cmp15, label %land.lhs.true16, label %sw.bb13.if.then21_crit_edge

sw.bb13.if.then21_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

land.lhs.true16:                                  ; preds = %sw.bb13
  %virt17 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %16 = ptrtoint ptr %virt17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt17, align 8
  %and19 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true16.if.then21_crit_edge, label %land.lhs.true16.return_crit_edge

land.lhs.true16.return_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true16.if.then21_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %land.lhs.true16.if.then21_crit_edge, %sw.bb13.if.then21_crit_edge
  %call22 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vce_v4_0_ip_block) #7
  br label %return

do.end26:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.143, i32 noundef %12) #11
  br label %return

if.else:                                          ; preds = %entry
  %20 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %3, label %do.end65 [
    i32 65536, label %if.else.sw.bb35_crit_edge
    i32 65537, label %if.else.sw.bb35_crit_edge101
    i32 131072, label %if.else.sw.bb37_crit_edge
    i32 131074, label %if.else.sw.bb37_crit_edge102
    i32 131584, label %if.else.sw.bb37_crit_edge103
    i32 131075, label %if.else.return_crit_edge
    i32 132352, label %sw.bb46
    i32 132608, label %sw.bb49
    i32 196608, label %if.else.sw.bb52_crit_edge
    i32 196624, label %if.else.sw.bb52_crit_edge104
    i32 196865, label %if.else.sw.bb52_crit_edge105
    i32 196610, label %if.else.sw.bb52_crit_edge106
    i32 196800, label %if.else.sw.bb52_crit_edge107
    i32 196641, label %sw.bb61
  ]

if.else.sw.bb52_crit_edge107:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.else.sw.bb52_crit_edge106:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.else.sw.bb52_crit_edge105:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.else.sw.bb52_crit_edge104:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.else.sw.bb52_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else.sw.bb37_crit_edge103:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.else.sw.bb37_crit_edge102:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.else.sw.bb37_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.else.sw.bb35_crit_edge101:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

if.else.sw.bb35_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

sw.bb35:                                          ; preds = %if.else.sw.bb35_crit_edge, %if.else.sw.bb35_crit_edge101
  %call36 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vcn_v1_0_ip_block) #7
  br label %return

sw.bb37:                                          ; preds = %if.else.sw.bb37_crit_edge, %if.else.sw.bb37_crit_edge102, %if.else.sw.bb37_crit_edge103
  %call38 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vcn_v2_0_ip_block) #7
  %virt39 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %21 = ptrtoint ptr %virt39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %virt39, align 8
  %and41 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then43, label %sw.bb37.return_crit_edge

sw.bb37.return_crit_edge:                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then43:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @jpeg_v2_0_ip_block) #7
  br label %return

sw.bb46:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vcn_v2_5_ip_block) #7
  %call48 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @jpeg_v2_5_ip_block) #7
  br label %return

sw.bb49:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vcn_v2_6_ip_block) #7
  %call51 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @jpeg_v2_6_ip_block) #7
  br label %return

sw.bb52:                                          ; preds = %if.else.sw.bb52_crit_edge, %if.else.sw.bb52_crit_edge104, %if.else.sw.bb52_crit_edge105, %if.else.sw.bb52_crit_edge106, %if.else.sw.bb52_crit_edge107
  %call53 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vcn_v3_0_ip_block) #7
  %virt54 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %23 = ptrtoint ptr %virt54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %virt54, align 8
  %and56 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then58, label %sw.bb52.return_crit_edge

sw.bb52.return_crit_edge:                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then58:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @jpeg_v3_0_ip_block) #7
  br label %return

sw.bb61:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @vcn_v3_0_ip_block) #7
  br label %return

do.end65:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.146, i32 noundef %3) #11
  br label %return

return:                                           ; preds = %do.end65, %sw.bb61, %if.then58, %sw.bb52.return_crit_edge, %sw.bb49, %sw.bb46, %if.then43, %sw.bb37.return_crit_edge, %sw.bb35, %if.else.return_crit_edge, %do.end26, %if.then21, %land.lhs.true16.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end26 ], [ -22, %do.end65 ], [ 0, %sw.bb35 ], [ 0, %sw.bb46 ], [ 0, %sw.bb49 ], [ 0, %if.else.return_crit_edge ], [ 0, %sw.bb61 ], [ 0, %if.then43 ], [ 0, %sw.bb37.return_crit_edge ], [ 0, %if.then58 ], [ 0, %sw.bb52.return_crit_edge ], [ 0, %if.then21 ], [ 0, %land.lhs.true16.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_discovery_set_mes_ip_blocks(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 655626, label %entry.sw.bb_crit_edge
    i32 655617, label %entry.sw.bb_crit_edge1
    i32 655618, label %entry.sw.bb_crit_edge2
    i32 655619, label %entry.sw.bb_crit_edge3
    i32 656128, label %entry.sw.bb_crit_edge4
    i32 656129, label %entry.sw.bb_crit_edge5
    i32 656130, label %entry.sw.bb_crit_edge6
    i32 656131, label %entry.sw.bb_crit_edge7
    i32 656132, label %entry.sw.bb_crit_edge8
    i32 656133, label %entry.sw.bb_crit_edge9
  ]

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge2:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge1:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge1, %entry.sw.bb_crit_edge2, %entry.sw.bb_crit_edge3, %entry.sw.bb_crit_edge4, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %call = tail call i32 @amdgpu_device_ip_block_add(ptr noundef %adev, ptr noundef nonnull @mes_v10_1_ip_block) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_vram_access(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_block_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 71, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 402, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 411, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 420, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 425, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 436, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 467, i32 5}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 472, i32 6}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 512, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 650, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @amdgpu_discovery_get_gfx_info._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @amdgpu_discovery_get_gfx_info._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 288, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @amdgpu_discovery_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @amdgpu_discovery_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 294, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @amdgpu_discovery_init._entry.15, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @amdgpu_discovery_init._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 298, i32 4}
!38 = !{ptr @amdgpu_discovery_init._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @amdgpu_discovery_init._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 304, i32 4}
!42 = !{ptr @amdgpu_discovery_init._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @amdgpu_discovery_init._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 319, i32 3}
!46 = !{ptr @amdgpu_discovery_init._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @amdgpu_discovery_init._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 330, i32 3}
!50 = !{ptr @amdgpu_discovery_init._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @amdgpu_discovery_init._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 337, i32 3}
!54 = !{ptr @amdgpu_discovery_init._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @amdgpu_discovery_init._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 349, i32 3}
!58 = !{ptr @amdgpu_discovery_init._entry.34, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @amdgpu_discovery_init._entry_ptr.36, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 201, i32 13}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 204, i32 3}
!64 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @amdgpu_discovery_read_binary_from_file._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @amdgpu_discovery_read_binary_from_file._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 210, i32 3}
!69 = !{ptr @amdgpu_discovery_read_binary_from_file._entry.40, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @amdgpu_discovery_read_binary_from_file._entry_ptr.42, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 372, i32 3}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 377, i32 3}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 79, i32 16}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 80, i32 16}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 81, i32 16}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 82, i32 18}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 83, i32 17}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 84, i32 17}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 85, i32 16}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 86, i32 15}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 87, i32 16}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 88, i32 21}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 89, i32 16}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 90, i32 16}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 92, i32 16}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 94, i32 17}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 95, i32 18}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 97, i32 19}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 98, i32 16}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 99, i32 17}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 100, i32 18}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 101, i32 16}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 102, i32 18}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 103, i32 18}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 104, i32 21}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 105, i32 16}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 106, i32 18}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 107, i32 18}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 108, i32 19}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 109, i32 16}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 110, i32 18}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 111, i32 18}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 114, i32 16}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 115, i32 20}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 116, i32 15}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 117, i32 17}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 118, i32 16}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 119, i32 20}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 120, i32 22}
!149 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 121, i32 22}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 122, i32 23}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 123, i32 19}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 124, i32 19}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 125, i32 19}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 126, i32 19}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 127, i32 19}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 128, i32 19}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 129, i32 19}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 130, i32 20}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 131, i32 20}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 132, i32 20}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 133, i32 20}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 134, i32 20}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 135, i32 20}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 136, i32 18}
!181 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 137, i32 22}
!183 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 112, i32 18}
!185 = !{ptr @.str.100, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 113, i32 18}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 138, i32 17}
!189 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 139, i32 16}
!191 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 140, i32 17}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 141, i32 16}
!195 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 142, i32 18}
!197 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 143, i32 17}
!199 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 144, i32 19}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 145, i32 21}
!203 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 146, i32 19}
!205 = !{ptr @.str.110, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 147, i32 16}
!207 = !{ptr @.str.111, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 148, i32 17}
!209 = !{ptr @.str.112, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 149, i32 16}
!211 = !{ptr @.str.113, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 150, i32 19}
!213 = !{ptr @.str.114, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 151, i32 17}
!215 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 152, i32 17}
!217 = !{ptr @.str.116, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 153, i32 16}
!219 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 91, i32 16}
!221 = !{ptr @.str.118, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 93, i32 16}
!223 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 96, i32 16}
!225 = !{ptr @hw_id_names, !226, !"hw_id_names", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 78, i32 20}
!227 = !{ptr @hw_id_map, !228, !"hw_id_map", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 156, i32 12}
!229 = !{ptr @.str.121, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 686, i32 3}
!231 = !{ptr @.str.122, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @amdgpu_discovery_set_common_ip_blocks._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @amdgpu_discovery_set_common_ip_blocks._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.123, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 721, i32 3}
!236 = !{ptr @.str.124, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @amdgpu_discovery_set_gmc_ip_blocks._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @amdgpu_discovery_set_gmc_ip_blocks._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.125, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 796, i32 3}
!241 = !{ptr @.str.126, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @amdgpu_discovery_set_psp_ip_blocks._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @amdgpu_discovery_set_psp_ip_blocks._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.127, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 753, i32 3}
!246 = !{ptr @.str.128, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @amdgpu_discovery_set_ih_ip_blocks._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @amdgpu_discovery_set_ih_ip_blocks._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.129, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 837, i32 3}
!251 = !{ptr @.str.130, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @amdgpu_discovery_set_smu_ip_blocks._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @amdgpu_discovery_set_smu_ip_blocks._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.131, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 867, i32 4}
!256 = !{ptr @.str.132, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @amdgpu_discovery_set_display_ip_blocks._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @amdgpu_discovery_set_display_ip_blocks._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.134, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 880, i32 4}
!261 = !{ptr @amdgpu_discovery_set_display_ip_blocks._entry.133, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @amdgpu_discovery_set_display_ip_blocks._entry_ptr.135, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.136, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 916, i32 3}
!265 = !{ptr @.str.137, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @amdgpu_discovery_set_gc_ip_blocks._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @amdgpu_discovery_set_gc_ip_blocks._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.138, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 952, i32 3}
!270 = !{ptr @.str.139, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @amdgpu_discovery_set_sdma_ip_blocks._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @amdgpu_discovery_set_sdma_ip_blocks._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.140, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 971, i32 4}
!275 = !{ptr @.str.141, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @amdgpu_discovery_set_mm_ip_blocks._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @amdgpu_discovery_set_mm_ip_blocks._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.143, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 984, i32 4}
!280 = !{ptr @amdgpu_discovery_set_mm_ip_blocks._entry.142, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @amdgpu_discovery_set_mm_ip_blocks._entry_ptr.144, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.146, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c", i32 1025, i32 4}
!284 = !{ptr @amdgpu_discovery_set_mm_ip_blocks._entry.145, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @amdgpu_discovery_set_mm_ip_blocks._entry_ptr.147, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{!"auto-init"}
!296 = !{!"branch_weights", i32 2000, i32 1}
!297 = !{i8 0, i8 2}
