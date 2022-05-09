; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_bo_param = type { i32, i32, i32, i32, i32, i64, i32, i8, ptr, ptr }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.dma_fence = type { ptr, ptr, %union.anon.80, i64, i64, i32, %struct.kref, i32 }
%union.anon.80 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.amdgpu_bo_vm = type { %struct.amdgpu_bo, ptr, %struct.list_head, [0 x %struct.amdgpu_vm_bo_base] }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.amdgpu_bo_user = type { %struct.amdgpu_bo, i64, i64, ptr, i32 }

@amdgpu_bo_create_reserved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: (%d) failed to allocate kernel bo\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_bo_create_reserved\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_object.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_bo_create_reserved._entry_ptr = internal global ptr @amdgpu_bo_create_reserved._entry, section ".printk_index", align 4
@amdgpu_bo_create_reserved._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 265, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: (%d) failed to reserve kernel bo\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_bo_create_reserved._entry_ptr.7 = internal global ptr @amdgpu_bo_create_reserved._entry.5, section ".printk_index", align 4
@amdgpu_bo_create_reserved._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: (%d) kernel bo pin failed\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_bo_create_reserved._entry_ptr.10 = internal global ptr @amdgpu_bo_create_reserved._entry.8, section ".printk_index", align 4
@amdgpu_bo_create_reserved._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 277, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu: %p bind failed\0A\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_bo_create_reserved._entry_ptr.13 = internal global ptr @amdgpu_bo_create_reserved._entry.11, section ".printk_index", align 4
@amdgpu_bo_create_reserved._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: (%d) kernel bo map failed\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_bo_create_reserved._entry_ptr.16 = internal global ptr @amdgpu_bo_create_reserved._entry.14, section ".printk_index", align 4
@amdgpu_bo_pin_restricted.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_bo_pin_restricted.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_bo_pin_restricted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 941, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: %p pin failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu_bo_pin_restricted\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_bo_pin_restricted._entry_ptr = internal global ptr @amdgpu_bo_pin_restricted._entry, section ".printk_index", align 4
@amdgpu_bo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016[drm] Detected VRAM RAM=%lluM, BAR=%lluM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_bo_init\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_bo_init._entry_ptr = internal global ptr @amdgpu_bo_init._entry, section ".printk_index", align 4
@amdgpu_bo_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016[drm] RAM width %dbits %s\0A\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_bo_init._entry_ptr.25 = internal global ptr @amdgpu_bo_init._entry.23, section ".printk_index", align 4
@amdgpu_vram_names = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], [52 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@amdgpu_bo_release_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_bo_gpu_offset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_bo_gpu_offset.__already_done.26 = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_bo_gpu_offset.__already_done.27 = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_bo_gpu_offset.__already_done.28 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VRAM\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" GTT\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CPU\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09\090x%08x: %12lld byte %s\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" pin count %d\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" imported from %p\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" exported as %p\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" CPU_ACCESS_REQUIRED\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" NO_CPU_ACCESS\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" CPU_GTT_USWC\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" VRAM_CLEARED\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" VRAM_CONTIGUOUS\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" VM_ALWAYS_VALID\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" EXPLICIT_SYNC\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.46, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BO size %lu > total memory in domain: %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_bo_create = external dso_local global %struct.tracepoint, align 4
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", [44 x i8] zeroinitializer }, align 32
@trace_amdgpu_bo_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/drm/ttm/ttm_bo_api.h\00", [35 x i8] zeroinitializer }, align 32
@ttm_bo_pin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ttm_bo_unpin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ttm_bo_unpin.__already_done.54 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR1\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDR2\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR3\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR4\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR5\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HBM\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDR3\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDR4\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR6\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDR5\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_bo_move = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_bo_move.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966784, i64 4294967280]
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 256, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 265, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 271, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 277, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 287, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 941, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1049, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1052, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"amdgpu_vram_names\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1008, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1531, i32 15 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1534, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1538, i32 15 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1543, i32 16 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1548, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1554, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1556, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1558, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1559, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1560, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1561, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1562, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1563, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1564, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1566, i32 14 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 179, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 474, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 286, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 116, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 108, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [32 x i8] c"../include/drm/ttm/ttm_bo_api.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 551, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1009, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1010, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1011, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1012, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1013, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1014, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1015, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1016, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1017, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1018, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [46 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 1019, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @amdgpu_bo_create_reserved._entry, ptr @amdgpu_bo_create_reserved._entry.11, ptr @amdgpu_bo_create_reserved._entry.14, ptr @amdgpu_bo_create_reserved._entry.5, ptr @amdgpu_bo_create_reserved._entry.8, ptr @amdgpu_bo_create_reserved._entry_ptr, ptr @amdgpu_bo_create_reserved._entry_ptr.10, ptr @amdgpu_bo_create_reserved._entry_ptr.13, ptr @amdgpu_bo_create_reserved._entry_ptr.16, ptr @amdgpu_bo_create_reserved._entry_ptr.7, ptr @amdgpu_bo_init._entry, ptr @amdgpu_bo_init._entry.23, ptr @amdgpu_bo_init._entry_ptr, ptr @amdgpu_bo_init._entry_ptr.25, ptr @amdgpu_bo_pin_restricted._entry, ptr @amdgpu_bo_pin_restricted._entry_ptr, ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @amdgpu_vram_names, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_create_reserved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_create_reserved._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_create_reserved._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_create_reserved._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_create_reserved._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_pin_restricted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vram_names to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_bo_is_amdgpu_bo(ptr nocapture noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %destroy = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 4
  %0 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destroy, align 4
  %cmp = icmp eq ptr %1, @amdgpu_bo_destroy
  %cmp2 = icmp eq ptr %1, @amdgpu_bo_user_destroy
  %or.cond = or i1 %cmp, %cmp2
  %cmp5 = icmp eq ptr %1, @amdgpu_bo_vm_destroy
  %or.cond8 = or i1 %cmp5, %or.cond
  ret i1 %or.cond8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_bo_destroy(ptr noundef %tbo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bo1.i = getelementptr i8, ptr %tbo, i32 428
  %0 = ptrtoint ptr %bo1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.amdgpu_bo_kunmap.exit_crit_edge, label %if.then.i

entry.amdgpu_bo_kunmap.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_kunmap.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %kmap.i = getelementptr i8, ptr %tbo, i32 416
  tail call void @ttm_bo_kunmap(ptr noundef %kmap.i) #12
  br label %amdgpu_bo_kunmap.exit

amdgpu_bo_kunmap.exit:                            ; preds = %if.then.i, %entry.amdgpu_bo_kunmap.exit_crit_edge
  %import_attach = getelementptr i8, ptr %tbo, i32 196
  %2 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %import_attach, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %amdgpu_bo_kunmap.exit.if.end_crit_edge, label %if.then

amdgpu_bo_kunmap.exit.if.end_crit_edge:           ; preds = %amdgpu_bo_kunmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %amdgpu_bo_kunmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sg = getelementptr i8, ptr %tbo, i32 412
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 4
  tail call void @drm_prime_gem_destroy(ptr noundef %tbo, ptr noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %amdgpu_bo_kunmap.exit.if.end_crit_edge
  tail call void @drm_gem_object_release(ptr noundef %tbo) #12
  %parent = getelementptr i8, ptr %tbo, i32 444
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %if.end.amdgpu_bo_unref.exit_crit_edge, label %if.end.i

if.end.amdgpu_bo_unref.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_unref.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tbo1.i = getelementptr inbounds %struct.amdgpu_bo, ptr %7, i32 0, i32 4
  tail call void @ttm_bo_put(ptr noundef %tbo1.i) #12
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %parent, align 4
  br label %amdgpu_bo_unref.exit

amdgpu_bo_unref.exit:                             ; preds = %if.end.i, %if.end.amdgpu_bo_unref.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %tbo, i32 -72
  tail call void @kvfree(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_bo_user_destroy(ptr noundef %tbo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata = getelementptr i8, ptr %tbo, i32 512
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metadata, align 8
  tail call void @kfree(ptr noundef %1) #12
  %bo1.i.i = getelementptr i8, ptr %tbo, i32 428
  %2 = ptrtoint ptr %bo1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.amdgpu_bo_kunmap.exit.i_crit_edge, label %if.then.i.i

entry.amdgpu_bo_kunmap.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_kunmap.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %kmap.i.i = getelementptr i8, ptr %tbo, i32 416
  tail call void @ttm_bo_kunmap(ptr noundef %kmap.i.i) #12
  br label %amdgpu_bo_kunmap.exit.i

amdgpu_bo_kunmap.exit.i:                          ; preds = %if.then.i.i, %entry.amdgpu_bo_kunmap.exit.i_crit_edge
  %import_attach.i = getelementptr i8, ptr %tbo, i32 196
  %4 = ptrtoint ptr %import_attach.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %import_attach.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %amdgpu_bo_kunmap.exit.i.if.end.i_crit_edge, label %if.then.i

amdgpu_bo_kunmap.exit.i.if.end.i_crit_edge:       ; preds = %amdgpu_bo_kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %amdgpu_bo_kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sg.i = getelementptr i8, ptr %tbo, i32 412
  %6 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg.i, align 4
  tail call void @drm_prime_gem_destroy(ptr noundef %tbo, ptr noundef %7) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %amdgpu_bo_kunmap.exit.i.if.end.i_crit_edge
  tail call void @drm_gem_object_release(ptr noundef %tbo) #12
  %parent.i = getelementptr i8, ptr %tbo, i32 444
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 4
  %cmp.i.i = icmp eq ptr %9, null
  br i1 %cmp.i.i, label %if.end.i.amdgpu_bo_destroy.exit_crit_edge, label %if.end.i.i

if.end.i.amdgpu_bo_destroy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_destroy.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %tbo1.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %9, i32 0, i32 4
  tail call void @ttm_bo_put(ptr noundef %tbo1.i.i) #12
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %parent.i, align 4
  br label %amdgpu_bo_destroy.exit

amdgpu_bo_destroy.exit:                           ; preds = %if.end.i.i, %if.end.i.amdgpu_bo_destroy.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %tbo, i32 -72
  tail call void @kvfree(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_bo_vm_destroy(ptr noundef %tbo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %tbo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %shadow_list = getelementptr i8, ptr %tbo, i32 500
  %2 = ptrtoint ptr %shadow_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %shadow_list, align 4
  %cmp.i.not = icmp eq ptr %3, %shadow_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %shadow_list_lock = getelementptr i8, ptr %1, i32 73128
  tail call void @mutex_lock_nested(ptr noundef %shadow_list_lock, i32 noundef 0) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %shadow_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr i8, ptr %tbo, i32 504
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %shadow_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shadow_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %shadow_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %shadow_list, ptr %shadow_list, align 4
  %prev.i3.i = getelementptr i8, ptr %tbo, i32 504
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %shadow_list, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %shadow_list_lock) #12
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %bo1.i.i = getelementptr i8, ptr %tbo, i32 428
  %12 = ptrtoint ptr %bo1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.amdgpu_bo_kunmap.exit.i_crit_edge, label %if.then.i.i

if.end.amdgpu_bo_kunmap.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_kunmap.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %kmap.i.i = getelementptr i8, ptr %tbo, i32 416
  tail call void @ttm_bo_kunmap(ptr noundef %kmap.i.i) #12
  br label %amdgpu_bo_kunmap.exit.i

amdgpu_bo_kunmap.exit.i:                          ; preds = %if.then.i.i, %if.end.amdgpu_bo_kunmap.exit.i_crit_edge
  %import_attach.i = getelementptr i8, ptr %tbo, i32 196
  %14 = ptrtoint ptr %import_attach.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %import_attach.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %amdgpu_bo_kunmap.exit.i.if.end.i_crit_edge, label %if.then.i

amdgpu_bo_kunmap.exit.i.if.end.i_crit_edge:       ; preds = %amdgpu_bo_kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %amdgpu_bo_kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sg.i = getelementptr i8, ptr %tbo, i32 412
  %16 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sg.i, align 4
  tail call void @drm_prime_gem_destroy(ptr noundef %tbo, ptr noundef %17) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %amdgpu_bo_kunmap.exit.i.if.end.i_crit_edge
  tail call void @drm_gem_object_release(ptr noundef %tbo) #12
  %parent.i = getelementptr i8, ptr %tbo, i32 444
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i, align 4
  %cmp.i.i = icmp eq ptr %19, null
  br i1 %cmp.i.i, label %if.end.i.amdgpu_bo_destroy.exit_crit_edge, label %if.end.i.i10

if.end.i.amdgpu_bo_destroy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_destroy.exit

if.end.i.i10:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %tbo1.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %19, i32 0, i32 4
  tail call void @ttm_bo_put(ptr noundef %tbo1.i.i) #12
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %parent.i, align 4
  br label %amdgpu_bo_destroy.exit

amdgpu_bo_destroy.exit:                           ; preds = %if.end.i.i10, %if.end.i.amdgpu_bo_destroy.exit_crit_edge
  %add.ptr.i9 = getelementptr i8, ptr %tbo, i32 -72
  tail call void @kvfree(ptr noundef %add.ptr.i9) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_placement_from_domain(ptr noundef %abo, i32 noundef %domain) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %placements = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 2
  %flags2 = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 6
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags2, align 8
  %and = and i32 %domain, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then:                                          ; preds = %entry
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %visible_vram_size = getelementptr i8, ptr %3, i32 -13960
  %4 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %visible_vram_size, align 8
  %6 = ptrtoint ptr %placements to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %placements, align 4
  %lpfn = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %lpfn, align 4
  %mem_type = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %mem_type, align 4
  %flags6 = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 2, i32 0, i32 3
  %9 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags6, align 4
  %and7 = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %shr = lshr i64 %5, 12
  %conv = trunc i64 %shr to i32
  %10 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %lpfn, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %flags6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %and14 = and i64 %1, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end21_crit_edge, label %if.then16

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags6, align 4
  %or19 = or i32 %13, 1
  store i32 %or19, ptr %flags6, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  %c.0 = phi i32 [ 0, %entry.if.end21_crit_edge ], [ 1, %if.then16 ], [ 1, %if.end.if.end21_crit_edge ]
  %and22 = and i32 %domain, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end37_crit_edge, label %if.then24

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx25 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.0
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx25, align 4
  %lpfn28 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.0, i32 1
  %15 = ptrtoint ptr %lpfn28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %lpfn28, align 4
  %and30 = and i64 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30)
  %tobool31.not = icmp eq i64 %and30, 0
  %cond = select i1 %tobool31.not, i32 1, i32 6
  %mem_type33 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.0, i32 2
  %16 = ptrtoint ptr %mem_type33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %mem_type33, align 4
  %flags35 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.0, i32 3
  %17 = ptrtoint ptr %flags35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flags35, align 4
  %inc36 = add nuw nsw i32 %c.0, 1
  br label %if.end37

if.end37:                                         ; preds = %if.then24, %if.end21.if.end37_crit_edge
  %c.1 = phi i32 [ %inc36, %if.then24 ], [ %c.0, %if.end21.if.end37_crit_edge ]
  %and38 = and i32 %domain, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end50_crit_edge, label %if.then40

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx41 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.1
  %inc49 = add nuw nsw i32 %c.1, 1
  %18 = call ptr @memset(ptr %arrayidx41, i32 0, i32 16)
  br label %if.end50

if.end50:                                         ; preds = %if.then40, %if.end37.if.end50_crit_edge
  %c.2 = phi i32 [ %inc49, %if.then40 ], [ %c.1, %if.end37.if.end50_crit_edge ]
  %and51 = and i32 %domain, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end63_crit_edge, label %if.then53

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx54 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.2
  %19 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx54, align 4
  %lpfn57 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.2, i32 1
  %20 = ptrtoint ptr %lpfn57 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %lpfn57, align 4
  %mem_type59 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.2, i32 2
  %21 = ptrtoint ptr %mem_type59 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %mem_type59, align 4
  %flags61 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.2, i32 3
  %22 = ptrtoint ptr %flags61 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags61, align 4
  %inc62 = add nuw nsw i32 %c.2, 1
  br label %if.end63

if.end63:                                         ; preds = %if.then53, %if.end50.if.end63_crit_edge
  %c.3 = phi i32 [ %inc62, %if.then53 ], [ %c.2, %if.end50.if.end63_crit_edge ]
  %and64 = and i32 %domain, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end76_crit_edge, label %if.then66

if.end63.if.end76_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx67 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx67, align 4
  %lpfn70 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.3, i32 1
  %24 = ptrtoint ptr %lpfn70 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lpfn70, align 4
  %mem_type72 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.3, i32 2
  %25 = ptrtoint ptr %mem_type72 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %mem_type72, align 4
  %flags74 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.3, i32 3
  %26 = ptrtoint ptr %flags74 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags74, align 4
  %inc75 = add nuw nsw i32 %c.3, 1
  br label %if.end76

if.end76:                                         ; preds = %if.then66, %if.end63.if.end76_crit_edge
  %c.4 = phi i32 [ %inc75, %if.then66 ], [ %c.3, %if.end63.if.end76_crit_edge ]
  %and77 = and i32 %domain, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end89, label %if.end89.thread

if.end89.thread:                                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx80 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.4
  %27 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx80, align 4
  %lpfn83 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.4, i32 1
  %28 = ptrtoint ptr %lpfn83 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %lpfn83, align 4
  %mem_type85 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.4, i32 2
  %29 = ptrtoint ptr %mem_type85 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %mem_type85, align 4
  %flags87 = getelementptr %struct.ttm_place, ptr %placements, i32 %c.4, i32 3
  %30 = ptrtoint ptr %flags87 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags87, align 4
  %inc88 = add nuw nsw i32 %c.4, 1
  br label %do.body

if.end89:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.4)
  %tobool90.not = icmp eq i32 %c.4, 0
  br i1 %tobool90.not, label %do.body.thread, label %if.end89.do.body_crit_edge

if.end89.do.body_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body.thread:                                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %31 = call ptr @memset(ptr %placements, i32 0, i32 16)
  br label %do.end112

do.body:                                          ; preds = %if.end89.do.body_crit_edge, %if.end89.thread
  %c.6 = phi i32 [ %c.4, %if.end89.do.body_crit_edge ], [ %inc88, %if.end89.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %c.6)
  %cmp = icmp ugt i32 %c.6, 3
  br i1 %cmp, label %do.body106, label %do.body.do.end112_crit_edge, !prof !149

do.body.do.end112_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112

do.body106:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #12, !srcloc !150
  unreachable

do.end112:                                        ; preds = %do.body.do.end112_crit_edge, %do.body.thread
  %c.6204 = phi i32 [ 1, %do.body.thread ], [ %c.6, %do.body.do.end112_crit_edge ]
  %placement1 = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 3
  %32 = ptrtoint ptr %placement1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %c.6204, ptr %placement1, align 4
  %placement113 = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %placement113 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %placements, ptr %placement113, align 4
  %num_busy_placement = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %c.6204, ptr %num_busy_placement, align 4
  %busy_placement = getelementptr inbounds %struct.amdgpu_bo, ptr %abo, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %busy_placement to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %placements, ptr %busy_placement, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_create_reserved(ptr noundef %adev, i32 noundef %size, i32 noundef %align, i32 noundef %domain, ptr nocapture noundef %bo_ptr, ptr noundef writeonly %gpu_addr, ptr noundef writeonly %cpu_addr) local_unnamed_addr #1 align 64 {
entry:
  %bp = alloca %struct.amdgpu_bo_param, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo_ptr, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %tbo1.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4
  tail call void @ttm_bo_put(ptr noundef %tbo1.i) #12
  %2 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bo_ptr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds i8, ptr %bp, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 32)
  %5 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %bp, align 8
  %byte_align = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 1
  %6 = ptrtoint ptr %byte_align to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %align, ptr %byte_align, align 4
  %domain2 = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 3
  %7 = ptrtoint ptr %domain2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %domain, ptr %domain2, align 4
  %tobool3.not = icmp eq ptr %cpu_addr, null
  %flags = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 5
  %or = select i1 %tobool3.not, i64 34, i64 33
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or, ptr %flags, align 8
  %type = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 6
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type, align 8
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %10 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 568, ptr %bo_ptr_size, align 8
  %11 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo_ptr, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %call = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef nonnull %bp, ptr noundef %bo_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %do.end

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %call) #15
  br label %cleanup

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %15 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo_ptr, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4, i32 0, i32 9
  %19 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %20, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %21 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end18
    i32 -512, label %if.end10.do.end16_crit_edge
  ], !prof !151

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 -17736
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.44, ptr noundef %16) #15
  br label %do.end16

do.end16:                                         ; preds = %do.end.i, %if.end10.do.end16_crit_edge
  %24 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %.ret.0.i.i) #15
  br label %error_free

