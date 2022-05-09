; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_i2c_chan = type { %struct.i2c_adapter, ptr, %struct.i2c_algo_bit_data, %struct.amdgpu_i2c_bus_rec, %struct.drm_dp_aux, i8, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
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
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.99, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
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
%struct.amdgpu_vmid = type { %struct.list_head, %struct.amdgpu_sync, ptr, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.amdgpu_vmhub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_mman = type { %struct.ttm_device, i8, ptr, ptr, ptr, i8, %struct.mutex, %struct.drm_sched_entity, %struct.amdgpu_vram_mgr, %struct.amdgpu_gtt_mgr, %struct.amdgpu_preempt_mgr, i64, ptr, i64, ptr, i8, ptr, i64, i64, ptr, i32, ptr, i64, i64, ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.95] }
%struct.anon.95 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.amdgpu_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i16, %struct.amdgpu_hpd, %struct.amdgpu_router, ptr, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.amdgpu_router = type { i32, %struct.amdgpu_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@amdgpu_hw_i2c = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_i2c_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&i2c->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AMDGPU i2c hw bus %s\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_atombios_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @amdgpu_atombios_i2c_xfer, ptr null, ptr null, ptr null, ptr @amdgpu_atombios_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AMDGPU i2c bit bus %s\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register bit i2c %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016[drm] hw_i2c forced on, you may experience display detection problems!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amdgpu_i2c_init\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_i2c_init._entry_ptr = internal global ptr @amdgpu_i2c_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"val = 0x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c 0x%02x 0x%02x read failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i2c 0x%02x 0x%02x write failed\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 182, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 187, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"amdgpu_atombios_i2c_algo\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 156, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 195, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 208, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 224, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 233, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 310, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 312, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 334, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @amdgpu_i2c_init._entry, ptr @amdgpu_i2c_init._entry_ptr, ptr @amdgpu_i2c_create.__key, ptr @.str, ptr @.str.1, ptr @amdgpu_atombios_i2c_algo, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_i2c_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atombios_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_i2c_create(ptr noundef %dev, ptr nocapture noundef readonly %rec, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mm_i2c = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, ptr %rec, i32 0, i32 4
  %0 = ptrtoint ptr %mm_i2c to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mm_i2c, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_hw_i2c to i32))
  %2 = load i32, ptr @amdgpu_hw_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 3312) #10
  %cmp1 = icmp eq ptr %call7.i.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rec4 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %rec4, ptr %rec, i32 76)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call7.i.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %class, align 4
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev6, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %parent, align 8
  %dev9 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev9, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @amdgpu_i2c_create.__key) #7
  %hw_capable = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, ptr %rec, i32 0, i32 3
  %12 = ptrtoint ptr %hw_capable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_capable, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.end3.if.else_crit_edge, label %land.lhs.true12

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true12:                                  ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_hw_i2c to i32))
  %14 = load i32, ptr @amdgpu_hw_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.else_crit_edge, label %if.then14

land.lhs.true12.if.else_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true12
  %name16 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name16, i32 noundef 48, ptr noundef nonnull @.str.1, ptr noundef %name)
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @amdgpu_atombios_i2c_algo, ptr %algo, align 8
  %call20 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then14.cleanup_crit_edge, label %if.then14.out_free_crit_edge

if.then14.out_free_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true12.if.else_crit_edge, %if.end3.if.else_crit_edge
  %name25 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %call27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name25, i32 noundef 48, ptr noundef nonnull @.str.2, ptr noundef %name)
  %bit = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 2
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bit, ptr %algo_data, align 4
  %pre_xfer = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %pre_xfer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @amdgpu_i2c_pre_xfer, ptr %pre_xfer, align 8
  %post_xfer = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %post_xfer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @amdgpu_i2c_post_xfer, ptr %post_xfer, align 4
  %setsda = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @amdgpu_i2c_set_data, ptr %setsda, align 8
  %setscl = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @amdgpu_i2c_set_clock, ptr %setscl, align 4
  %getsda = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @amdgpu_i2c_get_data, ptr %getsda, align 8
  %getscl = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @amdgpu_i2c_get_clock, ptr %getscl, align 4
  %udelay = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 7
  %23 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %udelay, align 8
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2200, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 2200
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  %timeout = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select.i, ptr %timeout, align 4
  %25 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %bit, align 4
  %call40 = tail call i32 @i2c_bit_add_bus(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else.cleanup_crit_edge, label %if.then42

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef %name) #7
  br label %out_free

