; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_xgmi_ras_funcs = type { ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.ras_fs_if = type { %struct.ras_common_if, ptr, [32 x i8] }
%struct.ras_common_if = type { i32, i32, i32, [32 x i8] }
%struct.amdgpu_pcs_ras_field = type { ptr, i32, i32 }
%struct.amdgpu_hive_info = type { %struct.kobject, i64, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.atomic_t, i32, ptr, %struct.task_barrier, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.task_barrier = type { i32, %struct.atomic_t, %struct.semaphore, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.99, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.112, i32, i32, i32, i32 }
%union.anon.112 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.ras_ih_if = type { %struct.ras_common_if, ptr }
%struct.ras_err_data = type { i32, i32, i32, ptr }
%struct.amdgpu_df_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@amdgpu_xgmi_hive_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @amdgpu_xgmi_show_attrs, ptr null }, [24 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_hive_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @amdgpu_xgmi_hive_group, ptr null], [24 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_hive_type = dso_local global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @amdgpu_xgmi_hive_release, ptr @amdgpu_xgmi_hive_ops, ptr null, ptr @amdgpu_xgmi_hive_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xgmi_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xgmi_mutex, i64 52), ptr getelementptr (i8, ptr @xgmi_mutex, i64 52) }, ptr @xgmi_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@xgmi_hive_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @xgmi_hive_list, ptr @xgmi_hive_list }, [24 x i8] zeroinitializer }, align 32
@amdgpu_get_xgmi_hive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 383, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: XGMI: allocation failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu_get_xgmi_hive\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_get_xgmi_hive._entry_ptr = internal global ptr @amdgpu_get_xgmi_hive._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgmi_hive_info\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_get_xgmi_hive._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 394, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: XGMI: failed initializing kobject for xgmi hive\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_get_xgmi_hive._entry_ptr.9 = internal global ptr @amdgpu_get_xgmi_hive._entry.7, section ".printk_index", align 4
@amdgpu_get_xgmi_hive.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&hive->hive_lock\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_update_topology._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"amdgpu: XGMI: Set topology failure on device %llx, hive %llx, ret %d\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu_xgmi_update_topology\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_update_topology._entry_ptr = internal global ptr @amdgpu_xgmi_update_topology._entry, section ".printk_index", align 4
@amdgpu_xgmi_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 582, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: XGMI: Failed to initialize xgmi session\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_xgmi_add_device\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_add_device._entry_ptr = internal global ptr @amdgpu_xgmi_add_device._entry, section ".printk_index", align 4
@amdgpu_xgmi_add_device._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: XGMI: Failed to get hive id\0A\00", [59 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_add_device._entry_ptr.17 = internal global ptr @amdgpu_xgmi_add_device._entry.15, section ".printk_index", align 4
@amdgpu_xgmi_add_device._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 596, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: XGMI: Failed to get node id\0A\00", [59 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_add_device._entry_ptr.20 = internal global ptr @amdgpu_xgmi_add_device._entry.18, section ".printk_index", align 4
@amdgpu_xgmi_add_device._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 609, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"amdgpu: XGMI: node 0x%llx, can not match hive 0x%llx in the hive list.\0A\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_add_device._entry_ptr.23 = internal global ptr @amdgpu_xgmi_add_device._entry.21, section ".printk_index", align 4
@amdgpu_xgmi_add_device._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 647, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"amdgpu: XGMI: Get topology failure on device %llx, hive %llx, ret %d\00", [59 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_add_device._entry_ptr.26 = internal global ptr @amdgpu_xgmi_add_device._entry.24, section ".printk_index", align 4
@amdgpu_xgmi_add_device._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.2, i32 669, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"amdgpu: XGMI: Get topology for extended data failure on device %llx, hive %llx, ret %d\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_add_device._entry_ptr.29 = internal global ptr @amdgpu_xgmi_add_device._entry.27, section ".printk_index", align 4
@amdgpu_xgmi_add_device._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.14, ptr @.str.2, i32 691, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: XGMI: Add node %d, hive 0x%llx.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_add_device._entry_ptr.33 = internal global ptr @amdgpu_xgmi_add_device._entry.30, section ".printk_index", align 4
@amdgpu_xgmi_add_device._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.14, ptr @.str.2, i32 696, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: XGMI: Failed to add node %d, hive 0x%llx ret: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_add_device._entry_ptr.36 = internal global ptr @amdgpu_xgmi_add_device._entry.34, section ".printk_index", align 4
@xgmi_ras_funcs = dso_local constant { %struct.amdgpu_xgmi_ras_funcs, [16 x i8] } { %struct.amdgpu_xgmi_ras_funcs { ptr @amdgpu_xgmi_ras_late_init, ptr @amdgpu_xgmi_ras_fini, ptr @amdgpu_xgmi_query_ras_error_count, ptr @amdgpu_xgmi_reset_ras_error_count }, [16 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_hive_id = internal global { %struct.attribute, [44 x i8] } { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xgmi_hive_id\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_hive_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @amdgpu_xgmi_hive_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_hive_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @amdgpu_xgmi_hive_id, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgmi_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgmi_mutex\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_initialize_hive_get_data_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 556, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"amdgpu: XGMI: Failed to initialize xgmi session for data partition %i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu_xgmi_initialize_hive_get_data_partition\00", [49 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_initialize_hive_get_data_partition._entry_ptr = internal global ptr @amdgpu_xgmi_initialize_hive_get_data_partition._entry, section ".printk_index", align 4
@dev_attr_xgmi_device_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_xgmi_show_device_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_sysfs_add_dev_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"amdgpu: XGMI: Failed to create device file xgmi_device_id\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu_xgmi_sysfs_add_dev_info\00", [33 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_sysfs_add_dev_info._entry_ptr = internal global ptr @amdgpu_xgmi_sysfs_add_dev_info._entry, section ".printk_index", align 4
@dev_attr_xgmi_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_xgmi_show_error, ptr null }, [36 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_sysfs_add_dev_info._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013amdgpu: failed to create xgmi_error\0A\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_sysfs_add_dev_info._entry_ptr.49 = internal global ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.47, section ".printk_index", align 4
@amdgpu_xgmi_sysfs_add_dev_info._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: XGMI: Failed to create link to hive info\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_sysfs_add_dev_info._entry_ptr.52 = internal global ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"node%d\00", [25 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_sysfs_add_dev_info._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.46, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: XGMI: Failed to create link from hive info\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_sysfs_add_dev_info._entry_ptr.56 = internal global ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgmi_device_id\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgmi_error\00", [21 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_show_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013amdgpu: xGMI error counters not enabled!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_xgmi_show_error\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_show_error._entry_ptr = internal global ptr @amdgpu_xgmi_show_error._entry, section ".printk_index", align 4
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgmi_wafl_err_count\00", [44 x i8] zeroinitializer }, align 32
@__const.amdgpu_xgmi_ras_late_init.fs_info = private unnamed_addr constant %struct.ras_fs_if { %struct.ras_common_if zeroinitializer, ptr @.str.62, [32 x i8] zeroinitializer }, align 4
@xgmi_pcs_err_status_reg_arct = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 296682000, i32 297730576, i32 301924880, i32 302973456, i32 304022032, i32 305070608], [40 x i8] zeroinitializer }, align 32
@xgmi23_pcs_err_status_reg_aldebaran = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 295703056, i32 296751632, i32 297800208, i32 298848784, i32 299897360, i32 300945936, i32 301994512, i32 303043088], [32 x i8] zeroinitializer }, align 32
@xgmi3x16_pcs_err_status_reg_aldebaran = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 295698956, i32 296747532, i32 297796108, i32 298844684, i32 299893260, i32 300941836, i32 301990412, i32 303038988], [32 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_query_ras_error_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 939, ptr @.str.65, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: XGMI RAS error query not supported\00", [53 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu_xgmi_query_ras_error_count\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_query_ras_error_count._entry_ptr = internal global ptr @amdgpu_xgmi_query_ras_error_count._entry, section ".printk_index", align 4
@xgmi_pcs_ras_fields = internal constant { [18 x %struct.amdgpu_pcs_ras_field], [40 x i8] } { [18 x %struct.amdgpu_pcs_ras_field] [%struct.amdgpu_pcs_ras_field { ptr @.str.70, i32 1, i32 0 }, %struct.amdgpu_pcs_ras_field { ptr @.str.71, i32 2, i32 1 }, %struct.amdgpu_pcs_ras_field { ptr @.str.72, i32 32, i32 5 }, %struct.amdgpu_pcs_ras_field { ptr @.str.73, i32 64, i32 6 }, %struct.amdgpu_pcs_ras_field { ptr @.str.74, i32 128, i32 7 }, %struct.amdgpu_pcs_ras_field { ptr @.str.75, i32 256, i32 8 }, %struct.amdgpu_pcs_ras_field { ptr @.str.76, i32 512, i32 9 }, %struct.amdgpu_pcs_ras_field { ptr @.str.77, i32 1024, i32 10 }, %struct.amdgpu_pcs_ras_field { ptr @.str.78, i32 2048, i32 11 }, %struct.amdgpu_pcs_ras_field { ptr @.str.79, i32 4096, i32 12 }, %struct.amdgpu_pcs_ras_field { ptr @.str.80, i32 8192, i32 13 }, %struct.amdgpu_pcs_ras_field { ptr @.str.81, i32 32768, i32 15 }, %struct.amdgpu_pcs_ras_field { ptr @.str.82, i32 65536, i32 16 }, %struct.amdgpu_pcs_ras_field { ptr @.str.83, i32 131072, i32 17 }, %struct.amdgpu_pcs_ras_field { ptr @.str.84, i32 262144, i32 18 }, %struct.amdgpu_pcs_ras_field { ptr @.str.85, i32 524288, i32 19 }, %struct.amdgpu_pcs_ras_field { ptr @.str.86, i32 1048576, i32 20 }, %struct.amdgpu_pcs_ras_field { ptr @.str.87, i32 2097152, i32 21 }], [40 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_query_pcs_error_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 846, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu: %s detected\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu_xgmi_query_pcs_error_status\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_query_pcs_error_status._entry_ptr = internal global ptr @amdgpu_xgmi_query_pcs_error_status._entry, section ".printk_index", align 4
@wafl_pcs_ras_fields = internal constant { [18 x %struct.amdgpu_pcs_ras_field], [40 x i8] } { [18 x %struct.amdgpu_pcs_ras_field] [%struct.amdgpu_pcs_ras_field { ptr @.str.88, i32 1, i32 0 }, %struct.amdgpu_pcs_ras_field { ptr @.str.89, i32 2, i32 1 }, %struct.amdgpu_pcs_ras_field { ptr @.str.90, i32 32, i32 5 }, %struct.amdgpu_pcs_ras_field { ptr @.str.91, i32 64, i32 6 }, %struct.amdgpu_pcs_ras_field { ptr @.str.92, i32 128, i32 7 }, %struct.amdgpu_pcs_ras_field { ptr @.str.93, i32 256, i32 8 }, %struct.amdgpu_pcs_ras_field { ptr @.str.94, i32 512, i32 9 }, %struct.amdgpu_pcs_ras_field { ptr @.str.95, i32 1024, i32 10 }, %struct.amdgpu_pcs_ras_field { ptr @.str.96, i32 2048, i32 11 }, %struct.amdgpu_pcs_ras_field { ptr @.str.97, i32 4096, i32 12 }, %struct.amdgpu_pcs_ras_field { ptr @.str.98, i32 8192, i32 13 }, %struct.amdgpu_pcs_ras_field { ptr @.str.99, i32 32768, i32 15 }, %struct.amdgpu_pcs_ras_field { ptr @.str.100, i32 65536, i32 16 }, %struct.amdgpu_pcs_ras_field { ptr @.str.101, i32 131072, i32 17 }, %struct.amdgpu_pcs_ras_field { ptr @.str.102, i32 262144, i32 18 }, %struct.amdgpu_pcs_ras_field { ptr @.str.103, i32 524288, i32 19 }, %struct.amdgpu_pcs_ras_field { ptr @.str.104, i32 1048576, i32 20 }, %struct.amdgpu_pcs_ras_field { ptr @.str.105, i32 2097152, i32 21 }], [40 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_query_pcs_error_status._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 859, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@amdgpu_xgmi_query_pcs_error_status._entry_ptr.69 = internal global ptr @amdgpu_xgmi_query_pcs_error_status._entry.68, section ".printk_index", align 4
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"XGMI PCS DataLossErr\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"XGMI PCS TrainingErr\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"XGMI PCS CRCErr\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"XGMI PCS BERExceededErr\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XGMI PCS TxMetaDataErr\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"XGMI PCS ReplayBufParityErr\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XGMI PCS DataParityErr\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"XGMI PCS ReplayFifoOverflowErr\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"XGMI PCS ReplayFifoUnderflowErr\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"XGMI PCS ElasticFifoOverflowErr\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"XGMI PCS DeskewErr\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"XGMI PCS DataStartupLimitErr\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"XGMI PCS FCInitTimeoutErr\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"XGMI PCS RecoveryTimeoutErr\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"XGMI PCS ReadySerialTimeoutErr\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"XGMI PCS ReadySerialAttemptErr\00", [33 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"XGMI PCS RecoveryAttemptErr\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"XGMI PCS RecoveryRelockAttemptErr\00", [62 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WAFL PCS DataLossErr\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WAFL PCS TrainingErr\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WAFL PCS CRCErr\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WAFL PCS BERExceededErr\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WAFL PCS TxMetaDataErr\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WAFL PCS ReplayBufParityErr\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WAFL PCS DataParityErr\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WAFL PCS ReplayFifoOverflowErr\00", [33 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WAFL PCS ReplayFifoUnderflowErr\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WAFL PCS ElasticFifoOverflowErr\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WAFL PCS DeskewErr\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WAFL PCS DataStartupLimitErr\00", [35 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WAFL PCS FCInitTimeoutErr\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WAFL PCS RecoveryTimeoutErr\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WAFL PCS ReadySerialTimeoutErr\00", [33 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WAFL PCS ReadySerialAttemptErr\00", [33 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WAFL PCS RecoveryAttemptErr\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WAFL PCS RecoveryRelockAttemptErr\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 21, i64 23, i64 25]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 21, i64 23, i64 25]
@___asan_gen_.107 = private unnamed_addr constant [21 x i8] c"amdgpu_xgmi_hive_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 234, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"amdgpu_xgmi_hive_groups\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"amdgpu_xgmi_hive_type\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 238, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"xgmi_mutex\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"xgmi_hive_list\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 43, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 383, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 392, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 392, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 394, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 404, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 499, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 581, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 588, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 595, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 607, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 644, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 666, i32 6 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 690, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 694, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [15 x i8] c"xgmi_ras_funcs\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 951, i32 36 }
@___asan_gen_.224 = private unnamed_addr constant [20 x i8] c"amdgpu_xgmi_hive_id\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 202, i32 25 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 220, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 203, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant [23 x i8] c"amdgpu_xgmi_hive_group\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 211, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"amdgpu_xgmi_hive_attrs\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 207, i32 26 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 39, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 33, i32 31 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 34, i32 28 }
@___asan_gen_.252 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 35, i32 39 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 554, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant [24 x i8] c"dev_attr_xgmi_device_id\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 301, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c"dev_attr_xgmi_error\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 308, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 316, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 321, i32 16 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 325, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 289, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 290, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 276, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 285, i32 25 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 742, i32 17 }
@___asan_gen_.320 = private unnamed_addr constant [29 x i8] c"xgmi_pcs_err_status_reg_arct\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 55, i32 18 }
@___asan_gen_.323 = private unnamed_addr constant [36 x i8] c"xgmi23_pcs_err_status_reg_aldebaran\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 70, i32 18 }
@___asan_gen_.326 = private unnamed_addr constant [38 x i8] c"xgmi3x16_pcs_err_status_reg_aldebaran\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 81, i32 18 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 939, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c"xgmi_pcs_ras_fields\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 97, i32 42 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 845, i32 5 }
@___asan_gen_.353 = private unnamed_addr constant [20 x i8] c"wafl_pcs_ras_fields\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 136, i32 42 }
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 858, i32 5 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 98, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 100, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 102, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 104, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 106, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 108, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 110, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 112, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 114, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 116, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 118, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 120, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 122, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 124, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 126, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 128, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 130, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 132, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 137, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 139, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 141, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 143, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 145, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 147, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 149, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 151, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 153, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 155, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 157, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 159, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 161, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 163, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 165, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 167, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 169, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.465 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 171, i32 3 }
@llvm.compiler.used = appending global [140 x ptr] [ptr @amdgpu_get_xgmi_hive._entry, ptr @amdgpu_get_xgmi_hive._entry.7, ptr @amdgpu_get_xgmi_hive._entry_ptr, ptr @amdgpu_get_xgmi_hive._entry_ptr.9, ptr @amdgpu_xgmi_add_device._entry, ptr @amdgpu_xgmi_add_device._entry.15, ptr @amdgpu_xgmi_add_device._entry.18, ptr @amdgpu_xgmi_add_device._entry.21, ptr @amdgpu_xgmi_add_device._entry.24, ptr @amdgpu_xgmi_add_device._entry.27, ptr @amdgpu_xgmi_add_device._entry.30, ptr @amdgpu_xgmi_add_device._entry.34, ptr @amdgpu_xgmi_add_device._entry_ptr, ptr @amdgpu_xgmi_add_device._entry_ptr.17, ptr @amdgpu_xgmi_add_device._entry_ptr.20, ptr @amdgpu_xgmi_add_device._entry_ptr.23, ptr @amdgpu_xgmi_add_device._entry_ptr.26, ptr @amdgpu_xgmi_add_device._entry_ptr.29, ptr @amdgpu_xgmi_add_device._entry_ptr.33, ptr @amdgpu_xgmi_add_device._entry_ptr.36, ptr @amdgpu_xgmi_initialize_hive_get_data_partition._entry, ptr @amdgpu_xgmi_initialize_hive_get_data_partition._entry_ptr, ptr @amdgpu_xgmi_query_pcs_error_status._entry, ptr @amdgpu_xgmi_query_pcs_error_status._entry.68, ptr @amdgpu_xgmi_query_pcs_error_status._entry_ptr, ptr @amdgpu_xgmi_query_pcs_error_status._entry_ptr.69, ptr @amdgpu_xgmi_query_ras_error_count._entry, ptr @amdgpu_xgmi_query_ras_error_count._entry_ptr, ptr @amdgpu_xgmi_show_error._entry, ptr @amdgpu_xgmi_show_error._entry_ptr, ptr @amdgpu_xgmi_sysfs_add_dev_info._entry, ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.47, ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.50, ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.54, ptr @amdgpu_xgmi_sysfs_add_dev_info._entry_ptr, ptr @amdgpu_xgmi_sysfs_add_dev_info._entry_ptr.49, ptr @amdgpu_xgmi_sysfs_add_dev_info._entry_ptr.52, ptr @amdgpu_xgmi_sysfs_add_dev_info._entry_ptr.56, ptr @amdgpu_xgmi_update_topology._entry, ptr @amdgpu_xgmi_update_topology._entry_ptr, ptr @amdgpu_xgmi_hive_ops, ptr @amdgpu_xgmi_hive_groups, ptr @amdgpu_xgmi_hive_type, ptr @xgmi_mutex, ptr @xgmi_hive_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @amdgpu_get_xgmi_hive.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @xgmi_ras_funcs, ptr @amdgpu_xgmi_hive_id, ptr @.str.37, ptr @.str.38, ptr @amdgpu_xgmi_hive_group, ptr @amdgpu_xgmi_hive_attrs, ptr @.str.39, ptr @.str.40, ptr @sema_init.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @dev_attr_xgmi_device_id, ptr @.str.45, ptr @.str.46, ptr @dev_attr_xgmi_error, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @xgmi_pcs_err_status_reg_arct, ptr @xgmi23_pcs_err_status_reg_aldebaran, ptr @xgmi3x16_pcs_err_status_reg_aldebaran, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @xgmi_pcs_ras_fields, ptr @.str.66, ptr @.str.67, ptr @wafl_pcs_ras_fields, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_hive_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_hive_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_hive_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmi_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmi_hive_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_get_xgmi_hive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_get_xgmi_hive._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_get_xgmi_hive.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_update_topology._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_add_device._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_add_device._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_add_device._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_add_device._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_add_device._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_add_device._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_add_device._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmi_ras_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_hive_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_hive_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_hive_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_initialize_hive_get_data_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_xgmi_device_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_sysfs_add_dev_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_xgmi_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_show_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmi_pcs_err_status_reg_arct to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmi23_pcs_err_status_reg_aldebaran to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmi3x16_pcs_err_status_reg_aldebaran to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_query_ras_error_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmi_pcs_ras_fields to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_query_pcs_error_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wafl_pcs_ras_fields to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_xgmi_query_pcs_error_status._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_xgmi_hive_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hive_lock = getelementptr inbounds %struct.amdgpu_hive_info, ptr %kobj, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %hive_lock) #10
  tail call void @kfree(ptr noundef %kobj) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_get_xgmi_hive(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hive_id = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 1
  %0 = ptrtoint ptr %hive_id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hive_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hive1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 4
  %2 = ptrtoint ptr %hive1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hive1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @kobject_get(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %hive1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hive1, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @xgmi_mutex, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end6
  %.pn.in = phi ptr [ @xgmi_hive_list, %if.end6 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @xgmi_hive_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %hive_id7 = getelementptr i8, ptr %.pn, i32 -16
  %7 = ptrtoint ptr %hive_id7 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hive_id7, align 8
  %9 = ptrtoint ptr %hive_id to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hive_id, align 8
  %cmp11 = icmp eq i64 %8, %10
  br i1 %cmp11, label %pro_end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 392) #13
  %tobool19.not = icmp eq ptr %call7.i.i, null
  %12 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adev, align 8
  br i1 %tobool19.not, label %do.end, label %if.end21

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str) #14
  br label %if.end47

if.end21:                                         ; preds = %for.end
  %call25 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amdgpu_xgmi_hive_type, ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8) #14
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end47

if.end33:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %hive_id to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hive_id, align 8
  %hive_id37 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %hive_id37 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %hive_id37, align 8
  %device_list = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %device_list, ptr %device_list, align 8
  %prev.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %device_list, ptr %prev.i, align 4
  %node38 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %node38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %node38, ptr %node38, align 8
  %prev.i78 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %node38, ptr %prev.i78, align 4
  %hive_lock = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %hive_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @amdgpu_get_xgmi_hive.__key) #10
  %in_reset = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_reset, i32 noundef 4) #10
  %23 = ptrtoint ptr %in_reset to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %in_reset, align 8
  %number_devices = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 4
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %number_devices, i32 noundef 4) #10
  %24 = ptrtoint ptr %number_devices to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %number_devices, align 8
  %tb = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tb, align 4
  %count.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %count.i, align 8
  %enter_turnstile.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2
  %wait_list1.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 2
  %27 = ptrtoint ptr %enter_turnstile.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %enter_turnstile.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 0, i32 2
  %29 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 0, i32 3
  %30 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 0, i32 4
  %31 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.41, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 0, i32 4, i32 5
  %35 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 14)
  %36 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 2, i32 1
  %37 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 8
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %exit_turnstile.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3
  %wait_list1.i4.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 2
  %38 = ptrtoint ptr %exit_turnstile.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %exit_turnstile.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 0, i32 1
  %39 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i5.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i6.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 0, i32 2
  %40 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i6.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i7.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 0, i32 3
  %41 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i7.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i8.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 0, i32 4
  %42 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i8.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i9.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i9.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.41, ptr %.compoundliteral.sroa.6.0..sroa_idx.i9.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i10.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i10.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i10.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i11.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i11.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i11.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i12.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 0, i32 4, i32 5
  %46 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i12.i, i32 0, i32 14)
  %47 = ptrtoint ptr %wait_list1.i4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %wait_list1.i4.i, ptr %wait_list1.i4.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i13.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 2, i32 1
  %48 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i13.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %wait_list1.i4.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i13.i, align 8
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i8.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %pstate = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 10
  %49 = ptrtoint ptr %pstate to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %pstate, align 4
  %hi_req_gpu = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %hi_req_gpu to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %hi_req_gpu, align 8
  %hi_req_count = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call7.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %hi_req_count to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %hi_req_count, align 4
  %52 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @xgmi_hive_list, i32 0, i32 1), align 4
  %call.i.i79 = tail call zeroext i1 @__list_add_valid(ptr noundef %node38, ptr noundef %52, ptr noundef nonnull @xgmi_hive_list) #10
  br i1 %call.i.i79, label %if.end.i.i, label %if.end33.if.then44_crit_edge