if.end18:                                         ; preds = %if.end10
  %26 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bo_ptr, align 4
  %flags.i = getelementptr inbounds %struct.amdgpu_bo, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %flags.i, align 8
  %or.i = or i64 %29, 32
  store i64 %or.i, ptr %flags.i, align 8
  %call.i = tail call i32 @amdgpu_bo_pin_restricted(ptr noundef %27, i32 noundef %domain, i64 noundef 0, i64 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.9, i32 noundef %call.i) #15
  br label %error_unreserve

if.end26:                                         ; preds = %if.end18
  %32 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bo_ptr, align 4
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %33, i32 0, i32 4
  %call27 = tail call i32 @amdgpu_ttm_alloc_gart(ptr noundef %tbo) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adev, align 8
  %36 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bo_ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.12, ptr noundef %37) #15
  br label %error_unpin

if.end34:                                         ; preds = %if.end26
  %tobool35.not = icmp eq ptr %gpu_addr, null
  br i1 %tobool35.not, label %if.end34.if.end38_crit_edge, label %if.then36

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bo_ptr, align 4
  %call37 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %39)
  %40 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %call37, ptr %gpu_addr, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34.if.end38_crit_edge
  br i1 %tobool3.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  %41 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bo_ptr, align 4
  %flags.i86 = getelementptr inbounds %struct.amdgpu_bo, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %flags.i86, align 8
  %and.i = and i64 %44, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i87, label %if.then40.do.end46_crit_edge

if.then40.do.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.end.i87:                                       ; preds = %if.then40
  %kmap.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %kmap.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %kmap.i.i, align 4
  %tobool1.not.i = icmp eq ptr %46, null
  br i1 %tobool1.not.i, label %if.end6.i, label %if.end.i87.amdgpu_bo_kmap.exit_crit_edge

if.end.i87.amdgpu_bo_kmap.exit_crit_edge:         ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_kmap.exit

if.end6.i:                                        ; preds = %if.end.i87
  %resv.i = getelementptr inbounds %struct.amdgpu_bo, ptr %42, i32 0, i32 4, i32 0, i32 9
  %47 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resv.i, align 8
  %call7.i = tail call i32 @dma_resv_wait_timeout(ptr noundef %48, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 2147483647) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i88 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i88, label %if.end6.i.do.end46_crit_edge, label %if.end9.i

if.end6.i.do.end46_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.end9.i:                                        ; preds = %if.end6.i
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %42, i32 0, i32 4
  %resource.i = getelementptr inbounds %struct.amdgpu_bo, ptr %42, i32 0, i32 4, i32 6
  %49 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %resource.i, align 4
  %num_pages.i = getelementptr inbounds %struct.ttm_resource, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_pages.i, align 4
  %call12.i = tail call i32 @ttm_bo_kmap(ptr noundef %tbo.i, i32 noundef 0, i32 noundef %52, ptr noundef %kmap.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then17.i, label %if.end9.i.do.end46_crit_edge

if.end9.i.do.end46_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %kmap.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %kmap.i.i, align 4
  br label %amdgpu_bo_kmap.exit

amdgpu_bo_kmap.exit:                              ; preds = %if.then17.i, %if.end.i87.amdgpu_bo_kmap.exit_crit_edge
  %.sink.i = phi ptr [ %54, %if.then17.i ], [ %46, %if.end.i87.amdgpu_bo_kmap.exit_crit_edge ]
  %55 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %.sink.i, ptr %cpu_addr, align 4
  br label %cleanup

do.end46:                                         ; preds = %if.end9.i.do.end46_crit_edge, %if.end6.i.do.end46_crit_edge, %if.then40.do.end46_crit_edge
  %retval.0.i.ph = phi i32 [ %call12.i, %if.end9.i.do.end46_crit_edge ], [ %call7.i, %if.end6.i.do.end46_crit_edge ], [ -1, %if.then40.do.end46_crit_edge ]
  %56 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #15
  br label %error_unpin

error_unpin:                                      ; preds = %do.end46, %do.end32
  %r.0 = phi i32 [ %call27, %do.end32 ], [ %retval.0.i.ph, %do.end46 ]
  %58 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bo_ptr, align 4
  tail call void @amdgpu_bo_unpin(ptr noundef %59)
  br label %error_unreserve

error_unreserve:                                  ; preds = %error_unpin, %do.end24
  %r.1 = phi i32 [ %call.i, %do.end24 ], [ %r.0, %error_unpin ]
  %60 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bo_ptr, align 4
  %tbo.i89 = getelementptr inbounds %struct.amdgpu_bo, ptr %61, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %61, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %63, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %61, i32 0, i32 4, i32 6
  %64 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i89, ptr noundef %65, ptr noundef null) #12
  %66 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %67, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %61, i32 0, i32 4, i32 0, i32 9
  %68 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %69) #12
  tail call void @ww_mutex_unlock(ptr noundef %69) #12
  br label %error_free

error_free:                                       ; preds = %error_unreserve, %do.end16
  %r.2 = phi i32 [ %.ret.0.i.i, %do.end16 ], [ %r.1, %error_unreserve ]
  br i1 %tobool5.not, label %if.then51, label %error_free.cleanup_crit_edge

error_free.cleanup_crit_edge:                     ; preds = %error_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then51:                                        ; preds = %error_free
  %70 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bo_ptr, align 4
  %cmp.i90 = icmp eq ptr %71, null
  br i1 %cmp.i90, label %if.then51.cleanup_crit_edge, label %if.end.i92

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i92:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %tbo1.i91 = getelementptr inbounds %struct.amdgpu_bo, ptr %71, i32 0, i32 4
  tail call void @ttm_bo_put(ptr noundef %tbo1.i91) #12
  %72 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %bo_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i92, %if.then51.cleanup_crit_edge, %error_free.cleanup_crit_edge, %amdgpu_bo_kmap.exit, %if.end38.cleanup_crit_edge, %do.end, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %amdgpu_bo_kmap.exit ], [ 0, %if.end38.cleanup_crit_edge ], [ %r.2, %error_free.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.i ], [ %r.2, %if.then51.cleanup_crit_edge ], [ %r.2, %if.end.i92 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_unref(ptr nocapture noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tbo1 = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4
  tail call void @ttm_bo_put(ptr noundef %tbo1) #12
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_create(ptr noundef %adev, ptr nocapture noundef %bp, ptr nocapture noundef writeonly %bo_ptr) local_unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #12
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 16)
  %type = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 6
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ne i32 %2, 1
  %frombool = zext i1 %cmp to i8
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %ctx, align 8
  %no_wait_gpu = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 1
  %no_wait_gpu1 = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 7
  %4 = ptrtoint ptr %no_wait_gpu1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %no_wait_gpu1, align 4, !range !152
  %6 = ptrtoint ptr %no_wait_gpu to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %no_wait_gpu, align 1
  %gfp_retry_mayfail = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %gfp_retry_mayfail to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %gfp_retry_mayfail, align 2
  %allow_res_evict = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 3
  %8 = ptrtoint ptr %allow_res_evict to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %allow_res_evict, align 1
  %force_alloc = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 4
  %9 = ptrtoint ptr %force_alloc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %force_alloc, align 4
  %resv = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 5
  %resv6 = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 8
  %10 = ptrtoint ptr %resv6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv6, align 8
  %12 = ptrtoint ptr %resv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %resv, align 8
  %bytes_moved = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 6
  %13 = ptrtoint ptr %bytes_moved to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %bytes_moved, align 8
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bp, align 8
  %domain = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 3
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %domain, align 4
  %and = and i32 %17, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %byte_align = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 1
  %18 = ptrtoint ptr %byte_align to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_align, align 4
  %shl = shl i32 %15, 12
  br label %if.end24

if.else:                                          ; preds = %entry
  %and10 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %byte_align19 = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 1
  %20 = ptrtoint ptr %byte_align19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %byte_align19, align 4
  br i1 %tobool11.not, label %if.else18, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %21, 3
  %and14 = and i32 %add, -4
  %add15 = shl i32 %15, 12
  %and16 = add i32 %add15, 12288
  %shl17 = and i32 %and16, -16384
  br label %if.end24

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add20 = add i32 %21, 4095
  %shr = ashr i32 %add20, 12
  %add22 = add i32 %15, 4095
  %and23 = and i32 %add22, -4096
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then12, %if.then
  %page_align.0 = phi i32 [ %19, %if.then ], [ %and14, %if.then12 ], [ %shr, %if.else18 ]
  %size.0 = phi i32 [ %shl, %if.then ], [ %shl17, %if.then12 ], [ %and23, %if.else18 ]
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end24
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i = zext i32 %size.0 to i64
  %size1.i = getelementptr inbounds %struct.ttm_resource_manager, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %size1.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size1.i, align 8
  %shl.i = shl i64 %25, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %shl.i, %conv.i
  br i1 %cmp.i, label %if.then.i.do.body_crit_edge, label %if.then.i.amdgpu_bo_validate_size.exit_crit_edge

if.then.i.amdgpu_bo_validate_size.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_validate_size.exit

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.i:                                         ; preds = %if.end24
  %and4.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.do.body_crit_edge, label %if.then6.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then6.i:                                       ; preds = %if.end.i
  %arrayidx.i26.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i26.i, align 4
  %conv10.i = zext i32 %size.0 to i64
  %size11.i = getelementptr inbounds %struct.ttm_resource_manager, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %size11.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %size11.i, align 8
  %shl12.i = shl i64 %29, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl12.i, i64 %conv10.i)
  %cmp13.i = icmp ugt i64 %shl12.i, %conv10.i
  br i1 %cmp13.i, label %if.then6.i.do.body_crit_edge, label %if.then6.i.amdgpu_bo_validate_size.exit_crit_edge

