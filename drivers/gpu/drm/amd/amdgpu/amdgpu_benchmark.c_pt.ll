; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_bo_param = type { i32, i32, i32, i32, i32, i64, i32, i8, ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.93] }
%struct.anon.93 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
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
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown benchmark\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error while benchmarking BO move.\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 179, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@amdgpu_benchmark_log_results._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016[drm] amdgpu: %s %u bo moves of %u kB from %d to %d in %u ms, throughput: %u Mb/s or %u MB/s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu_benchmark_log_results\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c\00", [50 x i8] zeroinitializer }, align 32
@amdgpu_benchmark_log_results._entry_ptr = internal global ptr @amdgpu_benchmark_log_results._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 242, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 135, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 141, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 179, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [49 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 65, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @amdgpu_benchmark_log_results._entry, ptr @amdgpu_benchmark_log_results._entry_ptr, ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_benchmark_log_results._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_benchmark(ptr noundef %adev, i32 noundef %test_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %test_number to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %test_number, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %for.body.preheader
    i32 4, label %for.body6.preheader
    i32 5, label %for.body14.preheader
    i32 6, label %for.body22.preheader
    i32 7, label %for.body28.preheader
    i32 8, label %for.body36.preheader
  ]

for.body36.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1228800, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1382400, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1920000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1628160, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 3145728, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 3538944, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 3686400, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4096000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4372480, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4915200, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 5242880, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 5184000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 5880000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 7056000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 7680000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 8294400, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 9216000, i32 noundef 4, i32 noundef 4)
  br label %sw.epilog

for.body28.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1228800, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1382400, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1920000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1628160, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 3145728, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 3538944, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 3686400, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4096000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4372480, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4915200, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 5242880, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 5184000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 5880000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 7056000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 7680000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 8294400, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 9216000, i32 noundef 4, i32 noundef 2)
  br label %sw.epilog

for.body22.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1228800, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1382400, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1920000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1628160, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 3145728, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 3538944, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 3686400, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4096000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4372480, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4915200, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 5242880, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 5184000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 5880000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 7056000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 7680000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 8294400, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 9216000, i32 noundef 2, i32 noundef 4)
  br label %sw.epilog

for.body14.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4096, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 8192, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 16384, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 32768, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 65536, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 131072, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 262144, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 524288, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1048576, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 2097152, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4194304, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 8388608, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 16777216, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 33554432, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 67108864, i32 noundef 4, i32 noundef 4)
  br label %sw.epilog

for.body6.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4096, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 8192, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 16384, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 32768, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 65536, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 131072, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 262144, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 524288, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1048576, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 2097152, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4194304, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 8388608, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 16777216, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 33554432, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 67108864, i32 noundef 4, i32 noundef 2)
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4096, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 8192, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 16384, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 32768, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 65536, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 131072, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 262144, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 524288, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1048576, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 2097152, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 4194304, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 8388608, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 16777216, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 33554432, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 67108864, i32 noundef 2, i32 noundef 4)
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1048576, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1048576, i32 noundef 4, i32 noundef 2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef 1048576, i32 noundef 4, i32 noundef 4)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb, %for.body.preheader, %for.body6.preheader, %for.body14.preheader, %for.body22.preheader, %for.body28.preheader, %for.body36.preheader
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_benchmark_move(ptr noundef %adev, i32 noundef %size, i32 noundef %sdomain, i32 noundef %ddomain) unnamed_addr #0 align 64 {
entry:
  %dobj = alloca ptr, align 4
  %sobj = alloca ptr, align 4
  %bp = alloca %struct.amdgpu_bo_param, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dobj) #6
  %0 = ptrtoint ptr %dobj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dobj, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sobj) #6
  %1 = ptrtoint ptr %sobj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %sobj, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp) #6
  %2 = getelementptr inbounds i8, ptr %bp, i32 16
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %bp, align 8
  %byte_align = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 1
  %5 = ptrtoint ptr %byte_align to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %byte_align, align 4
  %domain = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 3
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sdomain, ptr %domain, align 4
  %type = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 8
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %8 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 568, ptr %bo_ptr_size, align 8
  %call = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef nonnull %bp, ptr noundef nonnull %sobj) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then52_crit_edge

entry.if.then52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sobj, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 4, i32 0, i32 9
  %13 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = call i32 @ww_mutex_lock_interruptible(ptr noundef %14, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %15 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end6
    i32 -512, label %if.end.if.then52_crit_edge
  ], !prof !33

if.end.if.then52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 -17736
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef %10) #9
  br label %if.then52

