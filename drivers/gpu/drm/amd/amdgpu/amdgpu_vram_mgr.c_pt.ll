; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ttm_resource_manager_func = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
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
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_range_mgr_node = type { %struct.ttm_resource, [0 x %struct.drm_mm_node] }
%struct.amdgpu_vram_reservation = type { %struct.list_head, %struct.drm_mm_node }
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.dma_fence = type { ptr, ptr, %union.anon.87, i64, i64, i32, %struct.kref, i32 }
%union.anon.87 = type { i64 }

@amdgpu_vram_mgr_attributes = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_mem_info_vram_total, ptr @dev_attr_mem_info_vis_vram_total, ptr @dev_attr_mem_info_vram_used, ptr @dev_attr_mem_info_vis_vram_used, ptr @dev_attr_mem_info_vram_vendor, ptr null], [40 x i8] zeroinitializer }, align 32
@amdgpu_vram_mgr_attr_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @amdgpu_vram_mgr_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@amdgpu_vram_mgr_func = internal constant { %struct.ttm_resource_manager_func, [20 x i8] } { %struct.ttm_resource_manager_func { ptr @amdgpu_vram_mgr_new, ptr @amdgpu_vram_mgr_del, ptr @amdgpu_vram_mgr_debug }, [20 x i8] zeroinitializer }, align 32
@amdgpu_vram_mgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mgr->lock\00", [21 x i8] zeroinitializer }, align 32
@dev_attr_mem_info_vram_total = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_mem_info_vram_total_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mem_info_vis_vram_total = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_mem_info_vis_vram_total_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mem_info_vram_used = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_mem_info_vram_used_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mem_info_vis_vram_used = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_mem_info_vis_vram_used_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mem_info_vram_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_mem_info_vram_vendor, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mem_info_vram_total\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mem_info_vis_vram_total\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mem_info_vram_used\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mem_info_vis_vram_used\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mem_info_vram_vendor\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"samsung\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infineon\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"elpida\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"etron\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nanya\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hynix\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mosel\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"winbond\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"esmt\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"micron\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_vram_mgr_do_reserve.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu_vram_mgr_do_reserve\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: Reservation 0x%llx - %lld, Succeeded\0A\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"man size:%llu pages, ram usage:%lluMB, vis usage:%lluMB\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/drm/ttm/ttm_resource.h\00", [33 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_mem_info_vram_vendor = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.17, ptr @.str.16], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"amdgpu_vram_mgr_attributes\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 175, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"amdgpu_vram_mgr_attr_group\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 184, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"amdgpu_vram_mgr_func\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 674, i32 47 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 697, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [29 x i8] c"dev_attr_mem_info_vram_total\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [33 x i8] c"dev_attr_mem_info_vis_vram_total\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"dev_attr_mem_info_vram_used\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [32 x i8] c"dev_attr_mem_info_vis_vram_used\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"dev_attr_mem_info_vram_vendor\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 164, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 65, i32 25 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 166, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 168, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 170, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 172, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 140, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 142, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 144, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 146, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 148, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 150, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 152, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 154, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 156, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 158, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 160, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 286, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 251, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 62, i32 3 }
@___asan_gen_.126 = private constant [48 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 669, i32 22 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [34 x i8] c"../include/drm/ttm/ttm_resource.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 229, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [41 x i8] c"switch.table.amdgpu_mem_info_vram_vendor\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @amdgpu_vram_mgr_attributes, ptr @amdgpu_vram_mgr_attr_group, ptr @amdgpu_vram_mgr_func, ptr @amdgpu_vram_mgr_init.__key, ptr @.str, ptr @dev_attr_mem_info_vram_total, ptr @dev_attr_mem_info_vis_vram_total, ptr @dev_attr_mem_info_vram_used, ptr @dev_attr_mem_info_vis_vram_used, ptr @dev_attr_mem_info_vram_vendor, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.amdgpu_mem_info_vram_vendor], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vram_mgr_attributes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vram_mgr_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vram_mgr_func to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vram_mgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mem_info_vram_total to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mem_info_vis_vram_total to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mem_info_vram_used to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mem_info_vis_vram_used to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mem_info_vram_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_mem_info_vram_vendor to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_vram_mgr_bo_visible_size(ptr nocapture noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages, align 4
  %real_vram_size.i = getelementptr i8, ptr %1, i32 -13864
  %6 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %real_vram_size.i, align 8
  %visible_vram_size.i = getelementptr i8, ptr %1, i32 -13960
  %8 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.i = icmp ult i64 %7, %9
  br i1 %cmp.i, label %do.end.i, label %entry.amdgpu_gmc_vram_full_visible.exit_crit_edge, !prof !71

entry.amdgpu_gmc_vram_full_visible.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_gmc_vram_full_visible.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 286, i32 noundef 9, ptr noundef null) #6
  br label %amdgpu_gmc_vram_full_visible.exit

amdgpu_gmc_vram_full_visible.exit:                ; preds = %do.end.i, %entry.amdgpu_gmc_vram_full_visible.exit_crit_edge
  %10 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %real_vram_size.i, align 8
  %12 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp21.i = icmp eq i64 %11, %13
  br i1 %cmp21.i, label %if.then, label %if.end

if.then:                                          ; preds = %amdgpu_gmc_vram_full_visible.exit
  call void @__sanitizer_cov_trace_pc() #8
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  %conv = zext i32 %15 to i64
  br label %cleanup

if.end:                                           ; preds = %amdgpu_gmc_vram_full_visible.exit
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %conv4 = zext i32 %17 to i64
  %18 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %visible_vram_size.i, align 8
  %shr = lshr i64 %19, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv4)
  %cmp.not = icmp ule i64 %shr, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not28 = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not28
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %mm_nodes = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %usage.031 = phi i64 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mm.030 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %mm_nodes, %for.body.preheader ]
  %pages.029 = phi i32 [ %conv11, %for.body.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %start1.i = getelementptr inbounds %struct.drm_mm_node, ptr %mm.030, i32 0, i32 1
  %20 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start1.i, align 8
  %shl.i = shl i64 %21, 12
  %size.i26 = getelementptr inbounds %struct.drm_mm_node, ptr %mm.030, i32 0, i32 2
  %22 = ptrtoint ptr %size.i26 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size.i26, align 8
  %add.i = add i64 %23, %21
  %shl3.i = shl i64 %add.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %19)
  %cmp.not.i = icmp ult i64 %shl.i, %19
  %24 = tail call i64 @llvm.umin.i64(i64 %shl3.i, i64 %19) #6
  %sub.i = sub i64 %24, %shl.i
  %retval.0.i = select i1 %cmp.not.i, i64 %sub.i, i64 0
  %add = add i64 %retval.0.i, %usage.031
  %25 = trunc i64 %23 to i32
  %conv11 = sub i32 %pages.029, %25
  %incdec.ptr = getelementptr %struct.drm_mm_node, ptr %mm.030, i32 1
  %tobool.not = icmp eq i32 %conv11, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %add, %for.body.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vram_mgr_reserve_range(ptr noundef %mgr, i64 noundef %start, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %shr = lshr i64 %start, 12
  %start1 = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %start1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %shr, ptr %start1, align 8
  %shr2 = lshr i64 %size, 12
  %size4 = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %call7.i.i, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %size4 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %shr2, ptr %size4, align 8
  %lock = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %mgr, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %reservations_pending = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %mgr, i32 0, i32 3
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %reservations_pending, ptr noundef %6, ptr noundef nonnull %call7.i.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reservations_pending, ptr %prev.i, align 4
  %8 = ptrtoint ptr %reservations_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %reservations_pending, align 4
  %prev3.i.i = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %mgr, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %reservations_pending, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call fastcc void @amdgpu_vram_mgr_do_reserve(ptr noundef %mgr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_vram_mgr_do_reserve(ptr noundef %man) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %man, i32 -20952
  %mm2 = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 1
  %reservations_pending = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 3
  %0 = ptrtoint ptr %reservations_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reservations_pending, align 4
  %cmp.not51 = icmp eq ptr %1, %reservations_pending
  br i1 %cmp.not51, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %visible_vram_size.i = getelementptr i8, ptr %man, i32 -17176
  %vis_usage22 = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 6
  %usage = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 5
  %reserved_pages = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rsv.052 = phi ptr [ %1, %for.body.lr.ph ], [ %temp.054, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %rsv.052 to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.054 = load ptr, ptr %rsv.052, align 8
  %mm_node = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.052, i32 0, i32 1
  %call9 = tail call i32 @drm_mm_reserve_node(ptr noundef %mm2, ptr noundef %mm_node) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %do.body, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_vram_mgr_do_reserve.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_vram_mgr_do_reserve, %if.then16)) #6
          to label %do.end [label %if.then16], !srcloc !72

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %start = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.052, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %size = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.052, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_vram_mgr_do_reserve.__UNIQUE_ID_ddebug343, ptr noundef %4, ptr noundef nonnull @.str.22, i64 noundef %6, i64 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %start1.i = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.052, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start1.i, align 8
  %shl.i = shl i64 %10, 12
  %size.i = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.052, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i, align 8
  %add.i = add i64 %12, %10
  %shl3.i = shl i64 %add.i, 12
  %13 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %14)
  %cmp.not.i = icmp ult i64 %shl.i, %14
  %15 = tail call i64 @llvm.umin.i64(i64 %shl3.i, i64 %14) #6
  %sub.i = sub i64 %15, %shl.i
  %retval.0.i47 = select i1 %cmp.not.i, i64 %sub.i, i64 0
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vis_usage22, i32 noundef 8) #6
  tail call void @generic_atomic64_add(i64 noundef %retval.0.i47, ptr noundef %vis_usage22) #6
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size.i, align 8
  %shl = shl i64 %17, 12
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 8) #6
  tail call void @generic_atomic64_add(i64 noundef %shl, ptr noundef %usage) #6
  %call.i.i48 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rsv.052) #6
  br i1 %call.i.i48, label %if.end.i.i, label %do.end.__list_del_entry.exit.i_crit_edge