if.then6.i.amdgpu_bo_validate_size.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_validate_size.exit

if.then6.i.do.body_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

amdgpu_bo_validate_size.exit:                     ; preds = %if.then6.i.amdgpu_bo_validate_size.exit_crit_edge, %if.then.i.amdgpu_bo_validate_size.exit_crit_edge
  %man.0.i = phi ptr [ %23, %if.then.i.amdgpu_bo_validate_size.exit_crit_edge ], [ %27, %if.then6.i.amdgpu_bo_validate_size.exit_crit_edge ]
  %size18.i = getelementptr inbounds %struct.ttm_resource_manager, ptr %man.0.i, i32 0, i32 2
  %30 = ptrtoint ptr %size18.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size18.i, align 8
  %shl19.i = shl i64 %31, 12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.48, i32 noundef %size.0, i64 noundef %shl19.i) #12
  br label %cleanup160

do.body:                                          ; preds = %if.then6.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %if.then.i.do.body_crit_edge
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %32 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bo_ptr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 568, i32 %33)
  %cmp28 = icmp ult i32 %33, 568
  br i1 %cmp28, label %do.body32, label %do.end38, !prof !149

do.body32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 558, 0\0A.popsection", ""() #12, !srcloc !153
  unreachable

do.end38:                                         ; preds = %do.body
  %34 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %bo_ptr, align 4
  %35 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bo_ptr_size, align 8
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %36, i32 noundef 3520, i32 noundef -1) #16
  %cmp41 = icmp eq ptr %call.i.i, null
  br i1 %cmp41, label %do.end38.cleanup160_crit_edge, label %if.end43

do.end38.cleanup160_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup160

if.end43:                                         ; preds = %do.end38
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 4
  tail call void @drm_gem_private_object_init(ptr noundef %ddev.i, ptr noundef %tbo, i32 noundef %size.0) #12
  %vm_bo = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %vm_bo to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %vm_bo, align 8
  %preferred_domain = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 4
  %38 = ptrtoint ptr %preferred_domain to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %preferred_domain, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool45.not = icmp eq i32 %39, 0
  br i1 %tobool45.not, label %cond.false, label %if.end43.cond.end_crit_edge

if.end43.cond.end_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %domain, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end43.cond.end_crit_edge
  %cond = phi i32 [ %41, %cond.false ], [ %39, %if.end43.cond.end_crit_edge ]
  %42 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond, ptr %call.i.i, align 8
  %allowed_domains = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp50.not = icmp ne i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cond)
  %cmp52 = icmp eq i32 %cond, 4
  %or.cond = select i1 %cmp50.not, i1 %cmp52, i1 false
  %spec.store.select = select i1 %or.cond, i32 6, i32 %cond
  %45 = ptrtoint ptr %allowed_domains to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select, ptr %allowed_domains, align 4
  %flags = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 5
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %flags, align 8
  %flags56 = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 6
  %and61 = and i64 %47, -5
  %48 = ptrtoint ptr %flags56 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %and61, ptr %flags56, align 8
  %mman = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68
  %bdev64 = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %bdev64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %mman, ptr %bdev64, align 8
  %50 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %domain, align 4
  %and66 = and i32 %51, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else69, label %if.then68

if.then68:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %placements.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 2
  %52 = call ptr @memset(ptr %placements.i, i32 0, i32 16)
  %placement1.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %placement1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %placement1.i, align 4
  %placement113.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %placement113.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %placements.i, ptr %placement113.i, align 4
  %num_busy_placement.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %num_busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %num_busy_placement.i, align 4
  %busy_placement.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %placements.i, ptr %busy_placement.i, align 4
  br label %if.end71

if.else69:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_bo_placement_from_domain(ptr noundef nonnull %call.i.i, i32 noundef %51)
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then68
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp73 = icmp eq i32 %58, 1
  br i1 %cmp73, label %if.then74, label %if.end71.if.end76_crit_edge

if.end71.if.end76_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %priority = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 4, i32 12
  %59 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %priority, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end71.if.end76_crit_edge
  %destroy = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 9
  %60 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %destroy, align 4
  %tobool77.not = icmp eq ptr %61, null
  br i1 %tobool77.not, label %if.then78, label %if.end76.if.end80_crit_edge

if.end76.if.end80_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @amdgpu_bo_destroy, ptr %destroy, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end76.if.end80_crit_edge
  %placement = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %resv6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %resv6, align 8
  %65 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %destroy, align 4
  %call87 = call i32 @ttm_bo_init_reserved(ptr noundef %mman, ptr noundef %tbo, i32 noundef %size.0, i32 noundef %58, ptr noundef %placement, i32 noundef %page_align.0, ptr noundef nonnull %ctx, ptr noundef null, ptr noundef %64, ptr noundef %66) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88.not = icmp eq i32 %call87, 0
  br i1 %cmp88.not, label %if.end96, label %if.end80.cleanup160_crit_edge, !prof !154

if.end80.cleanup160_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup160

if.end96:                                         ; preds = %if.end80
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %67 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %real_vram_size.i, align 8
  %visible_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 3
  %69 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %70)
  %cmp.i213 = icmp ult i64 %68, %70
  br i1 %cmp.i213, label %do.end.i, label %if.end96.amdgpu_gmc_vram_full_visible.exit_crit_edge, !prof !149

if.end96.amdgpu_gmc_vram_full_visible.exit_crit_edge: ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_gmc_vram_full_visible.exit

do.end.i:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 286, i32 noundef 9, ptr noundef null) #12
  br label %amdgpu_gmc_vram_full_visible.exit

amdgpu_gmc_vram_full_visible.exit:                ; preds = %do.end.i, %if.end96.amdgpu_gmc_vram_full_visible.exit_crit_edge
  %71 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %real_vram_size.i, align 8
  %73 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %74)
  %cmp21.i = icmp eq i64 %72, %74
  br i1 %cmp21.i, label %amdgpu_gmc_vram_full_visible.exit.if.else111_crit_edge, label %land.lhs.true98

amdgpu_gmc_vram_full_visible.exit.if.else111_crit_edge: ; preds = %amdgpu_gmc_vram_full_visible.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else111

land.lhs.true98:                                  ; preds = %amdgpu_gmc_vram_full_visible.exit
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 4, i32 6
  %75 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp100 = icmp eq i32 %78, 2
  br i1 %cmp100, label %land.lhs.true101, label %land.lhs.true98.if.else111_crit_edge

land.lhs.true98.if.else111_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else111

land.lhs.true101:                                 ; preds = %land.lhs.true98
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %76, align 4
  %conv = zext i32 %80 to i64
  %81 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %visible_vram_size.i, align 8
  %shr105 = lshr i64 %82, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr105, i64 %conv)
  %cmp106 = icmp ugt i64 %shr105, %conv
  br i1 %cmp106, label %if.then108, label %land.lhs.true101.if.else111_crit_edge

land.lhs.true101.if.else111_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else111

if.then108:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %bytes_moved to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %bytes_moved, align 8
  call void @amdgpu_cs_report_moved_bytes(ptr noundef %adev, i64 noundef %84, i64 noundef %84) #12
  br label %if.end113

if.else111:                                       ; preds = %land.lhs.true101.if.else111_crit_edge, %land.lhs.true98.if.else111_crit_edge, %amdgpu_gmc_vram_full_visible.exit.if.else111_crit_edge
  %85 = ptrtoint ptr %bytes_moved to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %bytes_moved, align 8
  call void @amdgpu_cs_report_moved_bytes(ptr noundef %adev, i64 noundef %86, i64 noundef 0) #12
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.then108
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %flags, align 8
  %and115 = and i64 %88, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and115)
  %tobool116.not = icmp eq i64 %and115, 0
  br i1 %tobool116.not, label %if.end113.if.end141_crit_edge, label %land.lhs.true117

if.end113.if.end141_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

land.lhs.true117:                                 ; preds = %if.end113
  %resource119 = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 4, i32 6
  %89 = ptrtoint ptr %resource119 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %resource119, align 4
  %mem_type120 = getelementptr inbounds %struct.ttm_resource, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %mem_type120 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mem_type120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp121 = icmp eq i32 %92, 2
  br i1 %cmp121, label %if.then123, label %land.lhs.true117.if.end141_crit_edge

land.lhs.true117.if.end141_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then123:                                       ; preds = %land.lhs.true117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #12
  %93 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !155
  %resv126 = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 4, i32 0, i32 9
  %94 = ptrtoint ptr %resv126 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %resv126, align 8
  %call127 = call i32 @amdgpu_fill_buffer(ptr noundef nonnull %call.i.i, i32 noundef 0, ptr noundef %95, ptr noundef nonnull %fence) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end136, label %fail_unreserve, !prof !154

if.end136:                                        ; preds = %if.then123
  %96 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fence, align 4
  %98 = ptrtoint ptr %resv126 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %resv126, align 8
  call void @dma_resv_add_excl_fence(ptr noundef %99, ptr noundef %97) #12
  %moving = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 4, i32 11
  %100 = ptrtoint ptr %moving to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %moving, align 8
  %tobool.not.i216 = icmp eq ptr %101, null
  br i1 %tobool.not.i216, label %if.end136.dma_fence_put.exit_crit_edge, label %if.then.i217

if.end136.dma_fence_put.exit_crit_edge:           ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_fence_put.exit

if.then.i217:                                     ; preds = %if.end136
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %101, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %102 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !154

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  call void @dma_fence_release(ptr noundef %refcount.i) #12
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end136.dma_fence_put.exit_crit_edge
  %103 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fence, align 4
  %tobool.not.i219 = icmp eq ptr %104, null
  br i1 %tobool.not.i219, label %dma_fence_get.exit.thread, label %if.then.i222

dma_fence_get.exit.thread:                        ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %moving to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %moving, align 8
  br label %cleanup.thread

if.then.i222:                                     ; preds = %dma_fence_put.exit
  %refcount.i220 = getelementptr inbounds %struct.dma_fence, ptr %104, i32 0, i32 6
  %call.i.i.i.i.i.i.i221 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i220, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcount.i220, i32 1, i32 3, i32 1) #12
  %106 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i220, ptr %refcount.i220, i32 1, ptr elementtype(i32) %refcount.i220) #12, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i222.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !149

if.then.i222.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i222
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i222
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %107 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %.not.i.i.i.i.i223 = icmp sgt i32 %107, -1
  br i1 %.not.i.i.i.i.i223, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !154

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i222.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i222.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i220, i32 noundef %.sink.i.i.i.i.i) #12
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %108 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr = load ptr, ptr %fence, align 4
  %109 = ptrtoint ptr %moving to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %104, ptr %moving, align 8
  %tobool.not.i225 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i225, label %dma_fence_get.exit.cleanup.thread_crit_edge, label %if.then.i230

dma_fence_get.exit.cleanup.thread_crit_edge:      ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then.i230:                                     ; preds = %dma_fence_get.exit
  %refcount.i226 = getelementptr inbounds %struct.dma_fence, ptr %.pr, i32 0, i32 6
  %call.i.i.i.i.i.i.i227 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i226, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  call void @llvm.prefetch.p0(ptr %refcount.i226, i32 1, i32 3, i32 1) #12
  %110 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i226, ptr %refcount.i226, i32 1, ptr elementtype(i32) %refcount.i226) #12, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i228 = extractvalue { i32, i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i228)
  %cmp.i.i.i.i.i229 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i228, 1
  br i1 %cmp.i.i.i.i.i229, label %if.then.i.i234, label %if.end5.i.i.i.i.i232

if.end5.i.i.i.i.i232:                             ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i228)
  %.not.i.i.i.i.i231 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i228, 0
  br i1 %.not.i.i.i.i.i231, label %if.end5.i.i.i.i.i232.cleanup.thread_crit_edge, label %if.then10.i.i.i.i.i233, !prof !154

if.end5.i.i.i.i.i232.cleanup.thread_crit_edge:    ; preds = %if.end5.i.i.i.i.i232
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then10.i.i.i.i.i233:                           ; preds = %if.end5.i.i.i.i.i232
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i226, i32 noundef 3) #12
  br label %cleanup.thread

if.then.i.i234:                                   ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  call void @dma_fence_release(ptr noundef %refcount.i226) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i.i234, %if.then10.i.i.i.i.i233, %if.end5.i.i.i.i.i232.cleanup.thread_crit_edge, %dma_fence_get.exit.cleanup.thread_crit_edge, %dma_fence_get.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #12
  br label %if.end141

if.end141:                                        ; preds = %cleanup.thread, %land.lhs.true117.if.end141_crit_edge, %if.end113.if.end141_crit_edge
  %111 = ptrtoint ptr %resv6 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %resv6, align 8
  %tobool143.not = icmp eq ptr %112, null
  br i1 %tobool143.not, label %if.then144, label %if.end141.if.end145_crit_edge

if.end141.if.end145_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %bdev64 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bdev64, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %114, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 4, i32 6
  %115 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %116, ptr noundef null) #12
  %117 = ptrtoint ptr %bdev64 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bdev64, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %118, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call.i.i, i32 0, i32 4, i32 0, i32 9
  %119 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %120) #12
  call void @ww_mutex_unlock(ptr noundef %120) #12
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end141.if.end145_crit_edge
  %121 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i, ptr %bo_ptr, align 4
  call fastcc void @trace_amdgpu_bo_create(ptr noundef nonnull %call.i.i)
  %122 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp147 = icmp eq i32 %123, 0
  br i1 %cmp147, label %if.then149, label %if.end145.cleanup160_crit_edge

if.end145.cleanup160_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup160

if.then149:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %flags56 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %flags56, align 8
  %and151 = and i64 %125, -2
  store i64 %and151, ptr %flags56, align 8
  br label %cleanup160

