; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_vm_sdma.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_vm_sdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_vm_update_funcs = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_bo_vm = type { %struct.amdgpu_bo, ptr, %struct.list_head, [0 x %struct.amdgpu_vm_bo_base] }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.amdgpu_vm_update_params = type { ptr, ptr, i8, i8, ptr, ptr, i32, i8 }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.91, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.91 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.95, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
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
%struct.amdgpu_vmhub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_mman = type { %struct.ttm_device, i8, ptr, ptr, ptr, i8, %struct.mutex, %struct.drm_sched_entity, %struct.amdgpu_vram_mgr, %struct.amdgpu_gtt_mgr, %struct.amdgpu_preempt_mgr, i64, ptr, i64, ptr, i8, ptr, i64, i64, ptr, i32, ptr, i64, i64, ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.amdgpu_gtt_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.atomic64_t }
%struct.amdgpu_preempt_mgr = type { %struct.ttm_resource_manager, %struct.atomic64_t }
%struct.amdgpu_vram_scratch = type { ptr, ptr, i64 }
%struct.amdgpu_wb = type { ptr, ptr, i64, i32, [8 x i32] }
%struct.anon.95 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.106, i32, i32, i32, i32 }
%union.anon.106 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_vm_pte_funcs = type { i32, ptr, ptr, ptr }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.109, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.anon.109 = type { %union.anon.110, [128 x i64] }
%union.anon.110 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@amdgpu_vm_sdma_funcs = dso_local constant { %struct.amdgpu_vm_update_funcs, [16 x i8] } { %struct.amdgpu_vm_update_funcs { ptr @amdgpu_vm_sdma_map_table, ptr @amdgpu_vm_sdma_prepare, ptr @amdgpu_vm_sdma_update, ptr @amdgpu_vm_sdma_commit }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_vm_set_ptes = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", [44 x i8] zeroinitializer }, align 32
@trace_amdgpu_vm_set_ptes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_vm_copy_ptes = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_vm_copy_ptes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_vm_sdma.c\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"amdgpu_vm_sdma_funcs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 278, i32 37 }
@___asan_gen_.11 = private unnamed_addr constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 368, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 108, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [47 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm_sdma.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 102, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @amdgpu_vm_sdma_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_sdma_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vm_sdma_map_table(ptr noundef %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %table, i32 0, i32 4
  %call = tail call i32 @amdgpu_ttm_alloc_gart(ptr noundef %tbo) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %shadow = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shadow, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tbo4 = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @amdgpu_ttm_alloc_gart(ptr noundef %tbo4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vm_sdma_prepare(ptr noundef %p, ptr noundef %resv, i32 noundef %sync_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %immediate = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %immediate, align 4, !range !25
  %2 = zext i8 %1 to i32
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 4
  %job = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 5
  %call = tail call i32 @amdgpu_job_alloc_with_ib(ptr noundef %4, i32 noundef 1024, i32 noundef %2, ptr noundef %job) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_dw_left = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 6
  %5 = ptrtoint ptr %num_dw_left to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %num_dw_left, align 4
  %tobool2.not = icmp eq ptr %resv, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 4
  %8 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %job, align 4
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %9, i32 0, i32 2
  %vm = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm, align 4
  %call7 = tail call i32 @amdgpu_sync_resv(ptr noundef %7, ptr noundef %sync, ptr noundef nonnull %resv, i32 noundef %sync_mode, ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vm_sdma_update(ptr noundef %p, ptr noundef %vmbo, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %immediate = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %immediate, align 4, !range !25
  %2 = zext i8 %1 to i32
  %job = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 5
  %3 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %job, align 4
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %4, i32 0, i32 2
  %moving = getelementptr inbounds %struct.amdgpu_bo, ptr %vmbo, i32 0, i32 4, i32 11
  %5 = ptrtoint ptr %moving to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %moving, align 8
  %call = tail call i32 @amdgpu_sync_fence(ptr noundef %sync, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %num_dw_left = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 6
  %pages_addr = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 4
  %shadow37 = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %vmbo, i32 0, i32 1
  %conv = zext i32 %incr to i64
  br label %do.body

do.body:                                          ; preds = %if.end65.do.body_crit_edge, %do.body.preheader
  %count.addr.0 = phi i32 [ %sub69, %if.end65.do.body_crit_edge ], [ %count, %do.body.preheader ]
  %addr.addr.0 = phi i64 [ %addr.addr.1.lcssa, %if.end65.do.body_crit_edge ], [ %addr, %do.body.preheader ]
  %pe.addr.0 = phi i64 [ %add68, %if.end65.do.body_crit_edge ], [ %pe, %do.body.preheader ]
  %7 = ptrtoint ptr %num_dw_left to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_dw_left, align 4
  %9 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ibs, align 4
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length_dw, align 4
  %sub = sub i32 %8, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp = icmp ult i32 %sub, 32
  br i1 %cmp, label %if.then4, label %do.body.if.end27_crit_edge

do.body.if.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then4:                                         ; preds = %do.body
  %call5 = tail call i32 @amdgpu_vm_sdma_commit(ptr noundef %p, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %15 = ptrtoint ptr %pages_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages_addr, align 4
  %tobool9.not = icmp eq ptr %16, null
  %mul = shl i32 %count.addr.0, 1
  %add = add i32 %mul, 32
  %17 = tail call i32 @llvm.umax.i32(i32 %add, i32 256)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 16384)
  %19 = select i1 %tobool9.not, i32 256, i32 %18
  %20 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p, align 4
  %mul20 = shl nuw nsw i32 %19, 2
  %call22 = tail call i32 @amdgpu_job_alloc_with_ib(ptr noundef %21, i32 noundef %mul20, i32 noundef %2, ptr noundef %job) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %num_dw_left to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %num_dw_left, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %do.body.if.end27_crit_edge
  %ndw.1 = phi i32 [ %19, %if.end25 ], [ %sub, %do.body.if.end27_crit_edge ]
  %23 = ptrtoint ptr %pages_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages_addr, align 4
  %tobool29.not = icmp eq ptr %24, null
  br i1 %tobool29.not, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end27
  %25 = ptrtoint ptr %shadow37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shadow37, align 8
  %tobool31.not = icmp eq ptr %26, null
  br i1 %tobool31.not, label %if.then30.if.end34_crit_edge, label %if.then32

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %if.then30
  %27 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %job, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ibs.i, align 4
  %call.i = tail call i64 @amdgpu_bo_gpu_offset_no_check(ptr noundef nonnull %26) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355327, i64 %call.i)
  %cmp.i.i = icmp ugt i64 %call.i, 140737488355327
  %or.i.i = or i64 %call.i, -140737488355328
  %spec.select.i.i = select i1 %cmp.i.i, i64 %or.i.i, i64 %call.i
  %add.i = add i64 %spec.select.i.i, %pe.addr.0
  %31 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %immediate, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.i = icmp ne i8 %32, 0
  tail call fastcc void @trace_amdgpu_vm_set_ptes(i64 noundef %add.i, i64 noundef %addr.addr.0, i32 noundef %count.addr.0, i32 noundef %incr, i64 noundef %flags, i1 noundef zeroext %tobool.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0)
  %cmp.i = icmp ult i32 %count.addr.0, 3
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p, align 4
  %vm_pte_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %34, i32 0, i32 65, i32 11
  %35 = ptrtoint ptr %vm_pte_funcs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vm_pte_funcs.i, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %write_pte.i = getelementptr inbounds %struct.amdgpu_vm_pte_funcs, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %write_pte.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_pte.i, align 4
  %or.i = or i64 %addr.addr.0, %flags
  tail call void %38(ptr noundef %30, i64 noundef %add.i, i64 noundef %or.i, i32 noundef %count.addr.0, i32 noundef %incr) #7
  br label %if.end34

if.else.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %set_pte_pde.i = getelementptr inbounds %struct.amdgpu_vm_pte_funcs, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %set_pte_pde.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_pte_pde.i, align 4
  tail call void %40(ptr noundef %30, i64 noundef %add.i, i64 noundef %addr.addr.0, i32 noundef %count.addr.0, i32 noundef %incr, i64 noundef %flags) #7
  br label %if.end34

if.end34:                                         ; preds = %if.else.i, %if.then.i, %if.then30.if.end34_crit_edge
  %41 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %job, align 4
  %ibs.i150 = getelementptr inbounds %struct.amdgpu_job, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ibs.i150 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ibs.i150, align 4
  %call.i151 = tail call i64 @amdgpu_bo_gpu_offset_no_check(ptr noundef %vmbo) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355327, i64 %call.i151)
  %cmp.i.i152 = icmp ugt i64 %call.i151, 140737488355327
  %or.i.i153 = or i64 %call.i151, -140737488355328
  %spec.select.i.i154 = select i1 %cmp.i.i152, i64 %or.i.i153, i64 %call.i151
  %add.i155 = add i64 %spec.select.i.i154, %pe.addr.0
  %45 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %immediate, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.i157 = icmp ne i8 %46, 0
  tail call fastcc void @trace_amdgpu_vm_set_ptes(i64 noundef %add.i155, i64 noundef %addr.addr.0, i32 noundef %count.addr.0, i32 noundef %incr, i64 noundef %flags, i1 noundef zeroext %tobool.i157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0)
  %cmp.i158 = icmp ult i32 %count.addr.0, 3
  %47 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %p, align 4
  %vm_pte_funcs.i159 = getelementptr inbounds %struct.amdgpu_device, ptr %48, i32 0, i32 65, i32 11
  %49 = ptrtoint ptr %vm_pte_funcs.i159 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vm_pte_funcs.i159, align 8
  br i1 %cmp.i158, label %if.then.i162, label %if.else.i164

if.then.i162:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %write_pte.i160 = getelementptr inbounds %struct.amdgpu_vm_pte_funcs, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %write_pte.i160 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_pte.i160, align 4
  %or.i161 = or i64 %addr.addr.0, %flags
  tail call void %52(ptr noundef %44, i64 noundef %add.i155, i64 noundef %or.i161, i32 noundef %count.addr.0, i32 noundef %incr) #7
  br label %cleanup

if.else.i164:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %set_pte_pde.i163 = getelementptr inbounds %struct.amdgpu_vm_pte_funcs, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %set_pte_pde.i163 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_pte_pde.i163, align 4
  tail call void %54(ptr noundef %44, i64 noundef %add.i155, i64 noundef %addr.addr.0, i32 noundef %count.addr.0, i32 noundef %incr, i64 noundef %flags) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %55 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p, align 4
  %vm_pte_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %56, i32 0, i32 65, i32 11
  %57 = ptrtoint ptr %vm_pte_funcs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vm_pte_funcs, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %61 = ptrtoint ptr %shadow37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %shadow37, align 8
  %tobool38.not = icmp eq ptr %62, null
  %cond39.neg = select i1 %tobool38.not, i32 -1, i32 -2
  %mul40.neg = mul i32 %cond39.neg, %60
  %sub41 = add i32 %ndw.1, -7
  %sub42 = add i32 %sub41, %mul40.neg
  %div148 = lshr i32 %sub42, 1
  %63 = tail call i32 @llvm.umin.i32(i32 %count.addr.0, i32 %div148)
  %mul49.neg = mul i32 %63, -2
  %64 = ptrtoint ptr %num_dw_left to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_dw_left, align 4
  %sub51 = add i32 %mul49.neg, %65
  store i32 %sub51, ptr %num_dw_left, align 4
  %66 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %job, align 4
  %ibs53 = getelementptr inbounds %struct.amdgpu_job, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %ibs53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ibs53, align 4
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i32, ptr %71, i32 %sub51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp55195.not = icmp eq i32 %63, 0
  br i1 %cmp55195.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end35.for.body_crit_edge
  %addr.addr.1197 = phi i64 [ %add60, %for.body.for.body_crit_edge ], [ %addr.addr.0, %if.end35.for.body_crit_edge ]
  %i.0196 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %72 = ptrtoint ptr %pages_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pages_addr, align 4
  %call57 = tail call i64 @amdgpu_vm_map_gart(ptr noundef %73, i64 noundef %addr.addr.1197) #7
  %arrayidx58 = getelementptr i64, ptr %arrayidx, i32 %i.0196
  %or = or i64 %call57, %flags
  %74 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %or, ptr %arrayidx58, align 8
  %inc = add nuw nsw i32 %i.0196, 1
  %add60 = add i64 %addr.addr.1197, %conv
  %exitcond.not = icmp eq i32 %inc, %63
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end35.for.end_crit_edge
  %addr.addr.1.lcssa = phi i64 [ %addr.addr.0, %if.end35.for.end_crit_edge ], [ %add60, %for.body.for.end_crit_edge ]
  %75 = ptrtoint ptr %shadow37 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %shadow37, align 8
  %tobool62.not = icmp eq ptr %76, null
  br i1 %tobool62.not, label %for.end.if.end65_crit_edge, label %if.then63

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then63:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %job, align 4
  %ibs.i167 = getelementptr inbounds %struct.amdgpu_job, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %ibs.i167 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ibs.i167, align 4
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_ib, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %gpu_addr.i, align 8
  %83 = ptrtoint ptr %num_dw_left to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_dw_left, align 4
  %mul.i = shl i32 %84, 2
  %conv.i = zext i32 %mul.i to i64
  %add.i168 = add i64 %82, %conv.i
  %call.i169 = tail call i64 @amdgpu_bo_gpu_offset_no_check(ptr noundef nonnull %76) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355327, i64 %call.i169)
  %cmp.i.i170 = icmp ugt i64 %call.i169, 140737488355327
  %or.i.i171 = or i64 %call.i169, -140737488355328
  %spec.select.i.i172 = select i1 %cmp.i.i170, i64 %or.i.i171, i64 %call.i169
  %add2.i = add i64 %spec.select.i.i172, %pe.addr.0
  %85 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %immediate, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.i174 = icmp ne i8 %86, 0
  tail call fastcc void @trace_amdgpu_vm_copy_ptes(i64 noundef %add2.i, i64 noundef %add.i168, i32 noundef %63, i1 noundef zeroext %tobool.i174) #7
  %87 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %p, align 4
  %vm_pte_funcs.i175 = getelementptr inbounds %struct.amdgpu_device, ptr %88, i32 0, i32 65, i32 11
  %89 = ptrtoint ptr %vm_pte_funcs.i175 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vm_pte_funcs.i175, align 8
  %copy_pte.i = getelementptr inbounds %struct.amdgpu_vm_pte_funcs, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %copy_pte.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %copy_pte.i, align 4
  tail call void %92(ptr noundef %80, i64 noundef %add2.i, i64 noundef %add.i168, i32 noundef %63) #7
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %for.end.if.end65_crit_edge
  %93 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %job, align 4
  %ibs.i177 = getelementptr inbounds %struct.amdgpu_job, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %ibs.i177 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ibs.i177, align 4
  %gpu_addr.i178 = getelementptr inbounds %struct.amdgpu_ib, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %gpu_addr.i178 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %gpu_addr.i178, align 8
  %99 = ptrtoint ptr %num_dw_left to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_dw_left, align 4
  %mul.i180 = shl i32 %100, 2
  %conv.i181 = zext i32 %mul.i180 to i64
  %add.i182 = add i64 %98, %conv.i181
  %call.i183 = tail call i64 @amdgpu_bo_gpu_offset_no_check(ptr noundef %vmbo) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355327, i64 %call.i183)
  %cmp.i.i184 = icmp ugt i64 %call.i183, 140737488355327
  %or.i.i185 = or i64 %call.i183, -140737488355328
  %spec.select.i.i186 = select i1 %cmp.i.i184, i64 %or.i.i185, i64 %call.i183
  %add2.i187 = add i64 %spec.select.i.i186, %pe.addr.0
  %101 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %immediate, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.i189 = icmp ne i8 %102, 0
  tail call fastcc void @trace_amdgpu_vm_copy_ptes(i64 noundef %add2.i187, i64 noundef %add.i182, i32 noundef %63, i1 noundef zeroext %tobool.i189) #7
  %103 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %p, align 4
  %vm_pte_funcs.i190 = getelementptr inbounds %struct.amdgpu_device, ptr %104, i32 0, i32 65, i32 11
  %105 = ptrtoint ptr %vm_pte_funcs.i190 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %vm_pte_funcs.i190, align 8
  %copy_pte.i191 = getelementptr inbounds %struct.amdgpu_vm_pte_funcs, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %copy_pte.i191 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %copy_pte.i191, align 4
  tail call void %108(ptr noundef %96, i64 noundef %add2.i187, i64 noundef %add.i182, i32 noundef %63) #7
  %mul66 = shl i32 %63, 3
  %conv67 = zext i32 %mul66 to i64
  %add68 = add i64 %pe.addr.0, %conv67
  %sub69 = sub i32 %count.addr.0, %63
  %tobool70.not = icmp eq i32 %sub69, 0
  br i1 %tobool70.not, label %if.end65.cleanup_crit_edge, label %if.end65.do.body_crit_edge

if.end65.do.body_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end65.cleanup_crit_edge, %if.else.i164, %if.then.i162, %if.end8.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then.i162 ], [ 0, %if.else.i164 ], [ 0, %if.end65.cleanup_crit_edge ], [ %call22, %if.end8.cleanup_crit_edge ], [ %call5, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vm_sdma_commit(ptr nocapture noundef readonly %p, ptr noundef %fence) #0 align 64 {
entry:
  %f = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %job = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #7
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %f, align 4, !annotation !26
  %immediate = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 2
  %5 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %immediate, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %vm2 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %vm2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vm2, align 4
  %immediate1 = getelementptr inbounds %struct.amdgpu_vm, ptr %8, i32 0, i32 14
  %delayed = getelementptr inbounds %struct.amdgpu_vm, ptr %8, i32 0, i32 15
  %cond = select i1 %tobool.not, ptr %delayed, ptr %immediate1
  %rq = getelementptr inbounds %struct.drm_sched_entity, ptr %cond, i32 0, i32 1
  %9 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rq, align 8
  %sched = getelementptr inbounds %struct.drm_sched_rq, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sched, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 -144
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !27

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 102, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %funcs = getelementptr i8, ptr %12, i32 -140
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs, align 4
  %pad_ib = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %pad_ib to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pad_ib, align 4
  tail call void %18(ptr noundef %add.ptr, ptr noundef %3) #7
  %19 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length_dw, align 4
  %num_dw_left = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 6
  %21 = ptrtoint ptr %num_dw_left to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_dw_left, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp25 = icmp ugt i32 %20, %22
  br i1 %cmp25, label %do.end41, label %if.end.if.end47_crit_edge, !prof !27

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 104, i32 noundef 9, ptr noundef null) #7
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %23 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %job, align 4
  %call = call i32 @amdgpu_job_submit(ptr noundef %24, ptr noundef %cond, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %f) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool56.not = icmp eq i32 %call, 0
  br i1 %tobool56.not, label %if.end58, label %error

if.end58:                                         ; preds = %if.end47
  %unlocked = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 3
  %25 = ptrtoint ptr %unlocked to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %unlocked, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool59.not = icmp eq i8 %26, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end58
  %27 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %dma_fence_get.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then60
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %28, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !28
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !27

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then.i108_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !29

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then.i108_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i108

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %if.then.i108

dma_fence_get.exit:                               ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %vm64 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 1
  %31 = ptrtoint ptr %vm64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vm64, align 4
  %last_unlocked = getelementptr inbounds %struct.amdgpu_vm, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %last_unlocked, align 8
  %35 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f, align 4
  store ptr %36, ptr %last_unlocked, align 8
  store ptr %34, ptr %f, align 4
  br label %if.end70

if.then.i108:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then.i108_crit_edge
  %vm64121 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 1
  %37 = ptrtoint ptr %vm64121 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vm64121, align 4
  %last_unlocked122 = getelementptr inbounds %struct.amdgpu_vm, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %last_unlocked122 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %last_unlocked122, align 8
  %41 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f, align 4
  store ptr %42, ptr %last_unlocked122, align 8
  store ptr %40, ptr %f, align 4
  %call.i.i.i.i.i.i.i107 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i109 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i109, label %if.end5.i.i.i.i.i.if.end70_crit_edge, label %if.then10.i.i.i.i.i, !prof !29

if.end5.i.i.i.i.i.if.end70_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %if.end70

if.then.i.i:                                      ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %if.end70

if.else:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %vm69 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %p, i32 0, i32 1
  %44 = ptrtoint ptr %vm69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vm69, align 4
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %45, i32 0, i32 12, i32 1
  %46 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bo, align 4
  %48 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %f, align 4
  call void @amdgpu_bo_fence(ptr noundef %47, ptr noundef %49, i1 noundef zeroext true) #7
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end70_crit_edge, %dma_fence_get.exit
  %tobool71.not = icmp eq ptr %fence, null
  br i1 %tobool71.not, label %if.end70.if.end79thread-pre-split_crit_edge, label %land.lhs.true

if.end70.if.end79thread-pre-split_crit_edge:      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79thread-pre-split

land.lhs.true:                                    ; preds = %if.end70
  %50 = ptrtoint ptr %immediate to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %immediate, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool73.not = icmp eq i8 %51, 0
  br i1 %tobool73.not, label %do.body75, label %land.lhs.true.if.end79thread-pre-split_crit_edge

land.lhs.true.if.end79thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79thread-pre-split

do.body75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fence, align 4
  %54 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %f, align 4
  store ptr %55, ptr %fence, align 4
  store ptr %53, ptr %f, align 4
  br label %if.end79

if.end79thread-pre-split:                         ; preds = %land.lhs.true.if.end79thread-pre-split_crit_edge, %if.end70.if.end79thread-pre-split_crit_edge
  %56 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load ptr, ptr %f, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end79thread-pre-split, %do.body75
  %57 = phi ptr [ %.pr, %if.end79thread-pre-split ], [ %53, %do.body75 ]
  %tobool.not.i110 = icmp eq ptr %57, null
  br i1 %tobool.not.i110, label %if.end79.cleanup_crit_edge, label %if.then.i115

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i115:                                     ; preds = %if.end79
  %refcount.i111 = getelementptr inbounds %struct.dma_fence, ptr %57, i32 0, i32 6
  %call.i.i.i.i.i.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i111, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @llvm.prefetch.p0(ptr %refcount.i111, i32 1, i32 3, i32 1) #7
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i111, ptr %refcount.i111, i32 1, ptr elementtype(i32) %refcount.i111) #7, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i113 = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i113)
  %cmp.i.i.i.i.i114 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i113, 1
  br i1 %cmp.i.i.i.i.i114, label %if.then.i.i119, label %if.end5.i.i.i.i.i117

if.end5.i.i.i.i.i117:                             ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i113)
  %.not.i.i.i.i.i116 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i113, 0
  br i1 %.not.i.i.i.i.i116, label %if.end5.i.i.i.i.i117.cleanup_crit_edge, label %if.then10.i.i.i.i.i118, !prof !29

if.end5.i.i.i.i.i117.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i118:                           ; preds = %if.end5.i.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i111, i32 noundef 3) #7
  br label %cleanup

