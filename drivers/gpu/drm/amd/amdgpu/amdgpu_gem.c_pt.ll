; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amdgpu_bo_param = type { i32, i32, i32, i32, i32, i64, i32, i8, ptr, ptr }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_amdgpu_gem_create_in = type { i64, i64, i64, i64 }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.94, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.anon.94 = type { %union.anon.95, [128 x i64] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.drm_amdgpu_gem_userptr = type { i64, i64, i32, i32 }
%struct.drm_amdgpu_gem_wait_idle_in = type { i32, i32, i64 }
%struct.drm_amdgpu_gem_metadata = type { i32, i32, %struct.anon.113 }
%struct.anon.113 = type { i64, i64, i32, [64 x i32] }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_bo_list_entry = type { %struct.ttm_validate_buffer, ptr, ptr, i32, ptr, i8 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_amdgpu_gem_va = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm, ptr, ptr, %struct.mutex, %struct.idr, %struct.amdgpu_ctx_mgr }
%struct.amdgpu_ctx_mgr = type { ptr, %struct.mutex, %struct.idr }
%struct.drm_amdgpu_gem_op = type { i32, i32, i64 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.amdgpu_bo_va = type { %struct.amdgpu_vm_bo_base, i32, ptr, %struct.list_head, %struct.list_head, i8, i8 }
%struct.dma_fence = type { ptr, ptr, %union.anon.81, i64, i64, i32, %struct.kref, i32 }
%union.anon.81 = type { i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%union.anon.14 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, ptr, %struct.address_space, %struct.list_head, %union.anon.85, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.83 = type { %struct.callback_head }
%union.anon.84 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.85 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }

@amdgpu_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @amdgpu_gem_object_free, ptr @amdgpu_gem_object_open, ptr @amdgpu_gem_object_close, ptr null, ptr @amdgpu_gem_prime_export, ptr null, ptr null, ptr null, ptr @drm_gem_ttm_vmap, ptr @drm_gem_ttm_vunmap, ptr @amdgpu_gem_object_mmap, ptr @amdgpu_gem_vm_ops }, [48 x i8] zeroinitializer }, align 32
@amdgpu_gem_force_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Still active user space clients!\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_gem_force_release.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"And also active allocations!\0A\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_gem_create_ioctl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_gem_create_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015[drm] Cannot allocate secure buffer since TMZ is disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu_gem_create_ioctl\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_gem_create_ioctl._entry_ptr = internal global ptr @amdgpu_gem_create_ioctl._entry, section ".printk_index", align 4
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GDS bo cannot be per-vm-bo\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to allocate GEM object (%llu, %d, %llu, %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@__const.amdgpu_gem_userptr_ioctl.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d \0A\00", [27 x i8] zeroinitializer }, align 32
@amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu_gem_va_ioctl\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: va_address 0x%LX is in reserved area 0x%LX\0A\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str, ptr @.str.12, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: va_address 0x%LX is in VA hole 0x%LX-0x%LX\0A\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str, ptr @.str.13, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: va_address 0x%llx is in top reserved area 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str, ptr @.str.14, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: invalid flags combination 0x%08X\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str, ptr @.str.15, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: unsupported operation %d\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_vm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amdgpu_gem_info\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_gem_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_debugfs_gem_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_gem_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @ttm_bo_vm_open, ptr @ttm_bo_vm_close, ptr null, ptr null, ptr null, ptr @amdgpu_gem_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttm_bo_vm_access, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_gem_object_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 218, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"amdgpu: leaking bo va because we fail to reserve bo (%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu_gem_object_close\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_gem_object_close._entry_ptr = internal global ptr @amdgpu_gem_object_close._entry, section ".printk_index", align 4
@amdgpu_gem_object_close._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str, i32 245, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: failed to clear page tables on GEM object close (%ld)\0A\00", [33 x i8] zeroinitializer }, align 32
@amdgpu_gem_object_close._entry_ptr.23 = internal global ptr @amdgpu_gem_object_close._entry.21, section ".printk_index", align 4
@dma_resv_excl_fence.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/dma-resv.h\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 179, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't update BO_VA (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pid %8d command %s:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_mode_dumb_create = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 255, i32 127, i32 63, i32 63], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"amdgpu_gem_object_funcs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 270, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 140, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 143, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 314, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 325, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 354, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 559, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 685, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 693, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 705, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 712, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 724, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1000, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant [29 x i8] c"amdgpu_debugfs_gem_info_fops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 990, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"amdgpu_gem_vm_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 78, i32 42 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 217, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 244, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [28 x i8] c"../include/linux/dma-resv.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 440, i32 9 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 179, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 630, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 174, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 973, i32 17 }
@___asan_gen_.157 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 974, i32 27 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 695, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 723, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [37 x i8] c"switch.table.amdgpu_mode_dumb_create\00", align 1
@llvm.compiler.used = appending global [45 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_gem_create_ioctl._entry, ptr @amdgpu_gem_create_ioctl._entry_ptr, ptr @amdgpu_gem_object_close._entry, ptr @amdgpu_gem_object_close._entry.21, ptr @amdgpu_gem_object_close._entry_ptr, ptr @amdgpu_gem_object_close._entry_ptr.23, ptr @amdgpu_gem_object_funcs, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @amdgpu_debugfs_gem_info_fops, ptr @amdgpu_gem_vm_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @switch.table.amdgpu_mode_dumb_create], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gem_create_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_gem_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gem_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gem_object_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gem_object_close._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_mode_dumb_create to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gem_object_create(ptr noundef %adev, i32 noundef %size, i32 noundef %alignment, i32 noundef %initial_domain, i64 noundef %flags, i32 noundef %type, ptr noundef %resv, ptr nocapture noundef writeonly %obj) local_unnamed_addr #0 align 64 {
entry:
  %ubo = alloca ptr, align 4
  %bp = alloca %struct.amdgpu_bo_param, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ubo) #7
  %0 = ptrtoint ptr %ubo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ubo, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp) #7
  %1 = getelementptr inbounds i8, ptr %bp, i32 16
  %2 = call ptr @memset(ptr %1, i32 0, i32 32)
  %3 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %obj, align 4
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %bp, align 8
  %byte_align = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 1
  %5 = ptrtoint ptr %byte_align to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %alignment, ptr %byte_align, align 4
  %type2 = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 6
  %6 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %type, ptr %type2, align 8
  %resv3 = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 8
  %7 = ptrtoint ptr %resv3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resv, ptr %resv3, align 8
  %preferred_domain = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 4
  %8 = ptrtoint ptr %preferred_domain to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %initial_domain, ptr %preferred_domain, align 8
  %flags4 = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 5
  %9 = ptrtoint ptr %flags4 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %flags, ptr %flags4, align 8
  %domain = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 3
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %initial_domain, ptr %domain, align 4
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %11 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 568, ptr %bo_ptr_size, align 8
  %call = call i32 @amdgpu_bo_create_user(ptr noundef %adev, ptr noundef nonnull %bp, ptr noundef nonnull %ubo) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ubo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ubo, align 4
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tbo, ptr %obj, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_bo, ptr %13, i32 0, i32 4, i32 0, i32 11
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @amdgpu_gem_object_funcs, ptr %funcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ubo) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gem_force_release(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %filelist_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 17
  tail call void @mutex_lock_nested(ptr noundef %filelist_mutex, i32 noundef 0) #7
  %filelist = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 18
  %0 = ptrtoint ptr %filelist to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn116 = load ptr, ptr %filelist, align 4
  %cmp.not117 = icmp eq ptr %.pn116, %filelist
  br i1 %cmp.not117, label %entry.for.end96_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end96

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn118 = phi ptr [ %.pn, %for.end.for.body_crit_edge ], [ %.pn116, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #7
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %handle, align 4, !annotation !97
  %.b111 = load i1, ptr @amdgpu_gem_force_release.__already_done, align 1
  br i1 %.b111, label %for.body.if.end28_crit_edge, label %if.then, !prof !98

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @amdgpu_gem_force_release.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then, %for.body.if.end28_crit_edge
  %table_lock = getelementptr i8, ptr %.pn118, i32 72
  call void @_raw_spin_lock(ptr noundef %table_lock) #7
  %object_idr = getelementptr i8, ptr %.pn118, i32 12
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %handle, align 4
  %call37113 = call ptr @idr_get_next(ptr noundef %object_idr, ptr noundef nonnull %handle) #7
  %cmp38.not114 = icmp eq ptr %call37113, null
  br i1 %cmp38.not114, label %if.end28.for.end_crit_edge, label %if.end28.land.end46_crit_edge

if.end28.land.end46_crit_edge:                    ; preds = %if.end28
  br label %land.end46

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.end46:                                       ; preds = %drm_gem_object_put.exit.land.end46_crit_edge, %if.end28.land.end46_crit_edge
  %call37115 = phi ptr [ %call37, %drm_gem_object_put.exit.land.end46_crit_edge ], [ %call37113, %if.end28.land.end46_crit_edge ]
  %.b110112 = load i1, ptr @amdgpu_gem_force_release.__already_done.2, align 1
  br i1 %.b110112, label %land.end46.if.then.i_crit_edge, label %if.then53, !prof !98

land.end46.if.then.i_crit_edge:                   ; preds = %land.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then53:                                        ; preds = %land.end46
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @amdgpu_gem_force_release.__already_done.2, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.3) #7
  br label %if.then.i

if.then.i:                                        ; preds = %if.then53, %land.end46.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call37115, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  call void @llvm.prefetch.p0(ptr nonnull %call37115, i32 1, i32 3, i32 1) #7
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call37115, ptr nonnull %call37115, i32 1, ptr nonnull elementtype(i32) %call37115) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %call37115, i32 noundef 3) #7
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @drm_gem_object_free(ptr noundef nonnull %call37115) #7, !callees !102
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 4
  %add = add i32 %5, 1
  store i32 %add, ptr %handle, align 4
  %call37 = call ptr @idr_get_next(ptr noundef %object_idr, ptr noundef nonnull %handle) #7
  %cmp38.not = icmp eq ptr %call37, null
  br i1 %cmp38.not, label %drm_gem_object_put.exit.for.end_crit_edge, label %drm_gem_object_put.exit.land.end46_crit_edge

drm_gem_object_put.exit.land.end46_crit_edge:     ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end46

