; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.78, i64, i64, i32, %struct.kref, i32 }
%union.anon.78 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.amdgpu_pasid_cb = type { %struct.dma_fence_cb, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.amdgpu_vmid = type { %struct.list_head, %struct.amdgpu_sync, ptr, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.99, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.86 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.amdgpu_vmhub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_mman = type { %struct.ttm_device, i8, ptr, ptr, ptr, i8, %struct.mutex, %struct.drm_sched_entity, %struct.amdgpu_vram_mgr, %struct.amdgpu_gtt_mgr, %struct.amdgpu_preempt_mgr, i64, ptr, i64, ptr, i8, ptr, i64, i64, ptr, i32, ptr, i64, i64, ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.95] }
%struct.anon.95 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.96, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.anon.96 = type { %union.anon.97, [128 x i64] }
%union.anon.97 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.94, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.94 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.rcuwait = type { ptr }

@amdgpu_pasid_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Over limitation of reserved vmid\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_vmid_mgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&id_mgr->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu_pasid_ida.xa_lock\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_pasid_allocated = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", [44 x i8] zeroinitializer }, align 32
@trace_amdgpu_pasid_allocated.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_pasid_freed = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_pasid_freed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_vm_grab_id = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_vm_grab_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"amdgpu_pasid_ida\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 483, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 577, i32 3 }
@___asan_gen_.20 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 41, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 449, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 108, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 475, i32 6 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @amdgpu_pasid_ida, ptr @.str, ptr @amdgpu_vmid_mgr_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pasid_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vmid_mgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_pasid_alloc(i32 noundef %bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %bits, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1.not21 = icmp eq i32 %0, 0
  br i1 %cmp1.not21, label %entry.if.end7_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond:                                         ; preds = %for.body
  %cmp1.not = icmp eq i32 %sub, 0
  br i1 %cmp1.not, label %for.cond.if.end7_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end7_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %bits.addr.022 = phi i32 [ %sub, %for.cond.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %sub = add nsw i32 %bits.addr.022, -1
  %shl = shl nuw i32 1, %sub
  %notmask = shl nsw i32 -1, %bits.addr.022
  %sub3 = xor i32 %notmask, -1
  %call = tail call i32 @ida_alloc_range(ptr noundef nonnull @amdgpu_pasid_ida, i32 noundef %shl, i32 noundef %sub3, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp4.not = icmp eq i32 %call, -28
  br i1 %cmp4.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp5 = icmp sgt i32 %call, -1
  br i1 %cmp5, label %if.then6, label %for.end.if.end7_crit_edge

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_amdgpu_pasid_allocated(i32 noundef %call)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.end.if.end7_crit_edge, %for.cond.if.end7_crit_edge, %entry.if.end7_crit_edge
  %pasid.119 = phi i32 [ %call, %if.then6 ], [ %call, %for.end.if.end7_crit_edge ], [ -22, %entry.if.end7_crit_edge ], [ -28, %for.cond.if.end7_crit_edge ]
  ret i32 %pasid.119
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_pasid_allocated(i32 noundef %pasid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_pasid_allocated, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_pasid_allocated, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !34

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !35

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !36
  %call42 = tail call i32 @__traceiter_amdgpu_pasid_allocated(ptr noundef null, i32 noundef %pasid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %13 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !35

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_pasid_allocated, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_pasid_allocated, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_pasid_allocated.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_amdgpu_pasid_allocated.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 452, ptr noundef nonnull @.str.4) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  %31 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_pasid_free(i32 noundef %pasid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_amdgpu_pasid_freed(i32 noundef %pasid)
  tail call void @ida_free(ptr noundef nonnull @amdgpu_pasid_ida, i32 noundef %pasid) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_pasid_freed(i32 noundef %pasid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_pasid_freed, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_pasid_freed, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !34

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !35

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %call42 = tail call i32 @__traceiter_amdgpu_pasid_freed(ptr noundef null, i32 noundef %pasid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  %13 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !35

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_pasid_freed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_pasid_freed, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_pasid_freed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_amdgpu_pasid_freed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 457, ptr noundef nonnull @.str.4) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  %31 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_pasid_free_delayed(ptr noundef %resv, i32 noundef %pasid) local_unnamed_addr #0 align 64 {
entry:
  %fences = alloca ptr, align 4
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fences) #9
  %0 = ptrtoint ptr %fences to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fences, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #9
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %count, align 4, !annotation !42
  %call = call i32 @dma_resv_get_fences(ptr noundef %resv, ptr noundef null, ptr noundef nonnull %count, ptr noundef nonnull %fences) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.fallback_crit_edge

entry.fallback_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fallback

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else [
    i32 0, label %if.then1
    i32 1, label %if.then4
  ]

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_amdgpu_pasid_freed(i32 noundef %pasid) #9
  call void @ida_free(ptr noundef nonnull @amdgpu_pasid_ida, i32 noundef %pasid) #9
  br label %cleanup26

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fences, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %6) #9
  br label %if.end11

if.else:                                          ; preds = %if.end
  %call5 = call i64 @dma_fence_context_alloc(i32 noundef 1) #9
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %11 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fences, align 4
  %call6 = call ptr @dma_fence_array_create(i32 noundef %10, ptr noundef %12, i64 noundef %call5, i32 noundef 1, i1 noundef zeroext false) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %cleanup, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fences, align 4
  call void @kfree(ptr noundef %14) #9
  br label %fallback

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then4
  %fence.1 = phi ptr [ %8, %if.then4 ], [ %call6, %if.else.if.end11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 16) #12
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.end11
  %call.i = call i32 @dma_fence_wait_timeout(ptr noundef %fence.1, i1 noundef zeroext false, i32 noundef 2147483647) #9
  %tobool.not.i = icmp eq ptr %fence.1, null
  br i1 %tobool.not.i, label %if.then14.dma_fence_put.exit_crit_edge, label %if.then.i

if.then14.dma_fence_put.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.then14
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence.1, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !35

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.then14.dma_fence_put.exit_crit_edge
  call fastcc void @trace_amdgpu_pasid_freed(i32 noundef %pasid) #9
  call void @ida_free(ptr noundef nonnull @amdgpu_pasid_ida, i32 noundef %pasid) #9
  br label %cleanup26

if.else16:                                        ; preds = %if.end11
  %pasid17 = getelementptr inbounds %struct.amdgpu_pasid_cb, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %pasid17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %pasid, ptr %pasid17, align 4
  %call19 = call i32 @dma_fence_add_callback(ptr noundef %fence.1, ptr noundef nonnull %call7.i, ptr noundef nonnull @amdgpu_pasid_free_cb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else16.cleanup26_crit_edge, label %if.then21

if.else16.cleanup26_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup26

if.then21:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  call void @amdgpu_pasid_free_cb(ptr noundef %fence.1, ptr noundef nonnull %call7.i)
  br label %cleanup26

fallback:                                         ; preds = %cleanup, %entry.fallback_crit_edge
  %call25 = call i32 @dma_resv_wait_timeout(ptr noundef %resv, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 2147483647) #9
  call fastcc void @trace_amdgpu_pasid_freed(i32 noundef %pasid) #9
  call void @ida_free(ptr noundef nonnull @amdgpu_pasid_ida, i32 noundef %pasid) #9
  br label %cleanup26

cleanup26:                                        ; preds = %fallback, %if.then21, %if.else16.cleanup26_crit_edge, %dma_fence_put.exit, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fences) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_get_fences(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_array_create(i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %fence) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !35

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_pasid_free_cb(ptr noundef %fence, ptr noundef %_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pasid = getelementptr inbounds %struct.amdgpu_pasid_cb, ptr %_cb, i32 0, i32 1
  %0 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pasid, align 4
  tail call fastcc void @trace_amdgpu_pasid_freed(i32 noundef %1) #9
  tail call void @ida_free(ptr noundef nonnull @amdgpu_pasid_ida, i32 noundef %1) #9
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %entry.dma_fence_put.exit_crit_edge, label %if.then.i

entry.dma_fence_put.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !35

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %entry.dma_fence_put.exit_crit_edge
  tail call void @kfree(ptr noundef %_cb) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_vmid_had_gpu_reset(ptr noundef %adev, ptr nocapture noundef readonly %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_gpu_reset_count = getelementptr inbounds %struct.amdgpu_vmid, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %current_gpu_reset_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_gpu_reset_count, align 4
  %gpu_reset_counter = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 74
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gpu_reset_counter, i32 noundef 4) #9
  %2 = ptrtoint ptr %gpu_reset_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %gpu_reset_counter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ne i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vmid_grab(ptr noundef %vm, ptr noundef %ring, ptr noundef %sync, ptr noundef %fence, ptr noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub2 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub2, align 4
  %vm_manager = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 65
  %arrayidx = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #9
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 8
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %vmhub2.i = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %vmhub2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vmhub2.i, align 4
  %vm_manager.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 65
  %vmid_wait.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 38
  %12 = ptrtoint ptr %vmid_wait.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vmid_wait.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %ops.i.i = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %signaled.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %signaled.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signaled.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call4.i.i = tail call zeroext i1 %19(ptr noundef nonnull %13) #9
  br i1 %call4.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %13) #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge
  %20 = ptrtoint ptr %vmid_wait.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vmid_wait.i, align 8
  %call6.i = tail call i32 @amdgpu_sync_fence(ptr noundef %sync, ptr noundef %21) #9
  br label %error

if.end.i:                                         ; preds = %if.then5.i.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_ids.i = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager.i, i32 0, i32 %11, i32 1
  %22 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ids.i, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 4) #9
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %if.end.i.error_crit_edge, label %if.end7.i.i, !prof !46

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end7.i.i:                                      ; preds = %if.end.i
  %26 = extractvalue { i32, i1 } %24, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3264) #13
  %tobool8.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not.i, label %if.end7.i.i.error_crit_edge, label %if.end10.i

if.end7.i.i.error_crit_edge:                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end10.i:                                       ; preds = %if.end7.i.i
  %ids_lru.i = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager.i, i32 0, i32 %11, i32 2
  %concurrent_flush.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 65, i32 2
  %27 = ptrtoint ptr %ids_lru.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %storemerge32.i = load ptr, ptr %ids_lru.i, align 8
  %cmp.not33.i = icmp eq ptr %storemerge32.i, %ids_lru.i
  br i1 %cmp.not33.i, label %if.end10.i.if.then29.i_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  br label %for.body.i

if.end10.i.if.then29.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end10.i.for.body.i_crit_edge
  %idle.0 = phi ptr [ %storemerge.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge32.i, %if.end10.i.for.body.i_crit_edge ]
  %i.034.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end10.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %concurrent_flush.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %concurrent_flush.i, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool14.not.i = icmp eq i8 %29, 0
  %spec.select.i = select i1 %tobool14.not.i, ptr %ring, ptr null
  %active.i = getelementptr inbounds %struct.amdgpu_vmid, ptr %idle.0, i32 0, i32 1
  %call15.i = tail call ptr @amdgpu_sync_peek_fence(ptr noundef %active.i, ptr noundef %spec.select.i) #9
  %arrayidx16.i = getelementptr ptr, ptr %call8.i.i, i32 %i.034.i
  %30 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call15.i, ptr %arrayidx16.i, align 4
  %tobool18.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool18.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.034.i, 1
  %31 = ptrtoint ptr %idle.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %storemerge.i = load ptr, ptr %idle.0, align 8
  %cmp.not.i = icmp eq ptr %storemerge.i, %ids_lru.i
  br i1 %cmp.not.i, label %for.inc.i.if.then29.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

for.end.i:                                        ; preds = %for.body.i
  %cmp28.i = icmp eq ptr %idle.0, %ids_lru.i
  br i1 %cmp28.i, label %for.end.i.if.then29.i_crit_edge, label %lor.lhs.false

for.end.i.if.then29.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i

if.then29.i:                                      ; preds = %for.end.i.if.then29.i_crit_edge, %for.inc.i.if.then29.i_crit_edge, %if.end10.i.if.then29.i_crit_edge
  %i.0.lcssa.i259 = phi i32 [ %i.034.i, %for.end.i.if.then29.i_crit_edge ], [ 0, %if.end10.i.if.then29.i_crit_edge ], [ %inc.i, %for.inc.i.if.then29.i_crit_edge ]
  %fence_context31.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 65, i32 3
  %32 = ptrtoint ptr %fence_context31.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %fence_context31.i, align 8
  %idx.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 15
  %34 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx.i, align 4
  %conv.i = zext i32 %35 to i64
  %add.i = add i64 %33, %conv.i
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %7, i32 0, i32 65, i32 4, i32 %35
  %36 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx35.i, align 4
  %inc36.i = add i32 %37, 1
  store i32 %inc36.i, ptr %arrayidx35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i259)
  %cmp3837.not.i = icmp eq i32 %i.0.lcssa.i259, 0
  br i1 %cmp3837.not.i, label %for.end45.thread.i, label %if.then29.i.for.body40.i_crit_edge

if.then29.i.for.body40.i_crit_edge:               ; preds = %if.then29.i
  br label %for.body40.i

for.body40.i:                                     ; preds = %dma_fence_get.exit.i.for.body40.i_crit_edge, %if.then29.i.for.body40.i_crit_edge
  %j.038.i = phi i32 [ %inc44.i, %dma_fence_get.exit.i.for.body40.i_crit_edge ], [ 0, %if.then29.i.for.body40.i_crit_edge ]
  %arrayidx41.i = getelementptr ptr, ptr %call8.i.i, i32 %j.038.i
  %38 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx41.i, align 4
  %tobool.not.i4.i = icmp eq ptr %39, null
  br i1 %tobool.not.i4.i, label %for.body40.i.dma_fence_get.exit.i_crit_edge, label %if.then.i.i

for.body40.i.dma_fence_get.exit.i_crit_edge:      ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit.i

if.then.i.i:                                      ; preds = %for.body40.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %39, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !46

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %41 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !35

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %dma_fence_get.exit.i

dma_fence_get.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge, %for.body40.i.dma_fence_get.exit.i_crit_edge
  %inc44.i = add nuw i32 %j.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc44.i, %i.0.lcssa.i259
  br i1 %exitcond.not.i, label %for.end45.i, label %dma_fence_get.exit.i.for.body40.i_crit_edge

dma_fence_get.exit.i.for.body40.i_crit_edge:      ; preds = %dma_fence_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40.i

for.end45.i:                                      ; preds = %dma_fence_get.exit.i
  %call46.i = tail call ptr @dma_fence_array_create(i32 noundef %i.0.lcssa.i259, ptr noundef nonnull %call8.i.i, i64 noundef %add.i, i32 noundef %inc36.i, i1 noundef zeroext true) #9
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %for.end45.i.for.body52.i_crit_edge, label %for.end45.i.if.end57.i_crit_edge

for.end45.i.if.end57.i_crit_edge:                 ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

for.end45.i.for.body52.i_crit_edge:               ; preds = %for.end45.i
  br label %for.body52.i

for.end45.thread.i:                               ; preds = %if.then29.i
  %call4642.i = tail call ptr @dma_fence_array_create(i32 noundef 0, ptr noundef nonnull %call8.i.i, i64 noundef %add.i, i32 noundef %inc36.i, i1 noundef zeroext true) #9
  %tobool47.not43.i = icmp eq ptr %call4642.i, null
  br i1 %tobool47.not43.i, label %for.end45.thread.i.for.end56.i_crit_edge, label %for.end45.thread.i.if.end57.i_crit_edge

for.end45.thread.i.if.end57.i_crit_edge:          ; preds = %for.end45.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

for.end45.thread.i.for.end56.i_crit_edge:         ; preds = %for.end45.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end56.i

for.body52.i:                                     ; preds = %dma_fence_put.exit.i.for.body52.i_crit_edge, %for.end45.i.for.body52.i_crit_edge
  %j.140.i = phi i32 [ %inc55.i, %dma_fence_put.exit.i.for.body52.i_crit_edge ], [ 0, %for.end45.i.for.body52.i_crit_edge ]
  %arrayidx53.i = getelementptr ptr, ptr %call8.i.i, i32 %j.140.i
  %42 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx53.i, align 4
  %tobool.not.i6.i = icmp eq ptr %43, null
  br i1 %tobool.not.i6.i, label %for.body52.i.dma_fence_put.exit.i_crit_edge, label %if.then.i9.i

for.body52.i.dma_fence_put.exit.i_crit_edge:      ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit.i

if.then.i9.i:                                     ; preds = %for.body52.i
  %refcount.i7.i = getelementptr inbounds %struct.dma_fence, ptr %43, i32 0, i32 6
  %call.i.i.i.i.i.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i7.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i7.i, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i7.i, ptr %refcount.i7.i, i32 1, ptr elementtype(i32) %refcount.i7.i) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i11.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i10.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i10.i, label %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !35

if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i7.i, i32 noundef 3) #9
  br label %dma_fence_put.exit.i

if.then.i.i11.i:                                  ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount.i7.i) #9
  br label %dma_fence_put.exit.i

dma_fence_put.exit.i:                             ; preds = %if.then.i.i11.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, %for.body52.i.dma_fence_put.exit.i_crit_edge
  %inc55.i = add nuw i32 %j.140.i, 1
  %exitcond41.not.i = icmp eq i32 %inc55.i, %i.0.lcssa.i259
  br i1 %exitcond41.not.i, label %dma_fence_put.exit.i.for.end56.i_crit_edge, label %dma_fence_put.exit.i.for.body52.i_crit_edge

dma_fence_put.exit.i.for.body52.i_crit_edge:      ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body52.i

dma_fence_put.exit.i.for.end56.i_crit_edge:       ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end56.i

for.end56.i:                                      ; preds = %dma_fence_put.exit.i.for.end56.i_crit_edge, %for.end45.thread.i.for.end56.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %error

if.end57.i:                                       ; preds = %for.end45.thread.i.if.end57.i_crit_edge, %for.end45.i.if.end57.i_crit_edge
  %call4644.i = phi ptr [ %call4642.i, %for.end45.thread.i.if.end57.i_crit_edge ], [ %call46.i, %for.end45.i.if.end57.i_crit_edge ]
  %call58.i = tail call i32 @amdgpu_sync_fence(ptr noundef %sync, ptr noundef nonnull %call4644.i) #9
  %45 = ptrtoint ptr %vmid_wait.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vmid_wait.i, align 8
  %tobool.not.i13.i = icmp eq ptr %46, null
  br i1 %tobool.not.i13.i, label %if.end57.i.dma_fence_put.exit24.i_crit_edge, label %if.then.i18.i

if.end57.i.dma_fence_put.exit24.i_crit_edge:      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit24.i

if.then.i18.i:                                    ; preds = %if.end57.i
  %refcount.i14.i = getelementptr inbounds %struct.dma_fence, ptr %46, i32 0, i32 6
  %call.i.i.i.i.i.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i14.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i14.i, i32 1, i32 3, i32 1) #9
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i14.i, ptr %refcount.i14.i, i32 1, ptr elementtype(i32) %refcount.i14.i) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i16.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i16.i)
  %cmp.i.i.i.i.i17.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i16.i, 1
  br i1 %cmp.i.i.i.i.i17.i, label %if.then.i.i22.i, label %if.end5.i.i.i.i.i20.i