if.end33.if.then44_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %node38, ptr getelementptr inbounds (%struct.list_head, ptr @xgmi_hive_list, i32 0, i32 1), align 4
  %53 = ptrtoint ptr %node38 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @xgmi_hive_list, ptr %node38, align 8
  %54 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %prev.i78, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %node38, ptr %52, align 4
  br label %if.then44

pro_end:                                          ; preds = %for.body
  %hive.0 = getelementptr i8, ptr %.pn, i32 -152
  %tobool43.not = icmp eq ptr %hive.0, null
  br i1 %tobool43.not, label %pro_end.if.end47_crit_edge, label %pro_end.if.then44_crit_edge

pro_end.if.then44_crit_edge:                      ; preds = %pro_end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

pro_end.if.end47_crit_edge:                       ; preds = %pro_end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then44:                                        ; preds = %pro_end.if.then44_crit_edge, %if.end.i.i, %if.end33.if.then44_crit_edge
  %hive.187 = phi ptr [ %hive.0, %pro_end.if.then44_crit_edge ], [ %call7.i.i, %if.end33.if.then44_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  %call46 = tail call ptr @kobject_get(ptr noundef nonnull %hive.187) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %pro_end.if.end47_crit_edge, %do.end30, %do.end
  %hive.182 = phi ptr [ %hive.187, %if.then44 ], [ null, %pro_end.if.end47_crit_edge ], [ null, %do.end30 ], [ null, %do.end ]
  tail call void @mutex_unlock(ptr noundef nonnull @xgmi_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then3 ], [ %hive.182, %if.end47 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_put_xgmi_hive(ptr noundef %hive) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hive, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef nonnull %hive) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_xgmi_set_pstate(ptr nocapture noundef readonly %adev, i32 noundef %pstate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_get_xgmi_hive(ptr noundef %adev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %amdgpu_put_xgmi_hive.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

amdgpu_put_xgmi_hive.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_put_xgmi_hive.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_xgmi_update_topology(ptr noundef %hive, ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %number_devices = getelementptr inbounds %struct.amdgpu_hive_info, ptr %hive, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %number_devices, i32 noundef 4) #10
  %0 = ptrtoint ptr %number_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %number_devices, align 4
  %top_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 1
  %call2 = tail call i32 @psp_xgmi_set_topology_info(ptr noundef %psp, i32 noundef %1, ptr noundef %top_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  %xgmi = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39
  %4 = ptrtoint ptr %xgmi to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %xgmi, align 8
  %hive_id = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 1
  %6 = ptrtoint ptr %hive_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %hive_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, i64 noundef %5, i64 noundef %7, i32 noundef %call2) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_xgmi_set_topology_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_xgmi_get_hops_count(ptr nocapture noundef readonly %adev, ptr nocapture noundef readonly %peer_adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %top_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 1
  %0 = ptrtoint ptr %top_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %top_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.not = icmp eq i32 %1, 0
  br i1 %cmp14.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %xgmi = getelementptr inbounds %struct.amdgpu_device, ptr %peer_adev, i32 0, i32 62, i32 39
  %2 = ptrtoint ptr %xgmi to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %xgmi, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 1, i32 1, i32 %i.015
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %3)
  %cmp2 = icmp eq i64 %5, %3
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %num_hops = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 1, i32 1, i32 %i.015, i32 1
  %6 = ptrtoint ptr %num_hops to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_hops, align 8
  %8 = and i8 %7, 7
  %and = zext i8 %8 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_xgmi_get_num_links(ptr nocapture noundef readonly %adev, ptr nocapture noundef readonly %peer_adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %top_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 1
  %0 = ptrtoint ptr %top_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %top_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %xgmi = getelementptr inbounds %struct.amdgpu_device, ptr %peer_adev, i32 0, i32 62, i32 39
  %2 = ptrtoint ptr %xgmi to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %xgmi, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 1, i32 1, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %3)
  %cmp2 = icmp eq i64 %5, %3
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %num_links = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 1, i32 1, i32 %i.013, i32 4
  %6 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_links, align 8
  %conv = zext i8 %7 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_xgmi_add_device(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmi = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39
  %supported = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 6
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %supported, align 8, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending_reset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 9
  %2 = ptrtoint ptr %pending_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pending_reset, align 1, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %adev, i32 noundef 4) #10
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call7 = tail call i32 @psp_xgmi_initialize(ptr noundef %psp, i1 noundef zeroext false, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13) #14
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %hive_id = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 1
  %call14 = tail call i32 @psp_xgmi_get_hive_id(ptr noundef %psp, ptr noundef %hive_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %call25 = tail call i32 @psp_xgmi_get_node_id(ptr noundef %psp, ptr noundef %xgmi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end21.if.end41_crit_edge, label %do.end30

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.19) #14
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %hive_id35 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 1
  %10 = ptrtoint ptr %hive_id35 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 16, ptr %hive_id35, align 8
  %physical_node_id = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 3
  %11 = ptrtoint ptr %physical_node_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %physical_node_id, align 8
  %add = add i32 %12, 16
  %conv = zext i32 %add to i64
  %13 = ptrtoint ptr %xgmi to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %xgmi, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.end21.if.end41_crit_edge
  %call42 = tail call ptr @amdgpu_get_xgmi_hive(ptr noundef %adev)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.else239.thread, label %if.end55

if.else239.thread:                                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  %16 = ptrtoint ptr %xgmi to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %xgmi, align 8
  %hive_id54 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 1
  %18 = ptrtoint ptr %hive_id54 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %hive_id54, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22, i64 noundef %17, i64 noundef %19) #14
  br label %amdgpu_put_xgmi_hive.exit

if.end55:                                         ; preds = %if.end41
  %hive_lock = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call42, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %hive_lock, i32 noundef 0) #10
  %top_info57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 1
  %head = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 5
  %device_list = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call42, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call42, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i356 = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %21, ptr noundef %device_list) #10
  br i1 %call.i.i356, label %if.end.i.i, label %if.end55.list_add_tail.exit_crit_edge

if.end55.list_add_tail.exit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %head, ptr %prev.i, align 4
  %23 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %device_list, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 5, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %head, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end55.list_add_tail.exit_crit_edge
  %26 = ptrtoint ptr %device_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn380 = load ptr, ptr %device_list, align 8
  %cmp.not381 = icmp eq ptr %.pn380, %device_list
  br i1 %cmp.not381, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_add_tail.exit.for.body_crit_edge
  %.pn383 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn380, %list_add_tail.exit.for.body_crit_edge ]
  %count.0382 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %list_add_tail.exit.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn383, i32 -32
  %27 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %entry1.0, align 8
  %inc = add i32 %count.0382, 1
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 1, i32 1, i32 %count.0382
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx, align 8
  %30 = ptrtoint ptr %.pn383 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn383, align 8
  %cmp.not = icmp eq ptr %.pn, %device_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %list_add_tail.exit.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %31 = ptrtoint ptr %top_info57 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %count.0.lcssa, ptr %top_info57, align 8
  %number_devices = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call42, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %number_devices, i32 noundef 4) #10
  %32 = ptrtoint ptr %number_devices to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %count.0.lcssa, ptr %number_devices, align 4
  %tb = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call42, i32 0, i32 9
  %33 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tb, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %tb, align 4
  %35 = ptrtoint ptr %pending_reset to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pending_reset, align 1, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool74.not = icmp eq i8 %36, 0
  br i1 %tobool74.not, label %land.lhs.true75, label %for.end.exit.thread366_crit_edge