if.then.i.i119:                                   ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  call void @dma_fence_release(ptr noundef %refcount.i111) #7
  br label %cleanup

error:                                            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %60) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then.i.i119, %if.then10.i.i.i.i.i118, %if.end5.i.i.i.i.i117.cleanup_crit_edge, %if.end79.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_alloc_gart(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_resv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_vm_map_gart(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset_no_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_set_ptes(i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags, i1 noundef zeroext %immediate) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_set_ptes, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_set_ptes, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !15) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !29

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %call43 = tail call i32 @__traceiter_amdgpu_vm_set_ptes(ptr noundef null, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags, i1 noundef zeroext %immediate) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  %13 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !29

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_set_ptes, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_set_ptes, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_amdgpu_vm_set_ptes.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_amdgpu_vm_set_ptes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @.str.1) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %31 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_vm_set_ptes(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_copy_ptes(i64 noundef %pe, i64 noundef %src, i32 noundef %count, i1 noundef zeroext %immediate) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_copy_ptes, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_copy_ptes, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !15) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !29

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %call43 = tail call i32 @__traceiter_amdgpu_vm_copy_ptes(ptr noundef null, i64 noundef %pe, i64 noundef %src, i32 noundef %count, i1 noundef zeroext %immediate) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  %13 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !29

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_copy_ptes, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_copy_ptes, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_amdgpu_vm_copy_ptes.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_amdgpu_vm_copy_ptes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 413, ptr noundef nonnull @.str.1) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %31 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_vm_copy_ptes(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_fence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !13}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @amdgpu_vm_sdma_funcs, !1, !"amdgpu_vm_sdma_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm_sdma.c", i32 278, i32 37}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 368, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 394, i32 1}
!12 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm_sdma.c", i32 102, i32 2}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{!"auto-init"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2148210718, i64 2148210750, i64 2148210779, i64 2148210813, i64 2148210844, i64 2148210867}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148298719}
!31 = !{i64 2148213183, i64 2148213215, i64 2148213244, i64 2148213278, i64 2148213309, i64 2148213332}
!32 = !{i64 2149890462}
!33 = !{i64 2148719151, i64 2148719156, i64 2148719169, i64 2148719213, i64 2148719247, i64 2148719268}
!34 = !{i64 2158985631}
!35 = !{i64 2158985908}
!36 = !{i64 2149948564}
!37 = !{i64 2149949600}
!38 = !{i64 2159003173}
!39 = !{i64 2159003424}