if.end5.i.i.i.i.i20.i:                            ; preds = %if.then.i18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i16.i)
  %.not.i.i.i.i.i19.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i16.i, 0
  br i1 %.not.i.i.i.i.i19.i, label %if.end5.i.i.i.i.i20.i.dma_fence_put.exit24.i_crit_edge, label %if.then10.i.i.i.i.i21.i, !prof !35

if.end5.i.i.i.i.i20.i.dma_fence_put.exit24.i_crit_edge: ; preds = %if.end5.i.i.i.i.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit24.i

if.then10.i.i.i.i.i21.i:                          ; preds = %if.end5.i.i.i.i.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i14.i, i32 noundef 3) #9
  br label %dma_fence_put.exit24.i

if.then.i.i22.i:                                  ; preds = %if.then.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount.i14.i) #9
  br label %dma_fence_put.exit24.i

dma_fence_put.exit24.i:                           ; preds = %if.then.i.i22.i, %if.then10.i.i.i.i.i21.i, %if.end5.i.i.i.i.i20.i.dma_fence_put.exit24.i_crit_edge, %if.end57.i.dma_fence_put.exit24.i_crit_edge
  %48 = ptrtoint ptr %vmid_wait.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call4644.i, ptr %vmid_wait.i, align 8
  br label %error