fail_unreserve:                                   ; preds = %if.then123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #12
  %126 = ptrtoint ptr %resv6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %resv6, align 8
  %tobool154.not = icmp eq ptr %127, null
  br i1 %tobool154.not, label %if.then155, label %fail_unreserve.amdgpu_bo_unref.exit_crit_edge

fail_unreserve.amdgpu_bo_unref.exit_crit_edge:    ; preds = %fail_unreserve
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_unref.exit

if.then155:                                       ; preds = %fail_unreserve
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %resv126 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %resv126, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %129) #12
  call void @ww_mutex_unlock(ptr noundef %129) #12
  br label %amdgpu_bo_unref.exit

amdgpu_bo_unref.exit:                             ; preds = %if.then155, %fail_unreserve.amdgpu_bo_unref.exit_crit_edge
  call void @ttm_bo_put(ptr noundef %tbo) #12
  br label %cleanup160

cleanup160:                                       ; preds = %amdgpu_bo_unref.exit, %if.then149, %if.end145.cleanup160_crit_edge, %if.end80.cleanup160_crit_edge, %do.end38.cleanup160_crit_edge, %amdgpu_bo_validate_size.exit
  %retval.0 = phi i32 [ %call127, %amdgpu_bo_unref.exit ], [ -12, %amdgpu_bo_validate_size.exit ], [ -12, %do.end38.cleanup160_crit_edge ], [ %call87, %if.end80.cleanup160_crit_edge ], [ 0, %if.then149 ], [ 0, %if.end145.cleanup160_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_pin(ptr noundef %bo, i32 noundef %domain) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %or = or i64 %1, 32
  store i64 %or, ptr %flags, align 8
  %call = tail call i32 @amdgpu_bo_pin_restricted(ptr noundef %bo, i32 noundef %domain, i64 noundef 0, i64 noundef 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_alloc_gart(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_bo_gpu_offset(ptr nocapture noundef readonly %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b235 = load i1, ptr @amdgpu_bo_gpu_offset.__already_done, align 1
  br i1 %.b235, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !154

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @amdgpu_bo_gpu_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1452, i32 noundef 9, ptr noundef null) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %call.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %5) #12
  br i1 %call.i.i, label %if.end27.if.end87_crit_edge, label %land.lhs.true

if.end27.if.end87_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end27
  %pin_count = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 13
  %6 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool38.not = icmp eq i32 %7, 0
  br i1 %tobool38.not, label %land.rhs39, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.rhs39:                                       ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp41.not = icmp eq i32 %9, 1
  br i1 %cmp41.not, label %land.rhs39.if.end87_crit_edge, label %land.rhs49

land.rhs39.if.end87_crit_edge:                    ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.rhs49:                                       ; preds = %land.rhs39
  %.b229234 = load i1, ptr @amdgpu_bo_gpu_offset.__already_done.26, align 1
  br i1 %.b229234, label %land.rhs49.if.end87_crit_edge, label %if.then60, !prof !154

land.rhs49.if.end87_crit_edge:                    ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then60:                                        ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @amdgpu_bo_gpu_offset.__already_done.26, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1454, i32 noundef 9, ptr noundef null) #12
  br label %if.end87

if.end87:                                         ; preds = %if.then60, %land.rhs49.if.end87_crit_edge, %land.rhs39.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %if.end27.if.end87_crit_edge
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %13)
  %cmp98 = icmp eq i32 %13, 2147483647
  br i1 %cmp98, label %land.rhs105, label %if.end87.if.end143_crit_edge

if.end87.if.end143_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

land.rhs105:                                      ; preds = %if.end87
  %.b230233 = load i1, ptr @amdgpu_bo_gpu_offset.__already_done.27, align 1
  br i1 %.b230233, label %land.rhs105.if.end143_crit_edge, label %if.then116, !prof !154

land.rhs105.if.end143_crit_edge:                  ; preds = %land.rhs105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then116:                                       ; preds = %land.rhs105
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @amdgpu_bo_gpu_offset.__already_done.27, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1455, i32 noundef 9, ptr noundef null) #12
  br label %if.end143

if.end143:                                        ; preds = %if.then116, %land.rhs105.if.end143_crit_edge, %if.end87.if.end143_crit_edge
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 4
  %mem_type154 = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %mem_type154 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_type154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp155 = icmp eq i32 %17, 2
  br i1 %cmp155, label %land.rhs156, label %if.end143.if.end205_crit_edge

if.end143.if.end205_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

land.rhs156:                                      ; preds = %if.end143
  %flags = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flags, align 8
  %and = and i64 %19, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool157.not = icmp eq i64 %and, 0
  br i1 %tobool157.not, label %land.rhs167, label %land.rhs156.if.end205_crit_edge

land.rhs156.if.end205_crit_edge:                  ; preds = %land.rhs156
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

land.rhs167:                                      ; preds = %land.rhs156
  %.b231232 = load i1, ptr @amdgpu_bo_gpu_offset.__already_done.28, align 1
  br i1 %.b231232, label %land.rhs167.if.end205_crit_edge, label %if.then178, !prof !154

land.rhs167.if.end205_crit_edge:                  ; preds = %land.rhs167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

if.then178:                                       ; preds = %land.rhs167
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @amdgpu_bo_gpu_offset.__already_done.28, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1457, i32 noundef 9, ptr noundef null) #12
  br label %if.end205

if.end205:                                        ; preds = %if.then178, %land.rhs167.if.end205_crit_edge, %land.rhs156.if.end205_crit_edge, %if.end143.if.end205_crit_edge
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 -17736
  %22 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resource, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %shl.i = shl i32 %25, 12
  %conv.i = zext i32 %shl.i to i64
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mem_type.i, align 4
  %call4.i = tail call i64 @amdgpu_ttm_domain_start(ptr noundef %add.ptr.i.i, i32 noundef %27) #12
  %add.i = add i64 %call4.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355327, i64 %add.i)
  %cmp.i.i = icmp ugt i64 %add.i, 140737488355327
  %or.i.i = or i64 %add.i, -140737488355328
  %spec.select.i.i = select i1 %cmp.i.i, i64 %or.i.i, i64 %add.i
  ret i64 %spec.select.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_kmap(ptr noundef %bo, ptr noundef writeonly %ptr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %kmap.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 5
  %2 = ptrtoint ptr %kmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kmap.i, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq ptr %ptr, null
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %call7 = tail call i32 @dma_resv_wait_timeout(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 2147483647) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pages, align 4
  %call12 = tail call i32 @ttm_bo_kmap(ptr noundef %tbo, i32 noundef 0, i32 noundef %9, ptr noundef %kmap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %tobool16.not = icmp eq ptr %ptr, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %kmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kmap.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.then2.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.then17 ], [ %3, %if.then2.cleanup.sink.split_crit_edge ]
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.sink, ptr %ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_unpin(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %resv.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %3 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %4, i32 0, i32 5
  %call.i.i38 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %cmp.not.i = icmp eq i32 %call.i.i38, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !149

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 564, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %kref.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool26.not.i = icmp eq i32 %6, 0
  br i1 %tobool26.not.i, label %land.rhs34.i, label %if.end.i.if.end72.i_crit_edge

if.end.i.if.end72.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i

land.rhs34.i:                                     ; preds = %if.end.i
  %.b142.i = load i1, ptr @ttm_bo_unpin.__already_done, align 1
  br i1 %.b142.i, label %land.rhs34.i.if.end72.i_crit_edge, label %if.then45.i, !prof !154

land.rhs34.i.if.end72.i_crit_edge:                ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i

if.then45.i:                                      ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ttm_bo_unpin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 565, i32 noundef 9, ptr noundef null) #12
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then45.i, %land.rhs34.i.if.end72.i_crit_edge, %if.end.i.if.end72.i_crit_edge
  %pin_count.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 13
  %7 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pin_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool80.not.i = icmp eq i32 %8, 0
  br i1 %tobool80.not.i, label %land.end89.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  %dec.i = add i32 %8, -1
  %9 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec.i, ptr %pin_count.i, align 8
  br label %ttm_bo_unpin.exit

land.end89.i:                                     ; preds = %if.end72.i
  %.b140141.i = load i1, ptr @ttm_bo_unpin.__already_done.54, align 1
  br i1 %.b140141.i, label %land.end89.i.if.end_crit_edge, label %if.then96.i, !prof !154

land.end89.i.if.end_crit_edge:                    ; preds = %land.end89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then96.i:                                      ; preds = %land.end89.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ttm_bo_unpin.__already_done.54, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 569, i32 noundef 9, ptr noundef null) #12
  %10 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %pin_count.i, align 8
  br label %ttm_bo_unpin.exit

ttm_bo_unpin.exit:                                ; preds = %if.then96.i, %if.then81.i
  %11 = phi i32 [ %dec.i, %if.then81.i ], [ %.pr, %if.then96.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %ttm_bo_unpin.exit.if.end_crit_edge, label %ttm_bo_unpin.exit.cleanup_crit_edge

ttm_bo_unpin.exit.cleanup_crit_edge:              ; preds = %ttm_bo_unpin.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ttm_bo_unpin.exit.if.end_crit_edge:               ; preds = %ttm_bo_unpin.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %ttm_bo_unpin.exit.if.end_crit_edge, %land.end89.i.if.end_crit_edge
  %import_attach = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 8
  %12 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %import_attach, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_buf_unpin(ptr noundef nonnull %13) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_type, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %17, label %if.end9.cleanup_crit_edge [
    i32 2, label %if.then11
    i32 1, label %if.then19
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 8
  %conv = zext i32 %20 to i64
  %vram_pin_size = getelementptr i8, ptr %1, i32 71176
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vram_pin_size, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %conv, ptr noundef %vram_pin_size) #12
  %call13 = tail call i64 @amdgpu_vram_mgr_bo_visible_size(ptr noundef %bo) #12
  %visible_pin_size = getelementptr i8, ptr %1, i32 71184
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %visible_pin_size, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %call13, ptr noundef %visible_pin_size) #12
  br label %cleanup

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %size.i39 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %21 = ptrtoint ptr %size.i39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i39, align 8
  %conv21 = zext i32 %22 to i64
  %gart_pin_size = getelementptr i8, ptr %1, i32 71192
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %gart_pin_size, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %conv21, ptr noundef %gart_pin_size) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then11, %if.end9.cleanup_crit_edge, %ttm_bo_unpin.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %size, i32 noundef %align, i32 noundef %domain, ptr nocapture noundef %bo_ptr, ptr noundef %gpu_addr, ptr noundef %cpu_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_bo_create_reserved(ptr noundef %adev, i32 noundef %size, i32 noundef %align, i32 noundef %domain, ptr noundef %bo_ptr, ptr noundef %gpu_addr, ptr noundef %cpu_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo_ptr, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %5, ptr noundef null) #12
  %6 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %7, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %9) #12
  tail call void @ww_mutex_unlock(ptr noundef %9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_create_kernel_at(ptr noundef %adev, i64 noundef %offset, i64 noundef %size, i32 noundef %domain, ptr nocapture noundef %bo_ptr, ptr noundef %cpu_addr) local_unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #12
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %and = and i64 %offset, 17592186040320
  %add = add i64 %size, 4095
  %and1 = and i64 %add, -4096
  %conv = trunc i64 %and1 to i32
  %call = tail call i32 @amdgpu_bo_create_reserved(ptr noundef %adev, i32 noundef %conv, i32 noundef 4096, i32 noundef %domain, ptr noundef %bo_ptr, ptr noundef null, ptr noundef %cpu_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bo_ptr, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %cpu_addr, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  %bo1.i = getelementptr inbounds %struct.amdgpu_bo, ptr %2, i32 0, i32 5, i32 3
  %3 = ptrtoint ptr %bo1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo1.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.then.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %kmap.i = getelementptr inbounds %struct.amdgpu_bo, ptr %2, i32 0, i32 5
  tail call void @ttm_bo_kunmap(ptr noundef %kmap.i) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then6.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %5 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bo_ptr, align 4
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %6, i32 0, i32 4
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %6, i32 0, i32 4, i32 6
  tail call void @ttm_resource_free(ptr noundef %tbo, ptr noundef %resource) #12
  %7 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bo_ptr, align 4
  %placement74 = getelementptr inbounds %struct.amdgpu_bo, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %placement74 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %placement74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp975.not = icmp eq i32 %10, 0
  br i1 %cmp975.not, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %shr = lshr i64 %offset, 12
  %conv11 = trunc i64 %shr to i32
  %add12 = add i64 %and1, %and
  %shr13 = lshr exact i64 %add12, 12
  %conv14 = trunc i64 %shr13 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %11 = phi ptr [ %8, %for.body.lr.ph ], [ %16, %for.body.for.body_crit_edge ]
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_bo, ptr %11, i32 0, i32 2, i32 %i.076
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv11, ptr %arrayidx, align 8
  %13 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo_ptr, align 4
  %lpfn = getelementptr %struct.amdgpu_bo, ptr %14, i32 0, i32 2, i32 %i.076, i32 1
  %15 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv14, ptr %lpfn, align 4
  %inc = add nuw i32 %i.076, 1
  %16 = load ptr, ptr %bo_ptr, align 4
  %placement = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %placement, align 8
  %cmp9 = icmp ult i32 %inc, %18
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %.lcssa = phi ptr [ %8, %if.end7.for.end_crit_edge ], [ %16, %for.body.for.end_crit_edge ]
  %placement.lcssa = phi ptr [ %placement74, %if.end7.for.end_crit_edge ], [ %placement, %for.body.for.end_crit_edge ]
  %tbo17 = getelementptr inbounds %struct.amdgpu_bo, ptr %.lcssa, i32 0, i32 4
  %resource20 = getelementptr inbounds %struct.amdgpu_bo, ptr %.lcssa, i32 0, i32 4, i32 6
  %call21 = call i32 @ttm_bo_mem_space(ptr noundef %tbo17, ptr noundef %placement.lcssa, ptr noundef %resource20, ptr noundef nonnull %ctx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %for.end.error_crit_edge

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end24:                                         ; preds = %for.end
  br i1 %tobool5.not, label %if.end24.if.end31_crit_edge, label %if.then26

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then26:                                        ; preds = %if.end24
  %19 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bo_ptr, align 4
  %flags.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %22, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i62 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i62, label %if.end.i, label %if.then26.error_crit_edge

if.then26.error_crit_edge:                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end.i:                                         ; preds = %if.then26
  %kmap.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %kmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kmap.i.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.end6.i, label %if.end.i.amdgpu_bo_kmap.exit_crit_edge

if.end.i.amdgpu_bo_kmap.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_kmap.exit

if.end6.i:                                        ; preds = %if.end.i
  %resv.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 0, i32 9
  %25 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv.i, align 8
  %call7.i = call i32 @dma_resv_wait_timeout(ptr noundef %26, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 2147483647) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.end6.i.error_crit_edge, label %if.end9.i

if.end6.i.error_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end9.i:                                        ; preds = %if.end6.i
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4
  %resource.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resource.i, align 4
  %num_pages.i = getelementptr inbounds %struct.ttm_resource, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_pages.i, align 4
  %call12.i = call i32 @ttm_bo_kmap(ptr noundef %tbo.i, i32 noundef 0, i32 noundef %30, ptr noundef %kmap.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then17.i, label %if.end9.i.error_crit_edge

if.end9.i.error_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %kmap.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kmap.i.i, align 4
  br label %amdgpu_bo_kmap.exit

amdgpu_bo_kmap.exit:                              ; preds = %if.then17.i, %if.end.i.amdgpu_bo_kmap.exit_crit_edge
  %.sink.i = phi ptr [ %32, %if.then17.i ], [ %24, %if.end.i.amdgpu_bo_kmap.exit_crit_edge ]
  %33 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.sink.i, ptr %cpu_addr, align 4
  br label %if.end31

if.end31:                                         ; preds = %amdgpu_bo_kmap.exit, %if.end24.if.end31_crit_edge
  %34 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bo_ptr, align 4
  %tbo.i63 = getelementptr inbounds %struct.amdgpu_bo, ptr %35, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %35, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %37, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %35, i32 0, i32 4, i32 6
  %38 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i63, ptr noundef %39, ptr noundef null) #12
  %40 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %41, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %35, i32 0, i32 4, i32 0, i32 9
  %42 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %43) #12
  call void @ww_mutex_unlock(ptr noundef %43) #12
  br label %cleanup

error:                                            ; preds = %if.end9.i.error_crit_edge, %if.end6.i.error_crit_edge, %if.then26.error_crit_edge, %for.end.error_crit_edge
  %r.0 = phi i32 [ %call21, %for.end.error_crit_edge ], [ %call12.i, %if.end9.i.error_crit_edge ], [ %call7.i, %if.end6.i.error_crit_edge ], [ -1, %if.then26.error_crit_edge ]
  %44 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bo_ptr, align 4
  %tbo.i64 = getelementptr inbounds %struct.amdgpu_bo, ptr %45, i32 0, i32 4
  %bdev.i.i.i65 = getelementptr inbounds %struct.amdgpu_bo, ptr %45, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %bdev.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdev.i.i.i65, align 8
  %lru_lock.i.i.i66 = getelementptr inbounds %struct.ttm_device, ptr %47, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i66) #12
  %resource.i.i.i67 = getelementptr inbounds %struct.amdgpu_bo, ptr %45, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %resource.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %resource.i.i.i67, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i64, ptr noundef %49, ptr noundef null) #12
  %50 = ptrtoint ptr %bdev.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bdev.i.i.i65, align 8
  %lru_lock2.i.i.i68 = getelementptr inbounds %struct.ttm_device, ptr %51, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i68) #12
  %resv.i.i69 = getelementptr inbounds %struct.amdgpu_bo, ptr %45, i32 0, i32 4, i32 0, i32 9
  %52 = ptrtoint ptr %resv.i.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %resv.i.i69, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %53) #12
  call void @ww_mutex_unlock(ptr noundef %53) #12
  %54 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bo_ptr, align 4
  %cmp.i70 = icmp eq ptr %55, null
  br i1 %cmp.i70, label %error.cleanup_crit_edge, label %if.end.i71

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i71:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  %tbo1.i = getelementptr inbounds %struct.amdgpu_bo, ptr %55, i32 0, i32 4
  call void @ttm_bo_put(ptr noundef %tbo1.i) #12
  %56 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %bo_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i71, %error.cleanup_crit_edge, %if.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %r.0, %error.cleanup_crit_edge ], [ %r.0, %if.end.i71 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_kunmap(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bo1 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %kmap = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 5
  tail call void @ttm_bo_kunmap(ptr noundef %kmap) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_mem_space(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_free_kernel(ptr nocapture noundef %bo, ptr noundef writeonly %gpu_addr, ptr noundef writeonly %cpu_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.if.end13_crit_edge, label %if.end

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end:                                           ; preds = %entry
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv32.i.i, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i1.i.i
  %6 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.then3
    i32 -512, label %if.end.if.end7_crit_edge
  ], !prof !151

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -17736
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.44, ptr noundef nonnull %1) #15
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %tobool4.not = icmp eq ptr %cpu_addr, null
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  %9 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bo, align 4
  %bo1.i = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %bo1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo1.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then5.if.end6_crit_edge, label %if.then.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %kmap.i = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 5
  tail call void @ttm_bo_kunmap(ptr noundef %kmap.i) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then5.if.end6_crit_edge, %if.then3.if.end6_crit_edge
  %13 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo, align 4
  tail call void @amdgpu_bo_unpin(ptr noundef %14)
  %15 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #12
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %20, ptr noundef null) #12
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #12
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %24) #12
  tail call void @ww_mutex_unlock(ptr noundef %24) #12
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %do.end.i, %if.end.if.end7_crit_edge
  %25 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bo, align 4
  %cmp.i = icmp eq ptr %26, null
  br i1 %cmp.i, label %if.end7.amdgpu_bo_unref.exit_crit_edge, label %if.end.i