out_free:                                         ; preds = %if.then42, %if.then14.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.else.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.else.cleanup_crit_edge ], [ %call7.i.i, %if.then14.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_i2c_pre_xfer(ptr nocapture noundef readonly %i2c_adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %mutex = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %hw_capable = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %hw_capable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_capable, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mask_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_clk_reg, align 4
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %7, i32 noundef 0) #7
  %and = and i32 %call3, -65537
  %8 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_clk_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %9, i32 noundef %and, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %a_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %a_clk_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %a_clk_reg, align 4
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %11, i32 noundef 0) #7
  %a_clk_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 15
  %12 = ptrtoint ptr %a_clk_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %a_clk_mask, align 4
  %neg = xor i32 %13, -1
  %and6 = and i32 %call5, %neg
  %14 = ptrtoint ptr %a_clk_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %a_clk_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %15, i32 noundef %and6, i32 noundef 0) #7
  %a_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %a_data_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %a_data_reg, align 4
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %17, i32 noundef 0) #7
  %a_data_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 16
  %18 = ptrtoint ptr %a_data_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %a_data_mask, align 4
  %neg9 = xor i32 %19, -1
  %and10 = and i32 %call8, %neg9
  %20 = ptrtoint ptr %a_data_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %a_data_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %21, i32 noundef %and10, i32 noundef 0) #7
  %en_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 9
  %22 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %en_clk_reg, align 4
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %23, i32 noundef 0) #7
  %en_clk_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 17
  %24 = ptrtoint ptr %en_clk_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %en_clk_mask, align 4
  %neg13 = xor i32 %25, -1
  %and14 = and i32 %call12, %neg13
  %26 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %en_clk_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %27, i32 noundef %and14, i32 noundef 0) #7
  %en_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 10
  %28 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %en_data_reg, align 4
  %call16 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %29, i32 noundef 0) #7
  %en_data_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 18
  %30 = ptrtoint ptr %en_data_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %en_data_mask, align 4
  %neg17 = xor i32 %31, -1
  %and18 = and i32 %call16, %neg17
  %32 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %en_data_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %33, i32 noundef %and18, i32 noundef 0) #7
  %mask_clk_reg20 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %34 = ptrtoint ptr %mask_clk_reg20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask_clk_reg20, align 4
  %call21 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %35, i32 noundef 0) #7
  %mask_clk_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 13
  %36 = ptrtoint ptr %mask_clk_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask_clk_mask, align 4
  %or = or i32 %37, %call21
  %38 = ptrtoint ptr %mask_clk_reg20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask_clk_reg20, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %39, i32 noundef %or, i32 noundef 0) #7
  %40 = ptrtoint ptr %mask_clk_reg20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask_clk_reg20, align 4
  %call24 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %41, i32 noundef 0) #7
  %mask_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 6
  %42 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mask_data_reg, align 4
  %call25 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %43, i32 noundef 0) #7
  %mask_data_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 14
  %44 = ptrtoint ptr %mask_data_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask_data_mask, align 4
  %or26 = or i32 %45, %call25
  %46 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask_data_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %47, i32 noundef %or26, i32 noundef 0) #7
  %48 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mask_data_reg, align 4
  %call29 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %49, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_i2c_post_xfer(ptr nocapture noundef readonly %i2c_adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %mask_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask_clk_reg, align 4
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %5, i32 noundef 0) #7
  %mask_clk_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 13
  %6 = ptrtoint ptr %mask_clk_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_clk_mask, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %call3, %neg
  %8 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_clk_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %9, i32 noundef %and, i32 noundef 0) #7
  %10 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask_clk_reg, align 4
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %11, i32 noundef 0) #7
  %mask_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask_data_reg, align 4
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %13, i32 noundef 0) #7
  %mask_data_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 14
  %14 = ptrtoint ptr %mask_data_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask_data_mask, align 4
  %neg8 = xor i32 %15, -1
  %and9 = and i32 %call7, %neg8
  %16 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask_data_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %17, i32 noundef %and9, i32 noundef 0) #7
  %18 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask_data_reg, align 4
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %19, i32 noundef 0) #7
  %mutex = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_i2c_set_data(ptr nocapture noundef readonly %i2c_priv, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %en_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 10
  %2 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %en_data_reg, align 4
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %3, i32 noundef 0) #7
  %en_data_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 18
  %4 = ptrtoint ptr %en_data_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en_data_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool.not = icmp eq i32 %data, 0
  %spec.select = select i1 %tobool.not, i32 %5, i32 0
  %neg = xor i32 %5, -1
  %and = and i32 %call2, %neg
  %or = or i32 %and, %spec.select
  %6 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %en_data_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %7, i32 noundef %or, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_i2c_set_clock(ptr nocapture noundef readonly %i2c_priv, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %en_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 9
  %2 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %en_clk_reg, align 4
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %3, i32 noundef 0) #7
  %en_clk_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 17
  %4 = ptrtoint ptr %en_clk_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en_clk_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  %spec.select = select i1 %tobool.not, i32 %5, i32 0
  %neg = xor i32 %5, -1
  %and = and i32 %call2, %neg
  %or = or i32 %and, %spec.select
  %6 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %en_clk_reg, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %7, i32 noundef %or, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_i2c_get_data(ptr nocapture noundef readonly %i2c_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %y_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %y_data_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y_data_reg, align 4
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %3, i32 noundef 0) #7
  %y_data_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 20
  %4 = ptrtoint ptr %y_data_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y_data_mask, align 4
  %and = and i32 %5, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_i2c_get_clock(ptr nocapture noundef readonly %i2c_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %y_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 11
  %2 = ptrtoint ptr %y_clk_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y_clk_reg, align 4
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %3, i32 noundef 0) #7
  %y_clk_mask = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 19
  %4 = ptrtoint ptr %y_clk_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y_clk_mask, align 4
  %and = and i32 %5, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_i2c_destroy(ptr noundef %i2c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %i2c, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %has_aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %i2c, i32 0, i32 5
  %0 = ptrtoint ptr %has_aux to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_aux, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end16_crit_edge, label %do.end, !prof !34

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 224, i32 noundef 9, ptr noundef null) #7
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  tail call void @i2c_del_adapter(ptr noundef nonnull %i2c) #7
  tail call void @kfree(ptr noundef nonnull %i2c) #7
  br label %return