do.end.__list_del_entry.exit.i_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rsv.052, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %rsv.052 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rsv.052, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.end.__list_del_entry.exit.i_crit_edge
  %24 = ptrtoint ptr %reserved_pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reserved_pages, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rsv.052, ptr noundef %reserved_pages, ptr noundef %25) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rsv.052, ptr %prev1.i.i2.i, align 4
  %27 = ptrtoint ptr %rsv.052 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %rsv.052, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %rsv.052, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %reserved_pages, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %reserved_pages to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %rsv.052, ptr %reserved_pages, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %temp.054, %reservations_pending
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vram_mgr_query_page_status(ptr noundef %mgr, i64 noundef %start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %mgr, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %reservations_pending = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %mgr, i32 0, i32 3
  %0 = ptrtoint ptr %reservations_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %rsv.062 = load ptr, ptr %reservations_pending, align 4
  %cmp.not63 = icmp eq ptr %rsv.062, %reservations_pending
  br i1 %cmp.not63, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %rsv.064 = phi ptr [ %rsv.0, %for.inc.for.body_crit_edge ], [ %rsv.062, %entry.for.body_crit_edge ]
  %start2 = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.064, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %start2 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %start)
  %cmp3.not = icmp ugt i64 %2, %start
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %size = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.064, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size, align 8
  %add = add i64 %4, %2
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start)
  %cmp7 = icmp ugt i64 %add, %start
  br i1 %cmp7, label %land.lhs.true.out_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %rsv.064 to i32
  call void @__asan_load4_noabort(i32 %5)
  %rsv.0 = load ptr, ptr %rsv.064, align 4
  %cmp.not = icmp eq ptr %rsv.0, %reservations_pending
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %reserved_pages = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %mgr, i32 0, i32 4
  %6 = ptrtoint ptr %reserved_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %rsv.165 = load ptr, ptr %reserved_pages, align 4
  %cmp20.not66 = icmp eq ptr %rsv.165, %reserved_pages
  br i1 %cmp20.not66, label %for.end.out_crit_edge, label %for.end.for.body22_crit_edge

for.end.for.body22_crit_edge:                     ; preds = %for.end
  br label %for.body22

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body22:                                       ; preds = %for.inc35.for.body22_crit_edge, %for.end.for.body22_crit_edge
  %rsv.167 = phi ptr [ %rsv.1, %for.inc35.for.body22_crit_edge ], [ %rsv.165, %for.end.for.body22_crit_edge ]
  %start24 = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.167, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %start24 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start24, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %start)
  %cmp25.not = icmp ugt i64 %8, %start
  br i1 %cmp25.not, label %for.body22.for.inc35_crit_edge, label %land.lhs.true26

for.body22.for.inc35_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35

land.lhs.true26:                                  ; preds = %for.body22
  %size30 = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.167, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %size30 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size30, align 8
  %add31 = add i64 %10, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %add31, i64 %start)
  %cmp32 = icmp ugt i64 %add31, %start
  br i1 %cmp32, label %land.lhs.true26.out_crit_edge, label %land.lhs.true26.for.inc35_crit_edge

land.lhs.true26.for.inc35_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35

land.lhs.true26.out_crit_edge:                    ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.inc35:                                        ; preds = %land.lhs.true26.for.inc35_crit_edge, %for.body22.for.inc35_crit_edge
  %11 = ptrtoint ptr %rsv.167 to i32
  call void @__asan_load4_noabort(i32 %11)
  %rsv.1 = load ptr, ptr %rsv.167, align 4
  %cmp20.not = icmp eq ptr %rsv.1, %reserved_pages
  br i1 %cmp20.not, label %for.inc35.out_crit_edge, label %for.inc35.for.body22_crit_edge

for.inc35.for.body22_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22

for.inc35.out_crit_edge:                          ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %for.inc35.out_crit_edge, %land.lhs.true26.out_crit_edge, %for.end.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ -2, %for.end.out_crit_edge ], [ 0, %land.lhs.true26.out_crit_edge ], [ -2, %for.inc35.out_crit_edge ], [ -16, %land.lhs.true.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vram_mgr_alloc_sgt(ptr nocapture noundef readonly %adev, ptr noundef %res, i64 noundef %offset, i64 noundef %length, ptr noundef %dev, i32 noundef %dir, ptr nocapture noundef %sgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #9
  %1 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %sgt, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %res, null
  br i1 %tobool.not.i, label %if.end.amdgpu_res_first.exit_crit_edge, label %lor.lhs.false.i

if.end.amdgpu_res_first.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_res_first.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %res, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %add.i = add i64 %length, %offset
  %num_pages.i = getelementptr inbounds %struct.ttm_resource, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages.i, align 4
  %shl.i = shl i32 %5, 12
  %conv.i = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp5.i = icmp ugt i64 %add.i, %conv.i
  br i1 %cmp.i, label %land.rhs.critedge.i, label %do.body28.i

land.rhs.critedge.i:                              ; preds = %lor.lhs.false.i
  br i1 %cmp5.i, label %do.end.i, label %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge, !prof !71

land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge: ; preds = %land.rhs.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_res_first.exit

do.end.i:                                         ; preds = %land.rhs.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 62, i32 noundef 9, ptr noundef null) #6
  br label %amdgpu_res_first.exit

do.body28.i:                                      ; preds = %lor.lhs.false.i
  br i1 %cmp5.i, label %do.body42.i, label %do.end50.i, !prof !71

do.body42.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

do.end50.i:                                       ; preds = %do.body28.i
  %mm_nodes.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %res, i32 0, i32 1
  %size51103.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %res, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %size51103.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size51103.i, align 8
  %shl52104.i = shl i64 %7, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl52104.i, i64 %offset)
  %cmp53.not105.i = icmp ugt i64 %shl52104.i, %offset
  br i1 %cmp53.not105.i, label %do.end50.i.while.end.i_crit_edge, label %do.end50.i.while.body.i_crit_edge

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  br label %while.body.i