for.end.exit.thread366_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.thread366

land.lhs.true75:                                  ; preds = %for.end
  %call76 = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %adev, i32 noundef 4) #10
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %land.lhs.true75.land.lhs.true217_crit_edge, label %for.cond84.preheader

land.lhs.true75.land.lhs.true217_crit_edge:       ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true217

for.cond84.preheader:                             ; preds = %land.lhs.true75
  %sub = add i32 %count.0.lcssa, -1
  br label %for.cond84

for.cond84:                                       ; preds = %if.end106.for.cond84_crit_edge, %for.cond84.preheader
  %.pn353.in = phi ptr [ %.pn353, %if.end106.for.cond84_crit_edge ], [ %device_list, %for.cond84.preheader ]
  %37 = ptrtoint ptr %.pn353.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn353 = load ptr, ptr %.pn353.in, align 8
  %tmp_adev.0 = getelementptr i8, ptr %.pn353, i32 -10208
  %cmp89.not = icmp eq ptr %.pn353, %device_list
  br i1 %cmp89.not, label %for.cond84.for.cond125_crit_edge, label %for.body92

for.cond84.for.cond125_crit_edge:                 ; preds = %for.cond84
  br label %for.cond125

for.body92:                                       ; preds = %for.cond84
  %cmp93.not = icmp eq ptr %tmp_adev.0, %adev
  br i1 %cmp93.not, label %for.body92.if.end106_crit_edge, label %if.then95

for.body92.if.end106_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then95:                                        ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #12
  %top_info98 = getelementptr i8, ptr %.pn353, i32 70192
  %38 = ptrtoint ptr %xgmi to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %xgmi, align 8
  %nodes102 = getelementptr i8, ptr %.pn353, i32 70200
  %arrayidx103 = getelementptr [64 x %struct.psp_xgmi_node_info], ptr %nodes102, i32 0, i32 %sub
  %40 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx103, align 8
  %41 = ptrtoint ptr %top_info98 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %count.0.lcssa, ptr %top_info98, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then95, %for.body92.if.end106_crit_edge
  %psp.i = getelementptr i8, ptr %.pn353, i32 69784
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %number_devices, i32 noundef 4) #10
  %42 = ptrtoint ptr %number_devices to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %number_devices, align 4
  %top_info.i = getelementptr i8, ptr %.pn353, i32 70192
  %call2.i = tail call i32 @psp_xgmi_set_topology_info(ptr noundef %psp.i, i32 noundef %43, ptr noundef %top_info.i) #10
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end106.for.cond84_crit_edge, label %amdgpu_xgmi_update_topology.exit.thread

if.end106.for.cond84_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond84

amdgpu_xgmi_update_topology.exit.thread:          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %tmp_adev.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tmp_adev.0, align 8
  %xgmi.i = getelementptr i8, ptr %.pn353, i32 -32
  %46 = ptrtoint ptr %xgmi.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %xgmi.i, align 8
  %hive_id.i = getelementptr i8, ptr %.pn353, i32 -24
  %48 = ptrtoint ptr %hive_id.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %hive_id.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11, i64 noundef %47, i64 noundef %49, i32 noundef %call2.i) #14
  br label %exit.thread362

for.cond125:                                      ; preds = %for.body133.for.cond125_crit_edge, %for.cond84.for.cond125_crit_edge
  %.pn354.in = phi ptr [ %.pn354, %for.body133.for.cond125_crit_edge ], [ %device_list, %for.cond84.for.cond125_crit_edge ]
  %50 = ptrtoint ptr %.pn354.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn354 = load ptr, ptr %.pn354.in, align 8
  %cmp130.not = icmp eq ptr %.pn354, %device_list
  br i1 %cmp130.not, label %for.end160, label %for.body133

for.body133:                                      ; preds = %for.cond125
  %psp134 = getelementptr i8, ptr %.pn354, i32 69784
  %top_info137 = getelementptr i8, ptr %.pn354, i32 70192
  %call138 = tail call i32 @psp_xgmi_get_topology_info(ptr noundef %psp134, i32 noundef %count.0.lcssa, ptr noundef %top_info137, i1 noundef zeroext false) #10
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %for.body133.for.cond125_crit_edge, label %do.end143

for.body133.for.cond125_crit_edge:                ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond125

do.end143:                                        ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #12
  %tmp_adev.1.le = getelementptr i8, ptr %.pn354, i32 -10208
  %xgmi127.le = getelementptr i8, ptr %.pn354, i32 -32
  %51 = ptrtoint ptr %tmp_adev.1.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tmp_adev.1.le, align 8
  %53 = ptrtoint ptr %xgmi127.le to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %xgmi127.le, align 8
  %hive_id150 = getelementptr i8, ptr %.pn354, i32 -24
  %55 = ptrtoint ptr %hive_id150 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %hive_id150, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.25, i64 noundef %54, i64 noundef %56, i32 noundef %call138) #14
  br label %exit.thread362

for.end160:                                       ; preds = %for.cond125
  %supports_extended_data = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 2
  %57 = ptrtoint ptr %supports_extended_data to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %supports_extended_data, align 8, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool163.not = icmp eq i8 %58, 0
  br i1 %tobool163.not, label %for.end160.land.lhs.true217_crit_edge, label %if.then164

for.end160.land.lhs.true217_crit_edge:            ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true217

if.then164:                                       ; preds = %for.end160
  %call165 = tail call fastcc i32 @amdgpu_xgmi_initialize_hive_get_data_partition(ptr noundef nonnull %call42, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then164.for.cond174_crit_edge, label %if.then164.exit.thread362_crit_edge

if.then164.exit.thread362_crit_edge:              ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.thread362

if.then164.for.cond174_crit_edge:                 ; preds = %if.then164
  br label %for.cond174

for.cond174:                                      ; preds = %for.body182.for.cond174_crit_edge, %if.then164.for.cond174_crit_edge
  %.pn355.in = phi ptr [ %.pn355, %for.body182.for.cond174_crit_edge ], [ %device_list, %if.then164.for.cond174_crit_edge ]
  %59 = ptrtoint ptr %.pn355.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn355 = load ptr, ptr %.pn355.in, align 8
  %cmp179.not = icmp eq ptr %.pn355, %device_list
  br i1 %cmp179.not, label %for.end209, label %for.body182

for.body182:                                      ; preds = %for.cond174
  %psp183 = getelementptr i8, ptr %.pn355, i32 69784
  %top_info186 = getelementptr i8, ptr %.pn355, i32 70192
  %call187 = tail call i32 @psp_xgmi_get_topology_info(ptr noundef %psp183, i32 noundef %count.0.lcssa, ptr noundef %top_info186, i1 noundef zeroext true) #10
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %for.body182.for.cond174_crit_edge, label %do.end192

for.body182.for.cond174_crit_edge:                ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond174

do.end192:                                        ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #12
  %tmp_adev.2.le = getelementptr i8, ptr %.pn355, i32 -10208
  %xgmi176.le = getelementptr i8, ptr %.pn355, i32 -32
  %60 = ptrtoint ptr %tmp_adev.2.le to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tmp_adev.2.le, align 8
  %62 = ptrtoint ptr %xgmi176.le to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %xgmi176.le, align 8
  %hive_id199 = getelementptr i8, ptr %.pn355, i32 -24
  %64 = ptrtoint ptr %hive_id199 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %hive_id199, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.28, i64 noundef %63, i64 noundef %65, i32 noundef %call187) #14
  br label %exit.thread362