if.end7.amdgpu_bo_unref.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_unref.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %tbo1.i = getelementptr inbounds %struct.amdgpu_bo, ptr %26, i32 0, i32 4
  tail call void @ttm_bo_put(ptr noundef %tbo1.i) #12
  %27 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %bo, align 4
  br label %amdgpu_bo_unref.exit

amdgpu_bo_unref.exit:                             ; preds = %if.end.i, %if.end7.amdgpu_bo_unref.exit_crit_edge
  %tobool8.not = icmp eq ptr %gpu_addr, null
  br i1 %tobool8.not, label %amdgpu_bo_unref.exit.if.end10_crit_edge, label %if.then9

amdgpu_bo_unref.exit.if.end10_crit_edge:          ; preds = %amdgpu_bo_unref.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %amdgpu_bo_unref.exit
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %gpu_addr, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %amdgpu_bo_unref.exit.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %cpu_addr, null
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cpu_addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_bo_support_uswc(i64 %bo_flags) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_init_reserved(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_cs_report_moved_bytes(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fill_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_fence(ptr nocapture noundef readonly %bo, ptr noundef %fence, i1 noundef zeroext %shared) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resv1 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %0 = ptrtoint ptr %resv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv1, align 8
  br i1 %shared, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_resv_add_shared_fence(ptr noundef %1, ptr noundef %fence) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_resv_add_excl_fence(ptr noundef %1, ptr noundef %fence) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_bo_create(ptr noundef %bo) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_bo_create, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_bo_create, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !160

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %call42 = tail call i32 @__traceiter_amdgpu_bo_create(ptr noundef null, ptr noundef %bo) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !162
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_bo_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_bo_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_bo_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_amdgpu_bo_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 140, ptr noundef nonnull @.str.51) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
define dso_local i32 @amdgpu_bo_create_user(ptr noundef %adev, ptr nocapture noundef %bp, ptr nocapture noundef writeonly %ubo_ptr) local_unnamed_addr #1 align 64 {
entry:
  %bo_ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo_ptr) #12
  %0 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo_ptr, align 4, !annotation !155
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %1 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 592, ptr %bo_ptr_size, align 8
  %destroy = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 9
  %2 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @amdgpu_bo_user_destroy, ptr %destroy, align 4
  %call = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef %bp, ptr noundef nonnull %bo_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo_ptr, align 4
  %5 = ptrtoint ptr %ubo_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ubo_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo_ptr) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_create_vm(ptr noundef %adev, ptr nocapture noundef %bp, ptr nocapture noundef writeonly %vmbo_ptr) local_unnamed_addr #1 align 64 {
entry:
  %bo_ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo_ptr) #12
  %0 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo_ptr, align 4, !annotation !155
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %1 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bo_ptr_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 584, i32 %2)
  %cmp = icmp ult i32 %2, 584
  br i1 %cmp, label %do.body2, label %do.end7, !prof !149

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 687, 0\0A.popsection", ""() #12, !srcloc !165
  unreachable

do.end7:                                          ; preds = %entry
  %destroy = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 9
  %3 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @amdgpu_bo_vm_destroy, ptr %destroy, align 4
  %call = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef %bp, ptr noundef nonnull %bo_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo_ptr, align 4
  %6 = ptrtoint ptr %vmbo_ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %vmbo_ptr, align 4
  %shadow_list = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %shadow_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %shadow_list, ptr %shadow_list, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %5, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %shadow_list, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo_ptr) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_add_to_shadow_list(ptr noundef %vmbo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %vmbo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %shadow_list_lock = getelementptr i8, ptr %1, i32 73128
  tail call void @mutex_lock_nested(ptr noundef %shadow_list_lock, i32 noundef 0) #12
  %shadow_list = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %vmbo, i32 0, i32 2
  %shadow_list1 = getelementptr i8, ptr %1, i32 73120
  %prev.i = getelementptr i8, ptr %1, i32 73124
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %shadow_list, ptr noundef %3, ptr noundef %shadow_list1) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %shadow_list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %shadow_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %shadow_list1, ptr %shadow_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %vmbo, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %shadow_list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %shadow_list_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_restore_shadow(ptr nocapture noundef readonly %shadow, ptr noundef %fence) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %shadow, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %buffer_funcs_ring = getelementptr i8, ptr %1, i32 2932
  %2 = ptrtoint ptr %buffer_funcs_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_funcs_ring, align 4
  %call1 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %shadow)
  %parent = getelementptr inbounds %struct.amdgpu_bo, ptr %shadow, i32 0, i32 8
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call2 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %5)
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %shadow, i32 0, i32 4, i32 0, i32 5
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 8
  %call4 = tail call i32 @amdgpu_copy_buffer(ptr noundef %3, i64 noundef %call1, i64 noundef %call2, i32 noundef %7, ptr noundef null, ptr noundef %fence, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #12
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_copy_buffer(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @amdgpu_bo_kptr(ptr nocapture noundef readonly %bo) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kmap = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 5
  %0 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kmap, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_kmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_kunmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_bo_ref(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %bo, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %kref.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !149

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !154

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret ptr %bo
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_pin_restricted(ptr noundef %bo, i32 noundef %domain, i64 noundef %min_offset, i64 noundef %max_offset) local_unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #12
  %2 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %ttm = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ttm, align 8
  %call2 = tail call ptr @amdgpu_ttm_tt_get_usermm(ptr noundef %4) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup211_crit_edge

entry.cleanup211_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %min_offset, i64 %max_offset)
  %cmp = icmp ugt i64 %min_offset, %max_offset
  br i1 %cmp, label %land.rhs, label %if.end42

land.rhs:                                         ; preds = %if.end
  %.b275 = load i1, ptr @amdgpu_bo_pin_restricted.__already_done, align 1
  br i1 %.b275, label %land.rhs.cleanup211_crit_edge, label %if.then10, !prof !154

land.rhs.cleanup211_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @amdgpu_bo_pin_restricted.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 879, i32 noundef 9, ptr noundef null) #12
  br label %cleanup211

if.end42:                                         ; preds = %if.end
  %import_attach = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 8
  %5 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %import_attach, align 4
  %tobool44.not = icmp eq ptr %6, null
  br i1 %tobool44.not, label %if.end49, label %if.then45

if.then45:                                        ; preds = %if.end42
  %and = and i32 %domain, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.then45.cleanup211_crit_edge, label %if.end49.thread

if.then45.cleanup211_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

if.end49:                                         ; preds = %if.end42
  %pin_count = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 13
  %7 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool51.not = icmp eq i32 %8, 0
  br i1 %tobool51.not, label %if.end131, label %if.end49.if.then52_crit_edge

if.end49.if.then52_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.end49.thread:                                  ; preds = %if.then45
  %pin_count312 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 13
  %9 = ptrtoint ptr %pin_count312 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pin_count312, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool51.not313 = icmp eq i32 %10, 0
  br i1 %tobool51.not313, label %if.then137, label %if.end49.thread.if.then52_crit_edge

if.end49.thread.if.then52_crit_edge:              ; preds = %if.end49.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.then52:                                        ; preds = %if.end49.thread.if.then52_crit_edge, %if.end49.if.then52_crit_edge
  %domain.addr.0314 = phi i32 [ 2, %if.end49.thread.if.then52_crit_edge ], [ %domain, %if.end49.if.then52_crit_edge ]
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource, align 4
  %mem_type54 = getelementptr inbounds %struct.ttm_resource, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mem_type54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mem_type54, align 4
  %placement = getelementptr inbounds %struct.ttm_resource, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %placement, align 4
  %17 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %14, label %sw.epilog.i [
    i32 2, label %amdgpu_mem_type_to_domain.exit.thread
    i32 1, label %if.then52.amdgpu_mem_type_to_domain.exit_crit_edge
    i32 0, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb5.i
  ]

if.then52.amdgpu_mem_type_to_domain.exit_crit_edge: ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_mem_type_to_domain.exit

sw.bb2.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_mem_type_to_domain.exit

sw.bb3.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_mem_type_to_domain.exit

sw.bb4.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_mem_type_to_domain.exit

sw.bb5.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_mem_type_to_domain.exit

sw.epilog.i:                                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_mem_type_to_domain.exit

amdgpu_mem_type_to_domain.exit:                   ; preds = %sw.epilog.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %if.then52.amdgpu_mem_type_to_domain.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 32, %sw.bb5.i ], [ 16, %sw.bb4.i ], [ 8, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 2, %if.then52.amdgpu_mem_type_to_domain.exit_crit_edge ]
  %and58 = and i32 %retval.0.i, %domain.addr.0314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %amdgpu_mem_type_to_domain.exit.cleanup211_crit_edge, label %if.end61

amdgpu_mem_type_to_domain.exit.cleanup211_crit_edge: ; preds = %amdgpu_mem_type_to_domain.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

amdgpu_mem_type_to_domain.exit.thread:            ; preds = %if.then52
  %and58308 = and i32 %domain.addr.0314, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58308)
  %tobool59.not309 = icmp eq i32 %and58308, 0
  br i1 %tobool59.not309, label %amdgpu_mem_type_to_domain.exit.thread.cleanup211_crit_edge, label %amdgpu_mem_type_to_domain.exit.thread.land.lhs.true_crit_edge

amdgpu_mem_type_to_domain.exit.thread.land.lhs.true_crit_edge: ; preds = %amdgpu_mem_type_to_domain.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

amdgpu_mem_type_to_domain.exit.thread.cleanup211_crit_edge: ; preds = %amdgpu_mem_type_to_domain.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