if.end6:                                          ; preds = %if.end
  %18 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sobj, align 4
  %call7 = call i32 @amdgpu_bo_pin(ptr noundef %19, i32 noundef %sdomain) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %20 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sobj, align 4
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %21, i32 0, i32 4
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %21, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #6
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %21, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %25, ptr noundef null) #6
  %26 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %27, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #6
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %21, i32 0, i32 4, i32 0, i32 9
  %28 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %29) #6
  call void @ww_mutex_unlock(ptr noundef %29) #6
  br label %if.then52

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @amdgpu_ttm_alloc_gart(ptr noundef %tbo) #6
  %30 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sobj, align 4
  %tbo.i103 = getelementptr inbounds %struct.amdgpu_bo, ptr %31, i32 0, i32 4
  %bdev.i.i.i104 = getelementptr inbounds %struct.amdgpu_bo, ptr %31, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %bdev.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bdev.i.i.i104, align 8
  %lru_lock.i.i.i105 = getelementptr inbounds %struct.ttm_device, ptr %33, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i105) #6
  %resource.i.i.i106 = getelementptr inbounds %struct.amdgpu_bo, ptr %31, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %resource.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resource.i.i.i106, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i103, ptr noundef %35, ptr noundef null) #6
  %36 = ptrtoint ptr %bdev.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdev.i.i.i104, align 8
  %lru_lock2.i.i.i107 = getelementptr inbounds %struct.ttm_device, ptr %37, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i107) #6
  %resv.i.i108 = getelementptr inbounds %struct.amdgpu_bo, ptr %31, i32 0, i32 4, i32 0, i32 9
  %38 = ptrtoint ptr %resv.i.i108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resv.i.i108, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %39) #6
  call void @ww_mutex_unlock(ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.if.then52_crit_edge

if.end10.if.then52_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end14:                                         ; preds = %if.end10
  %40 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sobj, align 4
  %call15 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %41) #6
  %42 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %ddomain, ptr %domain, align 4
  %call17 = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef nonnull %bp, ptr noundef nonnull %dobj) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.if.then52_crit_edge

if.end14.if.then52_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end20:                                         ; preds = %if.end14
  %43 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dobj, align 4
  %call21 = call fastcc i32 @amdgpu_bo_reserve(ptr noundef %44, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end30, label %if.end20.if.then52_crit_edge, !prof !34

if.end20.if.then52_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end30:                                         ; preds = %if.end20
  %45 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dobj, align 4
  %call31 = call i32 @amdgpu_bo_pin(ptr noundef %46, i32 noundef %ddomain) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sobj, align 4
  call fastcc void @amdgpu_bo_unreserve(ptr noundef %48)
  br label %if.then52

if.end34:                                         ; preds = %if.end30
  %49 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dobj, align 4
  %tbo35 = getelementptr inbounds %struct.amdgpu_bo, ptr %50, i32 0, i32 4
  %call36 = call i32 @amdgpu_ttm_alloc_gart(ptr noundef %tbo35) #6
  %51 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dobj, align 4
  call fastcc void @amdgpu_bo_unreserve(ptr noundef %52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.if.then52_crit_edge

if.end34.if.then52_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end39:                                         ; preds = %if.end34
  %53 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dobj, align 4
  %call40 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %54) #6
  %buffer_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 3
  %55 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer_funcs, align 8
  %tobool41.not = icmp eq ptr %56, null
  br i1 %tobool41.not, label %if.end39.if.end53_crit_edge, label %if.then42

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then42:                                        ; preds = %if.end39
  %call43 = call fastcc i32 @amdgpu_benchmark_do_move(ptr noundef %adev, i32 noundef %size, i64 noundef %call15, i64 noundef %call40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %57 = icmp slt i32 %call43, 1
  br i1 %57, label %if.then42.if.end53_crit_edge, label %if.then48

if.then42.if.end53_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @amdgpu_benchmark_log_results(i32 noundef %size, i32 noundef %call43, i32 noundef %sdomain, i32 noundef %ddomain)
  br label %if.end53

if.then52:                                        ; preds = %if.end34.if.then52_crit_edge, %if.then33, %if.end20.if.then52_crit_edge, %if.end14.if.then52_crit_edge, %if.end10.if.then52_crit_edge, %if.then9, %do.end.i, %if.end.if.then52_crit_edge, %entry.if.then52_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then48, %if.then42.if.end53_crit_edge, %if.end39.if.end53_crit_edge
  %58 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sobj, align 4
  %tobool54.not = icmp eq ptr %59, null
  br i1 %tobool54.not, label %if.end53.if.end66_crit_edge, label %if.then55

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then55:                                        ; preds = %if.end53
  %bdev.i109 = getelementptr inbounds %struct.amdgpu_bo, ptr %59, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %bdev.i109 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bdev.i109, align 8
  %resv32.i.i111 = getelementptr inbounds %struct.amdgpu_bo, ptr %59, i32 0, i32 4, i32 0, i32 9
  %62 = ptrtoint ptr %resv32.i.i111 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %resv32.i.i111, align 8
  %call.i1.i.i = call i32 @ww_mutex_lock(ptr noundef %63, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i112 = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i113 = select i1 %cmp.i.i112, i32 -512, i32 %call.i1.i.i
  %64 = zext i32 %.ret.0.i.i113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %.ret.0.i.i113, label %do.end.i114 [
    i32 0, label %if.then64
    i32 -512, label %if.then55.if.end65_crit_edge
  ], !prof !33

if.then55.if.end65_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

do.end.i114:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i110 = getelementptr i8, ptr %61, i32 -17736
  %65 = ptrtoint ptr %add.ptr.i.i110 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i.i110, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.3, ptr noundef nonnull %59) #9
  br label %if.end65

if.then64:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sobj, align 4
  call void @amdgpu_bo_unpin(ptr noundef %68) #6
  %69 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sobj, align 4
  %tbo.i116 = getelementptr inbounds %struct.amdgpu_bo, ptr %70, i32 0, i32 4
  %bdev.i.i.i117 = getelementptr inbounds %struct.amdgpu_bo, ptr %70, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %bdev.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bdev.i.i.i117, align 8
  %lru_lock.i.i.i118 = getelementptr inbounds %struct.ttm_device, ptr %72, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i118) #6
  %resource.i.i.i119 = getelementptr inbounds %struct.amdgpu_bo, ptr %70, i32 0, i32 4, i32 6
  %73 = ptrtoint ptr %resource.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %resource.i.i.i119, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i116, ptr noundef %74, ptr noundef null) #6
  %75 = ptrtoint ptr %bdev.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bdev.i.i.i117, align 8
  %lru_lock2.i.i.i120 = getelementptr inbounds %struct.ttm_device, ptr %76, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i120) #6
  %resv.i.i121 = getelementptr inbounds %struct.amdgpu_bo, ptr %70, i32 0, i32 4, i32 0, i32 9
  %77 = ptrtoint ptr %resv.i.i121 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %resv.i.i121, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %78) #6
  call void @ww_mutex_unlock(ptr noundef %78) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %do.end.i114, %if.then55.if.end65_crit_edge
  call void @amdgpu_bo_unref(ptr noundef nonnull %sobj) #6
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end53.if.end66_crit_edge
  %79 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dobj, align 4
  %tobool67.not = icmp eq ptr %80, null
  br i1 %tobool67.not, label %if.end66.if.end79_crit_edge, label %if.then68