do.end50.i.while.end.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end50.i.while.body.i_crit_edge
  %shl52108.i = phi i64 [ %shl52.i, %while.body.i.while.body.i_crit_edge ], [ %shl52104.i, %do.end50.i.while.body.i_crit_edge ]
  %start.addr.0107.i = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %offset, %do.end50.i.while.body.i_crit_edge ]
  %node.0106.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %mm_nodes.i, %do.end50.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1
  %sub.i = sub i64 %start.addr.0107.i, %shl52108.i
  %size51.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1, i32 2
  %8 = ptrtoint ptr %size51.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size51.i, align 8
  %shl52.i = shl i64 %9, 12
  %cmp53.not.i = icmp ult i64 %sub.i, %shl52.i
  br i1 %cmp53.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end50.i.while.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %mm_nodes.i, %do.end50.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %start.addr.0.lcssa.i = phi i64 [ %offset, %do.end50.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  %size51.lcssa.i = phi ptr [ %size51103.i, %do.end50.i.while.end.i_crit_edge ], [ %size51.i, %while.body.i.while.end.i_crit_edge ]
  %10 = ptrtoint ptr %size51.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size51.lcssa.i, align 8
  %shl62.i = shl i64 %11, 12
  %sub63.i = sub i64 %shl62.i, %start.addr.0.lcssa.i
  %12 = tail call i64 @llvm.umin.i64(i64 %sub63.i, i64 %length) #6
  br label %amdgpu_res_first.exit

amdgpu_res_first.exit:                            ; preds = %while.end.i, %do.end.i, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge, %if.end.amdgpu_res_first.exit_crit_edge
  %cursor.sroa.42.0 = phi ptr [ null, %do.end.i ], [ null, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge ], [ %node.0.lcssa.i, %while.end.i ], [ null, %if.end.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.16.0 = phi i64 [ %length, %do.end.i ], [ %length, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge ], [ %12, %while.end.i ], [ %length, %if.end.amdgpu_res_first.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %tobool1.not193 = icmp eq i64 %length, 0
  br i1 %tobool1.not193, label %amdgpu_res_first.exit.while.end_crit_edge, label %amdgpu_res_first.exit.while.body_crit_edge

amdgpu_res_first.exit.while.body_crit_edge:       ; preds = %amdgpu_res_first.exit
  br label %while.body

amdgpu_res_first.exit.while.end_crit_edge:        ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %amdgpu_res_next.exit.while.body_crit_edge, %amdgpu_res_first.exit.while.body_crit_edge
  %num_entries.0197 = phi i32 [ %inc, %amdgpu_res_next.exit.while.body_crit_edge ], [ 0, %amdgpu_res_first.exit.while.body_crit_edge ]
  %cursor.sroa.16.1196 = phi i64 [ %cursor.sroa.16.2, %amdgpu_res_next.exit.while.body_crit_edge ], [ %cursor.sroa.16.0, %amdgpu_res_first.exit.while.body_crit_edge ]
  %cursor.sroa.31.1195 = phi i64 [ %sub.i88, %amdgpu_res_next.exit.while.body_crit_edge ], [ %length, %amdgpu_res_first.exit.while.body_crit_edge ]
  %cursor.sroa.42.1194 = phi ptr [ %cursor.sroa.42.2, %amdgpu_res_next.exit.while.body_crit_edge ], [ %cursor.sroa.42.0, %amdgpu_res_first.exit.while.body_crit_edge ]
  %inc = add i32 %num_entries.0197, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.31.1195, i64 %cursor.sroa.16.1196)
  %cmp.i87 = icmp ult i64 %cursor.sroa.31.1195, %cursor.sroa.16.1196
  br i1 %cmp.i87, label %do.body3.i, label %do.end8.i, !prof !71

do.body3.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #6, !srcloc !74
  unreachable

do.end8.i:                                        ; preds = %while.body
  %sub.i88 = sub i64 %cursor.sroa.31.1195, %cursor.sroa.16.1196
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.31.1195, i64 %cursor.sroa.16.1196)
  %tobool11.not.i = icmp eq i64 %cursor.sroa.31.1195, %cursor.sroa.16.1196
  br i1 %tobool11.not.i, label %do.end8.i.amdgpu_res_next.exit_crit_edge, label %if.end19.i

do.end8.i.amdgpu_res_next.exit_crit_edge:         ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_res_next.exit

if.end19.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i90 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.42.1194, i32 1
  %size23.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.42.1194, i32 1, i32 2
  %13 = ptrtoint ptr %size23.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size23.i, align 8
  %shl24.i = shl i64 %14, 12
  %15 = tail call i64 @llvm.umin.i64(i64 %shl24.i, i64 %sub.i88) #6
  br label %amdgpu_res_next.exit

amdgpu_res_next.exit:                             ; preds = %if.end19.i, %do.end8.i.amdgpu_res_next.exit_crit_edge
  %cursor.sroa.42.2 = phi ptr [ %cursor.sroa.42.1194, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %incdec.ptr.i90, %if.end19.i ]
  %cursor.sroa.16.2 = phi i64 [ %cursor.sroa.16.1196, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %15, %if.end19.i ]
  %tobool1.not = icmp eq i64 %sub.i88, 0
  br i1 %tobool1.not, label %amdgpu_res_next.exit.while.end_crit_edge, label %amdgpu_res_next.exit.while.body_crit_edge

amdgpu_res_next.exit.while.body_crit_edge:        ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

amdgpu_res_next.exit.while.end_crit_edge:         ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %amdgpu_res_next.exit.while.end_crit_edge, %amdgpu_res_first.exit.while.end_crit_edge
  %num_entries.0.lcssa = phi i32 [ 0, %amdgpu_res_first.exit.while.end_crit_edge ], [ %inc, %amdgpu_res_next.exit.while.end_crit_edge ]
  %16 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgt, align 4
  %call2 = tail call i32 @sg_alloc_table(ptr noundef %17, i32 noundef %num_entries.0.lcssa, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %while.end.error_free_crit_edge

while.end.error_free_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free

if.end5:                                          ; preds = %while.end
  %18 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sgt, align 4
  %orig_nents198 = getelementptr inbounds %struct.sg_table, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %orig_nents198 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %orig_nents198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp199.not = icmp eq i32 %21, 0
  br i1 %cmp199.not, label %if.end5.for.end_crit_edge, label %for.body.preheader

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end5
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0201 = phi i32 [ %inc7, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.0200 = phi ptr [ %call8, %for.body.for.body_crit_edge ], [ %23, %for.body.preheader ]
  %length6 = getelementptr inbounds %struct.scatterlist, ptr %sg.0200, i32 0, i32 2
  %24 = ptrtoint ptr %length6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %length6, align 4
  %inc7 = add nuw i32 %i.0201, 1
  %call8 = tail call ptr @sg_next(ptr noundef %sg.0200) #6
  %25 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sgt, align 4
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %orig_nents, align 4
  %cmp = icmp ult i32 %inc7, %28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %extract.t187 = trunc i64 %offset to i32
  br i1 %tobool.not.i, label %for.end.amdgpu_res_first.exit143_crit_edge, label %lor.lhs.false.i95

for.end.amdgpu_res_first.exit143_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_res_first.exit143

lor.lhs.false.i95:                                ; preds = %for.end
  %mem_type.i93 = getelementptr inbounds %struct.ttm_resource, ptr %res, i32 0, i32 2
  %29 = ptrtoint ptr %mem_type.i93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mem_type.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i94 = icmp eq i32 %30, 0
  %add.i99 = add i64 %length, %offset
  %num_pages.i100 = getelementptr inbounds %struct.ttm_resource, ptr %res, i32 0, i32 1
  %31 = ptrtoint ptr %num_pages.i100 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_pages.i100, align 4
  %shl.i101 = shl i32 %32, 12
  %conv.i102 = zext i32 %shl.i101 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i99, i64 %conv.i102)
  %cmp5.i103 = icmp ugt i64 %add.i99, %conv.i102
  br i1 %cmp.i94, label %land.rhs.critedge.i104, label %do.body28.i115

land.rhs.critedge.i104:                           ; preds = %lor.lhs.false.i95
  br i1 %cmp5.i103, label %do.end.i109, label %land.rhs.critedge.i104.amdgpu_res_first.exit143_crit_edge, !prof !71

land.rhs.critedge.i104.amdgpu_res_first.exit143_crit_edge: ; preds = %land.rhs.critedge.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_res_first.exit143

do.end.i109:                                      ; preds = %land.rhs.critedge.i104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 62, i32 noundef 9, ptr noundef null) #6
  br label %amdgpu_res_first.exit143

do.body28.i115:                                   ; preds = %lor.lhs.false.i95
  br i1 %cmp5.i103, label %do.body42.i116, label %do.end50.i121, !prof !71

do.body42.i116:                                   ; preds = %do.body28.i115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

do.end50.i121:                                    ; preds = %do.body28.i115
  %mm_nodes.i117 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %res, i32 0, i32 1
  %size51103.i118 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %res, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %size51103.i118 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %size51103.i118, align 8
  %shl52104.i119 = shl i64 %34, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl52104.i119, i64 %offset)
  %cmp53.not105.i120 = icmp ugt i64 %shl52104.i119, %offset
  br i1 %cmp53.not105.i120, label %do.end50.i121.while.end.i142_crit_edge, label %do.end50.i121.while.body.i130_crit_edge