return:                                           ; preds = %if.end16, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_i2c_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_hw_i2c to i32))
  %0 = load i32, ptr @amdgpu_hw_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @amdgpu_atombios_i2c_init(ptr noundef %adev) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_i2c_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_i2c_fini(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %has_aux.i = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %has_aux.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_aux.i, align 8, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.amdgpu_i2c_destroy.exit_crit_edge, label %do.end.i, !prof !34

if.end.i.amdgpu_i2c_destroy.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_i2c_destroy.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 224, i32 noundef 9, ptr noundef null) #7
  br label %amdgpu_i2c_destroy.exit

amdgpu_i2c_destroy.exit:                          ; preds = %do.end.i, %if.end.i.amdgpu_i2c_destroy.exit_crit_edge
  tail call void @i2c_del_adapter(ptr noundef nonnull %1) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %amdgpu_i2c_destroy.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_i2c_add(ptr noundef %adev, ptr nocapture noundef readonly %rec, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.cond.2.if.then_crit_edge, label %for.cond.3

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %for.cond.3.if.then_crit_edge, label %for.cond.4

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %11, null
  br i1 %tobool.not.5, label %for.cond.4.if.then_crit_edge, label %for.cond.5

for.cond.4.if.then_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %13, null
  br i1 %tobool.not.6, label %for.cond.5.if.then_crit_edge, label %for.cond.6

for.cond.5.if.then_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %15, null
  br i1 %tobool.not.7, label %for.cond.6.if.then_crit_edge, label %for.cond.7

for.cond.6.if.then_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %17, null
  br i1 %tobool.not.8, label %for.cond.7.if.then_crit_edge, label %for.cond.8

for.cond.7.if.then_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %19, null
  br i1 %tobool.not.9, label %for.cond.8.if.then_crit_edge, label %for.cond.9

for.cond.8.if.then_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp eq ptr %21, null
  br i1 %tobool.not.10, label %for.cond.9.if.then_crit_edge, label %for.cond.10

for.cond.9.if.then_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp eq ptr %23, null
  br i1 %tobool.not.11, label %for.cond.10.if.then_crit_edge, label %for.cond.11

for.cond.10.if.then_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.12, align 4
  %tobool.not.12 = icmp eq ptr %25, null
  br i1 %tobool.not.12, label %for.cond.11.if.then_crit_edge, label %for.cond.12

for.cond.11.if.then_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.13, align 4
  %tobool.not.13 = icmp eq ptr %27, null
  br i1 %tobool.not.13, label %for.cond.12.if.then_crit_edge, label %for.cond.13

for.cond.12.if.then_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.14, align 4
  %tobool.not.14 = icmp eq ptr %29, null
  br i1 %tobool.not.14, label %for.cond.13.if.then_crit_edge, label %for.cond.14

for.cond.13.if.then_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.15, align 4
  %tobool.not.15 = icmp eq ptr %31, null
  br i1 %tobool.not.15, label %for.cond.14.if.then_crit_edge, label %for.cond.14.cleanup_crit_edge

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.14.if.then_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.cond.14.if.then_crit_edge, %for.cond.13.if.then_crit_edge, %for.cond.12.if.then_crit_edge, %for.cond.11.if.then_crit_edge, %for.cond.10.if.then_crit_edge, %for.cond.9.if.then_crit_edge, %for.cond.8.if.then_crit_edge, %for.cond.7.if.then_crit_edge, %for.cond.6.if.then_crit_edge, %for.cond.5.if.then_crit_edge, %for.cond.4.if.then_crit_edge, %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then_crit_edge ], [ %arrayidx.1, %for.cond.if.then_crit_edge ], [ %arrayidx.2, %for.cond.1.if.then_crit_edge ], [ %arrayidx.3, %for.cond.2.if.then_crit_edge ], [ %arrayidx.4, %for.cond.3.if.then_crit_edge ], [ %arrayidx.5, %for.cond.4.if.then_crit_edge ], [ %arrayidx.6, %for.cond.5.if.then_crit_edge ], [ %arrayidx.7, %for.cond.6.if.then_crit_edge ], [ %arrayidx.8, %for.cond.7.if.then_crit_edge ], [ %arrayidx.9, %for.cond.8.if.then_crit_edge ], [ %arrayidx.10, %for.cond.9.if.then_crit_edge ], [ %arrayidx.11, %for.cond.10.if.then_crit_edge ], [ %arrayidx.12, %for.cond.11.if.then_crit_edge ], [ %arrayidx.13, %for.cond.12.if.then_crit_edge ], [ %arrayidx.14, %for.cond.13.if.then_crit_edge ], [ %arrayidx.15, %for.cond.14.if.then_crit_edge ]
  %call1 = tail call ptr @amdgpu_i2c_create(ptr noundef %ddev.i, ptr noundef %rec, ptr noundef %name)
  %32 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1, ptr %arrayidx.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.14.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_i2c_lookup(ptr nocapture noundef readonly %adev, ptr nocapture noundef readonly %i2c_bus) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_id4 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, ptr %i2c_bus, i32 0, i32 1
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %i2c_id = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_id, align 1
  %4 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp6 = icmp eq i8 %3, %5
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %i2c_id.1 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %7, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %i2c_id.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_id.1, align 1
  %10 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp6.1 = icmp eq i8 %9, %11
  br i1 %cmp6.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %13, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %i2c_id.2 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %13, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %i2c_id.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_id.2, align 1
  %16 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp6.2 = icmp eq i8 %15, %17
  br i1 %cmp6.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %19, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %i2c_id.3 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %i2c_id.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_id.3, align 1
  %22 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp6.3 = icmp eq i8 %21, %23
  br i1 %cmp6.3, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %25, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %i2c_id.4 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %25, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %i2c_id.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i2c_id.4, align 1
  %28 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp6.4 = icmp eq i8 %27, %29
  br i1 %cmp6.4, label %land.lhs.true.4.cleanup_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %31, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %i2c_id.5 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %31, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %i2c_id.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i2c_id.5, align 1
  %34 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp6.5 = icmp eq i8 %33, %35
  br i1 %cmp6.5, label %land.lhs.true.5.cleanup_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %37, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %i2c_id.6 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %37, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %i2c_id.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i2c_id.6, align 1
  %40 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp6.6 = icmp eq i8 %39, %41
  br i1 %cmp6.6, label %land.lhs.true.6.cleanup_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 7
  %42 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %43, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %i2c_id.7 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %43, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %i2c_id.7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_id.7, align 1
  %46 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp6.7 = icmp eq i8 %45, %47
  br i1 %cmp6.7, label %land.lhs.true.7.cleanup_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 8
  %48 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %49, null
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %land.lhs.true.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %i2c_id.8 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %49, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %i2c_id.8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %i2c_id.8, align 1
  %52 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp6.8 = icmp eq i8 %51, %53
  br i1 %cmp6.8, label %land.lhs.true.8.cleanup_crit_edge, label %land.lhs.true.8.for.inc.8_crit_edge