if.end66.if.end79_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then68:                                        ; preds = %if.end66
  %bdev.i122 = getelementptr inbounds %struct.amdgpu_bo, ptr %80, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %bdev.i122 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bdev.i122, align 8
  %resv32.i.i124 = getelementptr inbounds %struct.amdgpu_bo, ptr %80, i32 0, i32 4, i32 0, i32 9
  %83 = ptrtoint ptr %resv32.i.i124 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %resv32.i.i124, align 8
  %call.i1.i.i125 = call i32 @ww_mutex_lock(ptr noundef %84, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i125)
  %cmp.i.i126 = icmp eq i32 %call.i1.i.i125, -4
  %.ret.0.i.i127 = select i1 %cmp.i.i126, i32 -512, i32 %call.i1.i.i125
  %85 = zext i32 %.ret.0.i.i127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %.ret.0.i.i127, label %do.end.i128 [
    i32 0, label %if.then77
    i32 -512, label %if.then68.if.end78_crit_edge
  ], !prof !33

if.then68.if.end78_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

do.end.i128:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i123 = getelementptr i8, ptr %82, i32 -17736
  %86 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i.i123, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.3, ptr noundef nonnull %80) #9
  br label %if.end78

if.then77:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dobj, align 4
  call void @amdgpu_bo_unpin(ptr noundef %89) #6
  %90 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dobj, align 4
  %tbo.i130 = getelementptr inbounds %struct.amdgpu_bo, ptr %91, i32 0, i32 4
  %bdev.i.i.i131 = getelementptr inbounds %struct.amdgpu_bo, ptr %91, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %bdev.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bdev.i.i.i131, align 8
  %lru_lock.i.i.i132 = getelementptr inbounds %struct.ttm_device, ptr %93, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i132) #6
  %resource.i.i.i133 = getelementptr inbounds %struct.amdgpu_bo, ptr %91, i32 0, i32 4, i32 6
  %94 = ptrtoint ptr %resource.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %resource.i.i.i133, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i130, ptr noundef %95, ptr noundef null) #6
  %96 = ptrtoint ptr %bdev.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bdev.i.i.i131, align 8
  %lru_lock2.i.i.i134 = getelementptr inbounds %struct.ttm_device, ptr %97, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i134) #6
  %resv.i.i135 = getelementptr inbounds %struct.amdgpu_bo, ptr %91, i32 0, i32 4, i32 0, i32 9
  %98 = ptrtoint ptr %resv.i.i135 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %resv.i.i135, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %99) #6
  call void @ww_mutex_unlock(ptr noundef %99) #6
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %do.end.i128, %if.then68.if.end78_crit_edge
  call void @amdgpu_bo_unref(ptr noundef nonnull %dobj) #6
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end66.if.end79_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sobj) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dobj) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_bo_reserve(ptr noundef %bo, i1 noundef zeroext %no_intr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %resv32.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %2 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv32.i, align 8
  br i1 %no_intr, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %3, ptr noundef null) #6
  br label %ttm_bo_reserve.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1.i = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #6
  br label %ttm_bo_reserve.exit