drm_gem_object_put.exit.for.end_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %drm_gem_object_put.exit.for.end_crit_edge, %if.end28.for.end_crit_edge
  call void @idr_destroy(ptr noundef %object_idr) #7
  call void @_raw_spin_unlock(ptr noundef %table_lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #7
  %6 = ptrtoint ptr %.pn118 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn118, align 4
  %cmp.not = icmp eq ptr %.pn, %filelist
  br i1 %cmp.not, label %for.end.for.end96_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.for.end96_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end96

for.end96:                                        ; preds = %for.end.for.end96_crit_edge, %entry.for.end96_crit_edge
  call void @mutex_unlock(ptr noundef %filelist_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_gem_object_put(ptr noundef %obj) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %obj, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %obj, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr nonnull %obj, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %obj, ptr nonnull %obj, i32 1, ptr nonnull elementtype(i32) %obj) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %obj, i32 noundef 3) #7
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @drm_gem_object_free(ptr noundef nonnull %obj) #7, !callees !102
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gem_create_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %ubo.i = alloca ptr, align 4
  %bp.i = alloca %struct.amdgpu_bo_param, align 8
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %domain_flags = getelementptr inbounds %struct.drm_amdgpu_gem_create_in, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %domain_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %domain_flags, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #7
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %handle, align 4, !annotation !97
  %and = and i64 %3, -1232
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %domains = getelementptr inbounds %struct.drm_amdgpu_gem_create_in, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %domains to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %domains, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %8)
  %tobool3.not = icmp ult i64 %8, 64
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tmz_enabled.i = getelementptr i8, ptr %dev, i32 10161
  %9 = ptrtoint ptr %tmz_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmz_enabled.i, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i = icmp ne i8 %10, 0
  %and7 = and i64 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  %or.cond = select i1 %tobool.i, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.end25, label %land.end

land.end:                                         ; preds = %if.end5
  %.b133 = load i1, ptr @amdgpu_gem_create_ioctl.__already_done, align 1
  br i1 %.b133, label %land.end.cleanup_crit_edge, label %if.then15, !prof !98

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @amdgpu_gem_create_ioctl.__already_done, align 1
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end5
  %and27 = and i64 %8, 56
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27)
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end34_crit_edge, label %if.then29

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.end25
  %and30 = and i64 %3, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30)
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #7
  br label %cleanup

if.end33:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i64 %3, 2
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end25.if.end34_crit_edge
  %flags.0 = phi i64 [ %or, %if.end33 ], [ %3, %if.end25.if.end34_crit_edge ]
  %and35 = and i64 %flags.0, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end45_crit_edge, label %if.then37

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then37:                                        ; preds = %if.end34
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %12, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %12, i32 0, i32 4, i32 0, i32 9
  %15 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %16, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %17 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end41
    i32 -512, label %if.then37.cleanup_crit_edge
  ], !prof !104

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 -17736
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.26, ptr noundef %12) #10
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bo, align 4
  %resv44 = getelementptr inbounds %struct.amdgpu_bo, ptr %21, i32 0, i32 4, i32 0, i32 9
  %22 = ptrtoint ptr %resv44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resv44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.end34.if.end45_crit_edge
  %resv.0 = phi ptr [ %23, %if.end41 ], [ null, %if.end34.if.end45_crit_edge ]
  %24 = ptrtoint ptr %domains to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %domains, align 8
  %conv = trunc i64 %25 to i32
  %conv48 = trunc i64 %5 to i32
  %alignment = getelementptr inbounds %struct.drm_amdgpu_gem_create_in, ptr %data, i32 0, i32 1
  %26 = getelementptr inbounds i8, ptr %bp.i, i32 16
  %byte_align.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 1
  %resv3.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 8
  %flags4.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 5
  %domain.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 3
  %bo_ptr_size.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 2
  br label %retry.outer

retry.outer:                                      ; preds = %if.end59.retry.outer_crit_edge, %if.end45
  %initial_domain.0.ph = phi i32 [ 6, %if.end59.retry.outer_crit_edge ], [ %conv, %if.end45 ]
  %flags.1.ph = phi i64 [ %flags.1, %if.end59.retry.outer_crit_edge ], [ %flags.0, %if.end45 ]
  %27 = and i64 %flags.1.ph, -2
  br label %retry

retry:                                            ; preds = %if.then54.retry_crit_edge, %retry.outer
  %flags.1 = phi i64 [ %flags.1.ph, %retry.outer ], [ %27, %if.then54.retry_crit_edge ]
  %28 = ptrtoint ptr %alignment to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %alignment, align 8
  %conv49 = trunc i64 %29 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ubo.i) #7
  %30 = ptrtoint ptr %ubo.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %ubo.i, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp.i) #7
  %31 = call ptr @memset(ptr %26, i32 0, i32 32)
  %32 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv48, ptr %bp.i, align 8
  %33 = ptrtoint ptr %byte_align.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv49, ptr %byte_align.i, align 4
  %34 = ptrtoint ptr %resv3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %resv.0, ptr %resv3.i, align 8
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %initial_domain.0.ph, ptr %26, align 8
  %36 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %flags.1, ptr %flags4.i, align 8
  %37 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %initial_domain.0.ph, ptr %domain.i, align 4
  %38 = ptrtoint ptr %bo_ptr_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 568, ptr %bo_ptr_size.i, align 8
  %call.i = call i32 @amdgpu_bo_create_user(ptr noundef %add.ptr.i, ptr noundef nonnull %bp.i, ptr noundef nonnull %ubo.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end66.thread, label %amdgpu_gem_object_create.exit

amdgpu_gem_object_create.exit:                    ; preds = %retry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ubo.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call.i)
  %cond = icmp eq i32 %call.i, -512
  br i1 %cond, label %amdgpu_gem_object_create.exit.if.end66_crit_edge, label %if.then54

amdgpu_gem_object_create.exit.if.end66_crit_edge: ; preds = %amdgpu_gem_object_create.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then54:                                        ; preds = %amdgpu_gem_object_create.exit
  %and55 = and i64 %flags.1, 1
  %tobool56.not = icmp eq i64 %and55, 0
  br i1 %tobool56.not, label %if.end59, label %if.then54.retry_crit_edge

if.then54.retry_crit_edge:                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

if.end59:                                         ; preds = %if.then54
  %cmp60 = icmp eq i32 %initial_domain.0.ph, 4
  br i1 %cmp60, label %if.end59.retry.outer_crit_edge, label %if.end64

if.end59.retry.outer_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.outer

if.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %alignment to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %alignment, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef %initial_domain.0.ph, i64 noundef %40, i32 noundef %call.i) #7
  br label %if.end66

if.end66:                                         ; preds = %if.end64, %amdgpu_gem_object_create.exit.if.end66_crit_edge
  %and67 = and i64 %flags.1, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67)
  %tobool68.not = icmp eq i64 %and67, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.end66.if.end79_crit_edge

if.end66.if.end79_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66.thread:                                  ; preds = %retry
  %41 = ptrtoint ptr %ubo.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ubo.i, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %42, i32 0, i32 4
  %funcs.i = getelementptr inbounds %struct.amdgpu_bo, ptr %42, i32 0, i32 4, i32 0, i32 11
  %43 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @amdgpu_gem_object_funcs, ptr %funcs.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ubo.i) #7
  %and67141 = and i64 %flags.1, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67141)
  %tobool68.not142 = icmp eq i64 %and67141, 0
  br i1 %tobool68.not142, label %if.end66.thread.if.end82_crit_edge, label %if.then71

