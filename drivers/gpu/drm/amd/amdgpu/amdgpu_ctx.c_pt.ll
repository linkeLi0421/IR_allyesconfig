; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_ctx = type { %struct.kref, ptr, i32, i32, i32, %struct.spinlock, [9 x [4 x ptr]], i8, i32, i32, %struct.mutex, %struct.atomic_t, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
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
%struct.amdgpu_ctx_entity = type { i64, %struct.drm_sched_entity, [0 x ptr] }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_amdgpu_ctx_in = type { i32, i32, i32, i32 }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm, ptr, ptr, %struct.mutex, %struct.idr, %struct.amdgpu_ctx_mgr }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.94, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.anon.94 = type { %union.anon.95, [128 x i64] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.amdgpu_ctx_mgr = type { ptr, %struct.mutex, %struct.idr }
%struct.amdgpu_ras = type { i32, %struct.list_head, %struct.device_attribute, %struct.bin_attribute, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, ptr, %struct.mutex, i32, i8, %struct.amdgpu_ras_eeprom_control, i8, i32, i8, i8, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.umc_ecc_info }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ras_eeprom_control = type { %struct.amdgpu_ras_eeprom_table_header, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.amdgpu_ras_eeprom_table_header = type { i32, i32, i32, i32, i32 }
%struct.umc_ecc_info = type { [32 x %struct.ecc_info_per_ch] }
%struct.ecc_info_per_ch = type { i16, i16, i64, i64 }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }

@amdgpu_ctx_num_entities = dso_local constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 4, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown HW IP type: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid ip instance: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid ring: %d %d\0A\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_sched_jobs = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error (%ld) waiting for fence!\0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_ctx_mgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mgr->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ctx %p is still alive\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid context priority %d\0A\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_ctx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctx->ring_lock\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_ctx_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 512, i64 1023, i64 4294965248, i64 4294966273, i64 4294966784]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 7]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 512, i64 1023, i64 4294965248, i64 4294966273, i64 4294966784]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.15 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 512, i64 1023, i64 4294965248, i64 4294966273, i64 4294966784]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 512, i64 1023, i64 4294965248, i64 4294966273, i64 4294966784]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 512, i64 1023, i64 4294965248, i64 4294966273, i64 4294966784]
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"amdgpu_ctx_num_entities\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 34, i32 20 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 284, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 290, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 295, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 656, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 664, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 704, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 87, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 232, i32 2 }
@___asan_gen_.59 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 233, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 378, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @amdgpu_ctx_num_entities, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @amdgpu_ctx_mgr_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @amdgpu_ctx_init.__key, ptr @.str.8, ptr @amdgpu_ctx_init.__key.9, ptr @.str.10, ptr @xa_init_flags.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ctx_num_entities to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ctx_mgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ctx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ctx_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_ctx_priority_is_valid(i32 noundef %ctx_prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ctx_prio to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ctx_prio, label %sw.default [
    i32 -2048, label %entry.return_crit_edge
    i32 -1023, label %entry.return_crit_edge1
    i32 -512, label %entry.return_crit_edge2
    i32 0, label %entry.return_crit_edge3
    i32 512, label %entry.return_crit_edge4
    i32 1023, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ctx_get_entity(ptr noundef %ctx, i32 noundef %hw_ip, i32 noundef %instance, i32 noundef %ring, ptr nocapture noundef writeonly %entity) local_unnamed_addr #1 align 64 {
entry:
  %sched.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %hw_ip)
  %cmp = icmp ugt i32 %hw_ip, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %hw_ip) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %instance)
  %cmp1.not = icmp eq i32 %instance, 0
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %instance) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr [9 x i32], ptr @amdgpu_ctx_num_entities, i32 0, i32 %hw_ip
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ring)
  %cmp4.not = icmp ugt i32 %1, %ring
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %hw_ip, i32 noundef %ring) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %arrayidx8 = getelementptr %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 6, i32 %hw_ip, i32 %ring
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx8, align 4
  %cmp9 = icmp eq ptr %3, null
  br i1 %cmp9, label %if.then10, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  %adev1.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %adev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched.i) #8
  %6 = ptrtoint ptr %sched.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sched.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_jobs to i32))
  %7 = load i32, ptr @amdgpu_sched_jobs, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #8
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 192) #8
  %retval.0.i.i = select i1 %9, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.then10.amdgpu_ctx_init_entity.exit.thread_crit_edge, label %if.end.i

if.then10.amdgpu_ctx_init_entity.exit.thread_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_init_entity.exit.thread

if.end.i:                                         ; preds = %if.then10
  %override_priority.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 9
  %11 = ptrtoint ptr %override_priority.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %override_priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2048, i32 %12)
  %cmp.i = icmp eq i32 %12, -2048
  br i1 %cmp.i, label %cond.true.i.i, label %if.end.i.cond.end.i.i_crit_edge

if.end.i.cond.end.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %init_priority.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 8
  %13 = ptrtoint ptr %init_priority.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %init_priority.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.i.cond.end.i.i_crit_edge
  %cond67.i = phi i32 [ %14, %cond.true.i.i ], [ %12, %if.end.i.cond.end.i.i_crit_edge ]
  %15 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %call9.i.i.i, align 128
  %16 = ptrtoint ptr %adev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev1.i, align 4
  %18 = zext i32 %hw_ip to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %hw_ip, label %cond.end.i.i.amdgpu_ctx_get_hw_prio.exit.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 4, label %cond.end.i.i.sw.bb3.i.i_crit_edge
    i32 7, label %cond.end.i.i.sw.bb3.i.i_crit_edge34
  ]

cond.end.i.i.sw.bb3.i.i_crit_edge34:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i.i

cond.end.i.i.sw.bb3.i.i_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i.i

cond.end.i.i.amdgpu_ctx_get_hw_prio.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_get_hw_prio.exit.i

sw.bb.i.i:                                        ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %cond67.i)
  %switch.selectcmp.case1.i.i.i = icmp eq i32 %cond67.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %cond67.i)
  %switch.selectcmp.case2.i.i.i = icmp eq i32 %cond67.i, 1023
  %switch.selectcmp.i.i.i = or i1 %switch.selectcmp.case1.i.i.i, %switch.selectcmp.case2.i.i.i
  %19 = select i1 %switch.selectcmp.i.i.i, i32 2, i32 1
  br label %amdgpu_ctx_get_hw_prio.exit.i

sw.bb3.i.i:                                       ; preds = %cond.end.i.i.sw.bb3.i.i_crit_edge, %cond.end.i.i.sw.bb3.i.i_crit_edge34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %cond67.i)
  %switch.selectcmp.i19.i.i = icmp eq i32 %cond67.i, 1023
  %switch.select.i.i.i = select i1 %switch.selectcmp.i19.i.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %cond67.i)
  %switch.selectcmp2.i.i.i = icmp eq i32 %cond67.i, 512
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 1, i32 %switch.select.i.i.i
  br label %amdgpu_ctx_get_hw_prio.exit.i

amdgpu_ctx_get_hw_prio.exit.i:                    ; preds = %sw.bb3.i.i, %sw.bb.i.i, %cond.end.i.i.amdgpu_ctx_get_hw_prio.exit.i_crit_edge
  %hw_prio.0.i.i = phi i32 [ %switch.select3.i.i.i, %sw.bb3.i.i ], [ %19, %sw.bb.i.i ], [ 1, %cond.end.i.i.amdgpu_ctx_get_hw_prio.exit.i_crit_edge ]
  %20 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %hw_ip, i32 9) #8, !srcloc !36
  %and.i.i = and i32 %20, %hw_ip
  %arrayidx9.i.i = getelementptr %struct.amdgpu_device, ptr %17, i32 0, i32 93, i32 %and.i.i, i32 %hw_prio.0.i.i
  %21 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp10.i.i = icmp eq i32 %22, 0
  %spec.store.select.i.i = select i1 %cmp10.i.i, i32 1, i32 %hw_prio.0.i.i
  %23 = zext i32 %cond67.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cond67.i, label %do.end.i.i [
    i32 -2048, label %amdgpu_ctx_get_hw_prio.exit.i.amdgpu_ctx_to_drm_sched_prio.exit.i_crit_edge
    i32 -1023, label %sw.bb1.i.i
    i32 -512, label %sw.bb2.i.i
    i32 0, label %sw.bb3.i64.i
    i32 512, label %sw.bb4.i.i
    i32 1023, label %sw.bb5.i.i
  ]

amdgpu_ctx_get_hw_prio.exit.i.amdgpu_ctx_to_drm_sched_prio.exit.i_crit_edge: ; preds = %amdgpu_ctx_get_hw_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb1.i.i:                                       ; preds = %amdgpu_ctx_get_hw_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb2.i.i:                                       ; preds = %amdgpu_ctx_get_hw_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb3.i64.i:                                     ; preds = %amdgpu_ctx_get_hw_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb4.i.i:                                       ; preds = %amdgpu_ctx_get_hw_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb5.i.i:                                       ; preds = %amdgpu_ctx_get_hw_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