for.end209:                                       ; preds = %for.cond174
  %call210 = tail call fastcc i32 @amdgpu_xgmi_initialize_hive_get_data_partition(ptr noundef nonnull %call42, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %for.end209.land.lhs.true217_crit_edge, label %for.end209.exit.thread362_crit_edge

for.end209.exit.thread362_crit_edge:              ; preds = %for.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.thread362

for.end209.land.lhs.true217_crit_edge:            ; preds = %for.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true217

land.lhs.true217:                                 ; preds = %for.end209.land.lhs.true217_crit_edge, %for.end160.land.lhs.true217_crit_edge, %land.lhs.true75.land.lhs.true217_crit_edge
  %66 = ptrtoint ptr %pending_reset to i32
  call void @__asan_load1_noabort(i32 %66)
  %.pr = load i8, ptr %pending_reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool221.not = icmp eq i8 %.pr, 0
  br i1 %tobool221.not, label %exit, label %land.lhs.true217.exit.thread366_crit_edge

land.lhs.true217.exit.thread366_crit_edge:        ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.thread366

exit.thread362:                                   ; preds = %for.end209.exit.thread362_crit_edge, %do.end192, %if.then164.exit.thread362_crit_edge, %do.end143, %amdgpu_xgmi_update_topology.exit.thread
  %ret.4.ph = phi i32 [ %call2.i, %amdgpu_xgmi_update_topology.exit.thread ], [ %call210, %for.end209.exit.thread362_crit_edge ], [ %call187, %do.end192 ], [ %call165, %if.then164.exit.thread362_crit_edge ], [ %call138, %do.end143 ]
  tail call void @mutex_unlock(ptr noundef %hive_lock) #10
  br label %if.then.i

exit.thread366:                                   ; preds = %land.lhs.true217.exit.thread366_crit_edge, %for.end.exit.thread366_crit_edge
  tail call void @mutex_unlock(ptr noundef %hive_lock) #10
  br label %if.then227

exit:                                             ; preds = %land.lhs.true217
  %call223 = tail call fastcc i32 @amdgpu_xgmi_sysfs_add_dev_info(ptr noundef %adev, ptr noundef nonnull %call42)
  tail call void @mutex_unlock(ptr noundef %hive_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool226.not = icmp eq i32 %call223, 0
  br i1 %tobool226.not, label %exit.if.then227_crit_edge, label %exit.if.then.i_crit_edge

exit.if.then.i_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

exit.if.then227_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then227

if.then227:                                       ; preds = %exit.if.then227_crit_edge, %exit.thread366
  %hive228 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 4
  %67 = ptrtoint ptr %hive228 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call42, ptr %hive228, align 4
  %68 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adev, align 8
  %physical_node_id235 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 3
  %70 = ptrtoint ptr %physical_node_id235 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %physical_node_id235, align 8
  %hive_id238 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 1
  %72 = ptrtoint ptr %hive_id238 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %hive_id238, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.31, i32 noundef %71, i64 noundef %73) #14
  br label %cleanup

if.then.i:                                        ; preds = %exit.if.then.i_crit_edge, %exit.thread362
  %ret.5361 = phi i32 [ %call223, %exit.if.then.i_crit_edge ], [ %ret.4.ph, %exit.thread362 ]
  tail call void @kobject_put(ptr noundef nonnull %call42) #10
  br label %amdgpu_put_xgmi_hive.exit

amdgpu_put_xgmi_hive.exit:                        ; preds = %if.then.i, %if.else239.thread
  %ret.5361371 = phi i32 [ -22, %if.else239.thread ], [ %ret.5361, %if.then.i ]
  %74 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adev, align 8
  %physical_node_id246 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 3
  %76 = ptrtoint ptr %physical_node_id246 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %physical_node_id246, align 8
  %hive_id249 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 1
  %78 = ptrtoint ptr %hive_id249 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %hive_id249, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.35, i32 noundef %77, i64 noundef %79, i32 noundef %ret.5361371) #14
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_put_xgmi_hive.exit, %if.then227, %do.end30, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call14, %do.end19 ], [ %call25, %do.end30 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.5361371, %amdgpu_put_xgmi_hive.exit ], [ 0, %if.then227 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_device_ip_get_ip_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_xgmi_initialize(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_xgmi_get_hive_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_xgmi_get_node_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_xgmi_get_topology_info(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_xgmi_initialize_hive_get_data_partition(ptr noundef readonly %hive, i1 noundef zeroext %set_extended_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device_list = getelementptr inbounds %struct.amdgpu_hive_info, ptr %hive, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %device_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp.not = icmp eq ptr %.pn, %device_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %psp = getelementptr i8, ptr %.pn, i32 69784
  %call = tail call i32 @psp_xgmi_initialize(ptr noundef %psp, i1 noundef zeroext %set_extended_data, i1 noundef zeroext false) #10
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.body.for.cond_crit_edge, label %do.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %tmp_adev.0.le = getelementptr i8, ptr %.pn, i32 -10208
  %1 = ptrtoint ptr %tmp_adev.0.le to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tmp_adev.0.le, align 8
  %conv = zext i1 %set_extended_data to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.43, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_xgmi_sysfs_add_dev_info(ptr nocapture noundef readonly %adev, ptr noundef %hive) unnamed_addr #0 align 64 {
entry:
  %node = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %node) #10
  %0 = call ptr @memset(ptr %node, i32 0, i32 10)
  %1 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adev, align 8
  %call = tail call i32 @device_create_file(ptr noundef %2, ptr noundef nonnull @dev_attr_xgmi_device_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 8
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.45) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @device_create_file(ptr noundef %4, ptr noundef nonnull @dev_attr_xgmi_error) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %do.end8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #14
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %parent = getelementptr inbounds %struct.kobject, ptr %hive, i32 0, i32 2
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  %cmp.not = icmp eq ptr %6, %8
  br i1 %cmp.not, label %if.end10.if.end25_crit_edge, label %if.then13

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then13:                                        ; preds = %if.end10
  %call17 = tail call i32 @sysfs_create_link(ptr noundef %8, ptr noundef %hive, ptr noundef nonnull @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then13.if.end25_crit_edge, label %do.end22

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end22:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.51) #14
  br label %remove_file

if.end25:                                         ; preds = %if.then13.if.end25_crit_edge, %if.end10.if.end25_crit_edge
  %number_devices = getelementptr inbounds %struct.amdgpu_hive_info, ptr %hive, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %number_devices, i32 noundef 4) #10
  %11 = ptrtoint ptr %number_devices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %number_devices, align 4
  %call27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %node, ptr noundef nonnull @.str.53, i32 noundef %12)
  %13 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adev, align 8
  %call32 = call i32 @sysfs_create_link(ptr noundef %hive, ptr noundef %14, ptr noundef nonnull %node) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end25.cleanup_crit_edge, label %do.end37

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end37:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.55) #14
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  %unique = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 13
  %19 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unique, align 4
  call void @sysfs_remove_link(ptr noundef %18, ptr noundef %20) #10
  br label %remove_file

remove_file:                                      ; preds = %do.end37, %do.end22
  %ret.0 = phi i32 [ %call17, %do.end22 ], [ %call32, %do.end37 ]
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 8
  call void @device_remove_file(ptr noundef %22, ptr noundef nonnull @dev_attr_xgmi_device_id) #10
  br label %cleanup

cleanup:                                          ; preds = %remove_file, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %remove_file ], [ 0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %node) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_xgmi_remove_device(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %node.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hive1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 4
  %0 = ptrtoint ptr %hive1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hive1, align 4
  %supported = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 6
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supported, align 8, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %hive_lock = getelementptr inbounds %struct.amdgpu_hive_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %hive_lock, i32 noundef 0) #10
  %tb = getelementptr inbounds %struct.amdgpu_hive_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tb, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %tb, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %node.i) #10
  %6 = call ptr @memset(ptr %node.i, i32 0, i32 10)
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  tail call void @device_remove_file(ptr noundef %8, ptr noundef nonnull @dev_attr_xgmi_device_id) #10
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void @device_remove_file(ptr noundef %10, ptr noundef nonnull @dev_attr_xgmi_error) #10
  %parent.i = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %13 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adev, align 8
  %cmp.not.i = icmp eq ptr %12, %14
  br i1 %cmp.not.i, label %if.end4.amdgpu_xgmi_sysfs_rem_dev_info.exit_crit_edge, label %if.then.i

if.end4.amdgpu_xgmi_sysfs_rem_dev_info.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_xgmi_sysfs_rem_dev_info.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sysfs_remove_link(ptr noundef %14, ptr noundef nonnull @.str.6) #10
  br label %amdgpu_xgmi_sysfs_rem_dev_info.exit

amdgpu_xgmi_sysfs_rem_dev_info.exit:              ; preds = %if.then.i, %if.end4.amdgpu_xgmi_sysfs_rem_dev_info.exit_crit_edge
  %number_devices.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %number_devices.i, i32 noundef 4) #10
  %15 = ptrtoint ptr %number_devices.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %number_devices.i, align 4
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %node.i, ptr noundef nonnull @.str.53, i32 noundef %16) #10
  call void @sysfs_remove_link(ptr noundef nonnull %1, ptr noundef nonnull %node.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %node.i) #10
  %hi_req_gpu = getelementptr inbounds %struct.amdgpu_hive_info, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %hi_req_gpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hi_req_gpu, align 8
  %cmp = icmp eq ptr %18, %adev
  br i1 %cmp, label %if.then5, label %amdgpu_xgmi_sysfs_rem_dev_info.exit.if.end7_crit_edge

amdgpu_xgmi_sysfs_rem_dev_info.exit.if.end7_crit_edge: ; preds = %amdgpu_xgmi_sysfs_rem_dev_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %amdgpu_xgmi_sysfs_rem_dev_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %hi_req_gpu to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %hi_req_gpu, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %amdgpu_xgmi_sysfs_rem_dev_info.exit.if.end7_crit_edge
  %head = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 5
  %call.i.i32 = call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #10
  br i1 %call.i.i32, label %if.end.i.i, label %if.end7.amdgpu_put_xgmi_hive.exit_crit_edge

if.end7.amdgpu_put_xgmi_hive.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_put_xgmi_hive.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %amdgpu_put_xgmi_hive.exit

amdgpu_put_xgmi_hive.exit:                        ; preds = %if.end.i.i, %if.end7.amdgpu_put_xgmi_hive.exit_crit_edge
  %26 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 5, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef %hive_lock) #10
  call void @kobject_put(ptr noundef nonnull %1) #10
  %28 = ptrtoint ptr %hive1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %hive1, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %number_devices.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !240
  call void @llvm.prefetch.p0(ptr %number_devices.i, i32 1, i32 3, i32 1) #10
  %29 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %number_devices.i, ptr %number_devices.i, i32 1, ptr elementtype(i32) %number_devices.i) #10, !srcloc !241
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp12 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp12, label %if.then13, label %amdgpu_put_xgmi_hive.exit.if.end14_crit_edge

amdgpu_put_xgmi_hive.exit.if.end14_crit_edge:     ; preds = %amdgpu_put_xgmi_hive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %amdgpu_put_xgmi_hive.exit
  call void @mutex_lock_nested(ptr noundef nonnull @xgmi_mutex, i32 noundef 0) #10
  %node = getelementptr inbounds %struct.amdgpu_hive_info, ptr %1, i32 0, i32 3
  %call.i.i34 = call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #10
  br i1 %call.i.i34, label %if.end.i.i37, label %if.then13.amdgpu_put_xgmi_hive.exit42_crit_edge

if.then13.amdgpu_put_xgmi_hive.exit42_crit_edge:  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_put_xgmi_hive.exit42

if.end.i.i37:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i35 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %1, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %prev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i35, align 4
  %32 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %node, align 4
  %prev1.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i36, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %amdgpu_put_xgmi_hive.exit42

amdgpu_put_xgmi_hive.exit42:                      ; preds = %if.end.i.i37, %if.then13.amdgpu_put_xgmi_hive.exit42_crit_edge
  %36 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i38 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %1, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i38, align 4
  call void @mutex_unlock(ptr noundef nonnull @xgmi_mutex) #10
  call void @kobject_put(ptr noundef nonnull %1) #10
  br label %if.end14

if.end14:                                         ; preds = %amdgpu_put_xgmi_hive.exit42, %amdgpu_put_xgmi_hive.exit.if.end14_crit_edge
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call15 = call i32 @psp_xgmi_terminate(ptr noundef %psp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_xgmi_terminate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @amdgpu_xgmi_get_relative_phy_addr(ptr nocapture noundef readonly %adev, i64 noundef %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %physical_node_id = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 3
  %0 = ptrtoint ptr %physical_node_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %physical_node_id, align 8
  %conv = zext i32 %1 to i64
  %node_segment_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 2
  %2 = ptrtoint ptr %node_segment_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %node_segment_size, align 8
  %mul = mul i64 %3, %conv
  %add = add i64 %mul, %addr
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_xgmi_ras_late_init(ptr noundef %adev) #0 align 64 {
entry:
  %ih_info = alloca %struct.ras_ih_if, align 4
  %fs_info = alloca %struct.ras_fs_if, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ih_info) #10
  %0 = getelementptr inbounds i8, ptr %ih_info, i32 44
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %fs_info) #10
  %2 = call ptr @memcpy(ptr %fs_info, ptr @__const.amdgpu_xgmi_ras_late_init.fs_info, i32 80)
  %supported = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 6
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %supported, align 8, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 4
  %5 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 10
  %7 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ras_funcs, align 4
  %reset_ras_error_count = getelementptr inbounds %struct.amdgpu_xgmi_ras_funcs, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reset_ras_error_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_ras_error_count, align 4
  tail call void %10(ptr noundef %adev) #10
  %ras_if = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 7
  %11 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ras_if, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then8:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 44) #13
  %14 = ptrtoint ptr %ras_if to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %ras_if, align 4
  %tobool15.not = icmp eq ptr %call7.i, null
  br i1 %tobool15.not, label %if.then8.cleanup_crit_edge, label %if.end17

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7, ptr %call7.i, align 8
  %type = getelementptr inbounds %struct.ras_common_if, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %type, align 4
  %sub_block_index = getelementptr inbounds %struct.ras_common_if, ptr %call7.i, i32 0, i32 2
  %17 = ptrtoint ptr %sub_block_index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sub_block_index, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end17, %if.end.if.end27_crit_edge
  %18 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ras_if, align 4
  %20 = call ptr @memcpy(ptr %fs_info, ptr %19, i32 44)
  %21 = call ptr @memmove(ptr %ih_info, ptr %19, i32 44)
  %call35 = call i32 @amdgpu_ras_late_init(ptr noundef %adev, ptr noundef %19, ptr noundef nonnull %fs_info, ptr noundef nonnull %ih_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %if.end27.if.then44_crit_edge

if.end27.if.then44_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false37:                                  ; preds = %if.end27
  %22 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ras_if, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %25)
  %cmp.i = icmp ugt i32 %25, 14
  br i1 %cmp.i, label %lor.lhs.false37.if.then44_crit_edge, label %if.end.i