lor.lhs.false:                                    ; preds = %for.end.i
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  %tobool4.not = icmp eq ptr %idle.0, null
  br i1 %tobool4.not, label %lor.lhs.false.error_crit_edge, label %if.end

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr %struct.amdgpu_vm, ptr %vm, i32 0, i32 18, i32 %5
  %49 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %50, null
  %51 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring, align 8
  %53 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %funcs, align 4
  %vmhub2.i115 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %vmhub2.i115 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vmhub2.i115, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %fence_context3.i = getelementptr inbounds %struct.amdgpu_device, ptr %52, i32 0, i32 88
  %57 = ptrtoint ptr %fence_context3.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %fence_context3.i, align 8
  %idx.i75 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 15
  %59 = ptrtoint ptr %idx.i75 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %idx.i75, align 4
  %conv.i76 = zext i32 %60 to i64
  %add.i77 = add i64 %58, %conv.i76
  %last_vm_update.i = getelementptr inbounds %struct.amdgpu_sync, ptr %sync, i32 0, i32 1
  %61 = ptrtoint ptr %last_vm_update.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %last_vm_update.i, align 4
  %use_cpu_for_update.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 19
  %63 = ptrtoint ptr %use_cpu_for_update.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %use_cpu_for_update.i, align 4, !range !47
  %arrayidx.i = getelementptr %struct.amdgpu_vm, ptr %vm, i32 0, i32 18, i32 %56
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %62, null
  br i1 %tobool4.not.i, label %if.then7.if.end.i82_crit_edge, label %land.lhs.true.i78

if.then7.if.end.i82_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i82

land.lhs.true.i78:                                ; preds = %if.then7
  %flushed_updates.i = getelementptr inbounds %struct.amdgpu_vmid, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %flushed_updates.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %flushed_updates.i, align 8
  %tobool5.not.i = icmp eq ptr %68, null
  br i1 %tobool5.not.i, label %land.lhs.true.i78.if.end.i82_crit_edge, label %land.lhs.true6.i

land.lhs.true.i78.if.end.i82_crit_edge:           ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i82

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i78
  %context.i = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 3
  %69 = ptrtoint ptr %context.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %context.i, align 8
  %context8.i = getelementptr inbounds %struct.dma_fence, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %context8.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %context8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %72)
  %cmp.i = icmp eq i64 %70, %72
  br i1 %cmp.i, label %dma_fence_is_later.exit.i, label %land.lhs.true6.i.if.end.i82_crit_edge

land.lhs.true6.i.if.end.i82_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i82

dma_fence_is_later.exit.i:                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  %seqno.i.i = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 4
  %73 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %seqno.i.i, align 8
  %seqno23.i.i = getelementptr inbounds %struct.dma_fence, ptr %68, i32 0, i32 4
  %75 = ptrtoint ptr %seqno23.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %seqno23.i.i, align 8
  %ops.i.i79 = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 1
  %77 = ptrtoint ptr %ops.i.i79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i.i79, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i.i.i = icmp eq i8 %80, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %76)
  %cmp.i.i.i80 = icmp ugt i64 %74, %76
  %conv.i.i.i = trunc i64 %74 to i32
  %conv2.i.i.i = trunc i64 %76 to i32
  %sub.i.i.i = sub i32 %conv.i.i.i, %conv2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp3.i.i.i = icmp sgt i32 %sub.i.i.i, 0
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i1 %cmp3.i.i.i, i1 %cmp.i.i.i80
  %spec.select.i81 = select i1 %retval.0.i.i.i, ptr %62, ptr null
  br label %if.end.i82

if.end.i82:                                       ; preds = %dma_fence_is_later.exit.i, %land.lhs.true6.i.if.end.i82_crit_edge, %land.lhs.true.i78.if.end.i82_crit_edge, %if.then7.if.end.i82_crit_edge
  %updates.0.i = phi ptr [ %62, %land.lhs.true6.i.if.end.i82_crit_edge ], [ %62, %land.lhs.true.i78.if.end.i82_crit_edge ], [ null, %if.then7.if.end.i82_crit_edge ], [ %spec.select.i81, %dma_fence_is_later.exit.i ]
  %owner.i = getelementptr inbounds %struct.amdgpu_vmid, ptr %66, i32 0, i32 3
  %81 = ptrtoint ptr %owner.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %owner.i, align 8
  %fence_context12.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 14, i32 8
  %83 = ptrtoint ptr %fence_context12.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %fence_context12.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %82, i64 %84)
  %cmp13.not.i = icmp eq i64 %82, %84
  br i1 %cmp13.not.i, label %lor.lhs.false.i, label %if.end.i82.if.then29.i96_crit_edge

if.end.i82.if.then29.i96_crit_edge:               ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i96

lor.lhs.false.i:                                  ; preds = %if.end.i82
  %vm_pd_addr.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 11
  %85 = ptrtoint ptr %vm_pd_addr.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %vm_pd_addr.i, align 8
  %pd_gpu_addr.i = getelementptr inbounds %struct.amdgpu_vmid, ptr %66, i32 0, i32 4
  %87 = ptrtoint ptr %pd_gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %pd_gpu_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %88)
  %cmp15.not.i = icmp eq i64 %86, %88
  %tobool18.not.i83 = icmp eq ptr %updates.0.i, null
  %or.cond.i = select i1 %cmp15.not.i, i1 %tobool18.not.i83, i1 false
  br i1 %or.cond.i, label %lor.lhs.false19.i, label %lor.lhs.false.i.if.then29.i96_crit_edge

lor.lhs.false.i.if.then29.i96_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i96

lor.lhs.false19.i:                                ; preds = %lor.lhs.false.i
  %last_flush.i = getelementptr inbounds %struct.amdgpu_vmid, ptr %66, i32 0, i32 2
  %89 = ptrtoint ptr %last_flush.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %last_flush.i, align 4
  %tobool20.not.i = icmp eq ptr %90, null
  br i1 %tobool20.not.i, label %lor.lhs.false19.i.if.then29.i96_crit_edge, label %lor.lhs.false21.i

lor.lhs.false19.i.if.then29.i96_crit_edge:        ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i96

lor.lhs.false21.i:                                ; preds = %lor.lhs.false19.i
  %context23.i = getelementptr inbounds %struct.dma_fence, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %context23.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %context23.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %92, i64 %add.i77)
  %cmp24.not.i = icmp eq i64 %92, %add.i77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %extract.t92.i = icmp ne i8 %64, 0
  br i1 %cmp24.not.i, label %lor.lhs.false21.i.if.end39.i_crit_edge, label %land.lhs.true26.i

lor.lhs.false21.i.if.end39.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

land.lhs.true26.i:                                ; preds = %lor.lhs.false21.i
  %flags.i.i84 = getelementptr inbounds %struct.dma_fence, ptr %90, i32 0, i32 5
  %93 = ptrtoint ptr %flags.i.i84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %flags.i.i84, align 4
  %and1.i.i.i85 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i85)
  %tobool.not.i.i86 = icmp eq i32 %and1.i.i.i85, 0
  br i1 %tobool.not.i.i86, label %if.end.i.i89, label %land.lhs.true26.i.if.end39.i_crit_edge

land.lhs.true26.i.if.end39.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.end.i.i89:                                     ; preds = %land.lhs.true26.i
  %ops.i95.i = getelementptr inbounds %struct.dma_fence, ptr %90, i32 0, i32 1
  %95 = ptrtoint ptr %ops.i95.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i95.i, align 4
  %signaled.i.i87 = getelementptr inbounds %struct.dma_fence_ops, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %signaled.i.i87 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %signaled.i.i87, align 4
  %tobool1.not.i.i88 = icmp eq ptr %98, null
  br i1 %tobool1.not.i.i88, label %if.end.i.i89.if.then29.i96_crit_edge, label %land.lhs.true.i.i91

if.end.i.i89.if.then29.i96_crit_edge:             ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i96

land.lhs.true.i.i91:                              ; preds = %if.end.i.i89
  %call4.i.i90 = tail call zeroext i1 %98(ptr noundef nonnull %90) #9
  br i1 %call4.i.i90, label %if.then5.i.i93, label %land.lhs.true.i.i91.if.then29.i96_crit_edge

land.lhs.true.i.i91.if.then29.i96_crit_edge:      ; preds = %land.lhs.true.i.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29.i96

if.then5.i.i93:                                   ; preds = %land.lhs.true.i.i91
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i92 = tail call i32 @dma_fence_signal(ptr noundef nonnull %90) #9
  br label %if.end39.i

if.then29.i96:                                    ; preds = %land.lhs.true.i.i91.if.then29.i96_crit_edge, %if.end.i.i89.if.then29.i96_crit_edge, %lor.lhs.false19.i.if.then29.i96_crit_edge, %lor.lhs.false.i.if.then29.i96_crit_edge, %if.end.i82.if.then29.i96_crit_edge
  %concurrent_flush.i94 = getelementptr inbounds %struct.amdgpu_device, ptr %52, i32 0, i32 65, i32 2
  %99 = ptrtoint ptr %concurrent_flush.i94 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %concurrent_flush.i94, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool30.not.i = icmp eq i8 %100, 0
  %spec.select94.i = select i1 %tobool30.not.i, ptr %ring, ptr null
  %pd_gpu_addr33.i = getelementptr inbounds %struct.amdgpu_vmid, ptr %66, i32 0, i32 4
  %101 = ptrtoint ptr %pd_gpu_addr33.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 0, ptr %pd_gpu_addr33.i, align 8
  %active.i95 = getelementptr inbounds %struct.amdgpu_vmid, ptr %66, i32 0, i32 1
  %call34.i = tail call ptr @amdgpu_sync_peek_fence(ptr noundef %active.i95, ptr noundef %spec.select94.i) #9
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %if.then29.i96.if.end39.i_crit_edge, label %amdgpu_vmid_grab_reserved.exit

if.then29.i96.if.end39.i_crit_edge:               ; preds = %if.then29.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then29.i96.if.end39.i_crit_edge, %if.then5.i.i93, %land.lhs.true26.i.if.end39.i_crit_edge, %lor.lhs.false21.i.if.end39.i_crit_edge
  %needs_flush.1.off0.i = phi i1 [ %extract.t92.i, %lor.lhs.false21.i.if.end39.i_crit_edge ], [ %extract.t92.i, %if.then5.i.i93 ], [ %extract.t92.i, %land.lhs.true26.i.if.end39.i_crit_edge ], [ true, %if.then29.i96.if.end39.i_crit_edge ]
  %active40.i = getelementptr inbounds %struct.amdgpu_vmid, ptr %66, i32 0, i32 1
  %call41.i = tail call i32 @amdgpu_sync_fence(ptr noundef %active40.i, ptr noundef %fence) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end39.i.error_crit_edge

if.end39.i.error_crit_edge:                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end44.i:                                       ; preds = %if.end39.i
  %tobool45.not.i = icmp eq ptr %updates.0.i, null
  br i1 %tobool45.not.i, label %if.end44.i.lor.lhs.false10_crit_edge, label %if.then46.i