do.end.i.i:                                       ; preds = %amdgpu_ctx_get_hw_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %cond67.i) #8
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

amdgpu_ctx_to_drm_sched_prio.exit.i:              ; preds = %do.end.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i64.i, %sw.bb2.i.i, %sw.bb1.i.i, %amdgpu_ctx_get_hw_prio.exit.i.amdgpu_ctx_to_drm_sched_prio.exit.i_crit_edge
  %retval.0.i65.i = phi i32 [ 1, %do.end.i.i ], [ 2, %sw.bb5.i.i ], [ 2, %sw.bb4.i.i ], [ 1, %sw.bb3.i64.i ], [ 0, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ -2, %amdgpu_ctx_get_hw_prio.exit.i.amdgpu_ctx_to_drm_sched_prio.exit.i_crit_edge ]
  %24 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %hw_ip, i32 9) #8, !srcloc !36
  %and.i = and i32 %24, %hw_ip
  %arrayidx10.i = getelementptr %struct.amdgpu_device, ptr %5, i32 0, i32 93, i32 %and.i, i32 %spec.store.select.i.i
  %sched11.i = getelementptr %struct.amdgpu_device, ptr %5, i32 0, i32 93, i32 %and.i, i32 %spec.store.select.i.i, i32 1
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10.i, align 4
  %27 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and.i, label %amdgpu_ctx_to_drm_sched_prio.exit.i.if.end24.i_crit_edge [
    i32 7, label %amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge
    i32 6, label %amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge35
    i32 5, label %amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge36
    i32 3, label %amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge37
  ]

amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge37: ; preds = %amdgpu_ctx_to_drm_sched_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge36: ; preds = %amdgpu_ctx_to_drm_sched_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge35: ; preds = %amdgpu_ctx_to_drm_sched_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge: ; preds = %amdgpu_ctx_to_drm_sched_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

amdgpu_ctx_to_drm_sched_prio.exit.i.if.end24.i_crit_edge: ; preds = %amdgpu_ctx_to_drm_sched_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then22.i:                                      ; preds = %amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge, %amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge35, %amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge36, %amdgpu_ctx_to_drm_sched_prio.exit.i.if.then22.i_crit_edge37
  %call23.i = tail call ptr @drm_sched_pick_best(ptr noundef %sched11.i, i32 noundef %26) #8
  %28 = ptrtoint ptr %sched.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call23.i, ptr %sched.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %amdgpu_ctx_to_drm_sched_prio.exit.i.if.end24.i_crit_edge
  %scheds.0.i = phi ptr [ %sched.i, %if.then22.i ], [ %sched11.i, %amdgpu_ctx_to_drm_sched_prio.exit.i.if.end24.i_crit_edge ]
  %num_scheds.0.i = phi i32 [ 1, %if.then22.i ], [ %26, %amdgpu_ctx_to_drm_sched_prio.exit.i.if.end24.i_crit_edge ]
  %entity25.i = getelementptr inbounds %struct.amdgpu_ctx_entity, ptr %call9.i.i.i, i32 0, i32 1
  %guilty.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 11
  %call26.i = call i32 @drm_sched_entity_init(ptr noundef %entity25.i, i32 noundef %retval.0.i65.i, ptr noundef %scheds.0.i, i32 noundef %num_scheds.0.i, ptr noundef %guilty.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %amdgpu_ctx_init_entity.exit, label %error_free_entity.i

error_free_entity.i:                              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  br label %amdgpu_ctx_init_entity.exit.thread

amdgpu_ctx_init_entity.exit.thread:               ; preds = %error_free_entity.i, %if.then10.amdgpu_ctx_init_entity.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then10.amdgpu_ctx_init_entity.exit.thread_crit_edge ], [ %call26.i, %error_free_entity.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched.i) #8
  br label %cleanup

amdgpu_ctx_init_entity.exit:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx31.i = getelementptr %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 6, i32 %and.i, i32 %ring
  %29 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i.i, ptr %arrayidx31.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched.i) #8
  br label %if.end13

if.end13:                                         ; preds = %amdgpu_ctx_init_entity.exit, %if.end6.if.end13_crit_edge
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx8, align 4
  %entity17 = getelementptr inbounds %struct.amdgpu_ctx_entity, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %entity to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entity17, ptr %entity, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %amdgpu_ctx_init_entity.exit.thread, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %if.then5 ], [ 0, %if.end13 ], [ %retval.0.i.ph, %amdgpu_ctx_init_entity.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ctx_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %ctx_id = getelementptr inbounds %struct.drm_amdgpu_ctx_in, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx_id, align 8
  %priority1 = getelementptr inbounds %struct.drm_amdgpu_ctx_in, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %priority1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %5, label %entry.amdgpu_ctx_priority_is_valid.exit_crit_edge [
    i32 -2048, label %entry._crit_edge
    i32 -1023, label %entry._crit_edge59
    i32 -512, label %entry._crit_edge60
    i32 0, label %entry._crit_edge61
    i32 512, label %entry._crit_edge62
    i32 1023, label %entry._crit_edge63
  ]

entry._crit_edge63:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %7

entry._crit_edge62:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %7

entry._crit_edge61:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %7

entry._crit_edge60:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %7

entry._crit_edge59:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %7

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %7

entry.amdgpu_ctx_priority_is_valid.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_priority_is_valid.exit

7:                                                ; preds = %entry._crit_edge, %entry._crit_edge59, %entry._crit_edge60, %entry._crit_edge61, %entry._crit_edge62, %entry._crit_edge63
  br label %amdgpu_ctx_priority_is_valid.exit

amdgpu_ctx_priority_is_valid.exit:                ; preds = %7, %entry.amdgpu_ctx_priority_is_valid.exit_crit_edge
  %8 = phi i32 [ %5, %7 ], [ 0, %entry.amdgpu_ctx_priority_is_valid.exit_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %10, label %amdgpu_ctx_priority_is_valid.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
  ]

amdgpu_ctx_priority_is_valid.exit.cleanup_crit_edge: ; preds = %amdgpu_ctx_priority_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %amdgpu_ctx_priority_is_valid.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 324) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.bb.amdgpu_ctx_alloc.exit_crit_edge, label %if.end.i

sw.bb.amdgpu_ctx_alloc.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_alloc.exit