land.lhs.true.8.for.inc.8_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8

land.lhs.true.8.cleanup_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.8:                                        ; preds = %land.lhs.true.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 9
  %54 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %55, null
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %land.lhs.true.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.9

land.lhs.true.9:                                  ; preds = %for.inc.8
  %i2c_id.9 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %55, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %i2c_id.9 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %i2c_id.9, align 1
  %58 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp6.9 = icmp eq i8 %57, %59
  br i1 %cmp6.9, label %land.lhs.true.9.cleanup_crit_edge, label %land.lhs.true.9.for.inc.9_crit_edge

land.lhs.true.9.for.inc.9_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.9

land.lhs.true.9.cleanup_crit_edge:                ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.9:                                        ; preds = %land.lhs.true.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 10
  %60 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp eq ptr %61, null
  br i1 %tobool.not.10, label %for.inc.9.for.inc.10_crit_edge, label %land.lhs.true.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.10

land.lhs.true.10:                                 ; preds = %for.inc.9
  %i2c_id.10 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %61, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %i2c_id.10 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %i2c_id.10, align 1
  %64 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp6.10 = icmp eq i8 %63, %65
  br i1 %cmp6.10, label %land.lhs.true.10.cleanup_crit_edge, label %land.lhs.true.10.for.inc.10_crit_edge

land.lhs.true.10.for.inc.10_crit_edge:            ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.10

land.lhs.true.10.cleanup_crit_edge:               ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.10:                                       ; preds = %land.lhs.true.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 11
  %66 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp eq ptr %67, null
  br i1 %tobool.not.11, label %for.inc.10.for.inc.11_crit_edge, label %land.lhs.true.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.11

land.lhs.true.11:                                 ; preds = %for.inc.10
  %i2c_id.11 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %67, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %i2c_id.11 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %i2c_id.11, align 1
  %70 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp6.11 = icmp eq i8 %69, %71
  br i1 %cmp6.11, label %land.lhs.true.11.cleanup_crit_edge, label %land.lhs.true.11.for.inc.11_crit_edge

land.lhs.true.11.for.inc.11_crit_edge:            ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.11

land.lhs.true.11.cleanup_crit_edge:               ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.11:                                       ; preds = %land.lhs.true.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 12
  %72 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.12, align 4
  %tobool.not.12 = icmp eq ptr %73, null
  br i1 %tobool.not.12, label %for.inc.11.for.inc.12_crit_edge, label %land.lhs.true.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.12