if.end61:                                         ; preds = %amdgpu_mem_type_to_domain.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp62 = icmp eq i32 %14, 2
  br i1 %cmp62, label %if.end61.land.lhs.true_crit_edge, label %if.end61.if.end69_crit_edge

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end61.land.lhs.true_crit_edge:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end61.land.lhs.true_crit_edge, %amdgpu_mem_type_to_domain.exit.thread.land.lhs.true_crit_edge
  %flags = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flags, align 8
  %and63 = and i64 %19, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and63)
  %tobool64.not = icmp ne i64 %and63, 0
  %and66 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond = select i1 %tobool64.not, i1 %tobool67.not, i1 false
  br i1 %or.cond, label %land.lhs.true.cleanup211_crit_edge, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

land.lhs.true.cleanup211_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

if.end69:                                         ; preds = %land.lhs.true.if.end69_crit_edge, %if.end61.if.end69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end69.if.end.i_crit_edge, label %land.rhs.i

if.end69.if.end.i_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end69
  %resv.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %21 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %22, i32 0, i32 5
  %call.i.i280 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i280)
  %cmp.not.i = icmp eq i32 %call.i.i280, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !149

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 551, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end69.if.end.i_crit_edge
  %kref.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #12
  %23 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool26.not.i = icmp eq i32 %24, 0
  br i1 %tobool26.not.i, label %land.rhs34.i, label %if.end.i.ttm_bo_pin.exit_crit_edge

if.end.i.ttm_bo_pin.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ttm_bo_pin.exit

land.rhs34.i:                                     ; preds = %if.end.i
  %.b85.i = load i1, ptr @ttm_bo_pin.__already_done, align 1
  br i1 %.b85.i, label %land.rhs34.i.ttm_bo_pin.exit_crit_edge, label %if.then45.i, !prof !154

land.rhs34.i.ttm_bo_pin.exit_crit_edge:           ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ttm_bo_pin.exit

if.then45.i:                                      ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 552, i32 noundef 9, ptr noundef null) #12
  br label %ttm_bo_pin.exit

ttm_bo_pin.exit:                                  ; preds = %if.then45.i, %land.rhs34.i.ttm_bo_pin.exit_crit_edge, %if.end.i.ttm_bo_pin.exit_crit_edge
  %pin_count.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 13
  %25 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pin_count.i, align 8
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %pin_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max_offset)
  %cmp71.not = icmp eq i64 %max_offset, 0
  br i1 %cmp71.not, label %ttm_bo_pin.exit.cleanup211_crit_edge, label %if.then72

ttm_bo_pin.exit.cleanup211_crit_edge:             ; preds = %ttm_bo_pin.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

if.then72:                                        ; preds = %ttm_bo_pin.exit
  %call73 = tail call i64 @amdgpu_ttm_domain_start(ptr noundef %add.ptr.i, i32 noundef %14) #12
  %call75 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %bo)
  %sub = sub i64 %call75, %call73
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %max_offset)
  %cmp76 = icmp ugt i64 %sub, %max_offset
  br i1 %cmp76, label %land.rhs83, label %if.then72.cleanup211_crit_edge

if.then72.cleanup211_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

land.rhs83:                                       ; preds = %if.then72
  %.b273274 = load i1, ptr @amdgpu_bo_pin_restricted.__already_done.17, align 1
  br i1 %.b273274, label %land.rhs83.cleanup211_crit_edge, label %if.then94, !prof !154

land.rhs83.cleanup211_crit_edge:                  ; preds = %land.rhs83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

if.then94:                                        ; preds = %land.rhs83
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @amdgpu_bo_pin_restricted.__already_done.17, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 908, i32 noundef 9, ptr noundef null) #12
  br label %cleanup211

if.end131:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %domain)
  %cmp.i = icmp eq i32 %domain, 6
  br i1 %cmp.i, label %if.then.i, label %if.end131.if.end142_crit_edge

if.end131.if.end142_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

if.then.i:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %real_vram_size.i = getelementptr i8, ptr %1, i32 -13864
  %27 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %real_vram_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435457, i64 %28)
  %cmp1.i = icmp ult i64 %28, 268435457
  %spec.store.select.i = select i1 %cmp1.i, i32 2, i32 4
  br label %if.end142

if.then137:                                       ; preds = %if.end49.thread
  call void @__sanitizer_cov_trace_pc() #14
  %call141 = tail call i32 @dma_buf_pin(ptr noundef nonnull %6) #12
  br label %if.end142

if.end142:                                        ; preds = %if.then137, %if.then.i, %if.end131.if.end142_crit_edge
  %domain.addr.0.i319 = phi i32 [ 2, %if.then137 ], [ %domain, %if.end131.if.end142_crit_edge ], [ %spec.store.select.i, %if.then.i ]
  %flags143 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 6
  %29 = ptrtoint ptr %flags143 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %flags143, align 8
  %and144 = and i64 %30, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and144)
  %tobool145.not = icmp eq i64 %and144, 0
  br i1 %tobool145.not, label %if.then146, label %if.end142.if.end148_crit_edge

if.end142.if.end148_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i64 %30, 1
  %31 = ptrtoint ptr %flags143 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %or, ptr %flags143, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end142.if.end148_crit_edge
  tail call void @amdgpu_bo_placement_from_domain(ptr noundef %bo, i32 noundef %domain.addr.0.i319)
  %placement149 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 3
  %32 = ptrtoint ptr %placement149 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %placement149, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp150323.not = icmp eq i32 %33, 0
  br i1 %cmp150323.not, label %if.end148.for.end_crit_edge, label %for.body.lr.ph

if.end148.for.end_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end148
  %shr = lshr i64 %min_offset, 12
  %conv = trunc i64 %shr to i32
  %shr151 = lshr i64 %max_offset, 12
  %conv152 = trunc i64 %shr151 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv152)
  %tobool165.not = icmp ne i32 %conv152, 0
  br label %for.body

for.body:                                         ; preds = %if.end176.for.body_crit_edge, %for.body.lr.ph
  %i.0324 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end176.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_bo, ptr %bo, i32 0, i32 2, i32 %i.0324
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv)
  %cmp154 = icmp ult i32 %35, %conv
  br i1 %cmp154, label %if.then156, label %for.body.if.end160_crit_edge

for.body.if.end160_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then156:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %arrayidx, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %for.body.if.end160_crit_edge
  %lpfn163 = getelementptr %struct.amdgpu_bo, ptr %bo, i32 0, i32 2, i32 %i.0324, i32 1
  %37 = ptrtoint ptr %lpfn163 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lpfn163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool164.not = icmp eq i32 %38, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv152)
  %cmp170 = icmp ugt i32 %38, %conv152
  %or.cond277 = select i1 %tobool165.not, i1 %cmp170, i1 false
  %or.cond325 = or i1 %tobool164.not, %or.cond277
  br i1 %or.cond325, label %if.then172, label %if.end160.if.end176_crit_edge

if.end160.if.end176_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

if.then172:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %lpfn163 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv152, ptr %lpfn163, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then172, %if.end160.if.end176_crit_edge
  %inc = add nuw i32 %i.0324, 1
  %40 = ptrtoint ptr %placement149 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %placement149, align 8
  %cmp150 = icmp ult i32 %inc, %41
  br i1 %cmp150, label %if.end176.for.body_crit_edge, label %if.end176.for.end_crit_edge

if.end176.for.end_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end176.for.body_crit_edge:                     ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end176.for.end_crit_edge, %if.end148.for.end_crit_edge
  %call179 = call i32 @ttm_bo_validate(ptr noundef %tbo, ptr noundef %placement149, ptr noundef nonnull %ctx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end191, label %do.end190, !prof !154

do.end190:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.18, ptr noundef %bo) #15
  br label %cleanup211

if.end191:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %44 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i281 = icmp eq i32 %44, 0
  br i1 %tobool.not.i281, label %if.end191.if.end.i291_crit_edge, label %land.rhs.i286

if.end191.if.end.i291_crit_edge:                  ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i291

land.rhs.i286:                                    ; preds = %if.end191
  %resv.i282 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %45 = ptrtoint ptr %resv.i282 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resv.i282, align 8
  %dep_map.i283 = getelementptr inbounds %struct.mutex, ptr %46, i32 0, i32 5
  %call.i.i284 = call i32 @lock_is_held_type(ptr noundef %dep_map.i283, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i284)
  %cmp.not.i285 = icmp eq i32 %call.i.i284, 0
  br i1 %cmp.not.i285, label %do.end.i287, label %land.rhs.i286.if.end.i291_crit_edge, !prof !149

land.rhs.i286.if.end.i291_crit_edge:              ; preds = %land.rhs.i286
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i291

do.end.i287:                                      ; preds = %land.rhs.i286
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 551, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i291

if.end.i291:                                      ; preds = %do.end.i287, %land.rhs.i286.if.end.i291_crit_edge, %if.end191.if.end.i291_crit_edge
  %kref.i288 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 5
  %call.i.i.i.i.i289 = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i288, i32 noundef 4) #12
  %47 = ptrtoint ptr %kref.i288 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %kref.i288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool26.not.i290 = icmp eq i32 %48, 0
  br i1 %tobool26.not.i290, label %land.rhs34.i293, label %if.end.i291.ttm_bo_pin.exit297_crit_edge

if.end.i291.ttm_bo_pin.exit297_crit_edge:         ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #14
  br label %ttm_bo_pin.exit297

land.rhs34.i293:                                  ; preds = %if.end.i291
  %.b85.i292 = load i1, ptr @ttm_bo_pin.__already_done, align 1
  br i1 %.b85.i292, label %land.rhs34.i293.ttm_bo_pin.exit297_crit_edge, label %if.then45.i294, !prof !154

land.rhs34.i293.ttm_bo_pin.exit297_crit_edge:     ; preds = %land.rhs34.i293
  call void @__sanitizer_cov_trace_pc() #14
  br label %ttm_bo_pin.exit297

if.then45.i294:                                   ; preds = %land.rhs34.i293
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 552, i32 noundef 9, ptr noundef null) #12
  br label %ttm_bo_pin.exit297

ttm_bo_pin.exit297:                               ; preds = %if.then45.i294, %land.rhs34.i293.ttm_bo_pin.exit297_crit_edge, %if.end.i291.ttm_bo_pin.exit297_crit_edge
  %pin_count.i295 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 13
  %49 = ptrtoint ptr %pin_count.i295 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pin_count.i295, align 8
  %inc.i296 = add i32 %50, 1
  store i32 %inc.i296, ptr %pin_count.i295, align 8
  %resource194 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %51 = ptrtoint ptr %resource194 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %resource194, align 4
  %mem_type195 = getelementptr inbounds %struct.ttm_resource, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %mem_type195 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mem_type195, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %54, label %ttm_bo_pin.exit297.cleanup211_crit_edge [
    i32 2, label %if.then199
    i32 1, label %if.then206
  ]

ttm_bo_pin.exit297.cleanup211_crit_edge:          ; preds = %ttm_bo_pin.exit297
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup211

if.then199:                                       ; preds = %ttm_bo_pin.exit297
  call void @__sanitizer_cov_trace_pc() #14
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i, align 8
  %conv201 = zext i32 %57 to i64
  %vram_pin_size = getelementptr i8, ptr %1, i32 71176
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %vram_pin_size, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef %conv201, ptr noundef %vram_pin_size) #12
  %call202 = call i64 @amdgpu_vram_mgr_bo_visible_size(ptr noundef %bo) #12
  %visible_pin_size = getelementptr i8, ptr %1, i32 71184
  %call.i.i278 = call zeroext i1 @__kasan_check_write(ptr noundef %visible_pin_size, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef %call202, ptr noundef %visible_pin_size) #12
  br label %cleanup211

if.then206:                                       ; preds = %ttm_bo_pin.exit297
  call void @__sanitizer_cov_trace_pc() #14
  %size.i306 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %58 = ptrtoint ptr %size.i306 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i306, align 8
  %conv208 = zext i32 %59 to i64
  %gart_pin_size = getelementptr i8, ptr %1, i32 71192
  %call.i.i279 = call zeroext i1 @__kasan_check_write(ptr noundef %gart_pin_size, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef %conv208, ptr noundef %gart_pin_size) #12
  br label %cleanup211