if.end66.thread.if.end82_crit_edge:               ; preds = %if.end66.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then71:                                        ; preds = %if.end66.thread
  call void @__sanitizer_cov_trace_pc() #9
  %bo74 = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 12, i32 1
  %44 = ptrtoint ptr %bo74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bo74, align 4
  %call75 = call ptr @amdgpu_bo_ref(ptr noundef %45) #7
  %parent = getelementptr %struct.amdgpu_bo, ptr %42, i32 0, i32 8
  %46 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call75, ptr %parent, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then71, %if.end66.if.end79_crit_edge
  %call.i174 = phi i32 [ 0, %if.then71 ], [ %call.i, %if.end66.if.end79_crit_edge ]
  %gobj.0139143146 = phi ptr [ %tbo.i, %if.then71 ], [ null, %if.end66.if.end79_crit_edge ]
  %bo78 = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 12, i32 1
  %47 = ptrtoint ptr %bo78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bo78, align 4
  %tbo.i135 = getelementptr inbounds %struct.amdgpu_bo, ptr %48, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %48, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %50, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %48, i32 0, i32 4, i32 6
  %51 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i135, ptr noundef %52, ptr noundef null) #7
  %53 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %54, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %48, i32 0, i32 4, i32 0, i32 9
  %55 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %56) #7
  call void @ww_mutex_unlock(ptr noundef %56) #7
  br i1 %tobool.not.i, label %if.end79.if.end82_crit_edge, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end79.if.end82_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.end82:                                         ; preds = %if.end79.if.end82_crit_edge, %if.end66.thread.if.end82_crit_edge
  %gobj.0139144149 = phi ptr [ %gobj.0139143146, %if.end79.if.end82_crit_edge ], [ %tbo.i, %if.end66.thread.if.end82_crit_edge ]
  %call83 = call i32 @drm_gem_handle_create(ptr noundef %filp, ptr noundef %gobj.0139144149, ptr noundef nonnull %handle) #7
  call fastcc void @drm_gem_object_put(ptr noundef %gobj.0139144149)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %57 = call ptr @memset(ptr %data, i32 0, i32 32)
  %58 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle, align 4
  %60 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.end82.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %do.end.i, %if.then37.cleanup_crit_edge, %if.then32, %if.then15, %land.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then32 ], [ 0, %if.end86 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then15 ], [ -22, %land.end.cleanup_crit_edge ], [ %.ret.0.i.i, %do.end.i ], [ %call.i174, %if.end79.cleanup_crit_edge ], [ %call83, %if.end82.cleanup_crit_edge ], [ %.ret.0.i.i, %if.then37.cleanup_crit_edge ], [ %call.i, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_bo_reserve(ptr noundef %bo, i1 noundef zeroext %no_intr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %3, ptr noundef null) #7
  br label %ttm_bo_reserve.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1.i = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #7
  br label %ttm_bo_reserve.exit

ttm_bo_reserve.exit:                              ; preds = %if.else.i, %if.then30.i
  %ret.0.i = phi i32 [ %call.i.i, %if.then30.i ], [ %call.i1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %ret.0.i)
  %cmp.i = icmp eq i32 %ret.0.i, -4
  %.ret.0.i = select i1 %cmp.i, i32 -512, i32 %ret.0.i
  %4 = zext i32 %.ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %.ret.0.i, label %do.end [
    i32 0, label %ttm_bo_reserve.exit.cleanup_crit_edge
    i32 -512, label %ttm_bo_reserve.exit.cleanup_crit_edge14
  ], !prof !104

ttm_bo_reserve.exit.cleanup_crit_edge14:          ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ttm_bo_reserve.exit.cleanup_crit_edge:            ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef %bo) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ttm_bo_reserve.exit.cleanup_crit_edge, %ttm_bo_reserve.exit.cleanup_crit_edge14
  ret i32 %.ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_bo_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_bo_unreserve(ptr noundef %bo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #7
  %resource.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %3, ptr noundef null) #7
  %4 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #7
  %resv.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #7
  tail call void @ww_mutex_unlock(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gem_userptr_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %ubo.i = alloca ptr, align 4
  %bp.i = alloca %struct.amdgpu_bo_param, align 8
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #7
  %0 = call ptr @memcpy(ptr %ctx, ptr @__const.amdgpu_gem_userptr_ioctl.ctx, i32 24)
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #7
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %handle, align 4, !annotation !97
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  %size = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  %or = or i64 %5, %3
  %and109 = and i64 %or, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and109)
  %tobool.not = icmp eq i64 %and109, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %tobool4.not = icmp ult i32 %7, 16
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = and i32 %7, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %conv16 = trunc i64 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ubo.i) #7
  %10 = ptrtoint ptr %ubo.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %ubo.i, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp.i) #7
  %11 = getelementptr inbounds i8, ptr %bp.i, i32 16
  %12 = call ptr @memset(ptr %11, i32 0, i32 32)
  %13 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv16, ptr %bp.i, align 8
  %byte_align.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 1
  %14 = ptrtoint ptr %byte_align.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %byte_align.i, align 4
  %resv3.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 8
  %15 = ptrtoint ptr %resv3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %resv3.i, align 8
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %11, align 8
  %domain.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 3
  %17 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %domain.i, align 4
  %bo_ptr_size.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 2
  %18 = ptrtoint ptr %bo_ptr_size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 568, ptr %bo_ptr_size.i, align 8
  %call.i = call i32 @amdgpu_bo_create_user(ptr noundef %add.ptr.i, ptr noundef nonnull %bp.i, ptr noundef nonnull %ubo.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end20, label %amdgpu_gem_object_create.exit

amdgpu_gem_object_create.exit:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ubo.i) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %19 = ptrtoint ptr %ubo.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ubo.i, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4
  %funcs.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 0, i32 11
  %21 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @amdgpu_gem_object_funcs, ptr %funcs.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ubo.i) #7
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %20, align 8
  %allowed_domains = getelementptr %struct.amdgpu_bo, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %allowed_domains to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %allowed_domains, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data, align 8
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %call23 = call i32 @amdgpu_ttm_tt_set_userptr(ptr noundef %tbo.i, i64 noundef %25, i32 noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.release_object_crit_edge

if.end20.release_object_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_object

if.end26:                                         ; preds = %if.end20
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and28 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end37_crit_edge, label %if.then30

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then30:                                        ; preds = %if.end26
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %data, align 8
  %conv32 = trunc i64 %31 to i32
  %call33 = call i32 @amdgpu_mn_register(ptr noundef %20, i32 noundef %conv32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then30.if.end37_crit_edge, label %if.then30.release_object_crit_edge

if.then30.release_object_crit_edge:               ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_object

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37:                                         ; preds = %if.then30.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  %and39 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end56_crit_edge, label %if.then41

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then41:                                        ; preds = %if.end37
  %ttm = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 7
  %34 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ttm, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call43 = call i32 @amdgpu_ttm_tt_get_user_pages(ptr noundef %20, ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then41.release_object_crit_edge

if.then41.release_object_crit_edge:               ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_object

if.end46:                                         ; preds = %if.then41
  %call47 = call fastcc i32 @amdgpu_bo_reserve(ptr noundef %20, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.user_pages_done_crit_edge

if.end46.user_pages_done_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %user_pages_done

if.end50:                                         ; preds = %if.end46
  call void @amdgpu_bo_placement_from_domain(ptr noundef %20, i32 noundef 2) #7
  %placement = getelementptr %struct.amdgpu_bo, ptr %20, i32 0, i32 3
  %call52 = call i32 @ttm_bo_validate(ptr noundef %tbo.i, ptr noundef %placement, ptr noundef nonnull %ctx) #7
  call fastcc void @amdgpu_bo_unreserve(ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end50.if.end56_crit_edge, label %if.end50.user_pages_done_crit_edge

if.end50.user_pages_done_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %user_pages_done

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end56:                                         ; preds = %if.end50.if.end56_crit_edge, %if.end37.if.end56_crit_edge
  %call57 = call i32 @drm_gem_handle_create(ptr noundef %filp, ptr noundef %tbo.i, ptr noundef nonnull %handle) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.user_pages_done_crit_edge

if.end56.user_pages_done_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %user_pages_done

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %handle, align 4
  %handle61 = getelementptr inbounds %struct.drm_amdgpu_gem_userptr, ptr %data, i32 0, i32 3
  %40 = ptrtoint ptr %handle61 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %handle61, align 4
  br label %user_pages_done

user_pages_done:                                  ; preds = %if.end60, %if.end56.user_pages_done_crit_edge, %if.end50.user_pages_done_crit_edge, %if.end46.user_pages_done_crit_edge
  %r.0 = phi i32 [ %call47, %if.end46.user_pages_done_crit_edge ], [ %call52, %if.end50.user_pages_done_crit_edge ], [ %call57, %if.end56.user_pages_done_crit_edge ], [ 0, %if.end60 ]
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 8
  %and63 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %user_pages_done.release_object_crit_edge, label %if.then65

user_pages_done.release_object_crit_edge:         ; preds = %user_pages_done
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_object

if.then65:                                        ; preds = %user_pages_done
  call void @__sanitizer_cov_trace_pc() #9
  %ttm67 = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 7
  %43 = ptrtoint ptr %ttm67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ttm67, align 8
  %call68 = call zeroext i1 @amdgpu_ttm_tt_get_user_pages_done(ptr noundef %44) #7
  br label %release_object

release_object:                                   ; preds = %if.then65, %user_pages_done.release_object_crit_edge, %if.then41.release_object_crit_edge, %if.then30.release_object_crit_edge, %if.end20.release_object_crit_edge
  %r.1 = phi i32 [ %call23, %if.end20.release_object_crit_edge ], [ %call33, %if.then30.release_object_crit_edge ], [ %call43, %if.then41.release_object_crit_edge ], [ %r.0, %if.then65 ], [ %r.0, %user_pages_done.release_object_crit_edge ]
  %tobool.not.i110 = icmp eq ptr %tbo.i, null
  br i1 %tobool.not.i110, label %release_object.cleanup_crit_edge, label %if.then.i

release_object.cleanup_crit_edge:                 ; preds = %release_object
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %release_object
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbo.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  call void @llvm.prefetch.p0(ptr nonnull %tbo.i, i32 1, i32 3, i32 1) #7
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %tbo.i, ptr nonnull %tbo.i, i32 1, ptr nonnull elementtype(i32) %tbo.i) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %tbo.i, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @drm_gem_object_free(ptr noundef nonnull %tbo.i) #7, !callees !102
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %release_object.cleanup_crit_edge, %amdgpu_gem_object_create.exit, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -13, %if.end6.cleanup_crit_edge ], [ %call.i, %amdgpu_gem_object_create.exit ], [ %r.1, %release_object.cleanup_crit_edge ], [ %r.1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %r.1, %if.then10.i.i.i.i.i.i ], [ %r.1, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_tt_set_userptr(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_mn_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_tt_get_user_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_placement_from_domain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_ttm_tt_get_user_pages_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_mode_dumb_mmap(ptr noundef %filp, ptr nocapture readnone %dev, i32 noundef %handle, ptr nocapture noundef writeonly %offset_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %handle) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ttm, align 8
  %call1 = tail call ptr @amdgpu_ttm_tt_get_usermm(ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr i8, ptr %call, i32 432
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %and = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.then.i16, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #7, !callees !102
  br label %cleanup

if.then.i16:                                      ; preds = %lor.lhs.false
  %start.i.i = getelementptr i8, ptr %call, i32 72
  %5 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start.i.i, align 8
  %shl.i.i = shl i64 %6, 12
  %7 = ptrtoint ptr %offset_p to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl.i.i, ptr %offset_p, align 8
  %call.i.i.i.i.i.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i14 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i14)
  %cmp.i.i.i.i.i.i15 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i14, 1
  br i1 %cmp.i.i.i.i.i.i15, label %if.then.i.i.i20, label %if.end5.i.i.i.i.i.i18

if.end5.i.i.i.i.i.i18:                            ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i14)
  %.not.i.i.i.i.i.i17 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i14, 0
  br i1 %.not.i.i.i.i.i.i17, label %if.end5.i.i.i.i.i.i18.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i19, !prof !98

if.end5.i.i.i.i.i.i18.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i19:                          ; preds = %if.end5.i.i.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i20:                                  ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #7, !callees !102
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i20, %if.then10.i.i.i.i.i.i19, %if.end5.i.i.i.i.i.i18.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ -1, %if.then10.i.i.i.i.i.i ], [ -1, %if.then.i.i.i ], [ 0, %if.end5.i.i.i.i.i.i18.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i19 ], [ 0, %if.then.i.i.i20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ttm_tt_get_usermm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gem_mmap_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  store i64 0, ptr %data, align 8
  %call = tail call i32 @amdgpu_mode_dumb_mmap(ptr noundef %filp, ptr undef, i32 noundef %1, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gem_timeout(i64 noundef %timeout_ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %timeout_ns)
  %cmp = icmp slt i64 %timeout_ns, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ktime_get() #7
  %sub = sub i64 %timeout_ns, %call1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp3 = icmp slt i64 %sub, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @nsecs_to_jiffies(i64 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  %.call7 = select i1 %cmp8, i32 2147483646, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2147483647, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %.call7, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gem_wait_idle_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %timeout2 = getelementptr inbounds %struct.drm_amdgpu_gem_wait_idle_in, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %timeout2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.i = icmp slt i64 %3, 0
  br i1 %cmp.i, label %entry.amdgpu_gem_timeout.exit_crit_edge, label %if.end.i

entry.amdgpu_gem_timeout.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_gem_timeout.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i64 @ktime_get() #7
  %sub.i = sub i64 %3, %call1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp3.i = icmp slt i64 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.amdgpu_gem_timeout.exit_crit_edge, label %if.end5.i

if.end.i.amdgpu_gem_timeout.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_gem_timeout.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @nsecs_to_jiffies(i64 noundef %sub.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  %.call7.i = select i1 %cmp8.i, i32 2147483646, i32 %call7.i
  br label %amdgpu_gem_timeout.exit

amdgpu_gem_timeout.exit:                          ; preds = %if.end5.i, %if.end.i.amdgpu_gem_timeout.exit_crit_edge, %entry.amdgpu_gem_timeout.exit_crit_edge
  %retval.0.i = phi i32 [ 2147483647, %entry.amdgpu_gem_timeout.exit_crit_edge ], [ 0, %if.end.i.amdgpu_gem_timeout.exit_crit_edge ], [ %.call7.i, %if.end5.i ]
  %call3 = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %1) #7
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %amdgpu_gem_timeout.exit.cleanup_crit_edge, label %if.end

amdgpu_gem_timeout.exit.cleanup_crit_edge:        ; preds = %amdgpu_gem_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %amdgpu_gem_timeout.exit
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %call3, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %call4 = tail call i32 @dma_resv_wait_timeout(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %if.then6, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memset(ptr %data, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp7 = icmp eq i32 %call4, 0
  %conv = zext i1 %cmp7 to i32
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %data, align 8
  br label %if.then.i

if.then.i:                                        ; preds = %if.then6, %if.end.if.then.i_crit_edge
  %r.0 = phi i32 [ 0, %if.then6 ], [ %call4, %if.end.if.then.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call3, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @drm_gem_object_free(ptr noundef nonnull %call3) #7, !callees !102
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %amdgpu_gem_timeout.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %amdgpu_gem_timeout.exit.cleanup_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i.i ], [ %r.0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gem_metadata_ioctl(ptr nocapture noundef readnone %dev, ptr noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %1) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %3) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -72
  %bdev.i = getelementptr i8, ptr %call, i32 352
  %4 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %call, i32 200
  %6 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %7, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %8 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end6
    i32 -512, label %if.end.if.then.i_crit_edge
  ], !prof !104

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -17736
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.26, ptr noundef %add.ptr) #10
  br label %if.then.i

if.end6:                                          ; preds = %if.end
  %op = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %op, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %12, label %if.end6.unreserve_crit_edge [
    i32 2, label %if.then8
    i32 1, label %if.then17
  ]

if.end6.unreserve_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %unreserve

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %data9 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, ptr %data, i32 0, i32 2
  %tiling_info = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, ptr %data, i32 0, i32 2, i32 1
  tail call void @amdgpu_bo_get_tiling_flags(ptr noundef %add.ptr, ptr noundef %tiling_info) #7
  %data11 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, ptr %data, i32 0, i32 2, i32 3
  %data_size_bytes = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, ptr %data, i32 0, i32 2, i32 2
  %call14 = tail call i32 @amdgpu_bo_get_metadata(ptr noundef %add.ptr, ptr noundef %data11, i32 noundef 256, ptr noundef %data_size_bytes, ptr noundef %data9) #7
  br label %unreserve

if.then17:                                        ; preds = %if.end6
  %data18 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, ptr %data, i32 0, i32 2
  %data_size_bytes19 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, ptr %data, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %data_size_bytes19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_size_bytes19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %15)
  %cmp20 = icmp ugt i32 %15, 256
  br i1 %cmp20, label %if.then17.unreserve_crit_edge, label %if.end22

if.then17.unreserve_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %unreserve

if.end22:                                         ; preds = %if.then17
  %tiling_info24 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, ptr %data, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tiling_info24 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tiling_info24, align 8
  %call25 = tail call i32 @amdgpu_bo_set_tiling_flags(ptr noundef %add.ptr, i64 noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end22.unreserve_crit_edge

if.end22.unreserve_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %unreserve

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %data29 = getelementptr inbounds %struct.drm_amdgpu_gem_metadata, ptr %data, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %data_size_bytes19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_size_bytes19, align 8
  %20 = ptrtoint ptr %data18 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data18, align 8
  %call35 = tail call i32 @amdgpu_bo_set_metadata(ptr noundef %add.ptr, ptr noundef %data29, i32 noundef %19, i64 noundef %21) #7
  br label %unreserve

unreserve:                                        ; preds = %if.then27, %if.end22.unreserve_crit_edge, %if.then17.unreserve_crit_edge, %if.then8, %if.end6.unreserve_crit_edge
  %r.0 = phi i32 [ %call14, %if.then8 ], [ %call25, %if.end22.unreserve_crit_edge ], [ %call35, %if.then27 ], [ 0, %if.end6.unreserve_crit_edge ], [ -22, %if.then17.unreserve_crit_edge ]
  %22 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr i8, ptr %call, i32 372
  %24 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call, ptr noundef %25, ptr noundef null) #7
  %26 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %27, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %28 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %29) #7
  tail call void @ww_mutex_unlock(ptr noundef %29) #7
  br label %if.then.i

if.then.i:                                        ; preds = %unreserve, %do.end.i, %if.end.if.then.i_crit_edge
  %r.1 = phi i32 [ %.ret.0.i.i, %do.end.i ], [ %r.0, %unreserve ], [ %.ret.0.i.i, %if.end.if.then.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #7
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #7, !callees !102
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %r.1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %r.1, %if.then10.i.i.i.i.i.i ], [ %r.1, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_get_tiling_flags(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_get_metadata(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_set_tiling_flags(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_set_metadata(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_gem_va_map_flags(ptr noundef %adev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %flags, 1
  %0 = and i32 %and, 16
  %and1 = shl i32 %flags, 4
  %1 = and i32 %and1, 32
  %2 = or i32 %1, %0
  %3 = and i32 %and1, 64
  %4 = or i32 %2, %3
  %5 = zext i32 %4 to i64
  %and11 = and i32 %flags, 16
  %6 = zext i32 %and11 to i64
  %7 = shl nuw nsw i64 %6, 47
  %8 = or i64 %7, %5
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %9 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gmc_funcs, align 4
  %map_mtype = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %map_mtype to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map_mtype, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %entry.if.end23_crit_edge, label %if.then17

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and21 = and i32 %flags, 480
  %call = tail call i64 %12(ptr noundef %adev, i32 noundef %and21) #7
  %or22 = or i64 %call, %8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %entry.if.end23_crit_edge
  %pte_flag.4 = phi i64 [ %or22, %if.then17 ], [ %8, %entry.if.end23_crit_edge ]
  ret i64 %pte_flag.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gem_va_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %vm_pd = alloca %struct.amdgpu_bo_list_entry, align 4
  %tv = alloca %struct.ttm_validate_buffer, align 4
  %ticket = alloca %struct.ww_acquire_ctx, align 4
  %list = alloca %struct.list_head, align 4
  %duplicates = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vm_pd) #7
  %2 = call ptr @memset(ptr %vm_pd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv) #7
  %3 = getelementptr inbounds %struct.list_head, ptr %tv, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %tv, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %tv, i32 0, i32 2
  %6 = call ptr @memset(ptr %tv, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ticket) #7
  %7 = call ptr @memset(ptr %ticket, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #7
  %8 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %duplicates) #7
  %9 = getelementptr inbounds %struct.list_head, ptr %duplicates, i32 0, i32 1
  %va_address = getelementptr inbounds %struct.drm_amdgpu_gem_va, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %va_address to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %va_address, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097152, i64 %11)
  %cmp = icmp ult i64 %11, 2097152
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_gem_va_ioctl, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !105

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  %14 = ptrtoint ptr %va_address to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %va_address, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug343, ptr noundef %13, ptr noundef nonnull @.str.11, i64 noundef %15, i64 noundef 2097152) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %16 = add i64 %11, -140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710656, i64 %16)
  %17 = icmp ult i64 %16, -281474976710656
  br i1 %17, label %do.body13, label %if.end31

do.body13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_gem_va_ioctl, %if.then25)) #7
          to label %cleanup [label %if.then25], !srcloc !105

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %18 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev26, align 4
  %20 = ptrtoint ptr %va_address to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %va_address, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug344, ptr noundef %19, ptr noundef nonnull @.str.12, i64 noundef %21, i64 noundef 140737488355328, i64 noundef -140737488355328) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end7
  %and = and i64 %11, 281474976710655
  %22 = ptrtoint ptr %va_address to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %and, ptr %va_address, align 8
  %max_pfn = getelementptr i8, ptr %dev, i32 17288
  %23 = ptrtoint ptr %max_pfn to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %max_pfn, align 8
  %mul = shl i64 %24, 12
  %sub = add i64 %mul, -2097152
  %map_size = getelementptr inbounds %struct.drm_amdgpu_gem_va, ptr %data, i32 0, i32 6
  %25 = ptrtoint ptr %map_size to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %map_size, align 8
  %add = add i64 %26, %and
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %sub)
  %cmp34 = icmp ugt i64 %add, %sub
  br i1 %cmp34, label %do.body36, label %if.end56

do.body36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_gem_va_ioctl, %if.then48)) #7
          to label %cleanup [label %if.then48], !srcloc !105

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %dev49 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %27 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev49, align 4
  %29 = ptrtoint ptr %va_address to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %va_address, align 8
  %31 = ptrtoint ptr %map_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %map_size, align 8
  %add52 = add i64 %32, %30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug345, ptr noundef %28, ptr noundef nonnull @.str.13, i64 noundef %add52, i64 noundef %sub) #7
  br label %cleanup