if.end44.i.lor.lhs.false10_crit_edge:             ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false10

if.then46.i:                                      ; preds = %if.end44.i
  %flushed_updates47.i = getelementptr inbounds %struct.amdgpu_vmid, ptr %66, i32 0, i32 5
  %102 = ptrtoint ptr %flushed_updates47.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %flushed_updates47.i, align 8
  %tobool.not.i97.i = icmp eq ptr %103, null
  br i1 %tobool.not.i97.i, label %if.then46.i.if.then.i102.i_crit_edge, label %if.then.i.i101

if.then46.i.if.then.i102.i_crit_edge:             ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i102.i

if.then.i.i101:                                   ; preds = %if.then46.i
  %refcount.i.i97 = getelementptr inbounds %struct.dma_fence, ptr %103, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i97, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i97, i32 1, i32 3, i32 1) #9
  %104 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i97, ptr %refcount.i.i97, i32 1, ptr elementtype(i32) %refcount.i.i97) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i99 = extractvalue { i32, i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i99)
  %cmp.i.i.i.i.i.i100 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i99, 1
  br i1 %cmp.i.i.i.i.i.i100, label %if.then.i.i.i105, label %if.end5.i.i.i.i.i.i103

if.end5.i.i.i.i.i.i103:                           ; preds = %if.then.i.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i99)
  %.not.i.i.i.i.i.i102 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i99, 0
  br i1 %.not.i.i.i.i.i.i102, label %if.end5.i.i.i.i.i.i103.if.then.i102.i_crit_edge, label %if.then10.i.i.i.i.i.i104, !prof !35

if.end5.i.i.i.i.i.i103.if.then.i102.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i102.i

if.then10.i.i.i.i.i.i104:                         ; preds = %if.end5.i.i.i.i.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i97, i32 noundef 3) #9
  br label %if.then.i102.i

if.then.i.i.i105:                                 ; preds = %if.then.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount.i.i97) #9
  br label %if.then.i102.i

if.then.i102.i:                                   ; preds = %if.then.i.i.i105, %if.then10.i.i.i.i.i.i104, %if.end5.i.i.i.i.i.i103.if.then.i102.i_crit_edge, %if.then46.i.if.then.i102.i_crit_edge
  %refcount.i100.i = getelementptr inbounds %struct.dma_fence, ptr %updates.0.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i101.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i100.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i100.i, i32 1, i32 3, i32 1) #9
  %105 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i100.i, ptr %refcount.i100.i, i32 1, ptr elementtype(i32) %refcount.i100.i) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i106 = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i106)
  %tobool1.not.i.i.i.i.i.i107 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i106, 0
  br i1 %tobool1.not.i.i.i.i.i.i107, label %if.then.i102.i.if.end15.sink.split.i.i.i.i.i.i111_crit_edge, label %if.else.i.i.i.i.i.i109, !prof !46

if.then.i102.i.if.end15.sink.split.i.i.i.i.i.i111_crit_edge: ; preds = %if.then.i102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i111

if.else.i.i.i.i.i.i109:                           ; preds = %if.then.i102.i
  %add.i.i.i.i.i.i108 = add i32 %asmresult.i.i.i.i.i.i.i.i106, 1
  %106 = or i32 %add.i.i.i.i.i.i108, %asmresult.i.i.i.i.i.i.i.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %.not.i.i.i.i.i103.i = icmp sgt i32 %106, -1
  br i1 %.not.i.i.i.i.i103.i, label %if.else.i.i.i.i.i.i109.dma_fence_get.exit.i112_crit_edge, label %if.else.i.i.i.i.i.i109.if.end15.sink.split.i.i.i.i.i.i111_crit_edge, !prof !35

if.else.i.i.i.i.i.i109.if.end15.sink.split.i.i.i.i.i.i111_crit_edge: ; preds = %if.else.i.i.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i111

if.else.i.i.i.i.i.i109.dma_fence_get.exit.i112_crit_edge: ; preds = %if.else.i.i.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit.i112

if.end15.sink.split.i.i.i.i.i.i111:               ; preds = %if.else.i.i.i.i.i.i109.if.end15.sink.split.i.i.i.i.i.i111_crit_edge, %if.then.i102.i.if.end15.sink.split.i.i.i.i.i.i111_crit_edge
  %.sink.i.i.i.i.i.i110 = phi i32 [ 2, %if.then.i102.i.if.end15.sink.split.i.i.i.i.i.i111_crit_edge ], [ 1, %if.else.i.i.i.i.i.i109.if.end15.sink.split.i.i.i.i.i.i111_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i100.i, i32 noundef %.sink.i.i.i.i.i.i110) #9
  br label %dma_fence_get.exit.i112

dma_fence_get.exit.i112:                          ; preds = %if.end15.sink.split.i.i.i.i.i.i111, %if.else.i.i.i.i.i.i109.dma_fence_get.exit.i112_crit_edge
  %107 = ptrtoint ptr %flushed_updates47.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %updates.0.i, ptr %flushed_updates47.i, align 8
  br label %lor.lhs.false10

amdgpu_vmid_grab_reserved.exit:                   ; preds = %if.then29.i96
  call void @__sanitizer_cov_trace_pc() #11
  %call37.i = tail call i32 @amdgpu_sync_fence(ptr noundef %sync, ptr noundef nonnull %call34.i) #9
  br label %error

lor.lhs.false10:                                  ; preds = %dma_fence_get.exit.i112, %if.end44.i.lor.lhs.false10_crit_edge
  %vm_needs_flush.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 10
  %frombool52.i = zext i1 %needs_flush.1.off0.i to i8
  %108 = ptrtoint ptr %vm_needs_flush.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %frombool52.i, ptr %vm_needs_flush.i, align 8
  %tobool11.not = icmp eq ptr %66, null
  br i1 %tobool11.not, label %lor.lhs.false10.error_crit_edge, label %lor.lhs.false10.if.end27_crit_edge

lor.lhs.false10.if.end27_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

lor.lhs.false10.error_crit_edge:                  ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.else:                                          ; preds = %if.end
  %vm_manager.i116 = getelementptr inbounds %struct.amdgpu_device, ptr %52, i32 0, i32 65
  %fence_context4.i = getelementptr inbounds %struct.amdgpu_device, ptr %52, i32 0, i32 88
  %109 = ptrtoint ptr %fence_context4.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %fence_context4.i, align 8
  %idx.i117 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 15
  %111 = ptrtoint ptr %idx.i117 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %idx.i117, align 4
  %conv.i118 = zext i32 %112 to i64
  %add.i119 = add i64 %110, %conv.i118
  %last_vm_update.i120 = getelementptr inbounds %struct.amdgpu_sync, ptr %sync, i32 0, i32 1
  %113 = ptrtoint ptr %last_vm_update.i120 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %last_vm_update.i120, align 4
  %use_cpu_for_update.i121 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 19
  %115 = ptrtoint ptr %use_cpu_for_update.i121 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %use_cpu_for_update.i121, align 4, !range !47
  %vm_needs_flush.i122 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 10
  %117 = ptrtoint ptr %vm_needs_flush.i122 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %vm_needs_flush.i122, align 8
  %ids_lru.i123 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager.i116, i32 0, i32 %56, i32 2
  %prev.i = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager.i116, i32 0, i32 %56, i32 2, i32 1
  %118 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %storemerge146.i = load ptr, ptr %prev.i, align 4
  %cmp.not147.i = icmp eq ptr %storemerge146.i, %ids_lru.i123
  br i1 %cmp.not147.i, label %if.else.if.then19_crit_edge, label %for.body.lr.ph.i

if.else.if.then19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.body.lr.ph.i:                                 ; preds = %if.else
  %fence_context10.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 14, i32 8
  %vm_pd_addr.i124 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 11
  %tobool24.not.i = icmp eq ptr %114, null
  %context.i.i = getelementptr inbounds %struct.dma_fence, ptr %114, i32 0, i32 3
  %seqno.i.i125 = getelementptr inbounds %struct.dma_fence, ptr %114, i32 0, i32 4
  %ops.i110.i = getelementptr inbounds %struct.dma_fence, ptr %114, i32 0, i32 1
  %concurrent_flush.i126 = getelementptr inbounds %struct.amdgpu_device, ptr %52, i32 0, i32 65, i32 2
  br label %for.body.i128

for.body.i128:                                    ; preds = %for.inc.i177.for.body.i128_crit_edge, %for.body.lr.ph.i
  %id.1 = phi ptr [ %storemerge146.i, %for.body.lr.ph.i ], [ %storemerge.i175, %for.inc.i177.for.body.i128_crit_edge ]
  %119 = ptrtoint ptr %use_cpu_for_update.i121 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %use_cpu_for_update.i121, align 4, !range !47
  %owner.i127 = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.1, i32 0, i32 3
  %121 = ptrtoint ptr %owner.i127 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %owner.i127, align 8
  %123 = ptrtoint ptr %fence_context10.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %fence_context10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %122, i64 %124)
  %cmp11.not.i = icmp eq i64 %122, %124
  br i1 %cmp11.not.i, label %if.end.i131, label %for.body.i128.for.inc.i177_crit_edge

for.body.i128.for.inc.i177_crit_edge:             ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i177

if.end.i131:                                      ; preds = %for.body.i128
  %pd_gpu_addr.i129 = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.1, i32 0, i32 4
  %125 = ptrtoint ptr %pd_gpu_addr.i129 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %pd_gpu_addr.i129, align 8
  %127 = ptrtoint ptr %vm_pd_addr.i124 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %vm_pd_addr.i124, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %126, i64 %128)
  %cmp13.not.i130 = icmp eq i64 %126, %128
  br i1 %cmp13.not.i130, label %if.end16.i, label %if.end.i131.for.inc.i177_crit_edge

if.end.i131.for.inc.i177_crit_edge:               ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i177

if.end16.i:                                       ; preds = %if.end.i131
  %last_flush.i132 = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.1, i32 0, i32 2
  %129 = ptrtoint ptr %last_flush.i132 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %last_flush.i132, align 4
  %tobool17.not.i = icmp eq ptr %130, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end23.i_crit_edge, label %lor.lhs.false.i134

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

lor.lhs.false.i134:                               ; preds = %if.end16.i
  %context.i133 = getelementptr inbounds %struct.dma_fence, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %context.i133 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %context.i133, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %132, i64 %add.i119)
  %cmp19.not.i = icmp eq i64 %132, %add.i119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %extract.t109.i = icmp ne i8 %120, 0
  br i1 %cmp19.not.i, label %lor.lhs.false.i134.if.end23.i_crit_edge, label %land.lhs.true.i138