cleanup211:                                       ; preds = %if.then206, %if.then199, %ttm_bo_pin.exit297.cleanup211_crit_edge, %do.end190, %if.then94, %land.rhs83.cleanup211_crit_edge, %if.then72.cleanup211_crit_edge, %ttm_bo_pin.exit.cleanup211_crit_edge, %land.lhs.true.cleanup211_crit_edge, %amdgpu_mem_type_to_domain.exit.thread.cleanup211_crit_edge, %amdgpu_mem_type_to_domain.exit.cleanup211_crit_edge, %if.then45.cleanup211_crit_edge, %if.then10, %land.rhs.cleanup211_crit_edge, %entry.cleanup211_crit_edge
  %retval.1 = phi i32 [ -1, %entry.cleanup211_crit_edge ], [ -22, %if.then10 ], [ -22, %if.then45.cleanup211_crit_edge ], [ -22, %amdgpu_mem_type_to_domain.exit.cleanup211_crit_edge ], [ -22, %land.lhs.true.cleanup211_crit_edge ], [ 0, %land.rhs83.cleanup211_crit_edge ], [ 0, %if.then94 ], [ 0, %if.then72.cleanup211_crit_edge ], [ 0, %ttm_bo_pin.exit.cleanup211_crit_edge ], [ 0, %if.then199 ], [ 0, %if.then206 ], [ %call179, %do.end190 ], [ -22, %land.rhs.cleanup211_crit_edge ], [ -22, %amdgpu_mem_type_to_domain.exit.thread.cleanup211_crit_edge ], [ 0, %ttm_bo_pin.exit297.cleanup211_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ttm_tt_get_usermm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_ttm_domain_start(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_bo_get_preferred_domain(ptr nocapture noundef readonly %adev, i32 noundef %domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %domain)
  %cmp = icmp eq i32 %domain, 6
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %real_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %0 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %real_vram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435457, i64 %1)
  %cmp1 = icmp ult i64 %1, 268435457
  %spec.store.select = select i1 %cmp1, i32 2, i32 4
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  %domain.addr.0 = phi i32 [ %spec.store.select, %if.then ], [ %domain, %entry.if.end3_crit_edge ]
  ret i32 %domain.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_pin(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_vram_mgr_bo_visible_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unpin(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_init(ptr noundef %adev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %0 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %connected_to_cpu, align 8, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vram_mtrr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 16
  %2 = ptrtoint ptr %vram_mtrr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vram_mtrr, align 8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %gmc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62
  %mc_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 2
  %3 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mc_vram_size, align 8
  %shr = lshr i64 %4, 20
  %5 = ptrtoint ptr %gmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gmc, align 8
  %7 = lshr i32 %6, 20
  %shr15 = zext i32 %7 to i64
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i64 noundef %shr, i64 noundef %shr15) #15
  %vram_width = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 14
  %8 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vram_width, align 8
  %vram_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 21
  %10 = ptrtoint ptr %vram_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vram_type, align 4
  %arrayidx = getelementptr [11 x ptr], ptr @amdgpu_vram_names, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %9, ptr noundef %13) #15
  %call23 = tail call i32 @amdgpu_ttm_init(ptr noundef %adev) #12
  ret i32 %call23
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_fini(ptr noundef %adev) local_unnamed_addr #1 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #12
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !155
  tail call void @amdgpu_ttm_fini(ptr noundef %adev) #12
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call1 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #12
  br i1 %call1, label %if.end, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %2) #12
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_set_tiling_flags(ptr nocapture noundef %bo, i64 noundef %tiling_flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.body3, label %do.end8, !prof !149

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1095, 0\0A.popsection", ""() #12, !srcloc !166
  unreachable

do.end8:                                          ; preds = %entry
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %family = getelementptr i8, ptr %3, i32 -15364
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %5)
  %cmp9 = icmp ult i32 %5, 136
  %6 = and i64 %tiling_flags, 3584
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %6)
  %cmp10 = icmp eq i64 %6, 3584
  %or.cond = and i1 %cmp10, %cmp9
  br i1 %or.cond, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %tiling_flags13 = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 1
  %7 = ptrtoint ptr %tiling_flags13 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %tiling_flags, ptr %tiling_flags13, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_get_tiling_flags(ptr nocapture noundef readonly %bo, ptr noundef writeonly %tiling_flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.body2, label %do.body8, !prof !149

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #12, !srcloc !167
  unreachable

do.body8:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %do.body8.if.end36_crit_edge, label %land.rhs

do.body8.if.end36_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs:                                         ; preds = %do.body8
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %3 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resv, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %4, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12.not = icmp eq i32 %call.i, 0
  br i1 %cmp12.not, label %do.end30, label %land.rhs.if.end36_crit_edge, !prof !149

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end30:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1118, i32 noundef 9, ptr noundef null) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %land.rhs.if.end36_crit_edge, %do.body8.if.end36_crit_edge
  %tobool46.not = icmp eq ptr %tiling_flags, null
  br i1 %tobool46.not, label %if.end36.if.end49_crit_edge, label %if.then47

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then47:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %tiling_flags48 = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 1
  %5 = ptrtoint ptr %tiling_flags48 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tiling_flags48, align 8
  %7 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tiling_flags, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end36.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_set_metadata(ptr nocapture noundef %bo, ptr noundef %metadata, i32 noundef %metadata_size, i64 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.body2, label %do.end7, !prof !149

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1144, 0\0A.popsection", ""() #12, !srcloc !168
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %metadata_size)
  %tobool8.not = icmp eq i32 %metadata_size, 0
  br i1 %tobool8.not, label %if.then9, label %if.end17

if.then9:                                         ; preds = %do.end7
  %metadata_size10 = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 4
  %2 = ptrtoint ptr %metadata_size10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %metadata_size10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %if.then12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %metadata13 = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 3
  %4 = ptrtoint ptr %metadata13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %metadata13, align 8
  tail call void @kfree(ptr noundef %5) #12
  %6 = ptrtoint ptr %metadata13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %metadata13, align 8
  %7 = ptrtoint ptr %metadata_size10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metadata_size10, align 4
  br label %cleanup

if.end17:                                         ; preds = %do.end7
  %cmp18 = icmp eq ptr %metadata, null
  br i1 %cmp18, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %call = tail call ptr @kmemdup(ptr noundef nonnull %metadata, i32 noundef %metadata_size, i32 noundef 3264) #12
  %cmp21 = icmp eq ptr %call, null
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %metadata24 = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 3
  %8 = ptrtoint ptr %metadata24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %metadata24, align 8
  tail call void @kfree(ptr noundef %9) #12
  %metadata_flags = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 2
  %10 = ptrtoint ptr %metadata_flags to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %flags, ptr %metadata_flags, align 8
  %11 = ptrtoint ptr %metadata24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %metadata24, align 8
  %metadata_size26 = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 4
  %12 = ptrtoint ptr %metadata_size26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %metadata_size, ptr %metadata_size26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then12, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 0, %if.then12 ], [ 0, %if.then9.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_get_metadata(ptr nocapture noundef readonly %bo, ptr noundef writeonly %buffer, i32 noundef %buffer_size, ptr noundef writeonly %metadata_size, ptr noundef writeonly %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buffer, null
  %tobool1.not = icmp eq ptr %metadata_size, null
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.body5, label %do.end11, !prof !149

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_object.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1194, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

do.end11:                                         ; preds = %do.body
  br i1 %tobool1.not, label %do.end11.if.end15_crit_edge, label %if.then13

do.end11.if.end15_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  %metadata_size14 = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 4
  %2 = ptrtoint ptr %metadata_size14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %metadata_size14, align 4
  %4 = ptrtoint ptr %metadata_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %metadata_size, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end11.if.end15_crit_edge
  br i1 %tobool.not, label %if.end15.if.end27_crit_edge, label %if.then17

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then17:                                        ; preds = %if.end15
  %metadata_size18 = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 4
  %5 = ptrtoint ptr %metadata_size18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %metadata_size18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %buffer_size)
  %cmp19 = icmp ugt i32 %6, %buffer_size
  br i1 %cmp19, label %if.then17.cleanup_crit_edge, label %if.end21

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool23.not = icmp eq i32 %6, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %metadata = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 3
  %7 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %metadata, align 8
  %9 = call ptr @memcpy(ptr %buffer, ptr %8, i32 %6)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %flags, null
  br i1 %tobool28.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %metadata_flags = getelementptr inbounds %struct.amdgpu_bo_user, ptr %bo, i32 0, i32 2
  %10 = ptrtoint ptr %metadata_flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %metadata_flags, align 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end27.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then17.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_move_notify(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef readonly %new_mem) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %destroy.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 4
  %4 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy.i, align 4
  %cmp.i = icmp eq ptr %5, @amdgpu_bo_destroy
  %cmp2.i = icmp eq ptr %5, @amdgpu_bo_user_destroy
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  %cmp5.i = icmp eq ptr %5, @amdgpu_bo_vm_destroy
  %or.cond8.i = or i1 %cmp5.i, %or.cond.i
  br i1 %or.cond8.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %add.ptr.i36 = getelementptr i8, ptr %bo, i32 -72
  tail call void @amdgpu_vm_bo_invalidate(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i36, i1 noundef zeroext %evict) #12
  %bo1.i = getelementptr i8, ptr %bo, i32 428
  %6 = ptrtoint ptr %bo1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.amdgpu_bo_kunmap.exit_crit_edge, label %if.then.i

if.end.amdgpu_bo_kunmap.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_kunmap.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %kmap.i = getelementptr i8, ptr %bo, i32 416
  tail call void @ttm_bo_kunmap(ptr noundef %kmap.i) #12
  br label %amdgpu_bo_kunmap.exit

amdgpu_bo_kunmap.exit:                            ; preds = %if.then.i, %if.end.amdgpu_bo_kunmap.exit_crit_edge
  %dma_buf = getelementptr i8, ptr %bo, i32 192
  %8 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_buf, align 8
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %amdgpu_bo_kunmap.exit.if.end13_crit_edge, label %land.lhs.true

amdgpu_bo_kunmap.exit.if.end13_crit_edge:         ; preds = %amdgpu_bo_kunmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %amdgpu_bo_kunmap.exit
  %import_attach = getelementptr i8, ptr %bo, i32 196
  %10 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %import_attach, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %land.lhs.true7.if.end13_crit_edge, label %if.then9

land.lhs.true7.if.end13_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_buf_move_notify(ptr noundef nonnull %9) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true7.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %amdgpu_bo_kunmap.exit.if.end13_crit_edge
  br i1 %evict, label %if.then15, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %num_evictions = getelementptr i8, ptr %1, i32 4152
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_evictions, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_evictions) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %new_mem, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %mem_type20 = getelementptr inbounds %struct.ttm_resource, ptr %new_mem, i32 0, i32 2
  %16 = ptrtoint ptr %mem_type20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_type20, align 4
  %mem_type21 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %mem_type21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_type21, align 4
  tail call fastcc void @trace_amdgpu_bo_move(ptr noundef %add.ptr.i36, i32 noundef %17, i32 noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_bo_invalidate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_move_notify(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_bo_move(ptr noundef %bo, i32 noundef %new_placement, i32 noundef %old_placement) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_bo_move, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_bo_move, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !160

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !170
  %call42 = tail call i32 @__traceiter_amdgpu_bo_move(ptr noundef null, ptr noundef %bo, i32 noundef %new_placement, i32 noundef %old_placement) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !171
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_bo_move, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_bo_move, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_bo_move.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_amdgpu_bo_move.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.50, i32 noundef 514, ptr noundef nonnull @.str.51) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_bo_get_memory(ptr nocapture noundef readonly %bo, ptr nocapture noundef %vram_mem, ptr nocapture noundef %gtt_mem, ptr nocapture noundef %cpu_mem) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %3, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %entry.sw.epilog_crit_edge
  %cpu_mem.sink18 = phi ptr [ %cpu_mem, %sw.default ], [ %gtt_mem, %sw.bb2 ], [ %vram_mem, %entry.sw.epilog_crit_edge ]
  %size.i14 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %5 = ptrtoint ptr %size.i14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i14, align 8
  %conv8 = zext i32 %6 to i64
  %7 = ptrtoint ptr %cpu_mem.sink18 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cpu_mem.sink18, align 8
  %add9 = add i64 %8, %conv8
  store i64 %add9, ptr %cpu_mem.sink18, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_release_notify(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #12
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fence, align 4
  %destroy.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 4
  %1 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %destroy.i, align 4
  %cmp.i = icmp eq ptr %2, @amdgpu_bo_destroy
  %cmp2.i = icmp eq ptr %2, @amdgpu_bo_user_destroy
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  %cmp5.i = icmp eq ptr %2, @amdgpu_bo_vm_destroy
  %or.cond8.i = or i1 %cmp5.i, %or.cond.i
  br i1 %or.cond8.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %bo, i32 -72
  %type = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.rhs, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.rhs:                                         ; preds = %if.end
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %5 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resv, align 8
  %_resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 10
  %cmp5.not = icmp eq ptr %6, %_resv
  br i1 %cmp5.not, label %land.rhs.if.end37_crit_edge, label %land.rhs8

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.rhs8:                                        ; preds = %land.rhs
  %.b119 = load i1, ptr @amdgpu_bo_release_notify.__already_done, align 1
  br i1 %.b119, label %land.rhs8.if.end37_crit_edge, label %if.then15, !prof !154

land.rhs8.if.end37_crit_edge:                     ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then15:                                        ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @amdgpu_bo_release_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1298, i32 noundef 9, ptr noundef null) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then15, %land.rhs8.if.end37_crit_edge, %land.rhs.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %resv46 = getelementptr %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %7 = ptrtoint ptr %resv46 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv46, align 8
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp53.not = icmp eq i32 %12, 2
  br i1 %cmp53.not, label %lor.lhs.false, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end37
  %flags = getelementptr i8, ptr %bo, i32 432
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %flags, align 8
  %and = and i64 %14, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool54.not = icmp eq i64 %and, 0
  br i1 %tobool54.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end56

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false
  %call.i = tail call i32 @ww_mutex_lock(ptr noundef %8, ptr noundef null) #12
  %15 = ptrtoint ptr %resv46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resv46, align 8
  %call62 = call i32 @amdgpu_fill_buffer(ptr noundef %add.ptr.i, i32 noundef -792801090, ptr noundef %16, ptr noundef nonnull %fence) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool64.not = icmp eq i32 %call62, 0
  br i1 %tobool64.not, label %if.then95.critedge, label %do.end80, !prof !154

do.end80:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1309, i32 noundef 9, ptr noundef null) #12
  br label %if.end96

if.then95.critedge:                               ; preds = %if.end56
  %17 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fence, align 4
  %19 = ptrtoint ptr %resv46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resv46, align 8
  call void @dma_resv_add_excl_fence(ptr noundef %20, ptr noundef %18) #12
  %21 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then95.critedge.if.end96_crit_edge, label %if.then.i

if.then95.critedge.if.end96_crit_edge:            ; preds = %if.then95.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then.i:                                        ; preds = %if.then95.critedge
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !157
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end96_crit_edge, label %if.then10.i.i.i.i.i, !prof !154

if.end5.i.i.i.i.i.if.end96_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %if.end96

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  call void @dma_fence_release(ptr noundef %refcount.i) #12
  br label %if.end96

if.end96:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end96_crit_edge, %if.then95.critedge.if.end96_crit_edge, %do.end80
  %24 = ptrtoint ptr %resv46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resv46, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %25) #12
  call void @ww_mutex_unlock(ptr noundef %25) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %lor.lhs.false.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_fault_reserve_notify(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #12
  %2 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %flags = getelementptr i8, ptr %bo, i32 432
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags, align 8
  %or = or i64 %4, 1
  store i64 %or, ptr %flags, align 8
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %shl = shl i32 %10, 12
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 8
  %add = add i32 %shl, %12
  %conv = zext i32 %add to i64
  %visible_vram_size = getelementptr i8, ptr %1, i32 -13960
  %13 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv)
  %cmp3.not = icmp ult i64 %14, %conv
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pin_count = getelementptr i8, ptr %bo, i32 408
  %15 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7.not = icmp eq i32 %16, 0
  br i1 %cmp7.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %num_vram_cpu_page_faults = getelementptr i8, ptr %1, i32 4160
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_vram_cpu_page_faults, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_vram_cpu_page_faults) #12
  %placements.i = getelementptr i8, ptr %bo, i32 -64
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %flags, align 8
  %19 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev, align 8
  %visible_vram_size.i = getelementptr i8, ptr %20, i32 -13960
  %21 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %visible_vram_size.i, align 8
  %23 = ptrtoint ptr %placements.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %placements.i, align 4
  %lpfn.i = getelementptr i8, ptr %bo, i32 -60
  %24 = ptrtoint ptr %lpfn.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lpfn.i, align 4
  %mem_type.i = getelementptr i8, ptr %bo, i32 -56
  %25 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %mem_type.i, align 4
  %flags6.i = getelementptr i8, ptr %bo, i32 -52
  %26 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags6.i, align 4
  %and7.i = and i64 %18, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool8.not.i = icmp eq i64 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i64 %22, 12
  %conv.i = trunc i64 %shr.i to i32
  %27 = ptrtoint ptr %lpfn.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %lpfn.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %flags6.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then9.i
  %and14.i = and i64 %18, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14.i)
  %tobool15.not.i = icmp eq i64 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i.amdgpu_bo_placement_from_domain.exit_crit_edge, label %if.then16.i