if.end56:                                         ; preds = %if.end31
  %flags = getelementptr inbounds %struct.drm_amdgpu_gem_va, ptr %data, i32 0, i32 3
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %and57 = and i32 %34, -496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %and61 = and i32 %34, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %or.cond252 = or i1 %tobool58.not, %tobool62.not
  br i1 %or.cond252, label %if.end82, label %do.body64

do.body64:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_gem_va_ioctl, %if.then76)) #7
          to label %cleanup [label %if.then76], !srcloc !105

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %dev77 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %35 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev77, align 4
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug346, ptr noundef %36, ptr noundef nonnull @.str.14, i32 noundef %38) #7
  br label %cleanup

if.end82:                                         ; preds = %if.end56
  %operation = getelementptr inbounds %struct.drm_amdgpu_gem_va, ptr %data, i32 0, i32 2
  %39 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %operation, align 8
  %.off = add i32 %40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.epilog, label %do.body83

do.body83:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_gem_va_ioctl, %if.then95)) #7
          to label %cleanup [label %if.then95], !srcloc !105

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %dev96 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %41 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev96, align 4
  %43 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %operation, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug347, ptr noundef %42, ptr noundef nonnull @.str.15, i32 noundef %44) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end82
  %45 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %list, ptr %list, align 4
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %list, ptr %8, align 4
  %47 = ptrtoint ptr %duplicates to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %duplicates, ptr %duplicates, align 4
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %duplicates, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp102.not = icmp ne i32 %40, 3
  %and105 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  %or.cond278 = select i1 %cmp102.not, i1 %tobool106.not, i1 false
  br i1 %or.cond278, label %if.then107, label %sw.epilog.if.end120_crit_edge

sw.epilog.if.end120_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then107:                                       ; preds = %sw.epilog
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data, align 8
  %call108 = call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %50) #7
  %cmp109 = icmp eq ptr %call108, null
  br i1 %cmp109, label %if.then107.cleanup_crit_edge, label %if.end111

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end111:                                        ; preds = %if.then107
  %add.ptr = getelementptr i8, ptr %call108, i32 -72
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call108, ptr %4, align 4
  %flags113 = getelementptr i8, ptr %call108, i32 432
  %52 = ptrtoint ptr %flags113 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %flags113, align 8
  %54 = trunc i64 %53 to i32
  %55 = lshr i32 %54, 6
  %56 = and i32 %55, 1
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %5, align 4
  %58 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %tv, ptr noundef nonnull %list, ptr noundef %59) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end111.if.end120_crit_edge