do.end50.i121.while.body.i130_crit_edge:          ; preds = %do.end50.i121
  br label %while.body.i130

do.end50.i121.while.end.i142_crit_edge:           ; preds = %do.end50.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i142

while.body.i130:                                  ; preds = %while.body.i130.while.body.i130_crit_edge, %do.end50.i121.while.body.i130_crit_edge
  %shl52108.i122 = phi i64 [ %shl52.i128, %while.body.i130.while.body.i130_crit_edge ], [ %shl52104.i119, %do.end50.i121.while.body.i130_crit_edge ]
  %start.addr.0107.i123 = phi i64 [ %sub.i126, %while.body.i130.while.body.i130_crit_edge ], [ %offset, %do.end50.i121.while.body.i130_crit_edge ]
  %node.0106.i124 = phi ptr [ %incdec.ptr.i125, %while.body.i130.while.body.i130_crit_edge ], [ %mm_nodes.i117, %do.end50.i121.while.body.i130_crit_edge ]
  %incdec.ptr.i125 = getelementptr %struct.drm_mm_node, ptr %node.0106.i124, i32 1
  %sub.i126 = sub i64 %start.addr.0107.i123, %shl52108.i122
  %size51.i127 = getelementptr %struct.drm_mm_node, ptr %node.0106.i124, i32 1, i32 2
  %35 = ptrtoint ptr %size51.i127 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %size51.i127, align 8
  %shl52.i128 = shl i64 %36, 12
  %cmp53.not.i129 = icmp ult i64 %sub.i126, %shl52.i128
  br i1 %cmp53.not.i129, label %while.body.i130.while.end.i142_crit_edge, label %while.body.i130.while.body.i130_crit_edge

while.body.i130.while.body.i130_crit_edge:        ; preds = %while.body.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i130

while.body.i130.while.end.i142_crit_edge:         ; preds = %while.body.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i142

while.end.i142:                                   ; preds = %while.body.i130.while.end.i142_crit_edge, %do.end50.i121.while.end.i142_crit_edge
  %node.0.lcssa.i131 = phi ptr [ %mm_nodes.i117, %do.end50.i121.while.end.i142_crit_edge ], [ %incdec.ptr.i125, %while.body.i130.while.end.i142_crit_edge ]
  %start.addr.0.lcssa.i132 = phi i64 [ %offset, %do.end50.i121.while.end.i142_crit_edge ], [ %sub.i126, %while.body.i130.while.end.i142_crit_edge ]
  %size51.lcssa.i133 = phi ptr [ %size51103.i118, %do.end50.i121.while.end.i142_crit_edge ], [ %size51.i127, %while.body.i130.while.end.i142_crit_edge ]
  %start57.i134 = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i131, i32 0, i32 1
  %37 = ptrtoint ptr %start57.i134 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start57.i134, align 8
  %shl58.i135 = shl i64 %38, 12
  %add59.i136 = add i64 %shl58.i135, %start.addr.0.lcssa.i132
  %39 = ptrtoint ptr %size51.lcssa.i133 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %size51.lcssa.i133, align 8
  %shl62.i137 = shl i64 %40, 12
  %sub63.i138 = sub i64 %shl62.i137, %start.addr.0.lcssa.i132
  %41 = tail call i64 @llvm.umin.i64(i64 %sub63.i138, i64 %length) #6
  %extract.t186 = trunc i64 %add59.i136 to i32
  br label %amdgpu_res_first.exit143

amdgpu_res_first.exit143:                         ; preds = %while.end.i142, %do.end.i109, %land.rhs.critedge.i104.amdgpu_res_first.exit143_crit_edge, %for.end.amdgpu_res_first.exit143_crit_edge
  %cursor.sroa.42.3 = phi ptr [ null, %do.end.i109 ], [ null, %land.rhs.critedge.i104.amdgpu_res_first.exit143_crit_edge ], [ %node.0.lcssa.i131, %while.end.i142 ], [ null, %for.end.amdgpu_res_first.exit143_crit_edge ]
  %cursor.sroa.16.3 = phi i64 [ %length, %do.end.i109 ], [ %length, %land.rhs.critedge.i104.amdgpu_res_first.exit143_crit_edge ], [ %41, %while.end.i142 ], [ %length, %for.end.amdgpu_res_first.exit143_crit_edge ]
  %cursor.sroa.0.3.off0 = phi i32 [ %extract.t187, %do.end.i109 ], [ %extract.t187, %land.rhs.critedge.i104.amdgpu_res_first.exit143_crit_edge ], [ %extract.t186, %while.end.i142 ], [ %extract.t187, %for.end.amdgpu_res_first.exit143_crit_edge ]
  %42 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sgt, align 4
  %orig_nents11202 = getelementptr inbounds %struct.sg_table, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %orig_nents11202 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %orig_nents11202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp12203.not = icmp eq i32 %45, 0
  br i1 %cmp12203.not, label %amdgpu_res_first.exit143.cleanup46_crit_edge, label %for.body13.lr.ph

amdgpu_res_first.exit143.cleanup46_crit_edge:     ; preds = %amdgpu_res_first.exit143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

for.body13.lr.ph:                                 ; preds = %amdgpu_res_first.exit143
  %46 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sgt, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %aper_base = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 1
  br label %for.body13

for.body13:                                       ; preds = %for.inc26.for.body13_crit_edge, %for.body13.lr.ph
  %i.1209 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc27, %for.inc26.for.body13_crit_edge ]
  %sg.1208 = phi ptr [ %49, %for.body13.lr.ph ], [ %call28, %for.inc26.for.body13_crit_edge ]
  %cursor.sroa.0.4.off0207 = phi i32 [ %cursor.sroa.0.3.off0, %for.body13.lr.ph ], [ %cursor.sroa.0.6.ph.off0, %for.inc26.for.body13_crit_edge ]
  %cursor.sroa.16.4206 = phi i64 [ %cursor.sroa.16.3, %for.body13.lr.ph ], [ %cursor.sroa.16.6.ph, %for.inc26.for.body13_crit_edge ]
  %cursor.sroa.31.3205 = phi i64 [ %length, %for.body13.lr.ph ], [ %sub.i149, %for.inc26.for.body13_crit_edge ]
  %cursor.sroa.42.4204 = phi ptr [ %cursor.sroa.42.3, %for.body13.lr.ph ], [ %cursor.sroa.42.6.ph, %for.inc26.for.body13_crit_edge ]
  %50 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %aper_base, align 4
  %conv14 = add i32 %51, %cursor.sroa.0.4.off0207
  %conv17 = trunc i64 %cursor.sroa.16.4206 to i32
  %call18 = tail call i32 @dma_map_resource(ptr noundef %dev, i32 noundef %conv14, i32 noundef %conv17, i32 noundef %dir, i32 noundef 32) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp.i144 = icmp eq i32 %call18, -1
  br i1 %cmp.i144, label %error_unmap, label %if.end22

if.end22:                                         ; preds = %for.body13
  %52 = ptrtoint ptr %sg.1208 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sg.1208, align 4
  %and.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !75

do.body19.i.i:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !76
  unreachable

sg_set_page.exit:                                 ; preds = %if.end22
  %and.i.i = and i32 %53, 3
  %54 = ptrtoint ptr %sg.1208 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.i.i, ptr %sg.1208, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1208, i32 0, i32 1
  %55 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1208, i32 0, i32 2
  %56 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv17, ptr %length.i, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.1208, i32 0, i32 3
  %57 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call18, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.1208, i32 0, i32 4
  %58 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv17, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.31.3205, i64 %cursor.sroa.16.4206)
  %cmp.i147 = icmp ult i64 %cursor.sroa.31.3205, %cursor.sroa.16.4206
  br i1 %cmp.i147, label %do.body3.i148, label %do.end8.i151, !prof !71