ttm_bo_reserve.exit:                              ; preds = %if.else.i, %if.then30.i
  %ret.0.i = phi i32 [ %call.i.i, %if.then30.i ], [ %call.i1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %ret.0.i)
  %cmp.i = icmp eq i32 %ret.0.i, -4
  %.ret.0.i = select i1 %cmp.i, i32 -512, i32 %ret.0.i
  %4 = zext i32 %.ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %.ret.0.i, label %do.end [
    i32 0, label %ttm_bo_reserve.exit.cleanup_crit_edge
    i32 -512, label %ttm_bo_reserve.exit.cleanup_crit_edge14
  ], !prof !33

ttm_bo_reserve.exit.cleanup_crit_edge14:          ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ttm_bo_reserve.exit.cleanup_crit_edge:            ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef %bo) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ttm_bo_reserve.exit.cleanup_crit_edge, %ttm_bo_reserve.exit.cleanup_crit_edge14
  ret i32 %.ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_pin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_bo_unreserve(ptr noundef %bo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #6
  %resource.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %3, ptr noundef null) #6
  %4 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #6
  %resv.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #6
  tail call void @ww_mutex_unlock(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_alloc_gart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_benchmark_do_move(ptr nocapture noundef readonly %adev, i32 noundef %size, i64 noundef %saddr, i64 noundef %daddr) unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #6
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %buffer_funcs_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  br label %for.body

for.cond:                                         ; preds = %dma_fence_put.exit
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %2 = ptrtoint ptr %buffer_funcs_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_funcs_ring, align 4
  %call = call i32 @amdgpu_copy_buffer(ptr noundef %3, i64 noundef %saddr, i64 noundef %daddr, i32 noundef %size, ptr noundef null, ptr noundef nonnull %fence, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup6_crit_edge

for.body.cleanup6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup6

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence, align 4
  %call.i = call i32 @dma_fence_wait_timeout(ptr noundef %5, i1 noundef zeroext false, i32 noundef 2147483647) #6
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.dma_fence_put.exit_crit_edge, label %if.then.i

if.end.dma_fence_put.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !34

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  call void @dma_fence_release(ptr noundef %refcount.i) #6
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool2.not = icmp sgt i32 %call.i, -1
  br i1 %tobool2.not, label %for.cond, label %dma_fence_put.exit.cleanup6_crit_edge

dma_fence_put.exit.cleanup6_crit_edge:            ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup6

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %9, %1
  %call5 = call i32 @jiffies_to_msecs(i32 noundef %sub) #6
  br label %cleanup6

cleanup6:                                         ; preds = %for.end, %dma_fence_put.exit.cleanup6_crit_edge, %for.body.cleanup6_crit_edge
  %retval.0 = phi i32 [ %call5, %for.end ], [ %call, %for.body.cleanup6_crit_edge ], [ %call.i, %dma_fence_put.exit.cleanup6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_benchmark_log_results(i32 noundef %size, i32 noundef %time, i32 noundef %sdomain, i32 noundef %ddomain) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, 10
  %mul = and i32 %size, -1024
  %div = udiv i32 %mul, %time
  %mul2 = shl i32 %div, 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1024, i32 noundef %shr, i32 noundef %sdomain, i32 noundef %ddomain, i32 noundef %time, i32 noundef %mul2, i32 noundef %div) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_copy_buffer(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !{null, !1, !"common_modes", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c", i32 165, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c", i32 242, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c", i32 135, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c", i32 141, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @amdgpu_bo_reserve._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @amdgpu_bo_reserve._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c", i32 65, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @amdgpu_benchmark_log_results._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @amdgpu_benchmark_log_results._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"auto-init"}
!36 = !{i64 2148446268}
!37 = !{i64 2148360732, i64 2148360764, i64 2148360793, i64 2148360827, i64 2148360858, i64 2148360881}
!38 = !{i64 2149529893}