if.end111.if.end120_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.end.i.i:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %tv, ptr %prev1.i.i, align 4
  %61 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %tv, align 4
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %list, ptr %3, align 4
  %63 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %tv, ptr %list, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.end.i.i, %if.end111.if.end120_crit_edge, %sw.epilog.if.end120_crit_edge
  %abo.0 = phi ptr [ null, %sw.epilog.if.end120_crit_edge ], [ %add.ptr, %if.end111.if.end120_crit_edge ], [ %add.ptr, %if.end.i.i ]
  %gobj.0 = phi ptr [ null, %sw.epilog.if.end120_crit_edge ], [ %call108, %if.end111.if.end120_crit_edge ], [ %call108, %if.end.i.i ]
  call void @amdgpu_vm_get_pd_bo(ptr noundef %1, ptr noundef nonnull %list, ptr noundef nonnull %vm_pd) #7
  %call121 = call i32 @ttm_eu_reserve_buffers(ptr noundef nonnull %ticket, ptr noundef nonnull %list, i1 noundef zeroext true, ptr noundef nonnull %duplicates) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end120.error_unref_crit_edge

if.end120.error_unref_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_unref

if.end124:                                        ; preds = %if.end120
  %tobool125.not = icmp eq ptr %abo.0, null
  br i1 %tobool125.not, label %if.else132, label %if.then126

if.then126:                                       ; preds = %if.end124
  %call128 = call ptr @amdgpu_vm_bo_find(ptr noundef %1, ptr noundef nonnull %abo.0) #7
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %if.then126.error_backoff_crit_edge, label %if.end138thread-pre-split

if.then126.error_backoff_crit_edge:               ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_backoff

if.else132:                                       ; preds = %if.end124
  %64 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %operation, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp134.not = icmp eq i32 %65, 3
  br i1 %cmp134.not, label %if.else132.sw.bb149_crit_edge, label %if.then135

if.else132.sw.bb149_crit_edge:                    ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb149

if.then135:                                       ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #9
  %prt_va = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %prt_va to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prt_va, align 8
  br label %if.end138

if.end138thread-pre-split:                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %operation, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.end138thread-pre-split, %if.then135
  %69 = phi i32 [ %.pr, %if.end138thread-pre-split ], [ %65, %if.then135 ]
  %bo_va.0 = phi ptr [ %call128, %if.end138thread-pre-split ], [ %67, %if.then135 ]
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %69, label %if.end138.land.lhs.true164_crit_edge [
    i32 1, label %sw.bb140
    i32 2, label %sw.bb146
    i32 3, label %if.end138.sw.bb149_crit_edge
    i32 4, label %sw.bb154
  ]

if.end138.sw.bb149_crit_edge:                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb149

if.end138.land.lhs.true164_crit_edge:             ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true164

sw.bb140:                                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %call142 = call i64 @amdgpu_gem_va_map_flags(ptr noundef %add.ptr.i, i32 noundef %72)
  %73 = ptrtoint ptr %va_address to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %va_address, align 8
  %offset_in_bo = getelementptr inbounds %struct.drm_amdgpu_gem_va, ptr %data, i32 0, i32 5
  %75 = ptrtoint ptr %offset_in_bo to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %offset_in_bo, align 8
  %77 = ptrtoint ptr %map_size to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %map_size, align 8
  %call145 = call i32 @amdgpu_vm_bo_map(ptr noundef %add.ptr.i, ptr noundef %bo_va.0, i64 noundef %74, i64 noundef %76, i64 noundef %78, i64 noundef %call142) #7
  br label %sw.epilog162

sw.bb146:                                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %va_address to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %va_address, align 8
  %call148 = call i32 @amdgpu_vm_bo_unmap(ptr noundef %add.ptr.i, ptr noundef %bo_va.0, i64 noundef %80) #7
  br label %sw.epilog162

sw.bb149:                                         ; preds = %if.end138.sw.bb149_crit_edge, %if.else132.sw.bb149_crit_edge
  %bo_va.0272 = phi ptr [ %bo_va.0, %if.end138.sw.bb149_crit_edge ], [ null, %if.else132.sw.bb149_crit_edge ]
  %81 = ptrtoint ptr %va_address to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %va_address, align 8
  %83 = ptrtoint ptr %map_size to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %map_size, align 8
  %call153 = call i32 @amdgpu_vm_bo_clear_mappings(ptr noundef %add.ptr.i, ptr noundef %1, i64 noundef %82, i64 noundef %84) #7
  br label %sw.epilog162

sw.bb154:                                         ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  %call156 = call i64 @amdgpu_gem_va_map_flags(ptr noundef %add.ptr.i, i32 noundef %86)
  %87 = ptrtoint ptr %va_address to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %va_address, align 8
  %offset_in_bo158 = getelementptr inbounds %struct.drm_amdgpu_gem_va, ptr %data, i32 0, i32 5
  %89 = ptrtoint ptr %offset_in_bo158 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %offset_in_bo158, align 8
  %91 = ptrtoint ptr %map_size to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %map_size, align 8
  %call160 = call i32 @amdgpu_vm_bo_replace_map(ptr noundef %add.ptr.i, ptr noundef %bo_va.0, i64 noundef %88, i64 noundef %90, i64 noundef %92, i64 noundef %call156) #7
  br label %sw.epilog162

sw.epilog162:                                     ; preds = %sw.bb154, %sw.bb149, %sw.bb146, %sw.bb140
  %bo_va.0273 = phi ptr [ %bo_va.0, %sw.bb154 ], [ %bo_va.0272, %sw.bb149 ], [ %bo_va.0, %sw.bb146 ], [ %bo_va.0, %sw.bb140 ]
  %r.0 = phi i32 [ %call160, %sw.bb154 ], [ %call153, %sw.bb149 ], [ %call148, %sw.bb146 ], [ %call145, %sw.bb140 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool163.not = icmp eq i32 %r.0, 0
  br i1 %tobool163.not, label %sw.epilog162.land.lhs.true164_crit_edge, label %sw.epilog162.error_backoff_crit_edge

sw.epilog162.error_backoff_crit_edge:             ; preds = %sw.epilog162
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_backoff

sw.epilog162.land.lhs.true164_crit_edge:          ; preds = %sw.epilog162
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true164

land.lhs.true164:                                 ; preds = %sw.epilog162.land.lhs.true164_crit_edge, %if.end138.land.lhs.true164_crit_edge
  %bo_va.0273277 = phi ptr [ %bo_va.0273, %sw.epilog162.land.lhs.true164_crit_edge ], [ %bo_va.0, %if.end138.land.lhs.true164_crit_edge ]
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 4
  %and166 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %land.lhs.true168, label %land.lhs.true164.error_backoff_crit_edge

land.lhs.true164.error_backoff_crit_edge:         ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_backoff

land.lhs.true168:                                 ; preds = %land.lhs.true164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_debug to i32))
  %95 = load i32, ptr @amdgpu_vm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool169.not = icmp eq i32 %95, 0
  br i1 %tobool169.not, label %if.then170, label %land.lhs.true168.error_backoff_crit_edge

land.lhs.true168.error_backoff_crit_edge:         ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_backoff

if.then170:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %operation, align 8
  call fastcc void @amdgpu_gem_va_update_vm(ptr noundef %add.ptr.i, ptr noundef %1, ptr noundef %bo_va.0273277, i32 noundef %97)
  br label %error_backoff

error_backoff:                                    ; preds = %if.then170, %land.lhs.true168.error_backoff_crit_edge, %land.lhs.true164.error_backoff_crit_edge, %sw.epilog162.error_backoff_crit_edge, %if.then126.error_backoff_crit_edge
  %r.1 = phi i32 [ %r.0, %sw.epilog162.error_backoff_crit_edge ], [ 0, %land.lhs.true164.error_backoff_crit_edge ], [ 0, %land.lhs.true168.error_backoff_crit_edge ], [ 0, %if.then170 ], [ -2, %if.then126.error_backoff_crit_edge ]
  call void @ttm_eu_backoff_reservation(ptr noundef nonnull %ticket, ptr noundef nonnull %list) #7
  br label %error_unref

error_unref:                                      ; preds = %error_backoff, %if.end120.error_unref_crit_edge
  %r.2 = phi i32 [ %call121, %if.end120.error_unref_crit_edge ], [ %r.1, %error_backoff ]
  %tobool.not.i = icmp eq ptr %gobj.0, null
  br i1 %tobool.not.i, label %error_unref.cleanup_crit_edge, label %if.then.i