if.end.i:                                         ; preds = %sw.bb
  %lock.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 5, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %ctx_handles.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 5, i32 2
  %call1.i = tail call i32 @idr_alloc(ptr noundef %ctx_handles.i, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 4096, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %amdgpu_ctx_alloc.exit

if.end4.i:                                        ; preds = %if.end.i
  %13 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %8, label %if.end4.i.if.then7.i_crit_edge [
    i32 -2048, label %if.end4.i.if.end.i.i.i_crit_edge
    i32 -1023, label %if.end4.i.if.end.i.i.i_crit_edge64
    i32 -512, label %if.end4.i.if.end.i.i.i_crit_edge65
    i32 0, label %if.end4.i.if.end.i.i.i_crit_edge66
    i32 512, label %if.end4.i.if.end.i.i.i_crit_edge67
    i32 1023, label %if.end4.i.if.end.i.i.i_crit_edge68
  ]

if.end4.i.if.end.i.i.i_crit_edge68:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end4.i.if.end.i.i.i_crit_edge67:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end4.i.if.end.i.i.i_crit_edge66:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end4.i.if.end.i.i.i_crit_edge65:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end4.i.if.end.i.i.i_crit_edge64:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end4.i.if.end.i.i.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.end.i.i.i:                                     ; preds = %if.end4.i.if.end.i.i.i_crit_edge, %if.end4.i.if.end.i.i.i_crit_edge64, %if.end4.i.if.end.i.i.i_crit_edge65, %if.end4.i.if.end.i.i.i_crit_edge66, %if.end4.i.if.end.i.i.i_crit_edge67, %if.end4.i.if.end.i.i.i_crit_edge68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.i.i = icmp slt i32 %8, 1
  br i1 %cmp.i.i.i, label %if.end.i.i.i.amdgpu_ctx_init.exit.i_crit_edge, label %if.end2.i.i.i

if.end.i.i.i.amdgpu_ctx_init.exit.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_init.exit.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  %call3.i.i.i = tail call zeroext i1 @capable(i32 noundef 23) #8
  br i1 %call3.i.i.i, label %if.end2.i.i.i.amdgpu_ctx_init.exit.i_crit_edge, label %if.end5.i.i.i

if.end2.i.i.i.amdgpu_ctx_init.exit.i_crit_edge:   ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_init.exit.i

if.end5.i.i.i:                                    ; preds = %if.end2.i.i.i
  %call6.i.i.i = tail call zeroext i1 @drm_is_current_master(ptr noundef %filp) #8
  br i1 %call6.i.i.i, label %if.end5.i.i.i.amdgpu_ctx_init.exit.i_crit_edge, label %if.end5.i.i.i.if.then7.i_crit_edge

if.end5.i.i.i.if.then7.i_crit_edge:               ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.end5.i.i.i.amdgpu_ctx_init.exit.i_crit_edge:   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_init.exit.i

amdgpu_ctx_init.exit.i:                           ; preds = %if.end5.i.i.i.amdgpu_ctx_init.exit.i_crit_edge, %if.end2.i.i.i.amdgpu_ctx_init.exit.i_crit_edge, %if.end.i.i.i.amdgpu_ctx_init.exit.i_crit_edge
  %14 = call ptr @memset(ptr %call7.i.i, i32 0, i32 324)
  %adev1.i.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %adev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %adev1.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #8
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %call7.i.i, align 8
  %ring_lock.i.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %ring_lock.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @amdgpu_ctx_init.__key, i16 noundef signext 3) #8
  %lock.i.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @amdgpu_ctx_init.__key.9) #8
  %gpu_reset_counter.i.i = getelementptr i8, ptr %dev, i32 21896
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gpu_reset_counter.i.i, i32 noundef 4) #8
  %17 = ptrtoint ptr %gpu_reset_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %gpu_reset_counter.i.i, align 4
  %reset_counter.i.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %reset_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reset_counter.i.i, align 8
  %reset_counter_query.i.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %reset_counter_query.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %reset_counter_query.i.i, align 4
  %vram_lost_counter.i.i = getelementptr i8, ptr %dev, i32 21900
  %call.i.i24.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_lost_counter.i.i, i32 noundef 4) #8
  %21 = ptrtoint ptr %vram_lost_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %vram_lost_counter.i.i, align 4
  %vram_lost_counter9.i.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %vram_lost_counter9.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %vram_lost_counter9.i.i, align 8
  %init_priority.i.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call7.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %init_priority.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %8, ptr %init_priority.i.i, align 4
  %override_priority.i.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call7.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %override_priority.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2048, ptr %override_priority.i.i, align 8
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end5.i.i.i.if.then7.i_crit_edge, %if.end4.i.if.then7.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %if.end4.i.if.then7.i_crit_edge ], [ -13, %if.end5.i.i.i.if.then7.i_crit_edge ]
  %call9.i = tail call ptr @idr_remove(ptr noundef %ctx_handles.i, i32 noundef %call1.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %amdgpu_ctx_init.exit.i
  %id.0 = phi i32 [ 0, %if.then7.i ], [ %call1.i, %amdgpu_ctx_init.exit.i ]
  %retval.0.i31.i = phi i32 [ %retval.0.i.ph.i, %if.then7.i ], [ 0, %amdgpu_ctx_init.exit.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %amdgpu_ctx_alloc.exit

amdgpu_ctx_alloc.exit:                            ; preds = %if.end10.i, %if.then2.i, %sw.bb.amdgpu_ctx_alloc.exit_crit_edge
  %id.1 = phi i32 [ %3, %sw.bb.amdgpu_ctx_alloc.exit_crit_edge ], [ %3, %if.then2.i ], [ %id.0, %if.end10.i ]
  %retval.0.i28 = phi i32 [ -12, %sw.bb.amdgpu_ctx_alloc.exit_crit_edge ], [ %call1.i, %if.then2.i ], [ %retval.0.i31.i, %if.end10.i ]
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %id.1, ptr %data, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %amdgpu_ctx_priority_is_valid.exit
  %lock.i29 = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 5, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i29, i32 noundef 0) #8
  %ctx_handles.i30 = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 5, i32 2
  %call.i = tail call ptr @idr_remove(ptr noundef %ctx_handles.i30, i32 noundef %3) #8
  %tobool.not.i31 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i31, label %sw.bb5.amdgpu_ctx_free.exit_crit_edge, label %if.then.i

sw.bb5.amdgpu_ctx_free.exit_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_free.exit

if.then.i:                                        ; preds = %sw.bb5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.amdgpu_ctx_free.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.amdgpu_ctx_free.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_free.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #8
  br label %amdgpu_ctx_free.exit

if.then.i.i:                                      ; preds = %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %for.body3.preheader.i.i

for.body3.preheader.i.i:                          ; preds = %for.inc9.i.i.for.body3.preheader.i.i_crit_edge, %if.then.i.i
  %i.023.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc10.i.i, %for.inc9.i.i.for.body3.preheader.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [9 x i32], ptr @amdgpu_ctx_num_entities, i32 0, i32 %i.023.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %29, i32 1) #8
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc.i.i.for.body3.i.i_crit_edge, %for.body3.preheader.i.i
  %j.022.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ 0, %for.body3.preheader.i.i ]
  %arrayidx5.i.i = getelementptr %struct.amdgpu_ctx, ptr %call.i, i32 0, i32 6, i32 %i.023.i.i, i32 %j.022.i.i
  %30 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx5.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %for.body3.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body3.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %entity.i.i = getelementptr inbounds %struct.amdgpu_ctx_entity, ptr %31, i32 0, i32 1
  tail call void @drm_sched_entity_destroy(ptr noundef %entity.i.i) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body3.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %j.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.inc9.i.i, label %for.inc.i.i.for.body3.i.i_crit_edge

for.inc.i.i.for.body3.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i.i

for.inc9.i.i:                                     ; preds = %for.inc.i.i
  %inc10.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond25.not.i.i = icmp eq i32 %inc10.i.i, 9
  br i1 %exitcond25.not.i.i, label %amdgpu_ctx_do_release.exit.i, label %for.inc9.i.i.for.body3.preheader.i.i_crit_edge

for.inc9.i.i.for.body3.preheader.i.i_crit_edge:   ; preds = %for.inc9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.preheader.i.i

amdgpu_ctx_do_release.exit.i:                     ; preds = %for.inc9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @amdgpu_ctx_fini(ptr noundef nonnull %call.i) #8
  br label %amdgpu_ctx_free.exit

amdgpu_ctx_free.exit:                             ; preds = %amdgpu_ctx_do_release.exit.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.amdgpu_ctx_free.exit_crit_edge, %sw.bb5.amdgpu_ctx_free.exit_crit_edge
  %cond.i = phi i32 [ -22, %sw.bb5.amdgpu_ctx_free.exit_crit_edge ], [ 0, %if.end5.i.i.i.i.i.amdgpu_ctx_free.exit_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %amdgpu_ctx_do_release.exit.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i29) #8
  br label %cleanup

sw.bb7:                                           ; preds = %amdgpu_ctx_priority_is_valid.exit
  %tobool.not.i33 = icmp eq ptr %1, null
  br i1 %tobool.not.i33, label %sw.bb7.cleanup_crit_edge, label %if.end.i37

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i37:                                       ; preds = %sw.bb7
  %lock.i34 = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 5, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i34, i32 noundef 0) #8
  %ctx_handles.i35 = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 5, i32 2
  %call.i36 = tail call ptr @idr_find(ptr noundef %ctx_handles.i35, i32 noundef %3) #8
  %tobool1.not.i = icmp eq ptr %call.i36, null
  br i1 %tobool1.not.i, label %if.end.i37.cleanup.sink.split.i_crit_edge, label %if.end4.i39

if.end.i37.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end4.i39:                                      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %data, align 8
  %33 = ptrtoint ptr %ctx_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ctx_id, align 8
  %gpu_reset_counter.i = getelementptr i8, ptr %dev, i32 21896
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gpu_reset_counter.i, i32 noundef 4) #8
  %34 = ptrtoint ptr %gpu_reset_counter.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %gpu_reset_counter.i, align 4
  %reset_counter_query.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call.i36, i32 0, i32 3
  %36 = ptrtoint ptr %reset_counter_query.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reset_counter_query.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp.i38 = icmp eq i32 %37, %35
  %spec.select.i = select i1 %cmp.i38, i32 0, i32 3
  %38 = ptrtoint ptr %priority1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select.i, ptr %priority1, align 4
  %39 = ptrtoint ptr %reset_counter_query.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %35, ptr %reset_counter_query.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end4.i39, %if.end.i37.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ 0, %if.end4.i39 ], [ -22, %if.end.i37.cleanup.sink.split.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i34) #8
  br label %cleanup

sw.bb9:                                           ; preds = %amdgpu_ctx_priority_is_valid.exit
  %ras.i = getelementptr i8, ptr %dev, i32 82000
  %40 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ras.i, align 8
  %tobool.not.i41 = icmp eq ptr %1, null
  br i1 %tobool.not.i41, label %sw.bb9.cleanup_crit_edge, label %if.end.i46

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i46:                                       ; preds = %sw.bb9
  %lock.i42 = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 5, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i42, i32 noundef 0) #8
  %ctx_handles.i43 = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 5, i32 2
  %call.i44 = tail call ptr @idr_find(ptr noundef %ctx_handles.i43, i32 noundef %3) #8
  %tobool1.not.i45 = icmp eq ptr %call.i44, null
  br i1 %tobool1.not.i45, label %if.end.i46.cleanup.sink.split.i52_crit_edge, label %if.end4.i50

if.end.i46.cleanup.sink.split.i52_crit_edge:      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i52