do.body3.i148:                                    ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #6, !srcloc !74
  unreachable

do.end8.i151:                                     ; preds = %sg_set_page.exit
  %sub.i149 = sub i64 %cursor.sroa.31.3205, %cursor.sroa.16.4206
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.31.3205, i64 %cursor.sroa.16.4206)
  %tobool11.not.i150 = icmp eq i64 %cursor.sroa.31.3205, %cursor.sroa.16.4206
  br i1 %tobool11.not.i150, label %do.end8.i151.for.inc26_crit_edge, label %if.end19.i163

do.end8.i151.for.inc26_crit_edge:                 ; preds = %do.end8.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc26

if.end19.i163:                                    ; preds = %do.end8.i151
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i158 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.42.4204, i32 1
  %start21.i159 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.42.4204, i32 1, i32 1
  %59 = ptrtoint ptr %start21.i159 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %start21.i159, align 8
  %size23.i161 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.42.4204, i32 1, i32 2
  %61 = ptrtoint ptr %size23.i161 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %size23.i161, align 8
  %shl24.i162 = shl i64 %62, 12
  %63 = tail call i64 @llvm.umin.i64(i64 %shl24.i162, i64 %sub.i149) #6
  %.tr = trunc i64 %60 to i32
  %extract.t188 = shl i32 %.tr, 12
  br label %for.inc26

for.inc26:                                        ; preds = %if.end19.i163, %do.end8.i151.for.inc26_crit_edge
  %cursor.sroa.42.6.ph = phi ptr [ %incdec.ptr.i158, %if.end19.i163 ], [ %cursor.sroa.42.4204, %do.end8.i151.for.inc26_crit_edge ]
  %cursor.sroa.16.6.ph = phi i64 [ %63, %if.end19.i163 ], [ %cursor.sroa.16.4206, %do.end8.i151.for.inc26_crit_edge ]
  %cursor.sroa.0.6.ph.off0 = phi i32 [ %extract.t188, %if.end19.i163 ], [ %cursor.sroa.0.4.off0207, %do.end8.i151.for.inc26_crit_edge ]
  %inc27 = add nuw i32 %i.1209, 1
  %call28 = tail call ptr @sg_next(ptr noundef %sg.1208) #6
  %64 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sgt, align 4
  %orig_nents11 = getelementptr inbounds %struct.sg_table, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %orig_nents11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %orig_nents11, align 4
  %cmp12 = icmp ult i32 %inc27, %67
  br i1 %cmp12, label %for.inc26.for.body13_crit_edge, label %for.inc26.cleanup46_crit_edge

for.inc26.cleanup46_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

for.inc26.for.body13_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

error_unmap:                                      ; preds = %for.body13
  %68 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sgt, align 4
  %orig_nents32210 = getelementptr inbounds %struct.sg_table, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %orig_nents32210 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %orig_nents32210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp33211.not = icmp eq i32 %71, 0
  br i1 %cmp33211.not, label %error_unmap.for.end45_crit_edge, label %for.body35.preheader

error_unmap.for.end45_crit_edge:                  ; preds = %error_unmap
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end45

for.body35.preheader:                             ; preds = %error_unmap
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %69, align 4
  br label %for.body35

for.body35:                                       ; preds = %for.inc42.for.body35_crit_edge, %for.body35.preheader
  %i.2213 = phi i32 [ %inc43, %for.inc42.for.body35_crit_edge ], [ 0, %for.body35.preheader ]
  %sg.2212 = phi ptr [ %call44, %for.inc42.for.body35_crit_edge ], [ %73, %for.body35.preheader ]
  %length36 = getelementptr inbounds %struct.scatterlist, ptr %sg.2212, i32 0, i32 2
  %74 = ptrtoint ptr %length36 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool37.not = icmp eq i32 %75, 0
  br i1 %tobool37.not, label %for.body35.for.inc42_crit_edge, label %if.end39

for.body35.for.inc42_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc42

if.end39:                                         ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address40 = getelementptr inbounds %struct.scatterlist, ptr %sg.2212, i32 0, i32 3
  %76 = ptrtoint ptr %dma_address40 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_address40, align 4
  tail call void @dma_unmap_resource(ptr noundef %dev, i32 noundef %77, i32 noundef %75, i32 noundef %dir, i32 noundef 32) #6
  br label %for.inc42

for.inc42:                                        ; preds = %if.end39, %for.body35.for.inc42_crit_edge
  %inc43 = add nuw i32 %i.2213, 1
  %call44 = tail call ptr @sg_next(ptr noundef %sg.2212) #6
  %78 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sgt, align 4
  %orig_nents32 = getelementptr inbounds %struct.sg_table, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %orig_nents32 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %orig_nents32, align 4
  %cmp33 = icmp ult i32 %inc43, %81
  br i1 %cmp33, label %for.inc42.for.body35_crit_edge, label %for.inc42.for.end45_crit_edge

for.inc42.for.end45_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end45

for.inc42.for.body35_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35

for.end45:                                        ; preds = %for.inc42.for.end45_crit_edge, %error_unmap.for.end45_crit_edge
  %.lcssa = phi ptr [ %69, %error_unmap.for.end45_crit_edge ], [ %79, %for.inc42.for.end45_crit_edge ]
  tail call void @sg_free_table(ptr noundef %.lcssa) #6
  br label %error_free

error_free:                                       ; preds = %for.end45, %while.end.error_free_crit_edge
  %r.0 = phi i32 [ %call2, %while.end.error_free_crit_edge ], [ -12, %for.end45 ]
  %82 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sgt, align 4
  tail call void @kfree(ptr noundef %83) #6
  br label %cleanup46

cleanup46:                                        ; preds = %error_free, %for.inc26.cleanup46_crit_edge, %amdgpu_res_first.exit143.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %r.0, %error_free ], [ -12, %entry.cleanup46_crit_edge ], [ 0, %amdgpu_res_first.exit143.cleanup46_crit_edge ], [ 0, %for.inc26.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vram_mgr_free_sgt(ptr noundef %dev, i32 noundef %dir, ptr noundef %sgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %0 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %orig_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.08 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.08, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.08, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  tail call void @dma_unmap_resource(ptr noundef %dev, i32 noundef %5, i32 noundef %7, i32 noundef %dir, i32 noundef 32) #6
  %inc = add nuw i32 %i.09, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.08) #6
  %8 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @sg_free_table(ptr noundef %sgt) #6
  tail call void @kfree(ptr noundef %sgt) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_vram_mgr_usage(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %mgr, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %usage) #6
  ret i64 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_vram_mgr_vis_usage(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vis_usage = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %mgr, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vis_usage, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %vis_usage) #6
  ret i64 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vram_mgr_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vram_mgr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8
  %real_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %0 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %real_vram_size, align 8
  %shr = lshr i64 %1, 12
  %conv = trunc i64 %shr to i32
  tail call void @ttm_resource_manager_init(ptr noundef %vram_mgr, i32 noundef %conv) #6
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 3
  %2 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @amdgpu_vram_mgr_func, ptr %func, align 8
  %mm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 1
  %size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size, align 8
  tail call void @drm_mm_init(ptr noundef %mm, i64 noundef 0, i64 noundef %4) #6
  %lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @amdgpu_vram_mgr_init.__key, i16 noundef signext 3) #6
  %reservations_pending = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 3
  %5 = ptrtoint ptr %reservations_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %reservations_pending, ptr %reservations_pending, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reservations_pending, ptr %prev.i, align 4
  %reserved_pages = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 4
  %7 = ptrtoint ptr %reserved_pages to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %reserved_pages, ptr %reserved_pages, align 4
  %prev.i13 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reserved_pages, ptr %prev.i13, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vram_mgr, ptr %arrayidx.i, align 4
  %arrayidx.i14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i14, align 4
  %cmp.i.not.i = icmp eq ptr %11, %arrayidx.i14
  br i1 %cmp.i.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !75

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 229, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %13, %arrayidx.1.i
  br i1 %cmp.i.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %do.end.1.i, !prof !75

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1.i

do.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 229, i32 noundef 9, ptr noundef null) #6
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end.1.i, %if.end.i.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %15, %arrayidx.2.i
  br i1 %cmp.i.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %do.end.2.i, !prof !75

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2.i