lor.lhs.false.i134.if.end23.i_crit_edge:          ; preds = %lor.lhs.false.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

land.lhs.true.i138:                               ; preds = %lor.lhs.false.i134
  %flags.i.i135 = getelementptr inbounds %struct.dma_fence, ptr %130, i32 0, i32 5
  %133 = ptrtoint ptr %flags.i.i135 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %flags.i.i135, align 4
  %and1.i.i.i136 = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i136)
  %tobool.not.i.i137 = icmp eq i32 %and1.i.i.i136, 0
  br i1 %tobool.not.i.i137, label %if.end.i.i142, label %land.lhs.true.i138.if.end23.i_crit_edge

land.lhs.true.i138.if.end23.i_crit_edge:          ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.end.i.i142:                                    ; preds = %land.lhs.true.i138
  %ops.i.i139 = getelementptr inbounds %struct.dma_fence, ptr %130, i32 0, i32 1
  %135 = ptrtoint ptr %ops.i.i139 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops.i.i139, align 4
  %signaled.i.i140 = getelementptr inbounds %struct.dma_fence_ops, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %signaled.i.i140 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %signaled.i.i140, align 4
  %tobool1.not.i.i141 = icmp eq ptr %138, null
  br i1 %tobool1.not.i.i141, label %if.end.i.i142.if.end23.i_crit_edge, label %land.lhs.true.i.i144

if.end.i.i142.if.end23.i_crit_edge:               ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

land.lhs.true.i.i144:                             ; preds = %if.end.i.i142
  %call4.i.i143 = tail call zeroext i1 %138(ptr noundef nonnull %130) #9
  br i1 %call4.i.i143, label %if.then5.i.i146, label %land.lhs.true.i.i144.if.end23.i_crit_edge

land.lhs.true.i.i144.if.end23.i_crit_edge:        ; preds = %land.lhs.true.i.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then5.i.i146:                                  ; preds = %land.lhs.true.i.i144
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i145 = tail call i32 @dma_fence_signal(ptr noundef nonnull %130) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then5.i.i146, %land.lhs.true.i.i144.if.end23.i_crit_edge, %if.end.i.i142.if.end23.i_crit_edge, %land.lhs.true.i138.if.end23.i_crit_edge, %lor.lhs.false.i134.if.end23.i_crit_edge, %if.end16.i.if.end23.i_crit_edge
  %needs_flush.0.off0.i = phi i1 [ %extract.t109.i, %lor.lhs.false.i134.if.end23.i_crit_edge ], [ true, %land.lhs.true.i.i144.if.end23.i_crit_edge ], [ true, %if.end.i.i142.if.end23.i_crit_edge ], [ true, %if.end16.i.if.end23.i_crit_edge ], [ %extract.t109.i, %if.then5.i.i146 ], [ %extract.t109.i, %land.lhs.true.i138.if.end23.i_crit_edge ]
  %flushed_updates.i147 = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.1, i32 0, i32 5
  %139 = ptrtoint ptr %flushed_updates.i147 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %flushed_updates.i147, align 8
  br i1 %tobool24.not.i, label %if.end31.i, label %land.lhs.true25.i

land.lhs.true25.i:                                ; preds = %if.end23.i
  %tobool26.not.i = icmp eq ptr %140, null
  br i1 %tobool26.not.i, label %land.lhs.true25.i.land.lhs.true34.i_crit_edge, label %lor.lhs.false27.i

land.lhs.true25.i.land.lhs.true34.i_crit_edge:    ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34.i

lor.lhs.false27.i:                                ; preds = %land.lhs.true25.i
  %141 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %context.i.i, align 8
  %context1.i.i = getelementptr inbounds %struct.dma_fence, ptr %140, i32 0, i32 3
  %143 = ptrtoint ptr %context1.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %context1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %142, i64 %144)
  %cmp.not.i.i = icmp eq i64 %142, %144
  br i1 %cmp.not.i.i, label %dma_fence_is_later.exit.i156, label %dma_fence_is_later.exit.thread.i, !prof !35

dma_fence_is_later.exit.thread.i:                 ; preds = %lor.lhs.false27.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 475, i32 noundef 9, ptr noundef null) #9
  br i1 %needs_flush.0.off0.i, label %dma_fence_is_later.exit.thread.i.land.lhs.true34.i_crit_edge, label %dma_fence_is_later.exit.thread.i.if.end38.i_crit_edge

dma_fence_is_later.exit.thread.i.if.end38.i_crit_edge: ; preds = %dma_fence_is_later.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

dma_fence_is_later.exit.thread.i.land.lhs.true34.i_crit_edge: ; preds = %dma_fence_is_later.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34.i

dma_fence_is_later.exit.i156:                     ; preds = %lor.lhs.false27.i
  %145 = ptrtoint ptr %seqno.i.i125 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %seqno.i.i125, align 8
  %seqno23.i.i148 = getelementptr inbounds %struct.dma_fence, ptr %140, i32 0, i32 4
  %147 = ptrtoint ptr %seqno23.i.i148 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %seqno23.i.i148, align 8
  %149 = ptrtoint ptr %ops.i110.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ops.i110.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i.i.i149 = icmp eq i8 %152, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %148)
  %cmp.i.i.i150 = icmp ugt i64 %146, %148
  %conv.i.i.i151 = trunc i64 %146 to i32
  %conv2.i.i.i152 = trunc i64 %148 to i32
  %sub.i.i.i153 = sub i32 %conv.i.i.i151, %conv2.i.i.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i153)
  %cmp3.i.i.i154 = icmp sgt i32 %sub.i.i.i153, 0
  %retval.0.i.i.i155 = select i1 %tobool.not.i.i.i149, i1 %cmp3.i.i.i154, i1 %cmp.i.i.i150
  %brmerge.i = select i1 %retval.0.i.i.i155, i1 true, i1 %needs_flush.0.off0.i
  br i1 %brmerge.i, label %dma_fence_is_later.exit.i156.land.lhs.true34.i_crit_edge, label %dma_fence_is_later.exit.i156.if.end38.i_crit_edge

dma_fence_is_later.exit.i156.if.end38.i_crit_edge: ; preds = %dma_fence_is_later.exit.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

dma_fence_is_later.exit.i156.land.lhs.true34.i_crit_edge: ; preds = %dma_fence_is_later.exit.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34.i

if.end31.i:                                       ; preds = %if.end23.i
  br i1 %needs_flush.0.off0.i, label %if.end31.i.land.lhs.true34.i_crit_edge, label %if.end38.i.thread

if.end31.i.land.lhs.true34.i_crit_edge:           ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true34.i

land.lhs.true34.i:                                ; preds = %if.end31.i.land.lhs.true34.i_crit_edge, %dma_fence_is_later.exit.i156.land.lhs.true34.i_crit_edge, %dma_fence_is_later.exit.thread.i.land.lhs.true34.i_crit_edge, %land.lhs.true25.i.land.lhs.true34.i_crit_edge
  %153 = ptrtoint ptr %concurrent_flush.i126 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %concurrent_flush.i126, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool36.not.i = icmp eq i8 %154, 0
  br i1 %tobool36.not.i, label %land.lhs.true34.i.for.inc.i177_crit_edge, label %land.lhs.true34.i.if.end38.i_crit_edge

land.lhs.true34.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true34.i.for.inc.i177_crit_edge:         ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i177

if.end38.i:                                       ; preds = %land.lhs.true34.i.if.end38.i_crit_edge, %dma_fence_is_later.exit.i156.if.end38.i_crit_edge, %dma_fence_is_later.exit.thread.i.if.end38.i_crit_edge
  %needs_flush.1.off0140.i = phi i1 [ true, %land.lhs.true34.i.if.end38.i_crit_edge ], [ false, %dma_fence_is_later.exit.thread.i.if.end38.i_crit_edge ], [ false, %dma_fence_is_later.exit.i156.if.end38.i_crit_edge ]
  %flushed_updates.i147.le = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.1, i32 0, i32 5
  %active.i157 = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.1, i32 0, i32 1
  %call39.i = tail call i32 @amdgpu_sync_fence(ptr noundef %active.i157, ptr noundef %fence) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end38.i.error_crit_edge

if.end38.i.error_crit_edge:                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end38.i.thread:                                ; preds = %if.end31.i
  %active.i157230 = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.1, i32 0, i32 1
  %call39.i231 = tail call i32 @amdgpu_sync_fence(ptr noundef %active.i157230, ptr noundef %fence) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i231)
  %tobool40.not.i232 = icmp eq i32 %call39.i231, 0
  br i1 %tobool40.not.i232, label %if.end38.i.thread.if.end17_crit_edge, label %if.end38.i.thread.error_crit_edge

if.end38.i.thread.error_crit_edge:                ; preds = %if.end38.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end38.i.thread.if.end17_crit_edge:             ; preds = %if.end38.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end42.i:                                       ; preds = %if.end38.i
  br i1 %tobool24.not.i, label %if.end42.i.if.end17_crit_edge, label %land.lhs.true44.i

if.end42.i.if.end17_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true44.i:                                ; preds = %if.end42.i
  %tobool45.not.i158 = icmp eq ptr %140, null
  br i1 %tobool45.not.i158, label %land.lhs.true44.i.if.then49.i_crit_edge, label %lor.lhs.false46.i

land.lhs.true44.i.if.then49.i_crit_edge:          ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49.i

lor.lhs.false46.i:                                ; preds = %land.lhs.true44.i
  %155 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %context.i.i, align 8
  %context1.i113.i = getelementptr inbounds %struct.dma_fence, ptr %140, i32 0, i32 3
  %157 = ptrtoint ptr %context1.i113.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %context1.i113.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %156, i64 %158)
  %cmp.not.i114.i = icmp eq i64 %156, %158
  br i1 %cmp.not.i114.i, label %dma_fence_is_later.exit128.i, label %dma_fence_is_later.exit128.thread.i, !prof !35

dma_fence_is_later.exit128.thread.i:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 475, i32 noundef 9, ptr noundef null) #9
  br label %if.end17