if.end4.i50:                                      ; preds = %if.end.i46
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %data, align 8
  %43 = ptrtoint ptr %ctx_id to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ctx_id, align 8
  %reset_counter.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call.i44, i32 0, i32 2
  %44 = ptrtoint ptr %reset_counter.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reset_counter.i, align 4
  %gpu_reset_counter.i48 = getelementptr i8, ptr %dev, i32 21896
  %call.i.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %gpu_reset_counter.i48, i32 noundef 4) #8
  %46 = ptrtoint ptr %gpu_reset_counter.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %gpu_reset_counter.i48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp.not.i = icmp eq i32 %45, %47
  br i1 %cmp.not.i, label %if.end4.i50.if.end8.i_crit_edge, label %if.then6.i

if.end4.i50.if.end8.i_crit_edge:                  ; preds = %if.end4.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i50
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %data, align 8
  %or.i = or i64 %49, 1
  store i64 %or.i, ptr %data, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i50.if.end8.i_crit_edge
  %vram_lost_counter.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call.i44, i32 0, i32 4
  %50 = ptrtoint ptr %vram_lost_counter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vram_lost_counter.i, align 4
  %vram_lost_counter9.i = getelementptr i8, ptr %dev, i32 21900
  %call.i.i70.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_lost_counter9.i, i32 noundef 4) #8
  %52 = ptrtoint ptr %vram_lost_counter9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %vram_lost_counter9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp11.not.i = icmp eq i32 %51, %53
  br i1 %cmp11.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.then12.i

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %data, align 8
  %or14.i = or i64 %55, 2
  store i64 %or14.i, ptr %data, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end15.i_crit_edge
  %guilty.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call.i44, i32 0, i32 11
  %call.i.i71.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %guilty.i, i32 noundef 4) #8
  %56 = ptrtoint ptr %guilty.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %guilty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool17.not.i = icmp eq i32 %57, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then18.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %data, align 8
  %or20.i = or i64 %59, 4
  store i64 %or20.i, ptr %data, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end21.i_crit_edge
  %ras_enabled.i = getelementptr i8, ptr %dev, i32 91656
  %60 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ras_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool22.not.i = icmp eq i32 %61, 0
  %tobool23.not.i = icmp eq ptr %41, null
  %or.cond.i = select i1 %tobool22.not.i, i1 true, i1 %tobool23.not.i
  br i1 %or.cond.i, label %if.end21.i.cleanup.sink.split.i52_crit_edge, label %if.then24.i

if.end21.i.cleanup.sink.split.i52_crit_edge:      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i52

if.then24.i:                                      ; preds = %if.end21.i
  %ras_ce_count.i = getelementptr inbounds %struct.amdgpu_ras, ptr %41, i32 0, i32 20
  %call.i.i72.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ras_ce_count.i, i32 noundef 4) #8
  %62 = ptrtoint ptr %ras_ce_count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %ras_ce_count.i, align 4
  %ras_ue_count.i = getelementptr inbounds %struct.amdgpu_ras, ptr %41, i32 0, i32 19
  %call.i.i73.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ras_ue_count.i, i32 noundef 4) #8
  %64 = ptrtoint ptr %ras_ue_count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %ras_ue_count.i, align 4
  %ras_counter_ce.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call.i44, i32 0, i32 12
  %66 = ptrtoint ptr %ras_counter_ce.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ras_counter_ce.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %67)
  %cmp27.not.i = icmp eq i32 %63, %67
  br i1 %cmp27.not.i, label %if.then24.i.if.end32.i_crit_edge, label %if.then28.i

if.then24.i.if.end32.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %ras_counter_ce.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %63, ptr %ras_counter_ce.i, align 4
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %data, align 8
  %or31.i = or i64 %70, 8
  store i64 %or31.i, ptr %data, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %if.then24.i.if.end32.i_crit_edge
  %ras_counter_ue.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call.i44, i32 0, i32 13
  %71 = ptrtoint ptr %ras_counter_ue.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ras_counter_ue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %72)
  %cmp33.not.i = icmp eq i32 %65, %72
  br i1 %cmp33.not.i, label %if.end32.i.if.end38.i_crit_edge, label %if.then34.i

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %ras_counter_ue.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %65, ptr %ras_counter_ue.i, align 4
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %data, align 8
  %or37.i = or i64 %75, 16
  store i64 %or37.i, ptr %data, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.end32.i.if.end38.i_crit_edge
  %ras_counte_delay_work.i = getelementptr inbounds %struct.amdgpu_ras, ptr %41, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %76 = load ptr, ptr @system_wq, align 4
  %call.i.i74.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %ras_counte_delay_work.i, i32 noundef 300) #8
  br label %cleanup.sink.split.i52

cleanup.sink.split.i52:                           ; preds = %if.end38.i, %if.end21.i.cleanup.sink.split.i52_crit_edge, %if.end.i46.cleanup.sink.split.i52_crit_edge
  %retval.0.ph.i51 = phi i32 [ -22, %if.end.i46.cleanup.sink.split.i52_crit_edge ], [ 0, %if.end38.i ], [ 0, %if.end21.i.cleanup.sink.split.i52_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i42) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i52, %sw.bb9.cleanup_crit_edge, %cleanup.sink.split.i, %sw.bb7.cleanup_crit_edge, %amdgpu_ctx_free.exit, %amdgpu_ctx_alloc.exit, %amdgpu_ctx_priority_is_valid.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %amdgpu_ctx_priority_is_valid.exit.cleanup_crit_edge ], [ %cond.i, %amdgpu_ctx_free.exit ], [ %retval.0.i28, %amdgpu_ctx_alloc.exit ], [ -22, %sw.bb7.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -22, %sw.bb9.cleanup_crit_edge ], [ %retval.0.ph.i51, %cleanup.sink.split.i52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_ctx_get(ptr noundef %fpriv, i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fpriv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.amdgpu_fpriv, ptr %fpriv, i32 0, i32 5, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %ctx_handles = getelementptr inbounds %struct.amdgpu_fpriv, ptr %fpriv, i32 0, i32 5, i32 2
  %call = tail call ptr @idr_find(ptr noundef %ctx_handles, i32 noundef %id) #8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then2.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !42

if.then2.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then2
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end3_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !39

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end3_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then2.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then2.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end3

if.end3:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ctx_put(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ctx, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ctx, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr nonnull %ctx, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %ctx, ptr nonnull %ctx, i32 1, ptr nonnull elementtype(i32) %ctx) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !39

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %ctx, i32 noundef 3) #8
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  br label %for.body3.preheader.i

for.body3.preheader.i:                            ; preds = %for.inc9.i.for.body3.preheader.i_crit_edge, %if.then.i
  %i.023.i = phi i32 [ 0, %if.then.i ], [ %inc10.i, %for.inc9.i.for.body3.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x i32], ptr @amdgpu_ctx_num_entities, i32 0, i32 %i.023.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %2, i32 1) #8
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.body3.preheader.i
  %j.022.i = phi i32 [ %inc.i, %for.inc.i.for.body3.i_crit_edge ], [ 0, %for.body3.preheader.i ]
  %arrayidx5.i = getelementptr %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 6, i32 %i.023.i, i32 %j.022.i
  %3 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx5.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body3.i.for.inc.i_crit_edge, label %if.end.i

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  %entity.i = getelementptr inbounds %struct.amdgpu_ctx_entity, ptr %4, i32 0, i32 1
  tail call void @drm_sched_entity_destroy(ptr noundef %entity.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body3.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc9.i, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

for.inc9.i:                                       ; preds = %for.inc.i
  %inc10.i = add nuw nsw i32 %i.023.i, 1
  %exitcond25.not.i = icmp eq i32 %inc10.i, 9
  br i1 %exitcond25.not.i, label %amdgpu_ctx_do_release.exit, label %for.inc9.i.for.body3.preheader.i_crit_edge

for.inc9.i.for.body3.preheader.i_crit_edge:       ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.preheader.i

amdgpu_ctx_do_release.exit:                       ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @amdgpu_ctx_fini(ptr noundef nonnull %ctx) #8
  br label %return

return:                                           ; preds = %amdgpu_ctx_do_release.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end5.i.i.i.i.return_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %amdgpu_ctx_do_release.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ctx_add_fence(ptr noundef %ctx, ptr nocapture noundef %entity, ptr noundef %fence, ptr noundef writeonly %handle) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %entity, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_jobs to i32))
  %2 = load i32, ptr @amdgpu_sched_jobs, align 4
  %sub = add i32 %2, -1
  %3 = trunc i64 %1 to i32
  %conv1 = and i32 %sub, %3
  %fences = getelementptr i8, ptr %entity, i32 184
  %arrayidx = getelementptr [0 x ptr], ptr %fences, i32 0, i32 %conv1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %do.body

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.if.end12_crit_edge

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i:                                         ; preds = %do.body
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end.i.do.body6_crit_edge, label %land.lhs.true.i, !prof !43

if.end.i.do.body6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %11(ptr noundef nonnull %5) #8
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.do.body6_crit_edge, !prof !44

