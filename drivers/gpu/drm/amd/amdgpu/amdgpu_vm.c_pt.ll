; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_vm_update_funcs = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.94, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.94 = type { %union.anon.95, [128 x i64] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
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
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.amdgpu_bo_list_entry = type { %struct.ttm_validate_buffer, ptr, ptr, i32, ptr, i8 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.amdgpu_bo_vm = type { %struct.amdgpu_bo, ptr, %struct.list_head, [0 x %struct.amdgpu_vm_bo_base] }
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
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.rcuwait = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.81, i64, i64, i32, %struct.kref, i32 }
%union.anon.81 = type { i64 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_vm_pt_cursor = type { i64, ptr, ptr, i32 }
%struct.amdgpu_vm_update_params = type { ptr, ptr, i8, i8, ptr, ptr, i32, i8 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_range_mgr_node = type { %struct.ttm_resource, [0 x %struct.drm_mm_node] }
%struct.amdgpu_bo_va = type { %struct.amdgpu_vm_bo_base, i32, ptr, %struct.list_head, %struct.list_head, i8, i8 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.80, i8 }
%union.anon.80 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.amdgpu_bo_va_mapping = type { ptr, %struct.list_head, %struct.rb_node, i64, i64, i64, i64, i64 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.amdgpu_bo_param = type { i32, i32, i32, i32, i32, i64, i32, i8, ptr, ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.amdgpu_prt_cb = type { ptr, %struct.dma_fence_cb }

@amdgpu_vm_debug = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_vm_bo_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2353, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"amdgpu: bo %p va 0x%010Lx-0x%010Lx conflict with 0x%010Lx-0x%010Lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu_vm_bo_map\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_vm_bo_map._entry_ptr = internal global ptr @amdgpu_vm_bo_map._entry, section ".printk_index", align 4
@amdgpu_vm_size = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_vm_adjust_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2817, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: VM size (%d) too large, max is %u GB\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu_vm_adjust_size\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_vm_adjust_size._entry_ptr = internal global ptr @amdgpu_vm_adjust_size._entry, section ".printk_index", align 4
@amdgpu_vm_block_size = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_vm_adjust_size._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 2864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: VMPT only supports 2~4+1 levels\0A\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_vm_adjust_size._entry_ptr.10 = internal global ptr @amdgpu_vm_adjust_size._entry.8, section ".printk_index", align 4
@amdgpu_vm_fragment_size = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_vm_adjust_size._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 2885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016[drm] vm size is %u GB, %u levels, block size is %u-bit, fragment size is %u-bit\0A\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_vm_adjust_size._entry_ptr.13 = internal global ptr @amdgpu_vm_adjust_size._entry.11, section ".printk_index", align 4
@amdgpu_vm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vm->invalidated_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VM update mode is %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPU\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDMA\00", [27 x i8] zeroinitializer }, align 32
@amdgpu_vm_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CPU update of VM recommended only for large BAR system\0A\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_vm_cpu_funcs = external dso_local constant %struct.amdgpu_vm_update_funcs, align 4
@amdgpu_vm_sdma_funcs = external dso_local constant %struct.amdgpu_vm_update_funcs, align 4
@amdgpu_vm_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vm->eviction_lock\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_vm_make_compute.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_vm_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 3175, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: still active bo inside vm\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_vm_fini\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_vm_fini._entry_ptr = internal global ptr @amdgpu_vm_fini._entry, section ".printk_index", align 4
@amdgpu_vm_manager_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&adev->vm_manager.prt_lock\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_vm_fault_stop = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_vm_handle_fault.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 3, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_vm_handle_fault\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed %d to reserve fence slot\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: failed %d to reserve fence slot\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't handle page fault (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09Idle BOs:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09Evicted BOs:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09Relocated BOs:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09Moved BOs:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09Invalidated BOs:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09Done BOs:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09Total idle size:        %12lld\09objs:\09%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09Total evicted size:     %12lld\09objs:\09%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09Total relocated size:   %12lld\09objs:\09%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09Total moved size:       %12lld\09objs:\09%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09Total invalidated size: %12lld\09objs:\09%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09Total done size:        %12lld\09objs:\09%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_vm_flush = external dso_local global %struct.tracepoint, align 4
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", [44 x i8] zeroinitializer }, align 32
@trace_amdgpu_vm_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_vm_update_ptes = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_vm_update_ptes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_amdgpu_vm_bo_update = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_vm_bo_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_amdgpu_vm_bo_mapping = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_vm_bo_mapping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_amdgpu_vm_bo_map = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_vm_bo_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_amdgpu_vm_bo_unmap = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_vm_bo_unmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_amdgpu_vm_bo_cs = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_vm_bo_cs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.48, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@__const.amdgpu_vm_clear_bo.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_vm_bo_update = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32], [40 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_vm_bo_base_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2351, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2816, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2864, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2882, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2929, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2952, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2954, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 2965, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3175, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3215, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3422, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3437, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3471, i32 14 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3480, i32 14 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3489, i32 14 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3498, i32 14 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3507, i32 14 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3517, i32 14 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3526, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3528, i32 16 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3530, i32 16 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3532, i32 16 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3534, i32 16 }
@___asan_gen_.198 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 3536, i32 16 }
@___asan_gen_.204 = private unnamed_addr constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 415, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 108, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 62, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 286, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 179, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 378, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [33 x i8] c"switch.table.amdgpu_vm_bo_update\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [36 x i8] c"switch.table.amdgpu_vm_bo_base_init\00", align 1
@llvm.compiler.used = appending global [63 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_vm_adjust_size._entry, ptr @amdgpu_vm_adjust_size._entry.11, ptr @amdgpu_vm_adjust_size._entry.8, ptr @amdgpu_vm_adjust_size._entry_ptr, ptr @amdgpu_vm_adjust_size._entry_ptr.10, ptr @amdgpu_vm_adjust_size._entry_ptr.13, ptr @amdgpu_vm_bo_map._entry, ptr @amdgpu_vm_bo_map._entry_ptr, ptr @amdgpu_vm_fini._entry, ptr @amdgpu_vm_fini._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @amdgpu_vm_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @amdgpu_vm_init.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @amdgpu_vm_manager_init.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @xa_init_flags.__key, ptr @.str.50, ptr @switch.table.amdgpu_vm_bo_update, ptr @switch.table.amdgpu_vm_bo_base_init], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_bo_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_adjust_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_adjust_size._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_adjust_size._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_manager_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_vm_bo_update to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_vm_bo_base_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_set_pasid(ptr noundef %adev, ptr noundef %vm, i32 noundef %pasid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pasid1 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 17
  %0 = ptrtoint ptr %pasid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pasid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pasid)
  %cmp = icmp eq i32 %1, %pasid
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %pasids = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %pasids) #14
  %call.i = tail call ptr @__xa_erase(ptr noundef %pasids, i32 noundef %1) #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %pasids) #14
  %2 = ptrtoint ptr %call.i to i32
  %and.i.i.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 2
  %cmp.i.i = icmp uge ptr %call.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i = and i1 %cmp.i.i, %cmp.i.i.i
  %shr.i = ashr i32 %2, 2
  %cmp641 = icmp slt ptr %call.i, null
  %cmp6 = and i1 %cmp641, %spec.select.i.i
  br i1 %cmp6, label %if.then3.cleanup_crit_edge, label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %pasid1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pasid1, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pasid)
  %tobool11.not = icmp eq i32 %pasid, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %pasids14 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %pasids14) #14
  %call.i34 = tail call ptr @__xa_store(ptr noundef %pasids14, i32 noundef %pasid, ptr noundef %vm, i32 noundef 3264) #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %pasids14) #14
  %4 = ptrtoint ptr %call.i34 to i32
  %and.i.i.i35 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i35)
  %cmp.i.i.i36 = icmp eq i32 %and.i.i.i35, 2
  %cmp.i.i37 = icmp uge ptr %call.i34, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i38 = and i1 %cmp.i.i37, %cmp.i.i.i36
  %shr.i39 = ashr i32 %4, 2
  %cmp1742 = icmp slt ptr %call.i34, null
  %cmp17 = and i1 %cmp1742, %spec.select.i.i38
  br i1 %cmp17, label %if.then12.cleanup_crit_edge, label %if.end19

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %pasid1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %pasid, ptr %pasid1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then12.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %shr.i, %if.then3.cleanup_crit_edge ], [ %shr.i39, %if.then12.cleanup_crit_edge ], [ 0, %if.end19 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_get_pd_bo(ptr nocapture noundef readonly %vm, ptr noundef %validated, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %priority, align 4
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bo, align 4
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %2, i32 0, i32 4
  %bo2 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1, i32 0, i32 1
  %3 = ptrtoint ptr %bo2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tbo, ptr %bo2, align 4
  %num_shared = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1, i32 0, i32 2
  %4 = ptrtoint ptr %num_shared to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %num_shared, align 4
  %user_pages = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %entry1, i32 0, i32 4
  %5 = ptrtoint ptr %user_pages to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %user_pages, align 4
  %6 = ptrtoint ptr %validated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %validated, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %validated, ptr noundef %7) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry1, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %entry1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %validated, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %validated to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry1, ptr %validated, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_del_from_lru_notify(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @amdgpu_bo_is_amdgpu_bo(ptr noundef %bo) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 13
  %0 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %parent = getelementptr i8, ptr %bo, i32 444
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %vm_bo = getelementptr i8, ptr %bo, i32 440
  %4 = ptrtoint ptr %vm_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %bo_base.023 = load ptr, ptr %vm_bo, align 4
  %tobool7.not24 = icmp eq ptr %bo_base.023, null
  br i1 %tobool7.not24, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %resv = getelementptr i8, ptr %bo, i32 200
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %bo_base.025 = phi ptr [ %bo_base.023, %for.body.lr.ph ], [ %bo_base.0, %if.end14.for.body_crit_edge ]
  %5 = ptrtoint ptr %bo_base.025 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bo_base.025, align 4
  %7 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv, align 8
  %bo9 = getelementptr inbounds %struct.amdgpu_vm, ptr %6, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %bo9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bo9, align 4
  %resv12 = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 4, i32 0, i32 9
  %11 = ptrtoint ptr %resv12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resv12, align 8
  %cmp = icmp eq ptr %8, %12
  br i1 %cmp, label %if.then13, label %for.body.if.end14_crit_edge

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %bulk_moveable = getelementptr inbounds %struct.amdgpu_vm, ptr %6, i32 0, i32 28
  %13 = ptrtoint ptr %bulk_moveable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bulk_moveable, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.body.if.end14_crit_edge
  %next = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.025, i32 0, i32 2
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %14)
  %bo_base.0 = load ptr, ptr %next, align 4
  %tobool7.not = icmp eq ptr %bo_base.0, null
  br i1 %tobool7.not, label %if.end14.cleanup_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_bo_is_amdgpu_bo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_move_to_lru_tail(ptr noundef %adev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk_moveable = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 28
  %0 = ptrtoint ptr %bulk_moveable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bulk_moveable, align 8, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lru_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock) #14
  %lru_bulk_move = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 27
  tail call void @ttm_bo_bulk_move_lru_tail(ptr noundef %lru_bulk_move) #14
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock) #14
  br label %cleanup32

if.end:                                           ; preds = %entry
  %lru_bulk_move4 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 27
  %2 = call ptr @memset(ptr %lru_bulk_move4, i32 0, i32 64)
  %lru_lock7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock7) #14
  %idle = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 7
  %3 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn52 = load ptr, ptr %idle, align 4
  %cmp.not53 = icmp eq ptr %.pn52, %idle
  br i1 %cmp.not53, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn54 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn52, %if.end.for.body_crit_edge ]
  %bo9 = getelementptr i8, ptr %.pn54, i32 -8
  %4 = ptrtoint ptr %bo9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo9, align 4
  %type.i = getelementptr inbounds %struct.amdgpu_bo, ptr %5, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.amdgpu_bo_shadowed.exit_crit_edge

for.body.amdgpu_bo_shadowed.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_bo_shadowed.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %shadow.i = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shadow.i, align 8
  br label %amdgpu_bo_shadowed.exit

amdgpu_bo_shadowed.exit:                          ; preds = %if.then.i, %for.body.amdgpu_bo_shadowed.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.then.i ], [ null, %for.body.amdgpu_bo_shadowed.exit_crit_edge ]
  %parent = getelementptr inbounds %struct.amdgpu_bo, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %amdgpu_bo_shadowed.exit.cleanup_crit_edge, label %if.end12

amdgpu_bo_shadowed.exit.cleanup_crit_edge:        ; preds = %amdgpu_bo_shadowed.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %amdgpu_bo_shadowed.exit
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %5, i32 0, i32 4
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %5, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %13, ptr noundef %lru_bulk_move4) #14
  %tobool15.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.then16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %tbo17 = getelementptr inbounds %struct.amdgpu_bo, ptr %retval.0.i, i32 0, i32 4
  %resource19 = getelementptr inbounds %struct.amdgpu_bo, ptr %retval.0.i, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %resource19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource19, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo17, ptr noundef %15, ptr noundef %lru_bulk_move4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %amdgpu_bo_shadowed.exit.cleanup_crit_edge
  %16 = ptrtoint ptr %.pn54 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn54, align 4
  %cmp.not = icmp eq ptr %.pn, %idle
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock7) #14
  %17 = ptrtoint ptr %bulk_moveable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %bulk_moveable, align 8
  br label %cleanup32

cleanup32:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_bulk_move_lru_tail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_validate_pt_bos(ptr nocapture noundef readnone %adev, ptr noundef %vm, ptr nocapture noundef readonly %validate, ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %evicted = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 4
  %0 = ptrtoint ptr %evicted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %evicted, align 4
  %cmp.i = icmp eq ptr %1, %evicted
  %bulk_moveable = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 28
  %2 = ptrtoint ptr %bulk_moveable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bulk_moveable, align 8, !range !130
  %4 = zext i1 %cmp.i to i8
  %5 = and i8 %3, %4
  store i8 %5, ptr %bulk_moveable, align 8
  br i1 %cmp.i, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %update_funcs = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn.in80 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn83, %cleanup.for.body_crit_edge ]
  %bo_base.082 = getelementptr i8, ptr %.pn.in80, i32 -12
  %6 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn83 = load ptr, ptr %.pn.in80, align 4
  %bo11 = getelementptr i8, ptr %.pn.in80, i32 -8
  %7 = ptrtoint ptr %bo11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bo11, align 4
  %type.i = getelementptr inbounds %struct.amdgpu_bo, ptr %8, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i61 = icmp eq i32 %10, 1
  br i1 %cmp.i61, label %amdgpu_bo_shadowed.exit, label %amdgpu_bo_shadowed.exit.thread

amdgpu_bo_shadowed.exit:                          ; preds = %for.body
  %shadow.i = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shadow.i, align 8
  %call13 = tail call i32 %validate(ptr noundef %param, ptr noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end, label %amdgpu_bo_shadowed.exit.cleanup36_crit_edge

amdgpu_bo_shadowed.exit.cleanup36_crit_edge:      ; preds = %amdgpu_bo_shadowed.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

amdgpu_bo_shadowed.exit.thread:                   ; preds = %for.body
  %call1370 = tail call i32 %validate(ptr noundef %param, ptr noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1370)
  %tobool14.not71 = icmp eq i32 %call1370, 0
  br i1 %tobool14.not71, label %amdgpu_bo_shadowed.exit.thread.if.end21_crit_edge, label %amdgpu_bo_shadowed.exit.thread.cleanup36_crit_edge

amdgpu_bo_shadowed.exit.thread.cleanup36_crit_edge: ; preds = %amdgpu_bo_shadowed.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

amdgpu_bo_shadowed.exit.thread.if.end21_crit_edge: ; preds = %amdgpu_bo_shadowed.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.end:                                           ; preds = %amdgpu_bo_shadowed.exit
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.end.if.end21_crit_edge, label %if.then16

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then16:                                        ; preds = %if.end
  %call17 = tail call i32 %validate(ptr noundef %param, ptr noundef nonnull %12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then16.cleanup36_crit_edge

if.then16.cleanup36_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.end.if.end21_crit_edge, %amdgpu_bo_shadowed.exit.thread.if.end21_crit_edge
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp22.not = icmp eq i32 %14, 1
  br i1 %cmp22.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end21
  %15 = ptrtoint ptr %bo_base.082 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo_base.082, align 4
  %moved.i = getelementptr inbounds %struct.amdgpu_vm, ptr %16, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in80) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then24.__list_del_entry.exit.i.i_crit_edge

if.then24.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %.pn.in80, i32 4
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in80, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then24.__list_del_entry.exit.i.i_crit_edge
  %23 = ptrtoint ptr %moved.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %moved.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in80, ptr noundef %moved.i, ptr noundef %24) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.cleanup_crit_edge

__list_del_entry.exit.i.i.cleanup_crit_edge:      ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.pn.in80, ptr %prev1.i.i2.i.i, align 4
  %26 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %.pn.in80, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn.in80, i32 4
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %moved.i, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %moved.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %.pn.in80, ptr %moved.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %update_funcs, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call28 = tail call i32 %32(ptr noundef %8) #14
  tail call fastcc void @amdgpu_vm_bo_relocated(ptr noundef %bo_base.082)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.cleanup_crit_edge
  %cmp.not = icmp eq ptr %.pn83, %evicted
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %eviction_lock.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %eviction_lock.i, i32 noundef 0) #14
  %33 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %38, 2048
  %or.i.i = or i32 %38, 2048
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %saved_flags.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 3
  %39 = ptrtoint ptr %saved_flags.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i.i, ptr %saved_flags.i, align 8
  %evicting = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 2
  %40 = ptrtoint ptr %evicting to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %evicting, align 4
  %41 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i63 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i63 to ptr
  %task.i.i64 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i.i64, align 8
  %flags1.i.i65 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %flags1.i.i65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags1.i.i65, align 4
  %and.i.i66 = and i32 %46, -2049
  %or.i.i67 = or i32 %and.i.i66, %and.i.i
  store i32 %or.i.i67, ptr %flags1.i.i65, align 4
  tail call void @mutex_unlock(ptr noundef %eviction_lock.i) #14
  br label %cleanup36

cleanup36:                                        ; preds = %for.end, %if.then16.cleanup36_crit_edge, %amdgpu_bo_shadowed.exit.thread.cleanup36_crit_edge, %amdgpu_bo_shadowed.exit.cleanup36_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ %call13, %amdgpu_bo_shadowed.exit.cleanup36_crit_edge ], [ %call17, %if.then16.cleanup36_crit_edge ], [ %call1370, %amdgpu_bo_shadowed.exit.thread.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_vm_bo_relocated(ptr noundef %vm_bo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bo = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %vm_bo, i32 0, i32 1
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %parent = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %3, null
  %vm_status.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %vm_bo, i32 0, i32 3
  %4 = ptrtoint ptr %vm_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_bo, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %relocated = getelementptr inbounds %struct.amdgpu_vm, ptr %5, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %vm_bo, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_status.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %12 = ptrtoint ptr %relocated to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %relocated, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i, ptr noundef %relocated, ptr noundef %13) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end_crit_edge

__list_del_entry.exit.i.if.end_crit_edge:         ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vm_status.i, ptr %prev1.i.i2.i, align 4
  %15 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %vm_status.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %vm_bo, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %relocated, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %relocated to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %vm_status.i, ptr %relocated, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %idle.i = getelementptr inbounds %struct.amdgpu_vm, ptr %5, i32 0, i32 7
  %call.i.i.i4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i) #14
  br i1 %call.i.i.i4, label %if.end.i.i.i5, label %if.else.__list_del_entry.exit.i.i_crit_edge

if.else.__list_del_entry.exit.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i5:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %vm_bo, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vm_status.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i5, %if.else.__list_del_entry.exit.i.i_crit_edge
  %24 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %idle.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i, ptr noundef %idle.i, ptr noundef %25) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.amdgpu_vm_bo_idle.exit_crit_edge

__list_del_entry.exit.i.i.amdgpu_vm_bo_idle.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_bo_idle.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vm_status.i, ptr %prev1.i.i2.i.i, align 4
  %27 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %vm_status.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %vm_bo, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %idle.i, ptr %prev3.i.i.i.i, align 4
  %29 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %vm_status.i, ptr %idle.i, align 4
  br label %amdgpu_vm_bo_idle.exit

amdgpu_vm_bo_idle.exit:                           ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.amdgpu_vm_bo_idle.exit_crit_edge
  %moved.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %vm_bo, i32 0, i32 4
  %30 = ptrtoint ptr %moved.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %moved.i, align 4
  br label %if.end

if.end:                                           ; preds = %amdgpu_vm_bo_idle.exit, %if.end.i.i.i, %__list_del_entry.exit.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_vm_ready(ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eviction_lock.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %eviction_lock.i, i32 noundef 0) #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %5, 2048
  %or.i.i = or i32 %5, 2048
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %saved_flags.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 3
  %6 = ptrtoint ptr %saved_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i.i, ptr %saved_flags.i, align 8
  %evicting = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 2
  %7 = ptrtoint ptr %evicting to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %evicting, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i7 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i7 to ptr
  %task.i.i8 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i8, align 8
  %flags1.i.i9 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags1.i.i9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags1.i.i9, align 4
  %and.i.i10 = and i32 %14, -2049
  %or.i.i11 = or i32 %and.i.i10, %and.i.i
  store i32 %or.i.i11, ptr %flags1.i.i9, align 4
  tail call void @mutex_unlock(ptr noundef %eviction_lock.i) #14
  br i1 %tobool.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %evicted = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 4
  %15 = ptrtoint ptr %evicted to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %evicted, align 4
  %cmp.i = icmp eq ptr %16, %evicted
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %17 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp.i, %land.rhs ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_check_compute_bug(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %adev, i32 noundef 6) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then:                                          ; preds = %entry
  %version = getelementptr inbounds %struct.amdgpu_ip_block, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %version, align 4
  %major = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %if.then.if.end10_crit_edge, label %if.else

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp4 = icmp eq i32 %3, 8
  br i1 %cmp4, label %if.then5, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %mec_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 18
  %4 = ptrtoint ptr %mec_fw_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mec_fw_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 673, i32 %5)
  %cmp6 = icmp ult i32 %5, 673
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.else.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %has_compute_vm_bug.0.off0 = phi i1 [ false, %if.else.if.end10_crit_edge ], [ false, %entry.if.end10_crit_edge ], [ true, %if.then.if.end10_crit_edge ], [ %cmp6, %if.then5 ]
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 89
  %6 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1128.not = icmp eq i32 %7, 0
  br i1 %cmp1128.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 90, i32 %i.029
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12 = icmp eq i32 %13, 1
  %narrow = select i1 %cmp12, i1 %has_compute_vm_bug.0.off0, i1 false
  %spec.select = zext i1 %narrow to i8
  %14 = getelementptr inbounds %struct.amdgpu_ring, ptr %9, i32 0, i32 39
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select, ptr %14, align 4
  %inc = add nuw i32 %i.029, 1
  %16 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_rings, align 8
  %cmp11 = icmp ult i32 %inc, %17
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_device_ip_get_ip_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_vm_need_pipeline_sync(ptr nocapture noundef readonly %ring, ptr nocapture noundef readonly %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %vm_needs_flush = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 10
  %6 = ptrtoint ptr %vm_needs_flush to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vm_needs_flush, align 8, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %has_compute_vm_bug = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 39
  %8 = ptrtoint ptr %has_compute_vm_bug to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_compute_vm_bug, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4 = icmp ne i8 %9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %10 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool4, %lor.rhs ]
  %vmid = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %11 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vmid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %lor.end.cleanup_crit_edge, label %if.end

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %arrayidx6 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %12
  %emit_gds_switch = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 19
  %13 = ptrtoint ptr %emit_gds_switch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %emit_gds_switch, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %if.end.land.end_crit_edge, label %land.rhs

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %if.end
  %gds_base = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %12, i32 7
  %15 = ptrtoint ptr %gds_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gds_base, align 8
  %gds_base9 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 14
  %17 = ptrtoint ptr %gds_base9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gds_base9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp10.not = icmp eq i32 %16, %18
  br i1 %cmp10.not, label %lor.lhs.false, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.lhs.false:                                    ; preds = %land.rhs
  %gds_size = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %12, i32 8
  %19 = ptrtoint ptr %gds_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gds_size, align 4
  %gds_size11 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 15
  %21 = ptrtoint ptr %gds_size11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gds_size11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp12.not = icmp eq i32 %20, %22
  br i1 %cmp12.not, label %lor.lhs.false13, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %gws_base = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %12, i32 9
  %23 = ptrtoint ptr %gws_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gws_base, align 8
  %gws_base14 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 16
  %25 = ptrtoint ptr %gws_base14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gws_base14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp15.not = icmp eq i32 %24, %26
  br i1 %cmp15.not, label %lor.lhs.false16, label %lor.lhs.false13.land.end_crit_edge

lor.lhs.false13.land.end_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %gws_size = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %12, i32 10
  %27 = ptrtoint ptr %gws_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gws_size, align 4
  %gws_size17 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 17
  %29 = ptrtoint ptr %gws_size17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gws_size17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp18.not = icmp eq i32 %28, %30
  br i1 %cmp18.not, label %lor.lhs.false19, label %lor.lhs.false16.land.end_crit_edge

lor.lhs.false16.land.end_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %oa_base = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %12, i32 11
  %31 = ptrtoint ptr %oa_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %oa_base, align 8
  %oa_base20 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 18
  %33 = ptrtoint ptr %oa_base20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %oa_base20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp21.not = icmp eq i32 %32, %34
  br i1 %cmp21.not, label %lor.rhs22, label %lor.lhs.false19.land.end_crit_edge

lor.lhs.false19.land.end_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.rhs22:                                        ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #16
  %oa_size = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %12, i32 12
  %35 = ptrtoint ptr %oa_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oa_size, align 4
  %oa_size23 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 19
  %37 = ptrtoint ptr %oa_size23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oa_size23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp24 = icmp ne i32 %36, %38
  br label %land.end

land.end:                                         ; preds = %lor.rhs22, %lor.lhs.false19.land.end_crit_edge, %lor.lhs.false16.land.end_crit_edge, %lor.lhs.false13.land.end_crit_edge, %lor.lhs.false.land.end_crit_edge, %land.rhs.land.end_crit_edge, %if.end.land.end_crit_edge
  %39 = phi i1 [ false, %if.end.land.end_crit_edge ], [ true, %lor.lhs.false19.land.end_crit_edge ], [ true, %lor.lhs.false16.land.end_crit_edge ], [ true, %lor.lhs.false13.land.end_crit_edge ], [ true, %lor.lhs.false.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ %cmp24, %lor.rhs22 ]
  %call = tail call zeroext i1 @amdgpu_vmid_had_gpu_reset(ptr noundef %1, ptr noundef %arrayidx6) #14
  br i1 %call, label %land.end.cleanup_crit_edge, label %if.end28

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  %spec.select = select i1 %10, i1 true, i1 %39
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.end.cleanup_crit_edge, %lor.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %spec.select, %if.end28 ], [ false, %lor.end.cleanup_crit_edge ], [ true, %land.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_vmid_had_gpu_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_flush(ptr noundef %ring, ptr nocapture noundef readonly %job, i1 noundef zeroext %need_pipe_sync) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
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
  %vmid = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %6 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vmid, align 8
  %arrayidx4 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7
  %emit_gds_switch = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %emit_gds_switch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emit_gds_switch, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  %gds_base = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 7
  %10 = ptrtoint ptr %gds_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gds_base, align 8
  %gds_base6 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 14
  %12 = ptrtoint ptr %gds_base6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gds_base6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  br i1 %cmp.not, label %lor.lhs.false, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.lhs.false:                                    ; preds = %land.rhs
  %gds_size = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 8
  %14 = ptrtoint ptr %gds_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gds_size, align 4
  %gds_size7 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 15
  %16 = ptrtoint ptr %gds_size7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gds_size7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp8.not = icmp eq i32 %15, %17
  br i1 %cmp8.not, label %lor.lhs.false9, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %gws_base = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 9
  %18 = ptrtoint ptr %gws_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gws_base, align 8
  %gws_base10 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 16
  %20 = ptrtoint ptr %gws_base10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gws_base10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp11.not = icmp eq i32 %19, %21
  br i1 %cmp11.not, label %lor.lhs.false12, label %lor.lhs.false9.land.end_crit_edge

lor.lhs.false9.land.end_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %gws_size = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 10
  %22 = ptrtoint ptr %gws_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gws_size, align 4
  %gws_size13 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 17
  %24 = ptrtoint ptr %gws_size13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gws_size13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp14.not = icmp eq i32 %23, %25
  br i1 %cmp14.not, label %lor.lhs.false15, label %lor.lhs.false12.land.end_crit_edge

lor.lhs.false12.land.end_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %oa_base = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 11
  %26 = ptrtoint ptr %oa_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oa_base, align 8
  %oa_base16 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 18
  %28 = ptrtoint ptr %oa_base16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %oa_base16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp17.not = icmp eq i32 %27, %29
  br i1 %cmp17.not, label %lor.rhs, label %lor.lhs.false15.land.end_crit_edge

lor.lhs.false15.land.end_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

lor.rhs:                                          ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #16
  %oa_size = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 12
  %30 = ptrtoint ptr %oa_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %oa_size, align 4
  %oa_size18 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 19
  %32 = ptrtoint ptr %oa_size18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oa_size18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp19 = icmp ne i32 %31, %33
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %lor.lhs.false15.land.end_crit_edge, %lor.lhs.false12.land.end_crit_edge, %lor.lhs.false9.land.end_crit_edge, %lor.lhs.false.land.end_crit_edge, %land.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %34 = phi i1 [ false, %entry.land.end_crit_edge ], [ true, %lor.lhs.false15.land.end_crit_edge ], [ true, %lor.lhs.false12.land.end_crit_edge ], [ true, %lor.lhs.false9.land.end_crit_edge ], [ true, %lor.lhs.false.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ %cmp19, %lor.rhs ]
  %vm_needs_flush = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 10
  %35 = ptrtoint ptr %vm_needs_flush to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %vm_needs_flush, align 8, !range !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #14
  %37 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %fence, align 4
  %vm = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 1
  %38 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vm, align 8
  %tobool23.not = icmp eq ptr %39, null
  br i1 %tobool23.not, label %land.end.if.end_crit_edge, label %land.rhs24

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs24:                                       ; preds = %land.end
  %arrayidx26 = getelementptr %struct.amdgpu_vm, ptr %39, i32 0, i32 18, i32 %5
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx26, align 4
  %cmp27.not = icmp eq ptr %41, null
  br i1 %cmp27.not, label %land.rhs24.if.end_crit_edge, label %land.lhs.true

land.rhs24.if.end_crit_edge:                      ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %land.rhs24
  %funcs31 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %42 = ptrtoint ptr %funcs31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %funcs31, align 4
  %update_spm_vmid = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %update_spm_vmid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %update_spm_vmid, align 4
  %tobool32.not = icmp eq ptr %45, null
  br i1 %tobool32.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %45(ptr noundef %1, i32 noundef %7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %land.rhs24.if.end_crit_edge, %land.end.if.end_crit_edge
  %call = tail call zeroext i1 @amdgpu_vmid_had_gpu_reset(ptr noundef %1, ptr noundef %arrayidx4) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %extract.t = icmp ne i8 %36, 0
  %gds_switch_needed.0.off0 = select i1 %call, i1 true, i1 %34
  %vm_flush_needed.0.off0 = select i1 %call, i1 true, i1 %extract.t
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #14
  %pasid = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 13
  %46 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pasid, align 8
  %pasid40 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 13
  %48 = ptrtoint ptr %pasid40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pasid40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp41.not = icmp eq i32 %47, %49
  br i1 %cmp41.not, label %lor.lhs.false42, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

lor.lhs.false42:                                  ; preds = %if.end
  %pasid_mapping = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 14
  %50 = ptrtoint ptr %pasid_mapping to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pasid_mapping, align 4
  %tobool43.not = icmp eq ptr %51, null
  br i1 %tobool43.not, label %lor.lhs.false42.if.end48_crit_edge, label %lor.lhs.false44

lor.lhs.false42.if.end48_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false44.if.end48_crit_edge

lor.lhs.false44.if.end48_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.end.i:                                         ; preds = %lor.lhs.false44
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i, label %if.end.i.if.end48_crit_edge, label %land.lhs.true.i

if.end.i.if.end48_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %57(ptr noundef nonnull %51) #14
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.end48_crit_edge

land.lhs.true.i.if.end48_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %51) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then5.i, %land.lhs.true.i.if.end48_crit_edge, %if.end.i.if.end48_crit_edge, %lor.lhs.false44.if.end48_crit_edge, %lor.lhs.false42.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %pasid_mapping_needed.1.off0.shrunk = phi i1 [ true, %land.lhs.true.i.if.end48_crit_edge ], [ true, %if.end.i.if.end48_crit_edge ], [ true, %lor.lhs.false42.if.end48_crit_edge ], [ true, %if.end.if.end48_crit_edge ], [ %call, %if.then5.i ], [ %call, %lor.lhs.false44.if.end48_crit_edge ]
  %pasid_mapping_needed.1.off0 = zext i1 %pasid_mapping_needed.1.off0.shrunk to i32
  tail call void @mutex_unlock(ptr noundef %arrayidx) #14
  %58 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs, align 4
  %emit_gds_switch51 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %emit_gds_switch51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %emit_gds_switch51, align 4
  %tobool52 = icmp ne ptr %61, null
  %and307 = and i1 %gds_switch_needed.0.off0, %tobool52
  %emit_vm_flush = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %59, i32 0, i32 17
  %62 = ptrtoint ptr %emit_vm_flush to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %emit_vm_flush, align 4
  %tobool58.not = icmp eq ptr %63, null
  br i1 %tobool58.not, label %if.end48.land.end62_crit_edge, label %land.rhs59

if.end48.land.end62_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end62

land.rhs59:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %vm_pd_addr = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 11
  %64 = ptrtoint ptr %vm_pd_addr to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %vm_pd_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %65)
  %cmp60 = icmp ne i64 %65, 2147483647
  %phi.cast = zext i1 %cmp60 to i32
  br label %land.end62

land.end62:                                       ; preds = %land.rhs59, %if.end48.land.end62_crit_edge
  %66 = phi i32 [ 0, %if.end48.land.end62_crit_edge ], [ %phi.cast, %land.rhs59 ]
  %conv64 = zext i1 %vm_flush_needed.0.off0 to i32
  %and65 = and i32 %66, %conv64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %67 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %gmc_funcs, align 4
  %emit_pasid_mapping = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %emit_pasid_mapping to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %emit_pasid_mapping, align 4
  %tobool68.not = icmp eq ptr %70, null
  br i1 %tobool68.not, label %land.end62.land.end72_crit_edge, label %land.rhs69

land.end62.land.end72_crit_edge:                  ; preds = %land.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end72

land.rhs69:                                       ; preds = %land.end62
  call void @__sanitizer_cov_trace_pc() #16
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %59, i32 0, i32 33
  %71 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %emit_wreg, align 4
  %tobool71 = icmp ne ptr %72, null
  %phi.cast308 = zext i1 %tobool71 to i32
  br label %land.end72

land.end72:                                       ; preds = %land.rhs69, %land.end62.land.end72_crit_edge
  %73 = phi i32 [ 0, %land.end62.land.end72_crit_edge ], [ %phi.cast308, %land.rhs69 ]
  %and76 = and i32 %73, %pasid_mapping_needed.1.off0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %tobool66.not.not = xor i1 %tobool66.not, true
  %brmerge = select i1 %tobool66.not.not, i1 true, i1 %and307
  %brmerge309 = or i1 %brmerge, %need_pipe_sync
  br i1 %brmerge309, label %if.end85, label %land.end72.cleanup_crit_edge

land.end72.cleanup_crit_edge:                     ; preds = %land.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end85:                                         ; preds = %land.end72
  %init_cond_exec = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %59, i32 0, i32 26
  %74 = ptrtoint ptr %init_cond_exec to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_cond_exec, align 4
  %tobool87.not = icmp eq ptr %75, null
  br i1 %tobool87.not, label %if.end85.if.end92_crit_edge, label %if.then88

if.end85.if.end92_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  %call91 = tail call i32 %75(ptr noundef %ring) #14
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end85.if.end92_crit_edge
  %patch_offset.0 = phi i32 [ %call91, %if.then88 ], [ 0, %if.end85.if.end92_crit_edge ]
  br i1 %need_pipe_sync, label %if.then94, label %if.end92.if.end96_crit_edge

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %funcs, align 4
  %emit_pipeline_sync = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %emit_pipeline_sync to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %emit_pipeline_sync, align 4
  tail call void %79(ptr noundef %ring) #14
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end92.if.end96_crit_edge
  br i1 %tobool66.not, label %if.end105, label %if.end105.thread

if.end105:                                        ; preds = %if.end96
  br i1 %tobool77.not, label %if.end105.if.end143_crit_edge, label %if.end105.if.end114.thread_crit_edge

if.end105.if.end114.thread_crit_edge:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114.thread

if.end105.if.end143_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

if.end105.thread:                                 ; preds = %if.end96
  %80 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vmid, align 8
  %vm_pd_addr100 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 11
  %82 = ptrtoint ptr %vm_pd_addr100 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %vm_pd_addr100, align 8
  tail call fastcc void @trace_amdgpu_vm_flush(ptr noundef %ring, i32 noundef %81, i64 noundef %83)
  %84 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %funcs, align 4
  %emit_vm_flush102 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %85, i32 0, i32 17
  %86 = ptrtoint ptr %emit_vm_flush102 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %emit_vm_flush102, align 4
  %88 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vmid, align 8
  %90 = ptrtoint ptr %vm_pd_addr100 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %vm_pd_addr100, align 8
  tail call void %87(ptr noundef %ring, i32 noundef %89, i64 noundef %91) #14
  br i1 %tobool77.not, label %if.end105.thread.if.then120_crit_edge, label %if.end105.thread.if.end114.thread_crit_edge

if.end105.thread.if.end114.thread_crit_edge:      ; preds = %if.end105.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114.thread

if.end105.thread.if.then120_crit_edge:            ; preds = %if.end105.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then120

if.end114.thread:                                 ; preds = %if.end105.thread.if.end114.thread_crit_edge, %if.end105.if.end114.thread_crit_edge
  %92 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ring, align 8
  %gmc_funcs110 = getelementptr inbounds %struct.amdgpu_device, ptr %93, i32 0, i32 62, i32 38
  %94 = ptrtoint ptr %gmc_funcs110 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %gmc_funcs110, align 4
  %emit_pasid_mapping111 = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %emit_pasid_mapping111 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %emit_pasid_mapping111, align 4
  %98 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %vmid, align 8
  %100 = ptrtoint ptr %pasid40 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pasid40, align 4
  tail call void %97(ptr noundef %ring, i32 noundef %99, i32 noundef %101) #14
  br label %if.then120

if.then120:                                       ; preds = %if.end114.thread, %if.end105.thread.if.then120_crit_edge
  %call121 = call i32 @amdgpu_fence_emit(ptr noundef %ring, ptr noundef nonnull %fence, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end125, label %if.then120.cleanup_crit_edge

if.then120.cleanup_crit_edge:                     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end125:                                        ; preds = %if.then120
  br i1 %tobool66.not, label %if.end125.if.end133_crit_edge, label %if.then127

if.end125.if.end133_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.then127:                                       ; preds = %if.end125
  call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #14
  %last_flush = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 2
  %102 = ptrtoint ptr %last_flush to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %last_flush, align 4
  %tobool.not.i313 = icmp eq ptr %103, null
  br i1 %tobool.not.i313, label %if.then127.dma_fence_put.exit_crit_edge, label %if.then.i

if.then127.dma_fence_put.exit_crit_edge:          ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.then127
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %103, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %104 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !133

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  call void @dma_fence_release(ptr noundef %refcount.i) #14
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.then127.dma_fence_put.exit_crit_edge
  %105 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fence, align 4
  %tobool.not.i315 = icmp eq ptr %106, null
  br i1 %tobool.not.i315, label %dma_fence_put.exit.dma_fence_get.exit_crit_edge, label %if.then.i318

dma_fence_put.exit.dma_fence_get.exit_crit_edge:  ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_get.exit

if.then.i318:                                     ; preds = %dma_fence_put.exit
  %refcount.i316 = getelementptr inbounds %struct.dma_fence, ptr %106, i32 0, i32 6
  %call.i.i.i.i.i.i.i317 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i316, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refcount.i316, i32 1, i32 3, i32 1) #14
  %107 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i316, ptr %refcount.i316, i32 1, ptr elementtype(i32) %refcount.i316) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i318.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !136

if.then.i318.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i318
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i318
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %108 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %.not.i.i.i.i.i319 = icmp sgt i32 %108, -1
  br i1 %.not.i.i.i.i.i319, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !133

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i318.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i318.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i316, i32 noundef %.sink.i.i.i.i.i) #14
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %dma_fence_put.exit.dma_fence_get.exit_crit_edge
  %109 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %last_flush, align 4
  %gpu_reset_counter = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 74
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %gpu_reset_counter, i32 noundef 4) #14
  %110 = ptrtoint ptr %gpu_reset_counter to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %gpu_reset_counter, align 4
  %current_gpu_reset_count = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 6
  %112 = ptrtoint ptr %current_gpu_reset_count to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %current_gpu_reset_count, align 4
  call void @mutex_unlock(ptr noundef %arrayidx) #14
  br label %if.end133

if.end133:                                        ; preds = %dma_fence_get.exit, %if.end125.if.end133_crit_edge
  br i1 %tobool77.not, label %if.end133.if.end143_crit_edge, label %if.then135

if.end133.if.end143_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

if.then135:                                       ; preds = %if.end133
  call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #14
  %113 = ptrtoint ptr %pasid40 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pasid40, align 4
  %115 = ptrtoint ptr %pasid to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %pasid, align 8
  %pasid_mapping139 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 14
  %116 = ptrtoint ptr %pasid_mapping139 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pasid_mapping139, align 4
  %tobool.not.i321 = icmp eq ptr %117, null
  br i1 %tobool.not.i321, label %if.then135.dma_fence_put.exit332_crit_edge, label %if.then.i326

if.then135.dma_fence_put.exit332_crit_edge:       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit332

if.then.i326:                                     ; preds = %if.then135
  %refcount.i322 = getelementptr inbounds %struct.dma_fence, ptr %117, i32 0, i32 6
  %call.i.i.i.i.i.i.i323 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i322, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcount.i322, i32 1, i32 3, i32 1) #14
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i322, ptr %refcount.i322, i32 1, ptr elementtype(i32) %refcount.i322) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i324 = extractvalue { i32, i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i324)
  %cmp.i.i.i.i.i325 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i324, 1
  br i1 %cmp.i.i.i.i.i325, label %if.then.i.i330, label %if.end5.i.i.i.i.i328

if.end5.i.i.i.i.i328:                             ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i324)
  %.not.i.i.i.i.i327 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i324, 0
  br i1 %.not.i.i.i.i.i327, label %if.end5.i.i.i.i.i328.dma_fence_put.exit332_crit_edge, label %if.then10.i.i.i.i.i329, !prof !133

if.end5.i.i.i.i.i328.dma_fence_put.exit332_crit_edge: ; preds = %if.end5.i.i.i.i.i328
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit332

if.then10.i.i.i.i.i329:                           ; preds = %if.end5.i.i.i.i.i328
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i322, i32 noundef 3) #14
  br label %dma_fence_put.exit332

if.then.i.i330:                                   ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  call void @dma_fence_release(ptr noundef %refcount.i322) #14
  br label %dma_fence_put.exit332

dma_fence_put.exit332:                            ; preds = %if.then.i.i330, %if.then10.i.i.i.i.i329, %if.end5.i.i.i.i.i328.dma_fence_put.exit332_crit_edge, %if.then135.dma_fence_put.exit332_crit_edge
  %119 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fence, align 4
  %tobool.not.i333 = icmp eq ptr %120, null
  br i1 %tobool.not.i333, label %dma_fence_put.exit332.dma_fence_get.exit345_crit_edge, label %if.then.i338

dma_fence_put.exit332.dma_fence_get.exit345_crit_edge: ; preds = %dma_fence_put.exit332
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_get.exit345

if.then.i338:                                     ; preds = %dma_fence_put.exit332
  %refcount.i334 = getelementptr inbounds %struct.dma_fence, ptr %120, i32 0, i32 6
  %call.i.i.i.i.i.i.i335 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i334, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refcount.i334, i32 1, i32 3, i32 1) #14
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i334, ptr %refcount.i334, i32 1, ptr elementtype(i32) %refcount.i334) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i.i336 = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i336)
  %tobool1.not.i.i.i.i.i337 = icmp eq i32 %asmresult.i.i.i.i.i.i.i336, 0
  br i1 %tobool1.not.i.i.i.i.i337, label %if.then.i338.if.end15.sink.split.i.i.i.i.i343_crit_edge, label %if.else.i.i.i.i.i341, !prof !136

if.then.i338.if.end15.sink.split.i.i.i.i.i343_crit_edge: ; preds = %if.then.i338
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i343

if.else.i.i.i.i.i341:                             ; preds = %if.then.i338
  %add.i.i.i.i.i339 = add i32 %asmresult.i.i.i.i.i.i.i336, 1
  %122 = or i32 %add.i.i.i.i.i339, %asmresult.i.i.i.i.i.i.i336
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %122)
  %.not.i.i.i.i.i340 = icmp sgt i32 %122, -1
  br i1 %.not.i.i.i.i.i340, label %if.else.i.i.i.i.i341.dma_fence_get.exit345_crit_edge, label %if.else.i.i.i.i.i341.if.end15.sink.split.i.i.i.i.i343_crit_edge, !prof !133

if.else.i.i.i.i.i341.if.end15.sink.split.i.i.i.i.i343_crit_edge: ; preds = %if.else.i.i.i.i.i341
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i343

if.else.i.i.i.i.i341.dma_fence_get.exit345_crit_edge: ; preds = %if.else.i.i.i.i.i341
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_get.exit345

if.end15.sink.split.i.i.i.i.i343:                 ; preds = %if.else.i.i.i.i.i341.if.end15.sink.split.i.i.i.i.i343_crit_edge, %if.then.i338.if.end15.sink.split.i.i.i.i.i343_crit_edge
  %.sink.i.i.i.i.i342 = phi i32 [ 2, %if.then.i338.if.end15.sink.split.i.i.i.i.i343_crit_edge ], [ 1, %if.else.i.i.i.i.i341.if.end15.sink.split.i.i.i.i.i343_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i334, i32 noundef %.sink.i.i.i.i.i342) #14
  br label %dma_fence_get.exit345

dma_fence_get.exit345:                            ; preds = %if.end15.sink.split.i.i.i.i.i343, %if.else.i.i.i.i.i341.dma_fence_get.exit345_crit_edge, %dma_fence_put.exit332.dma_fence_get.exit345_crit_edge
  %123 = ptrtoint ptr %pasid_mapping139 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %pasid_mapping139, align 4
  call void @mutex_unlock(ptr noundef %arrayidx) #14
  br label %if.end143

if.end143:                                        ; preds = %dma_fence_get.exit345, %if.end133.if.end143_crit_edge, %if.end105.if.end143_crit_edge
  %124 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fence, align 4
  %tobool.not.i346 = icmp eq ptr %125, null
  br i1 %tobool.not.i346, label %if.end143.dma_fence_put.exit357_crit_edge, label %if.then.i351

if.end143.dma_fence_put.exit357_crit_edge:        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit357

if.then.i351:                                     ; preds = %if.end143
  %refcount.i347 = getelementptr inbounds %struct.dma_fence, ptr %125, i32 0, i32 6
  %call.i.i.i.i.i.i.i348 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i347, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcount.i347, i32 1, i32 3, i32 1) #14
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i347, ptr %refcount.i347, i32 1, ptr elementtype(i32) %refcount.i347) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i349 = extractvalue { i32, i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i349)
  %cmp.i.i.i.i.i350 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i349, 1
  br i1 %cmp.i.i.i.i.i350, label %if.then.i.i355, label %if.end5.i.i.i.i.i353

if.end5.i.i.i.i.i353:                             ; preds = %if.then.i351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i349)
  %.not.i.i.i.i.i352 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i349, 0
  br i1 %.not.i.i.i.i.i352, label %if.end5.i.i.i.i.i353.dma_fence_put.exit357_crit_edge, label %if.then10.i.i.i.i.i354, !prof !133

if.end5.i.i.i.i.i353.dma_fence_put.exit357_crit_edge: ; preds = %if.end5.i.i.i.i.i353
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit357

if.then10.i.i.i.i.i354:                           ; preds = %if.end5.i.i.i.i.i353
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i347, i32 noundef 3) #14
  br label %dma_fence_put.exit357

if.then.i.i355:                                   ; preds = %if.then.i351
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  call void @dma_fence_release(ptr noundef %refcount.i347) #14
  br label %dma_fence_put.exit357

dma_fence_put.exit357:                            ; preds = %if.then.i.i355, %if.then10.i.i.i.i.i354, %if.end5.i.i.i.i.i353.dma_fence_put.exit357_crit_edge, %if.end143.dma_fence_put.exit357_crit_edge
  %127 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %funcs, align 4
  %emit_gds_switch145 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %128, i32 0, i32 19
  %129 = ptrtoint ptr %emit_gds_switch145 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %emit_gds_switch145, align 4
  %tobool146.not = icmp eq ptr %130, null
  %and307.not = xor i1 %and307, true
  %brmerge312 = select i1 %tobool146.not, i1 true, i1 %and307.not
  br i1 %brmerge312, label %dma_fence_put.exit357.if.end172_crit_edge, label %if.then150

dma_fence_put.exit357.if.end172_crit_edge:        ; preds = %dma_fence_put.exit357
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

if.then150:                                       ; preds = %dma_fence_put.exit357
  call void @__sanitizer_cov_trace_pc() #16
  %gds_base151 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 14
  %131 = ptrtoint ptr %gds_base151 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %gds_base151, align 8
  %gds_base152 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 7
  %133 = ptrtoint ptr %gds_base152 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %gds_base152, align 8
  %gds_size153 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 15
  %134 = ptrtoint ptr %gds_size153 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %gds_size153, align 4
  %gds_size154 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 8
  %136 = ptrtoint ptr %gds_size154 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %gds_size154, align 4
  %gws_base155 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 16
  %137 = ptrtoint ptr %gws_base155 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %gws_base155, align 8
  %gws_base156 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 9
  %139 = ptrtoint ptr %gws_base156 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %gws_base156, align 8
  %gws_size157 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 17
  %140 = ptrtoint ptr %gws_size157 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %gws_size157, align 4
  %gws_size158 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 10
  %142 = ptrtoint ptr %gws_size158 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %gws_size158, align 4
  %oa_base159 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 18
  %143 = ptrtoint ptr %oa_base159 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %oa_base159, align 8
  %oa_base160 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 11
  %145 = ptrtoint ptr %oa_base160 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %oa_base160, align 8
  %oa_size161 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 19
  %146 = ptrtoint ptr %oa_size161 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %oa_size161, align 4
  %oa_size162 = getelementptr [3 x %struct.amdgpu_vmid_mgr], ptr %vm_manager, i32 0, i32 %5, i32 3, i32 %7, i32 12
  %148 = ptrtoint ptr %oa_size162 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %oa_size162, align 4
  %149 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %funcs, align 4
  %emit_gds_switch164 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %150, i32 0, i32 19
  %151 = ptrtoint ptr %emit_gds_switch164 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %emit_gds_switch164, align 4
  %153 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %vmid, align 8
  %155 = load i32, ptr %gds_base151, align 8
  %156 = load i32, ptr %gds_size153, align 4
  %157 = load i32, ptr %gws_base155, align 8
  %158 = load i32, ptr %gws_size157, align 4
  %159 = load i32, ptr %oa_base159, align 8
  %160 = load i32, ptr %oa_size161, align 4
  call void %152(ptr noundef %ring, i32 noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef %157, i32 noundef %158, i32 noundef %159, i32 noundef %160) #14
  br label %if.end172

if.end172:                                        ; preds = %if.then150, %dma_fence_put.exit357.if.end172_crit_edge
  %161 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %funcs, align 4
  %patch_cond_exec = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %162, i32 0, i32 27
  %163 = ptrtoint ptr %patch_cond_exec to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %patch_cond_exec, align 4
  %tobool174.not = icmp eq ptr %164, null
  br i1 %tobool174.not, label %if.end172.if.end178_crit_edge, label %if.then175

if.end172.if.end178_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end178

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  call void %164(ptr noundef %ring, i32 noundef %patch_offset.0) #14
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %if.end172.if.end178_crit_edge
  %165 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %funcs, align 4
  %emit_switch_buffer = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %166, i32 0, i32 30
  %167 = ptrtoint ptr %emit_switch_buffer to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %emit_switch_buffer, align 4
  %tobool180.not = icmp eq ptr %168, null
  br i1 %tobool180.not, label %if.end178.cleanup_crit_edge, label %if.then181

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then181:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #16
  call void %168(ptr noundef %ring) #14
  %169 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %funcs, align 4
  %emit_switch_buffer185 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %170, i32 0, i32 30
  %171 = ptrtoint ptr %emit_switch_buffer185 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %emit_switch_buffer185, align 4
  call void %172(ptr noundef %ring) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then181, %if.end178.cleanup_crit_edge, %if.then120.cleanup_crit_edge, %land.end72.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end72.cleanup_crit_edge ], [ %call121, %if.then120.cleanup_crit_edge ], [ 0, %if.then181 ], [ 0, %if.end178.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_flush, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_flush, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !138
  %call42 = tail call i32 @__traceiter_amdgpu_vm_flush(ptr noundef null, ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_vm_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_amdgpu_vm_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 435, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
declare dso_local i32 @amdgpu_fence_emit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_vm_bo_find(ptr noundef readnone %vm, ptr nocapture noundef readonly %bo) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_bo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 7
  %0 = ptrtoint ptr %vm_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %base.05 = load ptr, ptr %vm_bo, align 4
  %tobool.not6 = icmp eq ptr %base.05, null
  br i1 %tobool.not6, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %base.07 = phi ptr [ %base.0, %for.inc.for.body_crit_edge ], [ %base.05, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %base.07 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.07, align 4
  %cmp.not = icmp eq ptr %2, %vm
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %base.07, i32 0, i32 2
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %base.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %base.0, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %base.0.lcssa = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %base.07, %for.body.cleanup_crit_edge ]
  ret ptr %base.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @amdgpu_vm_map_gart(ptr nocapture noundef readonly %pages_addr, i64 noundef %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %addr, 12
  %idxprom = trunc i64 %shr to i32
  %arrayidx = getelementptr i32, ptr %pages_addr, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = and i32 %1, -4096
  %and1 = zext i32 %2 to i64
  ret i64 %and1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_update_pdes(ptr noundef %adev, ptr noundef %vm, i1 noundef zeroext %immediate) local_unnamed_addr #0 align 64 {
entry:
  %cursor.i = alloca %struct.amdgpu_vm_pt_cursor, align 8
  %pt.i = alloca i64, align 8
  %flags.i = alloca i64, align 8
  %params = alloca %struct.amdgpu_vm_update_params, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %immediate to i8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %params) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #14
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !142
  %relocated = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 5
  %1 = ptrtoint ptr %relocated to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %relocated, align 4
  %cmp.i.not = icmp eq ptr %2, %relocated
  br i1 %cmp.i.not, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28

if.end:                                           ; preds = %entry
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call2 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #14
  br i1 %call2, label %if.end4, label %if.end.cleanup28_crit_edge

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28

if.end4:                                          ; preds = %if.end
  %3 = getelementptr inbounds i8, ptr %params, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 20)
  %5 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %adev, ptr %params, align 4
  %vm6 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %vm6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vm, ptr %vm6, align 4
  %immediate8 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %immediate8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %immediate8, align 4
  %update_funcs = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 20
  %8 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_funcs, align 8
  %prepare = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prepare, align 4
  %call10 = call i32 %11(ptr noundef nonnull %params, ptr noundef null, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end4.while.cond_crit_edge, label %if.end4.cleanup28.sink.split_crit_edge

if.end4.cleanup28.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28.sink.split

if.end4.while.cond_crit_edge:                     ; preds = %if.end4
  br label %while.cond

while.cond:                                       ; preds = %amdgpu_vm_update_pde.exit.while.cond_crit_edge, %if.end4.while.cond_crit_edge
  %12 = ptrtoint ptr %relocated to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %relocated, align 4
  %cmp.i45.not = icmp eq ptr %13, %relocated
  br i1 %cmp.i45.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %13, i32 -12
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %idle.i = getelementptr inbounds %struct.amdgpu_vm, ptr %15, i32 0, i32 7
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.__list_del_entry.exit.i.i_crit_edge

while.body.__list_del_entry.exit.i.i_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %13, i32 4
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %while.body.__list_del_entry.exit.i.i_crit_edge
  %22 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %idle.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %idle.i, ptr noundef %23) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.amdgpu_vm_bo_idle.exit_crit_edge

__list_del_entry.exit.i.i.amdgpu_vm_bo_idle.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_bo_idle.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %13, ptr %prev1.i.i2.i.i, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %13, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %13, i32 4
  %26 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %idle.i, ptr %prev3.i.i.i.i, align 4
  %27 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %13, ptr %idle.i, align 4
  br label %amdgpu_vm_bo_idle.exit

amdgpu_vm_bo_idle.exit:                           ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.amdgpu_vm_bo_idle.exit_crit_edge
  %moved.i = getelementptr i8, ptr %13, i32 8
  %28 = ptrtoint ptr %moved.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %moved.i, align 4
  %bo.i.i = getelementptr i8, ptr %13, i32 -8
  %29 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bo.i.i, align 4
  %parent1.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %amdgpu_vm_bo_idle.exit.amdgpu_vm_pt_parent.exit.i_crit_edge, label %if.end.i.i

amdgpu_vm_bo_idle.exit.amdgpu_vm_pt_parent.exit.i_crit_edge: ; preds = %amdgpu_vm_bo_idle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_parent.exit.i

if.end.i.i:                                       ; preds = %amdgpu_vm_bo_idle.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vm_bo.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %vm_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vm_bo.i.i, align 8
  br label %amdgpu_vm_pt_parent.exit.i

amdgpu_vm_pt_parent.exit.i:                       ; preds = %if.end.i.i, %amdgpu_vm_bo_idle.exit.amdgpu_vm_pt_parent.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ null, %amdgpu_vm_bo_idle.exit.amdgpu_vm_pt_parent.exit.i_crit_edge ]
  %bo2.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %retval.0.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %bo2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bo2.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pt.i) #14
  %37 = ptrtoint ptr %pt.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %pt.i, align 8, !annotation !142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags.i) #14
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %flags.i, align 8, !annotation !142
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %amdgpu_vm_pt_parent.exit.i
  %level.0.i = phi i32 [ 0, %amdgpu_vm_pt_parent.exit.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %.pn.i = phi ptr [ %36, %amdgpu_vm_pt_parent.exit.i ], [ %pbo.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %pbo.0.in.i = getelementptr inbounds %struct.amdgpu_bo, ptr %.pn.i, i32 0, i32 8
  %39 = ptrtoint ptr %pbo.0.in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %pbo.0.i = load ptr, ptr %pbo.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %pbo.0.i, null
  %inc.i = add i32 %level.0.i, 1
  br i1 %tobool.not.i, label %amdgpu_vm_update_pde.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

amdgpu_vm_update_pde.exit:                        ; preds = %for.cond.i
  %40 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %params, align 4
  %root_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %41, i32 0, i32 65, i32 9
  %42 = ptrtoint ptr %root_level.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %root_level.i, align 4
  %add.i = add i32 %43, %level.0.i
  call void @amdgpu_gmc_get_pde_for_bo(ptr noundef %30, i32 noundef %add.i, ptr noundef nonnull %pt.i, ptr noundef nonnull %flags.i) #14
  %44 = ptrtoint ptr %bo2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bo2.i, align 4
  %entries.i = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %45, i32 0, i32 3
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %entries.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 24
  %mul.i = shl nsw i32 %sub.ptr.div.i, 3
  %conv.i47 = sext i32 %mul.i to i64
  %46 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %update_funcs, align 8
  %update.i = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %update.i, align 4
  %50 = ptrtoint ptr %pt.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %pt.i, align 8
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %flags.i, align 8
  %call10.i = call i32 %49(ptr noundef nonnull %params, ptr noundef %36, i64 noundef %conv.i47, i64 noundef %51, i32 noundef 1, i32 noundef 0, i64 noundef %53) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pt.i) #14
  %tobool20.not = icmp eq i32 %call10.i, 0
  br i1 %tobool20.not, label %amdgpu_vm_update_pde.exit.while.cond_crit_edge, label %amdgpu_vm_update_pde.exit.error_crit_edge

amdgpu_vm_update_pde.exit.error_crit_edge:        ; preds = %amdgpu_vm_update_pde.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

amdgpu_vm_update_pde.exit.while.cond_crit_edge:   ; preds = %amdgpu_vm_update_pde.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %update_funcs, align 8
  %commit = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %commit, align 4
  %last_update = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 13
  %call24 = call i32 %57(ptr noundef nonnull %params, ptr noundef %last_update) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %while.end.cleanup28.sink.split_crit_edge, label %while.end.error_crit_edge

while.end.error_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

while.end.cleanup28.sink.split_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28.sink.split

error:                                            ; preds = %while.end.error_crit_edge, %amdgpu_vm_update_pde.exit.error_crit_edge
  %r.0 = phi i32 [ %call24, %while.end.error_crit_edge ], [ %call10.i, %amdgpu_vm_update_pde.exit.error_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cursor.i) #14
  %58 = getelementptr inbounds i8, ptr %cursor.i, i32 16
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 -1, ptr %58, align 8
  %60 = ptrtoint ptr %cursor.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %cursor.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor.i, i32 0, i32 1
  %61 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %parent.i.i.i, align 8
  %root.i.i.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12
  %entry1.i.i.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor.i, i32 0, i32 2
  %62 = ptrtoint ptr %entry1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %root.i.i.i, ptr %entry1.i.i.i, align 4
  %root_level.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %63 = ptrtoint ptr %root_level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %root_level.i.i.i, align 4
  store i32 %64, ptr %58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp.i9.i.i = icmp eq i32 %64, 3
  br i1 %cmp.i9.i.i, label %error.amdgpu_vm_pt_first_dfs.exit.i_crit_edge, label %lor.lhs.false2.i.i.i.preheader

error.amdgpu_vm_pt_first_dfs.exit.i_crit_edge:    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_first_dfs.exit.i

lor.lhs.false2.i.i.i.preheader:                   ; preds = %error
  %bo.i.i.i52 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %65 = ptrtoint ptr %bo.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bo.i.i.i52, align 4
  %tobool4.not.i.i.i53 = icmp eq ptr %66, null
  br i1 %tobool4.not.i.i.i53, label %lor.lhs.false2.i.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge, label %if.end.i.i.i48.preheader

lor.lhs.false2.i.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_first_dfs.exit.loopexit.i

if.end.i.i.i48.preheader:                         ; preds = %lor.lhs.false2.i.i.i.preheader
  %inc.i.i.i59 = add i32 %64, 1
  %arrayidx.i.i.i60 = getelementptr %struct.amdgpu_bo_vm, ptr %66, i32 0, i32 3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i.i59)
  %cmp.i.i.i61 = icmp eq i32 %inc.i.i.i59, 3
  %tobool.not.i.i.i62 = icmp eq ptr %arrayidx.i.i.i60, null
  %or.cond.i63 = select i1 %cmp.i.i.i61, i1 true, i1 %tobool.not.i.i.i62
  br i1 %or.cond.i63, label %if.end.i.i.i48.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge, label %if.end.i.i.i48.preheader.lor.lhs.false2.i.i.i_crit_edge

if.end.i.i.i48.preheader.lor.lhs.false2.i.i.i_crit_edge: ; preds = %if.end.i.i.i48.preheader
  br label %lor.lhs.false2.i.i.i

if.end.i.i.i48.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge: ; preds = %if.end.i.i.i48.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_first_dfs.exit.loopexit.i

lor.lhs.false2.i.i.i:                             ; preds = %if.end.i.i.i48.lor.lhs.false2.i.i.i_crit_edge, %if.end.i.i.i48.preheader.lor.lhs.false2.i.i.i_crit_edge
  %arrayidx.i.i.i65 = phi ptr [ %arrayidx.i.i.i, %if.end.i.i.i48.lor.lhs.false2.i.i.i_crit_edge ], [ %arrayidx.i.i.i60, %if.end.i.i.i48.preheader.lor.lhs.false2.i.i.i_crit_edge ]
  %inc.i.i.i64 = phi i32 [ %inc.i.i.i, %if.end.i.i.i48.lor.lhs.false2.i.i.i_crit_edge ], [ %inc.i.i.i59, %if.end.i.i.i48.preheader.lor.lhs.false2.i.i.i_crit_edge ]
  %67 = phi ptr [ %arrayidx.i.i.i65, %if.end.i.i.i48.lor.lhs.false2.i.i.i_crit_edge ], [ %root.i.i.i, %if.end.i.i.i48.preheader.lor.lhs.false2.i.i.i_crit_edge ]
  %68 = phi ptr [ %70, %if.end.i.i.i48.lor.lhs.false2.i.i.i_crit_edge ], [ %66, %if.end.i.i.i48.preheader.lor.lhs.false2.i.i.i_crit_edge ]
  %bo.i.i.i = getelementptr %struct.amdgpu_bo_vm, ptr %68, i32 1
  %69 = ptrtoint ptr %bo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bo.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %70, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge, label %if.end.i.i.i48

lor.lhs.false2.i.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_first_dfs.exit.loopexit.i

if.end.i.i.i48:                                   ; preds = %lor.lhs.false2.i.i.i
  %inc.i.i.i = add i32 %inc.i.i.i64, 1
  %arrayidx.i.i.i = getelementptr %struct.amdgpu_bo_vm, ptr %70, i32 0, i32 3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i.i)
  %cmp.i.i.i = icmp eq i32 %inc.i.i.i, 3
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %or.cond.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i.i.i
  br i1 %or.cond.i, label %if.end.i.i.i48.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge, label %if.end.i.i.i48.lor.lhs.false2.i.i.i_crit_edge

if.end.i.i.i48.lor.lhs.false2.i.i.i_crit_edge:    ; preds = %if.end.i.i.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false2.i.i.i

if.end.i.i.i48.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge: ; preds = %if.end.i.i.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_first_dfs.exit.loopexit.i

amdgpu_vm_pt_first_dfs.exit.loopexit.i:           ; preds = %if.end.i.i.i48.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge, %lor.lhs.false2.i.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge, %if.end.i.i.i48.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge, %lor.lhs.false2.i.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge
  %arrayidx.i.i13.i = phi ptr [ %root.i.i.i, %lor.lhs.false2.i.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ], [ %arrayidx.i.i.i60, %if.end.i.i.i48.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ], [ %arrayidx.i.i.i65, %lor.lhs.false2.i.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ], [ %arrayidx.i.i.i, %if.end.i.i.i48.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ]
  %71 = phi ptr [ null, %lor.lhs.false2.i.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ], [ %root.i.i.i, %if.end.i.i.i48.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ], [ %67, %lor.lhs.false2.i.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ], [ %arrayidx.i.i.i65, %if.end.i.i.i48.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ]
  %inc.i.i11.i = phi i32 [ %64, %lor.lhs.false2.i.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ], [ %inc.i.i.i59, %if.end.i.i.i48.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ], [ %inc.i.i.i64, %lor.lhs.false2.i.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ], [ %inc.i.i.i, %if.end.i.i.i48.amdgpu_vm_pt_first_dfs.exit.loopexit.i_crit_edge ]
  %72 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %inc.i.i11.i, ptr %58, align 8
  %73 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %parent.i.i.i, align 8
  %74 = ptrtoint ptr %entry1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx.i.i13.i, ptr %entry1.i.i.i, align 4
  br label %amdgpu_vm_pt_first_dfs.exit.i

amdgpu_vm_pt_first_dfs.exit.i:                    ; preds = %amdgpu_vm_pt_first_dfs.exit.loopexit.i, %error.amdgpu_vm_pt_first_dfs.exit.i_crit_edge
  %75 = phi ptr [ %arrayidx.i.i13.i, %amdgpu_vm_pt_first_dfs.exit.loopexit.i ], [ %root.i.i.i, %error.amdgpu_vm_pt_first_dfs.exit.i_crit_edge ]
  call fastcc void @amdgpu_vm_pt_next_dfs(ptr noundef %adev, ptr noundef nonnull %cursor.i) #14
  %tobool.not.i25.i = icmp eq ptr %75, null
  br i1 %tobool.not.i25.i, label %amdgpu_vm_pt_first_dfs.exit.i.amdgpu_vm_invalidate_pds.exit_crit_edge, label %amdgpu_vm_pt_first_dfs.exit.i.for.body.i_crit_edge

amdgpu_vm_pt_first_dfs.exit.i.for.body.i_crit_edge: ; preds = %amdgpu_vm_pt_first_dfs.exit.i
  br label %for.body.i

amdgpu_vm_pt_first_dfs.exit.i.amdgpu_vm_invalidate_pds.exit_crit_edge: ; preds = %amdgpu_vm_pt_first_dfs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_invalidate_pds.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %amdgpu_vm_pt_first_dfs.exit.i.for.body.i_crit_edge
  %entry1.026.i = phi ptr [ %81, %for.inc.i.for.body.i_crit_edge ], [ %75, %amdgpu_vm_pt_first_dfs.exit.i.for.body.i_crit_edge ]
  %bo.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %entry1.026.i, i32 0, i32 1
  %76 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bo.i, align 4
  %tobool.not.i49 = icmp eq ptr %77, null
  br i1 %tobool.not.i49, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %moved.i50 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %entry1.026.i, i32 0, i32 4
  %78 = ptrtoint ptr %moved.i50 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %moved.i50, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool3.not.i = icmp eq i8 %79, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @amdgpu_vm_bo_relocated(ptr noundef nonnull %entry1.026.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %80 = ptrtoint ptr %entry1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %entry1.i.i.i, align 4
  call fastcc void @amdgpu_vm_pt_next_dfs(ptr noundef %adev, ptr noundef nonnull %cursor.i) #14
  %tobool.not.i.i51 = icmp eq ptr %81, null
  br i1 %tobool.not.i.i51, label %for.inc.i.amdgpu_vm_invalidate_pds.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.amdgpu_vm_invalidate_pds.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_invalidate_pds.exit

amdgpu_vm_invalidate_pds.exit:                    ; preds = %for.inc.i.amdgpu_vm_invalidate_pds.exit_crit_edge, %amdgpu_vm_pt_first_dfs.exit.i.amdgpu_vm_invalidate_pds.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cursor.i) #14
  br label %cleanup28.sink.split

cleanup28.sink.split:                             ; preds = %amdgpu_vm_invalidate_pds.exit, %while.end.cleanup28.sink.split_crit_edge, %if.end4.cleanup28.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %while.end.cleanup28.sink.split_crit_edge ], [ %call10, %if.end4.cleanup28.sink.split_crit_edge ], [ %r.0, %amdgpu_vm_invalidate_pds.exit ]
  %82 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %82)
  %.sink = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %.sink) #14
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup28.sink.split, %if.end.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup28_crit_edge ], [ -19, %if.end.cleanup28_crit_edge ], [ %retval.0.ph, %cleanup28.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %params) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_bo_update_mapping(ptr noundef %adev, ptr nocapture noundef readonly %bo_adev, ptr noundef %vm, i1 noundef zeroext %immediate, i1 noundef zeroext %unlocked, ptr noundef %resv, i64 noundef %start, i64 noundef %last, i64 noundef %flags, i64 noundef %offset, ptr noundef %res, ptr noundef %pages_addr, ptr noundef %fence, ptr noundef %table_freed) local_unnamed_addr #0 align 64 {
entry:
  %addr.addr.i.i = alloca i64, align 8
  %flags.addr.i.i = alloca i64, align 8
  %pt_bo.i.i = alloca ptr, align 4
  %pt.i.i = alloca ptr, align 4
  %cursor.i = alloca %struct.amdgpu_vm_pt_cursor, align 8
  %params = alloca %struct.amdgpu_vm_update_params, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %params) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #14
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !142
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call2 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #14
  br i1 %call2, label %if.end, label %entry.cleanup104_crit_edge

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup104

if.end:                                           ; preds = %entry
  %frombool1 = zext i1 %unlocked to i8
  %frombool = zext i1 %immediate to i8
  %1 = getelementptr inbounds i8, ptr %params, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adev, ptr %params, align 4
  %vm4 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %vm4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vm, ptr %vm4, align 4
  %immediate5 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 2
  %5 = ptrtoint ptr %immediate5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %immediate5, align 4
  %pages_addr7 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 4
  %6 = ptrtoint ptr %pages_addr7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pages_addr, ptr %pages_addr7, align 4
  %unlocked9 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %unlocked9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool1, ptr %unlocked9, align 1
  %and = and i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool11.not = icmp eq i64 %and, 0
  %. = select i1 %tobool11.not, i32 2, i32 3
  %eviction_lock.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %eviction_lock.i, i32 noundef 0) #14
  %8 = call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %13, 2048
  %or.i.i = or i32 %13, 2048
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %saved_flags.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 3
  %14 = ptrtoint ptr %saved_flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i.i, ptr %saved_flags.i, align 8
  %evicting = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 2
  %15 = ptrtoint ptr %evicting to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %evicting, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.error_unlock_crit_edge

if.end.error_unlock_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unlock

if.end16:                                         ; preds = %if.end
  br i1 %unlocked, label %if.end16.if.end24_crit_edge, label %land.lhs.true

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end16
  %last_unlocked = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 16
  %17 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %last_unlocked, align 8
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end.i:                                         ; preds = %land.lhs.true
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.end.i.if.then19_crit_edge, label %land.lhs.true.i

if.end.i.if.then19_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = call zeroext i1 %24(ptr noundef %18) #14
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.then19_crit_edge

land.lhs.true.i.if.then19_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = call i32 @dma_fence_signal(ptr noundef %18) #14
  br label %if.end24

if.then19:                                        ; preds = %land.lhs.true.i.if.then19_crit_edge, %if.end.i.if.then19_crit_edge
  %call20 = call ptr @dma_fence_get_stub() #14
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bo, align 4
  %27 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %last_unlocked, align 8
  call void @amdgpu_bo_fence(ptr noundef %26, ptr noundef %28, i1 noundef zeroext true) #14
  %29 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %last_unlocked, align 8
  store ptr %call20, ptr %last_unlocked, align 8
  %tobool.not.i153 = icmp eq ptr %30, null
  br i1 %tobool.not.i153, label %if.then19.if.end24_crit_edge, label %if.then.i

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then.i:                                        ; preds = %if.then19
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %30, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end24_crit_edge, label %if.then10.i.i.i.i.i, !prof !133

if.end5.i.i.i.i.i.if.end24_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %if.end24

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  call void @dma_fence_release(ptr noundef %refcount.i) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end24_crit_edge, %if.then19.if.end24_crit_edge, %if.then5.i, %land.lhs.true.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %update_funcs = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 20
  %32 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %update_funcs, align 8
  %prepare = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prepare, align 4
  %call25 = call i32 %35(ptr noundef nonnull %params, ptr noundef %resv, i32 noundef %.) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.error_unlock_crit_edge

if.end24.error_unlock_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unlock

if.end28:                                         ; preds = %if.end24
  %tobool29.not = icmp eq ptr %pages_addr, null
  %sub = sub i64 %last, %start
  %add = shl i64 %sub, 12
  %mul = add i64 %add, 4096
  %tobool.not.i155201 = icmp ne ptr %res, null
  %36 = and i1 %tobool.not.i155201, %tobool29.not
  br i1 %36, label %lor.lhs.false.i, label %if.end28.amdgpu_res_first.exit_crit_edge

if.end28.amdgpu_res_first.exit_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_res_first.exit

lor.lhs.false.i:                                  ; preds = %if.end28
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %res, i32 0, i32 2
  %37 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i = icmp eq i32 %38, 0
  %add.i = add i64 %mul, %offset
  %num_pages.i = getelementptr inbounds %struct.ttm_resource, ptr %res, i32 0, i32 1
  %39 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_pages.i, align 4
  %shl.i = shl i32 %40, 12
  %conv.i = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp5.i = icmp ugt i64 %add.i, %conv.i
  br i1 %cmp.i, label %land.rhs.critedge.i, label %do.body28.i

land.rhs.critedge.i:                              ; preds = %lor.lhs.false.i
  br i1 %cmp5.i, label %do.end.i, label %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge, !prof !136

land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge: ; preds = %land.rhs.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_res_first.exit

do.end.i:                                         ; preds = %land.rhs.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 62, i32 noundef 9, ptr noundef null) #14
  br label %amdgpu_res_first.exit

do.body28.i:                                      ; preds = %lor.lhs.false.i
  br i1 %cmp5.i, label %do.body42.i, label %do.end50.i, !prof !136

do.body42.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #14, !srcloc !143
  unreachable

do.end50.i:                                       ; preds = %do.body28.i
  %mm_nodes.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %res, i32 0, i32 1
  %size51103.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %res, i32 1, i32 0, i32 4
  %41 = ptrtoint ptr %size51103.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %size51103.i, align 8
  %shl52104.i = shl i64 %42, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl52104.i, i64 %offset)
  %cmp53.not105.i = icmp ugt i64 %shl52104.i, %offset
  br i1 %cmp53.not105.i, label %do.end50.i.while.end.i_crit_edge, label %do.end50.i.while.body.i_crit_edge

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  br label %while.body.i

do.end50.i.while.end.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end50.i.while.body.i_crit_edge
  %shl52108.i = phi i64 [ %shl52.i, %while.body.i.while.body.i_crit_edge ], [ %shl52104.i, %do.end50.i.while.body.i_crit_edge ]
  %start.addr.0107.i = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %offset, %do.end50.i.while.body.i_crit_edge ]
  %node.0106.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %mm_nodes.i, %do.end50.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1
  %sub.i = sub i64 %start.addr.0107.i, %shl52108.i
  %size51.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1, i32 2
  %43 = ptrtoint ptr %size51.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size51.i, align 8
  %shl52.i = shl i64 %44, 12
  %cmp53.not.i = icmp ult i64 %sub.i, %shl52.i
  br i1 %cmp53.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end50.i.while.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %mm_nodes.i, %do.end50.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %start.addr.0.lcssa.i = phi i64 [ %offset, %do.end50.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  %size51.lcssa.i = phi ptr [ %size51103.i, %do.end50.i.while.end.i_crit_edge ], [ %size51.i, %while.body.i.while.end.i_crit_edge ]
  %start57.i = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i, i32 0, i32 1
  %45 = ptrtoint ptr %start57.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %start57.i, align 8
  %shl58.i = shl i64 %46, 12
  %add59.i = add i64 %shl58.i, %start.addr.0.lcssa.i
  %47 = ptrtoint ptr %size51.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %size51.lcssa.i, align 8
  %shl62.i = shl i64 %48, 12
  %sub63.i = sub i64 %shl62.i, %start.addr.0.lcssa.i
  %49 = call i64 @llvm.umin.i64(i64 %sub63.i, i64 %mul) #14
  br label %amdgpu_res_first.exit

amdgpu_res_first.exit:                            ; preds = %while.end.i, %do.end.i, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge, %if.end28.amdgpu_res_first.exit_crit_edge
  %cursor.sroa.26.0 = phi ptr [ null, %do.end.i ], [ null, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge ], [ %node.0.lcssa.i, %while.end.i ], [ null, %if.end28.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.13.0 = phi i64 [ %mul, %do.end.i ], [ %mul, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge ], [ %49, %while.end.i ], [ %mul, %if.end28.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.0.0 = phi i64 [ %offset, %do.end.i ], [ %offset, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge ], [ %add59.i, %while.end.i ], [ %offset, %if.end28.amdgpu_res_first.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul)
  %tobool30.not206 = icmp eq i64 %mul, 0
  br i1 %tobool30.not206, label %amdgpu_res_first.exit.while.end_crit_edge, label %while.body.lr.ph

amdgpu_res_first.exit.while.end_crit_edge:        ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %amdgpu_res_first.exit
  %and74 = and i64 %flags, 2251799813685249
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and74)
  %tobool75.not = icmp eq i64 %and74, 0
  %vram_base_offset = getelementptr inbounds %struct.amdgpu_device, ptr %bo_adev, i32 0, i32 65, i32 10
  %50 = getelementptr inbounds i8, ptr %cursor.i, i32 16
  %parent.i.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor.i, i32 0, i32 1
  %entry1.i.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor.i, i32 0, i32 2
  %table_freed.i = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup88.while.body_crit_edge, %while.body.lr.ph
  %start.addr.0211 = phi i64 [ %start, %while.body.lr.ph ], [ %add82, %cleanup88.while.body_crit_edge ]
  %cursor.sroa.0.1210 = phi i64 [ %cursor.sroa.0.0, %while.body.lr.ph ], [ %cursor.sroa.0.3, %cleanup88.while.body_crit_edge ]
  %cursor.sroa.13.1209 = phi i64 [ %cursor.sroa.13.0, %while.body.lr.ph ], [ %cursor.sroa.13.3, %cleanup88.while.body_crit_edge ]
  %cursor.sroa.20.1208 = phi i64 [ %mul, %while.body.lr.ph ], [ %sub.i167, %cleanup88.while.body_crit_edge ]
  %cursor.sroa.26.1207 = phi ptr [ %cursor.sroa.26.0, %while.body.lr.ph ], [ %cursor.sroa.26.3, %cleanup88.while.body_crit_edge ]
  %shr = lshr i64 %cursor.sroa.13.1209, 12
  br i1 %tobool29.not, label %if.else73, label %if.then33

if.then33:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 8191, i64 %cursor.sroa.13.1209)
  %cmp = icmp ugt i64 %cursor.sroa.13.1209, 8191
  %shr36 = lshr i64 %cursor.sroa.0.1210, 12
  %51 = trunc i64 %shr36 to i32
  br i1 %cmp, label %if.then34, label %if.then33.if.else65_crit_edge

if.then33.if.else65_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else65

if.then34:                                        ; preds = %if.then33
  %idxprom = add i32 %51, 1
  %arrayidx = getelementptr i32, ptr %pages_addr, i32 %idxprom
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %arrayidx39 = getelementptr i32, ptr %pages_addr, i32 %51
  %54 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx39, align 4
  %add40 = add i32 %55, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %add40)
  %cmp41 = icmp eq i32 %53, %add40
  call void @__sanitizer_cov_trace_const_cmp8(i64 12287, i64 %cursor.sroa.13.1209)
  %cmp43203 = icmp ugt i64 %cursor.sroa.13.1209, 12287
  br i1 %cmp43203, label %for.body.preheader, label %if.then34.if.end60_crit_edge

if.then34.if.end60_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

for.body.preheader:                               ; preds = %if.then34
  %umax = call i64 @llvm.umax.i64(i64 %shr, i64 3)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %count.0204 = phi i64 [ %inc, %for.inc.for.body_crit_edge ], [ 2, %for.body.preheader ]
  %add45 = add nuw nsw i64 %count.0204, %shr36
  %idxprom47 = trunc i64 %add45 to i32
  %arrayidx48 = getelementptr i32, ptr %pages_addr, i32 %idxprom47
  %56 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx48, align 4
  %idxprom50 = add i32 %idxprom47, -1
  %arrayidx51 = getelementptr i32, ptr %pages_addr, i32 %idxprom50
  %58 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %59, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %add52)
  %cmp53 = icmp ne i32 %57, %add52
  %cmp55.not = xor i1 %cmp41, %cmp53
  br i1 %cmp55.not, label %for.inc, label %for.body.if.end60_crit_edge

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %count.0204, 1
  %cmp43 = icmp ult i64 %inc, %shr
  br i1 %cmp43, label %for.inc.for.body_crit_edge, label %for.inc.if.end60_crit_edge

for.inc.if.end60_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end60:                                         ; preds = %for.inc.if.end60_crit_edge, %for.body.if.end60_crit_edge, %if.then34.if.end60_crit_edge
  %count.0.lcssa = phi i64 [ 2, %if.then34.if.end60_crit_edge ], [ %count.0204, %for.body.if.end60_crit_edge ], [ %umax, %for.inc.if.end60_crit_edge ]
  br i1 %cmp41, label %if.end60.if.else65_crit_edge, label %if.end60.if.end72_crit_edge

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.end60.if.else65_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else65

if.else65:                                        ; preds = %if.end60.if.else65_crit_edge, %if.then33.if.else65_crit_edge
  %num_entries.0189 = phi i64 [ %count.0.lcssa, %if.end60.if.else65_crit_edge ], [ %shr, %if.then33.if.else65_crit_edge ]
  %arrayidx69 = getelementptr i32, ptr %pages_addr, i32 %51
  %60 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx69, align 4
  %conv70 = zext i32 %61 to i64
  br label %if.end72

if.end72:                                         ; preds = %if.else65, %if.end60.if.end72_crit_edge
  %num_entries.0188 = phi i64 [ %num_entries.0189, %if.else65 ], [ %count.0.lcssa, %if.end60.if.end72_crit_edge ]
  %storemerge = phi ptr [ null, %if.else65 ], [ %pages_addr, %if.end60.if.end72_crit_edge ]
  %addr.0 = phi i64 [ %conv70, %if.else65 ], [ %cursor.sroa.0.1210, %if.end60.if.end72_crit_edge ]
  %62 = ptrtoint ptr %pages_addr7 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %storemerge, ptr %pages_addr7, align 4
  br label %if.end81

if.else73:                                        ; preds = %while.body
  br i1 %tobool75.not, label %if.else73.if.end81_crit_edge, label %if.then76

if.else73.if.end81_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.then76:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %vram_base_offset to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %vram_base_offset, align 8
  %add78 = add i64 %64, %cursor.sroa.0.1210
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.else73.if.end81_crit_edge, %if.end72
  %num_entries.1 = phi i64 [ %num_entries.0188, %if.end72 ], [ %shr, %if.then76 ], [ %shr, %if.else73.if.end81_crit_edge ]
  %addr.1 = phi i64 [ %addr.0, %if.end72 ], [ %add78, %if.then76 ], [ 0, %if.else73.if.end81_crit_edge ]
  %add82 = add i64 %num_entries.1, %start.addr.0211
  %65 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %params, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cursor.i) #14
  %67 = ptrtoint ptr %50 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 -1, ptr %50, align 8
  %asic_type.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %66, i32 0, i32 5
  %68 = ptrtoint ptr %asic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %asic_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %69)
  %cmp.i.i = icmp ult i32 %69, 19
  br i1 %cmp.i.i, label %if.then.i.i156, label %if.end81.if.end.i.i_crit_edge

if.end81.if.end.i.i_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i156:                                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %fragment_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %66, i32 0, i32 65, i32 8
  %70 = ptrtoint ptr %fragment_size.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fragment_size.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i156, %if.end81.if.end.i.i_crit_edge
  %max_frag.0.i.i = phi i32 [ %71, %if.then.i.i156 ], [ 31, %if.end81.if.end.i.i_crit_edge ]
  %72 = ptrtoint ptr %pages_addr7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pages_addr7, align 4
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i.i.amdgpu_vm_fragment.exit.i_crit_edge

if.end.i.i.amdgpu_vm_fragment.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_fragment.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %conv.i.i = trunc i64 %start.addr.0211 to i32
  %74 = call i32 @llvm.cttz.i32(i32 %conv.i.i, i1 true) #14, !range !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %iszero.i.i = icmp eq i32 %conv.i.i, 0
  %sub.i.i = select i1 %iszero.i.i, i32 -1, i32 %74
  %shr.i.i.i = lshr i64 %num_entries.1, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %75 = call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #14, !range !144
  %add.i.i.i = sub nuw nsw i32 64, %75
  br label %fls64.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i.i.i = trunc i64 %num_entries.1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %76 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #14, !range !144
  %sub.i6.i.i.i = sub nuw nsw i32 32, %76
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %fls64.exit.i.i

fls64.exit.i.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub5.i.i = add nsw i32 %retval.0.i.i.i, -1
  %77 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub5.i.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %max_frag.0.i.i)
  %cmp8.not.i.i = icmp ult i32 %77, %max_frag.0.i.i
  br i1 %cmp8.not.i.i, label %if.else12.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %fls64.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sh_prom.i.i = zext i32 %max_frag.0.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %and.i.i157 = and i64 %notmask.i.i, %add82
  br label %amdgpu_vm_fragment.exit.i

if.else12.i.i:                                    ; preds = %fls64.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %shl13.i.i = shl nuw i32 1, %77
  %conv14.i.i = sext i32 %shl13.i.i to i64
  %add.i.i = add i64 %start.addr.0211, %conv14.i.i
  br label %amdgpu_vm_fragment.exit.i

amdgpu_vm_fragment.exit.i:                        ; preds = %if.else12.i.i, %if.then10.i.i, %if.end.i.i.amdgpu_vm_fragment.exit.i_crit_edge
  %frag.0.i = phi i32 [ %77, %if.else12.i.i ], [ %max_frag.0.i.i, %if.then10.i.i ], [ 0, %if.end.i.i.amdgpu_vm_fragment.exit.i_crit_edge ]
  %storemerge1.i.i = phi i64 [ %add.i.i, %if.else12.i.i ], [ %and.i.i157, %if.then10.i.i ], [ %add82, %if.end.i.i.amdgpu_vm_fragment.exit.i_crit_edge ]
  %78 = ptrtoint ptr %vm4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vm4, align 4
  %80 = ptrtoint ptr %cursor.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %start.addr.0211, ptr %cursor.i, align 8
  %81 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %parent.i.i, align 8
  %root.i.i = getelementptr inbounds %struct.amdgpu_vm, ptr %79, i32 0, i32 12
  %82 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %root.i.i, ptr %entry1.i.i, align 4
  %root_level.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %66, i32 0, i32 65, i32 9
  %83 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %root_level.i.i, align 4
  %85 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %50, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add82, i64 %start.addr.0211)
  %cmp468.i = icmp ugt i64 %add82, %start.addr.0211
  br i1 %cmp468.i, label %while.body.lr.ph.i, label %amdgpu_vm_fragment.exit.i.if.end86_crit_edge

amdgpu_vm_fragment.exit.i.if.end86_crit_edge:     ; preds = %amdgpu_vm_fragment.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

while.body.lr.ph.i:                               ; preds = %amdgpu_vm_fragment.exit.i
  %block_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %66, i32 0, i32 65, i32 7
  br label %while.body.i159

while.body.i159:                                  ; preds = %cleanup151.i.while.body.i159_crit_edge, %while.body.lr.ph.i
  %dst.addr.0475.i = phi i64 [ %addr.1, %while.body.lr.ph.i ], [ %dst.addr.2.i, %cleanup151.i.while.body.i159_crit_edge ]
  %frag_start.0473.i = phi i64 [ %start.addr.0211, %while.body.lr.ph.i ], [ %frag_start.2.i, %cleanup151.i.while.body.i159_crit_edge ]
  %frag.1471.i = phi i32 [ %frag.0.i, %while.body.lr.ph.i ], [ %frag.6.i, %cleanup151.i.while.body.i159_crit_edge ]
  %frag_end.0469.i = phi i64 [ %storemerge1.i.i, %while.body.lr.ph.i ], [ %frag_end.5.i, %cleanup151.i.while.body.i159_crit_edge ]
  %86 = ptrtoint ptr %unlocked9 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %unlocked9, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i158 = icmp eq i8 %87, 0
  br i1 %tobool.not.i158, label %if.then.i160, label %while.body.i159.if.end7.i_crit_edge

while.body.i159.if.end7.i_crit_edge:              ; preds = %while.body.i159
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then.i160:                                     ; preds = %while.body.i159
  %88 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %params, align 4
  %90 = ptrtoint ptr %vm4 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vm4, align 4
  %92 = ptrtoint ptr %immediate5 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %immediate5, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool4.i = icmp ne i8 %93, 0
  %94 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %entry1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pt_bo.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pt.i.i) #14
  %96 = ptrtoint ptr %pt.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %pt.i.i, align 4, !annotation !142
  %bo.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %95, i32 0, i32 1
  %97 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bo.i.i, align 4
  %tobool.not.i250.i = icmp eq ptr %98, null
  br i1 %tobool.not.i250.i, label %if.end.i252.i, label %if.then.i160.amdgpu_vm_alloc_pts.exit.thread.i_crit_edge

if.then.i160.amdgpu_vm_alloc_pts.exit.thread.i_crit_edge: ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_alloc_pts.exit.thread.i

if.end.i252.i:                                    ; preds = %if.then.i160
  %99 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %50, align 8
  %call.i.i = call fastcc i32 @amdgpu_vm_pt_create(ptr noundef %89, ptr noundef %91, i32 noundef %100, i1 noundef zeroext %tobool4.i, ptr noundef nonnull %pt.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i252.i.amdgpu_vm_alloc_pts.exit.i_crit_edge

if.end.i252.i.amdgpu_vm_alloc_pts.exit.i_crit_edge: ; preds = %if.end.i252.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_alloc_pts.exit.i

if.end6.i.i:                                      ; preds = %if.end.i252.i
  %101 = ptrtoint ptr %pt.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pt.i.i, align 4
  %103 = ptrtoint ptr %pt_bo.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %pt_bo.i.i, align 4
  %104 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %parent.i.i, align 8
  %bo8.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %bo8.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bo8.i.i, align 4
  %call9.i.i = call ptr @amdgpu_bo_ref(ptr noundef %107) #14
  %parent10.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %102, i32 0, i32 8
  %108 = ptrtoint ptr %parent10.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call9.i.i, ptr %parent10.i.i, align 4
  call fastcc void @amdgpu_vm_bo_base_init(ptr noundef %95, ptr noundef %91, ptr noundef %102) #14
  %109 = ptrtoint ptr %pt.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pt.i.i, align 4
  %call12.i.i = call fastcc i32 @amdgpu_vm_clear_bo(ptr noundef %89, ptr noundef %91, ptr noundef %110, i1 noundef zeroext %tobool4.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end6.i.i.amdgpu_vm_alloc_pts.exit.thread.i_crit_edge, label %error_free_pt.i.i

if.end6.i.i.amdgpu_vm_alloc_pts.exit.thread.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_alloc_pts.exit.thread.i

error_free_pt.i.i:                                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %111 = ptrtoint ptr %pt.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pt.i.i, align 4
  %shadow.i.i = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %112, i32 0, i32 1
  call void @amdgpu_bo_unref(ptr noundef %shadow.i.i) #14
  call void @amdgpu_bo_unref(ptr noundef nonnull %pt_bo.i.i) #14
  br label %amdgpu_vm_alloc_pts.exit.i

amdgpu_vm_alloc_pts.exit.thread.i:                ; preds = %if.end6.i.i.amdgpu_vm_alloc_pts.exit.thread.i_crit_edge, %if.then.i160.amdgpu_vm_alloc_pts.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt_bo.i.i) #14
  br label %if.end7.i

amdgpu_vm_alloc_pts.exit.i:                       ; preds = %error_free_pt.i.i, %if.end.i252.i.amdgpu_vm_alloc_pts.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call12.i.i, %error_free_pt.i.i ], [ %call.i.i, %if.end.i252.i.amdgpu_vm_alloc_pts.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt_bo.i.i) #14
  br label %cleanup88.thread

if.end7.i:                                        ; preds = %amdgpu_vm_alloc_pts.exit.thread.i, %while.body.i159.if.end7.i_crit_edge
  %113 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %50, align 8
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values)
  switch i32 %114, label %if.end7.i.amdgpu_vm_level_shift.exit.i_crit_edge [
    i32 0, label %if.end7.i.sw.bb.i.i_crit_edge
    i32 1, label %if.end7.i.sw.bb.i.i_crit_edge218
    i32 2, label %if.end7.i.sw.bb.i.i_crit_edge219
    i32 3, label %if.end7.i.sw.bb.i261.i_crit_edge
  ]

if.end7.i.sw.bb.i261.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i261.i

if.end7.i.sw.bb.i.i_crit_edge219:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.end7.i.sw.bb.i.i_crit_edge218:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.end7.i.sw.bb.i.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.end7.i.amdgpu_vm_level_shift.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit.i

sw.bb.i.i:                                        ; preds = %if.end7.i.sw.bb.i.i_crit_edge, %if.end7.i.sw.bb.i.i_crit_edge218, %if.end7.i.sw.bb.i.i_crit_edge219
  %sub.i254.i = sub nuw nsw i32 2, %114
  %mul.i.i = mul nuw nsw i32 %sub.i254.i, 9
  %116 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %block_size.i.i, align 4
  %add.i255.i = add i32 %117, %mul.i.i
  br label %amdgpu_vm_level_shift.exit.i

amdgpu_vm_level_shift.exit.i:                     ; preds = %sw.bb.i.i, %if.end7.i.amdgpu_vm_level_shift.exit.i_crit_edge
  %retval.0.i256.i = phi i32 [ %add.i255.i, %sw.bb.i.i ], [ -1, %if.end7.i.amdgpu_vm_level_shift.exit.i_crit_edge ]
  %sub.i161 = add i32 %114, -1
  %118 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %114, label %amdgpu_vm_level_shift.exit.i.amdgpu_vm_level_shift.exit264.i_crit_edge [
    i32 1, label %amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge
    i32 2, label %amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge220
    i32 4, label %amdgpu_vm_level_shift.exit264.thread.i
  ]

amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge220: ; preds = %amdgpu_vm_level_shift.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i261.i

amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge: ; preds = %amdgpu_vm_level_shift.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i261.i

amdgpu_vm_level_shift.exit.i.amdgpu_vm_level_shift.exit264.i_crit_edge: ; preds = %amdgpu_vm_level_shift.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit264.i

sw.bb.i261.i:                                     ; preds = %amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge, %amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge220, %if.end7.i.sw.bb.i261.i_crit_edge
  %sub442.i = phi i32 [ %sub.i161, %amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge ], [ %sub.i161, %amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge220 ], [ 2, %if.end7.i.sw.bb.i261.i_crit_edge ]
  %retval.0.i256440.i = phi i32 [ %retval.0.i256.i, %amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge ], [ %retval.0.i256.i, %amdgpu_vm_level_shift.exit.i.sw.bb.i261.i_crit_edge220 ], [ 0, %if.end7.i.sw.bb.i261.i_crit_edge ]
  %sub.i257.i = sub nuw nsw i32 2, %sub442.i
  %mul.i258.i = mul nuw nsw i32 %sub.i257.i, 9
  %119 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %block_size.i.i, align 4
  %add.i260.i = add i32 %120, %mul.i258.i
  br label %amdgpu_vm_level_shift.exit264.i

amdgpu_vm_level_shift.exit264.i:                  ; preds = %sw.bb.i261.i, %amdgpu_vm_level_shift.exit.i.amdgpu_vm_level_shift.exit264.i_crit_edge
  %sub443.i = phi i32 [ %sub442.i, %sw.bb.i261.i ], [ %sub.i161, %amdgpu_vm_level_shift.exit.i.amdgpu_vm_level_shift.exit264.i_crit_edge ]
  %retval.0.i256439.i = phi i32 [ %retval.0.i256440.i, %sw.bb.i261.i ], [ %retval.0.i256.i, %amdgpu_vm_level_shift.exit.i.amdgpu_vm_level_shift.exit264.i_crit_edge ]
  %retval.0.i263.i = phi i32 [ %add.i260.i, %sw.bb.i261.i ], [ -1, %amdgpu_vm_level_shift.exit.i.amdgpu_vm_level_shift.exit264.i_crit_edge ]
  %121 = ptrtoint ptr %unlocked9 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %unlocked9, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool12.not.i = icmp eq i8 %122, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

amdgpu_vm_level_shift.exit264.thread.i:           ; preds = %amdgpu_vm_level_shift.exit.i
  %123 = ptrtoint ptr %unlocked9 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %unlocked9, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool12.not488.i = icmp eq i8 %124, 0
  br i1 %tobool12.not488.i, label %if.else.thread.i, label %amdgpu_vm_level_shift.exit264.thread.i.lor.lhs.false.i.i_crit_edge

amdgpu_vm_level_shift.exit264.thread.i.lor.lhs.false.i.i_crit_edge: ; preds = %amdgpu_vm_level_shift.exit264.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i.i

if.then13.i:                                      ; preds = %amdgpu_vm_level_shift.exit264.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %114)
  %cmp.i266.i = icmp eq i32 %114, 3
  br i1 %cmp.i266.i, label %if.then13.i.if.end42.i_crit_edge, label %if.then13.i.lor.lhs.false.i.i_crit_edge

if.then13.i.lor.lhs.false.i.i_crit_edge:          ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i.i

if.then13.i.if.end42.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

lor.lhs.false.i.i:                                ; preds = %if.then13.i.lor.lhs.false.i.i_crit_edge, %amdgpu_vm_level_shift.exit264.thread.i.lor.lhs.false.i.i_crit_edge
  %retval.0.i256439492500.i = phi i32 [ %retval.0.i256439.i, %if.then13.i.lor.lhs.false.i.i_crit_edge ], [ %retval.0.i256.i, %amdgpu_vm_level_shift.exit264.thread.i.lor.lhs.false.i.i_crit_edge ]
  %retval.0.i263495499.i = phi i32 [ %retval.0.i263.i, %if.then13.i.lor.lhs.false.i.i_crit_edge ], [ 0, %amdgpu_vm_level_shift.exit264.thread.i.lor.lhs.false.i.i_crit_edge ]
  %125 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %entry1.i.i, align 4
  %tobool.not.i268.i = icmp eq ptr %126, null
  br i1 %tobool.not.i268.i, label %lor.lhs.false.i.i.if.end42.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.end42.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %bo.i269.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %bo.i269.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bo.i269.i, align 4
  %tobool4.not.i270.i = icmp eq ptr %128, null
  br i1 %tobool4.not.i270.i, label %lor.lhs.false2.i.i.if.end42.i_crit_edge, label %if.end.i271.i

lor.lhs.false2.i.i.if.end42.i_crit_edge:          ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.end.i271.i:                                    ; preds = %lor.lhs.false2.i.i
  %129 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %root_level.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %114)
  %cmp.not.i.i.i = icmp ult i32 %130, %114
  %spec.select.i.i = select i1 %cmp.not.i.i.i, i32 511, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %114)
  %switch.i.i = icmp ult i32 %114, 3
  br i1 %switch.i.i, label %sw.bb.i.i.i, label %if.end.i271.i.amdgpu_vm_pt_descendant.exit.i_crit_edge

if.end.i271.i.amdgpu_vm_pt_descendant.exit.i_crit_edge: ; preds = %if.end.i271.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_descendant.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end.i271.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i28.i.i = sub nuw nsw i32 2, %114
  %mul.i.i.i = mul nuw nsw i32 %sub.i28.i.i, 9
  %131 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %block_size.i.i, align 4
  %add.i.i272.i = add i32 %132, %mul.i.i.i
  br label %amdgpu_vm_pt_descendant.exit.i

amdgpu_vm_pt_descendant.exit.i:                   ; preds = %sw.bb.i.i.i, %if.end.i271.i.amdgpu_vm_pt_descendant.exit.i_crit_edge
  %retval.0.i30.i.i = phi i32 [ %add.i.i272.i, %sw.bb.i.i.i ], [ -1, %if.end.i271.i.amdgpu_vm_pt_descendant.exit.i_crit_edge ]
  %inc.i.i = add i32 %114, 1
  %133 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %inc.i.i, ptr %50, align 8
  %134 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %cursor.i, align 8
  %sh_prom.i273.i = zext i32 %retval.0.i30.i.i to i64
  %shr.i.i = lshr i64 %135, %sh_prom.i273.i
  %136 = trunc i64 %shr.i.i to i32
  %conv9.i.i = and i32 %spec.select.i.i, %136
  %137 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %126, ptr %parent.i.i, align 8
  %138 = ptrtoint ptr %bo.i269.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bo.i269.i, align 4
  %arrayidx.i.i = getelementptr %struct.amdgpu_bo_vm, ptr %139, i32 0, i32 3, i32 %conv9.i.i
  %140 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %arrayidx.i.i, ptr %entry1.i.i, align 4
  br label %cleanup151.i

if.else.i:                                        ; preds = %amdgpu_vm_level_shift.exit264.i
  %141 = ptrtoint ptr %asic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %asic_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %142)
  %cmp17.i = icmp ugt i32 %142, 18
  %or.cond.i = or i1 %tobool11.not, %cmp17.i
  br i1 %or.cond.i, label %if.else27.i, label %if.then19.i

if.else.thread.i:                                 ; preds = %amdgpu_vm_level_shift.exit264.thread.i
  %143 = ptrtoint ptr %asic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %asic_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %144)
  %cmp17504.i = icmp ugt i32 %144, 18
  %or.cond505.i = or i1 %tobool11.not, %cmp17504.i
  br i1 %or.cond505.i, label %if.else27.thread.i, label %if.else.thread.i.lor.lhs.false.i280.i_crit_edge

if.else.thread.i.lor.lhs.false.i280.i_crit_edge:  ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i280.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %114)
  %cmp21.not.i = icmp eq i32 %114, 3
  br i1 %cmp21.not.i, label %if.then19.i.if.end42.i_crit_edge, label %if.then19.i.lor.lhs.false.i280.i_crit_edge

if.then19.i.lor.lhs.false.i280.i_crit_edge:       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i280.i

if.then19.i.if.end42.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

lor.lhs.false.i280.i:                             ; preds = %if.then19.i.lor.lhs.false.i280.i_crit_edge, %if.else.thread.i.lor.lhs.false.i280.i_crit_edge
  %145 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %entry1.i.i, align 4
  %tobool.not.i279.i = icmp eq ptr %146, null
  br i1 %tobool.not.i279.i, label %lor.lhs.false.i280.i.cleanup88.thread_crit_edge, label %lor.lhs.false2.i283.i

lor.lhs.false.i280.i.cleanup88.thread_crit_edge:  ; preds = %lor.lhs.false.i280.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88.thread

lor.lhs.false2.i283.i:                            ; preds = %lor.lhs.false.i280.i
  %bo.i281.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %bo.i281.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bo.i281.i, align 4
  %tobool4.not.i282.i = icmp eq ptr %148, null
  br i1 %tobool4.not.i282.i, label %lor.lhs.false2.i283.i.cleanup88.thread_crit_edge, label %if.end.i288.i

lor.lhs.false2.i283.i.cleanup88.thread_crit_edge: ; preds = %lor.lhs.false2.i283.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88.thread

if.end.i288.i:                                    ; preds = %lor.lhs.false2.i283.i
  %149 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %root_level.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %114)
  %cmp.not.i.i285.i = icmp ult i32 %150, %114
  %spec.select.i286.i = select i1 %cmp.not.i.i285.i, i32 511, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %114)
  %switch.i287.i = icmp ult i32 %114, 3
  br i1 %switch.i287.i, label %sw.bb.i.i293.i, label %if.end.i288.i._crit_edge

if.end.i288.i._crit_edge:                         ; preds = %if.end.i288.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %153

sw.bb.i.i293.i:                                   ; preds = %if.end.i288.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i28.i289.i = sub nuw nsw i32 2, %114
  %mul.i.i290.i = mul nuw nsw i32 %sub.i28.i289.i, 9
  %151 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %block_size.i.i, align 4
  %add.i.i292.i = add i32 %152, %mul.i.i290.i
  br label %153

153:                                              ; preds = %sw.bb.i.i293.i, %if.end.i288.i._crit_edge
  %retval.0.i30.i294.i = phi i32 [ %add.i.i292.i, %sw.bb.i.i293.i ], [ -1, %if.end.i288.i._crit_edge ]
  %inc.i295.i = add i32 %114, 1
  %154 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %inc.i295.i, ptr %50, align 8
  %155 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %cursor.i, align 8
  %sh_prom.i296.i = zext i32 %retval.0.i30.i294.i to i64
  %shr.i297.i = lshr i64 %156, %sh_prom.i296.i
  %157 = trunc i64 %shr.i297.i to i32
  %conv9.i298.i = and i32 %spec.select.i286.i, %157
  %158 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %146, ptr %parent.i.i, align 8
  %159 = ptrtoint ptr %bo.i281.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bo.i281.i, align 4
  %arrayidx.i300.i = getelementptr %struct.amdgpu_bo_vm, ptr %160, i32 0, i32 3, i32 %conv9.i298.i
  %161 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %arrayidx.i300.i, ptr %entry1.i.i, align 4
  br label %cleanup151.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.1471.i, i32 %retval.0.i256439.i)
  %cmp28.i = icmp ult i32 %frag.1471.i, %retval.0.i256439.i
  br i1 %cmp28.i, label %if.then29.i, label %if.else27.i.if.else33.i_crit_edge

if.else27.i.if.else33.i_crit_edge:                ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else33.i

if.else27.thread.i:                               ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.1471.i, i32 %retval.0.i256.i)
  %cmp28517.i = icmp ult i32 %frag.1471.i, %retval.0.i256.i
  br i1 %cmp28517.i, label %if.else27.thread.i.lor.lhs.false.i308.i_crit_edge, label %if.else27.thread.i.if.else33.i_crit_edge

if.else27.thread.i.if.else33.i_crit_edge:         ; preds = %if.else27.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else33.i

if.else27.thread.i.lor.lhs.false.i308.i_crit_edge: ; preds = %if.else27.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i308.i

if.then29.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %114)
  %cmp.i305.i = icmp eq i32 %114, 3
  br i1 %cmp.i305.i, label %if.then29.i.if.end42.i_crit_edge, label %if.then29.i.lor.lhs.false.i308.i_crit_edge

if.then29.i.lor.lhs.false.i308.i_crit_edge:       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i308.i

if.then29.i.if.end42.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

lor.lhs.false.i308.i:                             ; preds = %if.then29.i.lor.lhs.false.i308.i_crit_edge, %if.else27.thread.i.lor.lhs.false.i308.i_crit_edge
  %retval.0.i256439490508519527.i = phi i32 [ %retval.0.i256439.i, %if.then29.i.lor.lhs.false.i308.i_crit_edge ], [ %retval.0.i256.i, %if.else27.thread.i.lor.lhs.false.i308.i_crit_edge ]
  %retval.0.i263493506522526.i = phi i32 [ %retval.0.i263.i, %if.then29.i.lor.lhs.false.i308.i_crit_edge ], [ 0, %if.else27.thread.i.lor.lhs.false.i308.i_crit_edge ]
  %162 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %entry1.i.i, align 4
  %tobool.not.i307.i = icmp eq ptr %163, null
  br i1 %tobool.not.i307.i, label %lor.lhs.false.i308.i.if.end42.i_crit_edge, label %lor.lhs.false2.i311.i

lor.lhs.false.i308.i.if.end42.i_crit_edge:        ; preds = %lor.lhs.false.i308.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

lor.lhs.false2.i311.i:                            ; preds = %lor.lhs.false.i308.i
  %bo.i309.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %bo.i309.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bo.i309.i, align 4
  %tobool4.not.i310.i = icmp eq ptr %165, null
  br i1 %tobool4.not.i310.i, label %lor.lhs.false2.i311.i.if.end42.i_crit_edge, label %if.end.i316.i

lor.lhs.false2.i311.i.if.end42.i_crit_edge:       ; preds = %lor.lhs.false2.i311.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.end.i316.i:                                    ; preds = %lor.lhs.false2.i311.i
  %166 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %root_level.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %114)
  %cmp.not.i.i313.i = icmp ult i32 %167, %114
  %spec.select.i314.i = select i1 %cmp.not.i.i313.i, i32 511, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %114)
  %switch.i315.i = icmp ult i32 %114, 3
  br i1 %switch.i315.i, label %sw.bb.i.i321.i, label %if.end.i316.i.amdgpu_vm_pt_descendant.exit331.i_crit_edge

if.end.i316.i.amdgpu_vm_pt_descendant.exit331.i_crit_edge: ; preds = %if.end.i316.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_descendant.exit331.i

sw.bb.i.i321.i:                                   ; preds = %if.end.i316.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i28.i317.i = sub nuw nsw i32 2, %114
  %mul.i.i318.i = mul nuw nsw i32 %sub.i28.i317.i, 9
  %168 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %block_size.i.i, align 4
  %add.i.i320.i = add i32 %169, %mul.i.i318.i
  br label %amdgpu_vm_pt_descendant.exit331.i

amdgpu_vm_pt_descendant.exit331.i:                ; preds = %sw.bb.i.i321.i, %if.end.i316.i.amdgpu_vm_pt_descendant.exit331.i_crit_edge
  %retval.0.i30.i322.i = phi i32 [ %add.i.i320.i, %sw.bb.i.i321.i ], [ -1, %if.end.i316.i.amdgpu_vm_pt_descendant.exit331.i_crit_edge ]
  %inc.i323.i = add i32 %114, 1
  %170 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %inc.i323.i, ptr %50, align 8
  %171 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %cursor.i, align 8
  %sh_prom.i324.i = zext i32 %retval.0.i30.i322.i to i64
  %shr.i325.i = lshr i64 %172, %sh_prom.i324.i
  %173 = trunc i64 %shr.i325.i to i32
  %conv9.i326.i = and i32 %spec.select.i314.i, %173
  %174 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %163, ptr %parent.i.i, align 8
  %175 = ptrtoint ptr %bo.i309.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bo.i309.i, align 4
  %arrayidx.i328.i = getelementptr %struct.amdgpu_bo_vm, ptr %176, i32 0, i32 3, i32 %conv9.i326.i
  %177 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %arrayidx.i328.i, ptr %entry1.i.i, align 4
  br label %cleanup151.i

if.else33.i:                                      ; preds = %if.else27.thread.i.if.else33.i_crit_edge, %if.else27.i.if.else33.i_crit_edge
  %retval.0.i263493506521.i = phi i32 [ 0, %if.else27.thread.i.if.else33.i_crit_edge ], [ %retval.0.i263.i, %if.else27.i.if.else33.i_crit_edge ]
  %retval.0.i256439490508520.i = phi i32 [ %retval.0.i256.i, %if.else27.thread.i.if.else33.i_crit_edge ], [ %retval.0.i256439.i, %if.else27.i.if.else33.i_crit_edge ]
  %sub443489510518.i = phi i32 [ 3, %if.else27.thread.i.if.else33.i_crit_edge ], [ %sub443.i, %if.else27.i.if.else33.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.1471.i, i32 %retval.0.i263493506521.i)
  %cmp34.not.i = icmp ult i32 %frag.1471.i, %retval.0.i263493506521.i
  br i1 %cmp34.not.i, label %if.else33.i.if.end42.i_crit_edge, label %if.then35.i

if.else33.i.if.end42.i_crit_edge:                 ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.then35.i:                                      ; preds = %if.else33.i
  %178 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i333.i = icmp eq ptr %179, null
  br i1 %tobool.not.i333.i, label %if.then35.i.cleanup88.thread_crit_edge, label %if.end.i337.i

if.then35.i.cleanup88.thread_crit_edge:           ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88.thread

if.end.i337.i:                                    ; preds = %if.then35.i
  %180 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %sub443489510518.i, ptr %50, align 8
  %181 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %179, ptr %entry1.i.i, align 4
  %bo.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %179, i32 0, i32 1
  %182 = ptrtoint ptr %bo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bo.i.i.i, align 4
  %parent1.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %183, i32 0, i32 8
  %184 = ptrtoint ptr %parent1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %parent1.i.i.i, align 4
  %tobool.not.i.i336.i = icmp eq ptr %185, null
  br i1 %tobool.not.i.i336.i, label %if.end.i337.i.select.unfold.i_crit_edge, label %if.end.i.i338.i

if.end.i337.i.select.unfold.i_crit_edge:          ; preds = %if.end.i337.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %select.unfold.i

if.end.i.i338.i:                                  ; preds = %if.end.i337.i
  call void @__sanitizer_cov_trace_pc() #16
  %vm_bo.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %185, i32 0, i32 7
  %186 = ptrtoint ptr %vm_bo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %vm_bo.i.i.i, align 8
  br label %select.unfold.i

if.end42.i:                                       ; preds = %if.else33.i.if.end42.i_crit_edge, %lor.lhs.false2.i311.i.if.end42.i_crit_edge, %lor.lhs.false.i308.i.if.end42.i_crit_edge, %if.then29.i.if.end42.i_crit_edge, %if.then19.i.if.end42.i_crit_edge, %lor.lhs.false2.i.i.if.end42.i_crit_edge, %lor.lhs.false.i.i.if.end42.i_crit_edge, %if.then13.i.if.end42.i_crit_edge
  %retval.0.i263494.i = phi i32 [ %retval.0.i263.i, %if.then29.i.if.end42.i_crit_edge ], [ %retval.0.i263493506522526.i, %lor.lhs.false.i308.i.if.end42.i_crit_edge ], [ %retval.0.i263493506522526.i, %lor.lhs.false2.i311.i.if.end42.i_crit_edge ], [ %retval.0.i263.i, %if.then13.i.if.end42.i_crit_edge ], [ %retval.0.i263495499.i, %lor.lhs.false.i.i.if.end42.i_crit_edge ], [ %retval.0.i263495499.i, %lor.lhs.false2.i.i.if.end42.i_crit_edge ], [ %retval.0.i263.i, %if.then19.i.if.end42.i_crit_edge ], [ %retval.0.i263493506521.i, %if.else33.i.if.end42.i_crit_edge ]
  %retval.0.i256439491.i = phi i32 [ %retval.0.i256439.i, %if.then29.i.if.end42.i_crit_edge ], [ %retval.0.i256439490508519527.i, %lor.lhs.false.i308.i.if.end42.i_crit_edge ], [ %retval.0.i256439490508519527.i, %lor.lhs.false2.i311.i.if.end42.i_crit_edge ], [ %retval.0.i256439.i, %if.then13.i.if.end42.i_crit_edge ], [ %retval.0.i256439492500.i, %lor.lhs.false.i.i.if.end42.i_crit_edge ], [ %retval.0.i256439492500.i, %lor.lhs.false2.i.i.if.end42.i_crit_edge ], [ %retval.0.i256439.i, %if.then19.i.if.end42.i_crit_edge ], [ %retval.0.i256439490508520.i, %if.else33.i.if.end42.i_crit_edge ]
  %188 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %entry1.i.i, align 4
  %bo.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %bo.i, align 4
  %tobool44.not.i = icmp eq ptr %191, null
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end42.if.end62_crit_edge.i

if.end42.if.end62_crit_edge.i:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i = zext i32 %retval.0.i256439491.i to i64
  br label %if.end62.i

if.then45.i:                                      ; preds = %if.end42.i
  br i1 %tobool11.not, label %if.end49.i, label %if.then45.i.cleanup88.thread_crit_edge

if.then45.i.cleanup88.thread_crit_edge:           ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88.thread

if.end49.i:                                       ; preds = %if.then45.i
  %192 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i341.i = icmp eq ptr %193, null
  br i1 %tobool.not.i341.i, label %if.end49.i.cleanup88.thread_crit_edge, label %if.end.i348.i

if.end49.i.cleanup88.thread_crit_edge:            ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88.thread

if.end.i348.i:                                    ; preds = %if.end49.i
  %dec.i343.i = add i32 %114, -1
  %194 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %dec.i343.i, ptr %50, align 8
  %195 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %193, ptr %entry1.i.i, align 4
  %bo.i.i345.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %193, i32 0, i32 1
  %196 = ptrtoint ptr %bo.i.i345.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bo.i.i345.i, align 4
  %parent1.i.i346.i = getelementptr inbounds %struct.amdgpu_bo, ptr %197, i32 0, i32 8
  %198 = ptrtoint ptr %parent1.i.i346.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %parent1.i.i346.i, align 4
  %tobool.not.i.i347.i = icmp eq ptr %199, null
  br i1 %tobool.not.i.i347.i, label %if.end.i348.i.if.end52.i_crit_edge, label %if.end.i.i350.i

if.end.i348.i.if.end52.i_crit_edge:               ; preds = %if.end.i348.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.i

if.end.i.i350.i:                                  ; preds = %if.end.i348.i
  call void @__sanitizer_cov_trace_pc() #16
  %vm_bo.i.i349.i = getelementptr inbounds %struct.amdgpu_bo, ptr %199, i32 0, i32 7
  %200 = ptrtoint ptr %vm_bo.i.i349.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %vm_bo.i.i349.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end.i.i350.i, %if.end.i348.i.if.end52.i_crit_edge
  %retval.0.i.i351.i = phi ptr [ %201, %if.end.i.i350.i ], [ null, %if.end.i348.i.if.end52.i_crit_edge ]
  %202 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %retval.0.i.i351.i, ptr %parent.i.i, align 8
  %203 = ptrtoint ptr %bo.i.i345.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bo.i.i345.i, align 4
  %sh_prom.i = zext i32 %retval.0.i263494.i to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %add56.i = sub i64 %frag_start.0473.i, %notmask.i
  %and60.i = and i64 %add56.i, %notmask.i
  %205 = call i64 @llvm.umax.i64(i64 %frag_end.0469.i, i64 %and60.i) #14
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end52.i, %if.end42.if.end62_crit_edge.i
  %sh_prom63.pre-phi.i = phi i64 [ %.pre.i, %if.end42.if.end62_crit_edge.i ], [ %sh_prom.i, %if.end52.i ]
  %frag_end.1.i = phi i64 [ %frag_end.0469.i, %if.end42.if.end62_crit_edge.i ], [ %205, %if.end52.i ]
  %pt.0.i = phi ptr [ %191, %if.end42.if.end62_crit_edge.i ], [ %204, %if.end52.i ]
  %shift.0.i = phi i32 [ %retval.0.i256439491.i, %if.end42.if.end62_crit_edge.i ], [ %retval.0.i263494.i, %if.end52.i ]
  %shl64.i = shl i64 4096, %sh_prom63.pre-phi.i
  %206 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %50, align 8
  %208 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %root_level.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %207)
  %cmp.not.i.i = icmp ult i32 %209, %207
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.end62.i.amdgpu_vm_entries_mask.exit.i_crit_edge

if.end62.i.amdgpu_vm_entries_mask.exit.i_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_entries_mask.exit.i

if.else.i.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %207)
  %cmp1.not.i.i = icmp eq i32 %207, 3
  br i1 %cmp1.not.i.i, label %if.else3.i.i, label %if.else.i.i.amdgpu_vm_entries_mask.exit.i_crit_edge

if.else.i.i.amdgpu_vm_entries_mask.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_entries_mask.exit.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %210 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %block_size.i.i, align 4
  %notmask.i356.i = shl nsw i32 -1, %211
  %sub.i357.i = xor i32 %notmask.i356.i, -1
  br label %amdgpu_vm_entries_mask.exit.i

amdgpu_vm_entries_mask.exit.i:                    ; preds = %if.else3.i.i, %if.else.i.i.amdgpu_vm_entries_mask.exit.i_crit_edge, %if.end62.i.amdgpu_vm_entries_mask.exit.i_crit_edge
  %retval.0.i358.i = phi i32 [ %sub.i357.i, %if.else3.i.i ], [ -1, %if.end62.i.amdgpu_vm_entries_mask.exit.i_crit_edge ], [ 511, %if.else.i.i.amdgpu_vm_entries_mask.exit.i_crit_edge ]
  %212 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %cursor.i, align 8
  %shr.i = lshr i64 %213, %sh_prom63.pre-phi.i
  %conv.i162 = zext i32 %retval.0.i358.i to i64
  %and69.i = and i64 %shr.i, %conv.i162
  %mul.i = shl nuw nsw i64 %and69.i, 3
  %add71.i = add nuw nsw i64 %conv.i162, 1
  %shl73.i = shl i64 %add71.i, %sh_prom63.pre-phi.i
  %neg76.i = sub i64 0, %shl73.i
  %and77.i = and i64 %213, %neg76.i
  %add78.i = add i64 %and77.i, %shl73.i
  %214 = call i64 @llvm.umin.i64(i64 %add78.i, i64 %add82) #14
  %conv112.i = trunc i64 %shl64.i to i32
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %amdgpu_vm_entries_mask.exit.i
  %frag_end.2.i = phi i64 [ %frag_end.1.i, %amdgpu_vm_entries_mask.exit.i ], [ %frag_end.3.i, %cleanup.i.do.body.i_crit_edge ]
  %frag.2.i = phi i32 [ %frag.1471.i, %amdgpu_vm_entries_mask.exit.i ], [ %frag.4.i, %cleanup.i.do.body.i_crit_edge ]
  %pe_start.0.i = phi i64 [ %mul.i, %amdgpu_vm_entries_mask.exit.i ], [ %add115.i, %cleanup.i.do.body.i_crit_edge ]
  %frag_start.1.i = phi i64 [ %frag_start.0473.i, %amdgpu_vm_entries_mask.exit.i ], [ %217, %cleanup.i.do.body.i_crit_edge ]
  %dst.addr.1.i = phi i64 [ %dst.addr.0475.i, %amdgpu_vm_entries_mask.exit.i ], [ %add118.i, %cleanup.i.do.body.i_crit_edge ]
  %215 = ptrtoint ptr %vm4 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %vm4, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %214, i64 %frag_end.2.i)
  %cmp89.i = icmp ult i64 %214, %frag_end.2.i
  %217 = call i64 @llvm.umin.i64(i64 %214, i64 %frag_end.2.i) #14
  %sub95.i = sub i64 %217, %frag_start.1.i
  %shr97.i = lshr i64 %sub95.i, %sh_prom63.pre-phi.i
  %conv98.i = trunc i64 %shr97.i to i32
  %218 = shl i32 %frag.2.i, 7
  %219 = and i32 %218, 3968
  %shl101.i = zext i32 %219 to i64
  %or.i = or i64 %shl101.i, %flags
  %220 = call i32 @llvm.umax.i32(i32 %conv98.i, i32 1) #14
  %pid.i = getelementptr inbounds %struct.amdgpu_vm, ptr %216, i32 0, i32 26, i32 2
  %221 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pid.i, align 8
  %fence_context.i = getelementptr inbounds %struct.amdgpu_vm, ptr %216, i32 0, i32 14, i32 8
  %223 = ptrtoint ptr %fence_context.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %fence_context.i, align 8
  call fastcc void @trace_amdgpu_vm_update_ptes(ptr noundef nonnull %params, i64 noundef %frag_start.1.i, i64 noundef %217, i32 noundef %220, i64 noundef %dst.addr.1.i, i64 noundef %shl64.i, i64 noundef %or.i, i32 noundef %222, i64 noundef %224) #14
  %225 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %50, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.addr.i.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags.addr.i.i) #14
  %227 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %dst.addr.1.i, ptr %addr.addr.i.i, align 8
  %228 = ptrtoint ptr %flags.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %or.i, ptr %flags.addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %226)
  %cmp.not.i359.i = icmp eq i32 %226, 3
  br i1 %cmp.not.i359.i, label %if.else.i362.i, label %if.then.i360.i

if.then.i360.i:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i.i163 = or i64 %or.i, 18014398509481984
  %229 = ptrtoint ptr %flags.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %or.i.i163, ptr %flags.addr.i.i, align 8
  %230 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %params, align 4
  %gmc_funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %231, i32 0, i32 62, i32 38
  %232 = ptrtoint ptr %gmc_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %gmc_funcs.i.i, align 4
  %get_vm_pde.i.i = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %233, i32 0, i32 6
  %234 = ptrtoint ptr %get_vm_pde.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %get_vm_pde.i.i, align 4
  call void %235(ptr noundef %231, i32 noundef %226, ptr noundef nonnull %addr.addr.i.i, ptr noundef nonnull %flags.addr.i.i) #14
  br label %amdgpu_vm_update_flags.exit.i

if.else.i362.i:                                   ; preds = %do.body.i
  %236 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %params, align 4
  %asic_type.i361.i = getelementptr inbounds %struct.amdgpu_device, ptr %237, i32 0, i32 5
  %238 = ptrtoint ptr %asic_type.i361.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %asic_type.i361.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %239)
  %cmp3.i.i = icmp ugt i32 %239, 18
  %240 = and i1 %tobool75.not, %cmp3.i.i
  br i1 %240, label %if.then7.i.i, label %if.else.i362.i.amdgpu_vm_update_flags.exit.i_crit_edge

if.else.i362.i.amdgpu_vm_update_flags.exit.i_crit_edge: ; preds = %if.else.i362.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_update_flags.exit.i

if.then7.i.i:                                     ; preds = %if.else.i362.i
  call void @__sanitizer_cov_trace_pc() #16
  %or8.i.i = or i64 %or.i, 16
  %241 = ptrtoint ptr %flags.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %or8.i.i, ptr %flags.addr.i.i, align 8
  br label %amdgpu_vm_update_flags.exit.i

amdgpu_vm_update_flags.exit.i:                    ; preds = %if.then7.i.i, %if.else.i362.i.amdgpu_vm_update_flags.exit.i_crit_edge, %if.then.i360.i
  %242 = ptrtoint ptr %vm4 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %vm4, align 4
  %update_funcs.i.i = getelementptr inbounds %struct.amdgpu_vm, ptr %243, i32 0, i32 20
  %244 = ptrtoint ptr %update_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %update_funcs.i.i, align 8
  %update.i.i = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %245, i32 0, i32 2
  %246 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %update.i.i, align 4
  %248 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %addr.addr.i.i, align 8
  %250 = ptrtoint ptr %flags.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %flags.addr.i.i, align 8
  %call.i363.i = call i32 %247(ptr noundef nonnull %params, ptr noundef %pt.0.i, i64 noundef %pe_start.0.i, i64 noundef %249, i32 noundef %220, i32 noundef %conv112.i, i64 noundef %251) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.addr.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags.addr.i.i) #14
  %mul113.i = shl i32 %220, 3
  %conv114.i = zext i32 %mul113.i to i64
  %add115.i = add i64 %pe_start.0.i, %conv114.i
  %conv116.i = zext i32 %220 to i64
  %mul117.i = mul i64 %shl64.i, %conv116.i
  %add118.i = add i64 %mul117.i, %dst.addr.1.i
  br i1 %cmp89.i, label %amdgpu_vm_update_flags.exit.i.cleanup.i_crit_edge, label %if.then121.i

amdgpu_vm_update_flags.exit.i.cleanup.i_crit_edge: ; preds = %amdgpu_vm_update_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.then121.i:                                     ; preds = %amdgpu_vm_update_flags.exit.i
  %252 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %params, align 4
  %asic_type.i364.i = getelementptr inbounds %struct.amdgpu_device, ptr %253, i32 0, i32 5
  %254 = ptrtoint ptr %asic_type.i364.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %asic_type.i364.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %255)
  %cmp.i365.i = icmp ult i32 %255, 19
  br i1 %cmp.i365.i, label %if.then.i367.i, label %if.then121.i.if.end.i371.i_crit_edge

if.then121.i.if.end.i371.i_crit_edge:             ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i371.i

if.then.i367.i:                                   ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #16
  %fragment_size.i366.i = getelementptr inbounds %struct.amdgpu_device, ptr %253, i32 0, i32 65, i32 8
  %256 = ptrtoint ptr %fragment_size.i366.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %fragment_size.i366.i, align 8
  br label %if.end.i371.i

if.end.i371.i:                                    ; preds = %if.then.i367.i, %if.then121.i.if.end.i371.i_crit_edge
  %max_frag.0.i368.i = phi i32 [ %257, %if.then.i367.i ], [ 31, %if.then121.i.if.end.i371.i_crit_edge ]
  %258 = ptrtoint ptr %pages_addr7 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pages_addr7, align 4
  %tobool.not.i370.i = icmp eq ptr %259, null
  br i1 %tobool.not.i370.i, label %if.end3.i380.i, label %if.end.i371.i.amdgpu_vm_fragment.exit401.i_crit_edge

if.end.i371.i.amdgpu_vm_fragment.exit401.i_crit_edge: ; preds = %if.end.i371.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_fragment.exit401.i

if.end3.i380.i:                                   ; preds = %if.end.i371.i
  %conv.i373.i = trunc i64 %217 to i32
  %260 = call i32 @llvm.cttz.i32(i32 %conv.i373.i, i1 true) #14, !range !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i373.i)
  %iszero.i374.i = icmp eq i32 %conv.i373.i, 0
  %sub.i375.i = select i1 %iszero.i374.i, i32 -1, i32 %260
  %sub4.i376.i = sub i64 %add82, %217
  %shr.i.i377.i = lshr i64 %sub4.i376.i, 32
  %conv.i.i378.i = trunc i64 %shr.i.i377.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i378.i)
  %tobool.not.i.i379.i = icmp eq i32 %conv.i.i378.i, 0
  br i1 %tobool.not.i.i379.i, label %if.end.i.i387.i, label %if.then.i.i382.i

if.then.i.i382.i:                                 ; preds = %if.end3.i380.i
  call void @__sanitizer_cov_trace_pc() #16
  %261 = call i32 @llvm.ctlz.i32(i32 %conv.i.i378.i, i1 true) #14, !range !144
  %add.i.i381.i = sub nuw nsw i32 64, %261
  br label %fls64.exit.i391.i

if.end.i.i387.i:                                  ; preds = %if.end3.i380.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i.i383.i = trunc i64 %sub4.i376.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i383.i)
  %tobool.not.i5.i.i384.i = icmp eq i32 %conv1.i.i383.i, 0
  %262 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i383.i, i1 true) #14, !range !144
  %sub.i6.i.i385.i = sub nuw nsw i32 32, %262
  %cond.i7.i.i386.i = select i1 %tobool.not.i5.i.i384.i, i32 0, i32 %sub.i6.i.i385.i
  br label %fls64.exit.i391.i

fls64.exit.i391.i:                                ; preds = %if.end.i.i387.i, %if.then.i.i382.i
  %retval.0.i.i388.i = phi i32 [ %add.i.i381.i, %if.then.i.i382.i ], [ %cond.i7.i.i386.i, %if.end.i.i387.i ]
  %sub5.i389.i = add nsw i32 %retval.0.i.i388.i, -1
  %263 = call i32 @llvm.umin.i32(i32 %sub.i375.i, i32 %sub5.i389.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %max_frag.0.i368.i)
  %cmp8.not.i390.i = icmp ult i32 %263, %max_frag.0.i368.i
  br i1 %cmp8.not.i390.i, label %if.else12.i399.i, label %if.then10.i395.i

if.then10.i395.i:                                 ; preds = %fls64.exit.i391.i
  call void @__sanitizer_cov_trace_pc() #16
  %sh_prom.i392.i = zext i32 %max_frag.0.i368.i to i64
  %notmask.i393.i = shl nsw i64 -1, %sh_prom.i392.i
  %and.i394.i = and i64 %notmask.i393.i, %add82
  br label %amdgpu_vm_fragment.exit401.i

if.else12.i399.i:                                 ; preds = %fls64.exit.i391.i
  call void @__sanitizer_cov_trace_pc() #16
  %shl13.i396.i = shl nuw i32 1, %263
  %conv14.i397.i = sext i32 %shl13.i396.i to i64
  %add.i398.i = add i64 %217, %conv14.i397.i
  br label %amdgpu_vm_fragment.exit401.i

amdgpu_vm_fragment.exit401.i:                     ; preds = %if.else12.i399.i, %if.then10.i395.i, %if.end.i371.i.amdgpu_vm_fragment.exit401.i_crit_edge
  %frag.3.i = phi i32 [ %263, %if.else12.i399.i ], [ %max_frag.0.i368.i, %if.then10.i395.i ], [ 0, %if.end.i371.i.amdgpu_vm_fragment.exit401.i_crit_edge ]
  %storemerge1.i400.i = phi i64 [ %add.i398.i, %if.else12.i399.i ], [ %and.i394.i, %if.then10.i395.i ], [ %add82, %if.end.i371.i.amdgpu_vm_fragment.exit401.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.3.i, i32 %shift.0.i)
  %cmp122.i = icmp ult i32 %frag.3.i, %shift.0.i
  br i1 %cmp122.i, label %amdgpu_vm_fragment.exit401.i.do.end.i164_crit_edge, label %amdgpu_vm_fragment.exit401.i.cleanup.i_crit_edge

amdgpu_vm_fragment.exit401.i.cleanup.i_crit_edge: ; preds = %amdgpu_vm_fragment.exit401.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

amdgpu_vm_fragment.exit401.i.do.end.i164_crit_edge: ; preds = %amdgpu_vm_fragment.exit401.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i164

cleanup.i:                                        ; preds = %amdgpu_vm_fragment.exit401.i.cleanup.i_crit_edge, %amdgpu_vm_update_flags.exit.i.cleanup.i_crit_edge
  %frag_end.3.i = phi i64 [ %frag_end.2.i, %amdgpu_vm_update_flags.exit.i.cleanup.i_crit_edge ], [ %storemerge1.i400.i, %amdgpu_vm_fragment.exit401.i.cleanup.i_crit_edge ]
  %frag.4.i = phi i32 [ %frag.2.i, %amdgpu_vm_update_flags.exit.i.cleanup.i_crit_edge ], [ %frag.3.i, %amdgpu_vm_fragment.exit401.i.cleanup.i_crit_edge ]
  %cmp130.i = icmp ugt i64 %214, %frag_end.2.i
  br i1 %cmp130.i, label %cleanup.i.do.body.i_crit_edge, label %cleanup.i.do.end.i164_crit_edge

cleanup.i.do.end.i164_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i164

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i164:                                      ; preds = %cleanup.i.do.end.i164_crit_edge, %amdgpu_vm_fragment.exit401.i.do.end.i164_crit_edge
  %frag.5456.i = phi i32 [ %frag.4.i, %cleanup.i.do.end.i164_crit_edge ], [ %frag.3.i, %amdgpu_vm_fragment.exit401.i.do.end.i164_crit_edge ]
  %frag_end.4455.i = phi i64 [ %frag_end.3.i, %cleanup.i.do.end.i164_crit_edge ], [ %storemerge1.i400.i, %amdgpu_vm_fragment.exit401.i.do.end.i164_crit_edge ]
  %264 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %265)
  %cmp.i403.i = icmp eq i32 %265, 3
  br i1 %cmp.i403.i, label %do.end.i164.if.else145.i_crit_edge, label %lor.lhs.false.i406.i

do.end.i164.if.else145.i_crit_edge:               ; preds = %do.end.i164
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else145.i

lor.lhs.false.i406.i:                             ; preds = %do.end.i164
  %266 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %entry1.i.i, align 4
  %tobool.not.i405.i = icmp eq ptr %267, null
  br i1 %tobool.not.i405.i, label %lor.lhs.false.i406.i.if.else145.i_crit_edge, label %lor.lhs.false2.i409.i

lor.lhs.false.i406.i.if.else145.i_crit_edge:      ; preds = %lor.lhs.false.i406.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else145.i

lor.lhs.false2.i409.i:                            ; preds = %lor.lhs.false.i406.i
  %bo.i407.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %bo.i407.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %bo.i407.i, align 4
  %tobool4.not.i408.i = icmp eq ptr %269, null
  br i1 %tobool4.not.i408.i, label %lor.lhs.false2.i409.i.if.else145.i_crit_edge, label %if.end.i414.i

lor.lhs.false2.i409.i.if.else145.i_crit_edge:     ; preds = %lor.lhs.false2.i409.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else145.i

if.end.i414.i:                                    ; preds = %lor.lhs.false2.i409.i
  %270 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %root_level.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %271, i32 %265)
  %cmp.not.i.i411.i = icmp ult i32 %271, %265
  %spec.select.i412.i = select i1 %cmp.not.i.i411.i, i32 511, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %265)
  %switch.i413.i = icmp ult i32 %265, 3
  br i1 %switch.i413.i, label %sw.bb.i.i419.i, label %if.end.i414.i.amdgpu_vm_pt_descendant.exit429.i_crit_edge

if.end.i414.i.amdgpu_vm_pt_descendant.exit429.i_crit_edge: ; preds = %if.end.i414.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_descendant.exit429.i

sw.bb.i.i419.i:                                   ; preds = %if.end.i414.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i28.i415.i = sub nuw nsw i32 2, %265
  %mul.i.i416.i = mul nuw nsw i32 %sub.i28.i415.i, 9
  %272 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %block_size.i.i, align 4
  %add.i.i418.i = add i32 %273, %mul.i.i416.i
  br label %amdgpu_vm_pt_descendant.exit429.i

amdgpu_vm_pt_descendant.exit429.i:                ; preds = %sw.bb.i.i419.i, %if.end.i414.i.amdgpu_vm_pt_descendant.exit429.i_crit_edge
  %retval.0.i30.i420.i = phi i32 [ %add.i.i418.i, %sw.bb.i.i419.i ], [ -1, %if.end.i414.i.amdgpu_vm_pt_descendant.exit429.i_crit_edge ]
  %inc.i421.i = add i32 %265, 1
  %274 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %inc.i421.i, ptr %50, align 8
  %275 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %cursor.i, align 8
  %sh_prom.i422.i = zext i32 %retval.0.i30.i420.i to i64
  %shr.i423.i = lshr i64 %276, %sh_prom.i422.i
  %277 = trunc i64 %shr.i423.i to i32
  %conv9.i424.i = and i32 %spec.select.i412.i, %277
  %278 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %267, ptr %parent.i.i, align 8
  %279 = ptrtoint ptr %bo.i407.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %bo.i407.i, align 4
  %arrayidx.i426.i = getelementptr %struct.amdgpu_bo_vm, ptr %280, i32 0, i32 3, i32 %conv9.i424.i
  %281 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %arrayidx.i426.i, ptr %entry1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %276, i64 %217)
  %cmp136467.i = icmp ult i64 %276, %217
  br i1 %cmp136467.i, label %amdgpu_vm_pt_descendant.exit429.i.while.body138.i_crit_edge, label %amdgpu_vm_pt_descendant.exit429.i.cleanup151.i_crit_edge

amdgpu_vm_pt_descendant.exit429.i.cleanup151.i_crit_edge: ; preds = %amdgpu_vm_pt_descendant.exit429.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup151.i

amdgpu_vm_pt_descendant.exit429.i.while.body138.i_crit_edge: ; preds = %amdgpu_vm_pt_descendant.exit429.i
  br label %while.body138.i

while.body138.i:                                  ; preds = %if.end144.i.while.body138.i_crit_edge, %amdgpu_vm_pt_descendant.exit429.i.while.body138.i_crit_edge
  %282 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %entry1.i.i, align 4
  %bo140.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %bo140.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %bo140.i, align 4
  %tobool141.not.i = icmp eq ptr %285, null
  br i1 %tobool141.not.i, label %while.body138.i.if.end144.i_crit_edge, label %if.then142.i

while.body138.i.if.end144.i_crit_edge:            ; preds = %while.body138.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end144.i

if.then142.i:                                     ; preds = %while.body138.i
  call void @__sanitizer_cov_trace_pc() #16
  %286 = ptrtoint ptr %table_freed.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 1, ptr %table_freed.i, align 4
  %287 = ptrtoint ptr %vm4 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %vm4, align 4
  call fastcc void @amdgpu_vm_free_pts(ptr noundef %66, ptr noundef %288, ptr noundef nonnull %cursor.i) #14
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then142.i, %while.body138.i.if.end144.i_crit_edge
  call fastcc void @amdgpu_vm_pt_next(ptr noundef %66, ptr noundef nonnull %cursor.i) #14
  %289 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %cursor.i, align 8
  %cmp136.i = icmp ult i64 %290, %217
  br i1 %cmp136.i, label %if.end144.i.while.body138.i_crit_edge, label %if.end144.i.cleanup151.i_crit_edge

if.end144.i.cleanup151.i_crit_edge:               ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup151.i

if.end144.i.while.body138.i_crit_edge:            ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body138.i

if.else145.i:                                     ; preds = %lor.lhs.false2.i409.i.if.else145.i_crit_edge, %lor.lhs.false.i406.i.if.else145.i_crit_edge, %do.end.i164.if.else145.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.5456.i, i32 %shift.0.i)
  %cmp146.not.i = icmp ult i32 %frag.5456.i, %shift.0.i
  br i1 %cmp146.not.i, label %if.else145.i.cleanup151.i_crit_edge, label %if.then148.i

if.else145.i.cleanup151.i_crit_edge:              ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup151.i

if.then148.i:                                     ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @amdgpu_vm_pt_next(ptr noundef %66, ptr noundef nonnull %cursor.i) #14
  br label %cleanup151.i

select.unfold.i:                                  ; preds = %if.end.i.i338.i, %if.end.i337.i.select.unfold.i_crit_edge
  %retval.0.i.i339.i = phi ptr [ %187, %if.end.i.i338.i ], [ null, %if.end.i337.i.select.unfold.i_crit_edge ]
  %291 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %retval.0.i.i339.i, ptr %parent.i.i, align 8
  br label %cleanup151.i

cleanup151.i:                                     ; preds = %select.unfold.i, %if.then148.i, %if.else145.i.cleanup151.i_crit_edge, %if.end144.i.cleanup151.i_crit_edge, %amdgpu_vm_pt_descendant.exit429.i.cleanup151.i_crit_edge, %amdgpu_vm_pt_descendant.exit331.i, %153, %amdgpu_vm_pt_descendant.exit.i
  %frag_end.5.i = phi i64 [ %frag_end.0469.i, %amdgpu_vm_pt_descendant.exit331.i ], [ %frag_end.4455.i, %if.else145.i.cleanup151.i_crit_edge ], [ %frag_end.4455.i, %if.then148.i ], [ %frag_end.0469.i, %amdgpu_vm_pt_descendant.exit.i ], [ %frag_end.0469.i, %153 ], [ %frag_end.0469.i, %select.unfold.i ], [ %frag_end.4455.i, %amdgpu_vm_pt_descendant.exit429.i.cleanup151.i_crit_edge ], [ %frag_end.4455.i, %if.end144.i.cleanup151.i_crit_edge ]
  %frag.6.i = phi i32 [ %frag.1471.i, %amdgpu_vm_pt_descendant.exit331.i ], [ %frag.5456.i, %if.else145.i.cleanup151.i_crit_edge ], [ %frag.5456.i, %if.then148.i ], [ %frag.1471.i, %amdgpu_vm_pt_descendant.exit.i ], [ %frag.1471.i, %153 ], [ %frag.1471.i, %select.unfold.i ], [ %frag.5456.i, %amdgpu_vm_pt_descendant.exit429.i.cleanup151.i_crit_edge ], [ %frag.5456.i, %if.end144.i.cleanup151.i_crit_edge ]
  %frag_start.2.i = phi i64 [ %frag_start.0473.i, %amdgpu_vm_pt_descendant.exit331.i ], [ %217, %if.else145.i.cleanup151.i_crit_edge ], [ %217, %if.then148.i ], [ %frag_start.0473.i, %amdgpu_vm_pt_descendant.exit.i ], [ %frag_start.0473.i, %153 ], [ %frag_start.0473.i, %select.unfold.i ], [ %217, %amdgpu_vm_pt_descendant.exit429.i.cleanup151.i_crit_edge ], [ %217, %if.end144.i.cleanup151.i_crit_edge ]
  %dst.addr.2.i = phi i64 [ %dst.addr.0475.i, %amdgpu_vm_pt_descendant.exit331.i ], [ %add118.i, %if.else145.i.cleanup151.i_crit_edge ], [ %add118.i, %if.then148.i ], [ %dst.addr.0475.i, %amdgpu_vm_pt_descendant.exit.i ], [ %dst.addr.0475.i, %153 ], [ %dst.addr.0475.i, %select.unfold.i ], [ %add118.i, %amdgpu_vm_pt_descendant.exit429.i.cleanup151.i_crit_edge ], [ %add118.i, %if.end144.i.cleanup151.i_crit_edge ]
  %292 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %cursor.i, align 8
  %cmp.i165 = icmp ult i64 %293, %add82
  br i1 %cmp.i165, label %cleanup151.i.while.body.i159_crit_edge, label %cleanup151.i.if.end86_crit_edge

cleanup151.i.if.end86_crit_edge:                  ; preds = %cleanup151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

cleanup151.i.while.body.i159_crit_edge:           ; preds = %cleanup151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i159

cleanup88.thread:                                 ; preds = %if.end49.i.cleanup88.thread_crit_edge, %if.then45.i.cleanup88.thread_crit_edge, %if.then35.i.cleanup88.thread_crit_edge, %lor.lhs.false2.i283.i.cleanup88.thread_crit_edge, %lor.lhs.false.i280.i.cleanup88.thread_crit_edge, %amdgpu_vm_alloc_pts.exit.i
  %retval.2.i.ph = phi i32 [ %retval.0.i.i, %amdgpu_vm_alloc_pts.exit.i ], [ -2, %if.then45.i.cleanup88.thread_crit_edge ], [ -2, %lor.lhs.false2.i283.i.cleanup88.thread_crit_edge ], [ -2, %lor.lhs.false.i280.i.cleanup88.thread_crit_edge ], [ -22, %if.end49.i.cleanup88.thread_crit_edge ], [ -22, %if.then35.i.cleanup88.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cursor.i) #14
  br label %error_unlock

if.end86:                                         ; preds = %cleanup151.i.if.end86_crit_edge, %amdgpu_vm_fragment.exit.i.if.end86_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cursor.i) #14
  %mul87 = shl i64 %num_entries.1, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.20.1208, i64 %mul87)
  %cmp.i166 = icmp ult i64 %cursor.sroa.20.1208, %mul87
  br i1 %cmp.i166, label %do.body3.i, label %do.end8.i, !prof !136

do.body3.i:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #14, !srcloc !145
  unreachable

do.end8.i:                                        ; preds = %if.end86
  %sub.i167 = sub i64 %cursor.sroa.20.1208, %mul87
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.20.1208, i64 %mul87)
  %tobool11.not.i = icmp eq i64 %cursor.sroa.20.1208, %mul87
  br i1 %tobool11.not.i, label %do.end8.i.cleanup88_crit_edge, label %if.end13.i

do.end8.i.cleanup88_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88

if.end13.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.13.1209, i64 %mul87)
  %tobool17.not.i = icmp eq i64 %cursor.sroa.13.1209, %mul87
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub15.i = sub i64 %cursor.sroa.13.1209, %mul87
  %add.i168 = add i64 %mul87, %cursor.sroa.0.1210
  br label %cleanup88

if.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i169 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.26.1207, i32 1
  %start21.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.26.1207, i32 1, i32 1
  %294 = ptrtoint ptr %start21.i to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %start21.i, align 8
  %shl.i170 = shl i64 %295, 12
  %size23.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.26.1207, i32 1, i32 2
  %296 = ptrtoint ptr %size23.i to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %size23.i, align 8
  %shl24.i = shl i64 %297, 12
  %298 = call i64 @llvm.umin.i64(i64 %shl24.i, i64 %sub.i167) #14
  br label %cleanup88

cleanup88:                                        ; preds = %if.end19.i, %if.then18.i, %do.end8.i.cleanup88_crit_edge
  %cursor.sroa.26.3 = phi ptr [ %cursor.sroa.26.1207, %do.end8.i.cleanup88_crit_edge ], [ %incdec.ptr.i169, %if.end19.i ], [ %cursor.sroa.26.1207, %if.then18.i ]
  %cursor.sroa.13.3 = phi i64 [ %cursor.sroa.13.1209, %do.end8.i.cleanup88_crit_edge ], [ %298, %if.end19.i ], [ %sub15.i, %if.then18.i ]
  %cursor.sroa.0.3 = phi i64 [ %cursor.sroa.0.1210, %do.end8.i.cleanup88_crit_edge ], [ %shl.i170, %if.end19.i ], [ %add.i168, %if.then18.i ]
  %tobool30.not = icmp eq i64 %sub.i167, 0
  br i1 %tobool30.not, label %cleanup88.while.end_crit_edge, label %cleanup88.while.body_crit_edge

cleanup88.while.body_crit_edge:                   ; preds = %cleanup88
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup88.while.end_crit_edge:                    ; preds = %cleanup88
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup88.while.end_crit_edge, %amdgpu_res_first.exit.while.end_crit_edge
  %299 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %update_funcs, align 8
  %commit = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %300, i32 0, i32 3
  %301 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %commit, align 4
  %call94 = call i32 %302(ptr noundef nonnull %params, ptr noundef %fence) #14
  %tobool95.not = icmp eq ptr %table_freed, null
  br i1 %tobool95.not, label %while.end.error_unlock_crit_edge, label %if.then96

while.end.error_unlock_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unlock

if.then96:                                        ; preds = %while.end
  %303 = ptrtoint ptr %table_freed to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %table_freed, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool97.not = icmp eq i8 %304, 0
  br i1 %tobool97.not, label %lor.rhs, label %if.then96.lor.end_crit_edge

if.then96.lor.end_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #16
  %table_freed99 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 7
  %305 = ptrtoint ptr %table_freed99 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %table_freed99, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool100 = icmp ne i8 %306, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then96.lor.end_crit_edge
  %307 = phi i1 [ true, %if.then96.lor.end_crit_edge ], [ %tobool100, %lor.rhs ]
  %frombool102 = zext i1 %307 to i8
  %308 = ptrtoint ptr %table_freed to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %frombool102, ptr %table_freed, align 1
  br label %error_unlock

error_unlock:                                     ; preds = %lor.end, %while.end.error_unlock_crit_edge, %cleanup88.thread, %if.end24.error_unlock_crit_edge, %if.end.error_unlock_crit_edge
  %r.0 = phi i32 [ %call25, %if.end24.error_unlock_crit_edge ], [ %call94, %lor.end ], [ %call94, %while.end.error_unlock_crit_edge ], [ -16, %if.end.error_unlock_crit_edge ], [ %retval.2.i.ph, %cleanup88.thread ]
  %309 = ptrtoint ptr %saved_flags.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %saved_flags.i, align 8
  %311 = call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i173 = and i32 %311, -16384
  %312 = inttoptr i32 %and.i.i.i173 to ptr
  %task.i.i174 = getelementptr inbounds %struct.thread_info, ptr %312, i32 0, i32 2
  %313 = ptrtoint ptr %task.i.i174 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %task.i.i174, align 8
  %flags1.i.i175 = getelementptr inbounds %struct.task_struct, ptr %314, i32 0, i32 3
  %315 = ptrtoint ptr %flags1.i.i175 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %flags1.i.i175, align 4
  %and.i.i176 = and i32 %316, -2049
  %or.i.i177 = or i32 %and.i.i176, %310
  store i32 %or.i.i177, ptr %flags1.i.i175, align 4
  call void @mutex_unlock(ptr noundef %eviction_lock.i) #14
  %317 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %318) #14
  br label %cleanup104

cleanup104:                                       ; preds = %error_unlock, %entry.cleanup104_crit_edge
  %retval.0 = phi i32 [ %r.0, %error_unlock ], [ -19, %entry.cleanup104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %params) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_get_stub() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_fence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_get_memory(ptr noundef %vm, ptr noundef %vram_mem, ptr noundef %gtt_mem, ptr noundef %cpu_mem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %idle = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 7
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idle, align 4
  %cmp.not258 = icmp eq ptr %1, %idle
  br i1 %cmp.not258, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in259 = phi ptr [ %.pn260, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in259 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn260 = load ptr, ptr %.pn.in259, align 4
  %bo = getelementptr i8, ptr %.pn.in259, i32 -8
  %3 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @amdgpu_bo_get_memory(ptr noundef nonnull %4, ptr noundef %vram_mem, ptr noundef %gtt_mem, ptr noundef %cpu_mem) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn260, %idle
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %evicted = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 4
  %5 = ptrtoint ptr %evicted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %evicted, align 4
  %cmp32.not262 = icmp eq ptr %6, %evicted
  br i1 %cmp32.not262, label %for.end.for.end49_crit_edge, label %for.end.for.body34_crit_edge

for.end.for.body34_crit_edge:                     ; preds = %for.end
  br label %for.body34

for.end.for.end49_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end49

for.body34:                                       ; preds = %for.inc42.for.body34_crit_edge, %for.end.for.body34_crit_edge
  %.pn246.in263 = phi ptr [ %.pn246264, %for.inc42.for.body34_crit_edge ], [ %6, %for.end.for.body34_crit_edge ]
  %7 = ptrtoint ptr %.pn246.in263 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn246264 = load ptr, ptr %.pn246.in263, align 4
  %bo36 = getelementptr i8, ptr %.pn246.in263, i32 -8
  %8 = ptrtoint ptr %bo36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bo36, align 4
  %tobool37.not = icmp eq ptr %9, null
  br i1 %tobool37.not, label %for.body34.for.inc42_crit_edge, label %if.end39

for.body34.for.inc42_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc42

if.end39:                                         ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @amdgpu_bo_get_memory(ptr noundef nonnull %9, ptr noundef %vram_mem, ptr noundef %gtt_mem, ptr noundef %cpu_mem) #14
  br label %for.inc42

for.inc42:                                        ; preds = %if.end39, %for.body34.for.inc42_crit_edge
  %cmp32.not = icmp eq ptr %.pn246264, %evicted
  br i1 %cmp32.not, label %for.inc42.for.end49_crit_edge, label %for.inc42.for.body34_crit_edge

for.inc42.for.body34_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body34

for.inc42.for.end49_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end49

for.end49:                                        ; preds = %for.inc42.for.end49_crit_edge, %for.end.for.end49_crit_edge
  %relocated = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 5
  %10 = ptrtoint ptr %relocated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %relocated, align 4
  %cmp64.not266 = icmp eq ptr %11, %relocated
  br i1 %cmp64.not266, label %for.end49.for.end81_crit_edge, label %for.end49.for.body66_crit_edge

for.end49.for.body66_crit_edge:                   ; preds = %for.end49
  br label %for.body66

for.end49.for.end81_crit_edge:                    ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end81

for.body66:                                       ; preds = %for.inc74.for.body66_crit_edge, %for.end49.for.body66_crit_edge
  %.pn247.in267 = phi ptr [ %.pn247268, %for.inc74.for.body66_crit_edge ], [ %11, %for.end49.for.body66_crit_edge ]
  %12 = ptrtoint ptr %.pn247.in267 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn247268 = load ptr, ptr %.pn247.in267, align 4
  %bo68 = getelementptr i8, ptr %.pn247.in267, i32 -8
  %13 = ptrtoint ptr %bo68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo68, align 4
  %tobool69.not = icmp eq ptr %14, null
  br i1 %tobool69.not, label %for.body66.for.inc74_crit_edge, label %if.end71

for.body66.for.inc74_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74

if.end71:                                         ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @amdgpu_bo_get_memory(ptr noundef nonnull %14, ptr noundef %vram_mem, ptr noundef %gtt_mem, ptr noundef %cpu_mem) #14
  br label %for.inc74

for.inc74:                                        ; preds = %if.end71, %for.body66.for.inc74_crit_edge
  %cmp64.not = icmp eq ptr %.pn247268, %relocated
  br i1 %cmp64.not, label %for.inc74.for.end81_crit_edge, label %for.inc74.for.body66_crit_edge

for.inc74.for.body66_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body66

for.inc74.for.end81_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end81

for.end81:                                        ; preds = %for.inc74.for.end81_crit_edge, %for.end49.for.end81_crit_edge
  %moved = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 6
  %15 = ptrtoint ptr %moved to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %moved, align 4
  %cmp96.not270 = icmp eq ptr %16, %moved
  br i1 %cmp96.not270, label %for.end81.for.end113_crit_edge, label %for.end81.for.body98_crit_edge

for.end81.for.body98_crit_edge:                   ; preds = %for.end81
  br label %for.body98

for.end81.for.end113_crit_edge:                   ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end113

for.body98:                                       ; preds = %for.inc106.for.body98_crit_edge, %for.end81.for.body98_crit_edge
  %.pn248.in271 = phi ptr [ %.pn248272, %for.inc106.for.body98_crit_edge ], [ %16, %for.end81.for.body98_crit_edge ]
  %17 = ptrtoint ptr %.pn248.in271 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn248272 = load ptr, ptr %.pn248.in271, align 4
  %bo100 = getelementptr i8, ptr %.pn248.in271, i32 -8
  %18 = ptrtoint ptr %bo100 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo100, align 4
  %tobool101.not = icmp eq ptr %19, null
  br i1 %tobool101.not, label %for.body98.for.inc106_crit_edge, label %if.end103

for.body98.for.inc106_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc106

if.end103:                                        ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @amdgpu_bo_get_memory(ptr noundef nonnull %19, ptr noundef %vram_mem, ptr noundef %gtt_mem, ptr noundef %cpu_mem) #14
  br label %for.inc106

for.inc106:                                       ; preds = %if.end103, %for.body98.for.inc106_crit_edge
  %cmp96.not = icmp eq ptr %.pn248272, %moved
  br i1 %cmp96.not, label %for.inc106.for.end113_crit_edge, label %for.inc106.for.body98_crit_edge

for.inc106.for.body98_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body98

for.inc106.for.end113_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end113

for.end113:                                       ; preds = %for.inc106.for.end113_crit_edge, %for.end81.for.end113_crit_edge
  %invalidated_lock = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %invalidated_lock) #14
  %invalidated = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 8
  %20 = ptrtoint ptr %invalidated to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %invalidated, align 4
  %cmp128.not274 = icmp eq ptr %21, %invalidated
  br i1 %cmp128.not274, label %for.end113.for.end145_crit_edge, label %for.end113.for.body130_crit_edge

for.end113.for.body130_crit_edge:                 ; preds = %for.end113
  br label %for.body130

for.end113.for.end145_crit_edge:                  ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end145

for.body130:                                      ; preds = %for.inc138.for.body130_crit_edge, %for.end113.for.body130_crit_edge
  %.pn249.in275 = phi ptr [ %.pn249276, %for.inc138.for.body130_crit_edge ], [ %21, %for.end113.for.body130_crit_edge ]
  %22 = ptrtoint ptr %.pn249.in275 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn249276 = load ptr, ptr %.pn249.in275, align 4
  %bo132 = getelementptr i8, ptr %.pn249.in275, i32 -8
  %23 = ptrtoint ptr %bo132 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bo132, align 4
  %tobool133.not = icmp eq ptr %24, null
  br i1 %tobool133.not, label %for.body130.for.inc138_crit_edge, label %if.end135

for.body130.for.inc138_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc138

if.end135:                                        ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @amdgpu_bo_get_memory(ptr noundef nonnull %24, ptr noundef %vram_mem, ptr noundef %gtt_mem, ptr noundef %cpu_mem) #14
  br label %for.inc138

for.inc138:                                       ; preds = %if.end135, %for.body130.for.inc138_crit_edge
  %cmp128.not = icmp eq ptr %.pn249276, %invalidated
  br i1 %cmp128.not, label %for.inc138.for.end145_crit_edge, label %for.inc138.for.body130_crit_edge

for.inc138.for.body130_crit_edge:                 ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body130

for.inc138.for.end145_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end145

for.end145:                                       ; preds = %for.inc138.for.end145_crit_edge, %for.end113.for.end145_crit_edge
  %done = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 11
  %25 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %done, align 8
  %cmp160.not278 = icmp eq ptr %26, %done
  br i1 %cmp160.not278, label %for.end145.for.end177_crit_edge, label %for.end145.for.body162_crit_edge

for.end145.for.body162_crit_edge:                 ; preds = %for.end145
  br label %for.body162

for.end145.for.end177_crit_edge:                  ; preds = %for.end145
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end177

for.body162:                                      ; preds = %for.inc170.for.body162_crit_edge, %for.end145.for.body162_crit_edge
  %.pn250.in279 = phi ptr [ %.pn250280, %for.inc170.for.body162_crit_edge ], [ %26, %for.end145.for.body162_crit_edge ]
  %27 = ptrtoint ptr %.pn250.in279 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn250280 = load ptr, ptr %.pn250.in279, align 4
  %bo164 = getelementptr i8, ptr %.pn250.in279, i32 -8
  %28 = ptrtoint ptr %bo164 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bo164, align 4
  %tobool165.not = icmp eq ptr %29, null
  br i1 %tobool165.not, label %for.body162.for.inc170_crit_edge, label %if.end167

for.body162.for.inc170_crit_edge:                 ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc170

if.end167:                                        ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @amdgpu_bo_get_memory(ptr noundef nonnull %29, ptr noundef %vram_mem, ptr noundef %gtt_mem, ptr noundef %cpu_mem) #14
  br label %for.inc170

for.inc170:                                       ; preds = %if.end167, %for.body162.for.inc170_crit_edge
  %cmp160.not = icmp eq ptr %.pn250280, %done
  br i1 %cmp160.not, label %for.inc170.for.end177_crit_edge, label %for.inc170.for.body162_crit_edge

for.inc170.for.body162_crit_edge:                 ; preds = %for.inc170
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body162

for.inc170.for.end177_crit_edge:                  ; preds = %for.inc170
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end177

for.end177:                                       ; preds = %for.inc170.for.end177_crit_edge, %for.end145.for.end177_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %invalidated_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_get_memory(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_bo_update(ptr noundef %adev, ptr noundef %bo_va, i1 noundef zeroext %clear, ptr noundef %table_freed) local_unnamed_addr #0 align 64 {
entry:
  %update_flags = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %clear to i8
  %bo1 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 1
  %0 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo1, align 4
  %2 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo_va, align 4
  %tobool4.not = icmp eq ptr %1, null
  %or.cond = select i1 %clear, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bo5 = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %bo5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo5, align 4
  %resv7 = getelementptr inbounds %struct.amdgpu_bo, ptr %5, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv7, align 8
  br label %if.end33

if.else:                                          ; preds = %entry
  %resv12 = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv12, align 8
  %import_attach = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 8
  %10 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %import_attach, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.else.if.end22_crit_edge, label %land.lhs.true

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true:                                    ; preds = %if.else
  %is_xgmi = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 6
  %12 = ptrtoint ptr %is_xgmi to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_xgmi, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end22_crit_edge, label %if.then15

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp eq i32 %21, 2
  %add.ptr = getelementptr i8, ptr %17, i32 -72
  %spec.select = select i1 %cmp, ptr %add.ptr, ptr %1
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %land.lhs.true.if.end22_crit_edge, %if.else.if.end22_crit_edge
  %bo.1 = phi ptr [ %spec.select, %if.then15 ], [ %1, %land.lhs.true.if.end22_crit_edge ], [ %1, %if.else.if.end22_crit_edge ]
  %resource24 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.1, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %resource24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resource24, align 4
  %mem_type25 = getelementptr inbounds %struct.ttm_resource, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %mem_type25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mem_type25, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %25, label %if.end22.if.end33_crit_edge [
    i32 1, label %if.end22.if.then30_crit_edge
    i32 6, label %if.end22.if.then30_crit_edge308
  ]

if.end22.if.then30_crit_edge308:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

if.end22.if.then30_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then30:                                        ; preds = %if.end22.if.then30_crit_edge, %if.end22.if.then30_crit_edge308
  %ttm = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.1, i32 0, i32 4, i32 7
  %27 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ttm, align 8
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_address, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end22.if.end33_crit_edge, %if.then
  %resv.0 = phi ptr [ %7, %if.then ], [ %9, %if.end22.if.end33_crit_edge ], [ %9, %if.then30 ]
  %mem.0 = phi ptr [ null, %if.then ], [ %23, %if.end22.if.end33_crit_edge ], [ %23, %if.then30 ]
  %pages_addr.1 = phi ptr [ null, %if.then ], [ null, %if.end22.if.end33_crit_edge ], [ %30, %if.then30 ]
  %bo.2 = phi ptr [ %1, %if.then ], [ %bo.1, %if.end22.if.end33_crit_edge ], [ %bo.1, %if.then30 ]
  %tobool34.not = icmp eq ptr %bo.2, null
  br i1 %tobool34.not, label %if.end44, label %if.end44.thread

if.end44:                                         ; preds = %if.end33
  br i1 %clear, label %if.end44.if.end61.thread299_crit_edge, label %if.end44.if.end61.thread_crit_edge

if.end44.if.end61.thread_crit_edge:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.thread

if.end44.if.end61.thread299_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.thread299

if.end44.thread:                                  ; preds = %if.end33
  %ttm37 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.2, i32 0, i32 4, i32 7
  %31 = ptrtoint ptr %ttm37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ttm37, align 8
  %call = tail call i64 @amdgpu_ttm_tt_pte_flags(ptr noundef %adev, ptr noundef %32, ptr noundef %mem.0) #14
  %flags.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.2, i32 0, i32 6
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %flags.i, align 8
  %and.i = lshr i64 %34, 7
  %35 = and i64 %and.i, 8
  %36 = or i64 %35, %call
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.2, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %38, i32 -17736
  br i1 %clear, label %if.end44.thread.if.end61.thread299_crit_edge, label %land.lhs.true48

if.end44.thread.if.end61.thread299_crit_edge:     ; preds = %if.end44.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.thread299

land.lhs.true48:                                  ; preds = %if.end44.thread
  %resv51 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.2, i32 0, i32 4, i32 0, i32 9
  %39 = ptrtoint ptr %resv51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resv51, align 8
  %bo53 = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 12, i32 1
  %41 = ptrtoint ptr %bo53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bo53, align 4
  %resv56 = getelementptr inbounds %struct.amdgpu_bo, ptr %42, i32 0, i32 4, i32 0, i32 9
  %43 = ptrtoint ptr %resv56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %resv56, align 8
  %cmp57 = icmp eq ptr %40, %44
  br i1 %cmp57, label %if.end61, label %land.lhs.true48.if.end61.thread_crit_edge

land.lhs.true48.if.end61.thread_crit_edge:        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.thread

if.end61.thread:                                  ; preds = %land.lhs.true48.if.end61.thread_crit_edge, %if.end44.if.end61.thread_crit_edge
  %bo_adev.0276286 = phi ptr [ %add.ptr.i, %land.lhs.true48.if.end61.thread_crit_edge ], [ %adev, %if.end44.if.end61.thread_crit_edge ]
  %flags.1279284 = phi i64 [ %36, %land.lhs.true48.if.end61.thread_crit_edge ], [ 0, %if.end44.if.end61.thread_crit_edge ]
  %last_pt_update = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 2
  br label %land.lhs.true63

if.end61.thread299:                               ; preds = %if.end44.thread.if.end61.thread299_crit_edge, %if.end44.if.end61.thread299_crit_edge
  %flags.1280.ph = phi i64 [ 0, %if.end44.if.end61.thread299_crit_edge ], [ %36, %if.end44.thread.if.end61.thread299_crit_edge ]
  %bo_adev.0277.ph = phi ptr [ %adev, %if.end44.if.end61.thread299_crit_edge ], [ %add.ptr.i, %if.end44.thread.if.end61.thread299_crit_edge ]
  %last_update59302 = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 13
  br label %if.else69

if.end61:                                         ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #16
  %last_update59 = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 13
  br label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.end61, %if.end61.thread
  %last_update.0298 = phi ptr [ %last_pt_update, %if.end61.thread ], [ %last_update59, %if.end61 ]
  %bo_adev.0275295 = phi ptr [ %bo_adev.0276286, %if.end61.thread ], [ %add.ptr.i, %if.end61 ]
  %flags.1278292 = phi i64 [ %flags.1279284, %if.end61.thread ], [ %36, %if.end61 ]
  %moved = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 4
  %45 = ptrtoint ptr %moved to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %moved, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool65.not = icmp eq i8 %46, 0
  br i1 %tobool65.not, label %land.lhs.true63.if.else69_crit_edge, label %if.then66

land.lhs.true63.if.else69_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else69

if.then66:                                        ; preds = %land.lhs.true63
  %47 = ptrtoint ptr %moved to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %moved, align 4
  %valids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 4
  %48 = ptrtoint ptr %valids to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %valids, align 4
  %cmp.i.not.i = icmp eq ptr %49, %valids
  br i1 %cmp.i.not.i, label %if.then66.if.end79_crit_edge, label %if.then.i

if.then66.if.end79_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then.i:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  %invalids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 3
  %50 = ptrtoint ptr %invalids to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %invalids, align 4
  %prev2.i.i = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %invalids, ptr %prev3.i.i, align 4
  store ptr %49, ptr %invalids, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %51, ptr %53, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev6.i.i, align 4
  %57 = ptrtoint ptr %valids to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %valids, ptr %valids, align 4
  store ptr %valids, ptr %prev2.i.i, align 4
  br label %if.end79

if.else69:                                        ; preds = %land.lhs.true63.if.else69_crit_edge, %if.end61.thread299
  %last_update.0297 = phi ptr [ %last_update.0298, %land.lhs.true63.if.else69_crit_edge ], [ %last_update59302, %if.end61.thread299 ]
  %bo_adev.0275294 = phi ptr [ %bo_adev.0275295, %land.lhs.true63.if.else69_crit_edge ], [ %bo_adev.0277.ph, %if.end61.thread299 ]
  %flags.1278291 = phi i64 [ %flags.1278292, %land.lhs.true63.if.else69_crit_edge ], [ %flags.1280.ph, %if.end61.thread299 ]
  %cleared = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 5
  %58 = ptrtoint ptr %cleared to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %cleared, align 4, !range !130
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %frombool)
  %cmp73.not = icmp eq i8 %59, %frombool
  br i1 %cmp73.not, label %if.else69.if.end79_crit_edge, label %if.then75

if.else69.if.end79_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then75:                                        ; preds = %if.else69
  %valids76 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 4
  %60 = ptrtoint ptr %valids76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %valids76, align 4
  %cmp.i.not.i240 = icmp eq ptr %61, %valids76
  br i1 %cmp.i.not.i240, label %if.then75.if.end79_crit_edge, label %if.then.i244

if.then75.if.end79_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then.i244:                                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  %invalids77 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 3
  %62 = ptrtoint ptr %invalids77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %invalids77, align 4
  %prev2.i.i241 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %prev2.i.i241 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev2.i.i241, align 4
  %prev3.i.i242 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i242 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %invalids77, ptr %prev3.i.i242, align 4
  store ptr %61, ptr %invalids77, align 4
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %63, ptr %65, align 4
  %prev6.i.i243 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %prev6.i.i243 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev6.i.i243, align 4
  %69 = ptrtoint ptr %valids76 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %valids76, ptr %valids76, align 4
  store ptr %valids76, ptr %prev2.i.i241, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then.i244, %if.then75.if.end79_crit_edge, %if.else69.if.end79_crit_edge, %if.then.i, %if.then66.if.end79_crit_edge
  %last_update.0296 = phi ptr [ %last_update.0297, %if.else69.if.end79_crit_edge ], [ %last_update.0298, %if.then66.if.end79_crit_edge ], [ %last_update.0298, %if.then.i ], [ %last_update.0297, %if.then75.if.end79_crit_edge ], [ %last_update.0297, %if.then.i244 ]
  %bo_adev.0275293 = phi ptr [ %bo_adev.0275294, %if.else69.if.end79_crit_edge ], [ %bo_adev.0275295, %if.then66.if.end79_crit_edge ], [ %bo_adev.0275295, %if.then.i ], [ %bo_adev.0275294, %if.then75.if.end79_crit_edge ], [ %bo_adev.0275294, %if.then.i244 ]
  %flags.1278290 = phi i64 [ %flags.1278291, %if.else69.if.end79_crit_edge ], [ %flags.1278292, %if.then66.if.end79_crit_edge ], [ %flags.1278292, %if.then.i ], [ %flags.1278291, %if.then75.if.end79_crit_edge ], [ %flags.1278291, %if.then.i244 ]
  %invalids81 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 3
  %and90 = and i64 %flags.1278290, -33
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  br label %for.cond

for.cond:                                         ; preds = %if.end97.for.cond_crit_edge, %if.end79
  %.pn.in = phi ptr [ %invalids81, %if.end79 ], [ %.pn, %if.end97.for.cond_crit_edge ]
  %70 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn = load ptr, ptr %.pn.in, align 4
  %mapping.0 = getelementptr i8, ptr %.pn, i32 -4
  %cmp85.not = icmp eq ptr %.pn, %invalids81
  br i1 %cmp85.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %update_flags) #14
  %71 = ptrtoint ptr %update_flags to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %flags.1278290, ptr %update_flags, align 8
  %flags87 = getelementptr i8, ptr %.pn, i32 52
  %72 = ptrtoint ptr %flags87 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %flags87, align 8
  %and = and i64 %73, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool88.not = icmp eq i64 %and, 0
  %spec.store.select = select i1 %tobool88.not, i64 %and90, i64 %flags.1278290
  %74 = ptrtoint ptr %update_flags to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %spec.store.select, ptr %update_flags, align 8
  %75 = ptrtoint ptr %flags87 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %flags87, align 8
  %and93 = and i64 %76, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and93)
  %tobool94.not = icmp eq i64 %and93, 0
  br i1 %tobool94.not, label %if.then95, label %for.body.if.end97_crit_edge

for.body.if.end97_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then95:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %update_flags to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %update_flags, align 8
  %and96 = and i64 %78, -65
  store i64 %and96, ptr %update_flags, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %for.body.if.end97_crit_edge
  %79 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %gmc_funcs, align 4
  %get_vm_pte = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %get_vm_pte to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %get_vm_pte, align 4
  call void %82(ptr noundef %adev, ptr noundef %mapping.0, ptr noundef nonnull %update_flags) #14
  call fastcc void @trace_amdgpu_vm_bo_update(ptr noundef %mapping.0)
  %start = getelementptr i8, ptr %.pn, i32 20
  %83 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %start, align 8
  %last = getelementptr i8, ptr %.pn, i32 28
  %85 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %last, align 8
  %87 = ptrtoint ptr %update_flags to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %update_flags, align 8
  %offset = getelementptr i8, ptr %.pn, i32 44
  %89 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %offset, align 8
  %call98 = call i32 @amdgpu_vm_bo_update_mapping(ptr noundef %adev, ptr noundef %bo_adev.0275293, ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %resv.0, i64 noundef %84, i64 noundef %86, i64 noundef %88, i64 noundef %90, ptr noundef %mem.0, ptr noundef %pages_addr.1, ptr noundef %last_update.0296, ptr noundef %table_freed)
  %tobool99.not = icmp eq i32 %call98, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %update_flags) #14
  br i1 %tobool99.not, label %if.end97.for.cond_crit_edge, label %if.end97.cleanup162_crit_edge

if.end97.cleanup162_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup162

if.end97.for.cond_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %tobool34.not, label %for.end.if.else132_crit_edge, label %land.lhs.true108

for.end.if.else132_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else132

land.lhs.true108:                                 ; preds = %for.end
  %resv111 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.2, i32 0, i32 4, i32 0, i32 9
  %91 = ptrtoint ptr %resv111 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %resv111, align 8
  %bo113 = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 12, i32 1
  %93 = ptrtoint ptr %bo113 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bo113, align 4
  %resv116 = getelementptr inbounds %struct.amdgpu_bo, ptr %94, i32 0, i32 4, i32 0, i32 9
  %95 = ptrtoint ptr %resv116 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %resv116, align 8
  %cmp117 = icmp eq ptr %92, %96
  br i1 %cmp117, label %if.then119, label %land.lhs.true108.if.else132_crit_edge

land.lhs.true108.if.else132_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else132

if.then119:                                       ; preds = %land.lhs.true108
  %resource122 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.2, i32 0, i32 4, i32 6
  %97 = ptrtoint ptr %resource122 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %resource122, align 4
  %mem_type123 = getelementptr inbounds %struct.ttm_resource, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %mem_type123 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mem_type123, align 4
  %101 = ptrtoint ptr %bo.2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bo.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %100)
  %103 = icmp ult i32 %100, 6
  br i1 %103, label %switch.lookup, label %if.then119.amdgpu_mem_type_to_domain.exit_crit_edge

if.then119.amdgpu_mem_type_to_domain.exit_crit_edge: ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_mem_type_to_domain.exit

switch.lookup:                                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.amdgpu_vm_bo_update, i32 0, i32 %100
  %104 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %104)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %amdgpu_mem_type_to_domain.exit

amdgpu_mem_type_to_domain.exit:                   ; preds = %switch.lookup, %if.then119.amdgpu_mem_type_to_domain.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then119.amdgpu_mem_type_to_domain.exit_crit_edge ]
  %and125 = and i32 %retval.0.i, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.then127, label %if.else129

if.then127:                                       ; preds = %amdgpu_mem_type_to_domain.exit
  %105 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bo_va, align 4
  %107 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bo1, align 4
  %moved.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 4
  %109 = ptrtoint ptr %moved.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %moved.i, align 4
  %type.i = getelementptr inbounds %struct.amdgpu_bo, ptr %108, i32 0, i32 4, i32 2
  %110 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp.i = icmp eq i32 %111, 1
  %vm_status.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3
  %evicted.i = getelementptr inbounds %struct.amdgpu_vm, ptr %106, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i) #14
  br i1 %cmp.i, label %if.then.i246, label %if.else.i

if.then.i246:                                     ; preds = %if.then127
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i246.__list_del_entry.exit.i.i_crit_edge

if.then.i246.__list_del_entry.exit.i.i_crit_edge: ; preds = %if.then.i246
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i246
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i.i, align 4
  %114 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vm_status.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i246.__list_del_entry.exit.i.i_crit_edge
  %118 = ptrtoint ptr %evicted.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %evicted.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i, ptr noundef %evicted.i, ptr noundef %119) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end134_crit_edge

__list_del_entry.exit.i.i.if.end134_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  br label %if.end.sink.split.i

if.else.i:                                        ; preds = %if.then127
  br i1 %call.i.i.i, label %if.end.i.i13.i, label %if.else.i.__list_del_entry.exit.i15.i_crit_edge

if.else.i.__list_del_entry.exit.i15.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i15.i

if.end.i.i13.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i11.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %120 = ptrtoint ptr %prev.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i11.i, align 4
  %122 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %vm_status.i, align 4
  %prev1.i.i.i12.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i12.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %__list_del_entry.exit.i15.i

__list_del_entry.exit.i15.i:                      ; preds = %if.end.i.i13.i, %if.else.i.__list_del_entry.exit.i15.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.amdgpu_vm, ptr %106, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i14.i = call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i, ptr noundef %127, ptr noundef %evicted.i) #14
  br i1 %call.i.i.i14.i, label %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge, label %__list_del_entry.exit.i15.i.if.end134_crit_edge

__list_del_entry.exit.i15.i.if.end134_crit_edge:  ; preds = %__list_del_entry.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge: ; preds = %__list_del_entry.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge, %if.end.i.i.i.i
  %prev.i2.i.sink.i = phi ptr [ %prev1.i.i2.i.i, %if.end.i.i.i.i ], [ %prev.i2.i.i, %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge ]
  %evicted.sink.i = phi ptr [ %119, %if.end.i.i.i.i ], [ %evicted.i, %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge ]
  %.sink18.i = phi ptr [ %evicted.i, %if.end.i.i.i.i ], [ %127, %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge ]
  %128 = ptrtoint ptr %prev.i2.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %vm_status.i, ptr %prev.i2.i.sink.i, align 4
  %129 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %evicted.sink.i, ptr %vm_status.i, align 4
  %prev3.i.i.i16.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %130 = ptrtoint ptr %prev3.i.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %.sink18.i, ptr %prev3.i.i.i16.i, align 4
  %131 = ptrtoint ptr %.sink18.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %vm_status.i, ptr %.sink18.i, align 4
  br label %if.end134

if.else129:                                       ; preds = %amdgpu_mem_type_to_domain.exit
  %vm_status.i247 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3
  %132 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bo_va, align 4
  %idle.i = getelementptr inbounds %struct.amdgpu_vm, ptr %133, i32 0, i32 7
  %call.i.i.i248 = call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i247) #14
  br i1 %call.i.i.i248, label %if.end.i.i.i251, label %if.else129.__list_del_entry.exit.i.i253_crit_edge

if.else129.__list_del_entry.exit.i.i253_crit_edge: ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i253

if.end.i.i.i251:                                  ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i249 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %134 = ptrtoint ptr %prev.i.i.i249 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i.i249, align 4
  %136 = ptrtoint ptr %vm_status.i247 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %vm_status.i247, align 4
  %prev1.i.i.i.i250 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i.i250 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i.i250, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %__list_del_entry.exit.i.i253

__list_del_entry.exit.i.i253:                     ; preds = %if.end.i.i.i251, %if.else129.__list_del_entry.exit.i.i253_crit_edge
  %140 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %idle.i, align 4
  %call.i.i.i.i252 = call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i247, ptr noundef %idle.i, ptr noundef %141) #14
  br i1 %call.i.i.i.i252, label %if.end.i.i.i.i255, label %__list_del_entry.exit.i.i253.amdgpu_vm_bo_idle.exit_crit_edge

__list_del_entry.exit.i.i253.amdgpu_vm_bo_idle.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i253
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_bo_idle.exit

if.end.i.i.i.i255:                                ; preds = %__list_del_entry.exit.i.i253
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i254 = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %prev1.i.i2.i.i254 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %vm_status.i247, ptr %prev1.i.i2.i.i254, align 4
  %143 = ptrtoint ptr %vm_status.i247 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %141, ptr %vm_status.i247, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %144 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %idle.i, ptr %prev3.i.i.i.i, align 4
  %145 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %vm_status.i247, ptr %idle.i, align 4
  br label %amdgpu_vm_bo_idle.exit

amdgpu_vm_bo_idle.exit:                           ; preds = %if.end.i.i.i.i255, %__list_del_entry.exit.i.i253.amdgpu_vm_bo_idle.exit_crit_edge
  %moved.i256 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 4
  %146 = ptrtoint ptr %moved.i256 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %moved.i256, align 4
  br label %if.end134

if.else132:                                       ; preds = %land.lhs.true108.if.else132_crit_edge, %for.end.if.else132_crit_edge
  %147 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bo_va, align 4
  %invalidated_lock.i = getelementptr inbounds %struct.amdgpu_vm, ptr %148, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %invalidated_lock.i) #14
  %vm_status.i257 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3
  %149 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bo_va, align 4
  %done.i = getelementptr inbounds %struct.amdgpu_vm, ptr %150, i32 0, i32 11
  %call.i.i.i258 = call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i257) #14
  br i1 %call.i.i.i258, label %if.end.i.i.i261, label %if.else132.__list_del_entry.exit.i.i263_crit_edge

if.else132.__list_del_entry.exit.i.i263_crit_edge: ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i263

if.end.i.i.i261:                                  ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i259 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %151 = ptrtoint ptr %prev.i.i.i259 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %prev.i.i.i259, align 4
  %153 = ptrtoint ptr %vm_status.i257 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %vm_status.i257, align 4
  %prev1.i.i.i.i260 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %prev1.i.i.i.i260 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %152, ptr %prev1.i.i.i.i260, align 4
  %156 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %154, ptr %152, align 4
  br label %__list_del_entry.exit.i.i263

__list_del_entry.exit.i.i263:                     ; preds = %if.end.i.i.i261, %if.else132.__list_del_entry.exit.i.i263_crit_edge
  %157 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %done.i, align 4
  %call.i.i.i.i262 = call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i257, ptr noundef %done.i, ptr noundef %158) #14
  br i1 %call.i.i.i.i262, label %if.end.i.i.i.i266, label %__list_del_entry.exit.i.i263.amdgpu_vm_bo_done.exit_crit_edge

__list_del_entry.exit.i.i263.amdgpu_vm_bo_done.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i263
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_bo_done.exit

if.end.i.i.i.i266:                                ; preds = %__list_del_entry.exit.i.i263
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i264 = getelementptr inbounds %struct.list_head, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %prev1.i.i2.i.i264 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %vm_status.i257, ptr %prev1.i.i2.i.i264, align 4
  %160 = ptrtoint ptr %vm_status.i257 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %158, ptr %vm_status.i257, align 4
  %prev3.i.i.i.i265 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %161 = ptrtoint ptr %prev3.i.i.i.i265 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %done.i, ptr %prev3.i.i.i.i265, align 4
  %162 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %vm_status.i257, ptr %done.i, align 4
  br label %amdgpu_vm_bo_done.exit

amdgpu_vm_bo_done.exit:                           ; preds = %if.end.i.i.i.i266, %__list_del_entry.exit.i.i263.amdgpu_vm_bo_done.exit_crit_edge
  %163 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bo_va, align 4
  %invalidated_lock3.i = getelementptr inbounds %struct.amdgpu_vm, ptr %164, i32 0, i32 9
  call void @_raw_spin_unlock(ptr noundef %invalidated_lock3.i) #14
  br label %if.end134

if.end134:                                        ; preds = %amdgpu_vm_bo_done.exit, %amdgpu_vm_bo_idle.exit, %if.end.sink.split.i, %__list_del_entry.exit.i15.i.if.end134_crit_edge, %__list_del_entry.exit.i.i.if.end134_crit_edge
  %valids136 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 4
  %165 = ptrtoint ptr %invalids81 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile ptr, ptr %invalids81, align 4
  %cmp.i.not.i267 = icmp eq ptr %166, %invalids81
  br i1 %cmp.i.not.i267, label %if.end134.list_splice_init.exit272_crit_edge, label %if.then.i271

if.end134.list_splice_init.exit272_crit_edge:     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit272

if.then.i271:                                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  %167 = ptrtoint ptr %valids136 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %valids136, align 4
  %prev2.i.i268 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 3, i32 1
  %169 = ptrtoint ptr %prev2.i.i268 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %prev2.i.i268, align 4
  %prev3.i.i269 = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  %171 = ptrtoint ptr %prev3.i.i269 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %valids136, ptr %prev3.i.i269, align 4
  store ptr %166, ptr %valids136, align 4
  %172 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %168, ptr %170, align 4
  %prev6.i.i270 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  %173 = ptrtoint ptr %prev6.i.i270 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %170, ptr %prev6.i.i270, align 4
  %174 = ptrtoint ptr %invalids81 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %invalids81, ptr %invalids81, align 4
  store ptr %invalids81, ptr %prev2.i.i268, align 4
  br label %list_splice_init.exit272

list_splice_init.exit272:                         ; preds = %if.then.i271, %if.end134.list_splice_init.exit272_crit_edge
  %cleared138 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 5
  %175 = ptrtoint ptr %cleared138 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %frombool, ptr %cleared138, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_mapping, i32 0, i32 1), ptr blockaddress(@amdgpu_vm_bo_update, %for.cond147)) #14
          to label %cleanup162 [label %for.cond147], !srcloc !137

for.cond147:                                      ; preds = %for.body153, %list_splice_init.exit272
  %.pn238.in = phi ptr [ %.pn238, %for.body153 ], [ %valids136, %list_splice_init.exit272 ]
  %176 = ptrtoint ptr %.pn238.in to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pn238 = load ptr, ptr %.pn238.in, align 4
  %cmp150.not = icmp eq ptr %.pn238, %valids136
  br i1 %cmp150.not, label %for.cond147.cleanup162_crit_edge, label %for.body153

for.cond147.cleanup162_crit_edge:                 ; preds = %for.cond147
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup162

for.body153:                                      ; preds = %for.cond147
  call void @__sanitizer_cov_trace_pc() #16
  %mapping.1 = getelementptr i8, ptr %.pn238, i32 -4
  call fastcc void @trace_amdgpu_vm_bo_mapping(ptr noundef %mapping.1)
  br label %for.cond147

cleanup162:                                       ; preds = %for.cond147.cleanup162_crit_edge, %list_splice_init.exit272, %if.end97.cleanup162_crit_edge
  %retval.2 = phi i32 [ 0, %list_splice_init.exit272 ], [ 0, %for.cond147.cleanup162_crit_edge ], [ %call98, %if.end97.cleanup162_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_ttm_tt_pte_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_bo_update(ptr noundef %mapping) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_update, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_bo_update, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !146
  %call42 = tail call i32 @__traceiter_amdgpu_vm_bo_update(ptr noundef null, ptr noundef %mapping) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !147
  %13 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_vm_bo_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_amdgpu_vm_bo_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 312, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_bo_mapping(ptr noundef %mapping) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_mapping, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_bo_mapping, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !148
  %call42 = tail call i32 @__traceiter_amdgpu_vm_bo_mapping(ptr noundef null, ptr noundef %mapping) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !149
  %13 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_mapping, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_mapping, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_vm_bo_mapping.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_amdgpu_vm_bo_mapping.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 317, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
define dso_local i32 @amdgpu_vm_clear_freed(ptr noundef %adev, ptr noundef %vm, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  %f = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %resv1 = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %2 = ptrtoint ptr %resv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #14
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %f, align 4
  %freed = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 10
  %pte_support_ats = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 21
  br label %while.cond

while.cond:                                       ; preds = %amdgpu_vm_free_mapping.exit.while.cond_crit_edge, %entry
  %init_pte_value.0 = phi i64 [ 0, %entry ], [ %init_pte_value.1, %amdgpu_vm_free_mapping.exit.while.cond_crit_edge ]
  %5 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %freed, align 4
  %cmp.i.not = icmp eq ptr %6, %freed
  br i1 %cmp.i.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %6, i32 -4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %pte_support_ats to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pte_support_ats, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not = icmp eq i8 %16, 0
  br i1 %tobool3.not, label %list_del.exit.if.end_crit_edge, label %land.lhs.true

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %start = getelementptr i8, ptr %6, i32 20
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %18)
  %cmp = icmp ult i64 %18, 140737488355328
  %spec.select = select i1 %cmp, i64 288230376151711862, i64 %init_pte_value.0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %list_del.exit.if.end_crit_edge
  %init_pte_value.1 = phi i64 [ %init_pte_value.0, %list_del.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %start4 = getelementptr i8, ptr %6, i32 20
  %19 = ptrtoint ptr %start4 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start4, align 8
  %last = getelementptr i8, ptr %6, i32 28
  %21 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %last, align 8
  %call5 = call i32 @amdgpu_vm_bo_update_mapping(ptr noundef %adev, ptr noundef %adev, ptr noundef %vm, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %3, i64 noundef %20, i64 noundef %22, i64 noundef %init_pte_value.1, i64 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %f, ptr noundef null)
  %flags.i = getelementptr i8, ptr %6, i32 52
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %24, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.amdgpu_vm_free_mapping.exit_crit_edge, label %if.then.i

if.end.amdgpu_vm_free_mapping.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_free_mapping.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f, align 4
  call fastcc void @amdgpu_vm_add_prt_cb(ptr noundef %adev, ptr noundef %26) #14
  br label %amdgpu_vm_free_mapping.exit

amdgpu_vm_free_mapping.exit:                      ; preds = %if.then.i, %if.end.amdgpu_vm_free_mapping.exit_crit_edge
  call void @kfree(ptr noundef %add.ptr) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %amdgpu_vm_free_mapping.exit.while.cond_crit_edge, label %if.then7

amdgpu_vm_free_mapping.exit.while.cond_crit_edge: ; preds = %amdgpu_vm_free_mapping.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then7:                                         ; preds = %amdgpu_vm_free_mapping.exit
  %27 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f, align 4
  %tobool.not.i32 = icmp eq ptr %28, null
  br i1 %tobool.not.i32, label %if.then7.cleanup_crit_edge, label %if.then.i33

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i33:                                      ; preds = %if.then7
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %28, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !133

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  call void @dma_fence_release(ptr noundef %refcount.i) #14
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %tobool9.not = icmp eq ptr %fence, null
  %30 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load ptr, ptr %f, align 4
  %tobool.not.i45 = icmp eq ptr %.pr, null
  br i1 %tobool9.not, label %if.else, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %while.end
  br i1 %tobool.not.i45, label %land.lhs.true10.cleanup_crit_edge, label %if.then12

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true10
  %31 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fence, align 4
  %tobool.not.i34 = icmp eq ptr %32, null
  br i1 %tobool.not.i34, label %if.then12.dma_fence_put.exit44_crit_edge, label %if.then.i39

if.then12.dma_fence_put.exit44_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit44

if.then.i39:                                      ; preds = %if.then12
  %refcount.i35 = getelementptr inbounds %struct.dma_fence, ptr %32, i32 0, i32 6
  %call.i.i.i.i.i.i.i36 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i35, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcount.i35, i32 1, i32 3, i32 1) #14
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i35, ptr %refcount.i35, i32 1, ptr elementtype(i32) %refcount.i35) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i37 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i37)
  %cmp.i.i.i.i.i38 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i37, 1
  br i1 %cmp.i.i.i.i.i38, label %if.then.i.i43, label %if.end5.i.i.i.i.i41

if.end5.i.i.i.i.i41:                              ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i37)
  %.not.i.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i37, 0
  br i1 %.not.i.i.i.i.i40, label %if.end5.i.i.i.i.i41.dma_fence_put.exit44_crit_edge, label %if.then10.i.i.i.i.i42, !prof !133

if.end5.i.i.i.i.i41.dma_fence_put.exit44_crit_edge: ; preds = %if.end5.i.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit44

if.then10.i.i.i.i.i42:                            ; preds = %if.end5.i.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i35, i32 noundef 3) #14
  br label %dma_fence_put.exit44

if.then.i.i43:                                    ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  call void @dma_fence_release(ptr noundef %refcount.i35) #14
  br label %dma_fence_put.exit44

dma_fence_put.exit44:                             ; preds = %if.then.i.i43, %if.then10.i.i.i.i.i42, %if.end5.i.i.i.i.i41.dma_fence_put.exit44_crit_edge, %if.then12.dma_fence_put.exit44_crit_edge
  %34 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f, align 4
  %36 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %fence, align 4
  br label %cleanup

if.else:                                          ; preds = %while.end
  br i1 %tobool.not.i45, label %if.else.cleanup_crit_edge, label %if.then.i50

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i50:                                      ; preds = %if.else
  %refcount.i46 = getelementptr inbounds %struct.dma_fence, ptr %.pr, i32 0, i32 6
  %call.i.i.i.i.i.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i46, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcount.i46, i32 1, i32 3, i32 1) #14
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i46, ptr %refcount.i46, i32 1, ptr elementtype(i32) %refcount.i46) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i48)
  %cmp.i.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i48, 1
  br i1 %cmp.i.i.i.i.i49, label %if.then.i.i54, label %if.end5.i.i.i.i.i52

if.end5.i.i.i.i.i52:                              ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i48)
  %.not.i.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i48, 0
  br i1 %.not.i.i.i.i.i51, label %if.end5.i.i.i.i.i52.cleanup_crit_edge, label %if.then10.i.i.i.i.i53, !prof !133

if.end5.i.i.i.i.i52.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i53:                            ; preds = %if.end5.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i46, i32 noundef 3) #14
  br label %cleanup

if.then.i.i54:                                    ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  call void @dma_fence_release(ptr noundef %refcount.i46) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i54, %if.then10.i.i.i.i.i53, %if.end5.i.i.i.i.i52.cleanup_crit_edge, %if.else.cleanup_crit_edge, %dma_fence_put.exit44, %land.lhs.true10.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dma_fence_put.exit44 ], [ %call5, %if.then7.cleanup_crit_edge ], [ %call5, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call5, %if.then10.i.i.i.i.i ], [ %call5, %if.then.i.i ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i52.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i53 ], [ 0, %if.then.i.i54 ], [ 0, %land.lhs.true10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_handle_moved(ptr noundef %adev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %moved = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 6
  %0 = ptrtoint ptr %moved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %moved, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %1, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %cmp.not = icmp eq ptr %.pn.in, %moved
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %bo_va.0 = getelementptr i8, ptr %.pn.in, i32 -12
  %call = tail call i32 @amdgpu_vm_bo_update(ptr noundef %adev, ptr noundef %bo_va.0, i1 noundef zeroext false, ptr noundef null)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %invalidated_lock = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %invalidated_lock) #14
  %invalidated = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 8
  %3 = ptrtoint ptr %invalidated to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %invalidated, align 4
  %cmp.i.not70 = icmp eq ptr %4, %invalidated
  br i1 %cmp.i.not70, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %for.end.while.body_crit_edge
  %5 = phi ptr [ %12, %if.end38.while.body_crit_edge ], [ %4, %for.end.while.body_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %5, i32 -12
  %bo = getelementptr i8, ptr %5, i32 -8
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 4
  %resv25 = getelementptr inbounds %struct.amdgpu_bo, ptr %7, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv25, align 8
  tail call void @_raw_spin_unlock(ptr noundef %invalidated_lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_debug to i32))
  %10 = load i32, ptr @amdgpu_vm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool27.not = icmp eq i32 %10, 0
  br i1 %tobool27.not, label %land.lhs.true, label %while.body.if.end30_crit_edge

while.body.if.end30_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.lhs.true:                                    ; preds = %while.body
  %call.i = tail call i32 @ww_mutex_trylock(ptr noundef %9, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end30_crit_edge, label %if.end30.thread

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %while.body.if.end30_crit_edge
  %call32 = tail call i32 @amdgpu_vm_bo_update(ptr noundef %adev, ptr noundef %add.ptr22, i1 noundef zeroext true, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.if.end38_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end30.thread:                                  ; preds = %land.lhs.true
  %call3265 = tail call i32 @amdgpu_vm_bo_update(ptr noundef %adev, ptr noundef %add.ptr22, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3265)
  %tobool33.not66 = icmp eq i32 %call3265, 0
  br i1 %tobool33.not66, label %if.then37, label %if.end30.thread.cleanup_crit_edge

if.end30.thread.cleanup_crit_edge:                ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then37:                                        ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dma_resv_reset_shared_max(ptr noundef %9) #14
  tail call void @ww_mutex_unlock(ptr noundef %9) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end30.if.end38_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %invalidated_lock) #14
  %11 = ptrtoint ptr %invalidated to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %invalidated, align 4
  %cmp.i.not = icmp eq ptr %12, %invalidated
  br i1 %cmp.i.not, label %if.end38.while.end_crit_edge, label %if.end38.while.body_crit_edge

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %for.end.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %invalidated_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end30.thread.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ %call3265, %if.end30.thread.cleanup_crit_edge ], [ %call32, %if.end30.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_vm_bo_add(ptr noundef %adev, ptr noundef %vm, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @amdgpu_vm_bo_base_init(ptr noundef nonnull %call7.i.i, ptr noundef %vm, ptr noundef %bo)
  %ref_count = getelementptr inbounds %struct.amdgpu_bo_va, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %ref_count, align 8
  %valids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %valids to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %valids, ptr %valids, align 8
  %prev.i = getelementptr inbounds %struct.amdgpu_bo_va, ptr %call7.i.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %valids, ptr %prev.i, align 4
  %invalids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %invalids to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %invalids, ptr %invalids, align 8
  %prev.i17 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %invalids, ptr %prev.i17, align 4
  %tobool.not = icmp eq ptr %bo, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call zeroext i1 @amdgpu_dmabuf_is_xgmi_accessible(ptr noundef %adev, ptr noundef nonnull %bo) #14
  br i1 %call3, label %if.then4, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %is_xgmi = getelementptr inbounds %struct.amdgpu_bo_va, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %is_xgmi to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_xgmi, align 1
  %call5 = tail call i32 @amdgpu_xgmi_set_pstate(ptr noundef %adev, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_vm_bo_base_init(ptr noundef %base, ptr noundef %vm, ptr noundef %bo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %vm, ptr %base, align 4
  %bo2 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %base, i32 0, i32 1
  %1 = ptrtoint ptr %bo2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bo, ptr %bo2, align 4
  %next = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %base, i32 0, i32 2
  %2 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %next, align 4
  %vm_status = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %base, i32 0, i32 3
  %3 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %vm_status, ptr %vm_status, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %base, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vm_status, ptr %prev.i, align 4
  %tobool.not = icmp eq ptr %bo, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %vm_bo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 7
  %5 = ptrtoint ptr %vm_bo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vm_bo, align 8
  %7 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %next, align 4
  store ptr %base, ptr %vm_bo, align 8
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv, align 8
  %bo6 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %bo6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bo6, align 4
  %resv9 = getelementptr inbounds %struct.amdgpu_bo, ptr %11, i32 0, i32 4, i32 0, i32 9
  %12 = ptrtoint ptr %resv9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv9, align 8
  %cmp.not = icmp eq ptr %9, %13
  br i1 %cmp.not, label %if.end11, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end11:                                         ; preds = %if.end
  %bulk_moveable = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 28
  %14 = ptrtoint ptr %bulk_moveable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bulk_moveable, align 8
  %type = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp13 = icmp eq i32 %16, 1
  br i1 %cmp13, label %land.lhs.true, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end11
  %parent = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 8
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %land.lhs.true.if.else_crit_edge, label %if.then15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @amdgpu_vm_bo_relocated(ptr noundef %base)
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end11.if.else_crit_edge
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %idle.i = getelementptr inbounds %struct.amdgpu_vm, ptr %20, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.__list_del_entry.exit.i.i_crit_edge

if.else.__list_del_entry.exit.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %23 = ptrtoint ptr %vm_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vm_status, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.else.__list_del_entry.exit.i.i_crit_edge
  %27 = ptrtoint ptr %idle.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %idle.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status, ptr noundef %idle.i, ptr noundef %28) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.amdgpu_vm_bo_idle.exit_crit_edge

__list_del_entry.exit.i.i.amdgpu_vm_bo_idle.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_bo_idle.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %vm_status, ptr %prev1.i.i2.i.i, align 4
  %30 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %vm_status, align 4
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %idle.i, ptr %prev.i, align 4
  %32 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %vm_status, ptr %idle.i, align 4
  br label %amdgpu_vm_bo_idle.exit

amdgpu_vm_bo_idle.exit:                           ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.amdgpu_vm_bo_idle.exit_crit_edge
  %moved.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %base, i32 0, i32 4
  %33 = ptrtoint ptr %moved.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %moved.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %amdgpu_vm_bo_idle.exit, %if.then15
  %34 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bo, align 8
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %36 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %39)
  %40 = icmp ult i32 %39, 6
  br i1 %40, label %switch.lookup, label %if.end16.amdgpu_mem_type_to_domain.exit_crit_edge

if.end16.amdgpu_mem_type_to_domain.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_mem_type_to_domain.exit

switch.lookup:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.amdgpu_vm_bo_base_init, i32 0, i32 %39
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %amdgpu_mem_type_to_domain.exit

amdgpu_mem_type_to_domain.exit:                   ; preds = %switch.lookup, %if.end16.amdgpu_mem_type_to_domain.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end16.amdgpu_mem_type_to_domain.exit_crit_edge ]
  %and = and i32 %retval.0.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end20, label %amdgpu_mem_type_to_domain.exit.return_crit_edge

amdgpu_mem_type_to_domain.exit.return_crit_edge:  ; preds = %amdgpu_mem_type_to_domain.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end20:                                         ; preds = %amdgpu_mem_type_to_domain.exit
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %44 = ptrtoint ptr %bo2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bo2, align 4
  %moved.i39 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %base, i32 0, i32 4
  %46 = ptrtoint ptr %moved.i39 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %moved.i39, align 4
  %type.i = getelementptr inbounds %struct.amdgpu_bo, ptr %45, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i = icmp eq i32 %48, 1
  %evicted.i = getelementptr inbounds %struct.amdgpu_vm, ptr %43, i32 0, i32 4
  %call.i.i.i41 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status) #14
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end20
  br i1 %call.i.i.i41, label %if.end.i.i.i44, label %if.then.i.__list_del_entry.exit.i.i46_crit_edge

if.then.i.__list_del_entry.exit.i.i46_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i46

if.end.i.i.i44:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %51 = ptrtoint ptr %vm_status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vm_status, align 4
  %prev1.i.i.i.i43 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i.i43, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %__list_del_entry.exit.i.i46

__list_del_entry.exit.i.i46:                      ; preds = %if.end.i.i.i44, %if.then.i.__list_del_entry.exit.i.i46_crit_edge
  %55 = ptrtoint ptr %evicted.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %evicted.i, align 4
  %call.i.i.i.i45 = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status, ptr noundef %evicted.i, ptr noundef %56) #14
  br i1 %call.i.i.i.i45, label %if.end.i.i.i.i48, label %__list_del_entry.exit.i.i46.return_crit_edge

__list_del_entry.exit.i.i46.return_crit_edge:     ; preds = %__list_del_entry.exit.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i.i.i.i48:                                 ; preds = %__list_del_entry.exit.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i47 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  br label %if.end.sink.split.i

if.else.i:                                        ; preds = %if.end20
  br i1 %call.i.i.i41, label %if.end.i.i13.i, label %if.else.i.__list_del_entry.exit.i15.i_crit_edge

if.else.i.__list_del_entry.exit.i15.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i15.i

if.end.i.i13.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i, align 4
  %59 = ptrtoint ptr %vm_status to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vm_status, align 4
  %prev1.i.i.i12.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i12.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %__list_del_entry.exit.i15.i

__list_del_entry.exit.i15.i:                      ; preds = %if.end.i.i13.i, %if.else.i.__list_del_entry.exit.i15.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.amdgpu_vm, ptr %43, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status, ptr noundef %64, ptr noundef %evicted.i) #14
  br i1 %call.i.i.i14.i, label %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge, label %__list_del_entry.exit.i15.i.return_crit_edge

__list_del_entry.exit.i15.i.return_crit_edge:     ; preds = %__list_del_entry.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge: ; preds = %__list_del_entry.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge, %if.end.i.i.i.i48
  %prev.i2.i.sink.i = phi ptr [ %prev1.i.i2.i.i47, %if.end.i.i.i.i48 ], [ %prev.i2.i.i, %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge ]
  %evicted.sink.i = phi ptr [ %56, %if.end.i.i.i.i48 ], [ %evicted.i, %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge ]
  %.sink18.i = phi ptr [ %evicted.i, %if.end.i.i.i.i48 ], [ %64, %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge ]
  %65 = ptrtoint ptr %prev.i2.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %vm_status, ptr %prev.i2.i.sink.i, align 4
  %66 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %evicted.sink.i, ptr %vm_status, align 4
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %.sink18.i, ptr %prev.i, align 4
  %68 = ptrtoint ptr %.sink18.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %vm_status, ptr %.sink18.i, align 4
  br label %return

return:                                           ; preds = %if.end.sink.split.i, %__list_del_entry.exit.i15.i.return_crit_edge, %__list_del_entry.exit.i.i46.return_crit_edge, %amdgpu_mem_type_to_domain.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_dmabuf_is_xgmi_accessible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_xgmi_set_pstate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_bo_map(ptr noundef %adev, ptr noundef %bo_va, i64 noundef %saddr, i64 noundef %offset, i64 noundef %size, i64 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bo1 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 1
  %0 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo1, align 4
  %2 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo_va, align 4
  %4 = or i64 %offset, %saddr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp = icmp ne i64 %size, 0
  %5 = or i64 %4, %size
  %6 = and i64 %5, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %7 = icmp eq i64 %6, 0
  %8 = and i1 %cmp, %7
  br i1 %8, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i64 %saddr, -1
  %sub = add i64 %add, %size
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %saddr)
  %cmp10.not = icmp ugt i64 %sub, %saddr
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %lor.lhs.false11.lor.lhs.false16_crit_edge, label %land.lhs.true

lor.lhs.false11.lor.lhs.false16_crit_edge:        ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false16

land.lhs.true:                                    ; preds = %lor.lhs.false11
  %add13 = add i64 %size, %offset
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 5
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 8
  %conv = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add13, i64 %conv)
  %cmp14 = icmp ugt i64 %add13, %conv
  br i1 %cmp14, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false16_crit_edge

land.lhs.true.lor.lhs.false16_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false16:                                  ; preds = %land.lhs.true.lor.lhs.false16_crit_edge, %lor.lhs.false11.lor.lhs.false16_crit_edge
  %max_pfn = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %11 = ptrtoint ptr %max_pfn to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %max_pfn, align 8
  %shl = shl i64 %12, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %shl)
  %cmp17.not = icmp ult i64 %sub, %shl
  br i1 %cmp17.not, label %if.end20, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false16
  %div68 = lshr i64 %saddr, 12
  %div2169 = lshr i64 %sub, 12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end20.if.end26_crit_edge, label %if.end.i

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end.i:                                         ; preds = %if.end20
  %__subtree_last.i = getelementptr i8, ptr %14, i32 28
  %15 = ptrtoint ptr %__subtree_last.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %__subtree_last.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %div68)
  %cmp.i = icmp ult i64 %16, %div68
  br i1 %cmp.i, label %if.end.i.if.end26_crit_edge, label %if.end4.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end4.i:                                        ; preds = %if.end.i
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rb_leftmost.i, align 4
  %start8.i = getelementptr i8, ptr %18, i32 12
  %19 = ptrtoint ptr %start8.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %div2169)
  %cmp9.i = icmp ugt i64 %20, %div2169
  br i1 %cmp9.i, label %if.end4.i.if.end26_crit_edge, label %if.end4.i.while.body.i.i_crit_edge

if.end4.i.while.body.i.i_crit_edge:               ; preds = %if.end4.i
  br label %while.body.i.i

if.end4.i.if.end26_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %if.end4.i.while.body.i.i_crit_edge
  %.pn.i.pn.i = phi ptr [ %.pn.i.pn.i.be, %while.body.i.i.backedge ], [ %14, %if.end4.i.while.body.i.i_crit_edge ]
  %rb_left.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 8
  %21 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end4.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end4.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %__subtree_last.i.i = getelementptr i8, ptr %22, i32 28
  %23 = ptrtoint ptr %__subtree_last.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %__subtree_last.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %div68)
  %cmp.not.i.i = icmp ult i64 %24, %div68
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %if.then.i.i.while.body.i.i.backedge_crit_edge

if.then.i.i.while.body.i.i.backedge_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.backedge

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %while.body.i.i.if.end4.i.i_crit_edge
  %start5.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 12
  %25 = ptrtoint ptr %start5.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %start5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %div2169)
  %cmp6.not.i.i = icmp ugt i64 %26, %div2169
  br i1 %cmp6.not.i.i, label %if.end4.i.i.if.end26_crit_edge, label %if.then7.i.i

if.end4.i.i.if.end26_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then7.i.i:                                     ; preds = %if.end4.i.i
  %last8.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 20
  %27 = ptrtoint ptr %last8.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %last8.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %div68)
  %cmp9.not.i.i = icmp ult i64 %28, %div68
  br i1 %cmp9.not.i.i, label %if.end11.i.i, label %amdgpu_vm_it_iter_first.exit

if.end11.i.i:                                     ; preds = %if.then7.i.i
  %rb_right.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 4
  %29 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rb_right.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %30, null
  br i1 %tobool13.not.i.i, label %if.end11.i.i.if.end26_crit_edge, label %if.then14.i.i

if.end11.i.i.if.end26_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then14.i.i:                                    ; preds = %if.end11.i.i
  %__subtree_last20.i.i = getelementptr i8, ptr %30, i32 28
  %31 = ptrtoint ptr %__subtree_last20.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %__subtree_last20.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %div68)
  %cmp21.not.i.i = icmp ult i64 %32, %div68
  br i1 %cmp21.not.i.i, label %if.then14.i.i.if.end26_crit_edge, label %if.then14.i.i.while.body.i.i.backedge_crit_edge

if.then14.i.i.while.body.i.i.backedge_crit_edge:  ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.backedge

if.then14.i.i.if.end26_crit_edge:                 ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

while.body.i.i.backedge:                          ; preds = %if.then14.i.i.while.body.i.i.backedge_crit_edge, %if.then.i.i.while.body.i.i.backedge_crit_edge
  %.pn.i.pn.i.be = phi ptr [ %22, %if.then.i.i.while.body.i.i.backedge_crit_edge ], [ %30, %if.then14.i.i.while.body.i.i.backedge_crit_edge ]
  br label %while.body.i.i

amdgpu_vm_it_iter_first.exit:                     ; preds = %if.then7.i.i
  %node.addr.0.i.le.i = getelementptr i8, ptr %.pn.i.pn.i, i32 -12
  %tobool23.not = icmp eq ptr %node.addr.0.i.le.i, null
  br i1 %tobool23.not, label %amdgpu_vm_it_iter_first.exit.if.end26_crit_edge, label %do.end

amdgpu_vm_it_iter_first.exit.if.end26_crit_edge:  ; preds = %amdgpu_vm_it_iter_first.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end:                                           ; preds = %amdgpu_vm_it_iter_first.exit
  call void @__sanitizer_cov_trace_pc() #16
  %last8.i.i.le = getelementptr i8, ptr %.pn.i.pn.i, i32 20
  %start5.i.i.le = getelementptr i8, ptr %.pn.i.pn.i, i32 12
  %33 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adev, align 8
  %35 = ptrtoint ptr %start5.i.i.le to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %start5.i.i.le, align 8
  %37 = ptrtoint ptr %last8.i.i.le to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %last8.i.i.le, align 8
  %add25 = add i64 %38, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef %1, i64 noundef %div68, i64 noundef %div2169, i64 noundef %36, i64 noundef %add25) #18
  br label %cleanup

if.end26:                                         ; preds = %amdgpu_vm_it_iter_first.exit.if.end26_crit_edge, %if.then14.i.i.if.end26_crit_edge, %if.end11.i.i.if.end26_crit_edge, %if.end4.i.i.if.end26_crit_edge, %if.end4.i.if.end26_crit_edge, %if.end.i.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 64) #17
  %tobool28.not = icmp eq ptr %call7.i, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %start31 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i, i32 0, i32 3
  %40 = ptrtoint ptr %start31 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %div68, ptr %start31, align 8
  %last32 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i, i32 0, i32 4
  %41 = ptrtoint ptr %last32 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %div2169, ptr %last32, align 8
  %offset33 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i, i32 0, i32 6
  %42 = ptrtoint ptr %offset33 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %offset, ptr %offset33, align 8
  %flags34 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i, i32 0, i32 7
  %43 = ptrtoint ptr %flags34 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %flags, ptr %flags34, align 8
  tail call fastcc void @amdgpu_vm_bo_insert_map(ptr noundef %adev, ptr noundef %bo_va, ptr noundef nonnull %call7.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %do.end, %lor.lhs.false16.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_vm_bo_insert_map(ptr noundef %adev, ptr noundef %bo_va, ptr noundef %mapping) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo_va, align 4
  %bo3 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 1
  %2 = ptrtoint ptr %bo3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo3, align 4
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bo_va, ptr %mapping, align 8
  %list = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 1
  %invalids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 3
  %5 = ptrtoint ptr %invalids to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %invalids, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %invalids, ptr noundef %6) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %invalids, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %invalids to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %invalids, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %start1.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 3
  %11 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start1.i, align 8
  %last2.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 4
  %13 = ptrtoint ptr %last2.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %last2.i, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool.not29.i = icmp eq ptr %16, null
  br i1 %tobool.not29.i, label %list_add.exit.while.end.i_crit_edge, label %list_add.exit.while.body.i_crit_edge

list_add.exit.while.body.i_crit_edge:             ; preds = %list_add.exit
  br label %while.body.i

list_add.exit.while.end.i_crit_edge:              ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %list_add.exit.while.body.i_crit_edge
  %17 = phi ptr [ %24, %if.end.i.while.body.i_crit_edge ], [ %16, %list_add.exit.while.body.i_crit_edge ]
  %leftmost.0.off030.i = phi i1 [ %leftmost.1.off0.i, %if.end.i.while.body.i_crit_edge ], [ true, %list_add.exit.while.body.i_crit_edge ]
  %__subtree_last.i = getelementptr i8, ptr %17, i32 28
  %18 = ptrtoint ptr %__subtree_last.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %__subtree_last.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %14)
  %cmp.i = icmp ult i64 %19, %14
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %__subtree_last.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %14, ptr %__subtree_last.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %start4.i = getelementptr i8, ptr %17, i32 12
  %21 = ptrtoint ptr %start4.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start4.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %22)
  %cmp5.i = icmp ult i64 %12, %22
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %leftmost.1.off0.i = select i1 %cmp5.i, i1 %leftmost.0.off030.i, i1 false
  %link.1.i = select i1 %cmp5.i, ptr %rb_left.i, ptr %rb_right.i
  %23 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i = ptrtoint ptr %17 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %list_add.exit.while.end.i_crit_edge
  %leftmost.0.off0.lcssa.i = phi i1 [ %leftmost.1.off0.i, %while.cond.while.end_crit_edge.i ], [ true, %list_add.exit.while.end.i_crit_edge ]
  %rb_parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %list_add.exit.while.end.i_crit_edge ]
  %link.0.lcssa.i = phi ptr [ %link.1.i, %while.cond.while.end_crit_edge.i ], [ %1, %list_add.exit.while.end.i_crit_edge ]
  %__subtree_last9.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 5
  %25 = ptrtoint ptr %__subtree_last9.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %14, ptr %__subtree_last9.i, align 8
  %rb10.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 2
  %26 = ptrtoint ptr %rb10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rb_parent.0.lcssa.i, ptr %rb10.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rb_left.i.i, align 4
  %29 = ptrtoint ptr %link.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rb10.i, ptr %link.0.lcssa.i, align 4
  br i1 %leftmost.0.off0.lcssa.i, label %if.then.i.i, label %while.end.i.amdgpu_vm_it_insert.exit_crit_edge

while.end.i.amdgpu_vm_it_insert.exit_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_insert.exit

if.then.i.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_leftmost.i.i = getelementptr inbounds %struct.rb_root_cached, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rb10.i, ptr %rb_leftmost.i.i, align 4
  br label %amdgpu_vm_it_insert.exit

amdgpu_vm_it_insert.exit:                         ; preds = %if.then.i.i, %while.end.i.amdgpu_vm_it_insert.exit_crit_edge
  tail call void @__rb_insert_augmented(ptr noundef %rb10.i, ptr noundef %1, ptr noundef nonnull @amdgpu_vm_it_augment_rotate) #14
  %flags = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 7
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %flags, align 8
  %and = and i64 %32, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %amdgpu_vm_it_insert.exit.if.end_crit_edge, label %if.then

amdgpu_vm_it_insert.exit.if.end_crit_edge:        ; preds = %amdgpu_vm_it_insert.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %amdgpu_vm_it_insert.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @amdgpu_vm_prt_get(ptr noundef %adev)
  br label %if.end

if.end:                                           ; preds = %if.then, %amdgpu_vm_it_insert.exit.if.end_crit_edge
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %3, i32 0, i32 4, i32 0, i32 9
  %33 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resv, align 8
  %bo7 = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 12, i32 1
  %35 = ptrtoint ptr %bo7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bo7, align 4
  %resv10 = getelementptr inbounds %struct.amdgpu_bo, ptr %36, i32 0, i32 4, i32 0, i32 9
  %37 = ptrtoint ptr %resv10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resv10, align 8
  %cmp = icmp eq ptr %34, %38
  br i1 %cmp, label %land.lhs.true11, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true11:                                  ; preds = %land.lhs.true
  %moved = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 4
  %39 = ptrtoint ptr %moved to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %moved, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool13.not = icmp eq i8 %40, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true11.if.end17_crit_edge

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true11
  %vm_status = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3
  %moved16 = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 6
  %call.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status) #14
  br i1 %call.i.i31, label %if.end.i.i32, label %if.then14.__list_del_entry.exit.i_crit_edge

if.then14.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i32:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %vm_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vm_status, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i32, %if.then14.__list_del_entry.exit.i_crit_edge
  %47 = ptrtoint ptr %moved16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %moved16, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status, ptr noundef %moved16, ptr noundef %48) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end17_crit_edge

__list_del_entry.exit.i.if.end17_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %vm_status, ptr %prev1.i.i2.i, align 4
  %50 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %vm_status, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %moved16, ptr %prev3.i.i.i, align 4
  %52 = ptrtoint ptr %moved16 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %vm_status, ptr %moved16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end17_crit_edge, %land.lhs.true11.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  tail call fastcc void @trace_amdgpu_vm_bo_map(ptr noundef %bo_va, ptr noundef %mapping)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_bo_replace_map(ptr noundef %adev, ptr noundef %bo_va, i64 noundef %saddr, i64 noundef %offset, i64 noundef %size, i64 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bo1 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 1
  %0 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo1, align 4
  %2 = or i64 %offset, %saddr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp = icmp ne i64 %size, 0
  %3 = or i64 %2, %size
  %4 = and i64 %3, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %5 = icmp eq i64 %4, 0
  %6 = and i1 %cmp, %5
  br i1 %6, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i64 %saddr, -1
  %sub = add i64 %add, %size
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %saddr)
  %cmp8.not = icmp ugt i64 %sub, %saddr
  br i1 %cmp8.not, label %lor.lhs.false9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %lor.lhs.false9.lor.lhs.false14_crit_edge, label %land.lhs.true

lor.lhs.false9.lor.lhs.false14_crit_edge:         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false14

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %add11 = add i64 %size, %offset
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 5
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 8
  %conv = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add11, i64 %conv)
  %cmp12 = icmp ugt i64 %add11, %conv
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false14_crit_edge

land.lhs.true.lor.lhs.false14_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false14:                                  ; preds = %land.lhs.true.lor.lhs.false14_crit_edge, %lor.lhs.false9.lor.lhs.false14_crit_edge
  %max_pfn = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %9 = ptrtoint ptr %max_pfn to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %max_pfn, align 8
  %shl = shl i64 %10, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %shl)
  %cmp15.not = icmp ult i64 %sub, %shl
  br i1 %cmp15.not, label %if.end18, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 64) #17
  %tobool20.not = icmp eq ptr %call7.i, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %12 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo_va, align 4
  %call24 = tail call i32 @amdgpu_vm_bo_clear_mappings(ptr noundef %adev, ptr noundef %13, i64 noundef %saddr, i64 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %div60 = lshr i64 %saddr, 12
  %div2861 = lshr i64 %sub, 12
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i, i32 0, i32 3
  %14 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %div60, ptr %start, align 8
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i, i32 0, i32 4
  %15 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %div2861, ptr %last, align 8
  %offset29 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i, i32 0, i32 6
  %16 = ptrtoint ptr %offset29 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %offset, ptr %offset29, align 8
  %flags30 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i, i32 0, i32 7
  %17 = ptrtoint ptr %flags30 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %flags, ptr %flags30, align 8
  tail call fastcc void @amdgpu_vm_bo_insert_map(ptr noundef %adev, ptr noundef %bo_va, ptr noundef nonnull %call7.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then26, %if.end18.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then26 ], [ 0, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false14.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_bo_clear_mappings(ptr noundef %adev, ptr noundef %vm, i64 noundef %saddr, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %removed = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %removed) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %removed, i32 0, i32 1
  %1 = ptrtoint ptr %removed to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %removed, ptr %removed, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %removed, ptr %0, align 4
  %add = add i64 %saddr, -1
  %sub = add i64 %add, %size
  %div171 = lshr i64 %saddr, 12
  %div2172 = lshr i64 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i174 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 64) #17
  %tobool4.not = icmp eq ptr %call7.i.i174, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %list7 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 1
  %7 = ptrtoint ptr %list7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list7, ptr %list7, align 4
  %prev.i175 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list7, ptr %prev.i175, align 8
  %9 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end6.while.end_crit_edge, label %if.end.i

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.i:                                         ; preds = %if.end6
  %__subtree_last.i = getelementptr i8, ptr %10, i32 28
  %11 = ptrtoint ptr %__subtree_last.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %__subtree_last.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %div171)
  %cmp.i = icmp ult i64 %12, %div171
  br i1 %cmp.i, label %if.end.i.while.end_crit_edge, label %if.end4.i

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end4.i:                                        ; preds = %if.end.i
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %vm, i32 0, i32 1
  %13 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rb_leftmost.i, align 4
  %start8.i = getelementptr i8, ptr %14, i32 12
  %15 = ptrtoint ptr %start8.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %div2172)
  %cmp9.i = icmp ugt i64 %16, %div2172
  br i1 %cmp9.i, label %if.end4.i.while.end_crit_edge, label %if.end4.i.while.body.i.i_crit_edge

if.end4.i.while.body.i.i_crit_edge:               ; preds = %if.end4.i
  br label %while.body.i.i

if.end4.i.while.end_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %if.end4.i.while.body.i.i_crit_edge
  %.pn.i.pn.i = phi ptr [ %.pn.i.pn.i.be, %while.body.i.i.backedge ], [ %10, %if.end4.i.while.body.i.i_crit_edge ]
  %rb_left.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 8
  %17 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end4.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end4.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %__subtree_last.i.i = getelementptr i8, ptr %18, i32 28
  %19 = ptrtoint ptr %__subtree_last.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %__subtree_last.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %div171)
  %cmp.not.i.i = icmp ult i64 %20, %div171
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %if.then.i.i.while.body.i.i.backedge_crit_edge

if.then.i.i.while.body.i.i.backedge_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.backedge

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %while.body.i.i.if.end4.i.i_crit_edge
  %start5.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 12
  %21 = ptrtoint ptr %start5.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %div2172)
  %cmp6.not.i.i = icmp ugt i64 %22, %div2172
  br i1 %cmp6.not.i.i, label %if.end4.i.i.while.end_crit_edge, label %if.then7.i.i

if.end4.i.i.while.end_crit_edge:                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then7.i.i:                                     ; preds = %if.end4.i.i
  %last8.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 20
  %23 = ptrtoint ptr %last8.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %last8.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %div171)
  %cmp9.not.i.i = icmp ult i64 %24, %div171
  br i1 %cmp9.not.i.i, label %if.end11.i.i, label %amdgpu_vm_it_iter_first.exit

if.end11.i.i:                                     ; preds = %if.then7.i.i
  %rb_right.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 4
  %25 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rb_right.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %26, null
  br i1 %tobool13.not.i.i, label %if.end11.i.i.while.end_crit_edge, label %if.then14.i.i

if.end11.i.i.while.end_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then14.i.i:                                    ; preds = %if.end11.i.i
  %__subtree_last20.i.i = getelementptr i8, ptr %26, i32 28
  %27 = ptrtoint ptr %__subtree_last20.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %__subtree_last20.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %div171)
  %cmp21.not.i.i = icmp ult i64 %28, %div171
  br i1 %cmp21.not.i.i, label %if.then14.i.i.while.end_crit_edge, label %if.then14.i.i.while.body.i.i.backedge_crit_edge

if.then14.i.i.while.body.i.i.backedge_crit_edge:  ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.backedge

if.then14.i.i.while.end_crit_edge:                ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.i.i.backedge:                          ; preds = %if.then14.i.i.while.body.i.i.backedge_crit_edge, %if.then.i.i.while.body.i.i.backedge_crit_edge
  %.pn.i.pn.i.be = phi ptr [ %18, %if.then.i.i.while.body.i.i.backedge_crit_edge ], [ %26, %if.then14.i.i.while.body.i.i.backedge_crit_edge ]
  br label %while.body.i.i

amdgpu_vm_it_iter_first.exit:                     ; preds = %if.then7.i.i
  %node.addr.0.i.le.i = getelementptr i8, ptr %.pn.i.pn.i, i32 -12
  %tobool9.not273 = icmp eq ptr %node.addr.0.i.le.i, null
  br i1 %tobool9.not273, label %amdgpu_vm_it_iter_first.exit.while.end_crit_edge, label %while.body.lr.ph

amdgpu_vm_it_iter_first.exit.while.end_crit_edge: ; preds = %amdgpu_vm_it_iter_first.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %amdgpu_vm_it_iter_first.exit
  %start12 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 3
  %sub13 = add nsw i64 %div171, -1
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 4
  %offset14 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 6
  %flags15 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 7
  %add23 = add nuw nsw i64 %div2172, 1
  %start24 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 3
  %last26 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 4
  %offset28 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 6
  %flags35 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %amdgpu_vm_it_iter_next.exit.while.body_crit_edge, %while.body.lr.ph
  %tmp.0274 = phi ptr [ %node.addr.0.i.le.i, %while.body.lr.ph ], [ %retval.3.i, %amdgpu_vm_it_iter_next.exit.while.body_crit_edge ]
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 3
  %29 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %div171)
  %cmp = icmp ult i64 %30, %div171
  br i1 %cmp, label %if.then10, label %while.body.if.end19_crit_edge

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then10:                                        ; preds = %while.body
  %31 = ptrtoint ptr %start12 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %start12, align 8
  %32 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %sub13, ptr %last, align 8
  %offset = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 6
  %33 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %offset, align 8
  %35 = ptrtoint ptr %offset14 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %offset14, align 8
  %flags = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 7
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %flags, align 8
  %38 = ptrtoint ptr %flags15 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %flags15, align 8
  %39 = ptrtoint ptr %tmp.0274 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tmp.0274, align 8
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %call7.i.i, align 8
  %42 = load ptr, ptr %tmp.0274, align 8
  %invalids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %invalids to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %invalids, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %invalids, ptr noundef %44) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.if.end19_crit_edge

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list, ptr %prev1.i.i, align 4
  %46 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %list, align 4
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %invalids, ptr %prev.i, align 8
  %48 = ptrtoint ptr %invalids to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list, ptr %invalids, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end.i.i, %if.then10.if.end19_crit_edge, %while.body.if.end19_crit_edge
  %last20 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 4
  %49 = ptrtoint ptr %last20 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %last20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %div2172)
  %cmp21 = icmp ugt i64 %50, %div2172
  br i1 %cmp21, label %if.then22, label %if.end19.if.end41_crit_edge

if.end19.if.end41_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then22:                                        ; preds = %if.end19
  %51 = ptrtoint ptr %start24 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add23, ptr %start24, align 8
  %52 = ptrtoint ptr %last20 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %last20, align 8
  %54 = ptrtoint ptr %last26 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %last26, align 8
  %offset27 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 6
  %55 = ptrtoint ptr %offset27 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %offset27, align 8
  %57 = ptrtoint ptr %offset28 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %offset28, align 8
  %58 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %start, align 8
  %sub31 = sub i64 %add23, %59
  %shl = shl i64 %sub31, 12
  %add33 = add i64 %shl, %56
  store i64 %add33, ptr %offset28, align 8
  %flags34 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 7
  %60 = ptrtoint ptr %flags34 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %flags34, align 8
  %62 = ptrtoint ptr %flags35 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %flags35, align 8
  %63 = ptrtoint ptr %tmp.0274 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tmp.0274, align 8
  %65 = ptrtoint ptr %call7.i.i174 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %call7.i.i174, align 8
  %66 = load ptr, ptr %tmp.0274, align 8
  %invalids40 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %invalids40 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %invalids40, align 4
  %call.i.i176 = call zeroext i1 @__list_add_valid(ptr noundef %list7, ptr noundef %invalids40, ptr noundef %68) #14
  br i1 %call.i.i176, label %if.end.i.i179, label %if.then22.if.end41_crit_edge

if.then22.if.end41_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.end.i.i179:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i177 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i177 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %list7, ptr %prev1.i.i177, align 4
  %70 = ptrtoint ptr %list7 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %list7, align 4
  %71 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %invalids40, ptr %prev.i175, align 8
  %72 = ptrtoint ptr %invalids40 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %list7, ptr %invalids40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end.i.i179, %if.then22.if.end41_crit_edge, %if.end19.if.end41_crit_edge
  %list42 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 1
  %call.i.i181 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list42) #14
  br i1 %call.i.i181, label %if.end.i.i182, label %if.end41.list_del.exit_crit_edge

if.end41.list_del.exit_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i182:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i, align 4
  %75 = ptrtoint ptr %list42 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %list42, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i182, %if.end41.list_del.exit_crit_edge
  %79 = ptrtoint ptr %list42 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 256 to ptr), ptr %list42, align 4
  %prev.i183 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %prev.i183 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i183, align 4
  %81 = ptrtoint ptr %removed to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %removed, align 4
  %call.i.i184 = call zeroext i1 @__list_add_valid(ptr noundef %list42, ptr noundef nonnull %removed, ptr noundef %82) #14
  br i1 %call.i.i184, label %if.end.i.i187, label %list_del.exit.list_add.exit188_crit_edge

list_del.exit.list_add.exit188_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit188

if.end.i.i187:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i185 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i185 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %list42, ptr %prev1.i.i185, align 4
  %84 = ptrtoint ptr %list42 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %82, ptr %list42, align 4
  %85 = ptrtoint ptr %prev.i183 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %removed, ptr %prev.i183, align 4
  %86 = ptrtoint ptr %removed to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %list42, ptr %removed, align 4
  br label %list_add.exit188

list_add.exit188:                                 ; preds = %if.end.i.i187, %list_del.exit.list_add.exit188_crit_edge
  %rb_right.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %tmp.0274, i32 0, i32 2, i32 1
  %87 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rb_right.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.else.i.while.cond.i_crit_edge, %list_add.exit188
  %rb.0.i = phi ptr [ %88, %list_add.exit188 ], [ %107, %if.else.i.while.cond.i_crit_edge ]
  %node.addr.0.i = phi ptr [ %tmp.0274, %list_add.exit188 ], [ %add.ptr11.i, %if.else.i.while.cond.i_crit_edge ]
  %tobool.not.i189 = icmp eq ptr %rb.0.i, null
  br i1 %tobool.not.i189, label %while.cond.i.do.body.i.preheader_crit_edge, label %if.then.i

while.cond.i.do.body.i.preheader_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i.do.body.i.preheader_crit_edge, %while.cond.i.do.body.i.preheader_crit_edge
  br label %do.body.i

if.then.i:                                        ; preds = %while.cond.i
  %__subtree_last.i190 = getelementptr i8, ptr %rb.0.i, i32 28
  %89 = ptrtoint ptr %__subtree_last.i190 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %__subtree_last.i190, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %div171)
  %cmp.not.i = icmp ult i64 %90, %div171
  br i1 %cmp.not.i, label %if.then.i.do.body.i.preheader_crit_edge, label %if.then.i.while.body.i.i193_crit_edge

if.then.i.while.body.i.i193_crit_edge:            ; preds = %if.then.i
  br label %while.body.i.i193

if.then.i.do.body.i.preheader_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.preheader

while.body.i.i193:                                ; preds = %while.body.i.i193.backedge, %if.then.i.while.body.i.i193_crit_edge
  %rb.0.pn.i = phi ptr [ %rb.0.pn.i.be, %while.body.i.i193.backedge ], [ %rb.0.i, %if.then.i.while.body.i.i193_crit_edge ]
  %rb_left.i.i191 = getelementptr i8, ptr %rb.0.pn.i, i32 8
  %91 = ptrtoint ptr %rb_left.i.i191 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rb_left.i.i191, align 4
  %tobool.not.i.i192 = icmp eq ptr %92, null
  br i1 %tobool.not.i.i192, label %while.body.i.i193.if.end4.i.i199_crit_edge, label %if.then.i.i196

while.body.i.i193.if.end4.i.i199_crit_edge:       ; preds = %while.body.i.i193
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i199

if.then.i.i196:                                   ; preds = %while.body.i.i193
  %__subtree_last.i.i194 = getelementptr i8, ptr %92, i32 28
  %93 = ptrtoint ptr %__subtree_last.i.i194 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %__subtree_last.i.i194, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %div171)
  %cmp.not.i.i195 = icmp ult i64 %94, %div171
  br i1 %cmp.not.i.i195, label %if.then.i.i196.if.end4.i.i199_crit_edge, label %if.then.i.i196.while.body.i.i193.backedge_crit_edge

if.then.i.i196.while.body.i.i193.backedge_crit_edge: ; preds = %if.then.i.i196
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i193.backedge

if.then.i.i196.if.end4.i.i199_crit_edge:          ; preds = %if.then.i.i196
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i199

if.end4.i.i199:                                   ; preds = %if.then.i.i196.if.end4.i.i199_crit_edge, %while.body.i.i193.if.end4.i.i199_crit_edge
  %start5.i.i197 = getelementptr i8, ptr %rb.0.pn.i, i32 12
  %95 = ptrtoint ptr %start5.i.i197 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %start5.i.i197, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %96, i64 %div2172)
  %cmp6.not.i.i198 = icmp ugt i64 %96, %div2172
  br i1 %cmp6.not.i.i198, label %if.end4.i.i199.while.end_crit_edge, label %if.then7.i.i202

if.end4.i.i199.while.end_crit_edge:               ; preds = %if.end4.i.i199
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then7.i.i202:                                  ; preds = %if.end4.i.i199
  %last8.i.i200 = getelementptr i8, ptr %rb.0.pn.i, i32 20
  %97 = ptrtoint ptr %last8.i.i200 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %last8.i.i200, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %div171)
  %cmp9.not.i.i201 = icmp ult i64 %98, %div171
  br i1 %cmp9.not.i.i201, label %if.end11.i.i205, label %cleanup.split.loop.exit45.i

if.end11.i.i205:                                  ; preds = %if.then7.i.i202
  %rb_right.i.i203 = getelementptr i8, ptr %rb.0.pn.i, i32 4
  %99 = ptrtoint ptr %rb_right.i.i203 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rb_right.i.i203, align 4
  %tobool13.not.i.i204 = icmp eq ptr %100, null
  br i1 %tobool13.not.i.i204, label %if.end11.i.i205.while.end_crit_edge, label %if.then14.i.i208

if.end11.i.i205.while.end_crit_edge:              ; preds = %if.end11.i.i205
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then14.i.i208:                                 ; preds = %if.end11.i.i205
  %__subtree_last20.i.i206 = getelementptr i8, ptr %100, i32 28
  %101 = ptrtoint ptr %__subtree_last20.i.i206 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %__subtree_last20.i.i206, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %102, i64 %div171)
  %cmp21.not.i.i207 = icmp ult i64 %102, %div171
  br i1 %cmp21.not.i.i207, label %if.then14.i.i208.while.end_crit_edge, label %if.then14.i.i208.while.body.i.i193.backedge_crit_edge

if.then14.i.i208.while.body.i.i193.backedge_crit_edge: ; preds = %if.then14.i.i208
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i193.backedge

if.then14.i.i208.while.end_crit_edge:             ; preds = %if.then14.i.i208
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.i.i193.backedge:                       ; preds = %if.then14.i.i208.while.body.i.i193.backedge_crit_edge, %if.then.i.i196.while.body.i.i193.backedge_crit_edge
  %rb.0.pn.i.be = phi ptr [ %92, %if.then.i.i196.while.body.i.i193.backedge_crit_edge ], [ %100, %if.then14.i.i208.while.body.i.i193.backedge_crit_edge ]
  br label %while.body.i.i193

cleanup.split.loop.exit45.i:                      ; preds = %if.then7.i.i202
  call void @__sanitizer_cov_trace_pc() #16
  %node.addr.0.i.le.i211 = getelementptr i8, ptr %rb.0.pn.i, i32 -12
  br label %amdgpu_vm_it_iter_next.exit

do.body.i:                                        ; preds = %if.end7.i.do.body.i_crit_edge, %do.body.i.preheader
  %node.addr.1.i = phi ptr [ %add.ptr11.i, %if.end7.i.do.body.i_crit_edge ], [ %node.addr.0.i, %do.body.i.preheader ]
  %rb4.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %node.addr.1.i, i32 0, i32 2
  %103 = ptrtoint ptr %rb4.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rb4.i, align 4
  %and.i = and i32 %104, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.while.end_crit_edge, label %if.end7.i

do.body.i.while.end_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end7.i:                                        ; preds = %do.body.i
  %105 = inttoptr i32 %and.i to ptr
  %add.ptr11.i = getelementptr i8, ptr %105, i32 -12
  %rb_right13.i = getelementptr inbounds %struct.rb_node, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %rb_right13.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rb_right13.i, align 4
  %cmp14.i = icmp eq ptr %rb4.i, %107
  br i1 %cmp14.i, label %if.end7.i.do.body.i_crit_edge, label %do.end.i

if.end7.i.do.body.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %if.end7.i
  %108 = inttoptr i32 %and.i to ptr
  %start15.i = getelementptr i8, ptr %108, i32 12
  %109 = ptrtoint ptr %start15.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %start15.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %110, i64 %div2172)
  %cmp16.i = icmp ugt i64 %110, %div2172
  br i1 %cmp16.i, label %do.end.i.while.end_crit_edge, label %if.else.i

do.end.i.while.end_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.else.i:                                        ; preds = %do.end.i
  %last18.i = getelementptr i8, ptr %108, i32 20
  %111 = ptrtoint ptr %last18.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %last18.i, align 8
  %cmp19.not.i = icmp ult i64 %112, %div171
  br i1 %cmp19.not.i, label %if.else.i.while.cond.i_crit_edge, label %if.else.i.amdgpu_vm_it_iter_next.exit_crit_edge

if.else.i.amdgpu_vm_it_iter_next.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_iter_next.exit

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

amdgpu_vm_it_iter_next.exit:                      ; preds = %if.else.i.amdgpu_vm_it_iter_next.exit_crit_edge, %cleanup.split.loop.exit45.i
  %retval.3.i = phi ptr [ %node.addr.0.i.le.i211, %cleanup.split.loop.exit45.i ], [ %add.ptr11.i, %if.else.i.amdgpu_vm_it_iter_next.exit_crit_edge ]
  %tobool9.not = icmp eq ptr %retval.3.i, null
  br i1 %tobool9.not, label %amdgpu_vm_it_iter_next.exit.while.end_crit_edge, label %amdgpu_vm_it_iter_next.exit.while.body_crit_edge

amdgpu_vm_it_iter_next.exit.while.body_crit_edge: ; preds = %amdgpu_vm_it_iter_next.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

amdgpu_vm_it_iter_next.exit.while.end_crit_edge:  ; preds = %amdgpu_vm_it_iter_next.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %amdgpu_vm_it_iter_next.exit.while.end_crit_edge, %do.end.i.while.end_crit_edge, %do.body.i.while.end_crit_edge, %if.then14.i.i208.while.end_crit_edge, %if.end11.i.i205.while.end_crit_edge, %if.end4.i.i199.while.end_crit_edge, %amdgpu_vm_it_iter_first.exit.while.end_crit_edge, %if.then14.i.i.while.end_crit_edge, %if.end11.i.i.while.end_crit_edge, %if.end4.i.i.while.end_crit_edge, %if.end4.i.while.end_crit_edge, %if.end.i.while.end_crit_edge, %if.end6.while.end_crit_edge
  %113 = ptrtoint ptr %removed to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %removed, align 4
  %cmp53.not278 = icmp eq ptr %114, %removed
  br i1 %cmp53.not278, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %freed = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %list_add.exit222.for.body_crit_edge, %for.body.lr.ph
  %.pn.in279 = phi ptr [ %114, %for.body.lr.ph ], [ %.pn281, %list_add.exit222.for.body_crit_edge ]
  %tmp.1280 = getelementptr i8, ptr %.pn.in279, i32 -4
  %115 = ptrtoint ptr %.pn.in279 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pn281 = load ptr, ptr %.pn.in279, align 4
  call fastcc void @amdgpu_vm_it_remove(ptr noundef %tmp.1280, ptr noundef %vm)
  %call.i.i212 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in279) #14
  br i1 %call.i.i212, label %if.end.i.i215, label %for.body.list_del.exit217_crit_edge

for.body.list_del.exit217_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit217

if.end.i.i215:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i213 = getelementptr inbounds %struct.list_head, ptr %.pn.in279, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i213 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i213, align 4
  %118 = ptrtoint ptr %.pn.in279 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %.pn.in279, align 4
  %prev1.i.i.i214 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i214, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %list_del.exit217

list_del.exit217:                                 ; preds = %if.end.i.i215, %for.body.list_del.exit217_crit_edge
  %122 = ptrtoint ptr %.pn.in279 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in279, align 4
  %prev.i216 = getelementptr inbounds %struct.list_head, ptr %.pn.in279, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i216 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i216, align 4
  %start56 = getelementptr i8, ptr %.pn.in279, i32 20
  %124 = ptrtoint ptr %start56 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %start56, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %125, i64 %div171)
  %cmp57 = icmp ult i64 %125, %div171
  br i1 %cmp57, label %if.then58, label %list_del.exit217.if.end60_crit_edge

list_del.exit217.if.end60_crit_edge:              ; preds = %list_del.exit217
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then58:                                        ; preds = %list_del.exit217
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %start56 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %div171, ptr %start56, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %list_del.exit217.if.end60_crit_edge
  %last61 = getelementptr i8, ptr %.pn.in279, i32 28
  %127 = ptrtoint ptr %last61 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %last61, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %128, i64 %div2172)
  %cmp62 = icmp ugt i64 %128, %div2172
  br i1 %cmp62, label %if.then63, label %if.end60.if.end65_crit_edge

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %129 = ptrtoint ptr %last61 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %div2172, ptr %last61, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60.if.end65_crit_edge
  %130 = ptrtoint ptr %tmp.1280 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %tmp.1280, align 8
  %131 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %freed, align 4
  %call.i.i218 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in279, ptr noundef %freed, ptr noundef %132) #14
  br i1 %call.i.i218, label %if.end.i.i221, label %if.end65.list_add.exit222_crit_edge

if.end65.list_add.exit222_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit222

if.end.i.i221:                                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i219 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %prev1.i.i219 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %.pn.in279, ptr %prev1.i.i219, align 4
  %134 = ptrtoint ptr %.pn.in279 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %132, ptr %.pn.in279, align 4
  %135 = ptrtoint ptr %prev.i216 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %freed, ptr %prev.i216, align 4
  %136 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %.pn.in279, ptr %freed, align 4
  br label %list_add.exit222

list_add.exit222:                                 ; preds = %if.end.i.i221, %if.end65.list_add.exit222_crit_edge
  call fastcc void @trace_amdgpu_vm_bo_unmap(ptr noundef null, ptr noundef %tmp.1280)
  %cmp53.not = icmp eq ptr %.pn281, %removed
  br i1 %cmp53.not, label %list_add.exit222.for.end_crit_edge, label %list_add.exit222.for.body_crit_edge

list_add.exit222.for.body_crit_edge:              ; preds = %list_add.exit222
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_add.exit222.for.end_crit_edge:               ; preds = %list_add.exit222
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_add.exit222.for.end_crit_edge, %while.end.for.end_crit_edge
  %137 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile ptr, ptr %list, align 4
  %cmp.i223.not = icmp eq ptr %138, %list
  br i1 %cmp.i223.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %for.end
  %start1.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 3
  %139 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %start1.i, align 8
  %last2.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 4
  %141 = ptrtoint ptr %last2.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %last2.i, align 8
  %143 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %vm, align 4
  %tobool.not29.i = icmp eq ptr %144, null
  br i1 %tobool.not29.i, label %if.then76.while.end.i_crit_edge, label %if.then76.while.body.i_crit_edge

if.then76.while.body.i_crit_edge:                 ; preds = %if.then76
  br label %while.body.i

if.then76.while.end.i_crit_edge:                  ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %if.end.i229.while.body.i_crit_edge, %if.then76.while.body.i_crit_edge
  %145 = phi ptr [ %152, %if.end.i229.while.body.i_crit_edge ], [ %144, %if.then76.while.body.i_crit_edge ]
  %leftmost.0.off030.i = phi i1 [ %leftmost.1.off0.i, %if.end.i229.while.body.i_crit_edge ], [ true, %if.then76.while.body.i_crit_edge ]
  %__subtree_last.i224 = getelementptr i8, ptr %145, i32 28
  %146 = ptrtoint ptr %__subtree_last.i224 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %__subtree_last.i224, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %147, i64 %142)
  %cmp.i225 = icmp ult i64 %147, %142
  br i1 %cmp.i225, label %if.then.i226, label %while.body.i.if.end.i229_crit_edge

while.body.i.if.end.i229_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i229

if.then.i226:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %__subtree_last.i224 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %142, ptr %__subtree_last.i224, align 8
  br label %if.end.i229

if.end.i229:                                      ; preds = %if.then.i226, %while.body.i.if.end.i229_crit_edge
  %start4.i = getelementptr i8, ptr %145, i32 12
  %149 = ptrtoint ptr %start4.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %start4.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %140, i64 %150)
  %cmp5.i = icmp ult i64 %140, %150
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %145, i32 0, i32 2
  %rb_right.i227 = getelementptr inbounds %struct.rb_node, ptr %145, i32 0, i32 1
  %leftmost.1.off0.i = select i1 %cmp5.i, i1 %leftmost.0.off030.i, i1 false
  %link.1.i = select i1 %cmp5.i, ptr %rb_left.i, ptr %rb_right.i227
  %151 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i228 = icmp eq ptr %152, null
  br i1 %tobool.not.i228, label %while.cond.while.end_crit_edge.i, label %if.end.i229.while.body.i_crit_edge

if.end.i229.while.body.i_crit_edge:               ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i = ptrtoint ptr %145 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.then76.while.end.i_crit_edge
  %leftmost.0.off0.lcssa.i = phi i1 [ %leftmost.1.off0.i, %while.cond.while.end_crit_edge.i ], [ true, %if.then76.while.end.i_crit_edge ]
  %rb_parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then76.while.end.i_crit_edge ]
  %link.0.lcssa.i = phi ptr [ %link.1.i, %while.cond.while.end_crit_edge.i ], [ %vm, %if.then76.while.end.i_crit_edge ]
  %__subtree_last9.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 5
  %153 = ptrtoint ptr %__subtree_last9.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %142, ptr %__subtree_last9.i, align 8
  %rb10.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 2
  %154 = ptrtoint ptr %rb10.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %rb_parent.0.lcssa.i, ptr %rb10.i, align 4
  %rb_right.i.i230 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 2, i32 1
  %155 = ptrtoint ptr %rb_right.i.i230 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %rb_right.i.i230, align 8
  %rb_left.i.i231 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 2, i32 2
  %156 = ptrtoint ptr %rb_left.i.i231 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %rb_left.i.i231, align 4
  %157 = ptrtoint ptr %link.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %rb10.i, ptr %link.0.lcssa.i, align 4
  br i1 %leftmost.0.off0.lcssa.i, label %if.then.i.i232, label %while.end.i.amdgpu_vm_it_insert.exit_crit_edge

while.end.i.amdgpu_vm_it_insert.exit_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_insert.exit

if.then.i.i232:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_leftmost.i.i = getelementptr inbounds %struct.rb_root_cached, ptr %vm, i32 0, i32 1
  %158 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %rb10.i, ptr %rb_leftmost.i.i, align 4
  br label %amdgpu_vm_it_insert.exit

amdgpu_vm_it_insert.exit:                         ; preds = %if.then.i.i232, %while.end.i.amdgpu_vm_it_insert.exit_crit_edge
  call void @__rb_insert_augmented(ptr noundef %rb10.i, ptr noundef %vm, ptr noundef nonnull @amdgpu_vm_it_augment_rotate) #14
  %flags78 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i, i32 0, i32 7
  %159 = ptrtoint ptr %flags78 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %flags78, align 8
  %and = and i64 %160, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool79.not = icmp eq i64 %and, 0
  br i1 %tobool79.not, label %amdgpu_vm_it_insert.exit.if.end82_crit_edge, label %if.then80

amdgpu_vm_it_insert.exit.if.end82_crit_edge:      ; preds = %amdgpu_vm_it_insert.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then80:                                        ; preds = %amdgpu_vm_it_insert.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @amdgpu_vm_prt_get(ptr noundef %adev)
  br label %if.end82

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then80, %amdgpu_vm_it_insert.exit.if.end82_crit_edge
  %161 = ptrtoint ptr %list7 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile ptr, ptr %list7, align 4
  %cmp.i233.not = icmp eq ptr %162, %list7
  br i1 %cmp.i233.not, label %if.else93, label %if.then86

if.then86:                                        ; preds = %if.end82
  %start1.i235 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 3
  %163 = ptrtoint ptr %start1.i235 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %start1.i235, align 8
  %last2.i236 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 4
  %165 = ptrtoint ptr %last2.i236 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %last2.i236, align 8
  %167 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %vm, align 4
  %tobool.not29.i237 = icmp eq ptr %168, null
  br i1 %tobool.not29.i237, label %if.then86.while.end.i260_crit_edge, label %if.then86.while.body.i241_crit_edge

if.then86.while.body.i241_crit_edge:              ; preds = %if.then86
  br label %while.body.i241

if.then86.while.end.i260_crit_edge:               ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i260

while.body.i241:                                  ; preds = %if.end.i250.while.body.i241_crit_edge, %if.then86.while.body.i241_crit_edge
  %169 = phi ptr [ %176, %if.end.i250.while.body.i241_crit_edge ], [ %168, %if.then86.while.body.i241_crit_edge ]
  %leftmost.0.off030.i238 = phi i1 [ %leftmost.1.off0.i247, %if.end.i250.while.body.i241_crit_edge ], [ true, %if.then86.while.body.i241_crit_edge ]
  %__subtree_last.i239 = getelementptr i8, ptr %169, i32 28
  %170 = ptrtoint ptr %__subtree_last.i239 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %__subtree_last.i239, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %171, i64 %166)
  %cmp.i240 = icmp ult i64 %171, %166
  br i1 %cmp.i240, label %if.then.i242, label %while.body.i241.if.end.i250_crit_edge

while.body.i241.if.end.i250_crit_edge:            ; preds = %while.body.i241
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i250

if.then.i242:                                     ; preds = %while.body.i241
  call void @__sanitizer_cov_trace_pc() #16
  %172 = ptrtoint ptr %__subtree_last.i239 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %166, ptr %__subtree_last.i239, align 8
  br label %if.end.i250

if.end.i250:                                      ; preds = %if.then.i242, %while.body.i241.if.end.i250_crit_edge
  %start4.i243 = getelementptr i8, ptr %169, i32 12
  %173 = ptrtoint ptr %start4.i243 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %start4.i243, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %164, i64 %174)
  %cmp5.i244 = icmp ult i64 %164, %174
  %rb_left.i245 = getelementptr inbounds %struct.rb_node, ptr %169, i32 0, i32 2
  %rb_right.i246 = getelementptr inbounds %struct.rb_node, ptr %169, i32 0, i32 1
  %leftmost.1.off0.i247 = select i1 %cmp5.i244, i1 %leftmost.0.off030.i238, i1 false
  %link.1.i248 = select i1 %cmp5.i244, ptr %rb_left.i245, ptr %rb_right.i246
  %175 = ptrtoint ptr %link.1.i248 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %link.1.i248, align 4
  %tobool.not.i249 = icmp eq ptr %176, null
  br i1 %tobool.not.i249, label %while.cond.while.end_crit_edge.i252, label %if.end.i250.while.body.i241_crit_edge

if.end.i250.while.body.i241_crit_edge:            ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i241

while.cond.while.end_crit_edge.i252:              ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i251 = ptrtoint ptr %169 to i32
  br label %while.end.i260

while.end.i260:                                   ; preds = %while.cond.while.end_crit_edge.i252, %if.then86.while.end.i260_crit_edge
  %leftmost.0.off0.lcssa.i253 = phi i1 [ %leftmost.1.off0.i247, %while.cond.while.end_crit_edge.i252 ], [ true, %if.then86.while.end.i260_crit_edge ]
  %rb_parent.0.lcssa.i254 = phi i32 [ %phi.cast.le.i251, %while.cond.while.end_crit_edge.i252 ], [ 0, %if.then86.while.end.i260_crit_edge ]
  %link.0.lcssa.i255 = phi ptr [ %link.1.i248, %while.cond.while.end_crit_edge.i252 ], [ %vm, %if.then86.while.end.i260_crit_edge ]
  %__subtree_last9.i256 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 5
  %177 = ptrtoint ptr %__subtree_last9.i256 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %166, ptr %__subtree_last9.i256, align 8
  %rb10.i257 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 2
  %178 = ptrtoint ptr %rb10.i257 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %rb_parent.0.lcssa.i254, ptr %rb10.i257, align 4
  %rb_right.i.i258 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 2, i32 1
  %179 = ptrtoint ptr %rb_right.i.i258 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %rb_right.i.i258, align 8
  %rb_left.i.i259 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 2, i32 2
  %180 = ptrtoint ptr %rb_left.i.i259 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %rb_left.i.i259, align 4
  %181 = ptrtoint ptr %link.0.lcssa.i255 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %rb10.i257, ptr %link.0.lcssa.i255, align 4
  br i1 %leftmost.0.off0.lcssa.i253, label %if.then.i.i262, label %while.end.i260.amdgpu_vm_it_insert.exit263_crit_edge

while.end.i260.amdgpu_vm_it_insert.exit263_crit_edge: ; preds = %while.end.i260
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_insert.exit263

if.then.i.i262:                                   ; preds = %while.end.i260
  call void @__sanitizer_cov_trace_pc() #16
  %rb_leftmost.i.i261 = getelementptr inbounds %struct.rb_root_cached, ptr %vm, i32 0, i32 1
  %182 = ptrtoint ptr %rb_leftmost.i.i261 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %rb10.i257, ptr %rb_leftmost.i.i261, align 4
  br label %amdgpu_vm_it_insert.exit263

amdgpu_vm_it_insert.exit263:                      ; preds = %if.then.i.i262, %while.end.i260.amdgpu_vm_it_insert.exit263_crit_edge
  call void @__rb_insert_augmented(ptr noundef %rb10.i257, ptr noundef %vm, ptr noundef nonnull @amdgpu_vm_it_augment_rotate) #14
  %flags88 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %call7.i.i174, i32 0, i32 7
  %183 = ptrtoint ptr %flags88 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %flags88, align 8
  %and89 = and i64 %184, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and89)
  %tobool90.not = icmp eq i64 %and89, 0
  br i1 %tobool90.not, label %amdgpu_vm_it_insert.exit263.cleanup_crit_edge, label %if.then91

amdgpu_vm_it_insert.exit263.cleanup_crit_edge:    ; preds = %amdgpu_vm_it_insert.exit263
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then91:                                        ; preds = %amdgpu_vm_it_insert.exit263
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @amdgpu_vm_prt_get(ptr noundef %adev)
  br label %cleanup

if.else93:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i174) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else93, %if.then91, %amdgpu_vm_it_insert.exit263.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %amdgpu_vm_it_insert.exit263.cleanup_crit_edge ], [ 0, %if.then91 ], [ 0, %if.else93 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %removed) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_bo_unmap(ptr noundef %adev, ptr noundef %bo_va, i64 noundef %saddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo_va, align 4
  %div72 = lshr i64 %saddr, 12
  %valids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %valids, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp = icmp eq ptr %.pn, %valids
  br i1 %cmp, label %if.then12.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %start = getelementptr i8, ptr %.pn, i32 20
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start, align 8
  %cmp3 = icmp eq i64 %4, %div72
  br i1 %cmp3, label %for.body.if.end39_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then12.critedge:                               ; preds = %for.cond
  %invalids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 3
  br label %for.cond17

for.cond17:                                       ; preds = %for.body22.for.cond17_crit_edge, %if.then12.critedge
  %.pn73.in = phi ptr [ %invalids, %if.then12.critedge ], [ %.pn73, %for.body22.for.cond17_crit_edge ]
  %5 = ptrtoint ptr %.pn73.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn73 = load ptr, ptr %.pn73.in, align 4
  %cmp20 = icmp eq ptr %.pn73, %invalids
  br i1 %cmp20, label %for.cond17.cleanup_crit_edge, label %for.body22

for.cond17.cleanup_crit_edge:                     ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body22:                                       ; preds = %for.cond17
  %start23 = getelementptr i8, ptr %.pn73, i32 20
  %6 = ptrtoint ptr %start23 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start23, align 8
  %cmp24 = icmp eq i64 %7, %div72
  br i1 %cmp24, label %for.body22.if.end39_crit_edge, label %for.body22.for.cond17_crit_edge

for.body22.for.cond17_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond17

for.body22.if.end39_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.end39:                                         ; preds = %for.body22.if.end39_crit_edge, %for.body.if.end39_crit_edge
  %.pn73.pn = phi ptr [ %.pn73, %for.body22.if.end39_crit_edge ], [ %.pn, %for.body.if.end39_crit_edge ]
  %mapping.2 = getelementptr i8, ptr %.pn73.pn, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn73.pn) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end39.list_del.exit_crit_edge

if.end39.list_del.exit_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn73.pn, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn73.pn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn73.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end39.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn73.pn to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn73.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn73.pn, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @amdgpu_vm_it_remove(ptr noundef %mapping.2, ptr noundef %1)
  %16 = ptrtoint ptr %mapping.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mapping.2, align 8
  tail call fastcc void @trace_amdgpu_vm_bo_unmap(ptr noundef %bo_va, ptr noundef %mapping.2)
  br i1 %cmp, label %if.else, label %if.then42

if.then42:                                        ; preds = %list_del.exit
  %freed = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %freed, align 4
  %call.i.i75 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn73.pn, ptr noundef %freed, ptr noundef %18) #14
  br i1 %call.i.i75, label %if.end.i.i76, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i76:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.pn73.pn, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %.pn73.pn to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %.pn73.pn, align 4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %freed, ptr %prev.i, align 4
  %22 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %.pn73.pn, ptr %freed, align 4
  br label %cleanup

if.else:                                          ; preds = %list_del.exit
  %flags.i = getelementptr i8, ptr %.pn73.pn, i32 52
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %24, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.else.amdgpu_vm_free_mapping.exit_crit_edge, label %if.then.i

if.else.amdgpu_vm_free_mapping.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_free_mapping.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %last_pt_update = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 2
  %25 = ptrtoint ptr %last_pt_update to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %last_pt_update, align 4
  tail call fastcc void @amdgpu_vm_add_prt_cb(ptr noundef %adev, ptr noundef %26) #14
  br label %amdgpu_vm_free_mapping.exit

amdgpu_vm_free_mapping.exit:                      ; preds = %if.then.i, %if.else.amdgpu_vm_free_mapping.exit_crit_edge
  tail call void @kfree(ptr noundef %mapping.2) #14
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_vm_free_mapping.exit, %if.end.i.i76, %if.then42.cleanup_crit_edge, %for.cond17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %amdgpu_vm_free_mapping.exit ], [ 0, %if.then42.cleanup_crit_edge ], [ 0, %if.end.i.i76 ], [ -2, %for.cond17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_vm_it_remove(ptr noundef %node, ptr noundef %root) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rb = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %node, i32 0, i32 2
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %root, i32 0, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %1, %rb
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @rb_next(ptr noundef %rb) #14
  %2 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %rb_right.i.i.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %node, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %node, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else6.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %7 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rb, align 4
  %and.i.i.i = and i32 %8, -4
  %9 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rb_change_child.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %11, %rb
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, ptr %rb_left.i.i.i.i, ptr %rb_right.i.i.i.i
  br label %__rb_change_child.exit.i.i.i

__rb_change_child.exit.i.i.i:                     ; preds = %if.then.i.i.i.i, %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i = phi ptr [ %root, %if.then.i.i.i.__rb_change_child.exit.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %if.then.i.i.i.i ]
  %12 = ptrtoint ptr %rb_left.sink.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %4, ptr %rb_left.sink.i.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %__rb_change_child.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %4, align 4
  br label %if.end69.i.i.i

if.else.i.i.i:                                    ; preds = %__rb_change_child.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and4.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool5.not.i.i.i, ptr null, ptr %9
  br label %if.end69.i.i.i

if.else6.i.i.i:                                   ; preds = %if.end.i
  %tobool7.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i.i, label %if.else12.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else6.i.i.i
  %14 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rb, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %6, align 4
  %and11.i.i.i = and i32 %15, -4
  %17 = inttoptr i32 %and11.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool.not.i2.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i, label %if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge, label %if.then.i7.i.i.i

if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge: ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rb_change_child.exit9.i.i.i

if.then.i7.i.i.i:                                 ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i3.i.i.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_left.i3.i.i.i, align 4
  %cmp.i4.i.i.i = icmp eq ptr %19, %rb
  %rb_right.i5.i.i.i = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %spec.select.i6.i.i.i = select i1 %cmp.i4.i.i.i, ptr %rb_left.i3.i.i.i, ptr %rb_right.i5.i.i.i
  br label %__rb_change_child.exit9.i.i.i

__rb_change_child.exit9.i.i.i:                    ; preds = %if.then.i7.i.i.i, %if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i = phi ptr [ %root, %if.then8.i.i.i.__rb_change_child.exit9.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i, %if.then.i7.i.i.i ]
  %20 = ptrtoint ptr %rb_left.sink.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %6, ptr %rb_left.sink.i8.i.i.i, align 4
  br label %if.end69.i.i.i

if.else12.i.i.i:                                  ; preds = %if.else6.i.i.i
  %rb_left13.i.i.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %rb_left13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rb_left13.i.i.i, align 4
  %tobool14.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %if.else12.i.i.i.do.body.i.i.i_crit_edge

if.else12.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %if.else12.i.i.i
  br label %do.body.i.i.i

if.then15.i.i.i:                                  ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right16.i.i.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  %23 = ptrtoint ptr %rb_right16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rb_right16.i.i.i, align 4
  %__subtree_last.i.i.i.i = getelementptr %struct.amdgpu_bo_va_mapping, ptr %node, i32 0, i32 5
  %25 = ptrtoint ptr %__subtree_last.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %__subtree_last.i.i.i.i, align 8
  %__subtree_last4.i.i.i.i = getelementptr i8, ptr %4, i32 28
  %27 = ptrtoint ptr %__subtree_last4.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %__subtree_last4.i.i.i.i, align 8
  %.pre.i.i.i = ptrtoint ptr %4 to i32
  br label %if.end42.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.else12.i.i.i.do.body.i.i.i_crit_edge
  %tmp.0.i.i.i = phi ptr [ %29, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %22, %if.else12.i.i.i.do.body.i.i.i_crit_edge ]
  %successor.0.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %4, %if.else12.i.i.i.do.body.i.i.i_crit_edge ]
  %rb_left18.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %rb_left18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rb_left18.i.i.i, align 4
  %tobool19.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool19.not.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %rb_right20.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %rb_right20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rb_right20.i.i.i, align 4
  %rb_left26.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %rb_left26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %rb_left26.i.i.i, align 4
  store volatile ptr %4, ptr %rb_right20.i.i.i, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %34, 1
  %35 = ptrtoint ptr %tmp.0.i.i.i to i32
  %or.i.i.i.i = or i32 %and.i.i.i.i, %35
  store i32 %or.i.i.i.i, ptr %4, align 4
  %__subtree_last.i10.i.i.i = getelementptr %struct.amdgpu_bo_va_mapping, ptr %node, i32 0, i32 5
  %36 = ptrtoint ptr %__subtree_last.i10.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %__subtree_last.i10.i.i.i, align 8
  %__subtree_last4.i11.i.i.i = getelementptr i8, ptr %tmp.0.i.i.i, i32 28
  %38 = ptrtoint ptr %__subtree_last4.i11.i.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %__subtree_last4.i11.i.i.i, align 8
  %cmp.not8.i.i.i.i = icmp eq ptr %successor.0.i.i.i, %tmp.0.i.i.i
  br i1 %cmp.not8.i.i.i.i, label %do.end.i.i.i.if.end42.i.i.i_crit_edge, label %do.end.i.i.i.while.body.i.i.i.i_crit_edge

do.end.i.i.i.while.body.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i
  br label %while.body.i.i.i.i

do.end.i.i.i.if.end42.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i.i.i

while.body.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge, %do.end.i.i.i.while.body.i.i.i.i_crit_edge
  %rb.addr.09.i.i.i.i = phi ptr [ %56, %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %successor.0.i.i.i, %do.end.i.i.i.while.body.i.i.i.i_crit_edge ]
  %last.i.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i.i, i32 20
  %39 = ptrtoint ptr %last.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %last.i.i.i.i.i, align 8
  %rb_left.i.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i.i, i32 8
  %41 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i.i.i, label %while.body.i.i.i.i.if.end5.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

while.body.i.i.i.i.if.end5.i.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %__subtree_last.i.i.i.i.i = getelementptr i8, ptr %42, i32 28
  %43 = ptrtoint ptr %__subtree_last.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %__subtree_last.i.i.i.i.i, align 8
  %45 = tail call i64 @llvm.umax.i64(i64 %44, i64 %40) #14
  br label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i, %while.body.i.i.i.i.if.end5.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i = phi i64 [ %40, %while.body.i.i.i.i.if.end5.i.i.i.i.i_crit_edge ], [ %45, %if.then.i.i.i.i.i ]
  %rb_right.i.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i.i, i32 4
  %46 = ptrtoint ptr %rb_right.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rb_right.i.i.i.i.i, align 4
  %tobool7.not.i.i.i.i.i = icmp eq ptr %47, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end19.i.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.i

if.end5.i.i.i.i.i.if.end19.i.i.i.i.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %__subtree_last14.i.i.i.i.i = getelementptr i8, ptr %47, i32 28
  %48 = ptrtoint ptr %__subtree_last14.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %__subtree_last14.i.i.i.i.i, align 8
  %50 = tail call i64 @llvm.umax.i64(i64 %49, i64 %max.0.i.i.i.i.i) #14
  br label %if.end19.i.i.i.i.i

if.end19.i.i.i.i.i:                               ; preds = %if.then8.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end19.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i = phi i64 [ %max.0.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end19.i.i.i.i.i_crit_edge ], [ %50, %if.then8.i.i.i.i.i ]
  %__subtree_last21.i.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i.i, i32 28
  %51 = ptrtoint ptr %__subtree_last21.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %__subtree_last21.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %max.1.i.i.i.i.i)
  %cmp22.i.i.i.i.i = icmp eq i64 %52, %max.1.i.i.i.i.i
  br i1 %cmp22.i.i.i.i.i, label %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge, label %cleanup.i.i.i.i

if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge:      ; preds = %if.end19.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.end19.i.i.i.i.i
  %53 = ptrtoint ptr %__subtree_last21.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %max.1.i.i.i.i.i, ptr %__subtree_last21.i.i.i.i.i, align 8
  %54 = ptrtoint ptr %rb.addr.09.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rb.addr.09.i.i.i.i, align 4
  %and.i12.i.i.i = and i32 %55, -4
  %56 = inttoptr i32 %and.i12.i.i.i to ptr
  %cmp.not.i.i.i.i = icmp eq ptr %tmp.0.i.i.i, %56
  br i1 %cmp.not.i.i.i.i, label %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge, label %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge

cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i.i

cleanup.i.i.i.i.if.end42.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge, %do.end.i.i.i.if.end42.i.i.i_crit_edge, %if.then15.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %35, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %.pre.i.i.i, %if.then15.i.i.i ], [ %35, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %35, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %parent.0.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %4, %if.then15.i.i.i ], [ %successor.0.i.i.i, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %successor.0.i.i.i, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %successor.1.i.i.i = phi ptr [ %tmp.0.i.i.i, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %4, %if.then15.i.i.i ], [ %tmp.0.i.i.i, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %tmp.0.i.i.i, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %child2.0.i.i.i = phi ptr [ %31, %do.end.i.i.i.if.end42.i.i.i_crit_edge ], [ %24, %if.then15.i.i.i ], [ %31, %if.end19.i.i.i.i.i.if.end42.i.i.i_crit_edge ], [ %31, %cleanup.i.i.i.i.if.end42.i.i.i_crit_edge ]
  %57 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rb_left.i.i.i, align 4
  %rb_left49.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %rb_left49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %58, ptr %rb_left49.i.i.i, align 4
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %58, align 4
  %and.i13.i.i.i = and i32 %61, 1
  %or.i14.i.i.i = or i32 %and.i13.i.i.i, %.pre-phi.i.i.i
  store i32 %or.i14.i.i.i, ptr %58, align 4
  %62 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rb, align 4
  %and55.i.i.i = and i32 %63, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i)
  %tobool.not.i15.i.i.i = icmp eq i32 %and55.i.i.i, 0
  br i1 %tobool.not.i15.i.i.i, label %if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge, label %if.then.i20.i.i.i

if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge: ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rb_change_child.exit22.i.i.i

if.then.i20.i.i.i:                                ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %64 = inttoptr i32 %and55.i.i.i to ptr
  %rb_left.i16.i.i.i = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %rb_left.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rb_left.i16.i.i.i, align 4
  %cmp.i17.i.i.i = icmp eq ptr %66, %rb
  %rb_right.i18.i.i.i = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 1
  %spec.select.i19.i.i.i = select i1 %cmp.i17.i.i.i, ptr %rb_left.i16.i.i.i, ptr %rb_right.i18.i.i.i
  br label %__rb_change_child.exit22.i.i.i

__rb_change_child.exit22.i.i.i:                   ; preds = %if.then.i20.i.i.i, %if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge
  %rb_left.sink.i21.i.i.i = phi ptr [ %root, %if.end42.i.i.i.__rb_change_child.exit22.i.i.i_crit_edge ], [ %spec.select.i19.i.i.i, %if.then.i20.i.i.i ]
  %67 = ptrtoint ptr %rb_left.sink.i21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %successor.1.i.i.i, ptr %rb_left.sink.i21.i.i.i, align 4
  %tobool56.not.i.i.i = icmp eq ptr %child2.0.i.i.i, null
  br i1 %tobool56.not.i.i.i, label %if.else58.i.i.i, label %if.then57.i.i.i

if.then57.i.i.i:                                  ; preds = %__rb_change_child.exit22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %parent.0.i.i.i to i32
  %or.i23.i.i.i = or i32 %68, 1
  %69 = ptrtoint ptr %child2.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i23.i.i.i, ptr %child2.0.i.i.i, align 4
  br label %if.end66.i.i.i

if.else58.i.i.i:                                  ; preds = %__rb_change_child.exit22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %successor.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %successor.1.i.i.i, align 4
  %and60.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i)
  %tobool61.not.i.i.i = icmp eq i32 %and60.i.i.i, 0
  %spec.select1.i.i.i = select i1 %tobool61.not.i.i.i, ptr null, ptr %parent.0.i.i.i
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %if.else58.i.i.i, %if.then57.i.i.i
  %rebalance.1.i.i.i = phi ptr [ null, %if.then57.i.i.i ], [ %spec.select1.i.i.i, %if.else58.i.i.i ]
  %72 = ptrtoint ptr %successor.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %63, ptr %successor.1.i.i.i, align 4
  br label %if.end69.i.i.i

if.end69.i.i.i:                                   ; preds = %if.end66.i.i.i, %__rb_change_child.exit9.i.i.i, %if.else.i.i.i, %if.then2.i.i.i
  %tmp.1.i.i.i = phi ptr [ %successor.1.i.i.i, %if.end66.i.i.i ], [ %17, %__rb_change_child.exit9.i.i.i ], [ %9, %if.else.i.i.i ], [ %9, %if.then2.i.i.i ]
  %rebalance.2.i.i.i = phi ptr [ %rebalance.1.i.i.i, %if.end66.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i ], [ %spec.select.i.i.i, %if.else.i.i.i ], [ null, %if.then2.i.i.i ]
  %cmp.not8.i24.i.i.i = icmp eq ptr %tmp.1.i.i.i, null
  br i1 %cmp.not8.i24.i.i.i, label %if.end69.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, label %if.end69.i.i.i.while.body.i29.i.i.i_crit_edge

if.end69.i.i.i.while.body.i29.i.i.i_crit_edge:    ; preds = %if.end69.i.i.i
  br label %while.body.i29.i.i.i

if.end69.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %if.end69.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rb_erase_augmented.exit.i.i

while.body.i29.i.i.i:                             ; preds = %cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge, %if.end69.i.i.i.while.body.i29.i.i.i_crit_edge
  %rb.addr.09.i25.i.i.i = phi ptr [ %90, %cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge ], [ %tmp.1.i.i.i, %if.end69.i.i.i.while.body.i29.i.i.i_crit_edge ]
  %last.i.i26.i.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i.i, i32 20
  %73 = ptrtoint ptr %last.i.i26.i.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %last.i.i26.i.i.i, align 8
  %rb_left.i.i27.i.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i.i, i32 8
  %75 = ptrtoint ptr %rb_left.i.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rb_left.i.i27.i.i.i, align 4
  %tobool.not.i.i28.i.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i28.i.i.i, label %while.body.i29.i.i.i.if.end5.i.i35.i.i.i_crit_edge, label %if.then.i.i31.i.i.i

while.body.i29.i.i.i.if.end5.i.i35.i.i.i_crit_edge: ; preds = %while.body.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i.i35.i.i.i

if.then.i.i31.i.i.i:                              ; preds = %while.body.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %__subtree_last.i.i30.i.i.i = getelementptr i8, ptr %76, i32 28
  %77 = ptrtoint ptr %__subtree_last.i.i30.i.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %__subtree_last.i.i30.i.i.i, align 8
  %79 = tail call i64 @llvm.umax.i64(i64 %78, i64 %74) #14
  br label %if.end5.i.i35.i.i.i

if.end5.i.i35.i.i.i:                              ; preds = %if.then.i.i31.i.i.i, %while.body.i29.i.i.i.if.end5.i.i35.i.i.i_crit_edge
  %max.0.i.i32.i.i.i = phi i64 [ %74, %while.body.i29.i.i.i.if.end5.i.i35.i.i.i_crit_edge ], [ %79, %if.then.i.i31.i.i.i ]
  %rb_right.i.i33.i.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i.i, i32 4
  %80 = ptrtoint ptr %rb_right.i.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rb_right.i.i33.i.i.i, align 4
  %tobool7.not.i.i34.i.i.i = icmp eq ptr %81, null
  br i1 %tobool7.not.i.i34.i.i.i, label %if.end5.i.i35.i.i.i.if.end19.i.i41.i.i.i_crit_edge, label %if.then8.i.i37.i.i.i

if.end5.i.i35.i.i.i.if.end19.i.i41.i.i.i_crit_edge: ; preds = %if.end5.i.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i.i41.i.i.i

if.then8.i.i37.i.i.i:                             ; preds = %if.end5.i.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %__subtree_last14.i.i36.i.i.i = getelementptr i8, ptr %81, i32 28
  %82 = ptrtoint ptr %__subtree_last14.i.i36.i.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %__subtree_last14.i.i36.i.i.i, align 8
  %84 = tail call i64 @llvm.umax.i64(i64 %83, i64 %max.0.i.i32.i.i.i) #14
  br label %if.end19.i.i41.i.i.i

if.end19.i.i41.i.i.i:                             ; preds = %if.then8.i.i37.i.i.i, %if.end5.i.i35.i.i.i.if.end19.i.i41.i.i.i_crit_edge
  %max.1.i.i38.i.i.i = phi i64 [ %max.0.i.i32.i.i.i, %if.end5.i.i35.i.i.i.if.end19.i.i41.i.i.i_crit_edge ], [ %84, %if.then8.i.i37.i.i.i ]
  %__subtree_last21.i.i39.i.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i.i, i32 28
  %85 = ptrtoint ptr %__subtree_last21.i.i39.i.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %__subtree_last21.i.i39.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %max.1.i.i38.i.i.i)
  %cmp22.i.i40.i.i.i = icmp eq i64 %86, %max.1.i.i38.i.i.i
  br i1 %cmp22.i.i40.i.i.i, label %if.end19.i.i41.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, label %cleanup.i44.i.i.i

if.end19.i.i41.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %if.end19.i.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rb_erase_augmented.exit.i.i

cleanup.i44.i.i.i:                                ; preds = %if.end19.i.i41.i.i.i
  %87 = ptrtoint ptr %__subtree_last21.i.i39.i.i.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %max.1.i.i38.i.i.i, ptr %__subtree_last21.i.i39.i.i.i, align 8
  %88 = ptrtoint ptr %rb.addr.09.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rb.addr.09.i25.i.i.i, align 4
  %and.i42.i.i.i = and i32 %89, -4
  %90 = inttoptr i32 %and.i42.i.i.i to ptr
  %cmp.not.i43.i.i.i = icmp eq i32 %and.i42.i.i.i, 0
  br i1 %cmp.not.i43.i.i.i, label %cleanup.i44.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, label %cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge

cleanup.i44.i.i.i.while.body.i29.i.i.i_crit_edge: ; preds = %cleanup.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i29.i.i.i

cleanup.i44.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge: ; preds = %cleanup.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rb_erase_augmented.exit.i.i

__rb_erase_augmented.exit.i.i:                    ; preds = %cleanup.i44.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, %if.end19.i.i41.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge, %if.end69.i.i.i.__rb_erase_augmented.exit.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %rebalance.2.i.i.i, null
  br i1 %tobool.not.i.i, label %__rb_erase_augmented.exit.i.i.rb_erase_augmented_cached.exit_crit_edge, label %if.then.i.i

__rb_erase_augmented.exit.i.i.rb_erase_augmented_cached.exit_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_augmented_cached.exit

if.then.i.i:                                      ; preds = %__rb_erase_augmented.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i, ptr noundef %root, ptr noundef nonnull @amdgpu_vm_it_augment_rotate) #14
  br label %rb_erase_augmented_cached.exit

rb_erase_augmented_cached.exit:                   ; preds = %if.then.i.i, %__rb_erase_augmented.exit.i.i.rb_erase_augmented_cached.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_bo_unmap(ptr noundef %bo_va, ptr noundef %mapping) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_unmap, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_bo_unmap, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  %call42 = tail call i32 @__traceiter_amdgpu_vm_bo_unmap(ptr noundef null, ptr noundef %bo_va, ptr noundef %mapping) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !151
  %13 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_unmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_unmap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_vm_bo_unmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_amdgpu_vm_bo_unmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 289, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
define internal fastcc void @amdgpu_vm_prt_get(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %0 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmc_funcs, align 4
  %set_prt = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %set_prt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_prt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.end

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.end:                                           ; preds = %entry
  %num_prt_users = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_prt_users, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %num_prt_users, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_prt_users, ptr %num_prt_users, i32 1, ptr elementtype(i32) %num_prt_users) #14, !srcloc !153
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prt_lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %prt_lock.i) #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_prt_users, i32 noundef 4) #14
  %5 = ptrtoint ptr %num_prt_users to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %num_prt_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i = icmp ne i32 %6, 0
  %7 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gmc_funcs, align 4
  %set_prt.i = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %set_prt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_prt.i, align 4
  tail call void %10(ptr noundef %adev, i1 noundef zeroext %tobool.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %prt_lock.i, i32 noundef %call2.i) #14
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_vm_bo_lookup_mapping(ptr nocapture noundef readonly %vm, i64 noundef %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.amdgpu_vm_it_iter_first.exit_crit_edge, label %if.end.i

entry.amdgpu_vm_it_iter_first.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_iter_first.exit

if.end.i:                                         ; preds = %entry
  %__subtree_last.i = getelementptr i8, ptr %1, i32 28
  %2 = ptrtoint ptr %__subtree_last.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %__subtree_last.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %addr)
  %cmp.i = icmp ult i64 %3, %addr
  br i1 %cmp.i, label %if.end.i.amdgpu_vm_it_iter_first.exit_crit_edge, label %if.end4.i

if.end.i.amdgpu_vm_it_iter_first.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_iter_first.exit

if.end4.i:                                        ; preds = %if.end.i
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %vm, i32 0, i32 1
  %4 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost.i, align 4
  %start8.i = getelementptr i8, ptr %5, i32 12
  %6 = ptrtoint ptr %start8.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %addr)
  %cmp9.i = icmp ugt i64 %7, %addr
  br i1 %cmp9.i, label %if.end4.i.amdgpu_vm_it_iter_first.exit_crit_edge, label %if.end4.i.while.body.i.i_crit_edge

if.end4.i.while.body.i.i_crit_edge:               ; preds = %if.end4.i
  br label %while.body.i.i

if.end4.i.amdgpu_vm_it_iter_first.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_iter_first.exit

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %if.end4.i.while.body.i.i_crit_edge
  %.pn.i.pn.i = phi ptr [ %.pn.i.pn.i.be, %while.body.i.i.backedge ], [ %1, %if.end4.i.while.body.i.i_crit_edge ]
  %rb_left.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 8
  %8 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end4.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end4.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %__subtree_last.i.i = getelementptr i8, ptr %9, i32 28
  %10 = ptrtoint ptr %__subtree_last.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %__subtree_last.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %addr)
  %cmp.not.i.i = icmp ult i64 %11, %addr
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %if.then.i.i.while.body.i.i.backedge_crit_edge

if.then.i.i.while.body.i.i.backedge_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.backedge

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %while.body.i.i.if.end4.i.i_crit_edge
  %start5.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 12
  %12 = ptrtoint ptr %start5.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %addr)
  %cmp6.not.i.i = icmp ugt i64 %13, %addr
  br i1 %cmp6.not.i.i, label %if.end4.i.i.amdgpu_vm_it_iter_first.exit_crit_edge, label %if.then7.i.i

if.end4.i.i.amdgpu_vm_it_iter_first.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_iter_first.exit

if.then7.i.i:                                     ; preds = %if.end4.i.i
  %last8.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 20
  %14 = ptrtoint ptr %last8.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %last8.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %addr)
  %cmp9.not.i.i = icmp ult i64 %15, %addr
  br i1 %cmp9.not.i.i, label %if.end11.i.i, label %cleanup.loopexit.split.loop.exit18.i

if.end11.i.i:                                     ; preds = %if.then7.i.i
  %rb_right.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 4
  %16 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_right.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %17, null
  br i1 %tobool13.not.i.i, label %if.end11.i.i.amdgpu_vm_it_iter_first.exit_crit_edge, label %if.then14.i.i

if.end11.i.i.amdgpu_vm_it_iter_first.exit_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_iter_first.exit

if.then14.i.i:                                    ; preds = %if.end11.i.i
  %__subtree_last20.i.i = getelementptr i8, ptr %17, i32 28
  %18 = ptrtoint ptr %__subtree_last20.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %__subtree_last20.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %addr)
  %cmp21.not.i.i = icmp ult i64 %19, %addr
  br i1 %cmp21.not.i.i, label %if.then14.i.i.amdgpu_vm_it_iter_first.exit_crit_edge, label %if.then14.i.i.while.body.i.i.backedge_crit_edge

if.then14.i.i.while.body.i.i.backedge_crit_edge:  ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.backedge

if.then14.i.i.amdgpu_vm_it_iter_first.exit_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_iter_first.exit

while.body.i.i.backedge:                          ; preds = %if.then14.i.i.while.body.i.i.backedge_crit_edge, %if.then.i.i.while.body.i.i.backedge_crit_edge
  %.pn.i.pn.i.be = phi ptr [ %9, %if.then.i.i.while.body.i.i.backedge_crit_edge ], [ %17, %if.then14.i.i.while.body.i.i.backedge_crit_edge ]
  br label %while.body.i.i

cleanup.loopexit.split.loop.exit18.i:             ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %node.addr.0.i.le.i = getelementptr i8, ptr %.pn.i.pn.i, i32 -12
  br label %amdgpu_vm_it_iter_first.exit

amdgpu_vm_it_iter_first.exit:                     ; preds = %cleanup.loopexit.split.loop.exit18.i, %if.then14.i.i.amdgpu_vm_it_iter_first.exit_crit_edge, %if.end11.i.i.amdgpu_vm_it_iter_first.exit_crit_edge, %if.end4.i.i.amdgpu_vm_it_iter_first.exit_crit_edge, %if.end4.i.amdgpu_vm_it_iter_first.exit_crit_edge, %if.end.i.amdgpu_vm_it_iter_first.exit_crit_edge, %entry.amdgpu_vm_it_iter_first.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.amdgpu_vm_it_iter_first.exit_crit_edge ], [ null, %if.end.i.amdgpu_vm_it_iter_first.exit_crit_edge ], [ null, %if.end4.i.amdgpu_vm_it_iter_first.exit_crit_edge ], [ %node.addr.0.i.le.i, %cleanup.loopexit.split.loop.exit18.i ], [ null, %if.then14.i.i.amdgpu_vm_it_iter_first.exit_crit_edge ], [ null, %if.end11.i.i.amdgpu_vm_it_iter_first.exit_crit_edge ], [ null, %if.end4.i.i.amdgpu_vm_it_iter_first.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_bo_trace_cs(ptr nocapture noundef readonly %vm, ptr noundef readnone %ticket) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_cs, i32 0, i32 1), ptr blockaddress(@amdgpu_vm_bo_trace_cs, %if.end)) #14
          to label %cleanup16 [label %if.end], !srcloc !137

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup16_crit_edge, label %if.end.while.body.i.i_crit_edge

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

if.end.cleanup16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup16

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %.pn.i.pn.i = phi ptr [ %3, %while.body.i.i.while.body.i.i_crit_edge ], [ %1, %if.end.while.body.i.i_crit_edge ]
  %rb_left.i.i = getelementptr i8, ptr %.pn.i.pn.i, i32 8
  %2 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %amdgpu_vm_it_iter_first.exit, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

amdgpu_vm_it_iter_first.exit:                     ; preds = %while.body.i.i
  %node.addr.0.i.le.i = getelementptr i8, ptr %.pn.i.pn.i, i32 -12
  %tobool.not37 = icmp eq ptr %node.addr.0.i.le.i, null
  br i1 %tobool.not37, label %amdgpu_vm_it_iter_first.exit.cleanup16_crit_edge, label %amdgpu_vm_it_iter_first.exit.for.body_crit_edge

amdgpu_vm_it_iter_first.exit.for.body_crit_edge:  ; preds = %amdgpu_vm_it_iter_first.exit
  br label %for.body

amdgpu_vm_it_iter_first.exit.cleanup16_crit_edge: ; preds = %amdgpu_vm_it_iter_first.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup16

for.body:                                         ; preds = %amdgpu_vm_it_iter_next.exit.for.body_crit_edge, %amdgpu_vm_it_iter_first.exit.for.body_crit_edge
  %mapping.038 = phi ptr [ %retval.3.i, %amdgpu_vm_it_iter_next.exit.for.body_crit_edge ], [ %node.addr.0.i.le.i, %amdgpu_vm_it_iter_first.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %mapping.038 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapping.038, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %bo = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.if.end14_crit_edge, label %if.then5

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then5:                                         ; preds = %land.lhs.true
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %7, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv, align 8
  %ctx.i = getelementptr inbounds %struct.ww_mutex, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %ctx.i, align 4
  %cmp.not = icmp eq ptr %11, %ticket
  br i1 %cmp.not, label %if.then5.if.end14_crit_edge, label %if.then5.for.inc_crit_edge

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end14:                                         ; preds = %if.then5.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  tail call fastcc void @trace_amdgpu_vm_bo_cs(ptr noundef nonnull %mapping.038)
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.then5.for.inc_crit_edge
  %rb_right.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping.038, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i25 = icmp eq ptr %13, null
  br i1 %tobool.not.i25, label %for.inc.do.body.i_crit_edge, label %for.inc.while.body.i.i29_crit_edge

for.inc.while.body.i.i29_crit_edge:               ; preds = %for.inc
  br label %while.body.i.i29

for.inc.do.body.i_crit_edge:                      ; preds = %for.inc
  br label %do.body.i

while.body.i.i29:                                 ; preds = %while.body.i.i29.while.body.i.i29_crit_edge, %for.inc.while.body.i.i29_crit_edge
  %rb.0.pn.i = phi ptr [ %15, %while.body.i.i29.while.body.i.i29_crit_edge ], [ %13, %for.inc.while.body.i.i29_crit_edge ]
  %rb_left.i.i27 = getelementptr i8, ptr %rb.0.pn.i, i32 8
  %14 = ptrtoint ptr %rb_left.i.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rb_left.i.i27, align 4
  %tobool.not.i.i28 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i28, label %if.end4.i.i33, label %while.body.i.i29.while.body.i.i29_crit_edge

while.body.i.i29.while.body.i.i29_crit_edge:      ; preds = %while.body.i.i29
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i29

if.end4.i.i33:                                    ; preds = %while.body.i.i29
  call void @__sanitizer_cov_trace_pc() #16
  %node.addr.0.i.le.i35 = getelementptr i8, ptr %rb.0.pn.i, i32 -12
  br label %amdgpu_vm_it_iter_next.exit

do.body.i:                                        ; preds = %if.end7.i.do.body.i_crit_edge, %for.inc.do.body.i_crit_edge
  %node.addr.1.i = phi ptr [ %add.ptr11.i, %if.end7.i.do.body.i_crit_edge ], [ %mapping.038, %for.inc.do.body.i_crit_edge ]
  %rb4.i = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %node.addr.1.i, i32 0, i32 2
  %16 = ptrtoint ptr %rb4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rb4.i, align 4
  %and.i = and i32 %17, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.cleanup16_crit_edge, label %if.end7.i

do.body.i.cleanup16_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup16

if.end7.i:                                        ; preds = %do.body.i
  %18 = inttoptr i32 %and.i to ptr
  %add.ptr11.i = getelementptr i8, ptr %18, i32 -12
  %rb_right13.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %rb_right13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rb_right13.i, align 4
  %cmp14.i = icmp eq ptr %rb4.i, %20
  br i1 %cmp14.i, label %if.end7.i.do.body.i_crit_edge, label %if.end7.i.amdgpu_vm_it_iter_next.exit_crit_edge

if.end7.i.amdgpu_vm_it_iter_next.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_iter_next.exit

if.end7.i.do.body.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

amdgpu_vm_it_iter_next.exit:                      ; preds = %if.end7.i.amdgpu_vm_it_iter_next.exit_crit_edge, %if.end4.i.i33
  %retval.3.i = phi ptr [ %node.addr.0.i.le.i35, %if.end4.i.i33 ], [ %add.ptr11.i, %if.end7.i.amdgpu_vm_it_iter_next.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.3.i, null
  br i1 %tobool.not, label %amdgpu_vm_it_iter_next.exit.cleanup16_crit_edge, label %amdgpu_vm_it_iter_next.exit.for.body_crit_edge

amdgpu_vm_it_iter_next.exit.for.body_crit_edge:   ; preds = %amdgpu_vm_it_iter_next.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

amdgpu_vm_it_iter_next.exit.cleanup16_crit_edge:  ; preds = %amdgpu_vm_it_iter_next.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup16

cleanup16:                                        ; preds = %amdgpu_vm_it_iter_next.exit.cleanup16_crit_edge, %do.body.i.cleanup16_crit_edge, %amdgpu_vm_it_iter_first.exit.cleanup16_crit_edge, %if.end.cleanup16_crit_edge, %entry
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_bo_cs(ptr noundef %mapping) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_cs, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_bo_cs, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !155
  %call42 = tail call i32 @__traceiter_amdgpu_vm_bo_cs(ptr noundef null, ptr noundef %mapping) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !156
  %13 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_cs, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_cs, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_vm_bo_cs.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_amdgpu_vm_bo_cs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 322, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
define dso_local void @amdgpu_vm_bo_rmv(ptr noundef %adev, ptr noundef %bo_va) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bo1 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 1
  %0 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo1, align 4
  %2 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo_va, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then:                                          ; preds = %entry
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %bo6 = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %bo6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo6, align 4
  %resv9 = getelementptr inbounds %struct.amdgpu_bo, ptr %7, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv9, align 8
  %cmp = icmp eq ptr %5, %9
  br i1 %cmp, label %if.then10, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %bulk_moveable = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 28
  %10 = ptrtoint ptr %bulk_moveable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bulk_moveable, align 8
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %bo1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo1, align 4
  %vm_bo = getelementptr inbounds %struct.amdgpu_bo, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %vm_bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_bo, align 4
  %tobool13.not135 = icmp eq ptr %14, null
  br i1 %tobool13.not135, label %if.end.if.end21_crit_edge, label %for.body.preheader

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

for.body.preheader:                               ; preds = %if.end
  %cmp15.not144 = icmp eq ptr %14, %bo_va
  br i1 %cmp15.not144, label %for.body.preheader.if.end17_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.if.end17_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %15 = phi ptr [ %17, %for.body.for.cond_crit_edge ], [ %14, %for.body.preheader.for.cond_crit_edge ]
  %next20 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %next20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next20, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %for.cond.if.end21_crit_edge, label %for.body

for.cond.if.end21_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

for.body:                                         ; preds = %for.cond
  %cmp15.not = icmp eq ptr %17, %bo_va
  br i1 %cmp15.not, label %if.end17.loopexit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.end17.loopexit:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %next20.le = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %15, i32 0, i32 2
  br label %if.end17

if.end17:                                         ; preds = %if.end17.loopexit, %for.body.preheader.if.end17_crit_edge
  %base4.0136.lcssa = phi ptr [ %vm_bo, %for.body.preheader.if.end17_crit_edge ], [ %next20.le, %if.end17.loopexit ]
  %next19 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 2
  %18 = ptrtoint ptr %next19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next19, align 4
  %20 = ptrtoint ptr %base4.0136.lcssa to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %base4.0136.lcssa, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %for.cond.if.end21_crit_edge, %if.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  %invalidated_lock = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %invalidated_lock) #14
  %vm_status = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_del.exit_crit_edge

if.end21.list_del.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %vm_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vm_status, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end21.list_del.exit_crit_edge
  %27 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %vm_status, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_va, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %invalidated_lock) #14
  %valids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 4
  %29 = ptrtoint ptr %valids to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %valids, align 4
  %cmp32.not137 = icmp eq ptr %30, %valids
  br i1 %cmp32.not137, label %list_del.exit.for.end43_crit_edge, label %for.body33.lr.ph

list_del.exit.for.end43_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43

for.body33.lr.ph:                                 ; preds = %list_del.exit
  %freed = getelementptr inbounds %struct.amdgpu_vm, ptr %3, i32 0, i32 10
  br label %for.body33

for.body33:                                       ; preds = %list_add.exit.for.body33_crit_edge, %for.body33.lr.ph
  %.pn.in138 = phi ptr [ %30, %for.body33.lr.ph ], [ %.pn, %list_add.exit.for.body33_crit_edge ]
  %mapping.0 = getelementptr i8, ptr %.pn.in138, i32 -4
  %31 = ptrtoint ptr %.pn.in138 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn.in138, align 4
  %call.i.i118 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in138) #14
  br i1 %call.i.i118, label %if.end.i.i121, label %for.body33.list_del.exit123_crit_edge

for.body33.list_del.exit123_crit_edge:            ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit123

if.end.i.i121:                                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i119 = getelementptr inbounds %struct.list_head, ptr %.pn.in138, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i119, align 4
  %34 = ptrtoint ptr %.pn.in138 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in138, align 4
  %prev1.i.i.i120 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i120, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit123

list_del.exit123:                                 ; preds = %if.end.i.i121, %for.body33.list_del.exit123_crit_edge
  %38 = ptrtoint ptr %.pn.in138 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in138, align 4
  %prev.i122 = getelementptr inbounds %struct.list_head, ptr %.pn.in138, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i122, align 4
  tail call fastcc void @amdgpu_vm_it_remove(ptr noundef %mapping.0, ptr noundef %3)
  %40 = ptrtoint ptr %mapping.0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %mapping.0, align 8
  tail call fastcc void @trace_amdgpu_vm_bo_unmap(ptr noundef %bo_va, ptr noundef %mapping.0)
  %41 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %freed, align 4
  %call.i.i124 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in138, ptr noundef %freed, ptr noundef %42) #14
  br i1 %call.i.i124, label %if.end.i.i125, label %list_del.exit123.list_add.exit_crit_edge

list_del.exit123.list_add.exit_crit_edge:         ; preds = %list_del.exit123
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i125:                                    ; preds = %list_del.exit123
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %.pn.in138, ptr %prev1.i.i, align 4
  %44 = ptrtoint ptr %.pn.in138 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %.pn.in138, align 4
  %45 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %freed, ptr %prev.i122, align 4
  %46 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %.pn.in138, ptr %freed, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i125, %list_del.exit123.list_add.exit_crit_edge
  %cmp32.not = icmp eq ptr %.pn, %valids
  br i1 %cmp32.not, label %list_add.exit.for.end43_crit_edge, label %list_add.exit.for.body33_crit_edge

list_add.exit.for.body33_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body33

list_add.exit.for.end43_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43

for.end43:                                        ; preds = %list_add.exit.for.end43_crit_edge, %list_del.exit.for.end43_crit_edge
  %invalids = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 3
  %47 = ptrtoint ptr %invalids to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %invalids, align 4
  %cmp56.not139 = icmp eq ptr %48, %invalids
  br i1 %cmp56.not139, label %for.end43.for.end67_crit_edge, label %for.body58.lr.ph

for.end43.for.end67_crit_edge:                    ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end67

for.body58.lr.ph:                                 ; preds = %for.end43
  %last_pt_update = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 2
  br label %for.body58

for.body58:                                       ; preds = %amdgpu_vm_free_mapping.exit.for.body58_crit_edge, %for.body58.lr.ph
  %.pn115.in140 = phi ptr [ %48, %for.body58.lr.ph ], [ %.pn115, %amdgpu_vm_free_mapping.exit.for.body58_crit_edge ]
  %mapping.1 = getelementptr i8, ptr %.pn115.in140, i32 -4
  %49 = ptrtoint ptr %.pn115.in140 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn115 = load ptr, ptr %.pn115.in140, align 4
  %call.i.i126 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn115.in140) #14
  br i1 %call.i.i126, label %if.end.i.i129, label %for.body58.list_del.exit131_crit_edge

for.body58.list_del.exit131_crit_edge:            ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit131

if.end.i.i129:                                    ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i127 = getelementptr inbounds %struct.list_head, ptr %.pn115.in140, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i127 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i127, align 4
  %52 = ptrtoint ptr %.pn115.in140 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %.pn115.in140, align 4
  %prev1.i.i.i128 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i128, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del.exit131

list_del.exit131:                                 ; preds = %if.end.i.i129, %for.body58.list_del.exit131_crit_edge
  %56 = ptrtoint ptr %.pn115.in140 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn115.in140, align 4
  %prev.i130 = getelementptr inbounds %struct.list_head, ptr %.pn115.in140, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i130, align 4
  tail call fastcc void @amdgpu_vm_it_remove(ptr noundef %mapping.1, ptr noundef %3)
  %flags.i = getelementptr i8, ptr %.pn115.in140, i32 52
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %59, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %list_del.exit131.amdgpu_vm_free_mapping.exit_crit_edge, label %if.then.i

list_del.exit131.amdgpu_vm_free_mapping.exit_crit_edge: ; preds = %list_del.exit131
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_free_mapping.exit

if.then.i:                                        ; preds = %list_del.exit131
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %last_pt_update to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %last_pt_update, align 4
  tail call fastcc void @amdgpu_vm_add_prt_cb(ptr noundef %adev, ptr noundef %61) #14
  br label %amdgpu_vm_free_mapping.exit

amdgpu_vm_free_mapping.exit:                      ; preds = %if.then.i, %list_del.exit131.amdgpu_vm_free_mapping.exit_crit_edge
  tail call void @kfree(ptr noundef %mapping.1) #14
  %cmp56.not = icmp eq ptr %.pn115, %invalids
  br i1 %cmp56.not, label %amdgpu_vm_free_mapping.exit.for.end67_crit_edge, label %amdgpu_vm_free_mapping.exit.for.body58_crit_edge

amdgpu_vm_free_mapping.exit.for.body58_crit_edge: ; preds = %amdgpu_vm_free_mapping.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body58

amdgpu_vm_free_mapping.exit.for.end67_crit_edge:  ; preds = %amdgpu_vm_free_mapping.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end67

for.end67:                                        ; preds = %amdgpu_vm_free_mapping.exit.for.end67_crit_edge, %for.end43.for.end67_crit_edge
  %last_pt_update68 = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 2
  %62 = ptrtoint ptr %last_pt_update68 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %last_pt_update68, align 4
  %tobool.not.i132 = icmp eq ptr %63, null
  br i1 %tobool.not.i132, label %for.end67.dma_fence_put.exit_crit_edge, label %if.then.i133

for.end67.dma_fence_put.exit_crit_edge:           ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then.i133:                                     ; preds = %for.end67
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %63, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !133

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @dma_fence_release(ptr noundef %refcount.i) #14
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %for.end67.dma_fence_put.exit_crit_edge
  br i1 %tobool.not, label %dma_fence_put.exit.if.end72_crit_edge, label %land.lhs.true

dma_fence_put.exit.if.end72_crit_edge:            ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

land.lhs.true:                                    ; preds = %dma_fence_put.exit
  %is_xgmi = getelementptr inbounds %struct.amdgpu_bo_va, ptr %bo_va, i32 0, i32 6
  %65 = ptrtoint ptr %is_xgmi to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_xgmi, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool70.not = icmp eq i8 %66, 0
  br i1 %tobool70.not, label %land.lhs.true.if.end72_crit_edge, label %if.then71

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @amdgpu_xgmi_set_pstate(ptr noundef %adev, i32 noundef 0) #14
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %land.lhs.true.if.end72_crit_edge, %dma_fence_put.exit.if.end72_crit_edge
  tail call void @kfree(ptr noundef %bo_va) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_vm_evictable(ptr nocapture noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_bo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 7
  %0 = ptrtoint ptr %vm_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_bo, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %call = tail call zeroext i1 @dma_resv_test_signaled(ptr noundef %5, i1 noundef zeroext true) #14
  br i1 %call, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %eviction_lock.i = getelementptr inbounds %struct.amdgpu_vm, ptr %7, i32 0, i32 1
  %call.i = tail call i32 @mutex_trylock(ptr noundef %eviction_lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %8 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %13, 2048
  %or.i.i = or i32 %13, 2048
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %saved_flags.i = getelementptr inbounds %struct.amdgpu_vm, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %saved_flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i.i, ptr %saved_flags.i, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %last_unlocked = getelementptr inbounds %struct.amdgpu_vm, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %last_unlocked, align 8
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i23 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i23, label %if.end.i, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end.i:                                         ; preds = %if.end8
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %land.lhs.true.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %24(ptr noundef %18) #14
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %18) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then5.i, %if.end8.if.end13_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %evicting = getelementptr inbounds %struct.amdgpu_vm, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %evicting to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %evicting, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %land.lhs.true.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i1 [ true, %if.end13 ], [ false, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ false, %if.end.i.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.sink48 = load ptr, ptr %1, align 4
  %saved_flags.i25 = getelementptr inbounds %struct.amdgpu_vm, ptr %.sink48, i32 0, i32 3
  %29 = ptrtoint ptr %saved_flags.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %saved_flags.i25, align 8
  %31 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i26 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i26 to ptr
  %task.i.i27 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i27, align 8
  %flags1.i.i28 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %flags1.i.i28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags1.i.i28, align 4
  %and.i.i36 = and i32 %36, -2049
  %or.i.i37 = or i32 %and.i.i36, %30
  store i32 %or.i.i37, ptr %flags1.i.i28, align 4
  %eviction_lock.i38 = getelementptr inbounds %struct.amdgpu_vm, ptr %.sink48, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %eviction_lock.i38) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_bo_invalidate(ptr nocapture noundef readnone %adev, ptr noundef readonly %bo, i1 noundef zeroext %evicted) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 8
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.amdgpu_bo_shadowed.exit_crit_edge

land.lhs.true.amdgpu_bo_shadowed.exit_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_bo_shadowed.exit

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %shadow.i = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shadow.i, align 8
  br label %amdgpu_bo_shadowed.exit

amdgpu_bo_shadowed.exit:                          ; preds = %if.then.i, %land.lhs.true.amdgpu_bo_shadowed.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ null, %land.lhs.true.amdgpu_bo_shadowed.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i, %bo
  %spec.select = select i1 %cmp, ptr %1, ptr %bo
  br label %if.end

if.end:                                           ; preds = %amdgpu_bo_shadowed.exit, %entry.if.end_crit_edge
  %bo.addr.0 = phi ptr [ %bo, %entry.if.end_crit_edge ], [ %spec.select, %amdgpu_bo_shadowed.exit ]
  %vm_bo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.addr.0, i32 0, i32 7
  %6 = ptrtoint ptr %vm_bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %bo_base.073 = load ptr, ptr %vm_bo, align 4
  %tobool3.not74 = icmp eq ptr %bo_base.073, null
  br i1 %tobool3.not74, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.addr.0, i32 0, i32 4, i32 0, i32 9
  %type = getelementptr inbounds %struct.amdgpu_bo, ptr %bo.addr.0, i32 0, i32 4, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %bo_base.075 = phi ptr [ %bo_base.073, %for.body.lr.ph ], [ %bo_base.0, %cleanup.for.body_crit_edge ]
  %7 = ptrtoint ptr %bo_base.075 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bo_base.075, align 4
  br i1 %evicted, label %land.lhs.true6, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true6:                                   ; preds = %for.body
  %9 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resv, align 8
  %bo7 = getelementptr inbounds %struct.amdgpu_vm, ptr %8, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %bo7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo7, align 4
  %resv10 = getelementptr inbounds %struct.amdgpu_bo, ptr %12, i32 0, i32 4, i32 0, i32 9
  %13 = ptrtoint ptr %resv10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv10, align 8
  %cmp11 = icmp eq ptr %10, %14
  br i1 %cmp11, label %if.then12, label %land.lhs.true6.if.end13_crit_edge

land.lhs.true6.if.end13_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true6
  %bo2.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 1
  %15 = ptrtoint ptr %bo2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo2.i, align 4
  %moved.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 4
  %17 = ptrtoint ptr %moved.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %moved.i, align 4
  %type.i50 = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %type.i50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i51 = icmp eq i32 %19, 1
  %vm_status.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3
  %evicted.i = getelementptr inbounds %struct.amdgpu_vm, ptr %8, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i) #14
  br i1 %cmp.i51, label %if.then.i52, label %if.else.i

if.then.i52:                                      ; preds = %if.then12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i52.__list_del_entry.exit.i.i_crit_edge

if.then.i52.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vm_status.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i52.__list_del_entry.exit.i.i_crit_edge
  %26 = ptrtoint ptr %evicted.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %evicted.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i, ptr noundef %evicted.i, ptr noundef %27) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.cleanup_crit_edge

__list_del_entry.exit.i.i.cleanup_crit_edge:      ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  br label %if.end.sink.split.i

if.else.i:                                        ; preds = %if.then12
  br i1 %call.i.i.i, label %if.end.i.i13.i, label %if.else.i.__list_del_entry.exit.i15.i_crit_edge

if.else.i.__list_del_entry.exit.i15.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i15.i

if.end.i.i13.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i11.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i11.i, align 4
  %30 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vm_status.i, align 4
  %prev1.i.i.i12.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i12.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__list_del_entry.exit.i15.i

__list_del_entry.exit.i15.i:                      ; preds = %if.end.i.i13.i, %if.else.i.__list_del_entry.exit.i15.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.amdgpu_vm, ptr %8, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i, ptr noundef %35, ptr noundef %evicted.i) #14
  br i1 %call.i.i.i14.i, label %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge, label %__list_del_entry.exit.i15.i.cleanup_crit_edge

__list_del_entry.exit.i15.i.cleanup_crit_edge:    ; preds = %__list_del_entry.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge: ; preds = %__list_del_entry.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge, %if.end.i.i.i.i
  %prev.i2.i.sink.i = phi ptr [ %prev1.i.i2.i.i, %if.end.i.i.i.i ], [ %prev.i2.i.i, %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge ]
  %evicted.sink.i = phi ptr [ %27, %if.end.i.i.i.i ], [ %evicted.i, %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge ]
  %.sink18.i = phi ptr [ %evicted.i, %if.end.i.i.i.i ], [ %35, %__list_del_entry.exit.i15.i.if.end.sink.split.i_crit_edge ]
  %36 = ptrtoint ptr %prev.i2.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %vm_status.i, ptr %prev.i2.i.sink.i, align 4
  %37 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %evicted.sink.i, ptr %vm_status.i, align 4
  %prev3.i.i.i16.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.sink18.i, ptr %prev3.i.i.i16.i, align 4
  %39 = ptrtoint ptr %.sink18.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %vm_status.i, ptr %.sink18.i, align 4
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true6.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %moved = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 4
  %40 = ptrtoint ptr %moved to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %moved, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool14.not = icmp eq i8 %41, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %42 = ptrtoint ptr %moved to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %moved, align 4
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp19 = icmp eq i32 %44, 1
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @amdgpu_vm_bo_relocated(ptr noundef nonnull %bo_base.075)
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %45 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resv, align 8
  %bo25 = getelementptr inbounds %struct.amdgpu_vm, ptr %8, i32 0, i32 12, i32 1
  %47 = ptrtoint ptr %bo25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bo25, align 4
  %resv28 = getelementptr inbounds %struct.amdgpu_bo, ptr %48, i32 0, i32 4, i32 0, i32 9
  %49 = ptrtoint ptr %resv28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %resv28, align 8
  %cmp29 = icmp eq ptr %46, %50
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else
  %vm_status.i53 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3
  %moved.i54 = getelementptr inbounds %struct.amdgpu_vm, ptr %8, i32 0, i32 6
  %call.i.i.i55 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i53) #14
  br i1 %call.i.i.i55, label %if.end.i.i.i58, label %if.then30.__list_del_entry.exit.i.i60_crit_edge

if.then30.__list_del_entry.exit.i.i60_crit_edge:  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i60

if.end.i.i.i58:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i56 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %prev.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i56, align 4
  %53 = ptrtoint ptr %vm_status.i53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vm_status.i53, align 4
  %prev1.i.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i57, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %__list_del_entry.exit.i.i60

__list_del_entry.exit.i.i60:                      ; preds = %if.end.i.i.i58, %if.then30.__list_del_entry.exit.i.i60_crit_edge
  %57 = ptrtoint ptr %moved.i54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %moved.i54, align 4
  %call.i.i.i.i59 = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i53, ptr noundef %moved.i54, ptr noundef %58) #14
  br i1 %call.i.i.i.i59, label %if.end.i.i.i.i62, label %__list_del_entry.exit.i.i60.cleanup_crit_edge

__list_del_entry.exit.i.i60.cleanup_crit_edge:    ; preds = %__list_del_entry.exit.i.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.i.i62:                                 ; preds = %__list_del_entry.exit.i.i60
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i61 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i2.i.i61 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %vm_status.i53, ptr %prev1.i.i2.i.i61, align 4
  %60 = ptrtoint ptr %vm_status.i53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %vm_status.i53, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %moved.i54, ptr %prev3.i.i.i.i, align 4
  %62 = ptrtoint ptr %moved.i54 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %vm_status.i53, ptr %moved.i54, align 4
  br label %cleanup

if.else31:                                        ; preds = %if.else
  %invalidated_lock.i = getelementptr inbounds %struct.amdgpu_vm, ptr %8, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %invalidated_lock.i) #14
  %vm_status.i63 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3
  %63 = ptrtoint ptr %bo_base.075 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bo_base.075, align 4
  %invalidated.i = getelementptr inbounds %struct.amdgpu_vm, ptr %64, i32 0, i32 8
  %call.i.i.i64 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i63) #14
  br i1 %call.i.i.i64, label %if.end.i.i.i67, label %if.else31.__list_del_entry.exit.i.i69_crit_edge

if.else31.__list_del_entry.exit.i.i69_crit_edge:  ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i69

if.end.i.i.i67:                                   ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i65 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %prev.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i65, align 4
  %67 = ptrtoint ptr %vm_status.i63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vm_status.i63, align 4
  %prev1.i.i.i.i66 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i.i66, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %__list_del_entry.exit.i.i69

__list_del_entry.exit.i.i69:                      ; preds = %if.end.i.i.i67, %if.else31.__list_del_entry.exit.i.i69_crit_edge
  %71 = ptrtoint ptr %invalidated.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %invalidated.i, align 4
  %call.i.i.i.i68 = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status.i63, ptr noundef %invalidated.i, ptr noundef %72) #14
  br i1 %call.i.i.i.i68, label %if.end.i.i.i.i72, label %__list_del_entry.exit.i.i69.amdgpu_vm_bo_invalidated.exit_crit_edge

__list_del_entry.exit.i.i69.amdgpu_vm_bo_invalidated.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_bo_invalidated.exit

if.end.i.i.i.i72:                                 ; preds = %__list_del_entry.exit.i.i69
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i70 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i2.i.i70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %vm_status.i63, ptr %prev1.i.i2.i.i70, align 4
  %74 = ptrtoint ptr %vm_status.i63 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %vm_status.i63, align 4
  %prev3.i.i.i.i71 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %invalidated.i, ptr %prev3.i.i.i.i71, align 4
  %76 = ptrtoint ptr %invalidated.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %vm_status.i63, ptr %invalidated.i, align 4
  br label %amdgpu_vm_bo_invalidated.exit

amdgpu_vm_bo_invalidated.exit:                    ; preds = %if.end.i.i.i.i72, %__list_del_entry.exit.i.i69.amdgpu_vm_bo_invalidated.exit_crit_edge
  %77 = ptrtoint ptr %bo_base.075 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bo_base.075, align 4
  %invalidated_lock3.i = getelementptr inbounds %struct.amdgpu_vm, ptr %78, i32 0, i32 9
  tail call void @_raw_spin_unlock(ptr noundef %invalidated_lock3.i) #14
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_vm_bo_invalidated.exit, %if.end.i.i.i.i62, %__list_del_entry.exit.i.i60.cleanup_crit_edge, %if.then20, %if.end13.cleanup_crit_edge, %if.end.sink.split.i, %__list_del_entry.exit.i15.i.cleanup_crit_edge, %__list_del_entry.exit.i.i.cleanup_crit_edge
  %next = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %bo_base.075, i32 0, i32 2
  %79 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %79)
  %bo_base.0 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %bo_base.0, null
  br i1 %tobool3.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_adjust_size(ptr nocapture noundef %adev, i32 noundef %min_vm_size, i32 noundef %fragment_size_default, i32 noundef %max_level, i32 noundef %max_bits) local_unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %max_bits, -30
  %shl = shl nuw i32 1, %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_size to i32))
  %0 = load i32, ptr @amdgpu_vm_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %shl)
  %cmp1 = icmp ugt i32 %0, %shl
  br i1 %cmp1, label %do.end, label %if.then.if.end160_crit_edge

if.then.if.end160_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %0, i32 noundef %shl) #18
  br label %if.end160

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si) #14
  %3 = call ptr @memset(ptr %si, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %si) #14
  %mem_unit = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 12
  %4 = ptrtoint ptr %mem_unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_unit, align 4
  %conv3 = zext i32 %5 to i64
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 2
  %6 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %totalram, align 4
  %conv = zext i32 %7 to i64
  %mul = mul nuw i64 %conv3, %conv
  %sub4 = add nuw i64 %mul, 1073741823
  %shr = lshr i64 %sub4, 30
  %conv5 = trunc i64 %shr to i32
  %mul6 = mul i32 %conv5, 3
  %8 = call i32 @llvm.umax.i32(i32 %mul6, i32 %min_vm_size)
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 %shl)
  %sub.i385 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i385)
  %tobool.not.i.i.i = icmp eq i32 %sub.i385, 0
  %10 = call i32 @llvm.ctlz.i32(i32 %sub.i385, i1 true) #14, !range !144
  %sub.i.i.i = sub nuw nsw i32 32, %10
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si) #14
  br label %if.end160

if.end160:                                        ; preds = %if.else, %do.end, %if.then.if.end160_crit_edge
  %vm_size.0 = phi i32 [ %shl, %do.end ], [ %0, %if.then.if.end160_crit_edge ], [ %shl.i, %if.else ]
  %conv161 = zext i32 %vm_size.0 to i64
  %shl162 = shl nuw nsw i64 %conv161, 18
  %max_pfn = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %11 = ptrtoint ptr %max_pfn to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %shl162, ptr %max_pfn, align 8
  %conv204 = trunc i64 %shl162 to i32
  %sub.i388 = add i32 %conv204, -1
  %12 = call i32 @llvm.ctlz.i32(i32 %sub.i388, i1 true) #14, !range !144
  %sub.i.i.i389 = sub nuw nsw i32 32, %12
  %cond207 = shl nuw i32 1, %sub.i.i.i389
  %conv208 = zext i32 %cond207 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_block_size to i32))
  %13 = load i32, ptr @amdgpu_vm_block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp209.not = icmp eq i32 %13, -1
  %sub212 = add i32 %13, -9
  %narrow = select i1 %cmp209.not, i32 0, i32 %sub212
  %shr213 = zext i32 %narrow to i64
  %tmp.0 = lshr i64 %conv208, %shr213
  %conv1.i = trunc i64 %tmp.0 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %14 = call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #14, !range !144
  %15 = trunc i32 %14 to i8
  %16 = sub nuw nsw i8 39, %15
  %.op = udiv i8 %16, 9
  %17 = zext i8 %.op to i32
  %.op396 = add nsw i32 %17, -1
  %sub219 = select i1 %tobool.not.i5.i, i32 -1, i32 %.op396
  %18 = call i32 @llvm.umin.i32(i32 %sub219, i32 %max_level)
  %num_level = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 6
  %19 = ptrtoint ptr %num_level to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_level, align 8
  %20 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %18, label %do.end241 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb233
    i32 1, label %sw.bb236
  ]

sw.bb:                                            ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  %root_level = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %21 = ptrtoint ptr %root_level to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %root_level, align 4
  br label %sw.epilog

sw.bb233:                                         ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  %root_level235 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %22 = ptrtoint ptr %root_level235 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %root_level235, align 4
  br label %sw.epilog

sw.bb236:                                         ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  %root_level238 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %23 = ptrtoint ptr %root_level238 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %root_level238, align 4
  br label %sw.epilog

do.end241:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.9) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end241, %sw.bb236, %sw.bb233, %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_block_size to i32))
  %26 = load i32, ptr @amdgpu_vm_block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp243.not = icmp eq i32 %26, -1
  br i1 %cmp243.not, label %if.else259, label %if.then245

if.then245:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %sub246 = add i32 %max_bits, -12
  %27 = ptrtoint ptr %num_level to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_level, align 8
  %mul249.neg = mul i32 %28, -9
  %sub250 = add i32 %sub246, %mul249.neg
  %29 = call i32 @llvm.umin.i32(i32 %26, i32 %sub250)
  br label %if.end272

if.else259:                                       ; preds = %sw.epilog
  %30 = ptrtoint ptr %num_level to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp262 = icmp ugt i32 %31, 1
  br i1 %cmp262, label %if.else259.if.end272_crit_edge, label %cond.false2.i

if.else259.if.end272_crit_edge:                   ; preds = %if.else259
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end272

cond.false2.i:                                    ; preds = %if.else259
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub219)
  %tobool.not.i.i.i392 = icmp sgt i32 %sub219, -1
  br i1 %tobool.not.i.i.i392, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = call i32 @llvm.ctlz.i32(i32 %sub219, i1 true) #14, !range !144
  %add.i.i.i = sub nuw nsw i32 64, %32
  br label %amdgpu_vm_get_block_size.exit

if.end.i.i.i:                                     ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub219)
  %tobool.not.i5.i.i.i = icmp eq i32 %sub219, 0
  %33 = call i32 @llvm.ctlz.i32(i32 %sub219, i1 true) #14, !range !144
  %sub.i6.i.i.i = sub nuw nsw i32 32, %33
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %amdgpu_vm_get_block_size.exit

amdgpu_vm_get_block_size.exit:                    ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub219)
  %cmp5.i = icmp ult i32 %sub219, 9
  %sub6.i = add nsw i32 %retval.0.i.i.i, 8
  %add7.i = add nsw i32 %retval.0.i.i.i, 20
  %div13.i = lshr i32 %add7.i, 1
  %retval.0.i393 = select i1 %cmp5.i, i32 %sub6.i, i32 %div13.i
  br label %if.end272

if.end272:                                        ; preds = %amdgpu_vm_get_block_size.exit, %if.else259.if.end272_crit_edge, %if.then245
  %.sink397 = phi i32 [ %retval.0.i393, %amdgpu_vm_get_block_size.exit ], [ %29, %if.then245 ], [ 9, %if.else259.if.end272_crit_edge ]
  %block_size266 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %34 = ptrtoint ptr %block_size266 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink397, ptr %block_size266, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fragment_size to i32))
  %35 = load i32, ptr @amdgpu_vm_fragment_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp273 = icmp eq i32 %35, -1
  %.sink = select i1 %cmp273, i32 %fragment_size_default, i32 %35
  %36 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %36, align 8
  %38 = ptrtoint ptr %num_level to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_level, align 8
  %add287 = add i32 %39, 1
  %block_size289 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %40 = ptrtoint ptr %block_size289 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %block_size289, align 4
  %call292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %vm_size.0, i32 noundef %add287, i32 noundef %41, i32 noundef %.sink) #18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_wait_idle(ptr nocapture noundef readonly %vm, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %2 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv, align 8
  %call = tail call i32 @dma_resv_wait_timeout(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %timeout) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %last_unlocked = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 16
  %4 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last_unlocked, align 8
  %call1 = tail call i32 @dma_fence_wait_timeout(ptr noundef %5, i1 noundef zeroext true, i32 noundef %call) #14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_init(ptr noundef %adev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  %root_bo = alloca ptr, align 4
  %root = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_bo) #14
  %0 = ptrtoint ptr %root_bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_bo, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root) #14
  %1 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %root, align 4, !annotation !142
  %2 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vm, align 8
  %.compoundliteral.sroa.2.0.va.sroa_idx = getelementptr inbounds i8, ptr %vm, i32 4
  %3 = ptrtoint ptr %.compoundliteral.sroa.2.0.va.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %.compoundliteral.sroa.2.0.va.sroa_idx, align 4
  %uglygep = getelementptr i8, ptr %vm, i32 616
  %4 = call ptr @memset(ptr %uglygep, i32 0, i32 12)
  %evicted = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 4
  %5 = ptrtoint ptr %evicted to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %evicted, ptr %evicted, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %evicted, ptr %prev.i, align 4
  %relocated = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 5
  %7 = ptrtoint ptr %relocated to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %relocated, ptr %relocated, align 4
  %prev.i166 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i166 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %relocated, ptr %prev.i166, align 4
  %moved = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 6
  %9 = ptrtoint ptr %moved to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %moved, ptr %moved, align 4
  %prev.i167 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i167 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %moved, ptr %prev.i167, align 4
  %idle = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 7
  %11 = ptrtoint ptr %idle to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %idle, ptr %idle, align 4
  %prev.i168 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i168 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %idle, ptr %prev.i168, align 4
  %invalidated = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 8
  %13 = ptrtoint ptr %invalidated to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %invalidated, ptr %invalidated, align 4
  %prev.i169 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %prev.i169 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %invalidated, ptr %prev.i169, align 4
  %invalidated_lock = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %invalidated_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @amdgpu_vm_init.__key, i16 noundef signext 3) #14
  %freed = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 10
  %15 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %freed, ptr %freed, align 4
  %prev.i170 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i170 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %freed, ptr %prev.i170, align 4
  %done = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 11
  %17 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %done, ptr %done, align 4
  %prev.i171 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %prev.i171 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %done, ptr %prev.i171, align 4
  %immediate = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 14
  %vm_pte_scheds = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 12
  %vm_pte_num_scheds = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 13
  %19 = ptrtoint ptr %vm_pte_num_scheds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_pte_num_scheds, align 4
  %call2 = tail call i32 @drm_sched_entity_init(ptr noundef %immediate, i32 noundef 1, ptr noundef %vm_pte_scheds, i32 noundef %20, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %delayed = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 15
  %21 = ptrtoint ptr %vm_pte_num_scheds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_pte_num_scheds, align 4
  %call8 = tail call i32 @drm_sched_entity_init(ptr noundef %delayed, i32 noundef 1, ptr noundef %vm_pte_scheds, i32 noundef %22, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.error_free_immediate_crit_edge

if.end.error_free_immediate_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_immediate

if.end11:                                         ; preds = %if.end
  %pte_support_ats = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 21
  %23 = ptrtoint ptr %pte_support_ats to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %pte_support_ats, align 4
  %is_compute_context = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 29
  %24 = ptrtoint ptr %is_compute_context to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_compute_context, align 1
  %vm_update_mode = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 17
  %25 = ptrtoint ptr %vm_update_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_update_mode, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %use_cpu_for_update = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 19
  %27 = trunc i32 %and to i8
  %28 = ptrtoint ptr %use_cpu_for_update to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %use_cpu_for_update, align 4
  %cond = select i1 %tobool13.not, ptr @.str.17, ptr @.str.16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond) #14
  %29 = ptrtoint ptr %use_cpu_for_update to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %use_cpu_for_update, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool18.not = icmp eq i8 %30, 0
  br i1 %tobool18.not, label %if.end11.if.else_crit_edge, label %land.rhs

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.rhs:                                         ; preds = %if.end11
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %31 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %real_vram_size.i, align 8
  %visible_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 3
  %33 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp.i = icmp ult i64 %32, %34
  br i1 %cmp.i, label %do.end.i, label %land.rhs.amdgpu_gmc_vram_full_visible.exit_crit_edge, !prof !136

land.rhs.amdgpu_gmc_vram_full_visible.exit_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_gmc_vram_full_visible.exit

do.end.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 286, i32 noundef 9, ptr noundef null) #14
  br label %amdgpu_gmc_vram_full_visible.exit

amdgpu_gmc_vram_full_visible.exit:                ; preds = %do.end.i, %land.rhs.amdgpu_gmc_vram_full_visible.exit_crit_edge
  %35 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %real_vram_size.i, align 8
  %37 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp21.i.not = icmp eq i64 %36, %38
  br i1 %cmp21.i.not, label %amdgpu_gmc_vram_full_visible.exit.if.end57_crit_edge, label %land.rhs25

amdgpu_gmc_vram_full_visible.exit.if.end57_crit_edge: ; preds = %amdgpu_gmc_vram_full_visible.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

land.rhs25:                                       ; preds = %amdgpu_gmc_vram_full_visible.exit
  %.b164 = load i1, ptr @amdgpu_vm_init.__already_done, align 1
  br i1 %.b164, label %land.rhs25.if.end57_crit_edge, label %if.then32, !prof !133

land.rhs25.if.end57_crit_edge:                    ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then32:                                        ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @amdgpu_vm_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2956, i32 noundef 9, ptr noundef nonnull @.str.18) #14
  br label %if.end57

if.end57:                                         ; preds = %if.then32, %land.rhs25.if.end57_crit_edge, %amdgpu_gmc_vram_full_visible.exit.if.end57_crit_edge
  %39 = ptrtoint ptr %use_cpu_for_update to i32
  call void @__asan_load1_noabort(i32 %39)
  %.pr = load i8, ptr %use_cpu_for_update, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool66.not = icmp eq i8 %.pr, 0
  br i1 %tobool66.not, label %if.end57.if.else_crit_edge, label %if.end57.if.end69_crit_edge

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end57.if.else_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %if.end57.if.else_crit_edge, %if.end11.if.else_crit_edge
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.end57.if.end69_crit_edge
  %amdgpu_vm_sdma_funcs.sink = phi ptr [ @amdgpu_vm_sdma_funcs, %if.else ], [ @amdgpu_vm_cpu_funcs, %if.end57.if.end69_crit_edge ]
  %update_funcs68 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 20
  %40 = ptrtoint ptr %update_funcs68 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %amdgpu_vm_sdma_funcs.sink, ptr %update_funcs68, align 8
  %last_update = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 13
  %41 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %last_update, align 8
  %call70 = tail call ptr @dma_fence_get_stub() #14
  %last_unlocked = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 16
  %42 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call70, ptr %last_unlocked, align 8
  %eviction_lock = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %eviction_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @amdgpu_vm_init.__key.19) #14
  %evicting = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 2
  %43 = ptrtoint ptr %evicting to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %evicting, align 4
  %root_level = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %44 = ptrtoint ptr %root_level to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %root_level, align 4
  %call75 = call fastcc i32 @amdgpu_vm_pt_create(ptr noundef %adev, ptr noundef %vm, i32 noundef %45, i1 noundef zeroext false, ptr noundef nonnull %root)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end69.error_free_delayed_crit_edge

if.end69.error_free_delayed_crit_edge:            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_delayed

if.end78:                                         ; preds = %if.end69
  %46 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %root, align 4
  %48 = ptrtoint ptr %root_bo to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %root_bo, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4, i32 0, i32 9
  %51 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = call i32 @ww_mutex_lock(ptr noundef %52, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %53 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %retval.1.i.i, label %do.end.i172 [
    i32 0, label %if.end82
    i32 -512, label %if.end78.error_free_root_crit_edge
  ], !prof !157

if.end78.error_free_root_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_root

do.end.i172:                                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 -17736
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.46, ptr noundef %47) #18
  br label %error_free_root

if.end82:                                         ; preds = %if.end78
  %56 = ptrtoint ptr %root_bo to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %root_bo, align 4
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %57, i32 0, i32 4, i32 0, i32 9
  %58 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resv, align 8
  %call83 = call i32 @dma_resv_reserve_shared(ptr noundef %59, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.error_unreserve_crit_edge

if.end82.error_unreserve_crit_edge:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unreserve

if.end86:                                         ; preds = %if.end82
  %root87 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12
  %60 = ptrtoint ptr %root_bo to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %root_bo, align 4
  call fastcc void @amdgpu_vm_bo_base_init(ptr noundef %root87, ptr noundef %vm, ptr noundef %61)
  %62 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %root, align 4
  %call88 = call fastcc i32 @amdgpu_vm_clear_bo(ptr noundef %adev, ptr noundef %vm, ptr noundef %63, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end86.error_unreserve_crit_edge

if.end86.error_unreserve_crit_edge:               ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unreserve

if.end91:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  %bo93 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %64 = ptrtoint ptr %bo93 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bo93, align 4
  call fastcc void @amdgpu_bo_unreserve(ptr noundef %65)
  %faults = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 22
  %66 = ptrtoint ptr %faults to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %faults, align 4
  %out = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 22, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 22, i32 0, i32 0, i32 2
  %68 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 127, ptr %mask, align 4
  %esize = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 22, i32 0, i32 0, i32 3
  %69 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 8, ptr %esize, align 4
  %buf = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 22, i32 1
  %data = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 22, i32 0, i32 0, i32 4
  %70 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf, ptr %data, align 4
  br label %cleanup

error_unreserve:                                  ; preds = %if.end86.error_unreserve_crit_edge, %if.end82.error_unreserve_crit_edge
  %r.0 = phi i32 [ %call83, %if.end82.error_unreserve_crit_edge ], [ %call88, %if.end86.error_unreserve_crit_edge ]
  %bo97 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %71 = ptrtoint ptr %bo97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bo97, align 4
  call fastcc void @amdgpu_bo_unreserve(ptr noundef %72)
  br label %error_free_root

error_free_root:                                  ; preds = %error_unreserve, %do.end.i172, %if.end78.error_free_root_crit_edge
  %r.1 = phi i32 [ %retval.1.i.i, %do.end.i172 ], [ %r.0, %error_unreserve ], [ %retval.1.i.i, %if.end78.error_free_root_crit_edge ]
  %73 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %root, align 4
  %shadow = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %74, i32 0, i32 1
  call void @amdgpu_bo_unref(ptr noundef %shadow) #14
  call void @amdgpu_bo_unref(ptr noundef nonnull %root_bo) #14
  %bo99 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %75 = ptrtoint ptr %bo99 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %bo99, align 4
  br label %error_free_delayed

error_free_delayed:                               ; preds = %error_free_root, %if.end69.error_free_delayed_crit_edge
  %r.2 = phi i32 [ %call75, %if.end69.error_free_delayed_crit_edge ], [ %r.1, %error_free_root ]
  %76 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %last_unlocked, align 8
  %tobool.not.i = icmp eq ptr %77, null
  br i1 %tobool.not.i, label %error_free_delayed.dma_fence_put.exit_crit_edge, label %if.then.i

error_free_delayed.dma_fence_put.exit_crit_edge:  ; preds = %error_free_delayed
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %error_free_delayed
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %77, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %78 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !133

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  call void @dma_fence_release(ptr noundef %refcount.i) #14
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %error_free_delayed.dma_fence_put.exit_crit_edge
  call void @drm_sched_entity_destroy(ptr noundef %delayed) #14
  br label %error_free_immediate

error_free_immediate:                             ; preds = %dma_fence_put.exit, %if.end.error_free_immediate_crit_edge
  %r.3 = phi i32 [ %call8, %if.end.error_free_immediate_crit_edge ], [ %r.2, %dma_fence_put.exit ]
  call void @drm_sched_entity_destroy(ptr noundef %immediate) #14
  br label %cleanup

cleanup:                                          ; preds = %error_free_immediate, %if.end91, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.3, %error_free_immediate ], [ 0, %if.end91 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_bo) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_vm_pt_create(ptr noundef %adev, ptr nocapture noundef readonly %vm, i32 noundef %level, i1 noundef zeroext %immediate, ptr noundef %vmbo) unnamed_addr #0 align 64 {
entry:
  %bp = alloca %struct.amdgpu_bo_param, align 8
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %immediate to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #14
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo, align 4, !annotation !142
  %1 = getelementptr inbounds i8, ptr %bp, i32 16
  %2 = call ptr @memset(ptr %1, i32 0, i32 32)
  %root_level.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %3 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %root_level.i.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %4, label %sw.default.i.i.i [
    i32 0, label %entry.sw.bb.i.i.i_crit_edge
    i32 1, label %entry.sw.bb.i.i.i_crit_edge144
    i32 2, label %entry.sw.bb.i.i.i_crit_edge145
    i32 3, label %entry.amdgpu_vm_level_shift.exit.i.i_crit_edge
  ]

entry.amdgpu_vm_level_shift.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit.i.i

entry.sw.bb.i.i.i_crit_edge145:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

entry.sw.bb.i.i.i_crit_edge144:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

entry.sw.bb.i.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

sw.bb.i.i.i:                                      ; preds = %entry.sw.bb.i.i.i_crit_edge, %entry.sw.bb.i.i.i_crit_edge144, %entry.sw.bb.i.i.i_crit_edge145
  %sub.i.i.i = sub nuw nsw i32 2, %4
  %mul.i.i.i = mul nuw nsw i32 %sub.i.i.i, 9
  %block_size.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %6 = ptrtoint ptr %block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_size.i.i.i, align 4
  %add.i.i.i = add i32 %7, %mul.i.i.i
  br label %amdgpu_vm_level_shift.exit.i.i

sw.default.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit.i.i

amdgpu_vm_level_shift.exit.i.i:                   ; preds = %sw.default.i.i.i, %sw.bb.i.i.i, %entry.amdgpu_vm_level_shift.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ -1, %sw.default.i.i.i ], [ %add.i.i.i, %sw.bb.i.i.i ], [ 0, %entry.amdgpu_vm_level_shift.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %level)
  %cmp.i.i = icmp eq i32 %4, %level
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %amdgpu_vm_level_shift.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %max_pfn.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %8 = ptrtoint ptr %max_pfn.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max_pfn.i.i, align 8
  %sub.i.i = add i64 %9, -1
  %sh_prom.i.i = zext i32 %retval.0.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %sub4.i.i = xor i64 %notmask.i.i, -1
  %or.i.i = or i64 %sub.i.i, %sub4.i.i
  %add.i.i = add i64 %or.i.i, 1
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %amdgpu_vm_bo_size.exit

if.else.i.i:                                      ; preds = %amdgpu_vm_level_shift.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %level)
  %cmp6.not.i.i = icmp eq i32 %level, 3
  br i1 %cmp6.not.i.i, label %if.else9.i.i, label %if.else.i.i.amdgpu_vm_bo_size.exit_crit_edge

if.else.i.i.amdgpu_vm_bo_size.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_bo_size.exit

if.else9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %block_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %10 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_size.i.i, align 4
  %shl11.i.i = shl nuw i32 1, %11
  br label %amdgpu_vm_bo_size.exit

amdgpu_vm_bo_size.exit:                           ; preds = %if.else9.i.i, %if.else.i.i.amdgpu_vm_bo_size.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %shl11.i.i, %if.else9.i.i ], [ 512, %if.else.i.i.amdgpu_vm_bo_size.exit_crit_edge ]
  %mul.i = shl i32 %retval.0.i.i, 3
  %add.i = add i32 %mul.i, 4095
  %and.i = and i32 %add.i, -4096
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %bp, align 8
  %byte_align = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 1
  %13 = ptrtoint ptr %byte_align to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4096, ptr %byte_align, align 4
  %domain = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 3
  %call2 = tail call i32 @amdgpu_bo_get_preferred_domain(ptr noundef %adev, i32 noundef 4) #14
  %14 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2, ptr %domain, align 4
  %flags = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 5
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 36, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %level)
  %cmp = icmp slt i32 %level, 3
  br i1 %cmp, label %if.then, label %amdgpu_vm_bo_size.exit.if.end_crit_edge

amdgpu_vm_bo_size.exit.if.end_crit_edge:          ; preds = %amdgpu_vm_bo_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %amdgpu_vm_bo_size.exit
  %16 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %root_level.i.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %17, label %sw.default.i.i [
    i32 0, label %if.then.sw.bb.i.i_crit_edge
    i32 1, label %if.then.sw.bb.i.i_crit_edge146
    i32 2, label %if.then.sw.bb.i.i_crit_edge147
    i32 3, label %if.then.amdgpu_vm_level_shift.exit.i_crit_edge
  ]

if.then.amdgpu_vm_level_shift.exit.i_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit.i

if.then.sw.bb.i.i_crit_edge147:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.then.sw.bb.i.i_crit_edge146:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.then.sw.bb.i.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.then.sw.bb.i.i_crit_edge, %if.then.sw.bb.i.i_crit_edge146, %if.then.sw.bb.i.i_crit_edge147
  %sub.i.i108 = sub nuw nsw i32 2, %17
  %mul.i.i = mul nuw nsw i32 %sub.i.i108, 9
  %block_size.i.i109 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %19 = ptrtoint ptr %block_size.i.i109 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_size.i.i109, align 4
  %add.i.i110 = add i32 %20, %mul.i.i
  br label %amdgpu_vm_level_shift.exit.i

sw.default.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit.i

amdgpu_vm_level_shift.exit.i:                     ; preds = %sw.default.i.i, %sw.bb.i.i, %if.then.amdgpu_vm_level_shift.exit.i_crit_edge
  %retval.0.i.i111 = phi i32 [ -1, %sw.default.i.i ], [ %add.i.i110, %sw.bb.i.i ], [ 0, %if.then.amdgpu_vm_level_shift.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %level)
  %cmp.i = icmp eq i32 %17, %level
  br i1 %cmp.i, label %if.then.i, label %amdgpu_vm_level_shift.exit.i.if.end_crit_edge

amdgpu_vm_level_shift.exit.i.if.end_crit_edge:    ; preds = %amdgpu_vm_level_shift.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %amdgpu_vm_level_shift.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %21 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %max_pfn.i, align 8
  %sub.i = add i64 %22, -1
  %sh_prom.i = zext i32 %retval.0.i.i111 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub4.i = xor i64 %notmask.i, -1
  %or.i = or i64 %sub.i, %sub4.i
  %add.i112 = add i64 %or.i, 1
  %shr.i = lshr i64 %add.i112, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end

if.end:                                           ; preds = %if.then.i, %amdgpu_vm_level_shift.exit.i.if.end_crit_edge, %amdgpu_vm_bo_size.exit.if.end_crit_edge
  %num_entries.0 = phi i32 [ 0, %amdgpu_vm_bo_size.exit.if.end_crit_edge ], [ %conv.i, %if.then.i ], [ 512, %amdgpu_vm_level_shift.exit.i.if.end_crit_edge ]
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_entries.0, i32 24) #14
  %24 = extractvalue { i32, i1 } %23, 1
  %25 = extractvalue { i32, i1 } %23, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %25, i32 584) #14
  %retval.0.i113 = select i1 %24, i32 -1, i32 %spec.select.i
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %26 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i113, ptr %bo_ptr_size, align 8
  %use_cpu_for_update = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 19
  %27 = ptrtoint ptr %use_cpu_for_update to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %use_cpu_for_update, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 37, ptr %flags, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %type = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 6
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %type, align 8
  %no_wait_gpu = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 7
  %31 = ptrtoint ptr %no_wait_gpu to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %no_wait_gpu, align 4
  %bo11 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %32 = ptrtoint ptr %bo11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bo11, align 4
  %tobool12.not = icmp eq ptr %33, null
  br i1 %tobool12.not, label %if.end8.if.end18_crit_edge, label %if.then13

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %resv16 = getelementptr inbounds %struct.amdgpu_bo, ptr %33, i32 0, i32 4, i32 0, i32 9
  %34 = ptrtoint ptr %resv16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resv16, align 8
  %resv17 = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 8
  %36 = ptrtoint ptr %resv17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %resv17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end8.if.end18_crit_edge
  %call19 = call i32 @amdgpu_bo_create_vm(ptr noundef %adev, ptr noundef nonnull %bp, ptr noundef %vmbo) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %37 = ptrtoint ptr %vmbo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vmbo, align 4
  %39 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %bo, align 4
  %is_compute_context = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 29
  %40 = ptrtoint ptr %is_compute_context to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_compute_context, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool24.not = icmp eq i8 %41, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %if.end22.if.then27_crit_edge

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end22
  %flags25 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %42 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags25, align 8
  %and = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end28, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end22.if.then27_crit_edge
  %shadow = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %38, i32 0, i32 1
  %44 = ptrtoint ptr %shadow to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %shadow, align 8
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %resv29 = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 8
  %45 = ptrtoint ptr %resv29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resv29, align 8
  %tobool30.not = icmp eq ptr %46, null
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end58_crit_edge

if.end28.if.end58_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then31:                                        ; preds = %if.end28
  %resv34 = getelementptr inbounds %struct.amdgpu_bo, ptr %38, i32 0, i32 4, i32 0, i32 9
  %47 = ptrtoint ptr %resv34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resv34, align 8
  %call.i = call i32 @ww_mutex_lock(ptr noundef %48, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.then31.if.end58thread-pre-split_crit_edge, label %do.end, !prof !133

if.then31.if.end58thread-pre-split_crit_edge:     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58thread-pre-split

do.end:                                           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 972, i32 noundef 9, ptr noundef null) #14
  br label %if.end58thread-pre-split

if.end58thread-pre-split:                         ; preds = %do.end, %if.then31.if.end58thread-pre-split_crit_edge
  %49 = ptrtoint ptr %resv29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load ptr, ptr %resv29, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.end58thread-pre-split, %if.end28.if.end58_crit_edge
  %50 = phi ptr [ %.pr, %if.end58thread-pre-split ], [ %46, %if.end28.if.end58_crit_edge ]
  %51 = call ptr @memset(ptr %bp, i32 0, i32 48)
  %52 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %root_level.i.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %53, label %sw.default.i.i.i120 [
    i32 0, label %if.end58.sw.bb.i.i.i119_crit_edge
    i32 1, label %if.end58.sw.bb.i.i.i119_crit_edge148
    i32 2, label %if.end58.sw.bb.i.i.i119_crit_edge149
    i32 3, label %if.end58.amdgpu_vm_level_shift.exit.i.i123_crit_edge
  ]

if.end58.amdgpu_vm_level_shift.exit.i.i123_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit.i.i123

if.end58.sw.bb.i.i.i119_crit_edge149:             ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i119

if.end58.sw.bb.i.i.i119_crit_edge148:             ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i119

if.end58.sw.bb.i.i.i119_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i119

sw.bb.i.i.i119:                                   ; preds = %if.end58.sw.bb.i.i.i119_crit_edge, %if.end58.sw.bb.i.i.i119_crit_edge148, %if.end58.sw.bb.i.i.i119_crit_edge149
  %sub.i.i.i115 = sub nuw nsw i32 2, %53
  %mul.i.i.i116 = mul nuw nsw i32 %sub.i.i.i115, 9
  %block_size.i.i.i117 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %55 = ptrtoint ptr %block_size.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %block_size.i.i.i117, align 4
  %add.i.i.i118 = add i32 %56, %mul.i.i.i116
  br label %amdgpu_vm_level_shift.exit.i.i123

sw.default.i.i.i120:                              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit.i.i123

amdgpu_vm_level_shift.exit.i.i123:                ; preds = %sw.default.i.i.i120, %sw.bb.i.i.i119, %if.end58.amdgpu_vm_level_shift.exit.i.i123_crit_edge
  %retval.0.i.i.i121 = phi i32 [ -1, %sw.default.i.i.i120 ], [ %add.i.i.i118, %sw.bb.i.i.i119 ], [ 0, %if.end58.amdgpu_vm_level_shift.exit.i.i123_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %level)
  %cmp.i.i122 = icmp eq i32 %53, %level
  br i1 %cmp.i.i122, label %if.then.i.i133, label %if.else.i.i135

if.then.i.i133:                                   ; preds = %amdgpu_vm_level_shift.exit.i.i123
  call void @__sanitizer_cov_trace_pc() #16
  %max_pfn.i.i124 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %57 = ptrtoint ptr %max_pfn.i.i124 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %max_pfn.i.i124, align 8
  %sub.i.i125 = add i64 %58, -1
  %sh_prom.i.i126 = zext i32 %retval.0.i.i.i121 to i64
  %notmask.i.i127 = shl nsw i64 -1, %sh_prom.i.i126
  %sub4.i.i128 = xor i64 %notmask.i.i127, -1
  %or.i.i129 = or i64 %sub.i.i125, %sub4.i.i128
  %add.i.i130 = add i64 %or.i.i129, 1
  %shr.i.i131 = lshr i64 %add.i.i130, %sh_prom.i.i126
  %conv.i.i132 = trunc i64 %shr.i.i131 to i32
  br label %amdgpu_vm_bo_size.exit143

if.else.i.i135:                                   ; preds = %amdgpu_vm_level_shift.exit.i.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %level)
  %cmp6.not.i.i134 = icmp eq i32 %level, 3
  br i1 %cmp6.not.i.i134, label %if.else9.i.i138, label %if.else.i.i135.amdgpu_vm_bo_size.exit143_crit_edge

if.else.i.i135.amdgpu_vm_bo_size.exit143_crit_edge: ; preds = %if.else.i.i135
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_bo_size.exit143

if.else9.i.i138:                                  ; preds = %if.else.i.i135
  call void @__sanitizer_cov_trace_pc() #16
  %block_size.i.i136 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %59 = ptrtoint ptr %block_size.i.i136 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %block_size.i.i136, align 4
  %shl11.i.i137 = shl nuw i32 1, %60
  br label %amdgpu_vm_bo_size.exit143

amdgpu_vm_bo_size.exit143:                        ; preds = %if.else9.i.i138, %if.else.i.i135.amdgpu_vm_bo_size.exit143_crit_edge, %if.then.i.i133
  %retval.0.i.i139 = phi i32 [ %conv.i.i132, %if.then.i.i133 ], [ %shl11.i.i137, %if.else9.i.i138 ], [ 512, %if.else.i.i135.amdgpu_vm_bo_size.exit143_crit_edge ]
  %mul.i140 = shl i32 %retval.0.i.i139, 3
  %add.i141 = add i32 %mul.i140, 4095
  %and.i142 = and i32 %add.i141, -4096
  %61 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and.i142, ptr %bp, align 8
  %62 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %domain, align 4
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 4, ptr %flags, align 8
  %64 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type, align 8
  %65 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bo, align 4
  %resv67 = getelementptr inbounds %struct.amdgpu_bo, ptr %66, i32 0, i32 4, i32 0, i32 9
  %67 = ptrtoint ptr %resv67 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %resv67, align 8
  %69 = ptrtoint ptr %resv29 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %resv29, align 8
  %70 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 568, ptr %bo_ptr_size, align 8
  %71 = ptrtoint ptr %vmbo to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vmbo, align 4
  %shadow70 = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %72, i32 0, i32 1
  %call71 = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef nonnull %bp, ptr noundef %shadow70) #14
  %tobool72.not = icmp eq ptr %50, null
  br i1 %tobool72.not, label %if.then73, label %amdgpu_vm_bo_size.exit143.if.end77_crit_edge

amdgpu_vm_bo_size.exit143.if.end77_crit_edge:     ; preds = %amdgpu_vm_bo_size.exit143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

if.then73:                                        ; preds = %amdgpu_vm_bo_size.exit143
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bo, align 4
  %resv76 = getelementptr inbounds %struct.amdgpu_bo, ptr %74, i32 0, i32 4, i32 0, i32 9
  %75 = ptrtoint ptr %resv76 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %resv76, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %76) #14
  call void @ww_mutex_unlock(ptr noundef %76) #14
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %amdgpu_vm_bo_size.exit143.if.end77_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool78.not = icmp eq i32 %call71, 0
  br i1 %tobool78.not, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo) #14
  br label %cleanup

if.end80:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bo, align 4
  %call81 = call ptr @amdgpu_bo_ref(ptr noundef %78) #14
  %79 = ptrtoint ptr %vmbo to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vmbo, align 4
  %shadow82 = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %shadow82 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %shadow82, align 8
  %parent = getelementptr inbounds %struct.amdgpu_bo, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call81, ptr %parent, align 4
  %84 = load ptr, ptr %vmbo, align 4
  call void @amdgpu_bo_add_to_shadow_list(ptr noundef %84) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then79, %if.then27, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then27 ], [ %call71, %if.then79 ], [ 0, %if.end80 ], [ %call19, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_vm_clear_bo(ptr noundef %adev, ptr noundef %vm, ptr noundef %vmbo, i1 noundef zeroext %immediate) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %params = alloca %struct.amdgpu_vm_update_params, align 4
  %idx = alloca i32, align 4
  %value = alloca i64, align 8
  %flags = alloca i64, align 8
  %value76 = alloca i64, align 8
  %flags77 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %immediate to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #14
  %0 = call ptr @memcpy(ptr %ctx, ptr @__const.amdgpu_vm_clear_bo.ctx, i32 24)
  %root_level = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %1 = ptrtoint ptr %root_level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %root_level, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %params) #14
  %3 = call ptr @memset(ptr %params, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #14
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %idx, align 4, !annotation !142
  %parent = getelementptr inbounds %struct.amdgpu_bo, ptr %vmbo, i32 0, i32 8
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.thread, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %ancestor.0 = phi ptr [ %8, %while.cond.while.cond_crit_edge ], [ %vmbo, %entry.while.cond_crit_edge ]
  %level.0.in = phi i32 [ %level.0, %while.cond.while.cond_crit_edge ], [ %2, %entry.while.cond_crit_edge ]
  %level.0 = add i32 %level.0.in, 1
  %parent3 = getelementptr inbounds %struct.amdgpu_bo, ptr %ancestor.0, i32 0, i32 8
  %7 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent3, align 4
  %parent4 = getelementptr inbounds %struct.amdgpu_bo, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent4, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end:                                           ; preds = %while.cond
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %vmbo, i32 0, i32 4, i32 0, i32 5
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 8
  %div173 = lshr i32 %12, 3
  %pte_support_ats = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 21
  %13 = ptrtoint ptr %pte_support_ats to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pte_support_ats, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.end.if.end24_crit_edge, label %if.else14

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end.thread:                                    ; preds = %entry
  %size.i189 = getelementptr inbounds %struct.amdgpu_bo, ptr %vmbo, i32 0, i32 4, i32 0, i32 5
  %15 = ptrtoint ptr %size.i189 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i189, align 8
  %div173190 = lshr i32 %16, 3
  %pte_support_ats191 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 21
  %17 = ptrtoint ptr %pte_support_ats191 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pte_support_ats191, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not192 = icmp eq i8 %18, 0
  br i1 %tobool8.not192, label %if.end.thread.if.end24_crit_edge, label %if.then12

if.end.thread.if.end24_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then12:                                        ; preds = %if.end.thread
  %19 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %2, label %sw.default.i.i [
    i32 0, label %if.then12.sw.bb.i.i_crit_edge
    i32 1, label %if.then12.sw.bb.i.i_crit_edge203
    i32 2, label %if.then12.sw.bb.i.i_crit_edge204
    i32 3, label %if.then12.amdgpu_vm_num_ats_entries.exit_crit_edge
  ]

if.then12.amdgpu_vm_num_ats_entries.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_num_ats_entries.exit

if.then12.sw.bb.i.i_crit_edge204:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.then12.sw.bb.i.i_crit_edge203:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

if.then12.sw.bb.i.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.then12.sw.bb.i.i_crit_edge, %if.then12.sw.bb.i.i_crit_edge203, %if.then12.sw.bb.i.i_crit_edge204
  %sub.i.i = sub nuw nsw i32 2, %2
  %mul.i.i = mul nuw nsw i32 %sub.i.i, 9
  %block_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %20 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %block_size.i.i, align 4
  %add.i.i = add nuw nsw i32 %mul.i.i, 12
  %phi.bo.i = add i32 %add.i.i, %21
  br label %amdgpu_vm_num_ats_entries.exit

sw.default.i.i:                                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_num_ats_entries.exit

amdgpu_vm_num_ats_entries.exit:                   ; preds = %sw.default.i.i, %sw.bb.i.i, %if.then12.amdgpu_vm_num_ats_entries.exit_crit_edge
  %retval.0.i.i = phi i32 [ 11, %sw.default.i.i ], [ %phi.bo.i, %sw.bb.i.i ], [ 12, %if.then12.amdgpu_vm_num_ats_entries.exit_crit_edge ]
  %sh_prom.i = zext i32 %retval.0.i.i to i64
  %shr.i = lshr i64 140737488355328, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %22 = tail call i32 @llvm.umin.i32(i32 %div173190, i32 %conv.i)
  %sub = sub nsw i32 %div173190, %22
  br label %if.end24

if.else14:                                        ; preds = %if.end
  %vm_bo = getelementptr inbounds %struct.amdgpu_bo, ptr %ancestor.0, i32 0, i32 7
  %23 = ptrtoint ptr %vm_bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vm_bo, align 8
  %25 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %2, label %sw.default.i.i181 [
    i32 0, label %if.else14.sw.bb.i.i180_crit_edge
    i32 1, label %if.else14.sw.bb.i.i180_crit_edge205
    i32 2, label %if.else14.sw.bb.i.i180_crit_edge206
    i32 3, label %if.else14.amdgpu_vm_num_ats_entries.exit186_crit_edge
  ]

if.else14.amdgpu_vm_num_ats_entries.exit186_crit_edge: ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_num_ats_entries.exit186

if.else14.sw.bb.i.i180_crit_edge206:              ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i180

if.else14.sw.bb.i.i180_crit_edge205:              ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i180

if.else14.sw.bb.i.i180_crit_edge:                 ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i180

sw.bb.i.i180:                                     ; preds = %if.else14.sw.bb.i.i180_crit_edge, %if.else14.sw.bb.i.i180_crit_edge205, %if.else14.sw.bb.i.i180_crit_edge206
  %sub.i.i175 = sub nuw nsw i32 2, %2
  %mul.i.i176 = mul nuw nsw i32 %sub.i.i175, 9
  %block_size.i.i177 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %26 = ptrtoint ptr %block_size.i.i177 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %block_size.i.i177, align 4
  %add.i.i178 = add nuw nsw i32 %mul.i.i176, 12
  %phi.bo.i179 = add i32 %add.i.i178, %27
  br label %amdgpu_vm_num_ats_entries.exit186

sw.default.i.i181:                                ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_num_ats_entries.exit186

amdgpu_vm_num_ats_entries.exit186:                ; preds = %sw.default.i.i181, %sw.bb.i.i180, %if.else14.amdgpu_vm_num_ats_entries.exit186_crit_edge
  %retval.0.i.i182 = phi i32 [ 11, %sw.default.i.i181 ], [ %phi.bo.i179, %sw.bb.i.i180 ], [ 12, %if.else14.amdgpu_vm_num_ats_entries.exit186_crit_edge ]
  %sh_prom.i183 = zext i32 %retval.0.i.i182 to i64
  %shr.i184 = lshr i64 140737488355328, %sh_prom.i183
  %conv.i185 = trunc i64 %shr.i184 to i32
  %bo16 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %28 = ptrtoint ptr %bo16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bo16, align 4
  %entries18 = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %29, i32 0, i32 3
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %entries18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %conv.i185)
  %cmp19.not = icmp ult i32 %sub.ptr.div, %conv.i185
  %div173. = select i1 %cmp19.not, i32 %div173, i32 0
  %.div173 = select i1 %cmp19.not, i32 0, i32 %div173
  br label %if.end24

if.end24:                                         ; preds = %amdgpu_vm_num_ats_entries.exit186, %amdgpu_vm_num_ats_entries.exit, %if.end.thread.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %level.1195 = phi i32 [ %level.0, %amdgpu_vm_num_ats_entries.exit186 ], [ %2, %amdgpu_vm_num_ats_entries.exit ], [ %level.0, %if.end.if.end24_crit_edge ], [ %2, %if.end.thread.if.end24_crit_edge ]
  %ats_entries.1 = phi i32 [ %div173., %amdgpu_vm_num_ats_entries.exit186 ], [ %22, %amdgpu_vm_num_ats_entries.exit ], [ 0, %if.end.if.end24_crit_edge ], [ 0, %if.end.thread.if.end24_crit_edge ]
  %entries.1 = phi i32 [ %.div173, %amdgpu_vm_num_ats_entries.exit186 ], [ %sub, %amdgpu_vm_num_ats_entries.exit ], [ %div173, %if.end.if.end24_crit_edge ], [ %div173190, %if.end.thread.if.end24_crit_edge ]
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %vmbo, i32 0, i32 4
  %placement = getelementptr inbounds %struct.amdgpu_bo, ptr %vmbo, i32 0, i32 3
  %call25 = call i32 @ttm_bo_validate(ptr noundef %tbo, ptr noundef %placement, ptr noundef nonnull %ctx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup105_crit_edge

if.end24.cleanup105_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup105

if.end28:                                         ; preds = %if.end24
  %shadow = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %vmbo, i32 0, i32 1
  %30 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shadow, align 8
  %tobool29.not = icmp eq ptr %31, null
  br i1 %tobool29.not, label %if.end28.if.end39_crit_edge, label %if.then30

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then30:                                        ; preds = %if.end28
  %tbo33 = getelementptr inbounds %struct.amdgpu_bo, ptr %31, i32 0, i32 4
  %placement34 = getelementptr inbounds %struct.amdgpu_bo, ptr %31, i32 0, i32 3
  %call35 = call i32 @ttm_bo_validate(ptr noundef %tbo33, ptr noundef %placement34, ptr noundef nonnull %ctx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then30.if.end39_crit_edge, label %if.then30.cleanup105_crit_edge

if.then30.cleanup105_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup105

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.end39:                                         ; preds = %if.then30.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call41 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #14
  br i1 %call41, label %if.end43, label %if.end39.cleanup105_crit_edge

if.end39.cleanup105_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup105

if.end43:                                         ; preds = %if.end39
  %update_funcs = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 20
  %32 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %update_funcs, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call44 = call i32 %35(ptr noundef %vmbo) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.exit_crit_edge

if.end43.exit_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end47:                                         ; preds = %if.end43
  %36 = getelementptr inbounds i8, ptr %params, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 20)
  %38 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %adev, ptr %params, align 4
  %vm49 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 1
  %39 = ptrtoint ptr %vm49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %vm, ptr %vm49, align 4
  %immediate51 = getelementptr inbounds %struct.amdgpu_vm_update_params, ptr %params, i32 0, i32 2
  %40 = ptrtoint ptr %immediate51 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool, ptr %immediate51, align 4
  %41 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %update_funcs, align 8
  %prepare = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prepare, align 4
  %call54 = call i32 %44(ptr noundef nonnull %params, ptr noundef null, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end47.exit_crit_edge

if.end47.exit_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ats_entries.1)
  %tobool58.not = icmp eq i32 %ats_entries.1, 0
  br i1 %tobool58.not, label %if.end57.if.end73_crit_edge, label %if.then59

if.end57.if.end73_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then59:                                        ; preds = %if.end57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #14
  %45 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags) #14
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 288230376151711862, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %level.1195)
  %cmp60.not = icmp eq i32 %level.1195, 3
  br i1 %cmp60.not, label %if.then59.if.end62_crit_edge, label %if.then61

if.then59.if.end62_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 306244774661193846, ptr %flags, align 8
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %48 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gmc_funcs, align 4
  %get_vm_pde = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %get_vm_pde to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_vm_pde, align 4
  call void %51(ptr noundef %adev, i32 noundef %level.1195, ptr noundef nonnull %value, ptr noundef nonnull %flags) #14
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then59.if.end62_crit_edge
  %52 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %update_funcs, align 8
  %update = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %update, align 4
  %56 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %value, align 8
  %conv = trunc i64 %57 to i32
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %flags, align 8
  %call64 = call i32 %55(ptr noundef nonnull %params, ptr noundef %vmbo, i64 noundef 0, i64 noundef 0, i32 noundef %ats_entries.1, i32 noundef %conv, i64 noundef %59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  %mul = shl nuw i32 %ats_entries.1, 3
  %conv68 = zext i32 %mul to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #14
  br i1 %tobool65.not, label %if.end62.if.end73_crit_edge, label %if.end62.exit_crit_edge

if.end62.exit_crit_edge:                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.end73:                                         ; preds = %if.end62.if.end73_crit_edge, %if.end57.if.end73_crit_edge
  %addr.1 = phi i64 [ %conv68, %if.end62.if.end73_crit_edge ], [ 0, %if.end57.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries.1)
  %tobool74.not = icmp eq i32 %entries.1, 0
  br i1 %tobool74.not, label %if.end73.if.end102_crit_edge, label %if.then75

if.end73.if.end102_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.then75:                                        ; preds = %if.end73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value76) #14
  %60 = ptrtoint ptr %value76 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %value76, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags77) #14
  %61 = ptrtoint ptr %flags77 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %flags77, align 8
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %62 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %63)
  %cmp78 = icmp ugt i32 %63, 18
  br i1 %cmp78, label %if.then80, label %if.then75.if.end90_crit_edge

if.then75.if.end90_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %level.1195)
  %cmp81.not = icmp eq i32 %level.1195, 3
  br i1 %cmp81.not, label %if.else88, label %if.then83

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %flags77 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 18014398509481984, ptr %flags77, align 8
  %gmc_funcs86 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %65 = ptrtoint ptr %gmc_funcs86 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gmc_funcs86, align 4
  %get_vm_pde87 = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %get_vm_pde87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %get_vm_pde87, align 4
  call void %68(ptr noundef %adev, i32 noundef %level.1195, ptr noundef nonnull %value76, ptr noundef nonnull %flags77) #14
  br label %if.end90

if.else88:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %flags77 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 16, ptr %flags77, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.then83, %if.then75.if.end90_crit_edge
  %70 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %update_funcs, align 8
  %update92 = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %update92 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %update92, align 4
  %74 = ptrtoint ptr %value76 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %value76, align 8
  %conv93 = trunc i64 %75 to i32
  %76 = ptrtoint ptr %flags77 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %flags77, align 8
  %call94 = call i32 %73(ptr noundef nonnull %params, ptr noundef %vmbo, i64 noundef %addr.1, i64 noundef 0, i32 noundef %entries.1, i32 noundef %conv93, i64 noundef %77) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags77) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value76) #14
  br i1 %tobool95.not, label %if.end90.if.end102_crit_edge, label %if.end90.exit_crit_edge

if.end90.exit_crit_edge:                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end90.if.end102_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.end102:                                        ; preds = %if.end90.if.end102_crit_edge, %if.end73.if.end102_crit_edge
  %78 = ptrtoint ptr %update_funcs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %update_funcs, align 8
  %commit = getelementptr inbounds %struct.amdgpu_vm_update_funcs, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %commit, align 4
  %call104 = call i32 %81(ptr noundef nonnull %params, ptr noundef null) #14
  br label %exit

exit:                                             ; preds = %if.end102, %if.end90.exit_crit_edge, %if.end62.exit_crit_edge, %if.end47.exit_crit_edge, %if.end43.exit_crit_edge
  %r.0 = phi i32 [ %call44, %if.end43.exit_crit_edge ], [ %call54, %if.end47.exit_crit_edge ], [ %call64, %if.end62.exit_crit_edge ], [ %call94, %if.end90.exit_crit_edge ], [ %call104, %if.end102 ]
  %82 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %83) #14
  br label %cleanup105

cleanup105:                                       ; preds = %exit, %if.end39.cleanup105_crit_edge, %if.then30.cleanup105_crit_edge, %if.end24.cleanup105_crit_edge
  %retval.2 = phi i32 [ %r.0, %exit ], [ %call35, %if.then30.cleanup105_crit_edge ], [ %call25, %if.end24.cleanup105_crit_edge ], [ -19, %if.end39.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %params) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #14
  ret i32 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_bo_unreserve(ptr noundef %bo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #14
  %resource.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %3, ptr noundef null) #14
  %4 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #14
  %resv.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #14
  tail call void @ww_mutex_unlock(ptr noundef %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_make_compute(ptr noundef %adev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cmp = icmp eq i32 %1, 22
  %frombool = zext i1 %cmp to i8
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %3, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %7, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %8 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end
    i32 -512, label %entry.cleanup_crit_edge
  ], !prof !157

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -17736
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.46, ptr noundef %3) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %root_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %11 = ptrtoint ptr %root_level.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %root_level.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %12, label %sw.default.i.i.i [
    i32 0, label %if.end.sw.bb.i.i.i_crit_edge
    i32 1, label %if.end.sw.bb.i.i.i_crit_edge132
    i32 2, label %if.end.sw.bb.i.i.i_crit_edge133
    i32 3, label %if.end.amdgpu_vm_num_entries.exit.i_crit_edge
  ]

if.end.amdgpu_vm_num_entries.exit.i_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_num_entries.exit.i

if.end.sw.bb.i.i.i_crit_edge133:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

if.end.sw.bb.i.i.i_crit_edge132:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

if.end.sw.bb.i.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i.i

sw.bb.i.i.i:                                      ; preds = %if.end.sw.bb.i.i.i_crit_edge, %if.end.sw.bb.i.i.i_crit_edge132, %if.end.sw.bb.i.i.i_crit_edge133
  %sub.i.i.i = sub nuw nsw i32 2, %12
  %mul.i.i.i = mul nuw nsw i32 %sub.i.i.i, 9
  %block_size.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %14 = ptrtoint ptr %block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_size.i.i.i, align 4
  %add.i.i.i = add i32 %15, %mul.i.i.i
  br label %amdgpu_vm_num_entries.exit.i

sw.default.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_num_entries.exit.i

amdgpu_vm_num_entries.exit.i:                     ; preds = %sw.default.i.i.i, %sw.bb.i.i.i, %if.end.amdgpu_vm_num_entries.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ -1, %sw.default.i.i.i ], [ %add.i.i.i, %sw.bb.i.i.i ], [ 0, %if.end.amdgpu_vm_num_entries.exit.i_crit_edge ]
  %max_pfn.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %16 = ptrtoint ptr %max_pfn.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %max_pfn.i.i, align 8
  %sub.i.i = add i64 %17, -1
  %sh_prom.i.i = zext i32 %retval.0.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %sub4.i.i = xor i64 %notmask.i.i, -1
  %or.i.i = or i64 %sub.i.i, %sub4.i.i
  %add.i.i = add i64 %or.i.i, 1
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp9.not.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp9.not.i, label %amdgpu_vm_num_entries.exit.i.if.end4_crit_edge, label %for.body.lr.ph.i

amdgpu_vm_num_entries.exit.i.if.end4_crit_edge:   ; preds = %amdgpu_vm_num_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %amdgpu_vm_num_entries.exit.i
  %18 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end4_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.end4_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %bo3.i = getelementptr %struct.amdgpu_bo_vm, ptr %19, i32 0, i32 3, i32 %i.010.i, i32 1
  %20 = ptrtoint ptr %bo3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bo3.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.unreserve_bo_crit_edge

for.body.i.unreserve_bo_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unreserve_bo

if.end4:                                          ; preds = %for.cond.i.if.end4_crit_edge, %amdgpu_vm_num_entries.exit.i.if.end4_crit_edge
  %pte_support_ats6 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 21
  %22 = ptrtoint ptr %pte_support_ats6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pte_support_ats6, align 4, !range !130
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %frombool)
  %cmp9.not = icmp eq i8 %23, %frombool
  br i1 %cmp9.not, label %if.end4.if.end21_crit_edge, label %if.then11

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then11:                                        ; preds = %if.end4
  %24 = ptrtoint ptr %pte_support_ats6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %pte_support_ats6, align 4
  %25 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bo, align 4
  %call17 = tail call fastcc i32 @amdgpu_vm_clear_bo(ptr noundef %adev, ptr noundef %vm, ptr noundef %26, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then11.if.end21_crit_edge, label %if.then11.unreserve_bo_crit_edge

if.then11.unreserve_bo_crit_edge:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %unreserve_bo

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.end21:                                         ; preds = %if.then11.if.end21_crit_edge, %if.end4.if.end21_crit_edge
  %vm_update_mode = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 17
  %27 = ptrtoint ptr %vm_update_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_update_mode, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %use_cpu_for_update = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 19
  %and.lobit = lshr exact i32 %and, 1
  %29 = trunc i32 %and.lobit to i8
  %30 = ptrtoint ptr %use_cpu_for_update to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %use_cpu_for_update, align 4
  %cond = select i1 %tobool22.not, ptr @.str.17, ptr @.str.16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond) #14
  %31 = ptrtoint ptr %use_cpu_for_update to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %use_cpu_for_update, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool29.not = icmp eq i8 %32, 0
  br i1 %tobool29.not, label %if.end21.if.end86_crit_edge, label %land.rhs

if.end21.if.end86_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

land.rhs:                                         ; preds = %if.end21
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %33 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %real_vram_size.i, align 8
  %visible_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 3
  %35 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %36)
  %cmp.i = icmp ult i64 %34, %36
  br i1 %cmp.i, label %do.end.i127, label %land.rhs.amdgpu_gmc_vram_full_visible.exit_crit_edge, !prof !136

land.rhs.amdgpu_gmc_vram_full_visible.exit_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_gmc_vram_full_visible.exit

do.end.i127:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 286, i32 noundef 9, ptr noundef null) #14
  br label %amdgpu_gmc_vram_full_visible.exit

amdgpu_gmc_vram_full_visible.exit:                ; preds = %do.end.i127, %land.rhs.amdgpu_gmc_vram_full_visible.exit_crit_edge
  %37 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %real_vram_size.i, align 8
  %39 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %visible_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %40)
  %cmp21.i.not = icmp eq i64 %38, %40
  br i1 %cmp21.i.not, label %amdgpu_gmc_vram_full_visible.exit.if.end68_crit_edge, label %land.rhs38

amdgpu_gmc_vram_full_visible.exit.if.end68_crit_edge: ; preds = %amdgpu_gmc_vram_full_visible.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

land.rhs38:                                       ; preds = %amdgpu_gmc_vram_full_visible.exit
  %.b125 = load i1, ptr @amdgpu_vm_make_compute.__already_done, align 1
  br i1 %.b125, label %land.rhs38.if.end68_crit_edge, label %if.then45, !prof !133

land.rhs38.if.end68_crit_edge:                    ; preds = %land.rhs38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then45:                                        ; preds = %land.rhs38
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @amdgpu_vm_make_compute.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3091, i32 noundef 9, ptr noundef nonnull @.str.18) #14
  br label %if.end68

if.end68:                                         ; preds = %if.then45, %land.rhs38.if.end68_crit_edge, %amdgpu_gmc_vram_full_visible.exit.if.end68_crit_edge
  %41 = ptrtoint ptr %use_cpu_for_update to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr = load i8, ptr %use_cpu_for_update, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool77.not = icmp eq i8 %.pr, 0
  br i1 %tobool77.not, label %if.end68.if.end86_crit_edge, label %if.then78

if.end68.if.end86_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then78:                                        ; preds = %if.end68
  %42 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bo, align 4
  %call81 = tail call i32 @amdgpu_bo_sync_wait(ptr noundef %43, ptr noundef null, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then78.if.end86_crit_edge, label %if.then78.unreserve_bo_crit_edge

if.then78.unreserve_bo_crit_edge:                 ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %unreserve_bo

if.then78.if.end86_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.end86:                                         ; preds = %if.then78.if.end86_crit_edge, %if.end68.if.end86_crit_edge, %if.end21.if.end86_crit_edge
  %amdgpu_vm_sdma_funcs.sink = phi ptr [ @amdgpu_vm_cpu_funcs, %if.then78.if.end86_crit_edge ], [ @amdgpu_vm_sdma_funcs, %if.end21.if.end86_crit_edge ], [ @amdgpu_vm_sdma_funcs, %if.end68.if.end86_crit_edge ]
  %update_funcs85 = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 20
  %44 = ptrtoint ptr %update_funcs85 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %amdgpu_vm_sdma_funcs.sink, ptr %update_funcs85, align 8
  %last_update = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 13
  %45 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %last_update, align 8
  %tobool.not.i128 = icmp eq ptr %46, null
  br i1 %tobool.not.i128, label %if.end86.dma_fence_put.exit_crit_edge, label %if.then.i

if.end86.dma_fence_put.exit_crit_edge:            ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end86
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %46, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !133

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @dma_fence_release(ptr noundef %refcount.i) #14
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end86.dma_fence_put.exit_crit_edge
  %48 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %last_update, align 8
  %is_compute_context = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 29
  %49 = ptrtoint ptr %is_compute_context to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %is_compute_context, align 1
  %50 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bo, align 4
  %shadow = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %51, i32 0, i32 1
  tail call void @amdgpu_bo_unref(ptr noundef %shadow) #14
  br label %unreserve_bo

unreserve_bo:                                     ; preds = %dma_fence_put.exit, %if.then78.unreserve_bo_crit_edge, %if.then11.unreserve_bo_crit_edge, %for.body.i.unreserve_bo_crit_edge
  %r.2 = phi i32 [ %call17, %if.then11.unreserve_bo_crit_edge ], [ %call81, %if.then78.unreserve_bo_crit_edge ], [ 0, %dma_fence_put.exit ], [ -22, %for.body.i.unreserve_bo_crit_edge ]
  %52 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %53, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %53, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %55, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #14
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %53, i32 0, i32 4, i32 6
  %56 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %57, ptr noundef null) #14
  %58 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %59, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #14
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %53, i32 0, i32 4, i32 0, i32 9
  %60 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %61) #14
  tail call void @ww_mutex_unlock(ptr noundef %61) #14
  br label %cleanup

cleanup:                                          ; preds = %unreserve_bo, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.2, %unreserve_bo ], [ %retval.1.i.i, %do.end.i ], [ %retval.1.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_sync_wait(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_release_compute(ptr noundef %adev, ptr nocapture noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pasid1.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 17
  %0 = ptrtoint ptr %pasid1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pasid1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.amdgpu_vm_set_pasid.exit_crit_edge, label %if.then3.i

entry.amdgpu_vm_set_pasid.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_set_pasid.exit

if.then3.i:                                       ; preds = %entry
  %pasids.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %pasids.i) #14
  %call.i.i = tail call ptr @__xa_erase(ptr noundef %pasids.i, i32 noundef %1) #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %pasids.i) #14
  %2 = ptrtoint ptr %call.i.i to i32
  %and.i.i.i.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp uge ptr %call.i.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %cmp.i.i.i.i
  %cmp641.i = icmp slt ptr %call.i.i, null
  %cmp6.i = and i1 %cmp641.i, %spec.select.i.i.i
  br i1 %cmp6.i, label %if.then3.i.amdgpu_vm_set_pasid.exit_crit_edge, label %if.end10.i

if.then3.i.amdgpu_vm_set_pasid.exit_crit_edge:    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_set_pasid.exit

if.end10.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %pasid1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pasid1.i, align 4
  br label %amdgpu_vm_set_pasid.exit

amdgpu_vm_set_pasid.exit:                         ; preds = %if.end10.i, %if.then3.i.amdgpu_vm_set_pasid.exit_crit_edge, %entry.amdgpu_vm_set_pasid.exit_crit_edge
  %is_compute_context = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 29
  %4 = ptrtoint ptr %is_compute_context to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_compute_context, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_fini(ptr noundef %adev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  %cursor.i = alloca %struct.dma_resv_iter, align 4
  %root = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %0 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmc_funcs, align 4
  %set_prt = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %set_prt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_prt, align 4
  %tobool = icmp ne ptr %3, null
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root) #14
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %call = tail call ptr @amdgpu_bo_ref(ptr noundef %5) #14
  %6 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %root, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call, i32 0, i32 4, i32 0, i32 9
  %9 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %10, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %11 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %entry.amdgpu_bo_reserve.exit_crit_edge
    i32 -512, label %entry.amdgpu_bo_reserve.exit_crit_edge173
  ], !prof !157

entry.amdgpu_bo_reserve.exit_crit_edge173:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_bo_reserve.exit

entry.amdgpu_bo_reserve.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_bo_reserve.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 -17736
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.46, ptr noundef %call) #18
  br label %amdgpu_bo_reserve.exit

amdgpu_bo_reserve.exit:                           ; preds = %do.end.i, %entry.amdgpu_bo_reserve.exit_crit_edge, %entry.amdgpu_bo_reserve.exit_crit_edge173
  %pasid1.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 17
  %14 = ptrtoint ptr %pasid1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pasid1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %amdgpu_bo_reserve.exit.amdgpu_vm_set_pasid.exit_crit_edge, label %if.then3.i

amdgpu_bo_reserve.exit.amdgpu_vm_set_pasid.exit_crit_edge: ; preds = %amdgpu_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_set_pasid.exit

if.then3.i:                                       ; preds = %amdgpu_bo_reserve.exit
  %pasids.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %pasids.i) #14
  %call.i.i = tail call ptr @__xa_erase(ptr noundef %pasids.i, i32 noundef %15) #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %pasids.i) #14
  %16 = ptrtoint ptr %call.i.i to i32
  %and.i.i.i.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp uge ptr %call.i.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %cmp.i.i.i.i
  %cmp641.i = icmp slt ptr %call.i.i, null
  %cmp6.i = and i1 %cmp641.i, %spec.select.i.i.i
  br i1 %cmp6.i, label %if.then3.i.amdgpu_vm_set_pasid.exit_crit_edge, label %if.end10.i

if.then3.i.amdgpu_vm_set_pasid.exit_crit_edge:    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_set_pasid.exit

if.end10.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %pasid1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pasid1.i, align 4
  br label %amdgpu_vm_set_pasid.exit

amdgpu_vm_set_pasid.exit:                         ; preds = %if.end10.i, %if.then3.i.amdgpu_vm_set_pasid.exit_crit_edge, %amdgpu_bo_reserve.exit.amdgpu_vm_set_pasid.exit_crit_edge
  %last_unlocked = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 16
  %18 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %last_unlocked, align 8
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef %19, i1 noundef zeroext false, i32 noundef 2147483647) #14
  %20 = ptrtoint ptr %last_unlocked to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last_unlocked, align 8
  %tobool.not.i134 = icmp eq ptr %21, null
  br i1 %tobool.not.i134, label %amdgpu_vm_set_pasid.exit.dma_fence_put.exit_crit_edge, label %if.then.i

amdgpu_vm_set_pasid.exit.dma_fence_put.exit_crit_edge: ; preds = %amdgpu_vm_set_pasid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %amdgpu_vm_set_pasid.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %21, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !133

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @dma_fence_release(ptr noundef %refcount.i) #14
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %amdgpu_vm_set_pasid.exit.dma_fence_put.exit_crit_edge
  %freed = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 10
  %23 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %freed, align 8
  %cmp.not162 = icmp eq ptr %24, %freed
  br i1 %cmp.not162, label %dma_fence_put.exit.for.end_crit_edge, label %for.body.lr.ph

dma_fence_put.exit.for.end_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %dma_fence_put.exit
  %25 = getelementptr inbounds i8, ptr %cursor.i, i32 4
  %fence.i.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %amdgpu_vm_free_mapping.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in164 = phi ptr [ %24, %for.body.lr.ph ], [ %.pn166, %amdgpu_vm_free_mapping.exit.for.body_crit_edge ]
  %prt_fini_needed.0.off0163 = phi i1 [ %tobool, %for.body.lr.ph ], [ %prt_fini_needed.1.off0, %amdgpu_vm_free_mapping.exit.for.body_crit_edge ]
  %mapping.0165 = getelementptr i8, ptr %.pn.in164, i32 -4
  %26 = ptrtoint ptr %.pn.in164 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn166 = load ptr, ptr %.pn.in164, align 4
  %flags = getelementptr i8, ptr %.pn.in164, i32 52
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %flags, align 8
  %and = and i64 %28, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool15.not = icmp eq i64 %and, 0
  %prt_fini_needed.0.off0.not = xor i1 %prt_fini_needed.0.off0163, true
  %brmerge = select i1 %tobool15.not, i1 true, i1 %prt_fini_needed.0.off0.not
  br i1 %brmerge, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  %29 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bo, align 4
  %resv1.i = getelementptr inbounds %struct.amdgpu_bo, ptr %30, i32 0, i32 4, i32 0, i32 9
  %31 = ptrtoint ptr %resv1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resv1.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor.i) #14
  %33 = call ptr @memset(ptr %25, i32 255, i32 28)
  %34 = ptrtoint ptr %cursor.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %cursor.i, align 4
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %25, align 4
  %36 = ptrtoint ptr %fence.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %fence.i.i, align 4
  %call.i136 = call ptr @dma_resv_iter_first(ptr noundef nonnull %cursor.i) #14
  %tobool.not5.i = icmp eq ptr %call.i136, null
  br i1 %tobool.not5.i, label %if.then.amdgpu_vm_prt_fini.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.amdgpu_vm_prt_fini.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_prt_fini.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %fence.06.i = phi ptr [ %call2.i, %for.body.i.for.body.i_crit_edge ], [ %call.i136, %if.then.for.body.i_crit_edge ]
  call fastcc void @amdgpu_vm_prt_get(ptr noundef %adev) #14
  call fastcc void @amdgpu_vm_add_prt_cb(ptr noundef %adev, ptr noundef nonnull %fence.06.i) #14
  %call2.i = call ptr @dma_resv_iter_next(ptr noundef nonnull %cursor.i) #14
  %tobool.not.i137 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i137, label %for.body.i.amdgpu_vm_prt_fini.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.amdgpu_vm_prt_fini.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_prt_fini.exit

amdgpu_vm_prt_fini.exit:                          ; preds = %for.body.i.amdgpu_vm_prt_fini.exit_crit_edge, %if.then.amdgpu_vm_prt_fini.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor.i) #14
  br label %if.end

if.end:                                           ; preds = %amdgpu_vm_prt_fini.exit, %for.body.if.end_crit_edge
  %prt_fini_needed.1.off0 = phi i1 [ false, %amdgpu_vm_prt_fini.exit ], [ %prt_fini_needed.0.off0163, %for.body.if.end_crit_edge ]
  %call.i.i138 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in164) #14
  br i1 %call.i.i138, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in164, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %.pn.in164 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn.in164, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %43 = ptrtoint ptr %.pn.in164 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in164, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in164, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %flags, align 8
  %and.i = and i64 %46, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i139 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i139, label %list_del.exit.amdgpu_vm_free_mapping.exit_crit_edge, label %if.then.i140

list_del.exit.amdgpu_vm_free_mapping.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_free_mapping.exit

if.then.i140:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @amdgpu_vm_add_prt_cb(ptr noundef %adev, ptr noundef null) #14
  br label %amdgpu_vm_free_mapping.exit

amdgpu_vm_free_mapping.exit:                      ; preds = %if.then.i140, %list_del.exit.amdgpu_vm_free_mapping.exit_crit_edge
  call void @kfree(ptr noundef %mapping.0165) #14
  %cmp.not = icmp eq ptr %.pn166, %freed
  br i1 %cmp.not, label %amdgpu_vm_free_mapping.exit.for.end_crit_edge, label %amdgpu_vm_free_mapping.exit.for.body_crit_edge

amdgpu_vm_free_mapping.exit.for.body_crit_edge:   ; preds = %amdgpu_vm_free_mapping.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

amdgpu_vm_free_mapping.exit.for.end_crit_edge:    ; preds = %amdgpu_vm_free_mapping.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %amdgpu_vm_free_mapping.exit.for.end_crit_edge, %dma_fence_put.exit.for.end_crit_edge
  call fastcc void @amdgpu_vm_free_pts(ptr noundef %adev, ptr noundef %vm, ptr noundef null)
  %47 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %root, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %48, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %48, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %50, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #14
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %48, i32 0, i32 4, i32 6
  %51 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %52, ptr noundef null) #14
  %53 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %54, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #14
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %48, i32 0, i32 4, i32 0, i32 9
  %55 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %56) #14
  call void @ww_mutex_unlock(ptr noundef %56) #14
  call void @amdgpu_bo_unref(ptr noundef nonnull %root) #14
  %57 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bo, align 4
  %tobool25.not = icmp eq ptr %58, null
  br i1 %tobool25.not, label %for.end.if.end41_crit_edge, label %do.end, !prof !133

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3169, i32 noundef 9, ptr noundef null) #14
  br label %if.end41

if.end41:                                         ; preds = %do.end, %for.end.if.end41_crit_edge
  %immediate = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 14
  call void @drm_sched_entity_destroy(ptr noundef %immediate) #14
  %delayed = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 15
  call void @drm_sched_entity_destroy(ptr noundef %delayed) #14
  %59 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %vm, align 8
  %cmp53 = icmp eq ptr %60, null
  br i1 %cmp53, label %if.end41.if.end58_crit_edge, label %do.end57

if.end41.if.end58_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

do.end57:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.21) #18
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %if.end41.if.end58_crit_edge
  %call61 = call ptr @rb_first_postorder(ptr noundef %vm) #14
  %tobool63.not = icmp eq ptr %call61, null
  %add.ptr66 = getelementptr i8, ptr %call61, i32 -12
  %tobool68.not167171 = icmp eq ptr %add.ptr66, null
  %tobool68.not167 = or i1 %tobool63.not, %tobool68.not167171
  br i1 %tobool68.not167, label %if.end58.for.end85_crit_edge, label %if.end58.land.rhs_crit_edge

if.end58.land.rhs_crit_edge:                      ; preds = %if.end58
  br label %land.rhs

if.end58.for.end85_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end85

land.rhs:                                         ; preds = %list_del.exit147.land.rhs_crit_edge, %if.end58.land.rhs_crit_edge
  %mapping.1168 = phi ptr [ %add.ptr76, %list_del.exit147.land.rhs_crit_edge ], [ %add.ptr66, %if.end58.land.rhs_crit_edge ]
  %rb = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping.1168, i32 0, i32 2
  %call70 = call ptr @rb_next_postorder(ptr noundef %rb) #14
  %tobool72.not = icmp eq ptr %call70, null
  %add.ptr76 = getelementptr i8, ptr %call70, i32 -12
  %list83 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping.1168, i32 0, i32 1
  %call.i.i142 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list83) #14
  br i1 %call.i.i142, label %if.end.i.i145, label %land.rhs.list_del.exit147_crit_edge

land.rhs.list_del.exit147_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit147

if.end.i.i145:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i143 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping.1168, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i.i143 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i143, align 4
  %65 = ptrtoint ptr %list83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %list83, align 4
  %prev1.i.i.i144 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i144, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del.exit147

list_del.exit147:                                 ; preds = %if.end.i.i145, %land.rhs.list_del.exit147_crit_edge
  %69 = ptrtoint ptr %list83 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %list83, align 4
  %prev.i146 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping.1168, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i146 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i146, align 4
  call void @kfree(ptr noundef nonnull %mapping.1168) #14
  %tobool68.not172 = icmp eq ptr %add.ptr76, null
  %tobool68.not = or i1 %tobool72.not, %tobool68.not172
  br i1 %tobool68.not, label %list_del.exit147.for.end85_crit_edge, label %list_del.exit147.land.rhs_crit_edge

list_del.exit147.land.rhs_crit_edge:              ; preds = %list_del.exit147
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

list_del.exit147.for.end85_crit_edge:             ; preds = %list_del.exit147
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end85

for.end85:                                        ; preds = %list_del.exit147.for.end85_crit_edge, %if.end58.for.end85_crit_edge
  %last_update = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 13
  %71 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %last_update, align 8
  %tobool.not.i148 = icmp eq ptr %72, null
  br i1 %tobool.not.i148, label %for.end85.dma_fence_put.exit159_crit_edge, label %if.then.i153

for.end85.dma_fence_put.exit159_crit_edge:        ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit159

if.then.i153:                                     ; preds = %for.end85
  %refcount.i149 = getelementptr inbounds %struct.dma_fence, ptr %72, i32 0, i32 6
  %call.i.i.i.i.i.i.i150 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i149, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcount.i149, i32 1, i32 3, i32 1) #14
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i149, ptr %refcount.i149, i32 1, ptr elementtype(i32) %refcount.i149) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i.i151 = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i151)
  %cmp.i.i.i.i.i152 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i151, 1
  br i1 %cmp.i.i.i.i.i152, label %if.then.i.i157, label %if.end5.i.i.i.i.i155

if.end5.i.i.i.i.i155:                             ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i151)
  %.not.i.i.i.i.i154 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i151, 0
  br i1 %.not.i.i.i.i.i154, label %if.end5.i.i.i.i.i155.dma_fence_put.exit159_crit_edge, label %if.then10.i.i.i.i.i156, !prof !133

if.end5.i.i.i.i.i155.dma_fence_put.exit159_crit_edge: ; preds = %if.end5.i.i.i.i.i155
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_fence_put.exit159

if.then10.i.i.i.i.i156:                           ; preds = %if.end5.i.i.i.i.i155
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i149, i32 noundef 3) #14
  br label %dma_fence_put.exit159

if.then.i.i157:                                   ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  call void @dma_fence_release(ptr noundef %refcount.i149) #14
  br label %dma_fence_put.exit159

dma_fence_put.exit159:                            ; preds = %if.then.i.i157, %if.then10.i.i.i.i.i156, %if.end5.i.i.i.i.i155.dma_fence_put.exit159_crit_edge, %for.end85.dma_fence_put.exit159_crit_edge
  call void @amdgpu_vmid_free_reserved(ptr noundef %adev, ptr noundef %vm, i32 noundef 0) #14
  call void @amdgpu_vmid_free_reserved(ptr noundef %adev, ptr noundef %vm, i32 noundef 1) #14
  call void @amdgpu_vmid_free_reserved(ptr noundef %adev, ptr noundef %vm, i32 noundef 2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_bo_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_vm_free_pts(ptr nocapture noundef readonly %adev, ptr noundef %vm, ptr noundef readonly %start) unnamed_addr #0 align 64 {
entry:
  %shadow.i16 = alloca ptr, align 4
  %shadow.i = alloca ptr, align 4
  %cursor = alloca %struct.amdgpu_vm_pt_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cursor) #14
  %0 = getelementptr inbounds i8, ptr %cursor, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %bulk_moveable = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 28
  %2 = ptrtoint ptr %bulk_moveable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bulk_moveable, align 8
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = call ptr @memcpy(ptr %cursor, ptr %start, i32 24)
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %cursor to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %cursor, align 8
  %parent.i.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %parent.i.i, align 8
  %root.i.i = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 12
  %entry1.i.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 2
  %6 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %root.i.i, ptr %entry1.i.i, align 4
  %root_level.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %7 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %root_level.i.i, align 4
  %level.i.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 3
  %9 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %level.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %entry1.i6.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 2
  %level.i5.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 3
  %10 = ptrtoint ptr %level.i5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level.i5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i9.i = icmp eq i32 %11, 3
  br i1 %cmp.i9.i, label %amdgpu_vm_pt_first_dfs.exitthread-pre-split, label %lor.lhs.false.i.lr.ph.i

lor.lhs.false.i.lr.ph.i:                          ; preds = %if.end.i
  %root_level.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %block_size.i29.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %parent.i7.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 1
  %12 = ptrtoint ptr %entry1.i6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load ptr, ptr %entry1.i6.i, align 4
  %13 = ptrtoint ptr %level.i5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %level.i5.i.promoted = load i32, ptr %level.i5.i, align 8
  %14 = ptrtoint ptr %parent.i7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %parent.i7.i.promoted = load ptr, ptr %parent.i7.i, align 8
  %tobool.not.i.i40 = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i.i40, label %lor.lhs.false.i.lr.ph.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge, label %lor.lhs.false2.i.i.preheader

lor.lhs.false.i.lr.ph.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge: ; preds = %lor.lhs.false.i.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_first_dfs.exit.loopexit

lor.lhs.false2.i.i.preheader:                     ; preds = %lor.lhs.false.i.lr.ph.i
  %bo.i.i54 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %.pr.i, i32 0, i32 1
  %15 = ptrtoint ptr %bo.i.i54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo.i.i54, align 4
  %tobool4.not.i.i55 = icmp eq ptr %16, null
  br i1 %tobool4.not.i.i55, label %lor.lhs.false2.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge, label %if.end.i.i.preheader

lor.lhs.false2.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge: ; preds = %lor.lhs.false2.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_first_dfs.exit.loopexit

if.end.i.i.preheader:                             ; preds = %lor.lhs.false2.i.i.preheader
  %17 = ptrtoint ptr %root_level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %root_level.i.i.i, align 4
  %19 = ptrtoint ptr %cursor to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cursor, align 8
  br label %if.end.i.i

lor.lhs.false2.i.i:                               ; preds = %amdgpu_vm_pt_descendant.exit.i
  %bo.i.i = getelementptr %struct.amdgpu_bo_vm, ptr %23, i32 0, i32 3, i32 %conv9.i.i, i32 1
  %21 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bo.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge, label %lor.lhs.false2.i.i.if.end.i.i_crit_edge

lor.lhs.false2.i.i.if.end.i.i_crit_edge:          ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

lor.lhs.false2.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_first_dfs.exit.loopexit

if.end.i.i:                                       ; preds = %lor.lhs.false2.i.i.if.end.i.i_crit_edge, %if.end.i.i.preheader
  %23 = phi ptr [ %22, %lor.lhs.false2.i.i.if.end.i.i_crit_edge ], [ %16, %if.end.i.i.preheader ]
  %arrayidx.i.i384156 = phi ptr [ %arrayidx.i.i, %lor.lhs.false2.i.i.if.end.i.i_crit_edge ], [ %.pr.i, %if.end.i.i.preheader ]
  %24 = phi i32 [ %inc.i.i, %lor.lhs.false2.i.i.if.end.i.i_crit_edge ], [ %11, %if.end.i.i.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %24)
  %cmp.not.i.i.i = icmp ult i32 %18, %24
  %spec.select.i.i = select i1 %cmp.not.i.i.i, i32 511, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %switch.i.i = icmp ult i32 %24, 3
  br i1 %switch.i.i, label %sw.bb.i.i.i, label %if.end.i.i.amdgpu_vm_pt_descendant.exit.i_crit_edge

if.end.i.i.amdgpu_vm_pt_descendant.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_descendant.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i28.i.i = sub nuw nsw i32 2, %24
  %mul.i.i.i = mul nuw nsw i32 %sub.i28.i.i, 9
  %25 = ptrtoint ptr %block_size.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %block_size.i29.i.i, align 4
  %add.i.i.i = add i32 %26, %mul.i.i.i
  br label %amdgpu_vm_pt_descendant.exit.i

amdgpu_vm_pt_descendant.exit.i:                   ; preds = %sw.bb.i.i.i, %if.end.i.i.amdgpu_vm_pt_descendant.exit.i_crit_edge
  %retval.0.i30.i.i = phi i32 [ %add.i.i.i, %sw.bb.i.i.i ], [ -1, %if.end.i.i.amdgpu_vm_pt_descendant.exit.i_crit_edge ]
  %inc.i.i = add i32 %24, 1
  %sh_prom.i.i = zext i32 %retval.0.i30.i.i to i64
  %shr.i.i = lshr i64 %20, %sh_prom.i.i
  %27 = trunc i64 %shr.i.i to i32
  %conv9.i.i = and i32 %spec.select.i.i, %27
  %arrayidx.i.i = getelementptr %struct.amdgpu_bo_vm, ptr %23, i32 0, i32 3, i32 %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i)
  %cmp.i.i = icmp eq i32 %inc.i.i, 3
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond, label %amdgpu_vm_pt_descendant.exit.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge, label %lor.lhs.false2.i.i

amdgpu_vm_pt_descendant.exit.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge: ; preds = %amdgpu_vm_pt_descendant.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_first_dfs.exit.loopexit

amdgpu_vm_pt_first_dfs.exit.loopexit:             ; preds = %amdgpu_vm_pt_descendant.exit.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge, %lor.lhs.false2.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge, %lor.lhs.false2.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge, %lor.lhs.false.i.lr.ph.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge
  %arrayidx.i.i39 = phi ptr [ null, %lor.lhs.false.i.lr.ph.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ], [ %.pr.i, %lor.lhs.false2.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ], [ %arrayidx.i.i, %lor.lhs.false2.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ], [ %arrayidx.i.i, %amdgpu_vm_pt_descendant.exit.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ]
  %28 = phi ptr [ %parent.i7.i.promoted, %lor.lhs.false.i.lr.ph.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ], [ %parent.i7.i.promoted, %lor.lhs.false2.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ], [ %arrayidx.i.i384156, %lor.lhs.false2.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ], [ %arrayidx.i.i384156, %amdgpu_vm_pt_descendant.exit.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ]
  %inc.i.i37 = phi i32 [ %level.i5.i.promoted, %lor.lhs.false.i.lr.ph.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ], [ %level.i5.i.promoted, %lor.lhs.false2.i.i.preheader.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ], [ %inc.i.i, %lor.lhs.false2.i.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ], [ %inc.i.i, %amdgpu_vm_pt_descendant.exit.i.amdgpu_vm_pt_first_dfs.exit.loopexit_crit_edge ]
  %29 = ptrtoint ptr %level.i5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i.i37, ptr %level.i5.i, align 8
  %30 = ptrtoint ptr %parent.i7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %parent.i7.i, align 8
  %31 = ptrtoint ptr %entry1.i6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.i.i39, ptr %entry1.i6.i, align 4
  br label %amdgpu_vm_pt_first_dfs.exit

amdgpu_vm_pt_first_dfs.exitthread-pre-split:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %entry1.i6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load ptr, ptr %entry1.i6.i, align 4
  br label %amdgpu_vm_pt_first_dfs.exit

amdgpu_vm_pt_first_dfs.exit:                      ; preds = %amdgpu_vm_pt_first_dfs.exitthread-pre-split, %amdgpu_vm_pt_first_dfs.exit.loopexit
  %33 = phi ptr [ %.pr, %amdgpu_vm_pt_first_dfs.exitthread-pre-split ], [ %arrayidx.i.i39, %amdgpu_vm_pt_first_dfs.exit.loopexit ]
  call fastcc void @amdgpu_vm_pt_next_dfs(ptr noundef %adev, ptr noundef nonnull %cursor)
  %tobool.not.i1251 = icmp eq ptr %33, null
  br i1 %tobool.not.i1251, label %amdgpu_vm_pt_first_dfs.exit.for.end_crit_edge, label %land.rhs.i.lr.ph

amdgpu_vm_pt_first_dfs.exit.for.end_crit_edge:    ; preds = %amdgpu_vm_pt_first_dfs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs.i.lr.ph:                                 ; preds = %amdgpu_vm_pt_first_dfs.exit
  %entry3.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %start, i32 0, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %amdgpu_vm_free_table.exit.land.rhs.i_crit_edge, %land.rhs.i.lr.ph
  %entry1.052 = phi ptr [ %33, %land.rhs.i.lr.ph ], [ %53, %amdgpu_vm_free_table.exit.land.rhs.i_crit_edge ]
  br i1 %tobool.not.i, label %land.rhs.i.for.body_crit_edge, label %amdgpu_vm_pt_continue_dfs.exit

land.rhs.i.for.body_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

amdgpu_vm_pt_continue_dfs.exit:                   ; preds = %land.rhs.i
  %34 = ptrtoint ptr %entry3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %entry3.i, align 4
  %cmp.i.not = icmp eq ptr %35, %entry1.052
  br i1 %cmp.i.not, label %amdgpu_vm_pt_continue_dfs.exit.if.then_crit_edge, label %amdgpu_vm_pt_continue_dfs.exit.for.body_crit_edge

amdgpu_vm_pt_continue_dfs.exit.for.body_crit_edge: ; preds = %amdgpu_vm_pt_continue_dfs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

amdgpu_vm_pt_continue_dfs.exit.if.then_crit_edge: ; preds = %amdgpu_vm_pt_continue_dfs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.body:                                         ; preds = %amdgpu_vm_pt_continue_dfs.exit.for.body_crit_edge, %land.rhs.i.for.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shadow.i) #14
  %bo.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %entry1.052, i32 0, i32 1
  %36 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bo.i, align 4
  %tobool.not.i13 = icmp eq ptr %37, null
  br i1 %tobool.not.i13, label %for.body.amdgpu_vm_free_table.exit_crit_edge, label %if.end.i15

for.body.amdgpu_vm_free_table.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_free_table.exit

if.end.i15:                                       ; preds = %for.body
  %type.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %37, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i.i14 = icmp eq i32 %39, 1
  br i1 %cmp.i.i14, label %if.then.i.i, label %if.end.i15.amdgpu_bo_shadowed.exit.i_crit_edge

if.end.i15.amdgpu_bo_shadowed.exit.i_crit_edge:   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_bo_shadowed.exit.i

if.then.i.i:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #16
  %shadow.i.i = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %shadow.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shadow.i.i, align 8
  br label %amdgpu_bo_shadowed.exit.i

amdgpu_bo_shadowed.exit.i:                        ; preds = %if.then.i.i, %if.end.i15.amdgpu_bo_shadowed.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %41, %if.then.i.i ], [ null, %if.end.i15.amdgpu_bo_shadowed.exit.i_crit_edge ]
  %42 = ptrtoint ptr %shadow.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i.i, ptr %shadow.i, align 4
  %vm_bo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %37, i32 0, i32 7
  %43 = ptrtoint ptr %vm_bo.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %vm_bo.i, align 8
  %vm_status.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %entry1.052, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %amdgpu_bo_shadowed.exit.i.list_del.exit.i_crit_edge

amdgpu_bo_shadowed.exit.i.list_del.exit.i_crit_edge: ; preds = %amdgpu_bo_shadowed.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %amdgpu_bo_shadowed.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %entry1.052, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vm_status.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %amdgpu_bo_shadowed.exit.i.list_del.exit.i_crit_edge
  %50 = ptrtoint ptr %vm_status.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %vm_status.i, align 4
  %prev.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %entry1.052, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @amdgpu_bo_unref(ptr noundef nonnull %shadow.i) #14
  call void @amdgpu_bo_unref(ptr noundef %bo.i) #14
  br label %amdgpu_vm_free_table.exit

amdgpu_vm_free_table.exit:                        ; preds = %list_del.exit.i, %for.body.amdgpu_vm_free_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shadow.i) #14
  %52 = ptrtoint ptr %entry1.i6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %entry1.i6.i, align 4
  call fastcc void @amdgpu_vm_pt_next_dfs(ptr noundef %adev, ptr noundef nonnull %cursor)
  %tobool.not.i12 = icmp eq ptr %53, null
  br i1 %tobool.not.i12, label %amdgpu_vm_free_table.exit.for.end_crit_edge, label %amdgpu_vm_free_table.exit.land.rhs.i_crit_edge

amdgpu_vm_free_table.exit.land.rhs.i_crit_edge:   ; preds = %amdgpu_vm_free_table.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

amdgpu_vm_free_table.exit.for.end_crit_edge:      ; preds = %amdgpu_vm_free_table.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %amdgpu_vm_free_table.exit.for.end_crit_edge, %amdgpu_vm_pt_first_dfs.exit.for.end_crit_edge
  br i1 %tobool.not.i, label %for.end.if.end_crit_edge, label %for.end.if.then_crit_edge

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.end.if.then_crit_edge, %amdgpu_vm_pt_continue_dfs.exit.if.then_crit_edge
  %entry4 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %start, i32 0, i32 2
  %54 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %entry4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shadow.i16) #14
  %bo.i17 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %bo.i17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bo.i17, align 4
  %tobool.not.i18 = icmp eq ptr %57, null
  br i1 %tobool.not.i18, label %if.then.amdgpu_vm_free_table.exit34_crit_edge, label %if.end.i21

if.then.amdgpu_vm_free_table.exit34_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_free_table.exit34

if.end.i21:                                       ; preds = %if.then
  %type.i.i19 = getelementptr inbounds %struct.amdgpu_bo, ptr %57, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %type.i.i19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type.i.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i.i20 = icmp eq i32 %59, 1
  br i1 %cmp.i.i20, label %if.then.i.i23, label %if.end.i21.amdgpu_bo_shadowed.exit.i28_crit_edge

if.end.i21.amdgpu_bo_shadowed.exit.i28_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_bo_shadowed.exit.i28

if.then.i.i23:                                    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #16
  %shadow.i.i22 = getelementptr inbounds %struct.amdgpu_bo_vm, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %shadow.i.i22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %shadow.i.i22, align 8
  br label %amdgpu_bo_shadowed.exit.i28

amdgpu_bo_shadowed.exit.i28:                      ; preds = %if.then.i.i23, %if.end.i21.amdgpu_bo_shadowed.exit.i28_crit_edge
  %retval.0.i.i24 = phi ptr [ %61, %if.then.i.i23 ], [ null, %if.end.i21.amdgpu_bo_shadowed.exit.i28_crit_edge ]
  %62 = ptrtoint ptr %shadow.i16 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %retval.0.i.i24, ptr %shadow.i16, align 4
  %vm_bo.i25 = getelementptr inbounds %struct.amdgpu_bo, ptr %57, i32 0, i32 7
  %63 = ptrtoint ptr %vm_bo.i25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %vm_bo.i25, align 8
  %vm_status.i26 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %55, i32 0, i32 3
  %call.i.i.i27 = call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status.i26) #14
  br i1 %call.i.i.i27, label %if.end.i.i.i31, label %amdgpu_bo_shadowed.exit.i28.list_del.exit.i33_crit_edge

amdgpu_bo_shadowed.exit.i28.list_del.exit.i33_crit_edge: ; preds = %amdgpu_bo_shadowed.exit.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i33

if.end.i.i.i31:                                   ; preds = %amdgpu_bo_shadowed.exit.i28
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i29 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %55, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %prev.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i29, align 4
  %66 = ptrtoint ptr %vm_status.i26 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vm_status.i26, align 4
  %prev1.i.i.i.i30 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i30, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.i33

list_del.exit.i33:                                ; preds = %if.end.i.i.i31, %amdgpu_bo_shadowed.exit.i28.list_del.exit.i33_crit_edge
  %70 = ptrtoint ptr %vm_status.i26 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %vm_status.i26, align 4
  %prev.i.i32 = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %55, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %prev.i.i32 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i32, align 4
  call void @amdgpu_bo_unref(ptr noundef nonnull %shadow.i16) #14
  call void @amdgpu_bo_unref(ptr noundef %bo.i17) #14
  br label %amdgpu_vm_free_table.exit34

amdgpu_vm_free_table.exit34:                      ; preds = %list_del.exit.i33, %if.then.amdgpu_vm_free_table.exit34_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shadow.i16) #14
  br label %if.end

if.end:                                           ; preds = %amdgpu_vm_free_table.exit34, %for.end.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cursor) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vmid_free_reserved(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_manager_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1)
  %cmp = icmp ugt i32 %1, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1)
  %cmp2 = icmp ne i32 %1, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %1)
  %cmp4 = icmp ne i32 %1, 28
  %not.or.cond = and i1 %cmp, %cmp2
  %spec.select = and i1 %cmp4, %not.or.cond
  %concurrent_flush = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 2
  %frombool = zext i1 %spec.select to i8
  %2 = ptrtoint ptr %concurrent_flush to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %concurrent_flush, align 4
  tail call void @amdgpu_vmid_mgr_init(ptr noundef %adev) #14
  %call = tail call i64 @dma_fence_context_alloc(i32 noundef 28) #14
  %fence_context = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 3
  %3 = ptrtoint ptr %fence_context to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call, ptr %fence_context, align 8
  %uglygep = getelementptr i8, ptr %adev, i32 17184
  %4 = call ptr @memset(ptr %uglygep, i32 0, i32 112)
  %prt_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %prt_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @amdgpu_vm_manager_init.__key, i16 noundef signext 3) #14
  %num_prt_users = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_prt_users, i32 noundef 4) #14
  %5 = ptrtoint ptr %num_prt_users to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %num_prt_users, align 4
  %vm_update_mode = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 17
  %6 = ptrtoint ptr %vm_update_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %vm_update_mode, align 4
  %pasids = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %pasids, ptr noundef nonnull @.str.50, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18, i32 1
  %7 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18, i32 2
  %8 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xa_head.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vmid_mgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_manager_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xa_head.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18, i32 2
  %0 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %do.end, !prof !133

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3246, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pasids = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18
  tail call void @xa_destroy(ptr noundef %pasids) #14
  tail call void @amdgpu_vmid_mgr_fini(ptr noundef %adev) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vmid_mgr_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vm_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call2 = tail call i32 @amdgpu_vmid_alloc_reserved(ptr noundef %add.ptr.i, ptr noundef %1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %virt = getelementptr i8, ptr %dev, i32 90272
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt, align 8
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bo, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %8, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %8, i32 0, i32 4, i32 0, i32 9
  %11 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %12, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %13 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end11
    i32 -512, label %sw.bb3.cleanup_crit_edge
  ], !prof !157

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -17736
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.46, ptr noundef %8) #18
  br label %cleanup

if.end11:                                         ; preds = %sw.bb3
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool4.not, i32 200, i32 1600
  %16 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bo, align 4
  %resv.i = getelementptr inbounds %struct.amdgpu_bo, ptr %17, i32 0, i32 4, i32 0, i32 9
  %18 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resv.i, align 8
  %call.i = tail call i32 @dma_resv_wait_timeout(ptr noundef %19, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %spec.select) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.end11.amdgpu_vm_wait_idle.exit_crit_edge, label %if.end.i

if.end11.amdgpu_vm_wait_idle.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_wait_idle.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %last_unlocked.i = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %last_unlocked.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last_unlocked.i, align 8
  %call1.i = tail call i32 @dma_fence_wait_timeout(ptr noundef %21, i1 noundef zeroext true, i32 noundef %call.i) #14
  br label %amdgpu_vm_wait_idle.exit

amdgpu_vm_wait_idle.exit:                         ; preds = %if.end.i, %if.end11.amdgpu_vm_wait_idle.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %call.i, %if.end11.amdgpu_vm_wait_idle.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %amdgpu_vm_wait_idle.exit.cleanup_crit_edge, label %if.end15

amdgpu_vm_wait_idle.exit.cleanup_crit_edge:       ; preds = %amdgpu_vm_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %amdgpu_vm_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %23, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %23, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %25, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #14
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %23, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %27, ptr noundef null) #14
  %28 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %29, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #14
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %23, i32 0, i32 4, i32 0, i32 9
  %30 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %31) #14
  tail call void @ww_mutex_unlock(ptr noundef %31) #14
  tail call void @amdgpu_vmid_free_reserved(ptr noundef %add.ptr.i, ptr noundef %1, i32 noundef 0) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end15, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %amdgpu_vm_wait_idle.exit.cleanup_crit_edge, %do.end.i, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call2, %sw.bb.cleanup_crit_edge ], [ %retval.1.i.i, %do.end.i ], [ %retval.0.i, %amdgpu_vm_wait_idle.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.1.i.i, %sw.bb3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vmid_alloc_reserved(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_get_task_info(ptr noundef %adev, i32 noundef %pasid, ptr nocapture noundef writeonly %task_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pasids = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pasids) #14
  %call7 = tail call ptr @xa_load(ptr noundef %pasids, i32 noundef %pasid) #14
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %task_info8 = getelementptr inbounds %struct.amdgpu_vm, ptr %call7, i32 0, i32 26
  %0 = call ptr @memcpy(ptr %task_info, ptr %task_info8, i32 40)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pasids, i32 noundef %call2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vm_set_task_info(ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %task_info = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 26
  %pid = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 26, i32 2
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid1 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid1, align 8
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pid, align 8
  %task_name = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 26, i32 1
  %9 = load ptr, ptr %task, align 8
  %call7 = tail call ptr @__get_task_comm(ptr noundef %task_name, i32 noundef 16, ptr noundef %9) #14
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 75
  %12 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group_leader, align 4
  %mm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mm, align 8
  %mm12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 53
  %16 = ptrtoint ptr %mm12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm12, align 8
  %cmp.not = icmp eq ptr %15, %17
  br i1 %cmp.not, label %if.end14, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pid18 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %18 = ptrtoint ptr %pid18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid18, align 8
  %tgid = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 26, i32 3
  %20 = ptrtoint ptr %tgid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tgid, align 4
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %group_leader27 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 75
  %23 = ptrtoint ptr %group_leader27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %group_leader27, align 4
  %call28 = tail call ptr @__get_task_comm(ptr noundef %task_info, i32 noundef 16, ptr noundef %24) #14
  br label %return

return:                                           ; preds = %if.end14, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_vm_handle_fault(ptr noundef %adev, i32 noundef %pasid, i64 noundef %addr, i1 noundef zeroext %write_fault) local_unnamed_addr #0 align 64 {
entry:
  %root = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root) #14
  %pasids = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pasids) #14
  %call7 = tail call ptr @xa_load(ptr noundef %pasids, i32 noundef %pasid) #14
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pasids, i32 noundef %call2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %call7, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %call9 = tail call ptr @amdgpu_bo_ref(ptr noundef %1) #14
  %2 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %root, align 4
  %is_compute_context10 = getelementptr inbounds %struct.amdgpu_vm, ptr %call7, i32 0, i32 29
  %3 = ptrtoint ptr %is_compute_context10 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_compute_context10, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool11.not = icmp eq i8 %4, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pasids, i32 noundef %call2) #14
  %tobool16.not = icmp eq ptr %call9, null
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %div133 = lshr i64 %addr, 12
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call9, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %call9, i32 0, i32 4, i32 0, i32 9
  %7 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %8, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %9 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %do.body31
    i32 -512, label %if.end18.error_unref_crit_edge
  ], !prof !157

if.end18.error_unref_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unref

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -17736
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.46, ptr noundef nonnull %call9) #18
  br label %error_unref

do.body31:                                        ; preds = %if.end18
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pasids) #14
  %call48 = tail call ptr @xa_load(ptr noundef %pasids, i32 noundef %pasid) #14
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.body31.if.end56.thread_crit_edge, label %land.lhs.true50

do.body31.if.end56.thread_crit_edge:              ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56.thread

land.lhs.true50:                                  ; preds = %do.body31
  %bo52 = getelementptr inbounds %struct.amdgpu_vm, ptr %call48, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %bo52 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo52, align 4
  %14 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root, align 4
  %cmp53.not = icmp eq ptr %13, %15
  br i1 %cmp53.not, label %if.end62, label %land.lhs.true50.if.end56.thread_crit_edge

land.lhs.true50.if.end56.thread_crit_edge:        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56.thread

if.end56.thread:                                  ; preds = %land.lhs.true50.if.end56.thread_crit_edge, %do.body31.if.end56.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pasids, i32 noundef %call41) #14
  br label %error_unlock

if.end62:                                         ; preds = %land.lhs.true50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pasids, i32 noundef %call41) #14
  br i1 %tobool11.not, label %if.else65, label %if.end62.if.end72_crit_edge

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.else65:                                        ; preds = %if.end62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %16 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp66 = icmp eq i32 %16, 0
  br i1 %cmp66, label %if.then68, label %if.else65.if.end72_crit_edge

if.else65.if.end72_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then68:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #16
  %dummy_page_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %17 = ptrtoint ptr %dummy_page_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dummy_page_addr, align 8
  %conv69 = zext i32 %18 to i64
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.else65.if.end72_crit_edge, %if.end62.if.end72_crit_edge
  %value.0 = phi i64 [ %conv69, %if.then68 ], [ 0, %if.end62.if.end72_crit_edge ], [ 0, %if.else65.if.end72_crit_edge ]
  %flags.0 = phi i64 [ 119, %if.then68 ], [ 90071992547409936, %if.end62.if.end72_crit_edge ], [ 7, %if.else65.if.end72_crit_edge ]
  %19 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %root, align 4
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 0, i32 9
  %21 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv, align 8
  %call73 = tail call i32 @dma_resv_reserve_shared(ptr noundef %22, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end87, label %do.body76

do.body76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_vm_handle_fault.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_vm_handle_fault, %if.then83)) #14
          to label %error_unlock [label %if.then83], !srcloc !137

if.then83:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amdgpu_vm_handle_fault.__UNIQUE_ID_ddebug428, ptr noundef nonnull @.str.27, i32 noundef %call73) #14
  br label %error_unlock

if.end87:                                         ; preds = %if.end72
  %call88 = tail call i32 @amdgpu_vm_bo_update_mapping(ptr noundef %adev, ptr noundef %adev, ptr noundef nonnull %call48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef null, i64 noundef %div133, i64 noundef %div133, i64 noundef %flags.0, i64 noundef %value.0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end87.error_unlock_crit_edge

if.end87.error_unlock_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unlock

if.end91:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  %call92 = tail call i32 @amdgpu_vm_update_pdes(ptr noundef %adev, ptr noundef nonnull %call48, i1 noundef zeroext true)
  br label %error_unlock

error_unlock:                                     ; preds = %if.end91, %if.end87.error_unlock_crit_edge, %if.then83, %do.body76, %if.end56.thread
  %r.0 = phi i32 [ %call73, %if.then83 ], [ %call88, %if.end87.error_unlock_crit_edge ], [ %call92, %if.end91 ], [ 0, %if.end56.thread ], [ %call73, %do.body76 ]
  %23 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %root, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %24, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %24, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #14
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %24, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %28, ptr noundef null) #14
  %29 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %30, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #14
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %24, i32 0, i32 4, i32 0, i32 9
  %31 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %32) #14
  tail call void @ww_mutex_unlock(ptr noundef %32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %cmp93 = icmp slt i32 %r.0, 0
  br i1 %cmp93, label %if.then95, label %error_unlock.error_unref_crit_edge

error_unlock.error_unref_crit_edge:               ; preds = %error_unlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unref

if.then95:                                        ; preds = %error_unlock
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %r.0) #14
  br label %error_unref

error_unref:                                      ; preds = %if.then95, %error_unlock.error_unref_crit_edge, %do.end.i, %if.end18.error_unref_crit_edge
  call void @amdgpu_bo_unref(ptr noundef nonnull %root) #14
  br label %cleanup

cleanup:                                          ; preds = %error_unref, %if.end.cleanup_crit_edge, %if.end.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root) #14
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_debugfs_vm_bo_info(ptr noundef %vm, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.29) #14
  %idle = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 7
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idle, align 4
  %cmp.not292 = icmp eq ptr %1, %idle
  br i1 %cmp.not292, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in295 = phi ptr [ %.pn296, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %total_idle.0294 = phi i64 [ %total_idle.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %id.0293 = phi i32 [ %id.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in295 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn296 = load ptr, ptr %.pn.in295, align 4
  %bo = getelementptr i8, ptr %.pn.in295, i32 -8
  %3 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %id.0293, 1
  %call = tail call i64 @amdgpu_bo_print_info(i32 noundef %id.0293, ptr noundef nonnull %4, ptr noundef %m) #14
  %add = add i64 %call, %total_idle.0294
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %id.1 = phi i32 [ %inc, %if.end ], [ %id.0293, %for.body.for.inc_crit_edge ]
  %total_idle.1 = phi i64 [ %add, %if.end ], [ %total_idle.0294, %for.body.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn296, %idle
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %id.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %id.1, %for.inc.for.end_crit_edge ]
  %total_idle.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %total_idle.1, %for.inc.for.end_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.30) #14
  %evicted = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 4
  %5 = ptrtoint ptr %evicted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %evicted, align 4
  %cmp32.not299 = icmp eq ptr %6, %evicted
  br i1 %cmp32.not299, label %for.end.for.end52_crit_edge, label %for.end.for.body34_crit_edge

for.end.for.body34_crit_edge:                     ; preds = %for.end
  br label %for.body34

for.end.for.end52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end52

for.body34:                                       ; preds = %for.inc45.for.body34_crit_edge, %for.end.for.body34_crit_edge
  %.pn280.in302 = phi ptr [ %.pn280303, %for.inc45.for.body34_crit_edge ], [ %6, %for.end.for.body34_crit_edge ]
  %total_evicted.0301 = phi i64 [ %total_evicted.1, %for.inc45.for.body34_crit_edge ], [ 0, %for.end.for.body34_crit_edge ]
  %id.2300 = phi i32 [ %id.3, %for.inc45.for.body34_crit_edge ], [ 0, %for.end.for.body34_crit_edge ]
  %7 = ptrtoint ptr %.pn280.in302 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn280303 = load ptr, ptr %.pn280.in302, align 4
  %bo36 = getelementptr i8, ptr %.pn280.in302, i32 -8
  %8 = ptrtoint ptr %bo36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bo36, align 4
  %tobool37.not = icmp eq ptr %9, null
  br i1 %tobool37.not, label %for.body34.for.inc45_crit_edge, label %if.end39

for.body34.for.inc45_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc45

if.end39:                                         ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #16
  %inc40 = add i32 %id.2300, 1
  %call43 = tail call i64 @amdgpu_bo_print_info(i32 noundef %id.2300, ptr noundef nonnull %9, ptr noundef %m) #14
  %add44 = add i64 %call43, %total_evicted.0301
  br label %for.inc45

for.inc45:                                        ; preds = %if.end39, %for.body34.for.inc45_crit_edge
  %id.3 = phi i32 [ %inc40, %if.end39 ], [ %id.2300, %for.body34.for.inc45_crit_edge ]
  %total_evicted.1 = phi i64 [ %add44, %if.end39 ], [ %total_evicted.0301, %for.body34.for.inc45_crit_edge ]
  %cmp32.not = icmp eq ptr %.pn280303, %evicted
  br i1 %cmp32.not, label %for.inc45.for.end52_crit_edge, label %for.inc45.for.body34_crit_edge

for.inc45.for.body34_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body34

for.inc45.for.end52_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end52

for.end52:                                        ; preds = %for.inc45.for.end52_crit_edge, %for.end.for.end52_crit_edge
  %id.2.lcssa = phi i32 [ 0, %for.end.for.end52_crit_edge ], [ %id.3, %for.inc45.for.end52_crit_edge ]
  %total_evicted.0.lcssa = phi i64 [ 0, %for.end.for.end52_crit_edge ], [ %total_evicted.1, %for.inc45.for.end52_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.31) #14
  %relocated = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 5
  %10 = ptrtoint ptr %relocated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %relocated, align 4
  %cmp67.not307 = icmp eq ptr %11, %relocated
  br i1 %cmp67.not307, label %for.end52.for.end87_crit_edge, label %for.end52.for.body69_crit_edge

for.end52.for.body69_crit_edge:                   ; preds = %for.end52
  br label %for.body69

for.end52.for.end87_crit_edge:                    ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end87

for.body69:                                       ; preds = %for.inc80.for.body69_crit_edge, %for.end52.for.body69_crit_edge
  %.pn281.in310 = phi ptr [ %.pn281311, %for.inc80.for.body69_crit_edge ], [ %11, %for.end52.for.body69_crit_edge ]
  %total_relocated.0309 = phi i64 [ %total_relocated.1, %for.inc80.for.body69_crit_edge ], [ 0, %for.end52.for.body69_crit_edge ]
  %id.4308 = phi i32 [ %id.5, %for.inc80.for.body69_crit_edge ], [ 0, %for.end52.for.body69_crit_edge ]
  %12 = ptrtoint ptr %.pn281.in310 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn281311 = load ptr, ptr %.pn281.in310, align 4
  %bo71 = getelementptr i8, ptr %.pn281.in310, i32 -8
  %13 = ptrtoint ptr %bo71 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo71, align 4
  %tobool72.not = icmp eq ptr %14, null
  br i1 %tobool72.not, label %for.body69.for.inc80_crit_edge, label %if.end74

for.body69.for.inc80_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc80

if.end74:                                         ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #16
  %inc75 = add i32 %id.4308, 1
  %call78 = tail call i64 @amdgpu_bo_print_info(i32 noundef %id.4308, ptr noundef nonnull %14, ptr noundef %m) #14
  %add79 = add i64 %call78, %total_relocated.0309
  br label %for.inc80

for.inc80:                                        ; preds = %if.end74, %for.body69.for.inc80_crit_edge
  %id.5 = phi i32 [ %inc75, %if.end74 ], [ %id.4308, %for.body69.for.inc80_crit_edge ]
  %total_relocated.1 = phi i64 [ %add79, %if.end74 ], [ %total_relocated.0309, %for.body69.for.inc80_crit_edge ]
  %cmp67.not = icmp eq ptr %.pn281311, %relocated
  br i1 %cmp67.not, label %for.inc80.for.end87_crit_edge, label %for.inc80.for.body69_crit_edge

for.inc80.for.body69_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body69

for.inc80.for.end87_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end87

for.end87:                                        ; preds = %for.inc80.for.end87_crit_edge, %for.end52.for.end87_crit_edge
  %id.4.lcssa = phi i32 [ 0, %for.end52.for.end87_crit_edge ], [ %id.5, %for.inc80.for.end87_crit_edge ]
  %total_relocated.0.lcssa = phi i64 [ 0, %for.end52.for.end87_crit_edge ], [ %total_relocated.1, %for.inc80.for.end87_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.32) #14
  %moved = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 6
  %15 = ptrtoint ptr %moved to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %moved, align 4
  %cmp102.not315 = icmp eq ptr %16, %moved
  br i1 %cmp102.not315, label %for.end87.for.end122_crit_edge, label %for.end87.for.body104_crit_edge

for.end87.for.body104_crit_edge:                  ; preds = %for.end87
  br label %for.body104

for.end87.for.end122_crit_edge:                   ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end122

for.body104:                                      ; preds = %for.inc115.for.body104_crit_edge, %for.end87.for.body104_crit_edge
  %.pn282.in318 = phi ptr [ %.pn282319, %for.inc115.for.body104_crit_edge ], [ %16, %for.end87.for.body104_crit_edge ]
  %total_moved.0317 = phi i64 [ %total_moved.1, %for.inc115.for.body104_crit_edge ], [ 0, %for.end87.for.body104_crit_edge ]
  %id.6316 = phi i32 [ %id.7, %for.inc115.for.body104_crit_edge ], [ 0, %for.end87.for.body104_crit_edge ]
  %17 = ptrtoint ptr %.pn282.in318 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn282319 = load ptr, ptr %.pn282.in318, align 4
  %bo106 = getelementptr i8, ptr %.pn282.in318, i32 -8
  %18 = ptrtoint ptr %bo106 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo106, align 4
  %tobool107.not = icmp eq ptr %19, null
  br i1 %tobool107.not, label %for.body104.for.inc115_crit_edge, label %if.end109

for.body104.for.inc115_crit_edge:                 ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc115

if.end109:                                        ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #16
  %inc110 = add i32 %id.6316, 1
  %call113 = tail call i64 @amdgpu_bo_print_info(i32 noundef %id.6316, ptr noundef nonnull %19, ptr noundef %m) #14
  %add114 = add i64 %call113, %total_moved.0317
  br label %for.inc115

for.inc115:                                       ; preds = %if.end109, %for.body104.for.inc115_crit_edge
  %id.7 = phi i32 [ %inc110, %if.end109 ], [ %id.6316, %for.body104.for.inc115_crit_edge ]
  %total_moved.1 = phi i64 [ %add114, %if.end109 ], [ %total_moved.0317, %for.body104.for.inc115_crit_edge ]
  %cmp102.not = icmp eq ptr %.pn282319, %moved
  br i1 %cmp102.not, label %for.inc115.for.end122_crit_edge, label %for.inc115.for.body104_crit_edge

for.inc115.for.body104_crit_edge:                 ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body104

for.inc115.for.end122_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end122

for.end122:                                       ; preds = %for.inc115.for.end122_crit_edge, %for.end87.for.end122_crit_edge
  %id.6.lcssa = phi i32 [ 0, %for.end87.for.end122_crit_edge ], [ %id.7, %for.inc115.for.end122_crit_edge ]
  %total_moved.0.lcssa = phi i64 [ 0, %for.end87.for.end122_crit_edge ], [ %total_moved.1, %for.inc115.for.end122_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.33) #14
  %invalidated_lock = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %invalidated_lock) #14
  %invalidated = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 8
  %20 = ptrtoint ptr %invalidated to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %invalidated, align 4
  %cmp137.not323 = icmp eq ptr %21, %invalidated
  br i1 %cmp137.not323, label %for.end122.for.end157_crit_edge, label %for.end122.for.body139_crit_edge

for.end122.for.body139_crit_edge:                 ; preds = %for.end122
  br label %for.body139

for.end122.for.end157_crit_edge:                  ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end157

for.body139:                                      ; preds = %for.inc150.for.body139_crit_edge, %for.end122.for.body139_crit_edge
  %.pn283.in326 = phi ptr [ %.pn283327, %for.inc150.for.body139_crit_edge ], [ %21, %for.end122.for.body139_crit_edge ]
  %total_invalidated.0325 = phi i64 [ %total_invalidated.1, %for.inc150.for.body139_crit_edge ], [ 0, %for.end122.for.body139_crit_edge ]
  %id.8324 = phi i32 [ %id.9, %for.inc150.for.body139_crit_edge ], [ 0, %for.end122.for.body139_crit_edge ]
  %22 = ptrtoint ptr %.pn283.in326 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn283327 = load ptr, ptr %.pn283.in326, align 4
  %bo141 = getelementptr i8, ptr %.pn283.in326, i32 -8
  %23 = ptrtoint ptr %bo141 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bo141, align 4
  %tobool142.not = icmp eq ptr %24, null
  br i1 %tobool142.not, label %for.body139.for.inc150_crit_edge, label %if.end144

for.body139.for.inc150_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc150

if.end144:                                        ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #16
  %inc145 = add i32 %id.8324, 1
  %call148 = tail call i64 @amdgpu_bo_print_info(i32 noundef %id.8324, ptr noundef nonnull %24, ptr noundef %m) #14
  %add149 = add i64 %call148, %total_invalidated.0325
  br label %for.inc150

for.inc150:                                       ; preds = %if.end144, %for.body139.for.inc150_crit_edge
  %id.9 = phi i32 [ %inc145, %if.end144 ], [ %id.8324, %for.body139.for.inc150_crit_edge ]
  %total_invalidated.1 = phi i64 [ %add149, %if.end144 ], [ %total_invalidated.0325, %for.body139.for.inc150_crit_edge ]
  %cmp137.not = icmp eq ptr %.pn283327, %invalidated
  br i1 %cmp137.not, label %for.inc150.for.end157_crit_edge, label %for.inc150.for.body139_crit_edge

for.inc150.for.body139_crit_edge:                 ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body139

for.inc150.for.end157_crit_edge:                  ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end157

for.end157:                                       ; preds = %for.inc150.for.end157_crit_edge, %for.end122.for.end157_crit_edge
  %id.8.lcssa = phi i32 [ 0, %for.end122.for.end157_crit_edge ], [ %id.9, %for.inc150.for.end157_crit_edge ]
  %total_invalidated.0.lcssa = phi i64 [ 0, %for.end122.for.end157_crit_edge ], [ %total_invalidated.1, %for.inc150.for.end157_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.34) #14
  %done = getelementptr inbounds %struct.amdgpu_vm, ptr %vm, i32 0, i32 11
  %25 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %done, align 8
  %cmp172.not331 = icmp eq ptr %26, %done
  br i1 %cmp172.not331, label %for.end157.for.end192_crit_edge, label %for.end157.for.body174_crit_edge

for.end157.for.body174_crit_edge:                 ; preds = %for.end157
  br label %for.body174

for.end157.for.end192_crit_edge:                  ; preds = %for.end157
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end192

for.body174:                                      ; preds = %for.inc185.for.body174_crit_edge, %for.end157.for.body174_crit_edge
  %.pn284.in334 = phi ptr [ %.pn284335, %for.inc185.for.body174_crit_edge ], [ %26, %for.end157.for.body174_crit_edge ]
  %total_done.0333 = phi i64 [ %total_done.1, %for.inc185.for.body174_crit_edge ], [ 0, %for.end157.for.body174_crit_edge ]
  %id.10332 = phi i32 [ %id.11, %for.inc185.for.body174_crit_edge ], [ 0, %for.end157.for.body174_crit_edge ]
  %27 = ptrtoint ptr %.pn284.in334 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn284335 = load ptr, ptr %.pn284.in334, align 4
  %bo176 = getelementptr i8, ptr %.pn284.in334, i32 -8
  %28 = ptrtoint ptr %bo176 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bo176, align 4
  %tobool177.not = icmp eq ptr %29, null
  br i1 %tobool177.not, label %for.body174.for.inc185_crit_edge, label %if.end179

for.body174.for.inc185_crit_edge:                 ; preds = %for.body174
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc185

if.end179:                                        ; preds = %for.body174
  call void @__sanitizer_cov_trace_pc() #16
  %inc180 = add i32 %id.10332, 1
  %call183 = tail call i64 @amdgpu_bo_print_info(i32 noundef %id.10332, ptr noundef nonnull %29, ptr noundef %m) #14
  %add184 = add i64 %call183, %total_done.0333
  br label %for.inc185

for.inc185:                                       ; preds = %if.end179, %for.body174.for.inc185_crit_edge
  %id.11 = phi i32 [ %inc180, %if.end179 ], [ %id.10332, %for.body174.for.inc185_crit_edge ]
  %total_done.1 = phi i64 [ %add184, %if.end179 ], [ %total_done.0333, %for.body174.for.inc185_crit_edge ]
  %cmp172.not = icmp eq ptr %.pn284335, %done
  br i1 %cmp172.not, label %for.inc185.for.end192_crit_edge, label %for.inc185.for.body174_crit_edge

for.inc185.for.body174_crit_edge:                 ; preds = %for.inc185
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body174

for.inc185.for.end192_crit_edge:                  ; preds = %for.inc185
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end192

for.end192:                                       ; preds = %for.inc185.for.end192_crit_edge, %for.end157.for.end192_crit_edge
  %id.10.lcssa = phi i32 [ 0, %for.end157.for.end192_crit_edge ], [ %id.11, %for.inc185.for.end192_crit_edge ]
  %total_done.0.lcssa = phi i64 [ 0, %for.end157.for.end192_crit_edge ], [ %total_done.1, %for.inc185.for.end192_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %invalidated_lock) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i64 noundef %total_idle.0.lcssa, i32 noundef %id.0.lcssa) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i64 noundef %total_evicted.0.lcssa, i32 noundef %id.2.lcssa) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i64 noundef %total_relocated.0.lcssa, i32 noundef %id.4.lcssa) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i64 noundef %total_moved.0.lcssa, i32 noundef %id.6.lcssa) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i64 noundef %total_invalidated.0.lcssa, i32 noundef %id.8.lcssa) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i64 noundef %total_done.0.lcssa, i32 noundef %id.10.lcssa) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_print_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_vm_flush(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @amdgpu_gmc_get_pde_for_bo(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_vm_pt_next_dfs(ptr nocapture noundef readonly %adev, ptr nocapture noundef %cursor) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %entry1 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 2
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.end

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %entry1, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call = tail call fastcc zeroext i1 @amdgpu_vm_pt_sibling(ptr noundef %adev, ptr noundef %cursor)
  br i1 %call, label %while.cond.preheader, label %if.else7

while.cond.preheader:                             ; preds = %if.else
  %level.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 3
  %5 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i22 = icmp eq i32 %6, 3
  br i1 %cmp.i22, label %while.cond.preheader.if.end10_crit_edge, label %lor.lhs.false.i.lr.ph

while.cond.preheader.if.end10_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

lor.lhs.false.i.lr.ph:                            ; preds = %while.cond.preheader
  %root_level.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %block_size.i29.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %7 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %entry1, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %amdgpu_vm_pt_descendant.exit.lor.lhs.false.i_crit_edge, %lor.lhs.false.i.lr.ph
  %8 = phi ptr [ %.pr, %lor.lhs.false.i.lr.ph ], [ %arrayidx.i, %amdgpu_vm_pt_descendant.exit.lor.lhs.false.i_crit_edge ]
  %9 = phi i32 [ %6, %lor.lhs.false.i.lr.ph ], [ %inc.i, %amdgpu_vm_pt_descendant.exit.lor.lhs.false.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end10_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %bo.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bo.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.if.end10_crit_edge, label %if.end.i

lor.lhs.false2.i.if.end10_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %12 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %root_level.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.not.i.i = icmp ult i32 %13, %9
  %spec.select.i = select i1 %cmp.not.i.i, i32 511, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %switch.i = icmp ult i32 %9, 3
  br i1 %switch.i, label %sw.bb.i.i, label %if.end.i.amdgpu_vm_pt_descendant.exit_crit_edge

if.end.i.amdgpu_vm_pt_descendant.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_descendant.exit

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i28.i = sub nuw nsw i32 2, %9
  %mul.i.i = mul nuw nsw i32 %sub.i28.i, 9
  %14 = ptrtoint ptr %block_size.i29.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_size.i29.i, align 4
  %add.i.i = add i32 %15, %mul.i.i
  br label %amdgpu_vm_pt_descendant.exit

amdgpu_vm_pt_descendant.exit:                     ; preds = %sw.bb.i.i, %if.end.i.amdgpu_vm_pt_descendant.exit_crit_edge
  %retval.0.i30.i = phi i32 [ %add.i.i, %sw.bb.i.i ], [ -1, %if.end.i.amdgpu_vm_pt_descendant.exit_crit_edge ]
  %inc.i = add i32 %9, 1
  %16 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i, ptr %level.i, align 8
  %17 = ptrtoint ptr %cursor to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cursor, align 8
  %sh_prom.i = zext i32 %retval.0.i30.i to i64
  %shr.i = lshr i64 %18, %sh_prom.i
  %19 = trunc i64 %shr.i to i32
  %conv9.i = and i32 %spec.select.i, %19
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %8, ptr %parent, align 8
  %21 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bo.i, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_bo_vm, ptr %22, i32 0, i32 3, i32 %conv9.i
  %23 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.i, ptr %entry1, align 4
  %cmp.i = icmp eq i32 %inc.i, 3
  br i1 %cmp.i, label %amdgpu_vm_pt_descendant.exit.if.end10_crit_edge, label %amdgpu_vm_pt_descendant.exit.lor.lhs.false.i_crit_edge

amdgpu_vm_pt_descendant.exit.lor.lhs.false.i_crit_edge: ; preds = %amdgpu_vm_pt_descendant.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

amdgpu_vm_pt_descendant.exit.if.end10_crit_edge:  ; preds = %amdgpu_vm_pt_descendant.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.else7:                                         ; preds = %if.else
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  %tobool.not.i18 = icmp eq ptr %25, null
  br i1 %tobool.not.i18, label %if.else7.if.end10_crit_edge, label %if.end.i20

if.else7.if.end10_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end.i20:                                       ; preds = %if.else7
  %level.i19 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 3
  %26 = ptrtoint ptr %level.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %level.i19, align 8
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %level.i19, align 8
  %28 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %entry1, align 4
  %bo.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bo.i.i, align 4
  %parent1.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i20.amdgpu_vm_pt_parent.exit.i_crit_edge, label %if.end.i.i

if.end.i20.amdgpu_vm_pt_parent.exit.i_crit_edge:  ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_parent.exit.i

if.end.i.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #16
  %vm_bo.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %vm_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vm_bo.i.i, align 8
  br label %amdgpu_vm_pt_parent.exit.i

amdgpu_vm_pt_parent.exit.i:                       ; preds = %if.end.i.i, %if.end.i20.amdgpu_vm_pt_parent.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ null, %if.end.i20.amdgpu_vm_pt_parent.exit.i_crit_edge ]
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i.i, ptr %parent, align 8
  br label %if.end10

if.end10:                                         ; preds = %amdgpu_vm_pt_parent.exit.i, %if.else7.if.end10_crit_edge, %amdgpu_vm_pt_descendant.exit.if.end10_crit_edge, %lor.lhs.false2.i.if.end10_crit_edge, %lor.lhs.false.i.if.end10_crit_edge, %while.cond.preheader.if.end10_crit_edge, %if.then3, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @amdgpu_vm_pt_sibling(ptr nocapture noundef readonly %adev, ptr nocapture noundef %cursor) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %level = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 3
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 8
  %sub = add i32 %3, -1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %3, label %sw.default.i [
    i32 1, label %if.end.sw.bb.i_crit_edge
    i32 2, label %if.end.sw.bb.i_crit_edge28
    i32 3, label %if.end.sw.bb.i_crit_edge29
    i32 4, label %if.end.amdgpu_vm_level_shift.exit_crit_edge
  ]

if.end.amdgpu_vm_level_shift.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit

if.end.sw.bb.i_crit_edge29:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge28:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge28, %if.end.sw.bb.i_crit_edge29
  %sub.i = sub nuw nsw i32 3, %3
  %mul.i = mul nuw nsw i32 %sub.i, 9
  %block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %5 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %block_size.i, align 4
  %add.i = add i32 %6, %mul.i
  br label %amdgpu_vm_level_shift.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit

amdgpu_vm_level_shift.exit:                       ; preds = %sw.default.i, %sw.bb.i, %if.end.amdgpu_vm_level_shift.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %sw.default.i ], [ %add.i, %sw.bb.i ], [ 0, %if.end.amdgpu_vm_level_shift.exit_crit_edge ]
  %root_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %7 = ptrtoint ptr %root_level.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %root_level.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %8, label %sw.default.i.i [
    i32 0, label %amdgpu_vm_level_shift.exit.sw.bb.i.i_crit_edge
    i32 1, label %amdgpu_vm_level_shift.exit.sw.bb.i.i_crit_edge30
    i32 2, label %amdgpu_vm_level_shift.exit.sw.bb.i.i_crit_edge31
    i32 3, label %amdgpu_vm_level_shift.exit.amdgpu_vm_level_shift.exit.i_crit_edge
  ]

amdgpu_vm_level_shift.exit.amdgpu_vm_level_shift.exit.i_crit_edge: ; preds = %amdgpu_vm_level_shift.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit.i

amdgpu_vm_level_shift.exit.sw.bb.i.i_crit_edge31: ; preds = %amdgpu_vm_level_shift.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

amdgpu_vm_level_shift.exit.sw.bb.i.i_crit_edge30: ; preds = %amdgpu_vm_level_shift.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

amdgpu_vm_level_shift.exit.sw.bb.i.i_crit_edge:   ; preds = %amdgpu_vm_level_shift.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %amdgpu_vm_level_shift.exit.sw.bb.i.i_crit_edge, %amdgpu_vm_level_shift.exit.sw.bb.i.i_crit_edge30, %amdgpu_vm_level_shift.exit.sw.bb.i.i_crit_edge31
  %sub.i.i = sub nuw nsw i32 2, %8
  %mul.i.i = mul nuw nsw i32 %sub.i.i, 9
  %block_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %10 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_size.i.i, align 4
  %add.i.i = add i32 %11, %mul.i.i
  br label %amdgpu_vm_level_shift.exit.i

sw.default.i.i:                                   ; preds = %amdgpu_vm_level_shift.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_level_shift.exit.i

amdgpu_vm_level_shift.exit.i:                     ; preds = %sw.default.i.i, %sw.bb.i.i, %amdgpu_vm_level_shift.exit.amdgpu_vm_level_shift.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -1, %sw.default.i.i ], [ %add.i.i, %sw.bb.i.i ], [ 0, %amdgpu_vm_level_shift.exit.amdgpu_vm_level_shift.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub)
  %cmp.i = icmp eq i32 %8, %sub
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %amdgpu_vm_level_shift.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %12 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %max_pfn.i, align 8
  %sub.i24 = add i64 %13, -1
  %sh_prom.i = zext i32 %retval.0.i.i to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub4.i = xor i64 %notmask.i, -1
  %or.i = or i64 %sub.i24, %sub4.i
  %add.i25 = add i64 %or.i, 1
  %shr.i = lshr i64 %add.i25, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %amdgpu_vm_num_entries.exit

if.else.i:                                        ; preds = %amdgpu_vm_level_shift.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp6.not.i = icmp eq i32 %sub, 3
  br i1 %cmp6.not.i, label %if.else9.i, label %if.else.i.amdgpu_vm_num_entries.exit_crit_edge

if.else.i.amdgpu_vm_num_entries.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_num_entries.exit

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %block_size.i26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %14 = ptrtoint ptr %block_size.i26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_size.i26, align 4
  %shl11.i = shl nuw i32 1, %15
  br label %amdgpu_vm_num_entries.exit

amdgpu_vm_num_entries.exit:                       ; preds = %if.else9.i, %if.else.i.amdgpu_vm_num_entries.exit_crit_edge, %if.then.i
  %retval.0.i27 = phi i32 [ %conv.i, %if.then.i ], [ %shl11.i, %if.else9.i ], [ 512, %if.else.i.amdgpu_vm_num_entries.exit_crit_edge ]
  %entry4 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 2
  %16 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entry4, align 4
  %bo = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo, align 4
  %sub6 = add i32 %retval.0.i27, -1
  %arrayidx = getelementptr %struct.amdgpu_bo_vm, ptr %19, i32 0, i32 3, i32 %sub6
  %cmp = icmp eq ptr %17, %arrayidx
  br i1 %cmp, label %amdgpu_vm_num_entries.exit.cleanup_crit_edge, label %if.end8

amdgpu_vm_num_entries.exit.cleanup_crit_edge:     ; preds = %amdgpu_vm_num_entries.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %amdgpu_vm_num_entries.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sh_prom = zext i32 %retval.0.i to i64
  %shl = shl nuw i64 1, %sh_prom
  %20 = ptrtoint ptr %cursor to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cursor, align 8
  %add = add i64 %21, %shl
  %neg = sub i64 0, %shl
  %and = and i64 %add, %neg
  store i64 %and, ptr %cursor, align 8
  %incdec.ptr = getelementptr %struct.amdgpu_vm_bo_base, ptr %17, i32 1
  %22 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %incdec.ptr, ptr %entry4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %amdgpu_vm_num_entries.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end8 ], [ false, %entry.cleanup_crit_edge ], [ false, %amdgpu_vm_num_entries.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_update_ptes(ptr noundef %p, i64 noundef %start, i64 noundef %end, i32 noundef %nptes, i64 noundef %dst, i64 noundef %incr, i64 noundef %flags, i32 noundef %pid, i64 noundef %vm_ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_update_ptes, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_update_ptes, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !158
  %call42 = tail call i32 @__traceiter_amdgpu_vm_update_ptes(ptr noundef null, ptr noundef %p, i64 noundef %start, i64 noundef %end, i32 noundef %nptes, i64 noundef %dst, i64 noundef %incr, i64 noundef %flags, i32 noundef %pid, i64 noundef %vm_ctx) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !159
  %13 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_update_ptes, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_update_ptes, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_vm_update_ptes.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_amdgpu_vm_update_ptes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 366, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_vm_pt_next(ptr nocapture noundef readonly %adev, ptr nocapture noundef %cursor) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %level.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 3
  %0 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %entry.amdgpu_vm_pt_descendant.exit_crit_edge, label %lor.lhs.false.i

entry.amdgpu_vm_pt_descendant.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_descendant.exit

lor.lhs.false.i:                                  ; preds = %entry
  %entry1.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 2
  %2 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.amdgpu_vm_pt_descendant.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.amdgpu_vm_pt_descendant.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_descendant.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %bo.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.amdgpu_vm_pt_descendant.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.amdgpu_vm_pt_descendant.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_descendant.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %root_level.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 9
  %6 = ptrtoint ptr %root_level.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %root_level.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp.not.i.i = icmp ult i32 %7, %1
  %spec.select.i = select i1 %cmp.not.i.i, i32 511, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch.i = icmp ult i32 %1, 3
  br i1 %switch.i, label %sw.bb.i.i, label %if.end.i.amdgpu_vm_pt_descendant.exit.thread_crit_edge

if.end.i.amdgpu_vm_pt_descendant.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_descendant.exit.thread

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i28.i = sub nuw nsw i32 2, %1
  %mul.i.i = mul nuw nsw i32 %sub.i28.i, 9
  %block_size.i29.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %8 = ptrtoint ptr %block_size.i29.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_size.i29.i, align 4
  %add.i.i = add i32 %9, %mul.i.i
  br label %amdgpu_vm_pt_descendant.exit.thread

amdgpu_vm_pt_descendant.exit.thread:              ; preds = %sw.bb.i.i, %if.end.i.amdgpu_vm_pt_descendant.exit.thread_crit_edge
  %retval.0.i30.i = phi i32 [ %add.i.i, %sw.bb.i.i ], [ -1, %if.end.i.amdgpu_vm_pt_descendant.exit.thread_crit_edge ]
  %inc.i = add i32 %1, 1
  %10 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i, ptr %level.i, align 8
  %11 = ptrtoint ptr %cursor to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cursor, align 8
  %sh_prom.i = zext i32 %retval.0.i30.i to i64
  %shr.i = lshr i64 %12, %sh_prom.i
  %13 = trunc i64 %shr.i to i32
  %conv9.i = and i32 %spec.select.i, %13
  %parent.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %parent.i, align 8
  %15 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo.i, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_bo_vm, ptr %16, i32 0, i32 3, i32 %conv9.i
  %17 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.i, ptr %entry1.i, align 4
  br label %while.end

amdgpu_vm_pt_descendant.exit:                     ; preds = %lor.lhs.false2.i.amdgpu_vm_pt_descendant.exit_crit_edge, %lor.lhs.false.i.amdgpu_vm_pt_descendant.exit_crit_edge, %entry.amdgpu_vm_pt_descendant.exit_crit_edge
  %call114 = tail call fastcc zeroext i1 @amdgpu_vm_pt_sibling(ptr noundef %adev, ptr noundef %cursor)
  br i1 %call114, label %amdgpu_vm_pt_descendant.exit.while.end_crit_edge, label %while.body.lr.ph

amdgpu_vm_pt_descendant.exit.while.end_crit_edge: ; preds = %amdgpu_vm_pt_descendant.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %amdgpu_vm_pt_descendant.exit
  %parent.i9 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 1
  %entry2.i = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, ptr %cursor, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %amdgpu_vm_pt_ancestor.exit.while.body_crit_edge, %while.body.lr.ph
  %18 = ptrtoint ptr %parent.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i9, align 8
  %tobool.not.i10 = icmp eq ptr %19, null
  br i1 %tobool.not.i10, label %if.then3, label %if.end.i12

if.end.i12:                                       ; preds = %while.body
  %20 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %level.i, align 8
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %level.i, align 8
  %22 = ptrtoint ptr %entry2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %entry2.i, align 4
  %bo.i.i = getelementptr inbounds %struct.amdgpu_vm_bo_base, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bo.i.i, align 4
  %parent1.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i12.amdgpu_vm_pt_ancestor.exit_crit_edge, label %if.end.i.i

if.end.i12.amdgpu_vm_pt_ancestor.exit_crit_edge:  ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_pt_ancestor.exit

if.end.i.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #16
  %vm_bo.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %vm_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm_bo.i.i, align 8
  br label %amdgpu_vm_pt_ancestor.exit

amdgpu_vm_pt_ancestor.exit:                       ; preds = %if.end.i.i, %if.end.i12.amdgpu_vm_pt_ancestor.exit_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ null, %if.end.i12.amdgpu_vm_pt_ancestor.exit_crit_edge ]
  %29 = ptrtoint ptr %parent.i9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i.i, ptr %parent.i9, align 8
  %call1 = tail call fastcc zeroext i1 @amdgpu_vm_pt_sibling(ptr noundef %adev, ptr noundef %cursor)
  br i1 %call1, label %amdgpu_vm_pt_ancestor.exit.while.end_crit_edge, label %amdgpu_vm_pt_ancestor.exit.while.body_crit_edge

amdgpu_vm_pt_ancestor.exit.while.body_crit_edge:  ; preds = %amdgpu_vm_pt_ancestor.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

amdgpu_vm_pt_ancestor.exit.while.end_crit_edge:   ; preds = %amdgpu_vm_pt_ancestor.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %cursor to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %cursor, align 8
  br label %while.end

while.end:                                        ; preds = %if.then3, %amdgpu_vm_pt_ancestor.exit.while.end_crit_edge, %amdgpu_vm_pt_descendant.exit.while.end_crit_edge, %amdgpu_vm_pt_descendant.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_vm_update_ptes(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_vm_bo_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_vm_bo_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_vm_add_prt_cb(ptr noundef %adev, ptr noundef %fence) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %0 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmc_funcs, align 4
  %set_prt = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %set_prt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_prt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 16) #17
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq ptr %fence, null
  br i1 %tobool3.not, label %if.then2.if.end6_crit_edge, label %if.then4

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %fence, i1 noundef zeroext false, i32 noundef 2147483647) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2.if.end6_crit_edge
  %num_prt_users.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_prt_users.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %num_prt_users.i, i32 1, i32 3, i32 1) #14
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_prt_users.i, ptr %num_prt_users.i, i32 1, ptr elementtype(i32) %num_prt_users.i) #14, !srcloc !161
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %prt_lock.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 15
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %prt_lock.i.i) #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_prt_users.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %num_prt_users.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %num_prt_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.i = icmp ne i32 %7, 0
  %8 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gmc_funcs, align 4
  %set_prt.i.i = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %set_prt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_prt.i.i, align 4
  tail call void %11(ptr noundef %adev, i1 noundef zeroext %tobool.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %prt_lock.i.i, i32 noundef %call2.i.i) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %adev, ptr %call7.i, align 8
  %tobool8.not = icmp eq ptr %fence, null
  br i1 %tobool8.not, label %if.else.if.then12_crit_edge, label %lor.lhs.false

if.else.if.then12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.else
  %cb9 = getelementptr inbounds %struct.amdgpu_prt_cb, ptr %call7.i, i32 0, i32 1
  %call10 = tail call i32 @dma_fence_add_callback(ptr noundef nonnull %fence, ptr noundef %cb9, ptr noundef nonnull @amdgpu_vm_prt_cb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.else.if.then12_crit_edge
  %cb13 = getelementptr inbounds %struct.amdgpu_prt_cb, ptr %call7.i, i32 0, i32 1
  tail call void @amdgpu_vm_prt_cb(ptr noundef %fence, ptr noundef %cb13)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %lor.lhs.false.cleanup_crit_edge, %if.then.i, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vm_prt_cb(ptr nocapture noundef readnone %fence, ptr noundef %_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_cb, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %num_prt_users.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 65, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_prt_users.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %num_prt_users.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_prt_users.i, ptr %num_prt_users.i, i32 1, ptr elementtype(i32) %num_prt_users.i) #14, !srcloc !161
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_vm_prt_put.exit_crit_edge

entry.amdgpu_vm_prt_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_prt_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prt_lock.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 65, i32 15
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %prt_lock.i.i) #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_prt_users.i, i32 noundef 4) #14
  %3 = ptrtoint ptr %num_prt_users.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %num_prt_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i = icmp ne i32 %4, 0
  %gmc_funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %5 = ptrtoint ptr %gmc_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gmc_funcs.i.i, align 4
  %set_prt.i.i = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %set_prt.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_prt.i.i, align 4
  tail call void %8(ptr noundef %1, i1 noundef zeroext %tobool.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %prt_lock.i.i, i32 noundef %call2.i.i) #14
  br label %amdgpu_vm_prt_put.exit

amdgpu_vm_prt_put.exit:                           ; preds = %if.then.i, %entry.amdgpu_vm_prt_put.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_vm_bo_map(ptr noundef %bo_va, ptr noundef %mapping) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_map, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_vm_bo_map, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !163
  %call42 = tail call i32 @__traceiter_amdgpu_vm_bo_map(ptr noundef null, ptr noundef %bo_va, ptr noundef %mapping) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !164
  %13 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !120) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_map, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_vm_bo_map, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_vm_bo_map.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_amdgpu_vm_bo_map.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 265, ptr noundef nonnull @.str.42) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !120) #14
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
declare dso_local i32 @__traceiter_amdgpu_vm_bo_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amdgpu_vm_it_augment_rotate(ptr nocapture noundef %rb_old, ptr nocapture noundef writeonly %rb_new) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %__subtree_last = getelementptr i8, ptr %rb_old, i32 28
  %0 = ptrtoint ptr %__subtree_last to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %__subtree_last, align 8
  %__subtree_last4 = getelementptr i8, ptr %rb_new, i32 28
  %2 = ptrtoint ptr %__subtree_last4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %__subtree_last4, align 8
  %last.i = getelementptr i8, ptr %rb_old, i32 20
  %3 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %last.i, align 8
  %rb_left.i = getelementptr i8, ptr %rb_old, i32 8
  %5 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %__subtree_last.i = getelementptr i8, ptr %6, i32 28
  %7 = ptrtoint ptr %__subtree_last.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %__subtree_last.i, align 8
  %9 = tail call i64 @llvm.umax.i64(i64 %8, i64 %4) #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %entry.if.end5.i_crit_edge
  %max.0.i = phi i64 [ %4, %entry.if.end5.i_crit_edge ], [ %9, %if.then.i ]
  %rb_right.i = getelementptr i8, ptr %rb_old, i32 4
  %10 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_right.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %if.end5.i.amdgpu_vm_it_augment_compute_max.exit_crit_edge, label %if.then8.i

if.end5.i.amdgpu_vm_it_augment_compute_max.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %amdgpu_vm_it_augment_compute_max.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %__subtree_last14.i = getelementptr i8, ptr %11, i32 28
  %12 = ptrtoint ptr %__subtree_last14.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %__subtree_last14.i, align 8
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 %max.0.i) #14
  br label %amdgpu_vm_it_augment_compute_max.exit

amdgpu_vm_it_augment_compute_max.exit:            ; preds = %if.then8.i, %if.end5.i.amdgpu_vm_it_augment_compute_max.exit_crit_edge
  %max.1.i = phi i64 [ %max.0.i, %if.end5.i.amdgpu_vm_it_augment_compute_max.exit_crit_edge ], [ %14, %if.then8.i ]
  %15 = ptrtoint ptr %__subtree_last to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %max.1.i, ptr %__subtree_last, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_vm_bo_unmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_vm_bo_cs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_get_preferred_domain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_vm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_add_to_shadow_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !103, !104, !106, !107, !109, !111, !112, !113, !114, !115, !117, !119}
!llvm.named.register.sp = !{!120}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 2351, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @amdgpu_vm_bo_map._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @amdgpu_vm_bo_map._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 2816, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @amdgpu_vm_adjust_size._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @amdgpu_vm_adjust_size._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 2864, i32 3}
!16 = !{ptr @amdgpu_vm_adjust_size._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @amdgpu_vm_adjust_size._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 2882, i32 2}
!20 = !{ptr @amdgpu_vm_adjust_size._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @amdgpu_vm_adjust_size._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @amdgpu_vm_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 2929, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 2952, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 2954, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @amdgpu_vm_init.__key.19, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 2965, i32 2}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3089, i32 2}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3175, i32 3}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @amdgpu_vm_fini._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @amdgpu_vm_fini._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @amdgpu_vm_manager_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3215, i32 2}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3422, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @amdgpu_vm_handle_fault.__UNIQUE_ID_ddebug428, !46, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!50 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3437, i32 3}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3471, i32 14}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3480, i32 14}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3489, i32 14}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3498, i32 14}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3507, i32 14}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3517, i32 14}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3526, i32 16}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3528, i32 16}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3530, i32 16}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3532, i32 16}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3534, i32 16}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 3536, i32 16}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 415, i32 1}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h", i32 62, i32 3}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 324, i32 1}
!89 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 309, i32 1}
!92 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 314, i32 1}
!95 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 243, i32 1}
!98 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!99 = distinct !{null, !100, !"amdgpu_vm_it_augment", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c", i32 69, i32 1}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 267, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 319, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h", i32 286, i32 2}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!111 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @amdgpu_bo_reserve._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @amdgpu_bo_reserve._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!117 = !{ptr @xa_init_flags.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!119 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!120 = !{!"sp"}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i8 0, i8 2}
!131 = !{i64 2148721405}
!132 = !{i64 2148635845, i64 2148635877, i64 2148635906, i64 2148635940, i64 2148635971, i64 2148635994}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2149368080}
!135 = !{i64 2148633380, i64 2148633412, i64 2148633441, i64 2148633475, i64 2148633506, i64 2148633529}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i64 2148456448, i64 2148456453, i64 2148456466, i64 2148456510, i64 2148456544, i64 2148456565}
!138 = !{i64 2159247845}
!139 = !{i64 2159248076}
!140 = !{i64 2149526406}
!141 = !{i64 2149527442}
!142 = !{!"auto-init"}
!143 = !{i64 2158886383, i64 2158886903, i64 2158886420, i64 2158886476, i64 2158886510, i64 2158886534, i64 2158886575, i64 2158886596, i64 2158886624, i64 2158886658}
!144 = !{i32 0, i32 33}
!145 = !{i64 2158893910, i64 2158894430, i64 2158893947, i64 2158894003, i64 2158894037, i64 2158894061, i64 2158894102, i64 2158894123, i64 2158894151, i64 2158894185}
!146 = !{i64 2159137774}
!147 = !{i64 2159137989}
!148 = !{i64 2159154576}
!149 = !{i64 2159154793}
!150 = !{i64 2159116877}
!151 = !{i64 2159117104}
!152 = !{i64 2148717285}
!153 = !{i64 2148632570, i64 2148632602, i64 2148632631, i64 2148632665, i64 2148632696, i64 2148632719}
!154 = !{i64 2148717514}
!155 = !{i64 2159171242}
!156 = !{i64 2159171449}
!157 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!158 = !{i64 2159190334}
!159 = !{i64 2159190641}
!160 = !{i64 2148720326}
!161 = !{i64 2148635035, i64 2148635067, i64 2148635096, i64 2148635130, i64 2148635161, i64 2148635184}
!162 = !{i64 2148720555}
!163 = !{i64 2159099634}
!164 = !{i64 2159099857}