dma_fence_is_later.exit128.i:                     ; preds = %lor.lhs.false46.i
  %159 = ptrtoint ptr %seqno.i.i125 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %seqno.i.i125, align 8
  %seqno23.i117.i = getelementptr inbounds %struct.dma_fence, ptr %140, i32 0, i32 4
  %161 = ptrtoint ptr %seqno23.i117.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %seqno23.i117.i, align 8
  %163 = ptrtoint ptr %ops.i110.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ops.i110.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %164, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i.i119.i = icmp eq i8 %166, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %160, i64 %162)
  %cmp.i.i120.i = icmp ugt i64 %160, %162
  %conv.i.i121.i = trunc i64 %160 to i32
  %conv2.i.i122.i = trunc i64 %162 to i32
  %sub.i.i123.i = sub i32 %conv.i.i121.i, %conv2.i.i122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i123.i)
  %cmp3.i.i124.i = icmp sgt i32 %sub.i.i123.i, 0
  %retval.0.i.i125.i = select i1 %tobool.not.i.i119.i, i1 %cmp3.i.i124.i, i1 %cmp.i.i120.i
  br i1 %retval.0.i.i125.i, label %dma_fence_is_later.exit128.i.if.then49.i_crit_edge, label %dma_fence_is_later.exit128.i.if.end17_crit_edge

dma_fence_is_later.exit128.i.if.end17_crit_edge:  ; preds = %dma_fence_is_later.exit128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

dma_fence_is_later.exit128.i.if.then49.i_crit_edge: ; preds = %dma_fence_is_later.exit128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49.i

if.then49.i:                                      ; preds = %dma_fence_is_later.exit128.i.if.then49.i_crit_edge, %land.lhs.true44.i.if.then49.i_crit_edge
  %167 = ptrtoint ptr %flushed_updates.i147.le to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %flushed_updates.i147.le, align 8
  %tobool.not.i129.i = icmp eq ptr %168, null
  br i1 %tobool.not.i129.i, label %if.then49.i.if.then.i134.i_crit_edge, label %if.then.i.i163

if.then49.i.if.then.i134.i_crit_edge:             ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i134.i

if.then.i.i163:                                   ; preds = %if.then49.i
  %refcount.i.i159 = getelementptr inbounds %struct.dma_fence, ptr %168, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i160 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i159, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i159, i32 1, i32 3, i32 1) #9
  %169 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i159, ptr %refcount.i.i159, i32 1, ptr elementtype(i32) %refcount.i.i159) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i161 = extractvalue { i32, i32, i32 } %169, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i161)
  %cmp.i.i.i.i.i.i162 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i161, 1
  br i1 %cmp.i.i.i.i.i.i162, label %if.then.i.i.i167, label %if.end5.i.i.i.i.i.i165

if.end5.i.i.i.i.i.i165:                           ; preds = %if.then.i.i163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i161)
  %.not.i.i.i.i.i.i164 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i161, 0
  br i1 %.not.i.i.i.i.i.i164, label %if.end5.i.i.i.i.i.i165.if.then.i134.i_crit_edge, label %if.then10.i.i.i.i.i.i166, !prof !35

if.end5.i.i.i.i.i.i165.if.then.i134.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i134.i

if.then10.i.i.i.i.i.i166:                         ; preds = %if.end5.i.i.i.i.i.i165
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i159, i32 noundef 3) #9
  br label %if.then.i134.i

if.then.i.i.i167:                                 ; preds = %if.then.i.i163
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount.i.i159) #9
  br label %if.then.i134.i

if.then.i134.i:                                   ; preds = %if.then.i.i.i167, %if.then10.i.i.i.i.i.i166, %if.end5.i.i.i.i.i.i165.if.then.i134.i_crit_edge, %if.then49.i.if.then.i134.i_crit_edge
  %refcount.i132.i = getelementptr inbounds %struct.dma_fence, ptr %114, i32 0, i32 6
  %call.i.i.i.i.i.i.i133.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i132.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i132.i, i32 1, i32 3, i32 1) #9
  %170 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i132.i, ptr %refcount.i132.i, i32 1, ptr elementtype(i32) %refcount.i132.i) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i168 = extractvalue { i32, i32, i32 } %170, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i168)
  %tobool1.not.i.i.i.i.i.i169 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i168, 0
  br i1 %tobool1.not.i.i.i.i.i.i169, label %if.then.i134.i.if.end15.sink.split.i.i.i.i.i.i173_crit_edge, label %if.else.i.i.i.i.i.i171, !prof !46

if.then.i134.i.if.end15.sink.split.i.i.i.i.i.i173_crit_edge: ; preds = %if.then.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i173

if.else.i.i.i.i.i.i171:                           ; preds = %if.then.i134.i
  %add.i.i.i.i.i.i170 = add i32 %asmresult.i.i.i.i.i.i.i.i168, 1
  %171 = or i32 %add.i.i.i.i.i.i170, %asmresult.i.i.i.i.i.i.i.i168
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %171)
  %.not.i.i.i.i.i135.i = icmp sgt i32 %171, -1
  br i1 %.not.i.i.i.i.i135.i, label %if.else.i.i.i.i.i.i171.dma_fence_get.exit.i174_crit_edge, label %if.else.i.i.i.i.i.i171.if.end15.sink.split.i.i.i.i.i.i173_crit_edge, !prof !35

if.else.i.i.i.i.i.i171.if.end15.sink.split.i.i.i.i.i.i173_crit_edge: ; preds = %if.else.i.i.i.i.i.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i173

if.else.i.i.i.i.i.i171.dma_fence_get.exit.i174_crit_edge: ; preds = %if.else.i.i.i.i.i.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit.i174

if.end15.sink.split.i.i.i.i.i.i173:               ; preds = %if.else.i.i.i.i.i.i171.if.end15.sink.split.i.i.i.i.i.i173_crit_edge, %if.then.i134.i.if.end15.sink.split.i.i.i.i.i.i173_crit_edge
  %.sink.i.i.i.i.i.i172 = phi i32 [ 2, %if.then.i134.i.if.end15.sink.split.i.i.i.i.i.i173_crit_edge ], [ 1, %if.else.i.i.i.i.i.i171.if.end15.sink.split.i.i.i.i.i.i173_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i132.i, i32 noundef %.sink.i.i.i.i.i.i172) #9
  br label %dma_fence_get.exit.i174

dma_fence_get.exit.i174:                          ; preds = %if.end15.sink.split.i.i.i.i.i.i173, %if.else.i.i.i.i.i.i171.dma_fence_get.exit.i174_crit_edge
  %172 = ptrtoint ptr %flushed_updates.i147.le to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %114, ptr %flushed_updates.i147.le, align 8
  br label %if.end17

for.inc.i177:                                     ; preds = %land.lhs.true34.i.for.inc.i177_crit_edge, %if.end.i131.for.inc.i177_crit_edge, %for.body.i128.for.inc.i177_crit_edge
  %prev64.i = getelementptr inbounds %struct.list_head, ptr %id.1, i32 0, i32 1
  %173 = ptrtoint ptr %prev64.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %storemerge.i175 = load ptr, ptr %prev64.i, align 4
  %cmp.not.i176 = icmp eq ptr %storemerge.i175, %ids_lru.i123
  br i1 %cmp.not.i176, label %for.inc.i177.if.then19_crit_edge, label %for.inc.i177.for.body.i128_crit_edge

for.inc.i177.for.body.i128_crit_edge:             ; preds = %for.inc.i177
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i128

for.inc.i177.if.then19_crit_edge:                 ; preds = %for.inc.i177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.end17:                                         ; preds = %dma_fence_get.exit.i174, %dma_fence_is_later.exit128.i.if.end17_crit_edge, %dma_fence_is_later.exit128.thread.i, %if.end42.i.if.end17_crit_edge, %if.end38.i.thread.if.end17_crit_edge
  %needs_flush.1.off0140.i233235 = phi i1 [ %needs_flush.1.off0140.i, %dma_fence_get.exit.i174 ], [ %needs_flush.1.off0140.i, %dma_fence_is_later.exit128.i.if.end17_crit_edge ], [ %needs_flush.1.off0140.i, %dma_fence_is_later.exit128.thread.i ], [ %needs_flush.1.off0140.i, %if.end42.i.if.end17_crit_edge ], [ false, %if.end38.i.thread.if.end17_crit_edge ]
  %conv55.i = zext i1 %needs_flush.1.off0140.i233235 to i8
  %174 = ptrtoint ptr %vm_needs_flush.i122 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %vm_needs_flush.i122, align 8, !range !47
  %or.i = or i8 %175, %conv55.i
  store i8 %or.i, ptr %vm_needs_flush.i122, align 8
  %tobool18.not = icmp eq ptr %id.1, null
  br i1 %tobool18.not, label %if.end17.if.then19_crit_edge, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %if.end17.if.then19_crit_edge, %for.inc.i177.if.then19_crit_edge, %if.else.if.then19_crit_edge
  %176 = ptrtoint ptr %last_vm_update.i120 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %last_vm_update.i120, align 4
  %active = getelementptr inbounds %struct.amdgpu_vmid, ptr %idle.0, i32 0, i32 1
  %call20 = tail call i32 @amdgpu_sync_fence(ptr noundef %active, ptr noundef %fence) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.thread, label %if.then19.error_crit_edge

if.then19.error_crit_edge:                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

cleanup.thread:                                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %flushed_updates = getelementptr inbounds %struct.amdgpu_vmid, ptr %idle.0, i32 0, i32 5
  %178 = ptrtoint ptr %flushed_updates to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %flushed_updates, align 8
  tail call fastcc void @dma_fence_put(ptr noundef %179)
  %call24 = tail call fastcc ptr @dma_fence_get(ptr noundef %177)
  %180 = ptrtoint ptr %flushed_updates to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %177, ptr %flushed_updates, align 8
  %181 = ptrtoint ptr %vm_needs_flush.i122 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %vm_needs_flush.i122, align 8
  br label %if.end26

if.end26:                                         ; preds = %cleanup.thread, %if.end17.if.end26_crit_edge
  %id.3 = phi ptr [ %id.1, %if.end17.if.end26_crit_edge ], [ %idle.0, %cleanup.thread ]
  %ids_lru = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %id.3) #9
  br i1 %call.i.i, label %if.end.i.i179, label %if.end26.__list_del_entry.exit.i_crit_edge

if.end26.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i179:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %id.3, i32 0, i32 1
  %182 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %prev.i.i, align 4
  %184 = ptrtoint ptr %id.3 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %id.3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %183, ptr %prev1.i.i.i, align 4
  %187 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %185, ptr %183, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i179, %if.end26.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 2, i32 1
  %188 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %id.3, ptr noundef %189, ptr noundef %ids_lru) #9
  br i1 %call.i.i.i, label %if.end.i.i.i180, label %__list_del_entry.exit.i.if.end27_crit_edge