lor.lhs.false37.if.then44_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end.i:                                         ; preds = %lor.lhs.false37
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %26 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i.if.then44_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.i.if.then44_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

amdgpu_ras_is_supported.exit:                     ; preds = %if.end.i
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %28 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ras_enabled.i, align 8
  %30 = shl nuw nsw i32 1, %25
  %31 = and i32 %29, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool43.not = icmp eq i32 %31, 0
  br i1 %tobool43.not, label %amdgpu_ras_is_supported.exit.if.then44_crit_edge, label %amdgpu_ras_is_supported.exit.cleanup_crit_edge

amdgpu_ras_is_supported.exit.cleanup_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

amdgpu_ras_is_supported.exit.if.then44_crit_edge: ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %amdgpu_ras_is_supported.exit.if.then44_crit_edge, %if.end.i.if.then44_crit_edge, %lor.lhs.false37.if.then44_crit_edge, %if.end27.if.then44_crit_edge
  %32 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ras_if, align 4
  call void @kfree(ptr noundef %33) #10
  %34 = ptrtoint ptr %ras_if to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %ras_if, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ], [ %call35, %if.then44 ], [ 0, %amdgpu_ras_is_supported.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %fs_info) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ih_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_xgmi_ras_fini(ptr noundef %adev) #0 align 64 {
entry:
  %ih_info = alloca %struct.ras_ih_if, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %amdgpu_ras_is_supported.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.end_crit_edge, label %land.lhs.true

amdgpu_ras_is_supported.exit.if.end_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %amdgpu_ras_is_supported.exit
  %ras_if = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 7
  %5 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ras_if, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ih_info) #10
  %7 = call ptr @memset(ptr %ih_info, i32 0, i32 48)
  call void @amdgpu_ras_late_fini(ptr noundef %adev, ptr noundef nonnull %6, ptr noundef nonnull %ih_info) #10
  call void @kfree(ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ih_info) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %amdgpu_ras_is_supported.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_xgmi_query_ras_error_count(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %amdgpu_ras_is_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.cleanup_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.cleanup_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %5 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ras_error_status, align 4
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  %6 = ptrtoint ptr %ce_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ce_count, align 4
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %7 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asic_type, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end [
    i32 23, label %for.cond.preheader
    i32 21, label %for.cond20.preheader
    i32 25, label %for.cond47.preheader
  ]

for.cond47.preheader:                             ; preds = %if.end
  %pcie_rreg50 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  br label %for.body49

for.cond20.preheader:                             ; preds = %if.end
  %pcie_rreg23 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %10 = ptrtoint ptr %pcie_rreg23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_rreg23, align 8
  %call25 = tail call i32 %11(ptr noundef %adev, i32 noundef 296682000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond20.preheader.for.inc30_crit_edge, label %for.cond20.preheader.for.body.i161_crit_edge

for.cond20.preheader.for.body.i161_crit_edge:     ; preds = %for.cond20.preheader
  br label %for.body.i161

for.cond20.preheader.for.inc30_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30

for.cond.preheader:                               ; preds = %if.end
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  br label %for.body

for.cond6.preheader:                              ; preds = %for.inc
  %12 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_rreg, align 8
  %call11 = tail call i32 %13(ptr noundef %adev, i32 noundef 298779152) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond6.preheader.for.inc16_crit_edge, label %for.cond6.preheader.for.body7.i_crit_edge

for.cond6.preheader.for.body7.i_crit_edge:        ; preds = %for.cond6.preheader
  br label %for.body7.i

for.cond6.preheader.for.inc16_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc16

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0247 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %ue_cnt.0246 = phi i32 [ 0, %for.cond.preheader ], [ %ue_cnt.3, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcie_rreg, align 8
  %arrayidx = getelementptr [6 x i32], ptr @xgmi_pcs_err_status_reg_arct, i32 0, i32 %i.0247
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 %15(ptr noundef %adev, i32 noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %ue_cnt.1 = phi i32 [ %ue_cnt.2, %for.inc.i.for.body.i_crit_edge ], [ %ue_cnt.0246, %for.body.for.body.i_crit_edge ]
  %i.04.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %pcs_err_mask.i = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i, i32 1
  %18 = ptrtoint ptr %pcs_err_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcs_err_mask.i, align 4
  %and.i = and i32 %19, %call1
  %pcs_err_shift.i = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i, i32 2
  %20 = ptrtoint ptr %pcs_err_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcs_err_shift.i, align 4
  %shr.i = lshr i32 %and.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool2.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i
  %22 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev, align 8
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.66, ptr noundef %25) #14
  %add.i = add i32 %shr.i, %ue_cnt.1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.body.i.for.inc.i_crit_edge
  %ue_cnt.2 = phi i32 [ %ue_cnt.1, %for.body.i.for.inc.i_crit_edge ], [ %add.i, %do.end.i ]
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond7.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond7.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ue_cnt.3 = phi i32 [ %ue_cnt.0246, %for.body.for.inc_crit_edge ], [ %ue_cnt.2, %for.inc.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0247, 1
  %exitcond256.not = icmp eq i32 %inc, 6
  br i1 %exitcond256.not, label %for.cond6.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body7.i:                                      ; preds = %for.inc24.i.for.body7.i_crit_edge, %for.cond6.preheader.for.body7.i_crit_edge
  %ue_cnt.5 = phi i32 [ %ue_cnt.6, %for.inc24.i.for.body7.i_crit_edge ], [ %ue_cnt.3, %for.cond6.preheader.for.body7.i_crit_edge ]
  %i.12.i = phi i32 [ %inc25.i, %for.inc24.i.for.body7.i_crit_edge ], [ 0, %for.cond6.preheader.for.body7.i_crit_edge ]
  %pcs_err_mask9.i = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i, i32 1
  %26 = ptrtoint ptr %pcs_err_mask9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pcs_err_mask9.i, align 4
  %and10.i = and i32 %27, %call11
  %pcs_err_shift12.i = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i, i32 2
  %28 = ptrtoint ptr %pcs_err_shift12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pcs_err_shift12.i, align 4
  %shr13.i = lshr i32 %and10.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr13.i)
  %tobool14.not.i = icmp eq i32 %shr13.i, 0
  br i1 %tobool14.not.i, label %for.body7.i.for.inc24.i_crit_edge, label %do.end18.i

for.body7.i.for.inc24.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc24.i

do.end18.i:                                       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i
  %30 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adev, align 8
  %32 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.66, ptr noundef %33) #14
  %add22.i = add i32 %shr13.i, %ue_cnt.5
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %do.end18.i, %for.body7.i.for.inc24.i_crit_edge
  %ue_cnt.6 = phi i32 [ %ue_cnt.5, %for.body7.i.for.inc24.i_crit_edge ], [ %add22.i, %do.end18.i ]
  %inc25.i = add nuw nsw i32 %i.12.i, 1
  %exitcond.not.i = icmp eq i32 %inc25.i, 18
  br i1 %exitcond.not.i, label %for.inc24.i.for.inc16_crit_edge, label %for.inc24.i.for.body7.i_crit_edge

for.inc24.i.for.body7.i_crit_edge:                ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

for.inc24.i.for.inc16_crit_edge:                  ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc16

for.inc16:                                        ; preds = %for.inc24.i.for.inc16_crit_edge, %for.cond6.preheader.for.inc16_crit_edge
  %ue_cnt.7 = phi i32 [ %ue_cnt.3, %for.cond6.preheader.for.inc16_crit_edge ], [ %ue_cnt.6, %for.inc24.i.for.inc16_crit_edge ]
  %34 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcie_rreg, align 8
  %call11.1 = tail call i32 %35(ptr noundef %adev, i32 noundef 299827728) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %for.inc16.sw.epilog_crit_edge, label %for.inc16.for.body7.i.1_crit_edge

for.inc16.for.body7.i.1_crit_edge:                ; preds = %for.inc16
  br label %for.body7.i.1

for.inc16.sw.epilog_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body7.i.1:                                    ; preds = %for.inc24.i.1.for.body7.i.1_crit_edge, %for.inc16.for.body7.i.1_crit_edge
  %ue_cnt.5.1 = phi i32 [ %ue_cnt.6.1, %for.inc24.i.1.for.body7.i.1_crit_edge ], [ %ue_cnt.7, %for.inc16.for.body7.i.1_crit_edge ]
  %i.12.i.1 = phi i32 [ %inc25.i.1, %for.inc24.i.1.for.body7.i.1_crit_edge ], [ 0, %for.inc16.for.body7.i.1_crit_edge ]
  %pcs_err_mask9.i.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i.1, i32 1
  %36 = ptrtoint ptr %pcs_err_mask9.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pcs_err_mask9.i.1, align 4
  %and10.i.1 = and i32 %37, %call11.1
  %pcs_err_shift12.i.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i.1, i32 2
  %38 = ptrtoint ptr %pcs_err_shift12.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pcs_err_shift12.i.1, align 4
  %shr13.i.1 = lshr i32 %and10.i.1, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr13.i.1)
  %tobool14.not.i.1 = icmp eq i32 %shr13.i.1, 0
  br i1 %tobool14.not.i.1, label %for.body7.i.1.for.inc24.i.1_crit_edge, label %do.end18.i.1

for.body7.i.1.for.inc24.i.1_crit_edge:            ; preds = %for.body7.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc24.i.1

do.end18.i.1:                                     ; preds = %for.body7.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i.1
  %40 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adev, align 8
  %42 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx8.i.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.66, ptr noundef %43) #14
  %add22.i.1 = add i32 %shr13.i.1, %ue_cnt.5.1
  br label %for.inc24.i.1

for.inc24.i.1:                                    ; preds = %do.end18.i.1, %for.body7.i.1.for.inc24.i.1_crit_edge
  %ue_cnt.6.1 = phi i32 [ %ue_cnt.5.1, %for.body7.i.1.for.inc24.i.1_crit_edge ], [ %add22.i.1, %do.end18.i.1 ]
  %inc25.i.1 = add nuw nsw i32 %i.12.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc25.i.1, 18
  br i1 %exitcond.not.i.1, label %for.inc24.i.1.sw.epilog_crit_edge, label %for.inc24.i.1.for.body7.i.1_crit_edge

for.inc24.i.1.for.body7.i.1_crit_edge:            ; preds = %for.inc24.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i.1

for.inc24.i.1.sw.epilog_crit_edge:                ; preds = %for.inc24.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.i161:                                    ; preds = %for.inc.i167.for.body.i161_crit_edge, %for.cond20.preheader.for.body.i161_crit_edge
  %ue_cnt.9 = phi i32 [ %ue_cnt.10, %for.inc.i167.for.body.i161_crit_edge ], [ 0, %for.cond20.preheader.for.body.i161_crit_edge ]
  %i.04.i155 = phi i32 [ %inc.i165, %for.inc.i167.for.body.i161_crit_edge ], [ 0, %for.cond20.preheader.for.body.i161_crit_edge ]
  %pcs_err_mask.i156 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i155, i32 1
  %44 = ptrtoint ptr %pcs_err_mask.i156 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pcs_err_mask.i156, align 4
  %and.i157 = and i32 %45, %call25
  %pcs_err_shift.i158 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i155, i32 2
  %46 = ptrtoint ptr %pcs_err_shift.i158 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pcs_err_shift.i158, align 4
  %shr.i159 = lshr i32 %and.i157, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i159)
  %tobool2.not.i160 = icmp eq i32 %shr.i159, 0
  br i1 %tobool2.not.i160, label %for.body.i161.for.inc.i167_crit_edge, label %do.end.i164

for.body.i161.for.inc.i167_crit_edge:             ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i167

do.end.i164:                                      ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i162 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i155
  %48 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adev, align 8
  %50 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i162, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.66, ptr noundef %51) #14
  %add.i163 = add i32 %shr.i159, %ue_cnt.9
  br label %for.inc.i167

for.inc.i167:                                     ; preds = %do.end.i164, %for.body.i161.for.inc.i167_crit_edge
  %ue_cnt.10 = phi i32 [ %ue_cnt.9, %for.body.i161.for.inc.i167_crit_edge ], [ %add.i163, %do.end.i164 ]
  %inc.i165 = add nuw nsw i32 %i.04.i155, 1
  %exitcond7.not.i166 = icmp eq i32 %inc.i165, 18
  br i1 %exitcond7.not.i166, label %for.inc.i167.for.inc30_crit_edge, label %for.inc.i167.for.body.i161_crit_edge

for.inc.i167.for.body.i161_crit_edge:             ; preds = %for.inc.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i161

for.inc.i167.for.inc30_crit_edge:                 ; preds = %for.inc.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30