if.end.i.amdgpu_bo_placement_from_domain.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_bo_placement_from_domain.exit

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags6.i, align 4
  %or19.i = or i32 %30, 1
  store i32 %or19.i, ptr %flags6.i, align 4
  br label %amdgpu_bo_placement_from_domain.exit

amdgpu_bo_placement_from_domain.exit:             ; preds = %if.then16.i, %if.end.i.amdgpu_bo_placement_from_domain.exit_crit_edge
  %arrayidx25.i = getelementptr i8, ptr %bo, i32 -48
  %31 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx25.i, align 4
  %lpfn28.i = getelementptr i8, ptr %bo, i32 -44
  %32 = ptrtoint ptr %lpfn28.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %lpfn28.i, align 4
  %and30.i = and i64 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30.i)
  %tobool31.not.i = icmp eq i64 %and30.i, 0
  %cond.i = select i1 %tobool31.not.i, i32 1, i32 6
  %mem_type33.i = getelementptr i8, ptr %bo, i32 -40
  %33 = ptrtoint ptr %mem_type33.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond.i, ptr %mem_type33.i, align 4
  %flags35.i = getelementptr i8, ptr %bo, i32 -36
  %34 = ptrtoint ptr %flags35.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %flags35.i, align 4
  %placement1.i = getelementptr i8, ptr %bo, i32 -16
  %35 = ptrtoint ptr %placement1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %placement1.i, align 4
  %placement113.i = getelementptr i8, ptr %bo, i32 -12
  %36 = ptrtoint ptr %placement113.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %placements.i, ptr %placement113.i, align 4
  %num_busy_placement.i = getelementptr i8, ptr %bo, i32 -8
  %busy_placement.i = getelementptr i8, ptr %bo, i32 -4
  %37 = ptrtoint ptr %num_busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %num_busy_placement.i, align 8
  %38 = ptrtoint ptr %busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx25.i, ptr %busy_placement.i, align 4
  %call13 = call i32 @ttm_bo_validate(ptr noundef %bo, ptr noundef %placement1.i, ptr noundef nonnull %ctx) #12
  %39 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call13, label %cleanup.fold.split [
    i32 -16, label %amdgpu_bo_placement_from_domain.exit.cleanup_crit_edge
    i32 -512, label %amdgpu_bo_placement_from_domain.exit.cleanup_crit_edge73
    i32 0, label %if.end29
  ], !prof !172

amdgpu_bo_placement_from_domain.exit.cleanup_crit_edge73: ; preds = %amdgpu_bo_placement_from_domain.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

amdgpu_bo_placement_from_domain.exit.cleanup_crit_edge: ; preds = %amdgpu_bo_placement_from_domain.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %amdgpu_bo_placement_from_domain.exit
  %40 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %resource, align 4
  %mem_type34 = getelementptr inbounds %struct.ttm_resource, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %mem_type34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mem_type34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp35 = icmp eq i32 %43, 2
  br i1 %cmp35, label %land.lhs.true, label %if.end29.if.end46_crit_edge

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end29
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 4
  %shl32 = shl i32 %45, 12
  %46 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size, align 8
  %add39 = add i32 %shl32, %47
  %conv40 = zext i32 %add39 to i64
  %48 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %conv40)
  %cmp43 = icmp ult i64 %49, %conv40
  br i1 %cmp43, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end29.if.end46_crit_edge
  %50 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bdev, align 8
  %lru_lock.i = getelementptr inbounds %struct.ttm_device, ptr %51, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i) #12
  %52 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %resource, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %bo, ptr noundef %53, ptr noundef null) #12
  %54 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bdev, align 8
  %lru_lock2.i = getelementptr inbounds %struct.ttm_device, ptr %55, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i) #12
  br label %cleanup

cleanup.fold.split:                               ; preds = %amdgpu_bo_placement_from_domain.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %if.end46, %land.lhs.true.cleanup_crit_edge, %amdgpu_bo_placement_from_domain.exit.cleanup_crit_edge, %amdgpu_bo_placement_from_domain.exit.cleanup_crit_edge73, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 2, %if.end6.cleanup_crit_edge ], [ 256, %amdgpu_bo_placement_from_domain.exit.cleanup_crit_edge ], [ 2, %land.lhs.true.cleanup_crit_edge ], [ 256, %amdgpu_bo_placement_from_domain.exit.cleanup_crit_edge73 ], [ 2, %cleanup.fold.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_sync_wait_resv(ptr noundef %adev, ptr noundef %resv, i32 noundef %sync_mode, ptr noundef %owner, i1 noundef zeroext %intr) local_unnamed_addr #1 align 64 {
entry:
  %sync = alloca %struct.amdgpu_sync, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sync) #12
  %0 = call ptr @memset(ptr %sync, i32 255, i32 68)
  call void @amdgpu_sync_create(ptr noundef nonnull %sync) #12
  %call = call i32 @amdgpu_sync_resv(ptr noundef %adev, ptr noundef nonnull %sync, ptr noundef %resv, i32 noundef %sync_mode, ptr noundef %owner) #12
  %call1 = call i32 @amdgpu_sync_wait(ptr noundef nonnull %sync, i1 noundef zeroext %intr) #12
  call void @amdgpu_sync_free(ptr noundef nonnull %sync) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sync) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sync_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_resv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_wait(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sync_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_sync_wait(ptr nocapture noundef readonly %bo, ptr noundef %owner, i1 noundef zeroext %intr) local_unnamed_addr #1 align 64 {
entry:
  %sync.i = alloca %struct.amdgpu_sync, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %2 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sync.i) #12
  %4 = call ptr @memset(ptr %sync.i, i32 255, i32 68)
  call void @amdgpu_sync_create(ptr noundef nonnull %sync.i) #12
  %call.i = call i32 @amdgpu_sync_resv(ptr noundef %add.ptr.i, ptr noundef nonnull %sync.i, ptr noundef %3, i32 noundef 1, ptr noundef %owner) #12
  %call1.i = call i32 @amdgpu_sync_wait(ptr noundef nonnull %sync.i, i1 noundef zeroext %intr) #12
  call void @amdgpu_sync_free(ptr noundef nonnull %sync.i) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sync.i) #12
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_bo_gpu_offset_no_check(ptr nocapture noundef readonly %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shl = shl i32 %5, 12
  %conv = zext i32 %shl to i64
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_type, align 4
  %call4 = tail call i64 @amdgpu_ttm_domain_start(ptr noundef %add.ptr.i, i32 noundef %7) #12
  %add = add i64 %call4, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355327, i64 %add)
  %cmp.i = icmp ugt i64 %add, 140737488355327
  %or.i = or i64 %add, -140737488355328
  %spec.select.i = select i1 %cmp.i, i64 %or.i, i64 %add
  ret i64 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_bo_print_info(i32 noundef %id, ptr noundef %bo, ptr noundef %m) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp117 = icmp eq i32 %3, 2
  %switch.select118 = select i1 %switch.selectcmp117, ptr @.str.29, ptr %switch.select
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 8
  %conv = zext i32 %5 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %id, i64 noundef %conv, ptr noundef nonnull %switch.select118) #12
  %pin_count5 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 13
  %6 = ptrtoint ptr %pin_count5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %pin_count5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %if.then

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %7) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry.do.end8_crit_edge
  %dma_buf11 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 7
  %8 = ptrtoint ptr %dma_buf11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %dma_buf11, align 8
  %import_attach = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 8
  %10 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %import_attach, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, ptr noundef %9) #12
  br label %do.body24

if.else:                                          ; preds = %do.end8
  %tobool20.not = icmp eq ptr %9, null
  br i1 %tobool20.not, label %if.else.do.body24_crit_edge, label %if.then21

if.else.do.body24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, ptr noundef nonnull %9) #12
  br label %do.body24

do.body24:                                        ; preds = %if.then21, %if.else.do.body24_crit_edge, %if.then19
  %flags = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags, align 8
  %and = and i64 %13, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool25.not = icmp eq i64 %and, 0
  br i1 %tobool25.not, label %do.body24.do.body30_crit_edge, label %if.then26

do.body24.do.body30_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

if.then26:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36) #12
  br label %do.body30

do.body30:                                        ; preds = %if.then26, %do.body24.do.body30_crit_edge
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %flags, align 8
  %and32 = and i64 %15, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %do.body30.do.body38_crit_edge, label %if.then34

do.body30.do.body38_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body38

if.then34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37) #12
  br label %do.body38

do.body38:                                        ; preds = %if.then34, %do.body30.do.body38_crit_edge
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %flags, align 8
  %and40 = and i64 %17, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40)
  %tobool41.not = icmp eq i64 %and40, 0
  br i1 %tobool41.not, label %do.body38.do.body46_crit_edge, label %if.then42

do.body38.do.body46_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46

if.then42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38) #12
  br label %do.body46

do.body46:                                        ; preds = %if.then42, %do.body38.do.body46_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flags, align 8
  %and48 = and i64 %19, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48)
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %do.body46.do.body54_crit_edge, label %if.then50

do.body46.do.body54_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

if.then50:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #12
  br label %do.body54

do.body54:                                        ; preds = %if.then50, %do.body46.do.body54_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %flags, align 8
  %and56 = and i64 %21, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and56)
  %tobool57.not = icmp eq i64 %and56, 0
  br i1 %tobool57.not, label %do.body54.do.body62_crit_edge, label %if.then58

do.body54.do.body62_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

if.then58:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40) #12
  br label %do.body62

do.body62:                                        ; preds = %if.then58, %do.body54.do.body62_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %flags, align 8
  %and64 = and i64 %23, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %do.body62.do.body70_crit_edge, label %if.then66

do.body62.do.body70_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body70

if.then66:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41) #12
  br label %do.body70

do.body70:                                        ; preds = %if.then66, %do.body62.do.body70_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %flags, align 8
  %and72 = and i64 %25, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and72)
  %tobool73.not = icmp eq i64 %and72, 0
  br i1 %tobool73.not, label %do.body70.do.end77_crit_edge, label %if.then74

do.body70.do.end77_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end77

if.then74:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42) #12
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body70.do.end77_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.43) #12
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_bo_create(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_bo_move(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138}
!llvm.named.register.sp = !{!139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 256, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @amdgpu_bo_create_reserved._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @amdgpu_bo_create_reserved._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 265, i32 3}
!10 = !{ptr @amdgpu_bo_create_reserved._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @amdgpu_bo_create_reserved._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 271, i32 3}
!14 = !{ptr @amdgpu_bo_create_reserved._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @amdgpu_bo_create_reserved._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 277, i32 3}
!18 = !{ptr @amdgpu_bo_create_reserved._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @amdgpu_bo_create_reserved._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 287, i32 4}
!22 = !{ptr @amdgpu_bo_create_reserved._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @amdgpu_bo_create_reserved._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 879, i32 6}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 907, i32 4}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 941, i32 3}
!30 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @amdgpu_bo_pin_restricted._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @amdgpu_bo_pin_restricted._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1040, i32 4}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1049, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @amdgpu_bo_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @amdgpu_bo_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1052, i32 2}
!42 = !{ptr @amdgpu_bo_init._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @amdgpu_bo_init._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1297, i32 2}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1452, i32 2}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1453, i32 2}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1455, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1456, i32 2}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1531, i32 15}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1534, i32 15}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1538, i32 15}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1543, i32 16}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1548, i32 17}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1554, i32 17}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1556, i32 17}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1558, i32 2}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1559, i32 2}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1560, i32 2}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1561, i32 2}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1562, i32 2}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1563, i32 2}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1564, i32 2}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1566, i32 14}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!86 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @amdgpu_bo_reserve._entry, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @amdgpu_bo_reserve._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 474, i32 2}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h", i32 286, i32 2}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 116, i32 1}
!98 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!100 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!103 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 551, i32 2}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 552, i32 2}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 565, i32 2}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 569, i32 3}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1009, i32 2}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1010, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1011, i32 2}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1012, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1013, i32 2}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1014, i32 2}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1015, i32 2}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1016, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1017, i32 2}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1018, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1019, i32 2}
!134 = !{ptr @amdgpu_vram_names, !135, !"amdgpu_vram_names", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_object.c", i32 1008, i32 20}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 495, i32 1}
!138 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!139 = !{!"sp"}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{i64 2159268507, i64 2159269014, i64 2159268544, i64 2159268600, i64 2159268634, i64 2159268658, i64 2159268699, i64 2159268720, i64 2159268748, i64 2159268782}
!151 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!152 = !{i8 0, i8 2}
!153 = !{i64 2159280833, i64 2159281340, i64 2159280870, i64 2159280926, i64 2159280960, i64 2159280984, i64 2159281025, i64 2159281046, i64 2159281074, i64 2159281108}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{!"auto-init"}
!156 = !{i64 2148708930}
!157 = !{i64 2148623370, i64 2148623402, i64 2148623431, i64 2148623465, i64 2148623496, i64 2148623519}
!158 = !{i64 2149906703}
!159 = !{i64 2148620905, i64 2148620937, i64 2148620966, i64 2148621000, i64 2148621031, i64 2148621054}
!160 = !{i64 2148356202, i64 2148356207, i64 2148356220, i64 2148356264, i64 2148356298, i64 2148356319}
!161 = !{i64 2158902793}
!162 = !{i64 2158902992}
!163 = !{i64 2149964805}
!164 = !{i64 2149965841}
!165 = !{i64 2159284196, i64 2159284703, i64 2159284233, i64 2159284289, i64 2159284323, i64 2159284347, i64 2159284388, i64 2159284409, i64 2159284437, i64 2159284471}
!166 = !{i64 2159295330, i64 2159295838, i64 2159295367, i64 2159295423, i64 2159295457, i64 2159295481, i64 2159295522, i64 2159295543, i64 2159295571, i64 2159295605}
!167 = !{i64 2159298463, i64 2159298971, i64 2159298500, i64 2159298556, i64 2159298590, i64 2159298614, i64 2159298655, i64 2159298676, i64 2159298704, i64 2159298738}
!168 = !{i64 2159302330, i64 2159302838, i64 2159302367, i64 2159302423, i64 2159302457, i64 2159302481, i64 2159302522, i64 2159302543, i64 2159302571, i64 2159302605}
!169 = !{i64 2159309558, i64 2159310066, i64 2159309595, i64 2159309651, i64 2159309685, i64 2159309709, i64 2159309750, i64 2159309771, i64 2159309799, i64 2159309833}
!170 = !{i64 2159229944}
!171 = !{i64 2159230199}
!172 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