do.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 229, i32 noundef 9, ptr noundef null) #6
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %do.end.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.not.3.i = icmp eq ptr %17, %arrayidx.3.i
  br i1 %cmp.i.not.3.i, label %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge, label %do.end.3.i, !prof !75

if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ttm_resource_manager_set_used.exit

do.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 229, i32 noundef 9, ptr noundef null) #6
  br label %ttm_resource_manager_set_used.exit

ttm_resource_manager_set_used.exit:               ; preds = %do.end.3.i, %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge
  %18 = ptrtoint ptr %vram_mgr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %vram_mgr, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_manager_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vram_mgr_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mman = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68
  %vram_mgr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %arrayidx.i
  br i1 %cmp.i.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !75

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 229, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %3, %arrayidx.1.i
  br i1 %cmp.i.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %do.end.1.i, !prof !75

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1.i

do.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 229, i32 noundef 9, ptr noundef null) #6
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end.1.i, %if.end.i.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %5, %arrayidx.2.i
  br i1 %cmp.i.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %do.end.2.i, !prof !75

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2.i

do.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 229, i32 noundef 9, ptr noundef null) #6
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %do.end.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.not.3.i = icmp eq ptr %7, %arrayidx.3.i
  br i1 %cmp.i.not.3.i, label %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge, label %do.end.3.i, !prof !75

if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ttm_resource_manager_set_used.exit

do.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 229, i32 noundef 9, ptr noundef null) #6
  br label %ttm_resource_manager_set_used.exit

ttm_resource_manager_set_used.exit:               ; preds = %do.end.3.i, %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge
  %8 = ptrtoint ptr %vram_mgr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %vram_mgr, align 8
  %call = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %mman, ptr noundef %vram_mgr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %ttm_resource_manager_set_used.exit.cleanup_crit_edge

ttm_resource_manager_set_used.exit.cleanup_crit_edge: ; preds = %ttm_resource_manager_set_used.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ttm_resource_manager_set_used.exit
  %lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %reservations_pending = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 3
  %9 = ptrtoint ptr %reservations_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reservations_pending, align 4
  %cmp.not63 = icmp eq ptr %10, %reservations_pending
  br i1 %cmp.not63, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %rsv.064 = phi ptr [ %temp.0, %for.body.for.body_crit_edge ], [ %10, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %rsv.064 to i32
  call void @__asan_load4_noabort(i32 %11)
  %temp.0 = load ptr, ptr %rsv.064, align 8
  tail call void @kfree(ptr noundef %rsv.064) #6
  %cmp.not = icmp eq ptr %temp.0, %reservations_pending
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %reserved_pages = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 4
  %12 = ptrtoint ptr %reserved_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reserved_pages, align 4
  %cmp25.not65 = icmp eq ptr %13, %reserved_pages
  br i1 %cmp25.not65, label %for.end.for.end34_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end34

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %rsv.166 = phi ptr [ %temp.1, %for.body27.for.body27_crit_edge ], [ %13, %for.end.for.body27_crit_edge ]
  %14 = ptrtoint ptr %rsv.166 to i32
  call void @__asan_load4_noabort(i32 %14)
  %temp.1 = load ptr, ptr %rsv.166, align 8
  %mm_node = getelementptr inbounds %struct.amdgpu_vram_reservation, ptr %rsv.166, i32 0, i32 1
  tail call void @drm_mm_remove_node(ptr noundef %mm_node) #6
  tail call void @kfree(ptr noundef %rsv.166) #6
  %cmp25.not = icmp eq ptr %temp.1, %reserved_pages
  br i1 %cmp25.not, label %for.body27.for.end34_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27

for.body27.for.end34_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end34

for.end34:                                        ; preds = %for.body27.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %mm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 1
  tail call void @drm_mm_takedown(ptr noundef %mm) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %move.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8, i32 0, i32 6
  %15 = ptrtoint ptr %move.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %move.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %for.end34.ttm_resource_manager_cleanup.exit_crit_edge, label %if.then.i.i

for.end34.ttm_resource_manager_cleanup.exit_crit_edge: ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %ttm_resource_manager_cleanup.exit

if.then.i.i:                                      ; preds = %for.end34
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #6
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #6, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.ttm_resource_manager_cleanup.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !75

if.end5.i.i.i.i.i.i.ttm_resource_manager_cleanup.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ttm_resource_manager_cleanup.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #6
  br label %ttm_resource_manager_cleanup.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @dma_fence_release(ptr noundef %refcount.i.i) #6
  br label %ttm_resource_manager_cleanup.exit

ttm_resource_manager_cleanup.exit:                ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.ttm_resource_manager_cleanup.exit_crit_edge, %for.end34.ttm_resource_manager_cleanup.exit_crit_edge
  %18 = ptrtoint ptr %move.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %move.i, align 8
  %arrayidx.i62 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx.i62, align 4
  br label %cleanup

cleanup:                                          ; preds = %ttm_resource_manager_cleanup.exit, %ttm_resource_manager_set_used.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mem_info_vram_total_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %real_vram_size = getelementptr i8, ptr %1, i32 3864
  %2 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %real_vram_size, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %3) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mem_info_vis_vram_total_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %visible_vram_size = getelementptr i8, ptr %1, i32 3768
  %2 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %visible_vram_size, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %3) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mem_info_vram_used_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %usage.i = getelementptr i8, ptr %1, i32 21264
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage.i, i32 noundef 8) #6
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %usage.i) #6
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %call.i.i) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mem_info_vis_vram_used_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vis_usage.i = getelementptr i8, ptr %1, i32 21272
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vis_usage.i, i32 noundef 8) #6
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %vis_usage.i) #6
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %call.i.i) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mem_info_vram_vendor(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vram_vendor = getelementptr i8, ptr %1, i32 3912
  %2 = ptrtoint ptr %vram_vendor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vram_vendor, align 8
  %switch.tableidx = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 15
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [15 x ptr], ptr @switch.table.amdgpu_mem_info_vram_vendor, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %.str.17.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.17, %entry.cleanup_crit_edge ]
  %call21 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull %.str.17.sink) #6
  ret i32 %call21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_reserve_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_vram_mgr_new(ptr noundef %man, ptr noundef %tbo, ptr noundef %place, ptr nocapture noundef writeonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mm2 = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 1
  %lpfn3 = getelementptr inbounds %struct.ttm_place, ptr %place, i32 0, i32 1
  %0 = ptrtoint ptr %lpfn3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lpfn3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.ttm_resource_manager, ptr %man, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %conv = trunc i64 %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lpfn.0 = phi i32 [ %1, %entry.if.end_crit_edge ], [ %conv, %if.then ]
  %mc_vram_size = getelementptr i8, ptr %man, i32 -17184
  %4 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mc_vram_size, align 8
  %type = getelementptr inbounds %struct.ttm_buffer_object, ptr %tbo, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  %sub = add i64 %5, -8388608
  %spec.select = select i1 %cmp.not, i64 %5, i64 %sub
  %size7 = getelementptr inbounds %struct.drm_gem_object, ptr %tbo, i32 0, i32 5
  %8 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size7, align 8
  %conv8 = zext i32 %9 to i64
  %usage = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_add_return(i64 noundef %conv8, ptr noundef %usage) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %spec.select)
  %cmp10 = icmp ugt i64 %call.i, %spec.select
  br i1 %cmp10, label %if.end.error_sub_crit_edge, label %if.end13

if.end.error_sub_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_sub

if.end13:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.ttm_place, ptr %place, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else, label %if.end13.if.end220_crit_edge

if.end13.if.end220_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

if.else:                                          ; preds = %if.end13
  %page_alignment = getelementptr inbounds %struct.ttm_buffer_object, ptr %tbo, i32 0, i32 3
  %12 = ptrtoint ptr %page_alignment to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_alignment, align 8
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 512)
  %sub18 = add nuw nsw i64 %conv8, 4095
  %shr = lshr i64 %sub18, 12
  %conv19 = zext i32 %14 to i64
  %add20 = add nsw i64 %conv19, -1
  %sub21 = add nuw nsw i64 %add20, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub21)
  %cmp202 = icmp ult i64 %sub21, 4294967296
  br i1 %cmp202, label %if.then206, label %if.else212, !prof !75

if.then206:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv207 = trunc i64 %sub21 to i32
  %div210 = udiv i32 %conv207, %14
  br label %if.end220