land.lhs.true.i.do.body6_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %5) #8
  br label %if.end12

do.body6:                                         ; preds = %land.lhs.true.i.do.body6_crit_edge, %if.end.i.do.body6_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 549, 0\0A.popsection", ""() #8, !srcloc !45
  unreachable

if.end12:                                         ; preds = %if.then5.i, %do.body.if.end12_crit_edge, %entry.if.end12_crit_edge
  %tobool.not.i32 = icmp eq ptr %fence, null
  br i1 %tobool.not.i32, label %if.end12.dma_fence_get.exit_crit_edge, label %if.then.i

if.end12.dma_fence_get.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end12
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !42

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !39

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end12.dma_fence_get.exit_crit_edge
  %ring_lock = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %ring_lock) #8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fence, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %add.ptr, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ring_lock) #8
  br i1 %tobool.not, label %dma_fence_get.exit.dma_fence_put.exit_crit_edge, label %if.then.i37

dma_fence_get.exit.dma_fence_put.exit_crit_edge:  ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then.i37:                                      ; preds = %dma_fence_get.exit
  %refcount.i35 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i35, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %refcount.i35, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i35, ptr %refcount.i35, i32 1, ptr elementtype(i32) %refcount.i35) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i38 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i38, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i35, i32 noundef 3) #8
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @dma_fence_release(ptr noundef %refcount.i35) #8, !callees !46
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %dma_fence_get.exit.dma_fence_put.exit_crit_edge
  %tobool18.not = icmp eq ptr %handle, null
  br i1 %tobool18.not, label %dma_fence_put.exit.if.end20_crit_edge, label %if.then19

dma_fence_put.exit.if.end20_crit_edge:            ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %1, ptr %handle, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %dma_fence_put.exit.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_ctx_get_fence(ptr noundef %ctx, ptr nocapture noundef readonly %entity, i64 noundef %seq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %entity, i32 -8
  %ring_lock = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %ring_lock) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %seq)
  %cmp = icmp eq i64 %seq, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  %sub = add i64 %1, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %seq.addr.0 = phi i64 [ %sub, %if.then ], [ %seq, %entry.if.end_crit_edge ]
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seq.addr.0, i64 %3)
  %cmp2.not = icmp ult i64 %seq.addr.0, %3
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_jobs to i32))
  %4 = load i32, ptr @amdgpu_sched_jobs, align 4
  %conv = sext i32 %4 to i64
  %add = add i64 %seq.addr.0, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp7 = icmp ult i64 %add, %3
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %fences = getelementptr i8, ptr %entity, i32 184
  %sub12 = add i32 %4, -1
  %5 = trunc i64 %seq.addr.0 to i32
  %idxprom = and i32 %sub12, %5
  %arrayidx = getelementptr [0 x ptr], ptr %fences, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end11.cleanup_crit_edge, label %if.then.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end11
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !42

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !39

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ], [ %7, %if.end11.cleanup_crit_edge ], [ %7, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %7, %if.end15.sink.split.i.i.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %ring_lock) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ctx_priority_override(ptr nocapture noundef %ctx, i32 noundef %priority) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %override_priority = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %override_priority to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %priority, ptr %override_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2048, i32 %priority)
  %cmp = icmp eq i32 %priority, -2048
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %init_priority = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 8
  %1 = ptrtoint ptr %init_priority to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %init_priority, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ %priority, %entry.cond.end_crit_edge ]
  %adev1.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 1
  %init_priority.i.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 8
  br label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %for.inc12.for.body6.lr.ph_crit_edge, %cond.end
  %i.031 = phi i32 [ 0, %cond.end ], [ %inc13, %for.inc12.for.body6.lr.ph_crit_edge ]
  %arrayidx = getelementptr [9 x i32], ptr @amdgpu_ctx_num_entities, i32 0, i32 %i.031
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.031)
  %cmp.i = icmp eq i32 %i.031, 1
  %umax = call i32 @llvm.umax.i32(i32 %4, i32 1)
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.lr.ph
  %j.030 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc.for.body6_crit_edge ]
  %arrayidx8 = getelementptr %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 6, i32 %i.031, i32 %j.030
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body6.for.inc_crit_edge, label %if.end

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body6
  %7 = ptrtoint ptr %adev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev1.i, align 4
  %entity.i = getelementptr inbounds %struct.amdgpu_ctx_entity, ptr %6, i32 0, i32 1
  %9 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %cond, label %do.end.i.i [
    i32 -2048, label %if.end.amdgpu_ctx_to_drm_sched_prio.exit.i_crit_edge
    i32 -1023, label %sw.bb1.i.i
    i32 -512, label %sw.bb2.i.i
    i32 0, label %sw.bb3.i.i
    i32 512, label %sw.bb4.i.i
    i32 1023, label %sw.bb5.i.i
  ]

if.end.amdgpu_ctx_to_drm_sched_prio.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb2.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb3.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb4.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

sw.bb5.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %cond) #8
  br label %amdgpu_ctx_to_drm_sched_prio.exit.i

amdgpu_ctx_to_drm_sched_prio.exit.i:              ; preds = %do.end.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.amdgpu_ctx_to_drm_sched_prio.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %do.end.i.i ], [ 2, %sw.bb5.i.i ], [ 2, %sw.bb4.i.i ], [ 1, %sw.bb3.i.i ], [ 0, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ -2, %if.end.amdgpu_ctx_to_drm_sched_prio.exit.i_crit_edge ]
  tail call void @drm_sched_entity_set_priority(ptr noundef %entity.i, i32 noundef %retval.0.i.i) #8
  br i1 %cmp.i, label %if.then.i, label %amdgpu_ctx_to_drm_sched_prio.exit.i.for.inc_crit_edge

amdgpu_ctx_to_drm_sched_prio.exit.i.for.inc_crit_edge: ; preds = %amdgpu_ctx_to_drm_sched_prio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i:                                        ; preds = %amdgpu_ctx_to_drm_sched_prio.exit.i
  %10 = ptrtoint ptr %adev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev1.i, align 4
  %12 = ptrtoint ptr %override_priority to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %override_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2048, i32 %13)
  %cmp.i.i = icmp eq i32 %13, -2048
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.then.i.amdgpu_ctx_get_hw_prio.exit.i_crit_edge

if.then.i.amdgpu_ctx_get_hw_prio.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_get_hw_prio.exit.i

cond.true.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %init_priority.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %init_priority.i.i, align 4
  br label %amdgpu_ctx_get_hw_prio.exit.i

amdgpu_ctx_get_hw_prio.exit.i:                    ; preds = %cond.true.i.i, %if.then.i.amdgpu_ctx_get_hw_prio.exit.i_crit_edge
  %cond.i.i = phi i32 [ %15, %cond.true.i.i ], [ %13, %if.then.i.amdgpu_ctx_get_hw_prio.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %cond.i.i)
  %switch.selectcmp.case1.i.i.i = icmp eq i32 %cond.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %cond.i.i)
  %switch.selectcmp.case2.i.i.i = icmp eq i32 %cond.i.i, 1023
  %switch.selectcmp.i.i.i = or i1 %switch.selectcmp.case1.i.i.i, %switch.selectcmp.case2.i.i.i
  %16 = select i1 %switch.selectcmp.i.i.i, i32 2, i32 1
  %17 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 1, i32 9) #8, !srcloc !36
  %and.i.i = and i32 %17, 1
  %arrayidx9.i.i = getelementptr %struct.amdgpu_device, ptr %11, i32 0, i32 93, i32 %and.i.i, i32 %16
  %18 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp10.i.i = icmp eq i32 %19, 0
  %spec.store.select.i.i = select i1 %cmp10.i.i, i32 1, i32 %16
  %20 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %spec.store.select.i.i, i32 3) #8, !srcloc !36
  %and.i = and i32 %spec.store.select.i.i, %20
  %arrayidx7.i = getelementptr %struct.amdgpu_device, ptr %8, i32 0, i32 93, i32 1, i32 %and.i
  %sched.i = getelementptr %struct.amdgpu_device, ptr %8, i32 0, i32 93, i32 1, i32 %and.i, i32 1
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.i, align 4
  tail call void @drm_sched_entity_modify_sched(ptr noundef %entity.i, ptr noundef %sched.i, i32 noundef %22) #8
  br label %for.inc

for.inc:                                          ; preds = %amdgpu_ctx_get_hw_prio.exit.i, %amdgpu_ctx_to_drm_sched_prio.exit.i.for.inc_crit_edge, %for.body6.for.inc_crit_edge
  %inc = add nuw i32 %j.030, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc12, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc12:                                        ; preds = %for.inc
  %inc13 = add nuw nsw i32 %i.031, 1
  %exitcond33.not = icmp eq i32 %inc13, 9
  br i1 %exitcond33.not, label %for.end14, label %for.inc12.for.body6.lr.ph_crit_edge

for.inc12.for.body6.lr.ph_crit_edge:              ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.lr.ph