for.inc30:                                        ; preds = %for.inc.i167.for.inc30_crit_edge, %for.cond20.preheader.for.inc30_crit_edge
  %ue_cnt.11 = phi i32 [ 0, %for.cond20.preheader.for.inc30_crit_edge ], [ %ue_cnt.10, %for.inc.i167.for.inc30_crit_edge ]
  %52 = ptrtoint ptr %pcie_rreg23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcie_rreg23, align 8
  %call25.1 = tail call i32 %53(ptr noundef %adev, i32 noundef 297730576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %tobool26.not.1 = icmp eq i32 %call25.1, 0
  br i1 %tobool26.not.1, label %for.inc30.for.inc30.1_crit_edge, label %for.inc30.for.body.i161.1_crit_edge

for.inc30.for.body.i161.1_crit_edge:              ; preds = %for.inc30
  br label %for.body.i161.1

for.inc30.for.inc30.1_crit_edge:                  ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.1

for.body.i161.1:                                  ; preds = %for.inc.i167.1.for.body.i161.1_crit_edge, %for.inc30.for.body.i161.1_crit_edge
  %ue_cnt.9.1 = phi i32 [ %ue_cnt.10.1, %for.inc.i167.1.for.body.i161.1_crit_edge ], [ %ue_cnt.11, %for.inc30.for.body.i161.1_crit_edge ]
  %i.04.i155.1 = phi i32 [ %inc.i165.1, %for.inc.i167.1.for.body.i161.1_crit_edge ], [ 0, %for.inc30.for.body.i161.1_crit_edge ]
  %pcs_err_mask.i156.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i155.1, i32 1
  %54 = ptrtoint ptr %pcs_err_mask.i156.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pcs_err_mask.i156.1, align 4
  %and.i157.1 = and i32 %55, %call25.1
  %pcs_err_shift.i158.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i155.1, i32 2
  %56 = ptrtoint ptr %pcs_err_shift.i158.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pcs_err_shift.i158.1, align 4
  %shr.i159.1 = lshr i32 %and.i157.1, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i159.1)
  %tobool2.not.i160.1 = icmp eq i32 %shr.i159.1, 0
  br i1 %tobool2.not.i160.1, label %for.body.i161.1.for.inc.i167.1_crit_edge, label %do.end.i164.1

for.body.i161.1.for.inc.i167.1_crit_edge:         ; preds = %for.body.i161.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i167.1

do.end.i164.1:                                    ; preds = %for.body.i161.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i162.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i155.1
  %58 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adev, align 8
  %60 = ptrtoint ptr %arrayidx.i162.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i162.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.66, ptr noundef %61) #14
  %add.i163.1 = add i32 %shr.i159.1, %ue_cnt.9.1
  br label %for.inc.i167.1

for.inc.i167.1:                                   ; preds = %do.end.i164.1, %for.body.i161.1.for.inc.i167.1_crit_edge
  %ue_cnt.10.1 = phi i32 [ %ue_cnt.9.1, %for.body.i161.1.for.inc.i167.1_crit_edge ], [ %add.i163.1, %do.end.i164.1 ]
  %inc.i165.1 = add nuw nsw i32 %i.04.i155.1, 1
  %exitcond7.not.i166.1 = icmp eq i32 %inc.i165.1, 18
  br i1 %exitcond7.not.i166.1, label %for.inc.i167.1.for.inc30.1_crit_edge, label %for.inc.i167.1.for.body.i161.1_crit_edge

for.inc.i167.1.for.body.i161.1_crit_edge:         ; preds = %for.inc.i167.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i161.1

for.inc.i167.1.for.inc30.1_crit_edge:             ; preds = %for.inc.i167.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.1

for.inc30.1:                                      ; preds = %for.inc.i167.1.for.inc30.1_crit_edge, %for.inc30.for.inc30.1_crit_edge
  %ue_cnt.11.1 = phi i32 [ %ue_cnt.11, %for.inc30.for.inc30.1_crit_edge ], [ %ue_cnt.10.1, %for.inc.i167.1.for.inc30.1_crit_edge ]
  %62 = ptrtoint ptr %pcie_rreg23 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcie_rreg23, align 8
  %call38 = tail call i32 %63(ptr noundef %adev, i32 noundef 298779152) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.inc30.1.for.inc43_crit_edge, label %for.inc30.1.for.body7.i175_crit_edge

for.inc30.1.for.body7.i175_crit_edge:             ; preds = %for.inc30.1
  br label %for.body7.i175

for.inc30.1.for.inc43_crit_edge:                  ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43

for.body7.i175:                                   ; preds = %for.inc24.i181.for.body7.i175_crit_edge, %for.inc30.1.for.body7.i175_crit_edge
  %ue_cnt.13 = phi i32 [ %ue_cnt.14, %for.inc24.i181.for.body7.i175_crit_edge ], [ %ue_cnt.11.1, %for.inc30.1.for.body7.i175_crit_edge ]
  %i.12.i169 = phi i32 [ %inc25.i179, %for.inc24.i181.for.body7.i175_crit_edge ], [ 0, %for.inc30.1.for.body7.i175_crit_edge ]
  %pcs_err_mask9.i170 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i169, i32 1
  %64 = ptrtoint ptr %pcs_err_mask9.i170 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pcs_err_mask9.i170, align 4
  %and10.i171 = and i32 %65, %call38
  %pcs_err_shift12.i172 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i169, i32 2
  %66 = ptrtoint ptr %pcs_err_shift12.i172 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pcs_err_shift12.i172, align 4
  %shr13.i173 = lshr i32 %and10.i171, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr13.i173)
  %tobool14.not.i174 = icmp eq i32 %shr13.i173, 0
  br i1 %tobool14.not.i174, label %for.body7.i175.for.inc24.i181_crit_edge, label %do.end18.i178

for.body7.i175.for.inc24.i181_crit_edge:          ; preds = %for.body7.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc24.i181

do.end18.i178:                                    ; preds = %for.body7.i175
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i176 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i169
  %68 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adev, align 8
  %70 = ptrtoint ptr %arrayidx8.i176 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx8.i176, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.66, ptr noundef %71) #14
  %add22.i177 = add i32 %shr13.i173, %ue_cnt.13
  br label %for.inc24.i181

for.inc24.i181:                                   ; preds = %do.end18.i178, %for.body7.i175.for.inc24.i181_crit_edge
  %ue_cnt.14 = phi i32 [ %ue_cnt.13, %for.body7.i175.for.inc24.i181_crit_edge ], [ %add22.i177, %do.end18.i178 ]
  %inc25.i179 = add nuw nsw i32 %i.12.i169, 1
  %exitcond.not.i180 = icmp eq i32 %inc25.i179, 18
  br i1 %exitcond.not.i180, label %for.inc24.i181.for.inc43_crit_edge, label %for.inc24.i181.for.body7.i175_crit_edge

for.inc24.i181.for.body7.i175_crit_edge:          ; preds = %for.inc24.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i175

for.inc24.i181.for.inc43_crit_edge:               ; preds = %for.inc24.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43

for.inc43:                                        ; preds = %for.inc24.i181.for.inc43_crit_edge, %for.inc30.1.for.inc43_crit_edge
  %ue_cnt.15 = phi i32 [ %ue_cnt.11.1, %for.inc30.1.for.inc43_crit_edge ], [ %ue_cnt.14, %for.inc24.i181.for.inc43_crit_edge ]
  %72 = ptrtoint ptr %pcie_rreg23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcie_rreg23, align 8
  %call38.1 = tail call i32 %73(ptr noundef %adev, i32 noundef 299827728) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.1)
  %tobool39.not.1 = icmp eq i32 %call38.1, 0
  br i1 %tobool39.not.1, label %for.inc43.sw.epilog_crit_edge, label %for.inc43.for.body7.i175.1_crit_edge

for.inc43.for.body7.i175.1_crit_edge:             ; preds = %for.inc43
  br label %for.body7.i175.1

for.inc43.sw.epilog_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body7.i175.1:                                 ; preds = %for.inc24.i181.1.for.body7.i175.1_crit_edge, %for.inc43.for.body7.i175.1_crit_edge
  %ue_cnt.13.1 = phi i32 [ %ue_cnt.14.1, %for.inc24.i181.1.for.body7.i175.1_crit_edge ], [ %ue_cnt.15, %for.inc43.for.body7.i175.1_crit_edge ]
  %i.12.i169.1 = phi i32 [ %inc25.i179.1, %for.inc24.i181.1.for.body7.i175.1_crit_edge ], [ 0, %for.inc43.for.body7.i175.1_crit_edge ]
  %pcs_err_mask9.i170.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i169.1, i32 1
  %74 = ptrtoint ptr %pcs_err_mask9.i170.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pcs_err_mask9.i170.1, align 4
  %and10.i171.1 = and i32 %75, %call38.1
  %pcs_err_shift12.i172.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i169.1, i32 2
  %76 = ptrtoint ptr %pcs_err_shift12.i172.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pcs_err_shift12.i172.1, align 4
  %shr13.i173.1 = lshr i32 %and10.i171.1, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr13.i173.1)
  %tobool14.not.i174.1 = icmp eq i32 %shr13.i173.1, 0
  br i1 %tobool14.not.i174.1, label %for.body7.i175.1.for.inc24.i181.1_crit_edge, label %do.end18.i178.1

for.body7.i175.1.for.inc24.i181.1_crit_edge:      ; preds = %for.body7.i175.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc24.i181.1

do.end18.i178.1:                                  ; preds = %for.body7.i175.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i176.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i169.1
  %78 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %adev, align 8
  %80 = ptrtoint ptr %arrayidx8.i176.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx8.i176.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.66, ptr noundef %81) #14
  %add22.i177.1 = add i32 %shr13.i173.1, %ue_cnt.13.1
  br label %for.inc24.i181.1

for.inc24.i181.1:                                 ; preds = %do.end18.i178.1, %for.body7.i175.1.for.inc24.i181.1_crit_edge
  %ue_cnt.14.1 = phi i32 [ %ue_cnt.13.1, %for.body7.i175.1.for.inc24.i181.1_crit_edge ], [ %add22.i177.1, %do.end18.i178.1 ]
  %inc25.i179.1 = add nuw nsw i32 %i.12.i169.1, 1
  %exitcond.not.i180.1 = icmp eq i32 %inc25.i179.1, 18
  br i1 %exitcond.not.i180.1, label %for.inc24.i181.1.sw.epilog_crit_edge, label %for.inc24.i181.1.for.body7.i175.1_crit_edge

for.inc24.i181.1.for.body7.i175.1_crit_edge:      ; preds = %for.inc24.i181.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i175.1

for.inc24.i181.1.sw.epilog_crit_edge:             ; preds = %for.inc24.i181.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body49:                                       ; preds = %for.inc57.for.body49_crit_edge, %for.cond47.preheader
  %i.4237 = phi i32 [ 0, %for.cond47.preheader ], [ %inc58, %for.inc57.for.body49_crit_edge ]
  %ue_cnt.16236 = phi i32 [ 0, %for.cond47.preheader ], [ %ue_cnt.19, %for.inc57.for.body49_crit_edge ]
  %82 = ptrtoint ptr %pcie_rreg50 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pcie_rreg50, align 8
  %arrayidx51 = getelementptr [8 x i32], ptr @xgmi23_pcs_err_status_reg_aldebaran, i32 0, i32 %i.4237
  %84 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx51, align 4
  %call52 = tail call i32 %83(ptr noundef %adev, i32 noundef %85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.body49.for.inc57_crit_edge, label %for.body49.for.body.i189_crit_edge

for.body49.for.body.i189_crit_edge:               ; preds = %for.body49
  br label %for.body.i189

for.body49.for.inc57_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc57

for.body.i189:                                    ; preds = %for.inc.i195.for.body.i189_crit_edge, %for.body49.for.body.i189_crit_edge
  %ue_cnt.17 = phi i32 [ %ue_cnt.18, %for.inc.i195.for.body.i189_crit_edge ], [ %ue_cnt.16236, %for.body49.for.body.i189_crit_edge ]
  %i.04.i183 = phi i32 [ %inc.i193, %for.inc.i195.for.body.i189_crit_edge ], [ 0, %for.body49.for.body.i189_crit_edge ]
  %pcs_err_mask.i184 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i183, i32 1
  %86 = ptrtoint ptr %pcs_err_mask.i184 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pcs_err_mask.i184, align 4
  %and.i185 = and i32 %87, %call52
  %pcs_err_shift.i186 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i183, i32 2
  %88 = ptrtoint ptr %pcs_err_shift.i186 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pcs_err_shift.i186, align 4
  %shr.i187 = lshr i32 %and.i185, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i187)
  %tobool2.not.i188 = icmp eq i32 %shr.i187, 0
  br i1 %tobool2.not.i188, label %for.body.i189.for.inc.i195_crit_edge, label %do.end.i192

for.body.i189.for.inc.i195_crit_edge:             ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i195

do.end.i192:                                      ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i190 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i183
  %90 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %adev, align 8
  %92 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i190, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.66, ptr noundef %93) #14
  %add.i191 = add i32 %shr.i187, %ue_cnt.17
  br label %for.inc.i195

for.inc.i195:                                     ; preds = %do.end.i192, %for.body.i189.for.inc.i195_crit_edge
  %ue_cnt.18 = phi i32 [ %ue_cnt.17, %for.body.i189.for.inc.i195_crit_edge ], [ %add.i191, %do.end.i192 ]
  %inc.i193 = add nuw nsw i32 %i.04.i183, 1
  %exitcond7.not.i194 = icmp eq i32 %inc.i193, 18
  br i1 %exitcond7.not.i194, label %for.inc.i195.for.inc57_crit_edge, label %for.inc.i195.for.body.i189_crit_edge

for.inc.i195.for.body.i189_crit_edge:             ; preds = %for.inc.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i189

for.inc.i195.for.inc57_crit_edge:                 ; preds = %for.inc.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc57

for.inc57:                                        ; preds = %for.inc.i195.for.inc57_crit_edge, %for.body49.for.inc57_crit_edge
  %ue_cnt.19 = phi i32 [ %ue_cnt.16236, %for.body49.for.inc57_crit_edge ], [ %ue_cnt.18, %for.inc.i195.for.inc57_crit_edge ]
  %inc58 = add nuw nsw i32 %i.4237, 1
  %exitcond.not = icmp eq i32 %inc58, 8
  br i1 %exitcond.not, label %for.inc57.for.body62_crit_edge, label %for.inc57.for.body49_crit_edge

for.inc57.for.body49_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body49

for.inc57.for.body62_crit_edge:                   ; preds = %for.inc57
  br label %for.body62