land.lhs.true.12:                                 ; preds = %for.inc.11
  %i2c_id.12 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %73, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %i2c_id.12 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i2c_id.12, align 1
  %76 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %77)
  %cmp6.12 = icmp eq i8 %75, %77
  br i1 %cmp6.12, label %land.lhs.true.12.cleanup_crit_edge, label %land.lhs.true.12.for.inc.12_crit_edge

land.lhs.true.12.for.inc.12_crit_edge:            ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.12

land.lhs.true.12.cleanup_crit_edge:               ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.12:                                       ; preds = %land.lhs.true.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 13
  %78 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.13, align 4
  %tobool.not.13 = icmp eq ptr %79, null
  br i1 %tobool.not.13, label %for.inc.12.for.inc.13_crit_edge, label %land.lhs.true.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.13

land.lhs.true.13:                                 ; preds = %for.inc.12
  %i2c_id.13 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %79, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %i2c_id.13 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %i2c_id.13, align 1
  %82 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %83)
  %cmp6.13 = icmp eq i8 %81, %83
  br i1 %cmp6.13, label %land.lhs.true.13.cleanup_crit_edge, label %land.lhs.true.13.for.inc.13_crit_edge

land.lhs.true.13.for.inc.13_crit_edge:            ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.13

land.lhs.true.13.cleanup_crit_edge:               ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.13:                                       ; preds = %land.lhs.true.13.for.inc.13_crit_edge, %for.inc.12.for.inc.13_crit_edge
  %arrayidx.14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 14
  %84 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.14, align 4
  %tobool.not.14 = icmp eq ptr %85, null
  br i1 %tobool.not.14, label %for.inc.13.for.inc.14_crit_edge, label %land.lhs.true.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.14

land.lhs.true.14:                                 ; preds = %for.inc.13
  %i2c_id.14 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %85, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %i2c_id.14 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i2c_id.14, align 1
  %88 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %89)
  %cmp6.14 = icmp eq i8 %87, %89
  br i1 %cmp6.14, label %land.lhs.true.14.cleanup_crit_edge, label %land.lhs.true.14.for.inc.14_crit_edge

land.lhs.true.14.for.inc.14_crit_edge:            ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.14

land.lhs.true.14.cleanup_crit_edge:               ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.14:                                       ; preds = %land.lhs.true.14.for.inc.14_crit_edge, %for.inc.13.for.inc.14_crit_edge
  %arrayidx.15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 15
  %90 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.15, align 4
  %tobool.not.15 = icmp eq ptr %91, null
  br i1 %tobool.not.15, label %for.inc.14.for.inc.15_crit_edge, label %land.lhs.true.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.15

land.lhs.true.15:                                 ; preds = %for.inc.14
  %i2c_id.15 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %91, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %i2c_id.15 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %i2c_id.15, align 1
  %94 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %95)
  %cmp6.15 = icmp eq i8 %93, %95
  br i1 %cmp6.15, label %land.lhs.true.15.cleanup_crit_edge, label %land.lhs.true.15.for.inc.15_crit_edge

land.lhs.true.15.for.inc.15_crit_edge:            ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.15

land.lhs.true.15.cleanup_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.15:                                       ; preds = %land.lhs.true.15.for.inc.15_crit_edge, %for.inc.14.for.inc.15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.15, %land.lhs.true.15.cleanup_crit_edge, %land.lhs.true.14.cleanup_crit_edge, %land.lhs.true.13.cleanup_crit_edge, %land.lhs.true.12.cleanup_crit_edge, %land.lhs.true.11.cleanup_crit_edge, %land.lhs.true.10.cleanup_crit_edge, %land.lhs.true.9.cleanup_crit_edge, %land.lhs.true.8.cleanup_crit_edge, %land.lhs.true.7.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %land.lhs.true.cleanup_crit_edge ], [ %7, %land.lhs.true.1.cleanup_crit_edge ], [ %13, %land.lhs.true.2.cleanup_crit_edge ], [ %19, %land.lhs.true.3.cleanup_crit_edge ], [ %25, %land.lhs.true.4.cleanup_crit_edge ], [ %31, %land.lhs.true.5.cleanup_crit_edge ], [ %37, %land.lhs.true.6.cleanup_crit_edge ], [ %43, %land.lhs.true.7.cleanup_crit_edge ], [ %49, %land.lhs.true.8.cleanup_crit_edge ], [ %55, %land.lhs.true.9.cleanup_crit_edge ], [ %61, %land.lhs.true.10.cleanup_crit_edge ], [ %67, %land.lhs.true.11.cleanup_crit_edge ], [ %73, %land.lhs.true.12.cleanup_crit_edge ], [ %79, %land.lhs.true.13.cleanup_crit_edge ], [ %85, %land.lhs.true.14.cleanup_crit_edge ], [ %91, %land.lhs.true.15.cleanup_crit_edge ], [ null, %for.inc.15 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_i2c_router_select_ddc_port(ptr nocapture noundef readonly %amdgpu_connector) local_unnamed_addr #0 align 64 {
entry:
  %out_buf.i67 = alloca [2 x i8], align 1
  %msg.i68 = alloca %struct.i2c_msg, align 4
  %out_buf.i49 = alloca [2 x i8], align 1
  %in_buf.i50 = alloca [2 x i8], align 1
  %msgs.i51 = alloca [2 x %struct.i2c_msg], align 4
  %out_buf.i42 = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %out_buf.i = alloca [2 x i8], align 1
  %in_buf.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_valid = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 12, i32 3
  %0 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ddc_valid, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %router_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 13
  %2 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %router_bus, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i2c_addr = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i) #7
  %6 = getelementptr inbounds [2 x i8], ptr %out_buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in_buf.i) #7
  %7 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %in_buf.i, align 1, !annotation !35
  %8 = getelementptr inbounds [2 x i8], ptr %in_buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %10 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %12 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %out_buf.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %18 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %in_buf.i, ptr %buf6.i, align 4
  %20 = ptrtoint ptr %out_buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %out_buf.i, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %6, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef nonnull %3, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %in_buf.i, align 1
  %conv12.i = zext i8 %23 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %conv12.i) #7
  br label %amdgpu_i2c_get_byte.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef 0) #7
  br label %amdgpu_i2c_get_byte.exit