if.else212:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %sub21) #10, !srcloc !80
  %asmresult1.i = extractvalue { i64, i64 } %15, 1
  %extract.t530 = trunc i64 %asmresult1.i to i32
  br label %if.end220

if.end220:                                        ; preds = %if.else212, %if.then206, %if.end13.if.end220_crit_edge
  %pages_per_node.0 = phi i32 [ -1, %if.end13.if.end220_crit_edge ], [ %14, %if.else212 ], [ %14, %if.then206 ]
  %num_nodes.0 = phi i32 [ 1, %if.end13.if.end220_crit_edge ], [ %extract.t530, %if.else212 ], [ %div210, %if.then206 ]
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_nodes.0, i32 112) #6
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %18, i32 32) #6
  %retval.0.i = select i1 %17, i32 -1, i32 %spec.select.i
  %call.i498 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #11
  %tobool223.not = icmp eq ptr %call.i498, null
  br i1 %tobool223.not, label %if.end220.error_sub_crit_edge, label %if.end225

if.end220.error_sub_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_sub

if.end225:                                        ; preds = %if.end220
  tail call void @ttm_resource_init(ptr noundef %tbo, ptr noundef %place, ptr noundef nonnull %call.i498) #6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and228 = and i32 %20, 2
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %call.i498, i32 0, i32 1
  %21 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_pages, align 4
  %lock = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool240.not537 = icmp eq i32 %22, 0
  br i1 %tobool240.not537, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %if.end307

while.body.lr.ph:                                 ; preds = %if.end225
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 524288)
  %page_alignment241 = getelementptr inbounds %struct.ttm_buffer_object, ptr %tbo, i32 0, i32 3
  %conv249 = zext i32 %lpfn.0 to i64
  %visible_vram_size.i = getelementptr i8, ptr %man, i32 -17176
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %pages_left.0541 = phi i32 [ %22, %while.body.lr.ph ], [ %pages_left.1.ph, %while.cond.backedge.while.body_crit_edge ]
  %i.0540 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1.ph, %while.cond.backedge.while.body_crit_edge ]
  %vis_usage.0539 = phi i64 [ 0, %while.body.lr.ph ], [ %vis_usage.1.ph, %while.cond.backedge.while.body_crit_edge ]
  %pages.0538 = phi i32 [ %23, %while.body.lr.ph ], [ %pages.3.ph, %while.cond.backedge.while.body_crit_edge ]
  %24 = ptrtoint ptr %page_alignment241 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %page_alignment241, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %pages.0538, i32 %pages_per_node.0)
  %cmp242.not = icmp ult i32 %pages.0538, %pages_per_node.0
  %spec.select493 = select i1 %cmp242.not, i32 %25, i32 %pages_per_node.0
  %arrayidx = getelementptr %struct.ttm_range_mgr_node, ptr %call.i498, i32 0, i32 1, i32 %i.0540
  %conv246 = zext i32 %pages.0538 to i64
  %conv247 = zext i32 %spec.select493 to i64
  %26 = ptrtoint ptr %place to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %place, align 4
  %conv248 = zext i32 %27 to i64
  %call250 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm2, ptr noundef %arrayidx, i64 noundef %conv246, i64 noundef %conv247, i32 noundef 0, i64 noundef %conv248, i64 noundef %conv249, i32 noundef %and228) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %if.end288, label %if.then258, !prof !75

if.then258:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %pages.0538, i32 %pages_per_node.0)
  %cmp259 = icmp ugt i32 %pages.0538, %pages_per_node.0
  br i1 %cmp259, label %if.then261, label %while.cond319.preheader

if.then261:                                       ; preds = %if.then258
  %28 = tail call i32 @llvm.ctpop.i32(i32 %pages.0538) #6, !range !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp1.i499 = icmp ult i32 %28, 2
  br i1 %cmp1.i499, label %if.then263, label %cond.false282

if.then263:                                       ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #8
  %div264490 = lshr i32 %pages.0538, 1
  br label %while.cond.backedge

cond.false282:                                    ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #8
  %29 = tail call i32 @llvm.ctlz.i32(i32 %pages.0538, i1 true) #6, !range !81
  %shl.i = lshr i32 -2147483648, %29
  br label %while.cond.backedge

if.end288:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %start1.i = getelementptr %struct.ttm_range_mgr_node, ptr %call.i498, i32 0, i32 1, i32 %i.0540, i32 1
  %30 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %start1.i, align 8
  %shl.i500 = shl i64 %31, 12
  %size.i = getelementptr %struct.ttm_range_mgr_node, ptr %call.i498, i32 0, i32 1, i32 %i.0540, i32 2
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %size.i, align 8
  %add.i = add i64 %33, %31
  %shl3.i = shl i64 %add.i, 12
  %34 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i500, i64 %35)
  %cmp.not.i = icmp ult i64 %shl.i500, %35
  %36 = tail call i64 @llvm.umin.i64(i64 %shl3.i, i64 %35) #6
  %sub.i501 = sub i64 %36, %shl.i500
  %retval.0.i502 = select i1 %cmp.not.i, i64 %sub.i501, i64 0
  %add292 = add i64 %retval.0.i502, %vis_usage.0539
  %conv.i = trunc i64 %add.i to i32
  %37 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_pages, align 4
  %39 = tail call i32 @llvm.usub.sat.i32(i32 %conv.i, i32 %38) #6
  %40 = ptrtoint ptr %call.i498 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call.i498, align 4
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 %39) #6
  %43 = ptrtoint ptr %call.i498 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %call.i498, align 4
  %sub296 = sub i32 %pages_left.0541, %pages.0538
  %inc = add i32 %i.0540, 1
  %44 = tail call i32 @llvm.umin.i32(i32 %pages.0538, i32 %sub296)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end288, %cond.false282, %if.then263
  %pages.3.ph = phi i32 [ %shl.i, %cond.false282 ], [ %div264490, %if.then263 ], [ %44, %if.end288 ]
  %vis_usage.1.ph = phi i64 [ %vis_usage.0539, %cond.false282 ], [ %vis_usage.0539, %if.then263 ], [ %add292, %if.end288 ]
  %i.1.ph = phi i32 [ %i.0540, %cond.false282 ], [ %i.0540, %if.then263 ], [ %inc, %if.end288 ]
  %pages_left.1.ph = phi i32 [ %pages_left.0541, %cond.false282 ], [ %pages_left.0541, %if.then263 ], [ %sub296, %if.end288 ]
  %tobool240.not = icmp eq i32 %pages_left.1.ph, 0
  br i1 %tobool240.not, label %while.end, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond319.preheader:                          ; preds = %if.then258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0540)
  %tobool320.not543 = icmp eq i32 %i.0540, 0
  br i1 %tobool320.not543, label %while.cond319.preheader.while.end324_crit_edge, label %while.cond319.preheader.while.body321_crit_edge

while.cond319.preheader.while.body321_crit_edge:  ; preds = %while.cond319.preheader
  br label %while.body321

while.cond319.preheader.while.end324_crit_edge:   ; preds = %while.cond319.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end324

while.end:                                        ; preds = %while.cond.backedge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1.ph)
  %cmp302 = icmp eq i32 %i.1.ph, 1
  br i1 %cmp302, label %if.then304, label %while.end.if.end307_crit_edge

while.end.if.end307_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end307

if.then304:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %placement = getelementptr inbounds %struct.ttm_resource, ptr %call.i498, i32 0, i32 3
  %45 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %placement, align 4
  %or306 = or i32 %46, 1
  store i32 %or306, ptr %placement, align 4
  br label %if.end307

if.end307:                                        ; preds = %if.then304, %while.end.if.end307_crit_edge, %while.end.thread
  %vis_usage.0.lcssa564 = phi i64 [ 0, %while.end.thread ], [ %vis_usage.1.ph, %if.then304 ], [ %vis_usage.1.ph, %while.end.if.end307_crit_edge ]
  %connected_to_cpu = getelementptr i8, ptr %man, i32 -10728
  %47 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %connected_to_cpu, align 8, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool309.not = icmp eq i8 %48, 0
  %spec.select567 = select i1 %tobool309.not, i32 1, i32 2
  %49 = getelementptr inbounds %struct.ttm_resource, ptr %call.i498, i32 0, i32 4, i32 3
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.select567, ptr %49, align 4
  %vis_usage317 = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 6
  %call.i.i495 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vis_usage317, i32 noundef 8) #6
  tail call void @generic_atomic64_add(i64 noundef %vis_usage.0.lcssa564, ptr noundef %vis_usage317) #6
  %51 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i498, ptr %res, align 4
  br label %cleanup327