for.cond73.preheader:                             ; preds = %for.inc70
  %94 = ptrtoint ptr %pcie_rreg50 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pcie_rreg50, align 8
  %call78 = tail call i32 %95(ptr noundef %adev, i32 noundef 304087568) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %for.cond73.preheader.for.inc83_crit_edge, label %for.cond73.preheader.for.body7.i217_crit_edge

for.cond73.preheader.for.body7.i217_crit_edge:    ; preds = %for.cond73.preheader
  br label %for.body7.i217

for.cond73.preheader.for.inc83_crit_edge:         ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

for.body62:                                       ; preds = %for.inc70.for.body62_crit_edge, %for.inc57.for.body62_crit_edge
  %i.5239 = phi i32 [ %inc71, %for.inc70.for.body62_crit_edge ], [ 0, %for.inc57.for.body62_crit_edge ]
  %ue_cnt.20238 = phi i32 [ %ue_cnt.23, %for.inc70.for.body62_crit_edge ], [ %ue_cnt.19, %for.inc57.for.body62_crit_edge ]
  %96 = ptrtoint ptr %pcie_rreg50 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pcie_rreg50, align 8
  %arrayidx64 = getelementptr [8 x i32], ptr @xgmi3x16_pcs_err_status_reg_aldebaran, i32 0, i32 %i.5239
  %98 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx64, align 4
  %call65 = tail call i32 %97(ptr noundef %adev, i32 noundef %99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %for.body62.for.inc70_crit_edge, label %for.body62.for.body.i203_crit_edge

for.body62.for.body.i203_crit_edge:               ; preds = %for.body62
  br label %for.body.i203

for.body62.for.inc70_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70

for.body.i203:                                    ; preds = %for.inc.i209.for.body.i203_crit_edge, %for.body62.for.body.i203_crit_edge
  %ue_cnt.21 = phi i32 [ %ue_cnt.22, %for.inc.i209.for.body.i203_crit_edge ], [ %ue_cnt.20238, %for.body62.for.body.i203_crit_edge ]
  %i.04.i197 = phi i32 [ %inc.i207, %for.inc.i209.for.body.i203_crit_edge ], [ 0, %for.body62.for.body.i203_crit_edge ]
  %pcs_err_mask.i198 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i197, i32 1
  %100 = ptrtoint ptr %pcs_err_mask.i198 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pcs_err_mask.i198, align 4
  %and.i199 = and i32 %101, %call65
  %pcs_err_shift.i200 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i197, i32 2
  %102 = ptrtoint ptr %pcs_err_shift.i200 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pcs_err_shift.i200, align 4
  %shr.i201 = lshr i32 %and.i199, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i201)
  %tobool2.not.i202 = icmp eq i32 %shr.i201, 0
  br i1 %tobool2.not.i202, label %for.body.i203.for.inc.i209_crit_edge, label %do.end.i206

for.body.i203.for.inc.i209_crit_edge:             ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i209

do.end.i206:                                      ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i204 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @xgmi_pcs_ras_fields, i32 0, i32 %i.04.i197
  %104 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %adev, align 8
  %106 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i204, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str.66, ptr noundef %107) #14
  %add.i205 = add i32 %shr.i201, %ue_cnt.21
  br label %for.inc.i209

for.inc.i209:                                     ; preds = %do.end.i206, %for.body.i203.for.inc.i209_crit_edge
  %ue_cnt.22 = phi i32 [ %ue_cnt.21, %for.body.i203.for.inc.i209_crit_edge ], [ %add.i205, %do.end.i206 ]
  %inc.i207 = add nuw nsw i32 %i.04.i197, 1
  %exitcond7.not.i208 = icmp eq i32 %inc.i207, 18
  br i1 %exitcond7.not.i208, label %for.inc.i209.for.inc70_crit_edge, label %for.inc.i209.for.body.i203_crit_edge

for.inc.i209.for.body.i203_crit_edge:             ; preds = %for.inc.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i203

for.inc.i209.for.inc70_crit_edge:                 ; preds = %for.inc.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70

for.inc70:                                        ; preds = %for.inc.i209.for.inc70_crit_edge, %for.body62.for.inc70_crit_edge
  %ue_cnt.23 = phi i32 [ %ue_cnt.20238, %for.body62.for.inc70_crit_edge ], [ %ue_cnt.22, %for.inc.i209.for.inc70_crit_edge ]
  %inc71 = add nuw nsw i32 %i.5239, 1
  %exitcond252.not = icmp eq i32 %inc71, 8
  br i1 %exitcond252.not, label %for.cond73.preheader, label %for.inc70.for.body62_crit_edge

for.inc70.for.body62_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body62

for.body7.i217:                                   ; preds = %for.inc24.i223.for.body7.i217_crit_edge, %for.cond73.preheader.for.body7.i217_crit_edge
  %ue_cnt.25 = phi i32 [ %ue_cnt.26, %for.inc24.i223.for.body7.i217_crit_edge ], [ %ue_cnt.23, %for.cond73.preheader.for.body7.i217_crit_edge ]
  %i.12.i211 = phi i32 [ %inc25.i221, %for.inc24.i223.for.body7.i217_crit_edge ], [ 0, %for.cond73.preheader.for.body7.i217_crit_edge ]
  %pcs_err_mask9.i212 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i211, i32 1
  %108 = ptrtoint ptr %pcs_err_mask9.i212 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pcs_err_mask9.i212, align 4
  %and10.i213 = and i32 %109, %call78
  %pcs_err_shift12.i214 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i211, i32 2
  %110 = ptrtoint ptr %pcs_err_shift12.i214 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pcs_err_shift12.i214, align 4
  %shr13.i215 = lshr i32 %and10.i213, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr13.i215)
  %tobool14.not.i216 = icmp eq i32 %shr13.i215, 0
  br i1 %tobool14.not.i216, label %for.body7.i217.for.inc24.i223_crit_edge, label %do.end18.i220

for.body7.i217.for.inc24.i223_crit_edge:          ; preds = %for.body7.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc24.i223

do.end18.i220:                                    ; preds = %for.body7.i217
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i218 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i211
  %112 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %adev, align 8
  %114 = ptrtoint ptr %arrayidx8.i218 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx8.i218, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %113, ptr noundef nonnull @.str.66, ptr noundef %115) #14
  %add22.i219 = add i32 %shr13.i215, %ue_cnt.25
  br label %for.inc24.i223

for.inc24.i223:                                   ; preds = %do.end18.i220, %for.body7.i217.for.inc24.i223_crit_edge
  %ue_cnt.26 = phi i32 [ %ue_cnt.25, %for.body7.i217.for.inc24.i223_crit_edge ], [ %add22.i219, %do.end18.i220 ]
  %inc25.i221 = add nuw nsw i32 %i.12.i211, 1
  %exitcond.not.i222 = icmp eq i32 %inc25.i221, 18
  br i1 %exitcond.not.i222, label %for.inc24.i223.for.inc83_crit_edge, label %for.inc24.i223.for.body7.i217_crit_edge

for.inc24.i223.for.body7.i217_crit_edge:          ; preds = %for.inc24.i223
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i217

for.inc24.i223.for.inc83_crit_edge:               ; preds = %for.inc24.i223
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

for.inc83:                                        ; preds = %for.inc24.i223.for.inc83_crit_edge, %for.cond73.preheader.for.inc83_crit_edge
  %ue_cnt.27 = phi i32 [ %ue_cnt.23, %for.cond73.preheader.for.inc83_crit_edge ], [ %ue_cnt.26, %for.inc24.i223.for.inc83_crit_edge ]
  %116 = ptrtoint ptr %pcie_rreg50 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pcie_rreg50, align 8
  %call78.1 = tail call i32 %117(ptr noundef %adev, i32 noundef 305136144) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.1)
  %tobool79.not.1 = icmp eq i32 %call78.1, 0
  br i1 %tobool79.not.1, label %for.inc83.sw.epilog_crit_edge, label %for.inc83.for.body7.i217.1_crit_edge

for.inc83.for.body7.i217.1_crit_edge:             ; preds = %for.inc83
  br label %for.body7.i217.1

for.inc83.sw.epilog_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body7.i217.1:                                 ; preds = %for.inc24.i223.1.for.body7.i217.1_crit_edge, %for.inc83.for.body7.i217.1_crit_edge
  %ue_cnt.25.1 = phi i32 [ %ue_cnt.26.1, %for.inc24.i223.1.for.body7.i217.1_crit_edge ], [ %ue_cnt.27, %for.inc83.for.body7.i217.1_crit_edge ]
  %i.12.i211.1 = phi i32 [ %inc25.i221.1, %for.inc24.i223.1.for.body7.i217.1_crit_edge ], [ 0, %for.inc83.for.body7.i217.1_crit_edge ]
  %pcs_err_mask9.i212.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i211.1, i32 1
  %118 = ptrtoint ptr %pcs_err_mask9.i212.1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pcs_err_mask9.i212.1, align 4
  %and10.i213.1 = and i32 %119, %call78.1
  %pcs_err_shift12.i214.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i211.1, i32 2
  %120 = ptrtoint ptr %pcs_err_shift12.i214.1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pcs_err_shift12.i214.1, align 4
  %shr13.i215.1 = lshr i32 %and10.i213.1, %121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr13.i215.1)
  %tobool14.not.i216.1 = icmp eq i32 %shr13.i215.1, 0
  br i1 %tobool14.not.i216.1, label %for.body7.i217.1.for.inc24.i223.1_crit_edge, label %do.end18.i220.1

for.body7.i217.1.for.inc24.i223.1_crit_edge:      ; preds = %for.body7.i217.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc24.i223.1

do.end18.i220.1:                                  ; preds = %for.body7.i217.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx8.i218.1 = getelementptr [18 x %struct.amdgpu_pcs_ras_field], ptr @wafl_pcs_ras_fields, i32 0, i32 %i.12.i211.1
  %122 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %adev, align 8
  %124 = ptrtoint ptr %arrayidx8.i218.1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx8.i218.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %123, ptr noundef nonnull @.str.66, ptr noundef %125) #14
  %add22.i219.1 = add i32 %shr13.i215.1, %ue_cnt.25.1
  br label %for.inc24.i223.1

for.inc24.i223.1:                                 ; preds = %do.end18.i220.1, %for.body7.i217.1.for.inc24.i223.1_crit_edge
  %ue_cnt.26.1 = phi i32 [ %ue_cnt.25.1, %for.body7.i217.1.for.inc24.i223.1_crit_edge ], [ %add22.i219.1, %do.end18.i220.1 ]
  %inc25.i221.1 = add nuw nsw i32 %i.12.i211.1, 1
  %exitcond.not.i222.1 = icmp eq i32 %inc25.i221.1, 18
  br i1 %exitcond.not.i222.1, label %for.inc24.i223.1.sw.epilog_crit_edge, label %for.inc24.i223.1.for.body7.i217.1_crit_edge

for.inc24.i223.1.for.body7.i217.1_crit_edge:      ; preds = %for.inc24.i223.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i217.1