amdgpu_i2c_get_byte.exit:                         ; preds = %if.else.i, %if.then.i
  %val.0 = phi i8 [ %23, %if.then.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i) #7
  %ddc_mux_control_pin = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 12, i32 5
  %24 = ptrtoint ptr %ddc_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ddc_mux_control_pin, align 1
  %neg = xor i8 %25, -1
  %and = and i8 %val.0, %neg
  %26 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %router_bus, align 8
  %28 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i42) #7
  %30 = getelementptr inbounds [2 x i8], ptr %out_buf.i42, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %31 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %conv.i43 = zext i8 %29 to i16
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i43, ptr %msg.i, align 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i44, align 2
  %buf.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %out_buf.i42, ptr %buf.i46, align 4
  %36 = ptrtoint ptr %out_buf.i42 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %out_buf.i42, align 1
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %and, ptr %30, align 1
  %call.i47 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i47)
  %cmp.not.i = icmp eq i32 %call.i47, 1
  br i1 %cmp.not.i, label %amdgpu_i2c_get_byte.exit.amdgpu_i2c_put_byte.exit_crit_edge, label %if.then.i48

amdgpu_i2c_get_byte.exit.amdgpu_i2c_put_byte.exit_crit_edge: ; preds = %amdgpu_i2c_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_i2c_put_byte.exit

if.then.i48:                                      ; preds = %amdgpu_i2c_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %and to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef 3, i32 noundef %conv5.i) #7
  br label %amdgpu_i2c_put_byte.exit

amdgpu_i2c_put_byte.exit:                         ; preds = %if.then.i48, %amdgpu_i2c_get_byte.exit.amdgpu_i2c_put_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i42) #7
  %38 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %router_bus, align 8
  %40 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i49) #7
  %42 = getelementptr inbounds [2 x i8], ptr %out_buf.i49, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in_buf.i50) #7
  %43 = ptrtoint ptr %in_buf.i50 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %in_buf.i50, align 1, !annotation !35
  %44 = getelementptr inbounds [2 x i8], ptr %in_buf.i50, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %44, align 1, !annotation !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i51) #7
  %46 = getelementptr inbounds i8, ptr %msgs.i51, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %conv.i52 = zext i8 %41 to i16
  %48 = ptrtoint ptr %msgs.i51 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i52, ptr %msgs.i51, align 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i53, align 2
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %46, align 4
  %buf.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %out_buf.i49, ptr %buf.i55, align 4
  %arrayinit.element.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1
  %52 = ptrtoint ptr %arrayinit.element.i56 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i52, ptr %arrayinit.element.i56, align 4
  %flags4.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 1
  %53 = ptrtoint ptr %flags4.i57 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags4.i57, align 2
  %len5.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 2
  %54 = ptrtoint ptr %len5.i58 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len5.i58, align 4
  %buf6.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 3
  %55 = ptrtoint ptr %buf6.i59 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %in_buf.i50, ptr %buf6.i59, align 4
  %56 = ptrtoint ptr %out_buf.i49 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %out_buf.i49, align 1
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %42, align 1
  %call.i60 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msgs.i51, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i60)
  %cmp.i61 = icmp eq i32 %call.i60, 2
  br i1 %cmp.i61, label %if.then.i63, label %if.else.i65

if.then.i63:                                      ; preds = %amdgpu_i2c_put_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %in_buf.i50 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %in_buf.i50, align 1
  %conv12.i62 = zext i8 %59 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %conv12.i62) #7
  br label %amdgpu_i2c_get_byte.exit66

if.else.i65:                                      ; preds = %amdgpu_i2c_put_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv14.i64 = zext i8 %and to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %conv14.i64) #7
  br label %amdgpu_i2c_get_byte.exit66