for.end14:                                        ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ctx_wait_prev_fence(ptr noundef %ctx, ptr nocapture noundef readonly %entity) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %entity, i32 -8
  %ring_lock = getelementptr inbounds %struct.amdgpu_ctx, ptr %ctx, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %ring_lock) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_jobs to i32))
  %2 = load i32, ptr @amdgpu_sched_jobs, align 4
  %sub = add i32 %2, -1
  %3 = trunc i64 %1 to i32
  %conv1 = and i32 %sub, %3
  %fences = getelementptr i8, ptr %entity, i32 184
  %arrayidx = getelementptr [0 x ptr], ptr %fences, i32 0, i32 %conv1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %dma_fence_get.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !42

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !39

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %if.end

dma_fence_get.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %ring_lock) #8
  br label %cleanup

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ring_lock) #8
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %5, i1 noundef zeroext true, i32 noundef 2147483647) #8
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %8)
  %cmp5.not = icmp eq i32 %8, -512
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end.if.then.i23_crit_edge, label %if.then7

if.end.if.then.i23_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i23

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %8) #8
  br label %if.then.i23

if.then.i23:                                      ; preds = %if.then7, %if.end.if.then.i23_crit_edge
  %call.i.i.i.i.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i24 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i24, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8, !callees !46
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %dma_fence_get.exit
  %retval.0 = phi i32 [ 0, %dma_fence_get.exit ], [ %8, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %8, %if.then10.i.i.i.i.i ], [ %8, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ctx_mgr_init(ptr noundef %mgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @amdgpu_ctx_mgr_init.__key) #8
  %ctx_handles = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_handles, ptr noundef nonnull @.str.11, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i.i = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 2, i32 0, i32 2
  %1 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idr_next.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ctx_mgr_entity_flush(ptr noundef %mgr, i32 noundef %timeout) local_unnamed_addr #1 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %ctx_handles = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 2
  %lock = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call42 = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp.not43 = icmp eq ptr %call42, null
  br i1 %cmp.not43, label %entry.for.end18_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.for.end18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end18

for.cond1.preheader:                              ; preds = %for.inc17.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %call45 = phi ptr [ %call, %for.inc17.for.cond1.preheader_crit_edge ], [ %call42, %entry.for.cond1.preheader_crit_edge ]
  %timeout.addr.044 = phi i32 [ %timeout.addr.3, %for.inc17.for.cond1.preheader_crit_edge ], [ %timeout, %entry.for.cond1.preheader_crit_edge ]
  br label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.inc14.for.body6.preheader_crit_edge, %for.cond1.preheader
  %i.040 = phi i32 [ 0, %for.cond1.preheader ], [ %inc15, %for.inc14.for.body6.preheader_crit_edge ]
  %timeout.addr.139 = phi i32 [ %timeout.addr.044, %for.cond1.preheader ], [ %timeout.addr.3, %for.inc14.for.body6.preheader_crit_edge ]
  %arrayidx = getelementptr [9 x i32], ptr @amdgpu_ctx_num_entities, i32 0, i32 %i.040
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %umax = call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %for.body6

for.body6:                                        ; preds = %cleanup.for.body6_crit_edge, %for.body6.preheader
  %j.038 = phi i32 [ %inc, %cleanup.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %timeout.addr.237 = phi i32 [ %timeout.addr.3, %cleanup.for.body6_crit_edge ], [ %timeout.addr.139, %for.body6.preheader ]
  %arrayidx8 = getelementptr %struct.amdgpu_ctx, ptr %call45, i32 0, i32 6, i32 %i.040, i32 %j.038
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body6.cleanup_crit_edge, label %if.end

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  %entity12 = getelementptr inbounds %struct.amdgpu_ctx_entity, ptr %4, i32 0, i32 1
  %call13 = call i32 @drm_sched_entity_flush(ptr noundef %entity12, i32 noundef %timeout.addr.237) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body6.cleanup_crit_edge
  %timeout.addr.3 = phi i32 [ %call13, %if.end ], [ %timeout.addr.237, %for.body6.cleanup_crit_edge ]
  %inc = add nuw i32 %j.038, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc14, label %cleanup.for.body6_crit_edge

cleanup.for.body6_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc14:                                        ; preds = %cleanup
  %inc15 = add nuw nsw i32 %i.040, 1
  %exitcond47.not = icmp eq i32 %inc15, 9
  br i1 %exitcond47.not, label %for.inc17, label %for.inc14.for.body6.preheader_crit_edge

for.inc14.for.body6.preheader_crit_edge:          ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.preheader

for.inc17:                                        ; preds = %for.inc14
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %add = add i32 %6, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc17.for.end18_crit_edge, label %for.inc17.for.cond1.preheader_crit_edge

for.inc17.for.cond1.preheader_crit_edge:          ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.inc17.for.end18_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end18

for.end18:                                        ; preds = %for.inc17.for.end18_crit_edge, %entry.for.end18_crit_edge
  %timeout.addr.0.lcssa = phi i32 [ %timeout, %entry.for.end18_crit_edge ], [ %timeout.addr.3, %for.inc17.for.end18_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret i32 %timeout.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_flush(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ctx_mgr_entity_fini(ptr noundef %mgr) local_unnamed_addr #1 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %ctx_handles = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call36 = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp.not37 = icmp eq ptr %call36, null
  br i1 %cmp.not37, label %entry.for.end21_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.body:                                         ; preds = %for.inc20.for.body_crit_edge, %entry.for.body_crit_edge
  %call38 = phi ptr [ %call, %for.inc20.for.body_crit_edge ], [ %call36, %entry.for.body_crit_edge ]
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call38, i32 noundef 4) #8
  %1 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %call38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2.not = icmp eq i32 %2, 1
  br i1 %cmp2.not, label %for.body.for.body8.preheader_crit_edge, label %if.then

for.body.for.body8.preheader_crit_edge:           ; preds = %for.body
  br label %for.body8.preheader

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, ptr noundef nonnull %call38) #8
  br label %for.inc20

for.body8.preheader:                              ; preds = %for.inc17.for.body8.preheader_crit_edge, %for.body.for.body8.preheader_crit_edge
  %i.034 = phi i32 [ %inc18, %for.inc17.for.body8.preheader_crit_edge ], [ 0, %for.body.for.body8.preheader_crit_edge ]
  %arrayidx = getelementptr [9 x i32], ptr @amdgpu_ctx_num_entities, i32 0, i32 %i.034
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %umax = call i32 @llvm.umax.i32(i32 %4, i32 1)
  br label %for.body8

for.body8:                                        ; preds = %cleanup.for.body8_crit_edge, %for.body8.preheader
  %j.033 = phi i32 [ %inc, %cleanup.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %arrayidx10 = getelementptr %struct.amdgpu_ctx, ptr %call38, i32 0, i32 6, i32 %i.034, i32 %j.033
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx10, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body8.cleanup_crit_edge, label %if.end12

for.body8.cleanup_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  %entity16 = getelementptr inbounds %struct.amdgpu_ctx_entity, ptr %6, i32 0, i32 1
  call void @drm_sched_entity_fini(ptr noundef %entity16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.body8.cleanup_crit_edge
  %inc = add nuw i32 %j.033, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc17, label %cleanup.for.body8_crit_edge

cleanup.for.body8_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

for.inc17:                                        ; preds = %cleanup
  %inc18 = add nuw nsw i32 %i.034, 1
  %exitcond39.not = icmp eq i32 %inc18, 9
  br i1 %exitcond39.not, label %for.inc17.for.inc20_crit_edge, label %for.inc17.for.body8.preheader_crit_edge

for.inc17.for.body8.preheader_crit_edge:          ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.preheader

for.inc17.for.inc20_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20

for.inc20:                                        ; preds = %for.inc17.for.inc20_crit_edge, %if.then
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %add = add i32 %8, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc20.for.end21_crit_edge, label %for.inc20.for.body_crit_edge

for.inc20.for.body_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc20.for.end21_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.end21:                                        ; preds = %for.inc20.for.end21_crit_edge, %entry.for.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ctx_mgr_fini(ptr noundef %mgr) local_unnamed_addr #1 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  tail call void @amdgpu_ctx_mgr_entity_fini(ptr noundef %mgr)
  %ctx_handles = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call10 = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp.not11 = icmp eq ptr %call10, null
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %call12 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call10, %entry.for.body_crit_edge ]
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call12, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  call void @llvm.prefetch.p0(ptr nonnull %call12, i32 1, i32 3, i32 1) #8
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call12, ptr nonnull %call12, i32 1, ptr nonnull elementtype(i32) %call12) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %kref_put.exit, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.then_crit_edge, label %if.then10.i.i.i.i, !prof !39

if.end5.i.i.i.i.if.then_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call12, i32 noundef 3) #8
  br label %if.then

kref_put.exit:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call fastcc void @amdgpu_ctx_fini(ptr noundef nonnull %call12) #8, !callees !46
  br label %for.inc

if.then:                                          ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.then_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, ptr noundef nonnull %call12) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %kref_put.exit
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %add = add i32 %3, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @idr_destroy(ptr noundef %ctx_handles) #8
  %lock = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 1
  call void @mutex_destroy(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_ctx_fini(ptr noundef %ref) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr inbounds %struct.amdgpu_ctx, ptr %ref, i32 0, i32 1
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond2.preheader:                              ; preds = %for.inc9.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %i.026 = phi i32 [ %inc10, %for.inc9.for.cond2.preheader_crit_edge ], [ 0, %entry.for.cond2.preheader_crit_edge ]
  br label %for.body4

for.body4:                                        ; preds = %amdgpu_ctx_fini_entity.exit.for.body4_crit_edge, %for.cond2.preheader
  %j.025 = phi i32 [ 0, %for.cond2.preheader ], [ %inc, %amdgpu_ctx_fini_entity.exit.for.body4_crit_edge ]
  %arrayidx5 = getelementptr %struct.amdgpu_ctx, ptr %ref, i32 0, i32 6, i32 %i.026, i32 %j.025
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body4.amdgpu_ctx_fini_entity.exit_crit_edge, label %for.cond.preheader.i

for.body4.amdgpu_ctx_fini_entity.exit_crit_edge:  ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ctx_fini_entity.exit

for.cond.preheader.i:                             ; preds = %for.body4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_jobs to i32))
  %4 = load i32, ptr @amdgpu_sched_jobs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5.i = icmp sgt i32 %4, 0
  br i1 %cmp5.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %dma_fence_put.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %dma_fence_put.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amdgpu_ctx_entity, ptr %3, i32 0, i32 2, i32 %i.06.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %for.body.i.dma_fence_put.exit.i_crit_edge, label %if.then.i.i