__list_del_entry.exit.i.if.end27_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i.i.i180:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %id.3, ptr %prev.i2.i, align 4
  %191 = ptrtoint ptr %id.3 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %ids_lru, ptr %id.3, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %id.3, i32 0, i32 1
  %192 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %189, ptr %prev3.i.i.i, align 4
  %193 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %id.3, ptr %189, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i.i180, %__list_del_entry.exit.i.if.end27_crit_edge, %lor.lhs.false10.if.end27_crit_edge
  %id.4 = phi ptr [ %66, %lor.lhs.false10.if.end27_crit_edge ], [ %id.3, %__list_del_entry.exit.i.if.end27_crit_edge ], [ %id.3, %if.end.i.i.i180 ]
  %vm_pd_addr = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 11
  %194 = ptrtoint ptr %vm_pd_addr to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %vm_pd_addr, align 8
  %pd_gpu_addr = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.4, i32 0, i32 4
  %196 = ptrtoint ptr %pd_gpu_addr to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %195, ptr %pd_gpu_addr, align 8
  %fence_context = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 14, i32 8
  %197 = ptrtoint ptr %fence_context to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %fence_context, align 8
  %owner = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.4, i32 0, i32 3
  %199 = ptrtoint ptr %owner to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %198, ptr %owner, align 8
  %vm_needs_flush28 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 10
  %200 = ptrtoint ptr %vm_needs_flush28 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %vm_needs_flush28, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool29.not = icmp eq i8 %201, 0
  br i1 %tobool29.not, label %if.end27.if.end32_crit_edge, label %if.then30

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  %last_flush = getelementptr inbounds %struct.amdgpu_vmid, ptr %id.4, i32 0, i32 2
  %202 = ptrtoint ptr %last_flush to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %last_flush, align 4
  %tobool.not.i181 = icmp eq ptr %203, null
  br i1 %tobool.not.i181, label %if.then30.dma_fence_put.exit_crit_edge, label %if.then.i183

if.then30.dma_fence_put.exit_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then.i183:                                     ; preds = %if.then30
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %203, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %204 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i182 = extractvalue { i32, i32, i32 } %204, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i182)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i182, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i184, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i182)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i182, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !35

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i184:                                   ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i184, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.then30.dma_fence_put.exit_crit_edge
  %205 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %last_flush, align 4
  br label %if.end32

if.end32:                                         ; preds = %dma_fence_put.exit, %if.end27.if.end32_crit_edge
  %ids = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3
  %sub.ptr.lhs.cast = ptrtoint ptr %id.4 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ids to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 136
  %vmid = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %206 = ptrtoint ptr %vmid to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %sub.ptr.div, ptr %vmid, align 8
  %pasid = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 17
  %207 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %pasid, align 4
  %pasid33 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 13
  %209 = ptrtoint ptr %pasid33 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %pasid33, align 4
  tail call fastcc void @trace_amdgpu_vm_grab_id(ptr noundef %vm, ptr noundef %ring, ptr noundef %job)
  br label %error

error:                                            ; preds = %if.end32, %if.then19.error_crit_edge, %if.end38.i.thread.error_crit_edge, %if.end38.i.error_crit_edge, %lor.lhs.false10.error_crit_edge, %amdgpu_vmid_grab_reserved.exit, %if.end39.i.error_crit_edge, %lor.lhs.false.error_crit_edge, %dma_fence_put.exit24.i, %for.end56.i, %if.end7.i.i.error_crit_edge, %if.end.i.error_crit_edge, %if.then.i
  %r.2 = phi i32 [ 0, %if.end32 ], [ 0, %lor.lhs.false10.error_crit_edge ], [ 0, %lor.lhs.false.error_crit_edge ], [ %call39.i, %if.end38.i.error_crit_edge ], [ %call39.i231, %if.end38.i.thread.error_crit_edge ], [ %call20, %if.then19.error_crit_edge ], [ -12, %if.end7.i.i.error_crit_edge ], [ -12, %for.end56.i ], [ -12, %if.end.i.error_crit_edge ], [ %call41.i, %if.end39.i.error_crit_edge ], [ %call37.i, %amdgpu_vmid_grab_reserved.exit ], [ %call6.i, %if.then.i ], [ %call58.i, %dma_fence_put.exit24.i ]
  tail call void @mutex_unlock(ptr noundef %arrayidx) #9
  ret i32 %r.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dma_fence_get(ptr noundef returned %fence) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !46

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !35

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %fence
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_grab_id(ptr noundef %vm, ptr noundef %ring, ptr noundef %job) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_grab_id, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_grab_id, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !34

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !35

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  %call42 = tail call i32 @__traceiter_amdgpu_vm_grab_id(ptr noundef null, ptr noundef %vm, ptr noundef %ring, ptr noundef %job) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %13 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !35

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_grab_id, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_grab_id, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_vm_grab_id.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_amdgpu_vm_grab_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 241, ptr noundef nonnull @.str.4) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  %31 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vmid_alloc_reserved(ptr noundef %adev, ptr nocapture noundef %vm, i32 noundef %vmhub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_manager = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65
  %arrayidx = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %vmhub
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #9
  %arrayidx2 = getelementptr %struct.amdgpu_vm, ptr %vm, i32 0, i32 18, i32 %vmhub
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %reserved_vmid_num = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %vmhub, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reserved_vmid_num, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %reserved_vmid_num, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reserved_vmid_num, ptr %reserved_vmid_num, i32 1, ptr elementtype(i32) %reserved_vmid_num) #9, !srcloc !52
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %reserved_vmid_num, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %reserved_vmid_num, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reserved_vmid_num, ptr %reserved_vmid_num, i32 1, ptr elementtype(i32) %reserved_vmid_num) #9, !srcloc !54
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ids_lru = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %vmhub, i32 2
  %4 = ptrtoint ptr %ids_lru to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ids_lru, align 8
  %call.i.i22 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i22, label %if.end.i.i, label %if.end5.list_del_init.exit_crit_edge

if.end5.list_del_init.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end5.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i, align 4
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %arrayidx2, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del_init.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then3 ]
  tail call void @mutex_unlock(ptr noundef %arrayidx) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vmid_free_reserved(ptr noundef %adev, ptr nocapture noundef %vm, i32 noundef %vmhub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_manager = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65
  %arrayidx = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %vmhub
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #9
  %arrayidx2 = getelementptr %struct.amdgpu_vm, ptr %vm, i32 0, i32 18, i32 %vmhub
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %ids_lru = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %vmhub, i32 2
  %2 = ptrtoint ptr %ids_lru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ids_lru, align 4
  %call.i.i16 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %ids_lru, ptr noundef %3) #9
  br i1 %call.i.i16, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ids_lru, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %ids_lru to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %1, ptr %ids_lru, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx2, align 4
  %reserved_vmid_num = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %vmhub, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reserved_vmid_num, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %reserved_vmid_num, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reserved_vmid_num, ptr %reserved_vmid_num, i32 1, ptr elementtype(i32) %reserved_vmid_num) #9, !srcloc !54
  br label %if.end

if.end:                                           ; preds = %list_add.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %arrayidx) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vmid_reset(ptr noundef %adev, i32 noundef %vmhub, i32 noundef %vmid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_manager = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65
  %arrayidx = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %vmhub
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #9
  %owner = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %vmhub, i32 3, i32 %vmid, i32 3
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %owner, align 8
  %gds_base = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %vmhub, i32 3, i32 %vmid, i32 7
  %1 = call ptr @memset(ptr %gds_base, i32 0, i32 24)
  tail call void @mutex_unlock(ptr noundef %arrayidx) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vmid_reset_all(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_manager = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65
  %num_ids = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp314 = icmp ugt i32 %1, 1
  br i1 %cmp314, label %entry.for.body4_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body4_crit_edge:                        ; preds = %entry
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %entry.for.body4_crit_edge
  %j.015 = phi i32 [ %inc, %for.body4.for.body4_crit_edge ], [ 1, %entry.for.body4_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %vm_manager, i32 noundef 0) #9
  %owner.i = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 0, i32 3, i32 %j.015, i32 3
  %2 = ptrtoint ptr %owner.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %owner.i, align 8
  %gds_base.i = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 0, i32 3, i32 %j.015, i32 7
  %3 = call ptr @memset(ptr %gds_base.i, i32 0, i32 24)
  tail call void @mutex_unlock(ptr noundef %vm_manager) #9
  %inc = add nuw i32 %j.015, 1
  %4 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ids, align 4
  %cmp3 = icmp ult i32 %inc, %5
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.end_crit_edge

for.body4.for.end_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.end:                                          ; preds = %for.body4.for.end_crit_edge, %entry.for.end_crit_edge
  %num_ids.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %num_ids.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ids.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp314.1 = icmp ugt i32 %7, 1
  br i1 %cmp314.1, label %for.body4.lr.ph.1, label %for.end.for.end.1_crit_edge

for.end.for.end.1_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

for.body4.lr.ph.1:                                ; preds = %for.end
  %arrayidx.i.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 0, i32 1
  br label %for.body4.1

for.body4.1:                                      ; preds = %for.body4.1.for.body4.1_crit_edge, %for.body4.lr.ph.1
  %j.015.1 = phi i32 [ 1, %for.body4.lr.ph.1 ], [ %inc.1, %for.body4.1.for.body4.1_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i.1, i32 noundef 0) #9
  %owner.i.1 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 1, i32 3, i32 %j.015.1, i32 3
  %8 = ptrtoint ptr %owner.i.1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %owner.i.1, align 8
  %gds_base.i.1 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 1, i32 3, i32 %j.015.1, i32 7
  %9 = call ptr @memset(ptr %gds_base.i.1, i32 0, i32 24)
  tail call void @mutex_unlock(ptr noundef %arrayidx.i.1) #9
  %inc.1 = add nuw i32 %j.015.1, 1
  %10 = ptrtoint ptr %num_ids.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ids.1, align 4
  %cmp3.1 = icmp ult i32 %inc.1, %11
  br i1 %cmp3.1, label %for.body4.1.for.body4.1_crit_edge, label %for.body4.1.for.end.1_crit_edge

for.body4.1.for.end.1_crit_edge:                  ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

for.body4.1.for.body4.1_crit_edge:                ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.1

for.end.1:                                        ; preds = %for.body4.1.for.end.1_crit_edge, %for.end.for.end.1_crit_edge
  %num_ids.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %num_ids.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ids.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp314.2 = icmp ugt i32 %13, 1
  br i1 %cmp314.2, label %for.body4.lr.ph.2, label %for.end.1.for.end.2_crit_edge

for.end.1.for.end.2_crit_edge:                    ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.2

for.body4.lr.ph.2:                                ; preds = %for.end.1
  %arrayidx.i.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 0, i32 2
  br label %for.body4.2

for.body4.2:                                      ; preds = %for.body4.2.for.body4.2_crit_edge, %for.body4.lr.ph.2
  %j.015.2 = phi i32 [ 1, %for.body4.lr.ph.2 ], [ %inc.2, %for.body4.2.for.body4.2_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i.2, i32 noundef 0) #9
  %owner.i.2 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 2, i32 3, i32 %j.015.2, i32 3
  %14 = ptrtoint ptr %owner.i.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %owner.i.2, align 8
  %gds_base.i.2 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 2, i32 3, i32 %j.015.2, i32 7
  %15 = call ptr @memset(ptr %gds_base.i.2, i32 0, i32 24)
  tail call void @mutex_unlock(ptr noundef %arrayidx.i.2) #9
  %inc.2 = add nuw i32 %j.015.2, 1
  %16 = ptrtoint ptr %num_ids.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ids.2, align 4
  %cmp3.2 = icmp ult i32 %inc.2, %17
  br i1 %cmp3.2, label %for.body4.2.for.body4.2_crit_edge, label %for.body4.2.for.end.2_crit_edge

for.body4.2.for.end.2_crit_edge:                  ; preds = %for.body4.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.2

for.body4.2.for.body4.2_crit_edge:                ; preds = %for.body4.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.2

for.end.2:                                        ; preds = %for.body4.2.for.end.2_crit_edge, %for.end.1.for.end.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vmid_mgr_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_manager = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65
  %first_kfd_vmid = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc12, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.034
  tail call void @__mutex_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.1, ptr noundef nonnull @amdgpu_vmid_mgr_init.__key) #9
  %ids_lru = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.034, i32 2
  %0 = ptrtoint ptr %ids_lru to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ids_lru, ptr %ids_lru, align 4
  %prev.i = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.034, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ids_lru, ptr %prev.i, align 4
  %reserved_vmid_num = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.034, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reserved_vmid_num, i32 noundef 4) #9
  %2 = ptrtoint ptr %reserved_vmid_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %reserved_vmid_num, align 4
  %3 = ptrtoint ptr %first_kfd_vmid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_kfd_vmid, align 8
  %num_ids = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.034, i32 1
  %5 = ptrtoint ptr %num_ids to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp532 = icmp ugt i32 %4, 1
  br i1 %cmp532, label %for.body.for.body6_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %list_add_tail.exit.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %j.033 = phi i32 [ %inc, %list_add_tail.exit.for.body6_crit_edge ], [ 1, %for.body.for.body6_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #9
  %owner.i = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.034, i32 3, i32 %j.033, i32 3
  %6 = ptrtoint ptr %owner.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %owner.i, align 8
  %gds_base.i = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.034, i32 3, i32 %j.033, i32 7
  %7 = call ptr @memset(ptr %gds_base.i, i32 0, i32 24)
  tail call void @mutex_unlock(ptr noundef %arrayidx) #9
  %arrayidx7 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.034, i32 3, i32 %j.033
  %active = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.034, i32 3, i32 %j.033, i32 1
  tail call void @amdgpu_sync_create(ptr noundef %active) #9
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i31 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx7, ptr noundef %9, ptr noundef %ids_lru) #9
  br i1 %call.i.i31, label %if.end.i.i, label %for.body6.list_add_tail.exit_crit_edge