amdgpu_i2c_get_byte.exit66:                       ; preds = %if.else.i65, %if.then.i63
  %val.1 = phi i8 [ %59, %if.then.i63 ], [ %and, %if.else.i65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i51) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in_buf.i50) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i49) #7
  %60 = ptrtoint ptr %ddc_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ddc_mux_control_pin, align 1
  %neg18 = xor i8 %61, -1
  %and20 = and i8 %val.1, %neg18
  %ddc_mux_state = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 12, i32 6
  %62 = ptrtoint ptr %ddc_mux_state to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ddc_mux_state, align 4
  %or41 = or i8 %and20, %63
  %64 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %router_bus, align 8
  %66 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i67) #7
  %68 = getelementptr inbounds [2 x i8], ptr %out_buf.i67, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i68) #7
  %69 = getelementptr inbounds i8, ptr %msg.i68, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %conv.i69 = zext i8 %67 to i16
  %71 = ptrtoint ptr %msg.i68 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i69, ptr %msg.i68, align 4
  %flags.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i70, align 2
  %buf.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 3
  %73 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %out_buf.i67, ptr %buf.i72, align 4
  %74 = ptrtoint ptr %out_buf.i67 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %out_buf.i67, align 1
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %or41, ptr %68, align 1
  %call.i73 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i68, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i73)
  %cmp.not.i74 = icmp eq i32 %call.i73, 1
  br i1 %cmp.not.i74, label %amdgpu_i2c_get_byte.exit66.amdgpu_i2c_put_byte.exit77_crit_edge, label %if.then.i76

amdgpu_i2c_get_byte.exit66.amdgpu_i2c_put_byte.exit77_crit_edge: ; preds = %amdgpu_i2c_get_byte.exit66
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_i2c_put_byte.exit77

if.then.i76:                                      ; preds = %amdgpu_i2c_get_byte.exit66
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i75 = zext i8 %or41 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %conv5.i75) #7
  br label %amdgpu_i2c_put_byte.exit77

amdgpu_i2c_put_byte.exit77:                       ; preds = %if.then.i76, %amdgpu_i2c_get_byte.exit66.amdgpu_i2c_put_byte.exit77_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i68) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i67) #7
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_i2c_put_byte.exit77, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_i2c_router_select_cd_port(ptr nocapture noundef readonly %amdgpu_connector) local_unnamed_addr #0 align 64 {
entry:
  %out_buf.i67 = alloca [2 x i8], align 1
  %msg.i68 = alloca %struct.i2c_msg, align 4
  %out_buf.i49 = alloca [2 x i8], align 1
  %in_buf.i50 = alloca [2 x i8], align 1
  %msgs.i51 = alloca [2 x %struct.i2c_msg], align 4
  %out_buf.i42 = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %out_buf.i = alloca [2 x i8], align 1
  %in_buf.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cd_valid = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 12, i32 7
  %0 = ptrtoint ptr %cd_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cd_valid, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %router_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 13
  %2 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %router_bus, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i2c_addr = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i) #7
  %6 = getelementptr inbounds [2 x i8], ptr %out_buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in_buf.i) #7
  %7 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %in_buf.i, align 1, !annotation !35
  %8 = getelementptr inbounds [2 x i8], ptr %in_buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %10 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %12 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %out_buf.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %18 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %in_buf.i, ptr %buf6.i, align 4
  %20 = ptrtoint ptr %out_buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %out_buf.i, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %6, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef nonnull %3, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %in_buf.i, align 1
  %conv12.i = zext i8 %23 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %conv12.i) #7
  br label %amdgpu_i2c_get_byte.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef 255) #7
  br label %amdgpu_i2c_get_byte.exit

amdgpu_i2c_get_byte.exit:                         ; preds = %if.else.i, %if.then.i
  %val.0 = phi i8 [ %23, %if.then.i ], [ -1, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i) #7
  %cd_mux_control_pin = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 12, i32 9
  %24 = ptrtoint ptr %cd_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cd_mux_control_pin, align 1
  %neg = xor i8 %25, -1
  %and = and i8 %val.0, %neg
  %26 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %router_bus, align 8
  %28 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i42) #7
  %30 = getelementptr inbounds [2 x i8], ptr %out_buf.i42, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %31 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %conv.i43 = zext i8 %29 to i16
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i43, ptr %msg.i, align 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i44, align 2
  %buf.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %out_buf.i42, ptr %buf.i46, align 4
  %36 = ptrtoint ptr %out_buf.i42 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %out_buf.i42, align 1
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %and, ptr %30, align 1
  %call.i47 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i47)
  %cmp.not.i = icmp eq i32 %call.i47, 1
  br i1 %cmp.not.i, label %amdgpu_i2c_get_byte.exit.amdgpu_i2c_put_byte.exit_crit_edge, label %if.then.i48

amdgpu_i2c_get_byte.exit.amdgpu_i2c_put_byte.exit_crit_edge: ; preds = %amdgpu_i2c_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_i2c_put_byte.exit