for.body.i.dma_fence_put.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #8
  br label %dma_fence_put.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @dma_fence_release(ptr noundef %refcount.i.i) #8, !callees !46
  br label %dma_fence_put.exit.i

dma_fence_put.exit.i:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, %for.body.i.dma_fence_put.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_jobs to i32))
  %8 = load i32, ptr @amdgpu_sched_jobs, align 4
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %dma_fence_put.exit.i.for.body.i_crit_edge, label %dma_fence_put.exit.i.for.end.i_crit_edge

dma_fence_put.exit.i.for.end.i_crit_edge:         ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

dma_fence_put.exit.i.for.body.i_crit_edge:        ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %dma_fence_put.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %amdgpu_ctx_fini_entity.exit

amdgpu_ctx_fini_entity.exit:                      ; preds = %for.end.i, %for.body4.amdgpu_ctx_fini_entity.exit_crit_edge
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %j.025, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc9, label %amdgpu_ctx_fini_entity.exit.for.body4_crit_edge

amdgpu_ctx_fini_entity.exit.for.body4_crit_edge:  ; preds = %amdgpu_ctx_fini_entity.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

for.inc9:                                         ; preds = %amdgpu_ctx_fini_entity.exit
  %inc10 = add nuw nsw i32 %i.026, 1
  %exitcond27.not = icmp eq i32 %inc10, 9
  br i1 %exitcond27.not, label %for.end11, label %for.inc9.for.cond2.preheader_crit_edge

for.inc9.for.cond2.preheader_crit_edge:           ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader

for.end11:                                        ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.amdgpu_ctx, ptr %ref, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %lock) #8
  tail call void @kfree(ptr noundef %ref) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_ctx_mgr_fence_usage(ptr noundef %mgr, i32 noundef %hwip, i32 noundef %idx, ptr noundef writeonly %elapsed) local_unnamed_addr #1 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp = icmp ugt i32 %idx, 3
  br i1 %cmp, label %entry.cleanup18_crit_edge, label %if.end

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end:                                           ; preds = %entry
  %ctx_handles = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 2
  %lock = getelementptr inbounds %struct.amdgpu_ctx_mgr, ptr %mgr, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call46 = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp1.not47 = icmp eq ptr %call46, null
  br i1 %cmp1.not47, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %call51 = phi ptr [ %call, %cleanup.for.body_crit_edge ], [ %call46, %if.end.for.body_crit_edge ]
  %max.050 = phi i64 [ %max.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %total.048 = phi i64 [ %total.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.amdgpu_ctx, ptr %call51, i32 0, i32 6, i32 %hwip, i32 %idx
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %call.i = call i64 @ktime_get() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_jobs to i32))
  %3 = load i32, ptr @amdgpu_sched_jobs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp93.not.i = icmp eq i32 %3, 0
  br i1 %cmp93.not.i, label %if.end4.if.end10_crit_edge, label %for.body.lr.ph.i

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %if.end4
  %ring_lock.i = getelementptr inbounds %struct.amdgpu_ctx, ptr %call51, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ttotal.0 = phi i64 [ 0, %for.body.lr.ph.i ], [ %ttotal.1, %cleanup.i.for.body.i_crit_edge ]
  %tmax.0 = phi i64 [ 0, %for.body.lr.ph.i ], [ %tmax.1, %cleanup.i.for.body.i_crit_edge ]
  %i.094.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %ring_lock.i) #8
  %arrayidx.i = getelementptr %struct.amdgpu_ctx_entity, ptr %2, i32 0, i32 2, i32 %i.094.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dma_fence_get.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %6 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !42

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !39

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end.i_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %if.end.i

dma_fence_get.exit.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %ring_lock.i) #8
  br label %cleanup.i

if.end.i:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ring_lock.i) #8
  %call3.i = call ptr @to_drm_sched_fence(ptr noundef nonnull %5) #8
  %flags.i.i = getelementptr inbounds %struct.dma_fence, ptr %call3.i, i32 0, i32 5
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i47.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i47.i, label %if.end.i.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.end.i.i:                                       ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.dma_fence, ptr %call3.i, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %signaled.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %signaled.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signaled.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.then.i51.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.then.i51.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i51.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call4.i.i = call zeroext i1 %13(ptr noundef %call3.i) #8
  br i1 %call4.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.if.then.i51.i_crit_edge

land.lhs.true.i.i.if.then.i51.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i51.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = call i32 @dma_fence_signal(ptr noundef %call3.i) #8
  br label %if.end6.i

if.then.i51.i:                                    ; preds = %land.lhs.true.i.i.if.then.i51.i_crit_edge, %if.end.i.i.if.then.i51.i_crit_edge
  %call.i.i.i.i.i.i.i50.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i52.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i52.i, label %if.end5.i.i.i.i.i.i.cleanup.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.i.cleanup.i_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #8
  br label %cleanup.i

if.then.i.i.i:                                    ; preds = %if.then.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @dma_fence_release(ptr noundef %refcount.i.i) #8, !callees !46
  br label %cleanup.i

if.end6.i:                                        ; preds = %if.then5.i.i, %if.end.i.if.end6.i_crit_edge
  %15 = getelementptr inbounds %struct.dma_fence, ptr %call3.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %17)
  %cmp.i.i.i = icmp sgt i64 %call.i, %17
  br i1 %cmp.i.i.i, label %if.end10.i, label %if.then.i59.i

if.then.i59.i:                                    ; preds = %if.end6.i
  %call.i.i.i.i.i.i.i56.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i57.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i57.i)
  %cmp.i.i.i.i.i58.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i57.i, 1
  br i1 %cmp.i.i.i.i.i58.i, label %if.then.i.i63.i, label %if.end5.i.i.i.i.i61.i

if.end5.i.i.i.i.i61.i:                            ; preds = %if.then.i59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i57.i)
  %.not.i.i.i.i.i60.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i57.i, 0
  br i1 %.not.i.i.i.i.i60.i, label %if.end5.i.i.i.i.i61.i.cleanup.i_crit_edge, label %if.then10.i.i.i.i.i62.i, !prof !39

if.end5.i.i.i.i.i61.i.cleanup.i_crit_edge:        ; preds = %if.end5.i.i.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then10.i.i.i.i.i62.i:                          ; preds = %if.end5.i.i.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #8
  br label %cleanup.i

if.then.i.i63.i:                                  ; preds = %if.then.i59.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @dma_fence_release(ptr noundef %refcount.i.i) #8, !callees !46
  br label %cleanup.i

if.end10.i:                                       ; preds = %if.end6.i
  %finished.i = getelementptr inbounds %struct.drm_sched_fence, ptr %call3.i, i32 0, i32 1
  %flags.i66.i = getelementptr inbounds %struct.drm_sched_fence, ptr %call3.i, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %flags.i66.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i66.i, align 4
  %and1.i.i67.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i67.i)
  %tobool.not.i68.i = icmp eq i32 %and1.i.i67.i, 0
  br i1 %tobool.not.i68.i, label %if.end.i72.i, label %if.end10.i.land.lhs.true.i_crit_edge

if.end10.i.land.lhs.true.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end.i72.i:                                     ; preds = %if.end10.i
  %ops.i69.i = getelementptr inbounds %struct.drm_sched_fence, ptr %call3.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %ops.i69.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i69.i, align 4
  %signaled.i70.i = getelementptr inbounds %struct.dma_fence_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %signaled.i70.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signaled.i70.i, align 4
  %tobool1.not.i71.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i71.i, label %if.end.i72.i.if.else.i_crit_edge, label %land.lhs.true.i74.i