while.body321:                                    ; preds = %while.body321.while.body321_crit_edge, %while.cond319.preheader.while.body321_crit_edge
  %i.2544 = phi i32 [ %dec, %while.body321.while.body321_crit_edge ], [ %i.0540, %while.cond319.preheader.while.body321_crit_edge ]
  %dec = add i32 %i.2544, -1
  %arrayidx323 = getelementptr %struct.ttm_range_mgr_node, ptr %call.i498, i32 0, i32 1, i32 %dec
  tail call void @drm_mm_remove_node(ptr noundef %arrayidx323) #6
  %tobool320.not = icmp eq i32 %dec, 0
  br i1 %tobool320.not, label %while.body321.while.end324_crit_edge, label %while.body321.while.body321_crit_edge

while.body321.while.body321_crit_edge:            ; preds = %while.body321
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body321

while.body321.while.end324_crit_edge:             ; preds = %while.body321
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end324

while.end324:                                     ; preds = %while.body321.while.end324_crit_edge, %while.cond319.preheader.while.end324_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  tail call void @kvfree(ptr noundef nonnull %call.i498) #6
  br label %error_sub

error_sub:                                        ; preds = %while.end324, %if.end220.error_sub_crit_edge, %if.end.error_sub_crit_edge
  %r.0 = phi i32 [ %call250, %while.end324 ], [ -28, %if.end.error_sub_crit_edge ], [ -12, %if.end220.error_sub_crit_edge ]
  %call.i.i496 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 8) #6
  tail call void @generic_atomic64_sub(i64 noundef %conv8, ptr noundef %usage) #6
  br label %cleanup327

cleanup327:                                       ; preds = %error_sub, %if.end307
  %retval.0 = phi i32 [ %r.0, %error_sub ], [ 0, %if.end307 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vram_mgr_del(ptr noundef %man, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not28 = icmp eq i32 %1, 0
  br i1 %tobool.not28, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %visible_vram_size.i = getelementptr i8, ptr %man, i32 -17176
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pages.032 = phi i32 [ %1, %for.body.lr.ph ], [ %conv8, %for.body.for.body_crit_edge ]
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %vis_usage.030 = phi i64 [ 0, %for.body.lr.ph ], [ %add4, %for.body.for.body_crit_edge ]
  %usage.029 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ttm_range_mgr_node, ptr %res, i32 0, i32 1, i32 %i.031
  tail call void @drm_mm_remove_node(ptr noundef %arrayidx) #6
  %size = getelementptr %struct.ttm_range_mgr_node, ptr %res, i32 0, i32 1, i32 %i.031, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %shl = shl i64 %3, 12
  %add = add i64 %shl, %usage.029
  %start1.i = getelementptr %struct.ttm_range_mgr_node, ptr %res, i32 0, i32 1, i32 %i.031, i32 1
  %4 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start1.i, align 8
  %shl.i = shl i64 %5, 12
  %add.i = add i64 %3, %5
  %shl3.i = shl i64 %add.i, 12
  %6 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %7)
  %cmp.not.i = icmp ult i64 %shl.i, %7
  %8 = tail call i64 @llvm.umin.i64(i64 %shl3.i, i64 %7) #6
  %sub.i = sub i64 %8, %shl.i
  %retval.0.i = select i1 %cmp.not.i, i64 %sub.i, i64 0
  %add4 = add i64 %retval.0.i, %vis_usage.030
  %9 = trunc i64 %3 to i32
  %conv8 = sub i32 %pages.032, %9
  %inc = add i32 %i.031, 1
  %tobool.not = icmp eq i32 %conv8, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %usage.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %vis_usage.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add4, %for.body.for.end_crit_edge ]
  tail call fastcc void @amdgpu_vram_mgr_do_reserve(ptr noundef %man)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %usage10 = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage10, i32 noundef 8) #6
  tail call void @generic_atomic64_sub(i64 noundef %usage.0.lcssa, ptr noundef %usage10) #6
  %vis_usage11 = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 6
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vis_usage11, i32 noundef 8) #6
  tail call void @generic_atomic64_sub(i64 noundef %vis_usage.0.lcssa, ptr noundef %vis_usage11) #6
  tail call void @kvfree(ptr noundef %res) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vram_mgr_debug(ptr noundef %man, ptr noundef %printer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %mm = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 1
  tail call void @drm_mm_print(ptr noundef %mm, ptr noundef %printer) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %size = getelementptr inbounds %struct.ttm_resource_manager, ptr %man, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %size, align 8
  %usage.i = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage.i, i32 noundef 8) #6
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %usage.i) #6
  %shr = lshr i64 %call.i.i, 20
  %vis_usage.i = getelementptr inbounds %struct.amdgpu_vram_mgr, ptr %man, i32 0, i32 6
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vis_usage.i, i32 noundef 8) #6
  %call.i.i12 = tail call i64 @generic_atomic64_read(ptr noundef %vis_usage.i) #6
  %shr4 = lshr i64 %call.i.i12, 20
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %printer, ptr noundef nonnull @.str.24, i64 noundef %1, i64 noundef %shr, i64 noundef %shr4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @amdgpu_vram_mgr_attr_group, !1, !"amdgpu_vram_mgr_attr_group", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 184, i32 30}
!2 = !{ptr @amdgpu_vram_mgr_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 697, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @amdgpu_vram_mgr_attributes, !6, !"amdgpu_vram_mgr_attributes", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 175, i32 26}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 164, i32 8}
!9 = !{ptr @dev_attr_mem_info_vram_total, !8, !"dev_attr_mem_info_vram_total", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 65, i32 25}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 166, i32 8}
!14 = !{ptr @dev_attr_mem_info_vis_vram_total, !13, !"dev_attr_mem_info_vis_vram_total", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 168, i32 8}
!17 = !{ptr @dev_attr_mem_info_vram_used, !16, !"dev_attr_mem_info_vram_used", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 170, i32 8}
!20 = !{ptr @dev_attr_mem_info_vis_vram_used, !19, !"dev_attr_mem_info_vis_vram_used", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 172, i32 8}
!23 = !{ptr @dev_attr_mem_info_vram_vendor, !22, !"dev_attr_mem_info_vram_vendor", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 140, i32 26}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 142, i32 26}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 144, i32 26}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 146, i32 26}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 148, i32 26}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 150, i32 26}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 152, i32 26}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 154, i32 26}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 156, i32 26}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 158, i32 26}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 160, i32 26}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h", i32 286, i32 2}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 251, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @amdgpu_vram_mgr_do_reserve.__UNIQUE_ID_ddebug343, !49, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h", i32 62, i32 3}
!56 = !{ptr @amdgpu_vram_mgr_func, !57, !"amdgpu_vram_mgr_func", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 674, i32 47}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c", i32 669, i32 22}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/drm/ttm/ttm_resource.h", i32 229, i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2148339511, i64 2148339516, i64 2148339529, i64 2148339573, i64 2148339607, i64 2148339628}
!73 = !{i64 2158709020, i64 2158709540, i64 2158709057, i64 2158709113, i64 2158709147, i64 2158709171, i64 2158709212, i64 2158709233, i64 2158709261, i64 2158709295}
!74 = !{i64 2158712486, i64 2158713006, i64 2158712523, i64 2158712579, i64 2158712613, i64 2158712637, i64 2158712678, i64 2158712699, i64 2158712727, i64 2158712761}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2153794312, i64 2153794804, i64 2153794349, i64 2153794405, i64 2153794439, i64 2153794463, i64 2153794504, i64 2153794525, i64 2153794553, i64 2153794587}
!77 = !{i64 2148615649}
!78 = !{i64 2148530113, i64 2148530145, i64 2148530174, i64 2148530208, i64 2148530239, i64 2148530262}
!79 = !{i64 2149637702}
!80 = !{i64 2148364698, i64 2148364978, i64 2148365312, i64 2148365646}
!81 = !{i32 0, i32 33}
!82 = !{i8 0, i8 2}