if.then.i48:                                      ; preds = %amdgpu_i2c_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %and to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef 3, i32 noundef %conv5.i) #7
  br label %amdgpu_i2c_put_byte.exit

amdgpu_i2c_put_byte.exit:                         ; preds = %if.then.i48, %amdgpu_i2c_get_byte.exit.amdgpu_i2c_put_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i42) #7
  %38 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %router_bus, align 8
  %40 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i49) #7
  %42 = getelementptr inbounds [2 x i8], ptr %out_buf.i49, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in_buf.i50) #7
  %43 = ptrtoint ptr %in_buf.i50 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %in_buf.i50, align 1, !annotation !35
  %44 = getelementptr inbounds [2 x i8], ptr %in_buf.i50, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %44, align 1, !annotation !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i51) #7
  %46 = getelementptr inbounds i8, ptr %msgs.i51, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %conv.i52 = zext i8 %41 to i16
  %48 = ptrtoint ptr %msgs.i51 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i52, ptr %msgs.i51, align 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i53, align 2
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %46, align 4
  %buf.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %out_buf.i49, ptr %buf.i55, align 4
  %arrayinit.element.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1
  %52 = ptrtoint ptr %arrayinit.element.i56 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i52, ptr %arrayinit.element.i56, align 4
  %flags4.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 1
  %53 = ptrtoint ptr %flags4.i57 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags4.i57, align 2
  %len5.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 2
  %54 = ptrtoint ptr %len5.i58 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len5.i58, align 4
  %buf6.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 3
  %55 = ptrtoint ptr %buf6.i59 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %in_buf.i50, ptr %buf6.i59, align 4
  %56 = ptrtoint ptr %out_buf.i49 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %out_buf.i49, align 1
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %42, align 1
  %call.i60 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msgs.i51, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i60)
  %cmp.i61 = icmp eq i32 %call.i60, 2
  br i1 %cmp.i61, label %if.then.i63, label %if.else.i65

if.then.i63:                                      ; preds = %amdgpu_i2c_put_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %in_buf.i50 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %in_buf.i50, align 1
  %conv12.i62 = zext i8 %59 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %conv12.i62) #7
  br label %amdgpu_i2c_get_byte.exit66

if.else.i65:                                      ; preds = %amdgpu_i2c_put_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv14.i64 = zext i8 %and to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %conv14.i64) #7
  br label %amdgpu_i2c_get_byte.exit66

amdgpu_i2c_get_byte.exit66:                       ; preds = %if.else.i65, %if.then.i63
  %val.1 = phi i8 [ %59, %if.then.i63 ], [ %and, %if.else.i65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i51) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in_buf.i50) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i49) #7
  %60 = ptrtoint ptr %cd_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cd_mux_control_pin, align 1
  %neg18 = xor i8 %61, -1
  %and20 = and i8 %val.1, %neg18
  %cd_mux_state = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 12, i32 10
  %62 = ptrtoint ptr %cd_mux_state to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %cd_mux_state, align 4
  %or41 = or i8 %and20, %63
  %64 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %router_bus, align 8
  %66 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %i2c_addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i67) #7
  %68 = getelementptr inbounds [2 x i8], ptr %out_buf.i67, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i68) #7
  %69 = getelementptr inbounds i8, ptr %msg.i68, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %conv.i69 = zext i8 %67 to i16
  %71 = ptrtoint ptr %msg.i68 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i69, ptr %msg.i68, align 4
  %flags.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i70, align 2
  %buf.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 3
  %73 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %out_buf.i67, ptr %buf.i72, align 4
  %74 = ptrtoint ptr %out_buf.i67 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %out_buf.i67, align 1
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %or41, ptr %68, align 1
  %call.i73 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i68, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i73)
  %cmp.not.i74 = icmp eq i32 %call.i73, 1
  br i1 %cmp.not.i74, label %amdgpu_i2c_get_byte.exit66.amdgpu_i2c_put_byte.exit77_crit_edge, label %if.then.i76

amdgpu_i2c_get_byte.exit66.amdgpu_i2c_put_byte.exit77_crit_edge: ; preds = %amdgpu_i2c_get_byte.exit66
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_i2c_put_byte.exit77

if.then.i76:                                      ; preds = %amdgpu_i2c_get_byte.exit66
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i75 = zext i8 %or41 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %conv5.i75) #7
  br label %amdgpu_i2c_put_byte.exit77

amdgpu_i2c_put_byte.exit77:                       ; preds = %if.then.i76, %amdgpu_i2c_get_byte.exit66.amdgpu_i2c_put_byte.exit77_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i68) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i67) #7
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_i2c_put_byte.exit77, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_i2c_xfer(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_i2c_func(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @amdgpu_i2c_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 182, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 187, i32 5}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 195, i32 5}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 208, i32 4}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 224, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 233, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @amdgpu_i2c_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @amdgpu_i2c_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @amdgpu_atombios_i2c_algo, !17, !"amdgpu_atombios_i2c_algo", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 156, i32 35}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 310, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 312, i32 3}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c", i32 334, i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"auto-init"}