if.end.i72.i.if.else.i_crit_edge:                 ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i74.i:                              ; preds = %if.end.i72.i
  %call4.i73.i = call zeroext i1 %24(ptr noundef %finished.i) #8
  br i1 %call4.i73.i, label %if.then5.i76.i, label %land.lhs.true.i74.i.if.else.i_crit_edge

land.lhs.true.i74.i.if.else.i_crit_edge:          ; preds = %land.lhs.true.i74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then5.i76.i:                                   ; preds = %land.lhs.true.i74.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i75.i = call i32 @dma_fence_signal(ptr noundef %finished.i) #8
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then5.i76.i, %if.end10.i.land.lhs.true.i_crit_edge
  %25 = getelementptr inbounds %struct.drm_sched_fence, ptr %call3.i, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %call.i)
  %cmp13.i = icmp slt i64 %27, %call.i
  br i1 %cmp13.i, label %if.then14.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i64 %27, %17
  %.pre.i = sub i64 %call.i, %17
  br label %if.then.i84.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %land.lhs.true.i74.i.if.else.i_crit_edge, %if.end.i72.i.if.else.i_crit_edge
  %sub16.i = sub i64 %call.i, %17
  br label %if.then.i84.i

if.then.i84.i:                                    ; preds = %if.else.i, %if.then14.i
  %sub19.pre-phi.i = phi i64 [ %.pre.i, %if.then14.i ], [ %sub16.i, %if.else.i ]
  %sub.i.pn = phi i64 [ %sub.i, %if.then14.i ], [ %sub16.i, %if.else.i ]
  %storemerge.i = add i64 %sub.i.pn, %ttotal.0
  %call.i.i.i.i.i.i.i81.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i82.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i82.i)
  %cmp.i.i.i.i.i83.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i82.i, 1
  br i1 %cmp.i.i.i.i.i83.i, label %if.then.i.i88.i, label %if.end5.i.i.i.i.i86.i

if.end5.i.i.i.i.i86.i:                            ; preds = %if.then.i84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i82.i)
  %.not.i.i.i.i.i85.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i82.i, 0
  br i1 %.not.i.i.i.i.i85.i, label %if.end5.i.i.i.i.i86.i.dma_fence_put.exit90.i_crit_edge, label %if.then10.i.i.i.i.i87.i, !prof !39

if.end5.i.i.i.i.i86.i.dma_fence_put.exit90.i_crit_edge: ; preds = %if.end5.i.i.i.i.i86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit90.i

if.then10.i.i.i.i.i87.i:                          ; preds = %if.end5.i.i.i.i.i86.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #8
  br label %dma_fence_put.exit90.i

if.then.i.i88.i:                                  ; preds = %if.then.i84.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @dma_fence_release(ptr noundef %refcount.i.i) #8, !callees !46
  br label %dma_fence_put.exit90.i

dma_fence_put.exit90.i:                           ; preds = %if.then.i.i88.i, %if.then10.i.i.i.i.i87.i, %if.end5.i.i.i.i.i86.i.dma_fence_put.exit90.i_crit_edge
  %29 = call i64 @llvm.smax.i64(i64 %sub19.pre-phi.i, i64 %tmax.0) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %dma_fence_put.exit90.i, %if.then.i.i63.i, %if.then10.i.i.i.i.i62.i, %if.end5.i.i.i.i.i61.i.cleanup.i_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup.i_crit_edge, %dma_fence_get.exit.i
  %ttotal.1 = phi i64 [ %ttotal.0, %dma_fence_get.exit.i ], [ %ttotal.0, %if.then.i.i.i ], [ %ttotal.0, %if.end5.i.i.i.i.i.i.cleanup.i_crit_edge ], [ %ttotal.0, %if.then10.i.i.i.i.i.i ], [ %storemerge.i, %dma_fence_put.exit90.i ], [ %ttotal.0, %if.then.i.i63.i ], [ %ttotal.0, %if.end5.i.i.i.i.i61.i.cleanup.i_crit_edge ], [ %ttotal.0, %if.then10.i.i.i.i.i62.i ]
  %tmax.1 = phi i64 [ %tmax.0, %dma_fence_get.exit.i ], [ %tmax.0, %if.then.i.i.i ], [ %tmax.0, %if.end5.i.i.i.i.i.i.cleanup.i_crit_edge ], [ %tmax.0, %if.then10.i.i.i.i.i.i ], [ %29, %dma_fence_put.exit90.i ], [ %tmax.0, %if.then.i.i63.i ], [ %tmax.0, %if.end5.i.i.i.i.i61.i.cleanup.i_crit_edge ], [ %tmax.0, %if.then10.i.i.i.i.i62.i ]
  %inc.i = add nuw i32 %i.094.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_jobs to i32))
  %30 = load i32, ptr @amdgpu_sched_jobs, align 4
  %cmp.i = icmp ult i32 %inc.i, %30
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %amdgpu_ctx_fence_time.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

amdgpu_ctx_fence_time.exit:                       ; preds = %cleanup.i
  %mul = shl i64 %ttotal.1, 14
  call void @__sanitizer_cov_trace_cmp8(i64 %tmax.1, i64 %mul)
  %cmp8 = icmp ugt i64 %tmax.1, %mul
  br i1 %cmp8, label %amdgpu_ctx_fence_time.exit.cleanup_crit_edge, label %amdgpu_ctx_fence_time.exit.if.end10_crit_edge

amdgpu_ctx_fence_time.exit.if.end10_crit_edge:    ; preds = %amdgpu_ctx_fence_time.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

amdgpu_ctx_fence_time.exit.cleanup_crit_edge:     ; preds = %amdgpu_ctx_fence_time.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %amdgpu_ctx_fence_time.exit.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %tmax.245 = phi i64 [ %tmax.1, %amdgpu_ctx_fence_time.exit.if.end10_crit_edge ], [ 0, %if.end4.if.end10_crit_edge ]
  %ttotal.244 = phi i64 [ %ttotal.1, %amdgpu_ctx_fence_time.exit.if.end10_crit_edge ], [ 0, %if.end4.if.end10_crit_edge ]
  %add = add i64 %ttotal.244, %total.048
  %31 = call i64 @llvm.smax.i64(i64 %tmax.245, i64 %max.050)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %amdgpu_ctx_fence_time.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %total.1 = phi i64 [ %total.048, %for.body.cleanup_crit_edge ], [ %total.048, %amdgpu_ctx_fence_time.exit.cleanup_crit_edge ], [ %add, %if.end10 ]
  %max.1 = phi i64 [ %max.050, %for.body.cleanup_crit_edge ], [ %max.050, %amdgpu_ctx_fence_time.exit.cleanup_crit_edge ], [ %31, %if.end10 ]
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %add13 = add i32 %33, 1
  store i32 %add13, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef %ctx_handles, ptr noundef nonnull %id) #8
  %cmp1.not = icmp eq ptr %call, null
  br i1 %cmp1.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %total.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %total.1, %cleanup.for.end_crit_edge ]
  %max.0.lcssa = phi i64 [ 0, %if.end.for.end_crit_edge ], [ %max.1, %cleanup.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  %tobool15.not = icmp eq ptr %elapsed, null
  br i1 %tobool15.not, label %for.end.cleanup18_crit_edge, label %if.then16

for.end.cleanup18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %elapsed to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %max.0.lcssa, ptr %elapsed, align 8
  br label %cleanup18

cleanup18:                                        ; preds = %if.then16, %for.end.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.0 = phi i64 [ 0, %entry.cleanup18_crit_edge ], [ %total.0.lcssa, %if.then16 ], [ %total.0.lcssa, %for.end.cleanup18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_sched_pick_best(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_is_current_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_set_priority(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_modify_sched(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_drm_sched_fence(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @amdgpu_ctx_num_entities, !1, !"amdgpu_ctx_num_entities", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 34, i32 20}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 284, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 290, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 295, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 656, i32 3}
!10 = !{ptr @amdgpu_ctx_mgr_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 664, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 704, i32 4}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 87, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @amdgpu_ctx_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 232, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @amdgpu_ctx_init.__key.9, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c", i32 233, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xa_init_flags.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 659219, i64 659236}
!37 = !{i64 2148300745}
!38 = !{i64 2148215209, i64 2148215241, i64 2148215270, i64 2148215304, i64 2148215335, i64 2148215358}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2149892488}
!41 = !{i64 2148212744, i64 2148212776, i64 2148212805, i64 2148212839, i64 2148212870, i64 2148212893}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"branch_weights", i32 1073205, i32 2146410443}
!44 = !{!"branch_weights", i32 2146410443, i32 1073205}
!45 = !{i64 2158765622, i64 2158766126, i64 2158765659, i64 2158765715, i64 2158765749, i64 2158765773, i64 2158765814, i64 2158765835, i64 2158765863, i64 2158765897}
!46 = distinct !{null, ptr @amdgpu_ctx_fini, ptr @dma_fence_release}