error_unref.cleanup_crit_edge:                    ; preds = %error_unref
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %error_unref
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %gobj.0, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  call void @llvm.prefetch.p0(ptr nonnull %gobj.0, i32 1, i32 3, i32 1) #7
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %gobj.0, ptr nonnull %gobj.0, i32 1, ptr nonnull elementtype(i32) %gobj.0) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %gobj.0, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @drm_gem_object_free(ptr noundef nonnull %gobj.0) #7, !callees !102
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %error_unref.cleanup_crit_edge, %if.then107.cleanup_crit_edge, %if.then95, %do.body83, %if.then76, %do.body64, %if.then48, %do.body36, %if.then25, %do.body13, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then25 ], [ -22, %if.then48 ], [ -22, %if.then76 ], [ -22, %if.then95 ], [ -2, %if.then107.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body13 ], [ -22, %do.body36 ], [ -22, %do.body64 ], [ -22, %do.body83 ], [ %r.2, %error_unref.cleanup_crit_edge ], [ %r.2, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %r.2, %if.then10.i.i.i.i.i.i ], [ %r.2, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %duplicates) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ticket) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vm_pd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_get_pd_bo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_eu_reserve_buffers(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_vm_bo_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_bo_map(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_bo_unmap(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_bo_clear_mappings(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_bo_replace_map(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_gem_va_update_vm(ptr noundef %adev, ptr noundef %vm, ptr noundef %bo_va, i32 noundef %operation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @amdgpu_vm_ready(ptr noundef %vm) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @amdgpu_vm_clear_freed(ptr noundef %adev, ptr noundef %vm, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end3:                                          ; preds = %if.end
  %0 = zext i32 %operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %operation, label %if.end3.if.end10_crit_edge [
    i32 1, label %if.end3.if.then5_crit_edge
    i32 4, label %if.end3.if.then5_crit_edge25
  ]

if.end3.if.then5_crit_edge25:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %if.end3.if.then5_crit_edge, %if.end3.if.then5_crit_edge25
  %call6 = tail call i32 @amdgpu_vm_bo_update(ptr noundef %adev, ptr noundef %bo_va, i1 noundef zeroext false, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.error_crit_edge

if.then5.error_crit_edge:                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %call11 = tail call i32 @amdgpu_vm_update_pdes(ptr noundef %adev, ptr noundef %vm, i1 noundef zeroext false) #7
  br label %error

error:                                            ; preds = %if.end10, %if.then5.error_crit_edge, %if.end.error_crit_edge
  %r.0 = phi i32 [ %call1, %if.end.error_crit_edge ], [ %call6, %if.then5.error_crit_edge ], [ %call11, %if.end10 ]
  %1 = zext i32 %r.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %r.0, label %if.then14 [
    i32 0, label %error.cleanup_crit_edge
    i32 -512, label %error.cleanup_crit_edge26
  ]

error.cleanup_crit_edge26:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %r.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %error.cleanup_crit_edge, %error.cleanup_crit_edge26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_eu_backoff_reservation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gem_op_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.drm_amdgpu_gem_create_in, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %call1 = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %1) #7
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call1, i32 -72
  %bdev.i = getelementptr i8, ptr %call1, i32 352
  %2 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %call1, i32 200
  %4 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i95 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %5, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i95)
  %cmp.i.i96 = icmp eq i32 %call.i.i.i95, -4
  %.ret.0.i.i = select i1 %cmp.i.i96, i32 -512, i32 %call.i.i.i95
  %6 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end6
    i32 -512, label %if.end.if.then.i130_crit_edge
  ], !prof !104

if.end.if.then.i130_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i130

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -17736
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.26, ptr noundef %add.ptr) #10
  br label %if.then.i130

if.end6:                                          ; preds = %if.end
  %op = getelementptr inbounds %struct.drm_amdgpu_gem_op, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %op, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #7
  %12 = getelementptr inbounds %struct.drm_amdgpu_gem_create_in, ptr %info, i32 0, i32 1
  %13 = getelementptr inbounds %struct.drm_amdgpu_gem_create_in, ptr %info, i32 0, i32 2
  %14 = getelementptr inbounds %struct.drm_amdgpu_gem_create_in, ptr %info, i32 0, i32 3
  %value = getelementptr inbounds %struct.drm_amdgpu_gem_op, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %value, align 8
  %conv10 = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv10 to ptr
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %call1, i32 0, i32 5
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 8
  %conv12 = zext i32 %19 to i64
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv12, ptr %info, align 8
  %page_alignment = getelementptr inbounds %struct.ttm_buffer_object, ptr %call1, i32 0, i32 3
  %21 = ptrtoint ptr %page_alignment to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_alignment, align 8
  %shl = shl i32 %22, 12
  %conv14 = zext i32 %shl to i64
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv14, ptr %12, align 8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 8
  %conv15 = zext i32 %25 to i64
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv15, ptr %13, align 8
  %flags = getelementptr i8, ptr %call1, i32 432
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %flags, align 8
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %14, align 8
  %30 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %31, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr i8, ptr %call1, i32 372
  %32 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call1, ptr noundef %33, ptr noundef null) #7
  %34 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %35, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %36 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %37) #7
  tail call void @ww_mutex_unlock(ptr noundef %37) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %sw.bb.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.bb.copy_to_user.exit.thread_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.bb
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 32, i32 -1226833920) #11, !srcloc !106
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 32) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %info, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool17.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool17.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.bb.copy_to_user.exit.thread_crit_edge
  %39 = phi i32 [ -14, %sw.bb.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #7
  br label %if.then.i130

sw.bb20:                                          ; preds = %if.end6
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %call1, i32 0, i32 8
  %40 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %import_attach, align 4
  %tobool23.not = icmp eq ptr %41, null
  br i1 %tobool23.not, label %sw.bb20.if.end27_crit_edge, label %land.lhs.true

sw.bb20.if.end27_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %sw.bb20
  %value24 = getelementptr inbounds %struct.drm_amdgpu_gem_op, ptr %data, i32 0, i32 2
  %42 = ptrtoint ptr %value24 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %value24, align 8
  %and = and i64 %43, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool25.not = icmp eq i64 %and, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end27_crit_edge, label %if.then26

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i99 = getelementptr inbounds %struct.ttm_device, ptr %45, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i99) #7
  %resource.i.i.i100 = getelementptr i8, ptr %call1, i32 372
  %46 = ptrtoint ptr %resource.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %resource.i.i.i100, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call1, ptr noundef %47, ptr noundef null) #7
  %48 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i101 = getelementptr inbounds %struct.ttm_device, ptr %49, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i101) #7
  %50 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %51) #7
  tail call void @ww_mutex_unlock(ptr noundef %51) #7
  br label %if.then.i130

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %sw.bb20.if.end27_crit_edge
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %call1, i32 0, i32 7
  %52 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ttm, align 8
  %call29 = tail call ptr @amdgpu_ttm_tt_get_usermm(ptr noundef %53) #7
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i105 = getelementptr inbounds %struct.ttm_device, ptr %55, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i105) #7
  %resource.i.i.i106 = getelementptr i8, ptr %call1, i32 372
  %56 = ptrtoint ptr %resource.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resource.i.i.i106, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call1, ptr noundef %57, ptr noundef null) #7
  %58 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i107 = getelementptr inbounds %struct.ttm_device, ptr %59, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i107) #7
  %60 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %61) #7
  tail call void @ww_mutex_unlock(ptr noundef %61) #7
  br label %if.then.i130

if.end32:                                         ; preds = %if.end27
  %vm_bo = getelementptr i8, ptr %call1, i32 440
  %62 = ptrtoint ptr %vm_bo to i32
  call void @__asan_load4_noabort(i32 %62)
  %base.0133 = load ptr, ptr %vm_bo, align 4
  %tobool33.not134 = icmp eq ptr %base.0133, null
  br i1 %tobool33.not134, label %if.end32.for.end_crit_edge, label %for.body.lr.ph

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end32
  %63 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bdev.i, align 8
  %hive_id.i = getelementptr i8, ptr %64, i32 -7552
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %base.0135 = phi ptr [ %base.0133, %for.body.lr.ph ], [ %base.0, %for.inc.for.body_crit_edge ]
  %65 = ptrtoint ptr %base.0135 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.0135, align 4
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %66, i32 0, i32 12, i32 1
  %67 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bo, align 4
  %bdev37 = getelementptr inbounds %struct.amdgpu_bo, ptr %68, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %bdev37 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bdev37, align 8
  %cmp.not.i = icmp eq ptr %64, %70
  br i1 %cmp.not.i, label %for.body.for.inc_crit_edge, label %land.lhs.true.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %71 = ptrtoint ptr %hive_id.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %hive_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %tobool.not.i = icmp eq i64 %72, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %amdgpu_xgmi_same_hive.exit

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

amdgpu_xgmi_same_hive.exit:                       ; preds = %land.lhs.true.i
  %hive_id6.i = getelementptr i8, ptr %70, i32 -7552
  %73 = ptrtoint ptr %hive_id6.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %hive_id6.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %74)
  %cmp7.i = icmp eq i64 %72, %74
  br i1 %cmp7.i, label %if.then40, label %amdgpu_xgmi_same_hive.exit.for.inc_crit_edge

amdgpu_xgmi_same_hive.exit.for.inc_crit_edge:     ; preds = %amdgpu_xgmi_same_hive.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then40:                                        ; preds = %amdgpu_xgmi_same_hive.exit
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i113 = getelementptr inbounds %struct.ttm_device, ptr %76, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i113) #7
  %resource.i.i.i114 = getelementptr i8, ptr %call1, i32 372
  %77 = ptrtoint ptr %resource.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %resource.i.i.i114, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %call1, ptr noundef %78, ptr noundef null) #7
  %79 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i115 = getelementptr inbounds %struct.ttm_device, ptr %80, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i115) #7
  %81 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %82) #7
  tail call void @ww_mutex_unlock(ptr noundef %82) #7
  br label %if.then.i130

for.inc:                                          ; preds = %amdgpu_xgmi_same_hive.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %base.0135, i32 0, i32 2
  %83 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %83)
  %base.0 = load ptr, ptr %next, align 4
  %tobool33.not = icmp eq ptr %base.0, null
  br i1 %tobool33.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end32.for.end_crit_edge
  %value42 = getelementptr inbounds %struct.drm_amdgpu_gem_op, ptr %data, i32 0, i32 2
  %84 = ptrtoint ptr %value42 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %value42, align 8
  %86 = trunc i64 %85 to i32
  %conv44 = and i32 %86, 7
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv44, ptr %add.ptr, align 8
  %allowed_domains = getelementptr i8, ptr %call1, i32 -68
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv44)
  %cmp48 = icmp eq i32 %conv44, 4
  %spec.select94 = select i1 %cmp48, i32 6, i32 %conv44
  %88 = ptrtoint ptr %allowed_domains to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select94, ptr %allowed_domains, align 4
  %flags53 = getelementptr i8, ptr %call1, i32 432
  %89 = ptrtoint ptr %flags53 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %flags53, align 8
  %and54 = and i64 %90, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and54)
  %tobool55.not = icmp eq i64 %and54, 0
  br i1 %tobool55.not, label %for.end.if.end57_crit_edge, label %if.then56

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdgpu_vm_bo_invalidate(ptr noundef %add.ptr.i, ptr noundef %add.ptr, i1 noundef zeroext true) #7
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %for.end.if.end57_crit_edge
  %91 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i119 = getelementptr inbounds %struct.ttm_device, ptr %92, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i119) #7
  %resource.i.i.i120 = getelementptr i8, ptr %call1, i32 372
  %93 = ptrtoint ptr %resource.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %resource.i.i.i120, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %call1, ptr noundef %94, ptr noundef null) #7
  %95 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i121 = getelementptr inbounds %struct.ttm_device, ptr %96, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i121) #7
  %97 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %98) #7
  tail call void @ww_mutex_unlock(ptr noundef %98) #7
  br label %if.then.i130

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i125 = getelementptr inbounds %struct.ttm_device, ptr %100, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i125) #7
  %resource.i.i.i126 = getelementptr i8, ptr %call1, i32 372
  %101 = ptrtoint ptr %resource.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %resource.i.i.i126, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call1, ptr noundef %102, ptr noundef null) #7
  %103 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i127 = getelementptr inbounds %struct.ttm_device, ptr %104, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i127) #7
  %105 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %106) #7
  tail call void @ww_mutex_unlock(ptr noundef %106) #7
  br label %if.then.i130