for.body6.list_add_tail.exit_crit_edge:           ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx7, ptr %prev.i, align 4
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ids_lru, ptr %arrayidx7, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx7, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body6.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %j.033, 1
  %14 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ids, align 4
  %cmp5 = icmp ult i32 %inc, %15
  br i1 %cmp5, label %list_add_tail.exit.for.body6_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

list_add_tail.exit.for.body6_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc12 = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc12, 3
  br i1 %exitcond.not, label %for.end13, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sync_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vmid_mgr_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_manager = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc7, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.040
  tail call void @mutex_destroy(ptr noundef %arrayidx) #9
  br label %for.body4

for.body4:                                        ; preds = %dma_fence_put.exit38.for.body4_crit_edge, %for.body
  %j.039 = phi i32 [ 0, %for.body ], [ %inc, %dma_fence_put.exit38.for.body4_crit_edge ]
  %active = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.040, i32 3, i32 %j.039, i32 1
  tail call void @amdgpu_sync_free(ptr noundef %active) #9
  %flushed_updates = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.040, i32 3, i32 %j.039, i32 5
  %0 = ptrtoint ptr %flushed_updates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flushed_updates, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body4.dma_fence_put.exit_crit_edge, label %if.then.i

for.body4.dma_fence_put.exit_crit_edge:           ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %for.body4
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !35

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %for.body4.dma_fence_put.exit_crit_edge
  %last_flush = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.040, i32 3, i32 %j.039, i32 2
  %3 = ptrtoint ptr %last_flush to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %last_flush, align 4
  %tobool.not.i17 = icmp eq ptr %4, null
  br i1 %tobool.not.i17, label %dma_fence_put.exit.dma_fence_put.exit27_crit_edge, label %if.then.i22

dma_fence_put.exit.dma_fence_put.exit27_crit_edge: ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit27

if.then.i22:                                      ; preds = %dma_fence_put.exit
  %refcount.i18 = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 6
  %call.i.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i18, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i18, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i18, ptr %refcount.i18, i32 1, ptr elementtype(i32) %refcount.i18) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i20 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %cmp.i.i.i.i.i21 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i20, 1
  br i1 %cmp.i.i.i.i.i21, label %if.then.i.i26, label %if.end5.i.i.i.i.i24

if.end5.i.i.i.i.i24:                              ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %.not.i.i.i.i.i23 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i.i23, label %if.end5.i.i.i.i.i24.dma_fence_put.exit27_crit_edge, label %if.then10.i.i.i.i.i25, !prof !35

if.end5.i.i.i.i.i24.dma_fence_put.exit27_crit_edge: ; preds = %if.end5.i.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit27

if.then10.i.i.i.i.i25:                            ; preds = %if.end5.i.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i18, i32 noundef 3) #9
  br label %dma_fence_put.exit27

if.then.i.i26:                                    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount.i18) #9
  br label %dma_fence_put.exit27

dma_fence_put.exit27:                             ; preds = %if.then.i.i26, %if.then10.i.i.i.i.i25, %if.end5.i.i.i.i.i24.dma_fence_put.exit27_crit_edge, %dma_fence_put.exit.dma_fence_put.exit27_crit_edge
  %pasid_mapping = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %i.040, i32 3, i32 %j.039, i32 14
  %6 = ptrtoint ptr %pasid_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pasid_mapping, align 4
  %tobool.not.i28 = icmp eq ptr %7, null
  br i1 %tobool.not.i28, label %dma_fence_put.exit27.dma_fence_put.exit38_crit_edge, label %if.then.i33

dma_fence_put.exit27.dma_fence_put.exit38_crit_edge: ; preds = %dma_fence_put.exit27
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit38

if.then.i33:                                      ; preds = %dma_fence_put.exit27
  %refcount.i29 = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 6
  %call.i.i.i.i.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i29, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcount.i29, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i29, ptr %refcount.i29, i32 1, ptr elementtype(i32) %refcount.i29) #9, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i31 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i31)
  %cmp.i.i.i.i.i32 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i31, 1
  br i1 %cmp.i.i.i.i.i32, label %if.then.i.i37, label %if.end5.i.i.i.i.i35

if.end5.i.i.i.i.i35:                              ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i31)
  %.not.i.i.i.i.i34 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i31, 0
  br i1 %.not.i.i.i.i.i34, label %if.end5.i.i.i.i.i35.dma_fence_put.exit38_crit_edge, label %if.then10.i.i.i.i.i36, !prof !35

if.end5.i.i.i.i.i35.dma_fence_put.exit38_crit_edge: ; preds = %if.end5.i.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit38

if.then10.i.i.i.i.i36:                            ; preds = %if.end5.i.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i29, i32 noundef 3) #9
  br label %dma_fence_put.exit38

if.then.i.i37:                                    ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @dma_fence_release(ptr noundef %refcount.i29) #9
  br label %dma_fence_put.exit38

dma_fence_put.exit38:                             ; preds = %if.then.i.i37, %if.then10.i.i.i.i.i36, %if.end5.i.i.i.i.i35.dma_fence_put.exit38_crit_edge, %dma_fence_put.exit27.dma_fence_put.exit38_crit_edge
  %inc = add nuw nsw i32 %j.039, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %dma_fence_put.exit38.for.body4_crit_edge

dma_fence_put.exit38.for.body4_crit_edge:         ; preds = %dma_fence_put.exit38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.end:                                          ; preds = %dma_fence_put.exit38
  %inc7 = add nuw nsw i32 %i.040, 1
  %exitcond41.not = icmp eq i32 %inc7, 3
  br i1 %exitcond41.not, label %for.end8, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sync_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_pasid_allocated(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_pasid_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_sync_peek_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_vm_grab_id(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !21, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c", i32 483, i32 3}
!2 = !{ptr @amdgpu_vmid_mgr_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c", i32 577, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c", i32 41, i32 8}
!7 = !{ptr @amdgpu_pasid_ida, !6, !"amdgpu_pasid_ida", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 449, i32 1}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 454, i32 1}
!18 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/dma-fence.h", i32 475, i32 6}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 216, i32 1}
!23 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2148183057, i64 2148183062, i64 2148183075, i64 2148183119, i64 2148183153, i64 2148183174}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2159087067}
!37 = !{i64 2159087284}
!38 = !{i64 2149460393}
!39 = !{i64 2149461429}
!40 = !{i64 2159103569}
!41 = !{i64 2159103778}
!42 = !{!"auto-init"}
!43 = !{i64 2148459195}
!44 = !{i64 2148373659, i64 2148373691, i64 2148373720, i64 2148373754, i64 2148373785, i64 2148373808}
!45 = !{i64 2149302067}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i8 0, i8 2}
!48 = !{i64 2148371194, i64 2148371226, i64 2148371255, i64 2148371289, i64 2148371320, i64 2148371343}
!49 = !{i64 2158901082}
!50 = !{i64 2158901305}
!51 = !{i64 2148455075}
!52 = !{i64 2148370384, i64 2148370416, i64 2148370445, i64 2148370479, i64 2148370510, i64 2148370533}
!53 = !{i64 2148455304}
!54 = !{i64 2148372129, i64 2148372155, i64 2148372184, i64 2148372218, i64 2148372249, i64 2148372272}