for.inc24.i223.1.sw.epilog_crit_edge:             ; preds = %for.inc24.i223.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.63) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.inc24.i223.1.sw.epilog_crit_edge, %for.inc83.sw.epilog_crit_edge, %for.inc24.i181.1.sw.epilog_crit_edge, %for.inc43.sw.epilog_crit_edge, %for.inc24.i.1.sw.epilog_crit_edge, %for.inc16.sw.epilog_crit_edge
  %ue_cnt.28 = phi i32 [ 0, %do.end ], [ %ue_cnt.7, %for.inc16.sw.epilog_crit_edge ], [ %ue_cnt.15, %for.inc43.sw.epilog_crit_edge ], [ %ue_cnt.27, %for.inc83.sw.epilog_crit_edge ], [ %ue_cnt.6.1, %for.inc24.i.1.sw.epilog_crit_edge ], [ %ue_cnt.14.1, %for.inc24.i181.1.sw.epilog_crit_edge ], [ %ue_cnt.26.1, %for.inc24.i223.1.sw.epilog_crit_edge ]
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 10
  %128 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ras_funcs, align 4
  %reset_ras_error_count = getelementptr inbounds %struct.amdgpu_xgmi_ras_funcs, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %reset_ras_error_count to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reset_ras_error_count, align 4
  tail call void %131(ptr noundef %adev) #10
  %132 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ras_error_status, align 4
  %add = add i32 %133, %ue_cnt.28
  store i32 %add, ptr %ras_error_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %amdgpu_ras_is_supported.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_xgmi_reset_ras_error_count(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 23, label %for.cond.preheader
    i32 21, label %for.cond2.preheader
    i32 25, label %for.cond10.preheader
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.cond10.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pcie_wreg.i51 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %3 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %4(ptr noundef %adev, i32 noundef 295703056, i32 noundef -1) #10
  %5 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %6(ptr noundef %adev, i32 noundef 295703056, i32 noundef 0) #10
  %7 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %8(ptr noundef %adev, i32 noundef 296751632, i32 noundef -1) #10
  %9 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %10(ptr noundef %adev, i32 noundef 296751632, i32 noundef 0) #10
  %11 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %12(ptr noundef %adev, i32 noundef 297800208, i32 noundef -1) #10
  %13 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %14(ptr noundef %adev, i32 noundef 297800208, i32 noundef 0) #10
  %15 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %16(ptr noundef %adev, i32 noundef 298848784, i32 noundef -1) #10
  %17 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %18(ptr noundef %adev, i32 noundef 298848784, i32 noundef 0) #10
  %19 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %20(ptr noundef %adev, i32 noundef 299897360, i32 noundef -1) #10
  %21 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %22(ptr noundef %adev, i32 noundef 299897360, i32 noundef 0) #10
  %23 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %24(ptr noundef %adev, i32 noundef 300945936, i32 noundef -1) #10
  %25 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %26(ptr noundef %adev, i32 noundef 300945936, i32 noundef 0) #10
  %27 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %28(ptr noundef %adev, i32 noundef 301994512, i32 noundef -1) #10
  %29 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %30(ptr noundef %adev, i32 noundef 301994512, i32 noundef 0) #10
  %31 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %32(ptr noundef %adev, i32 noundef 303043088, i32 noundef -1) #10
  %33 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %34(ptr noundef %adev, i32 noundef 303043088, i32 noundef 0) #10
  %35 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %36(ptr noundef %adev, i32 noundef 295698956, i32 noundef -1) #10
  %37 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %38(ptr noundef %adev, i32 noundef 295698956, i32 noundef 0) #10
  %39 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %40(ptr noundef %adev, i32 noundef 296747532, i32 noundef -1) #10
  %41 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %42(ptr noundef %adev, i32 noundef 296747532, i32 noundef 0) #10
  %43 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %44(ptr noundef %adev, i32 noundef 297796108, i32 noundef -1) #10
  %45 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %46(ptr noundef %adev, i32 noundef 297796108, i32 noundef 0) #10
  %47 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %48(ptr noundef %adev, i32 noundef 298844684, i32 noundef -1) #10
  %49 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %50(ptr noundef %adev, i32 noundef 298844684, i32 noundef 0) #10
  %51 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %52(ptr noundef %adev, i32 noundef 299893260, i32 noundef -1) #10
  %53 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %54(ptr noundef %adev, i32 noundef 299893260, i32 noundef 0) #10
  %55 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %56(ptr noundef %adev, i32 noundef 300941836, i32 noundef -1) #10
  %57 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %58(ptr noundef %adev, i32 noundef 300941836, i32 noundef 0) #10
  %59 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %60(ptr noundef %adev, i32 noundef 301990412, i32 noundef -1) #10
  %61 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %62(ptr noundef %adev, i32 noundef 301990412, i32 noundef 0) #10
  %63 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %64(ptr noundef %adev, i32 noundef 303038988, i32 noundef -1) #10
  %65 = ptrtoint ptr %pcie_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcie_wreg.i51, align 4
  tail call void %66(ptr noundef %adev, i32 noundef 303038988, i32 noundef 0) #10
  br label %sw.epilog.sink.split

for.cond2.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pcie_wreg.i50 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  br label %sw.epilog.sink.split

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %67 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %68(ptr noundef %adev, i32 noundef 296682000, i32 noundef -1) #10
  %69 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %70(ptr noundef %adev, i32 noundef 296682000, i32 noundef 0) #10
  %71 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %72(ptr noundef %adev, i32 noundef 297730576, i32 noundef -1) #10
  %73 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %74(ptr noundef %adev, i32 noundef 297730576, i32 noundef 0) #10
  %75 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %76(ptr noundef %adev, i32 noundef 301924880, i32 noundef -1) #10
  %77 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %78(ptr noundef %adev, i32 noundef 301924880, i32 noundef 0) #10
  %79 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %80(ptr noundef %adev, i32 noundef 302973456, i32 noundef -1) #10
  %81 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %82(ptr noundef %adev, i32 noundef 302973456, i32 noundef 0) #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %for.cond.preheader, %for.cond2.preheader, %for.cond10.preheader
  %pcie_wreg.i51.sink72 = phi ptr [ %pcie_wreg.i51, %for.cond10.preheader ], [ %pcie_wreg.i50, %for.cond2.preheader ], [ %pcie_wreg.i, %for.cond.preheader ]
  %.sink70 = phi i32 [ 304087568, %for.cond10.preheader ], [ 296682000, %for.cond2.preheader ], [ 304022032, %for.cond.preheader ]
  %.sink64 = phi i32 [ 305136144, %for.cond10.preheader ], [ 297730576, %for.cond2.preheader ], [ 305070608, %for.cond.preheader ]
  %83 = ptrtoint ptr %pcie_wreg.i51.sink72 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcie_wreg.i51.sink72, align 4
  tail call void %84(ptr noundef %adev, i32 noundef %.sink70, i32 noundef -1) #10
  %85 = ptrtoint ptr %pcie_wreg.i51.sink72 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pcie_wreg.i51.sink72, align 4
  tail call void %86(ptr noundef %adev, i32 noundef %.sink70, i32 noundef 0) #10
  %87 = ptrtoint ptr %pcie_wreg.i51.sink72 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pcie_wreg.i51.sink72, align 4
  tail call void %88(ptr noundef %adev, i32 noundef %.sink64, i32 noundef -1) #10
  %89 = ptrtoint ptr %pcie_wreg.i51.sink72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcie_wreg.i51.sink72, align 4
  tail call void %90(ptr noundef %adev, i32 noundef %.sink64, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_xgmi_show_attrs(ptr nocapture noundef readonly %kobj, ptr noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @amdgpu_xgmi_hive_id
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hive_id = getelementptr inbounds %struct.amdgpu_hive_info, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %hive_id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hive_id, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.37, i64 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_xgmi_show_device_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %xgmi = getelementptr i8, ptr %1, i32 10168
  %2 = ptrtoint ptr %xgmi to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %xgmi, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i64 noundef %3) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_xgmi_show_error(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %funcs = getelementptr i8, ptr %1, i32 88068
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_fica = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %get_fica to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_fica, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %set_fica = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %set_fica to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_fica, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %call12 = tail call i64 %5(ptr noundef %add.ptr.i, i32 noundef 4549121) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %call12)
  %cmp.not = icmp eq i64 %call12, 31
  br i1 %cmp.not, label %if.end.if.end15_crit_edge, label %do.end

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #14
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %get_fica18 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %get_fica18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_fica18, align 4
  %call19 = tail call i64 %11(ptr noundef %add.ptr.i, i32 noundef 4549129) #10
  %and = and i64 %call19, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp20 = icmp eq i64 %and, 2
  %shr = lshr i64 %call19, 62
  %and22 = and i64 %shr, 1
  %shr23 = lshr i64 %call19, 63
  %add = add nuw nsw i64 %and22, %shr23
  %conv = trunc i64 %add to i32
  %error_count.0 = select i1 %cmp20, i32 %conv, i32 0
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %set_fica27 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %set_fica27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_fica27, align 4
  tail call void %15(ptr noundef %add.ptr.i, i32 noundef 4549129, i32 noundef 0, i32 noundef 0) #10
  %call28 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %error_count.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end15 ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_late_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ras_late_fini(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120, !121, !122, !124, !126, !128, !129, !130, !131, !132, !134, !136, !137, !138, !139, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @amdgpu_xgmi_hive_type, !1, !"amdgpu_xgmi_hive_type", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 238, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 383, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @amdgpu_get_xgmi_hive._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @amdgpu_get_xgmi_hive._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 392, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 392, i32 10}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 394, i32 3}
!16 = !{ptr @amdgpu_get_xgmi_hive._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @amdgpu_get_xgmi_hive._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @amdgpu_get_xgmi_hive.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 404, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 499, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @amdgpu_xgmi_update_topology._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @amdgpu_xgmi_update_topology._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 581, i32 4}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @amdgpu_xgmi_add_device._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @amdgpu_xgmi_add_device._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 588, i32 4}
!33 = !{ptr @amdgpu_xgmi_add_device._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @amdgpu_xgmi_add_device._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 595, i32 4}
!37 = !{ptr @amdgpu_xgmi_add_device._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @amdgpu_xgmi_add_device._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 607, i32 3}
!41 = !{ptr @amdgpu_xgmi_add_device._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @amdgpu_xgmi_add_device._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 644, i32 5}
!45 = !{ptr @amdgpu_xgmi_add_device._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @amdgpu_xgmi_add_device._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 666, i32 6}
!49 = !{ptr @amdgpu_xgmi_add_device._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @amdgpu_xgmi_add_device._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 690, i32 3}
!53 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @amdgpu_xgmi_add_device._entry.30, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @amdgpu_xgmi_add_device._entry_ptr.33, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 694, i32 3}
!58 = !{ptr @amdgpu_xgmi_add_device._entry.34, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @amdgpu_xgmi_add_device._entry_ptr.36, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @xgmi_ras_funcs, !61, !"xgmi_ras_funcs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 951, i32 36}
!62 = !{ptr @amdgpu_xgmi_hive_ops, !63, !"amdgpu_xgmi_hive_ops", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 234, i32 31}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 220, i32 35}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 203, i32 10}
!68 = !{ptr @amdgpu_xgmi_hive_id, !69, !"amdgpu_xgmi_hive_id", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 202, i32 25}
!70 = !{ptr @amdgpu_xgmi_hive_groups, !71, !"amdgpu_xgmi_hive_groups", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 211, i32 1}
!72 = !{ptr @amdgpu_xgmi_hive_group, !71, !"amdgpu_xgmi_hive_group", i1 false, i1 false}
!73 = !{ptr @amdgpu_xgmi_hive_attrs, !74, !"amdgpu_xgmi_hive_attrs", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 207, i32 26}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 39, i32 8}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @xgmi_mutex, !76, !"xgmi_mutex", i1 false, i1 false}
!79 = !{ptr @xgmi_hive_list, !80, !"xgmi_hive_list", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 43, i32 8}
!81 = !{ptr @sema_init.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 554, i32 4}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @amdgpu_xgmi_initialize_hive_get_data_partition._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @amdgpu_xgmi_initialize_hive_get_data_partition._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 301, i32 3}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @amdgpu_xgmi_sysfs_add_dev_info._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @amdgpu_xgmi_sysfs_add_dev_info._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 308, i32 3}
!99 = !{ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.47, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @amdgpu_xgmi_sysfs_add_dev_info._entry_ptr.49, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 316, i32 4}
!103 = !{ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.50, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @amdgpu_xgmi_sysfs_add_dev_info._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 321, i32 16}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 325, i32 3}
!109 = !{ptr @amdgpu_xgmi_sysfs_add_dev_info._entry.54, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @amdgpu_xgmi_sysfs_add_dev_info._entry_ptr.56, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 289, i32 8}
!113 = !{ptr @dev_attr_xgmi_device_id, !112, !"dev_attr_xgmi_device_id", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 290, i32 8}
!116 = !{ptr @dev_attr_xgmi_error, !115, !"dev_attr_xgmi_error", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 276, i32 3}
!119 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @amdgpu_xgmi_show_error._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @amdgpu_xgmi_show_error._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 285, i32 25}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 742, i32 17}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 939, i32 3}
!128 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @amdgpu_xgmi_query_ras_error_count._entry, !127, !"_entry", i1 false, i1 false}
!131 = !{ptr @amdgpu_xgmi_query_ras_error_count._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @xgmi_pcs_err_status_reg_arct, !133, !"xgmi_pcs_err_status_reg_arct", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 55, i32 18}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 845, i32 5}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @amdgpu_xgmi_query_pcs_error_status._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @amdgpu_xgmi_query_pcs_error_status._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @amdgpu_xgmi_query_pcs_error_status._entry.68, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 858, i32 5}
!141 = !{ptr @amdgpu_xgmi_query_pcs_error_status._entry_ptr.69, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 98, i32 3}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 100, i32 3}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 102, i32 3}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 104, i32 3}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 106, i32 3}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 108, i32 3}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 110, i32 3}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 112, i32 3}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 114, i32 3}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 116, i32 3}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 118, i32 3}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 120, i32 3}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 122, i32 3}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 124, i32 3}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 126, i32 3}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 128, i32 3}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 130, i32 3}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 132, i32 3}
!178 = !{ptr @xgmi_pcs_ras_fields, !179, !"xgmi_pcs_ras_fields", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 97, i32 42}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 137, i32 3}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 139, i32 3}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 141, i32 3}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 143, i32 3}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 145, i32 3}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 147, i32 3}
!192 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 149, i32 3}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 151, i32 3}
!196 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 153, i32 3}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 155, i32 3}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 157, i32 3}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 159, i32 3}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 161, i32 3}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 163, i32 3}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 165, i32 3}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 167, i32 3}
!212 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 169, i32 3}
!214 = !{ptr @.str.105, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 171, i32 3}
!216 = !{ptr @wafl_pcs_ras_fields, !217, !"wafl_pcs_ras_fields", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 136, i32 42}
!218 = distinct !{null, !219, !"wafl_pcs_err_status_reg_arct", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 65, i32 18}
!220 = distinct !{null, !221, !"xgmi_pcs_err_status_reg_vg20", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 45, i32 18}
!222 = distinct !{null, !223, !"wafl_pcs_err_status_reg_vg20", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 50, i32 18}
!224 = !{ptr @xgmi23_pcs_err_status_reg_aldebaran, !225, !"xgmi23_pcs_err_status_reg_aldebaran", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 70, i32 18}
!226 = !{ptr @xgmi3x16_pcs_err_status_reg_aldebaran, !227, !"xgmi3x16_pcs_err_status_reg_aldebaran", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 81, i32 18}
!228 = distinct !{null, !229, !"walf_pcs_err_status_reg_aldebaran", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c", i32 92, i32 18}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"min_enum_size", i32 4}
!232 = !{i32 8, !"branch-target-enforcement", i32 0}
!233 = !{i32 8, !"sign-return-address", i32 0}
!234 = !{i32 8, !"sign-return-address-all", i32 0}
!235 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!236 = !{i32 7, !"uwtable", i32 1}
!237 = !{i32 7, !"frame-pointer", i32 2}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{i8 0, i8 2}
!240 = !{i64 2148577458}
!241 = !{i64 2148492167, i64 2148492199, i64 2148492228, i64 2148492262, i64 2148492293, i64 2148492316}
!242 = !{i64 2148577687}