if.then.i130:                                     ; preds = %sw.default, %if.end57, %if.then40, %if.then31, %if.then26, %copy_to_user.exit.thread, %do.end.i, %if.end.if.then.i130_crit_edge
  %r.1 = phi i32 [ %.ret.0.i.i, %do.end.i ], [ -22, %sw.default ], [ -22, %if.then26 ], [ -1, %if.then31 ], [ -22, %if.then40 ], [ 0, %if.end57 ], [ %39, %copy_to_user.exit.thread ], [ %.ret.0.i.i, %if.end.if.then.i130_crit_edge ]
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #7
  %107 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @drm_gem_object_free(ptr noundef nonnull %call1) #7, !callees !102
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %r.1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %r.1, %if.then10.i.i.i.i.i.i ], [ %r.1, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_bo_invalidate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_mode_dumb_create(ptr noundef %file_priv, ptr noundef %dev, ptr nocapture noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %ubo.i = alloca ptr, align 4
  %bp.i = alloca %struct.amdgpu_bo_param, align 8
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #7
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %handle, align 4, !annotation !97
  %buffer_funcs_enabled = getelementptr i8, ptr %dev, i32 20664
  %1 = ptrtoint ptr %buffer_funcs_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buffer_funcs_enabled, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i64 37, i64 45
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %5 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bpp, align 8
  %sub = add i32 %6, 7
  %div42 = lshr i32 %sub, 3
  %switch.tableidx = add nsw i32 %div42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 4
  br i1 %7, label %switch.lookup, label %entry.amdgpu_gem_align_pitch.exit_crit_edge

entry.amdgpu_gem_align_pitch.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_gem_align_pitch.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.amdgpu_mode_dumb_create, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %amdgpu_gem_align_pitch.exit

amdgpu_gem_align_pitch.exit:                      ; preds = %switch.lookup, %entry.amdgpu_gem_align_pitch.exit_crit_edge
  %pitch_mask.0.i = phi i32 [ 0, %entry.amdgpu_gem_align_pitch.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %add.i = add i32 %pitch_mask.0.i, %4
  %neg.i = xor i32 %pitch_mask.0.i, -1
  %and.i = and i32 %add.i, %neg.i
  %mul.i = mul i32 %and.i, %div42
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %9 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.i, ptr %pitch, align 4
  %conv = zext i32 %mul.i to i64
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args, align 8
  %conv3 = zext i32 %11 to i64
  %mul = mul nuw i64 %conv, %conv3
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %add5 = add nuw i64 %mul, 4095
  %and = and i64 %add5, -4096
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %and, ptr %size, align 8
  %call7 = tail call i32 @amdgpu_display_supported_domains(ptr noundef %add.ptr.i, i64 noundef %spec.select) #7
  %call8 = tail call i32 @amdgpu_bo_get_preferred_domain(ptr noundef %add.ptr.i, i32 noundef %call7) #7
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size, align 8
  %conv10 = trunc i64 %14 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ubo.i) #7
  %15 = ptrtoint ptr %ubo.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %ubo.i, align 4, !annotation !97
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp.i) #7
  %16 = getelementptr inbounds i8, ptr %bp.i, i32 16
  %17 = call ptr @memset(ptr %16, i32 0, i32 32)
  %18 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv10, ptr %bp.i, align 8
  %byte_align.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 1
  %19 = ptrtoint ptr %byte_align.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %byte_align.i, align 4
  %resv3.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 8
  %20 = ptrtoint ptr %resv3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %resv3.i, align 8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call8, ptr %16, align 8
  %flags4.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 5
  %22 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %spec.select, ptr %flags4.i, align 8
  %domain.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 3
  %23 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call8, ptr %domain.i, align 4
  %bo_ptr_size.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 2
  %24 = ptrtoint ptr %bo_ptr_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 568, ptr %bo_ptr_size.i, align 8
  %call.i = call i32 @amdgpu_bo_create_user(ptr noundef %add.ptr.i, ptr noundef nonnull %bp.i, ptr noundef nonnull %ubo.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end14, label %amdgpu_gem_object_create.exit

amdgpu_gem_object_create.exit:                    ; preds = %amdgpu_gem_align_pitch.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ubo.i) #7
  br label %cleanup

if.end14:                                         ; preds = %amdgpu_gem_align_pitch.exit
  %25 = ptrtoint ptr %ubo.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ubo.i, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %26, i32 0, i32 4
  %funcs.i = getelementptr inbounds %struct.amdgpu_bo, ptr %26, i32 0, i32 4, i32 0, i32 11
  %27 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @amdgpu_gem_object_funcs, ptr %funcs.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ubo.i) #7
  %call15 = call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %tbo.i, ptr noundef nonnull %handle) #7
  %tobool.not.i43 = icmp eq ptr %tbo.i, null
  br i1 %tobool.not.i43, label %if.end14.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.end14.drm_gem_object_put.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.end14
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbo.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  call void @llvm.prefetch.p0(ptr nonnull %tbo.i, i32 1, i32 3, i32 1) #7
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %tbo.i, ptr nonnull %tbo.i, i32 1, ptr nonnull elementtype(i32) %tbo.i) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %tbo.i, i32 noundef 3) #7
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @drm_gem_object_free(ptr noundef nonnull %tbo.i) #7, !callees !102
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end14.drm_gem_object_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %drm_gem_object_put.exit.cleanup_crit_edge

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %handle19 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %31 = ptrtoint ptr %handle19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %handle19, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %drm_gem_object_put.exit.cleanup_crit_edge, %amdgpu_gem_object_create.exit
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %amdgpu_gem_object_create.exit ], [ %call15, %drm_gem_object_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_get_preferred_domain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_supported_domains(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_debugfs_gem_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_debugfs_gem_info_fops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_gem_object_free(ptr noundef %gobj) #0 align 64 {
entry:
  %robj = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %robj) #7
  %add.ptr = getelementptr i8, ptr %gobj, i32 -72
  %0 = ptrtoint ptr %robj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %robj, align 4
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdgpu_mn_unregister(ptr noundef nonnull %add.ptr) #7
  call void @amdgpu_bo_unref(ptr noundef nonnull %robj) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %robj) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_gem_object_open(ptr noundef %obj, ptr nocapture noundef readonly %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %obj, i32 -72
  %bdev = getelementptr %struct.ttm_buffer_object, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %obj, i32 0, i32 7
  %4 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttm, align 8
  %call3 = tail call ptr @amdgpu_ttm_tt_get_usermm(ptr noundef %5) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !87) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %mm5 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %mm5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm5, align 8
  %cmp.not = icmp eq ptr %call3, %11
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr i8, ptr %obj, i32 432
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags, align 8
  %and = and i64 %13, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %land.lhs.true7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true7:                                   ; preds = %if.end
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %14 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resv, align 8
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bo, align 4
  %resv11 = getelementptr inbounds %struct.amdgpu_bo, ptr %17, i32 0, i32 4, i32 0, i32 9
  %18 = ptrtoint ptr %resv11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resv11, align 8
  %cmp12.not = icmp eq ptr %15, %19
  br i1 %cmp12.not, label %land.lhs.true7.if.end14_crit_edge, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true7.if.end14_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true7.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %20 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev, align 8
  %resv32.i.i = getelementptr i8, ptr %obj, i32 200
  %22 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %23, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %24 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end18
    i32 -512, label %if.end14.cleanup_crit_edge
  ], !prof !104

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 -17736
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.26, ptr noundef %add.ptr) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call ptr @amdgpu_vm_bo_find(ptr noundef %3, ptr noundef %add.ptr) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call ptr @amdgpu_vm_bo_add(ptr noundef %add.ptr.i, ptr noundef %3, ptr noundef %add.ptr) #7
  br label %if.end23

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %ref_count = getelementptr inbounds %struct.amdgpu_bo_va, ptr %call19, i32 0, i32 1
  %27 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ref_count, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %ref_count, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then21
  %29 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %30, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr i8, ptr %obj, i32 372
  %31 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %obj, ptr noundef %32, ptr noundef null) #7
  %33 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %34, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %35 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %36) #7
  tail call void @ww_mutex_unlock(ptr noundef %36) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end.i, %if.end14.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %land.lhs.true7.cleanup_crit_edge ], [ %.ret.0.i.i, %do.end.i ], [ %.ret.0.i.i, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_gem_object_close(ptr noundef %obj, ptr nocapture noundef readonly %file_priv) #0 align 64 {
entry:
  %vm_pd = alloca %struct.amdgpu_bo_list_entry, align 4
  %list = alloca %struct.list_head, align 4
  %duplicates = alloca %struct.list_head, align 4
  %fence = alloca ptr, align 4
  %tv = alloca %struct.ttm_validate_buffer, align 8
  %ticket = alloca %struct.ww_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %obj, i32 -72
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vm_pd) #7
  %4 = call ptr @memset(ptr %vm_pd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #7
  %5 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %duplicates) #7
  %6 = getelementptr inbounds %struct.list_head, ptr %duplicates, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #7
  %7 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fence, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv) #7
  %8 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %tv, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %tv, i32 0, i32 2
  %10 = ptrtoint ptr %tv to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %tv, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ticket) #7
  %11 = call ptr @memset(ptr %ticket, i32 255, i32 64)
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %list, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %5, align 4
  %14 = ptrtoint ptr %duplicates to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %duplicates, ptr %duplicates, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %duplicates, ptr %6, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %obj, ptr %8, align 8
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %9, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %tv, ptr noundef nonnull %list, ptr noundef nonnull %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = getelementptr inbounds %struct.list_head, ptr %tv, i32 0, i32 1
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tv, ptr %5, align 4
  %20 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %tv, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %18, align 4
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %tv, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  call void @amdgpu_vm_get_pd_bo(ptr noundef %3, ptr noundef nonnull %list, ptr noundef nonnull %vm_pd) #7
  %call4 = call i32 @ttm_eu_reserve_buffers(ptr noundef nonnull %ticket, ptr noundef nonnull %list, i1 noundef zeroext false, ptr noundef nonnull %duplicates) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.17, i32 noundef %call4) #10
  br label %cleanup

if.end:                                           ; preds = %list_add.exit
  %call5 = call ptr @amdgpu_vm_bo_find(ptr noundef %3, ptr noundef %add.ptr) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.if.end31_crit_edge, label %lor.lhs.false

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

lor.lhs.false:                                    ; preds = %if.end
  %ref_count = getelementptr inbounds %struct.amdgpu_bo_va, ptr %call5, i32 0, i32 1
  %25 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ref_count, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.if.end31_crit_edge

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end9:                                          ; preds = %lor.lhs.false
  call void @amdgpu_vm_bo_rmv(ptr noundef %add.ptr.i, ptr noundef nonnull %call5) #7
  %call10 = call zeroext i1 @amdgpu_vm_ready(ptr noundef %3) #7
  br i1 %call10, label %if.end12, label %if.end9.if.end31_crit_edge

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end12:                                         ; preds = %if.end9
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %27 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resv, align 8
  %fence_excl.i = getelementptr inbounds %struct.dma_resv, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %fence_excl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %fence_excl.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %28, i32 0, i32 5
  %call.i.i61 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %tobool.not.i = icmp eq i32 %call.i.i61, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end12.dma_resv_excl_fence.exit_crit_edge

if.end12.dma_resv_excl_fence.exit_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_excl_fence.exit

lor.lhs.false.i:                                  ; preds = %if.end12
  %call2.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge

lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_excl_fence.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_excl_fence.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @dma_resv_excl_fence.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, label %if.then.i

land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_excl_fence.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @dma_resv_excl_fence.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 440, ptr noundef nonnull @.str.25) #7
  br label %dma_resv_excl_fence.exit

dma_resv_excl_fence.exit:                         ; preds = %if.then.i, %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge, %if.end12.dma_resv_excl_fence.exit_crit_edge
  %31 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %fence, align 4
  %tobool15.not = icmp eq ptr %30, null
  br i1 %tobool15.not, label %dma_resv_excl_fence.exit.if.end17_crit_edge, label %if.then16

dma_resv_excl_fence.exit.if.end17_crit_edge:      ; preds = %dma_resv_excl_fence.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %dma_resv_excl_fence.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @amdgpu_bo_fence(ptr noundef %add.ptr, ptr noundef nonnull %30, i1 noundef zeroext true) #7
  %32 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %fence, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %dma_resv_excl_fence.exit.if.end17_crit_edge
  %call18 = call i32 @amdgpu_vm_clear_freed(ptr noundef %add.ptr.i, ptr noundef %3, ptr noundef nonnull %fence) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %out_unlock

lor.lhs.false20:                                  ; preds = %if.end17
  %33 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fence, align 4
  %tobool21.not = icmp eq ptr %34, null
  br i1 %tobool21.not, label %lor.lhs.false20.if.end31_crit_edge, label %if.end23

lor.lhs.false20.if.end31_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end23:                                         ; preds = %lor.lhs.false20
  call void @amdgpu_bo_fence(ptr noundef %add.ptr, ptr noundef nonnull %34, i1 noundef zeroext true) #7
  %35 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fence, align 4
  %tobool.not.i62 = icmp eq ptr %36, null
  br i1 %tobool.not.i62, label %if.end23.if.end31_crit_edge, label %if.then.i63

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then.i63:                                      ; preds = %if.end23
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %36, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end31_crit_edge, label %if.then10.i.i.i.i.i, !prof !98

if.end5.i.i.i.i.i.if.end31_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %if.end31

if.then.i.i:                                      ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !101
  call void @dma_fence_release(ptr noundef %refcount.i) #7, !callees !102
  br label %if.end31

out_unlock:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %do.end29, label %out_unlock.if.end31_crit_edge, !prof !107

out_unlock.if.end31_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end29:                                         ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.22, i32 noundef %call18) #10
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %out_unlock.if.end31_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end31_crit_edge, %if.end23.if.end31_crit_edge, %lor.lhs.false20.if.end31_crit_edge, %if.end9.if.end31_crit_edge, %lor.lhs.false.if.end31_crit_edge, %if.end.if.end31_crit_edge
  call void @ttm_eu_backoff_reservation(ptr noundef nonnull %ticket, ptr noundef nonnull %list) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ticket) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %duplicates) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vm_pd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_gem_prime_export(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_vmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_ttm_vunmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_gem_object_mmap(ptr noundef %obj, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ttm, align 8
  %call = tail call ptr @amdgpu_ttm_tt_get_usermm(ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %obj, i32 432
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %and = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %6 = and i32 %5, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %7 = icmp eq i32 %6, 32
  br i1 %7, label %if.then8, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %and10 = and i32 %5, -33
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and10, ptr %vm_flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end3.if.end11_crit_edge
  %call12 = tail call i32 @drm_gem_ttm_mmap(ptr noundef %obj, ptr noundef %vma) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mn_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_vm_bo_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_bo_rmv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_vm_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_fence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_clear_freed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_gem_fault(ptr noundef %vmf) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %idx, align 4, !annotation !97
  %call = tail call i32 @ttm_bo_vm_reserve(ptr noundef %3, ptr noundef %vmf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @drm_dev_enter(ptr noundef %5, ptr noundef nonnull %idx) #7
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @amdgpu_bo_fault_reserve_notify(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %8) #7
  br label %unlock

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vmf, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_page_prot, align 4
  %call8 = call i32 @ttm_bo_vm_fault_reserved(ptr noundef %vmf, i32 noundef %12, i32 noundef 16) #7
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %14) #7
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vmf, align 4
  %vm_page_prot10 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %vm_page_prot10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_page_prot10, align 4
  %call11 = call i32 @ttm_bo_vm_dummy_page(ptr noundef %vmf, i32 noundef %18) #7
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end6
  %ret.0 = phi i32 [ %call8, %if.end6 ], [ %call11, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ret.0)
  %cmp = icmp eq i32 %ret.0, 1024
  br i1 %cmp, label %land.lhs.true, label %if.end12.unlock_crit_edge

if.end12.unlock_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true:                                    ; preds = %if.end12
  %flags = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.unlock_crit_edge

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

unlock:                                           ; preds = %land.lhs.true.unlock_crit_edge, %if.end12.unlock_crit_edge, %if.then5
  %ret.1 = phi i32 [ %call3, %if.then5 ], [ 1024, %land.lhs.true.unlock_crit_edge ], [ %ret.0, %if.end12.unlock_crit_edge ]
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %22) #7
  call void @ww_mutex_unlock(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ %call, %entry.cleanup_crit_edge ], [ 1024, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_access(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_fault_reserve_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_fault_reserved(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_dummy_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_bo_update(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_update_pdes(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_gem_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_debugfs_gem_info_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_gem_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %filelist_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 17
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %filelist_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %filelist = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 18
  %2 = ptrtoint ptr %filelist to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn54 = load ptr, ptr %filelist, align 4
  %cmp.not55 = icmp eq ptr %.pn54, %filelist
  br i1 %cmp.not55, label %if.end.for.end22_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn56 = phi ptr [ %.pn, %for.end.for.body_crit_edge ], [ %.pn54, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %id, align 4, !annotation !97
  %4 = call i32 @llvm.read_register.i32(metadata !87) #7
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !108
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %pid = getelementptr i8, ptr %.pn56, i32 -8
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pid, align 4
  %call3 = call ptr @pid_task(ptr noundef %9, i32 noundef 0) #7
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pid, align 4
  %tobool.not.i40 = icmp eq ptr %11, null
  br i1 %tobool.not.i40, label %rcu_read_lock.exit.pid_nr.exit_crit_edge, label %if.then.i41

rcu_read_lock.exit.pid_nr.exit_crit_edge:         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pid_nr.exit

if.then.i41:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %numbers.i = getelementptr inbounds %struct.pid, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i41, %rcu_read_lock.exit.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %13, %if.then.i41 ], [ 0, %rcu_read_lock.exit.pid_nr.exit_crit_edge ]
  %tobool6.not = icmp eq ptr %call3, null
  %comm = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 101
  %spec.select = select i1 %tobool6.not, ptr @.str.35, ptr %comm
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %nr.0.i, ptr noundef %spec.select) #7
  %call.i42 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i42, label %pid_nr.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i45

pid_nr.exit.rcu_read_unlock.exit_crit_edge:       ; preds = %pid_nr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i45:                                ; preds = %pid_nr.exit
  %call1.i43 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.38) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit_crit_edge, %pid_nr.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !109
  %14 = call i32 @llvm.read_register.i32(metadata !87) #7
  %and.i.i.i.i.i49 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i50, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %table_lock = getelementptr i8, ptr %.pn56, i32 72
  call void @_raw_spin_lock(ptr noundef %table_lock) #7
  %object_idr = getelementptr i8, ptr %.pn56, i32 12
  %18 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %id, align 4
  %call851 = call ptr @idr_get_next(ptr noundef %object_idr, ptr noundef nonnull %id) #7
  %cmp9.not52 = icmp eq ptr %call851, null
  br i1 %cmp9.not52, label %rcu_read_unlock.exit.for.end_crit_edge, label %rcu_read_unlock.exit.for.body10_crit_edge

rcu_read_unlock.exit.for.body10_crit_edge:        ; preds = %rcu_read_unlock.exit
  br label %for.body10

rcu_read_unlock.exit.for.end_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %rcu_read_unlock.exit.for.body10_crit_edge
  %call853 = phi ptr [ %call8, %for.body10.for.body10_crit_edge ], [ %call851, %rcu_read_unlock.exit.for.body10_crit_edge ]
  %add.ptr13 = getelementptr i8, ptr %call853, i32 -72
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %call14 = call i64 @amdgpu_bo_print_info(i32 noundef %20, ptr noundef %add.ptr13, ptr noundef %m) #7
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %add = add i32 %22, 1
  store i32 %add, ptr %id, align 4
  %call8 = call ptr @idr_get_next(ptr noundef %object_idr, ptr noundef nonnull %id) #7
  %cmp9.not = icmp eq ptr %call8, null
  br i1 %cmp9.not, label %for.body10.for.end_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body10.for.end_crit_edge, %rcu_read_unlock.exit.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %table_lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  %23 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn56, align 4
  %cmp.not = icmp eq ptr %.pn, %filelist
  br i1 %cmp.not, label %for.end.for.end22_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end22

for.end22:                                        ; preds = %for.end.for.end22_crit_edge, %if.end.for.end22_crit_edge
  call void @mutex_unlock(ptr noundef %filelist_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end22 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_print_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 140, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 143, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 314, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @amdgpu_gem_create_ioctl._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @amdgpu_gem_create_ioctl._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 325, i32 4}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 354, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 559, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 685, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug343, !20, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 693, i32 3}
!26 = !{ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug344, !25, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 705, i32 3}
!29 = !{ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug345, !28, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 712, i32 3}
!32 = !{ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug346, !31, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 724, i32 3}
!35 = !{ptr @amdgpu_gem_va_ioctl.__UNIQUE_ID_ddebug347, !34, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 1000, i32 22}
!38 = !{ptr @amdgpu_gem_object_funcs, !39, !"amdgpu_gem_object_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 270, i32 42}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 217, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @amdgpu_gem_object_close._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @amdgpu_gem_object_close._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 244, i32 3}
!49 = !{ptr @amdgpu_gem_object_close._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @amdgpu_gem_object_close._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/dma-resv.h", i32 440, i32 9}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @amdgpu_gem_vm_ops, !56, !"amdgpu_gem_vm_ops", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 78, i32 42}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @amdgpu_bo_reserve._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @amdgpu_bo_reserve._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 630, i32 3}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!69 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!74 = !{ptr @amdgpu_debugfs_gem_info_fops, !75, !"amdgpu_debugfs_gem_info_fops", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 990, i32 1}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 973, i32 17}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c", i32 974, i32 27}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!82 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148319295}
!100 = !{i64 2148233759, i64 2148233791, i64 2148233820, i64 2148233854, i64 2148233885, i64 2148233908}
!101 = !{i64 2149379759}
!102 = !{ptr @dma_fence_release, ptr @drm_gem_object_free}
!103 = !{i8 0, i8 2}
!104 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!105 = !{i64 2148786969, i64 2148786974, i64 2148786987, i64 2148787031, i64 2148787065, i64 2148787086}
!106 = !{i64 2153026683, i64 2153026708}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2149430249}
!109 = !{i64 2149430515}
