; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ring = type { ptr, ptr, %struct.amdgpu_fence_driver, %struct.drm_gpu_scheduler, ptr, ptr, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, ptr, i64, ptr, i64, i32, i8, i8, i32, i32, i64, [16 x i8], i32, i32, i64, ptr, i32, i64, ptr, i32, ptr, i8, i8, i32 }
%struct.amdgpu_fence_driver = type { i64, ptr, i32, %struct.atomic_t, i8, ptr, i32, %struct.timer_list, i32, %struct.spinlock, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.91] }
%struct.anon.91 = type { [12 x %struct.ttm_pool_type] }
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
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.82 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@amdgpu_ring_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_sched_hw_submission = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_ring_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: (%d) ring rptr_offs wb alloc failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu_ring_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_ring_init._entry_ptr = internal global ptr @amdgpu_ring_init._entry, section ".printk_index", align 4
@amdgpu_ring_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: (%d) ring wptr_offs wb alloc failed\0A\00", [51 x i8] zeroinitializer }, align 32
@amdgpu_ring_init._entry_ptr.7 = internal global ptr @amdgpu_ring_init._entry.5, section ".printk_index", align 4
@amdgpu_ring_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str, i32 214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: (%d) ring fence_offs wb alloc failed\0A\00", [50 x i8] zeroinitializer }, align 32
@amdgpu_ring_init._entry_ptr.10 = internal global ptr @amdgpu_ring_init._entry.8, section ".printk_index", align 4
@amdgpu_ring_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: (%d) ring trail_fence_offs wb alloc failed\0A\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_ring_init._entry_ptr.13 = internal global ptr @amdgpu_ring_init._entry.11, section ".printk_index", align 4
@amdgpu_ring_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: (%d) ring cond_exec_polling wb alloc failed\0A\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_ring_init._entry_ptr.16 = internal global ptr @amdgpu_ring_init._entry.14, section ".printk_index", align 4
@amdgpu_ring_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: failed initializing fences (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_ring_init._entry_ptr.19 = internal global ptr @amdgpu_ring_init._entry.17, section ".printk_index", align 4
@amdgpu_ring_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str, i32 257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: (%d) ring create failed\0A\00", [63 x i8] zeroinitializer }, align 32
@amdgpu_ring_init._entry_ptr.22 = internal global ptr @amdgpu_ring_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_ring_%s\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_ring_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_ring_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* ring %s test failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ring test on %s succeeded\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 70, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 202, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 208, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 214, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 220, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 230, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 240, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 257, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 426, i32 16 }
@___asan_gen_.84 = private unnamed_addr constant [25 x i8] c"amdgpu_debugfs_ring_fops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 410, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 450, i32 3 }
@___asan_gen_.91 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 453, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 314, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @amdgpu_ring_init._entry, ptr @amdgpu_ring_init._entry.11, ptr @amdgpu_ring_init._entry.14, ptr @amdgpu_ring_init._entry.17, ptr @amdgpu_ring_init._entry.20, ptr @amdgpu_ring_init._entry.5, ptr @amdgpu_ring_init._entry.8, ptr @amdgpu_ring_init._entry_ptr, ptr @amdgpu_ring_init._entry_ptr.10, ptr @amdgpu_ring_init._entry_ptr.13, ptr @amdgpu_ring_init._entry_ptr.16, ptr @amdgpu_ring_init._entry_ptr.19, ptr @amdgpu_ring_init._entry_ptr.22, ptr @amdgpu_ring_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @amdgpu_debugfs_ring_fops, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ring_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ring_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ring_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ring_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ring_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ring_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ring_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_ring_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef %ndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %align_mask = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %align_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %align_mask, align 4
  %add = add i32 %3, %ndw
  %neg = xor i32 %3, -1
  %and = and i32 %add, %neg
  %max_dw = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 10
  %4 = ptrtoint ptr %max_dw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_dw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp = icmp ugt i32 %and, %5
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b58 = load i1, ptr @amdgpu_ring_alloc.__already_done, align 1
  br i1 %.b58, label %land.rhs.return_crit_edge, label %if.then, !prof !54

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @amdgpu_ring_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end39:                                         ; preds = %entry
  %count_dw = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %count_dw, align 8
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %7 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %wptr, align 8
  %wptr_old = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 8
  %9 = ptrtoint ptr %wptr_old to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %wptr_old, align 8
  %begin_use = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 28
  %10 = ptrtoint ptr %begin_use to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %begin_use, align 4
  %tobool41.not = icmp eq ptr %11, null
  br i1 %tobool41.not, label %if.end39.return_crit_edge, label %if.then42

if.end39.return_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %ring) #9
  br label %return

return:                                           ; preds = %if.then42, %if.end39.return_crit_edge, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.then42 ], [ 0, %if.end39.return_crit_edge ], [ -12, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ring_insert_nop(ptr nocapture noundef %ring, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3.not = icmp eq i32 %count, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pr = load i32, ptr %count_dw.i, align 8
  br label %for.body

for.body:                                         ; preds = %amdgpu_ring_write.exit.for.body_crit_edge, %for.body.lr.ph
  %1 = phi i32 [ %.pr, %for.body.lr.ph ], [ %dec.i, %amdgpu_ring_write.exit.for.body_crit_edge ]
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %amdgpu_ring_write.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %nop = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.amdgpu_ring_write.exit_crit_edge

for.body.amdgpu_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #9
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %for.body.amdgpu_ring_write.exit_crit_edge
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 4
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %10 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_mask.i, align 8
  %12 = trunc i64 %9 to i32
  %idxprom.i = and i32 %11, %12
  %arrayidx.i = getelementptr i32, ptr %7, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %5, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ptr_mask.i, align 8
  %16 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %16, %15
  store i64 %and3.i, ptr %wptr.i, align 8
  %17 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %amdgpu_ring_write.exit.for.end_crit_edge, label %amdgpu_ring_write.exit.for.body_crit_edge

amdgpu_ring_write.exit.for.body_crit_edge:        ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

amdgpu_ring_write.exit.for.end_crit_edge:         ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %amdgpu_ring_write.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ring_generic_pad_ib(ptr nocapture noundef readonly %ring, ptr nocapture noundef %ib) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length_dw, align 4
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %align_mask6 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %align_mask6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %align_mask6, align 4
  %and7 = and i32 %5, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not8 = icmp eq i32 %and7, 0
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %3, %while.body.lr.ph ], [ %16, %while.body.while.body_crit_edge ]
  %7 = phi i32 [ %1, %while.body.lr.ph ], [ %14, %while.body.while.body_crit_edge ]
  %nop = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %nop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nop, align 4
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr, align 8
  %inc = add i32 %7, 1
  %12 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %7
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %arrayidx, align 4
  %14 = load i32, ptr %length_dw, align 4
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs, align 4
  %align_mask = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %align_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %align_mask, align 4
  %and = and i32 %18, %14
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ring_commit(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %align_mask = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %align_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %align_mask, align 4
  %add = add i32 %3, 1
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %3, %6
  %conv4 = sub i32 %add, %7
  %rem = urem i32 %conv4, %add
  %insert_nop = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %insert_nop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %insert_nop, align 4
  tail call void %9(ptr noundef %ring, i32 noundef %rem) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %set_wptr = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %set_wptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_wptr, align 4
  tail call void %13(ptr noundef %ring) #9
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 4
  %end_use = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %15, i32 0, i32 29
  %16 = ptrtoint ptr %end_use to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end_use, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %17(ptr noundef %ring) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ring_undo(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr_old = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 8
  %0 = ptrtoint ptr %wptr_old to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wptr_old, align 8
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %wptr, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %end_use = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %4, i32 0, i32 29
  %5 = ptrtoint ptr %end_use to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end_use, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %6(ptr noundef %ring) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ring_init(ptr noundef %adev, ptr noundef %ring, i32 noundef %max_dw, ptr noundef %irq_src, i32 noundef %irq_type, i32 noundef %hw_prio, ptr noundef %sched_score) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_hw_submission to i32))
  %0 = load i32, ptr @amdgpu_sched_hw_submission, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %funcs, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp = icmp eq i32 %4, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.smax.i32(i32 %0, i32 256)
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %page = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 4
  %cmp2 = icmp eq ptr %page, %ring
  %spec.select = select i1 %cmp2, i32 256, i32 %0
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  %sched_hw_submission.0 = phi i32 [ %5, %if.then ], [ %spec.select, %if.else ]
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 8
  %cmp6 = icmp eq ptr %7, null
  br i1 %cmp6, label %if.then7, label %if.end4.if.end17_crit_edge

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then7:                                         ; preds = %if.end4
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 89
  %8 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %9)
  %cmp8 = icmp ugt i32 %9, 27
  br i1 %cmp8, label %if.then7.cleanup_crit_edge, label %if.end10

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.then7
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %adev, ptr %ring, align 8
  %11 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_rings, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %num_rings, align 8
  %idx = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 15
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %idx, align 4
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 90, i32 %12
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ring, ptr %arrayidx14, align 4
  %call = tail call i32 @amdgpu_fence_driver_init_ring(ptr noundef %ring, i32 noundef %sched_hw_submission.0, ptr noundef %sched_score) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10.if.end17_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %if.end10.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  %rptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 6
  %call18 = tail call i32 @amdgpu_device_wb_get(ptr noundef %adev, ptr noundef %rptr_offs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef %call18) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %call22 = tail call i32 @amdgpu_device_wb_get(ptr noundef %adev, ptr noundef %wptr_offs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6, i32 noundef %call22) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %fence_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 27
  %call30 = tail call i32 @amdgpu_device_wb_get(ptr noundef %adev, ptr noundef %fence_offs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef %call30) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %trail_fence_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 31
  %call38 = tail call i32 @amdgpu_device_wb_get(ptr noundef %adev, ptr noundef %trail_fence_offs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12, i32 noundef %call38) #12
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 70, i32 2
  %23 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %gpu_addr, align 8
  %25 = ptrtoint ptr %trail_fence_offs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %trail_fence_offs, align 4
  %mul = shl i32 %26, 2
  %conv = zext i32 %mul to i64
  %add = add i64 %24, %conv
  %trail_fence_gpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 32
  %27 = ptrtoint ptr %trail_fence_gpu_addr to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add, ptr %trail_fence_gpu_addr, align 8
  %wb48 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 70, i32 1
  %28 = ptrtoint ptr %wb48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wb48, align 4
  %arrayidx50 = getelementptr i32, ptr %29, i32 %26
  %trail_fence_cpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 33
  %30 = ptrtoint ptr %trail_fence_cpu_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx50, ptr %trail_fence_cpu_addr, align 8
  %cond_exe_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 34
  %call51 = tail call i32 @amdgpu_device_wb_get(ptr noundef %adev, ptr noundef %cond_exe_offs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.15, i32 noundef %call51) #12
  br label %cleanup

if.end58:                                         ; preds = %if.end45
  %33 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %gpu_addr, align 8
  %35 = ptrtoint ptr %cond_exe_offs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cond_exe_offs, align 4
  %mul62 = shl i32 %36, 2
  %conv63 = zext i32 %mul62 to i64
  %add64 = add i64 %34, %conv63
  %cond_exe_gpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 35
  %37 = ptrtoint ptr %cond_exe_gpu_addr to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add64, ptr %cond_exe_gpu_addr, align 8
  %38 = ptrtoint ptr %wb48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wb48, align 4
  %arrayidx68 = getelementptr i32, ptr %39, i32 %36
  %cond_exe_cpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 36
  %40 = ptrtoint ptr %cond_exe_cpu_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx68, ptr %cond_exe_cpu_addr, align 8
  %41 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %arrayidx68, align 4
  %call70 = tail call i32 @amdgpu_fence_driver_start_ring(ptr noundef %ring, ptr noundef %irq_src, i32 noundef %irq_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end77, label %do.end75

do.end75:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.18, i32 noundef %call70) #12
  br label %cleanup

if.end77:                                         ; preds = %if.end58
  %mul78 = shl i32 %max_dw, 2
  %mul79 = mul i32 %sched_hw_submission.0, %mul78
  %sub = add i32 %mul79, -1
  %44 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #9, !range !56
  %sub.i.i.i.pn = sub nuw nsw i32 32, %44
  %cond119 = shl nuw i32 1, %sub.i.i.i.pn
  %ring_size = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 9
  %45 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond119, ptr %ring_size, align 8
  %div272 = lshr i32 %cond119, 2
  %sub121 = add nsw i32 %div272, -1
  %buf_mask = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %46 = ptrtoint ptr %buf_mask to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub121, ptr %buf_mask, align 8
  %47 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs, align 4
  %support_64bit_ptrs = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %support_64bit_ptrs to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %support_64bit_ptrs, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool123.not = icmp eq i8 %50, 0
  %conv128 = zext i32 %sub121 to i64
  %spec.select273 = select i1 %tobool123.not, i64 %conv128, i64 -1
  %ptr_mask = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %51 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %spec.select273, ptr %ptr_mask, align 8
  %ring_obj = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 4
  %52 = ptrtoint ptr %ring_obj to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring_obj, align 8
  %cmp131 = icmp eq ptr %53, null
  br i1 %cmp131, label %if.then133, label %if.end77.if.end148_crit_edge

if.end77.if.end148_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then133:                                       ; preds = %if.end77
  %extra_dw = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %48, i32 0, i32 6
  %54 = ptrtoint ptr %extra_dw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %extra_dw, align 4
  %add136 = add i32 %55, %cond119
  %gpu_addr138 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 12
  %ring139 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %call140 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %add136, i32 noundef 4096, i32 noundef 2, ptr noundef %ring_obj, ptr noundef %gpu_addr138, ptr noundef %ring139) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then133.while.body.i_crit_edge, label %do.end145

if.then133.while.body.i_crit_edge:                ; preds = %if.then133
  br label %while.body.i

do.end145:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.21, i32 noundef %call140) #12
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then133.while.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.then133.while.body.i_crit_edge ]
  %58 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs, align 4
  %nop.i = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %nop.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nop.i, align 4
  %62 = ptrtoint ptr %ring139 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ring139, align 4
  %inc.i = add i32 %i.05.i, 1
  %arrayidx.i = getelementptr i32, ptr %63, i32 %i.05.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %61, ptr %arrayidx.i, align 4
  %65 = ptrtoint ptr %buf_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buf_mask, align 8
  %cmp.not.i = icmp ugt i32 %inc.i, %66
  br i1 %cmp.not.i, label %while.body.i.if.end148_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.if.end148_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.end148:                                        ; preds = %while.body.i.if.end148_crit_edge, %if.end77.if.end148_crit_edge
  %max_dw149 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 10
  %67 = ptrtoint ptr %max_dw149 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %max_dw, ptr %max_dw149, align 4
  %hw_prio150 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 41
  %68 = ptrtoint ptr %hw_prio150 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %hw_prio, ptr %hw_prio150, align 8
  %no_scheduler = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 40
  %69 = ptrtoint ptr %no_scheduler to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %no_scheduler, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool151.not = icmp eq i8 %70, 0
  br i1 %tobool151.not, label %if.then152, label %if.end148.cleanup_crit_edge

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then152:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %funcs, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %arrayidx156 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 93, i32 %74, i32 %hw_prio
  %sched = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx156, align 4
  %inc161 = add i32 %76, 1
  store i32 %inc161, ptr %arrayidx156, align 4
  %arrayidx162 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 93, i32 %74, i32 %hw_prio, i32 1, i32 %76
  %77 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %sched, ptr %arrayidx162, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then152, %if.end148.cleanup_crit_edge, %do.end145, %do.end75, %do.end56, %do.end43, %do.end35, %do.end27, %do.end, %if.end10.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end ], [ %call22, %do.end27 ], [ %call30, %do.end35 ], [ %call38, %do.end43 ], [ %call51, %do.end56 ], [ %call70, %do.end75 ], [ %call140, %do.end145 ], [ -22, %if.then7.cleanup_crit_edge ], [ %call, %if.end10.cleanup_crit_edge ], [ 0, %if.then152 ], [ 0, %if.end148.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_driver_init_ring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_wb_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_driver_start_ring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ring_fini(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %idx = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 15
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 90, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %ready = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3, i32 17
  %6 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ready, align 4
  %rptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 6
  %7 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rptr_offs, align 8
  tail call void @amdgpu_device_wb_free(ptr noundef nonnull %1, i32 noundef %8) #9
  %9 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring, align 8
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %11 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wptr_offs, align 8
  tail call void @amdgpu_device_wb_free(ptr noundef %10, i32 noundef %12) #9
  %13 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring, align 8
  %cond_exe_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 34
  %15 = ptrtoint ptr %cond_exe_offs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cond_exe_offs, align 4
  tail call void @amdgpu_device_wb_free(ptr noundef %14, i32 noundef %16) #9
  %17 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring, align 8
  %fence_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 27
  %19 = ptrtoint ptr %fence_offs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fence_offs, align 4
  tail call void @amdgpu_device_wb_free(ptr noundef %18, i32 noundef %20) #9
  %ring_obj = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 4
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 12
  %ring7 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  tail call void @amdgpu_bo_free_kernel(ptr noundef %ring_obj, ptr noundef %gpu_addr, ptr noundef %ring7) #9
  %vmid_wait = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 38
  %21 = ptrtoint ptr %vmid_wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vmid_wait, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.dma_fence_put.exit_crit_edge, label %if.then.i

if.end.dma_fence_put.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !59
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !54

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end.dma_fence_put.exit_crit_edge
  %24 = ptrtoint ptr %vmid_wait to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %vmid_wait, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %25 = ptrtoint ptr %me to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %me, align 8
  %26 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring, align 8
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx, align 4
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %27, i32 0, i32 90, i32 %29
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx12, align 4
  br label %return

return:                                           ; preds = %dma_fence_put.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wb_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ring_emit_reg_write_reg_wait_helper(ptr noundef %ring, i32 noundef %reg0, i32 noundef %reg1, i32 noundef %ref, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  tail call void %3(ptr noundef %ring, i32 noundef %reg0, i32 noundef %ref) #9
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %emit_reg_wait = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %emit_reg_wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emit_reg_wait, align 4
  tail call void %7(ptr noundef %ring, i32 noundef %reg1, i32 noundef %mask, i32 noundef %mask) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_ring_soft_recovery(ptr noundef %ring, i32 noundef %vmid, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 10000000
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %soft_recovery = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %soft_recovery to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soft_recovery, align 4
  %tobool2.not = icmp eq ptr %7, null
  %tobool4.not = icmp eq ptr %fence, null
  %or.cond = or i1 %tobool4.not, %tobool2.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %gpu_reset_counter = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 74
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gpu_reset_counter, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %gpu_reset_counter, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gpu_reset_counter, ptr %gpu_reset_counter, i32 1, ptr elementtype(i32) %gpu_reset_counter) #9, !srcloc !61
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i35 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i35)
  %tobool.not.i36 = icmp eq i32 %and1.i.i35, 0
  br i1 %tobool.not.i36, label %if.end.i.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.i.lr.ph:                                   ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %while.body.if.end.i_crit_edge, %if.end.i.lr.ph
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.land.rhs_crit_edge, label %land.lhs.true.i

if.end.i.land.rhs_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %14(ptr noundef %fence) #9
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.land.rhs_crit_edge

land.lhs.true.i.land.rhs_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %fence) #9
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true.i.land.rhs_crit_edge, %if.end.i.land.rhs_crit_edge
  %call7 = tail call i64 @ktime_get() #9
  %sub = sub i64 %add.i, %call7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp sgt i64 %sub, 0
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs, align 4
  %soft_recovery10 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %16, i32 0, i32 37
  %17 = ptrtoint ptr %soft_recovery10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soft_recovery10, align 4
  tail call void %18(ptr noundef %ring, i32 noundef %vmid) #9
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %20, 1
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %while.body.if.end.i_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.then5.i, %if.end.while.end_crit_edge
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i19 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i19)
  %tobool.not.i20 = icmp eq i32 %and1.i.i19, 0
  br i1 %tobool.not.i20, label %if.end.i24, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i24:                                       ; preds = %while.end
  %ops.i21 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i21, align 4
  %signaled.i22 = getelementptr inbounds %struct.dma_fence_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %signaled.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %signaled.i22, align 4
  %tobool1.not.i23 = icmp eq ptr %26, null
  br i1 %tobool1.not.i23, label %if.end.i24.cleanup_crit_edge, label %land.lhs.true.i26

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i26:                                ; preds = %if.end.i24
  %call4.i25 = tail call zeroext i1 %26(ptr noundef %fence) #9
  br i1 %call4.i25, label %if.then5.i28, label %land.lhs.true.i26.cleanup_crit_edge

land.lhs.true.i26.cleanup_crit_edge:              ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.i28:                                     ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i27 = tail call i32 @dma_fence_signal(ptr noundef %fence) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i28, %land.lhs.true.i26.cleanup_crit_edge, %if.end.i24.cleanup_crit_edge, %while.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %if.then5.i28 ], [ true, %while.end.cleanup_crit_edge ], [ false, %land.lhs.true.i26.cleanup_crit_edge ], [ false, %if.end.i24.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_debugfs_ring_init(ptr nocapture noundef readonly %adev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #9
  %name1 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 29
  %4 = call ptr @memset(ptr %name, i32 255, i32 32)
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.23, ptr noundef %name1)
  %ring_size = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 9
  %5 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_size, align 8
  %add = add i32 %6, 12
  %conv = zext i32 %add to i64
  call void @debugfs_create_file_size(ptr noundef nonnull %name, i16 noundef zeroext -32476, ptr noundef %3, ptr noundef %ring, ptr noundef nonnull @amdgpu_debugfs_ring_fops, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_file_size(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ring_test_helper(ptr noundef %ring) local_unnamed_addr #0 align 64 {
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
  %test_ring = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %test_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %test_ring, align 4
  %call = tail call i32 %5(ptr noundef %ring) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %name3 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 29
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, ptr noundef %name3, i32 noundef %call) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %name3) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ready = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3, i32 17
  %frombool = zext i1 %tobool.not to i8
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %ready, align 4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_ring_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %early = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %early) #9
  %4 = getelementptr inbounds [3 x i32], ptr %early, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i32], ptr %early, i32 0, i32 2
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %and = and i64 %7, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %and1 = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = and i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 12, i64 %7)
  %cmp = icmp slt i64 %7, 12
  br i1 %cmp, label %if.then3, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then3:                                         ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %get_rptr = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %get_rptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_rptr, align 4
  %call4 = tail call i64 %11(ptr noundef %3) #9
  %buf_mask = getelementptr inbounds %struct.amdgpu_ring, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %buf_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_mask, align 8
  %14 = trunc i64 %call4 to i32
  %conv6 = and i32 %13, %14
  %15 = ptrtoint ptr %early to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv6, ptr %early, align 4
  %16 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs, align 4
  %get_wptr = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %get_wptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_wptr, align 4
  %call8 = tail call i64 %19(ptr noundef %3) #9
  %20 = ptrtoint ptr %buf_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_mask, align 8
  %22 = trunc i64 %call8 to i32
  %conv12 = and i32 %21, %22
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv12, ptr %4, align 4
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wptr, align 8
  %26 = trunc i64 %25 to i32
  %conv17 = and i32 %21, %26
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv17, ptr %5, align 4
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pos, align 8
  %div = sdiv i64 %29, 4
  %conv19 = trunc i64 %div to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv19)
  %cmp20108 = icmp slt i32 %conv19, 3
  br i1 %cmp20108, label %land.rhs.preheader, label %if.then3.if.end30_crit_edge

if.then3.if.end30_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.rhs.preheader:                               ; preds = %if.then3
  %30 = shl i32 %conv19, 2
  %31 = sub i32 12, %30
  %32 = add i32 %30, %size
  %33 = add i32 %32, -12
  br label %land.rhs

land.rhs:                                         ; preds = %if.end28.land.rhs_crit_edge, %land.rhs.preheader
  %buf.addr.0112 = phi ptr [ %add.ptr, %if.end28.land.rhs_crit_edge ], [ %buf, %land.rhs.preheader ]
  %size.addr.0111 = phi i32 [ %sub, %if.end28.land.rhs_crit_edge ], [ %size, %land.rhs.preheader ]
  %i.0110 = phi i32 [ %inc, %if.end28.land.rhs_crit_edge ], [ %conv19, %land.rhs.preheader ]
  %result.0109 = phi i32 [ %add, %if.end28.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0111)
  %tobool22.not = icmp eq i32 %size.addr.0111, 0
  br i1 %tobool22.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %arrayidx23 = getelementptr [3 x i32], ptr %early, i32 0, i32 %i.0110
  %34 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx23, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 383) #9
  %36 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !62
  %and.i = and i32 %38, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.0112, i32 %35, i32 -1226833921) #9, !srcloc !65
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #9, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool26.not = icmp eq i32 %39, 0
  br i1 %tobool26.not, label %if.end28, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %buf.addr.0112, i32 4
  %add = add i32 %result.0109, 4
  %sub = add i32 %size.addr.0111, -4
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pos, align 8
  %add29 = add i64 %41, 4
  store i64 %add29, ptr %pos, align 8
  %inc = add i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %if.end28.if.end30_crit_edge, label %if.end28.land.rhs_crit_edge

if.end28.land.rhs_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end28.if.end30_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %if.end28.if.end30_crit_edge, %if.then3.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %result.1 = phi i32 [ 0, %if.end.if.end30_crit_edge ], [ 0, %if.then3.if.end30_crit_edge ], [ %31, %if.end28.if.end30_crit_edge ]
  %size.addr.1 = phi i32 [ %size, %if.end.if.end30_crit_edge ], [ %size, %if.then3.if.end30_crit_edge ], [ %33, %if.end28.if.end30_crit_edge ]
  %buf.addr.1 = phi ptr [ %buf, %if.end.if.end30_crit_edge ], [ %buf, %if.then3.if.end30_crit_edge ], [ %add.ptr, %if.end28.if.end30_crit_edge ]
  %ring38 = getelementptr inbounds %struct.amdgpu_ring, ptr %3, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.1)
  %tobool31.not118 = icmp eq i32 %size.addr.1, 0
  br i1 %tobool31.not118, label %if.end30.cleanup_crit_edge, label %while.body.lr.ph

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end30
  %ring_size = getelementptr inbounds %struct.amdgpu_ring, ptr %3, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end59.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.2121 = phi ptr [ %buf.addr.1, %while.body.lr.ph ], [ %add.ptr60, %if.end59.while.body_crit_edge ]
  %size.addr.2120 = phi i32 [ %size.addr.1, %while.body.lr.ph ], [ %sub62, %if.end59.while.body_crit_edge ]
  %result.2119 = phi i32 [ %result.1, %while.body.lr.ph ], [ %add61, %if.end59.while.body_crit_edge ]
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %pos, align 8
  %44 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ring_size, align 8
  %add32 = add i32 %45, 12
  %conv33 = zext i32 %add32 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %conv33)
  %cmp34.not = icmp slt i64 %43, %conv33
  br i1 %cmp34.not, label %if.end37, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %while.body
  %46 = ptrtoint ptr %ring38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ring38, align 4
  %sub39 = add i64 %43, -12
  %div40 = sdiv i64 %sub39, 4
  %idxprom = trunc i64 %div40 to i32
  %arrayidx41 = getelementptr i32, ptr %47, i32 %idxprom
  %48 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx41, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 398) #9
  %50 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i101 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i101 to ptr
  %cpu_domain.i.i102 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i102) #8, !srcloc !62
  %and.i103 = and i32 %52, -13
  %or.i104 = or i32 %and.i103, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i104) #9, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  %53 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.2121, i32 %49, i32 -1226833921) #9, !srcloc !66
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool57.not = icmp eq i32 %53, 0
  br i1 %tobool57.not, label %if.end59, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %if.end37
  %add.ptr60 = getelementptr i8, ptr %buf.addr.2121, i32 4
  %add61 = add i32 %result.2119, 4
  %sub62 = add i32 %size.addr.2120, -4
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %pos, align 8
  %add63 = add i64 %55, 4
  store i64 %add63, ptr %pos, align 8
  %tobool31.not = icmp eq i32 %sub62, 0
  br i1 %tobool31.not, label %if.end59.cleanup_crit_edge, label %if.end59.while.body_crit_edge

if.end59.while.body_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end59.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %result.1, %if.end30.cleanup_crit_edge ], [ %result.2119, %while.body.cleanup_crit_edge ], [ %53, %if.end37.cleanup_crit_edge ], [ %add61, %if.end59.cleanup_crit_edge ], [ %result.0109, %land.rhs.cleanup_crit_edge ], [ %39, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %early) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 70, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 202, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @amdgpu_ring_init._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @amdgpu_ring_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 208, i32 3}
!12 = !{ptr @amdgpu_ring_init._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @amdgpu_ring_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 214, i32 3}
!16 = !{ptr @amdgpu_ring_init._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @amdgpu_ring_init._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 220, i32 3}
!20 = !{ptr @amdgpu_ring_init._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @amdgpu_ring_init._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 230, i32 3}
!24 = !{ptr @amdgpu_ring_init._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @amdgpu_ring_init._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 240, i32 3}
!28 = !{ptr @amdgpu_ring_init._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @amdgpu_ring_init._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 257, i32 4}
!32 = !{ptr @amdgpu_ring_init._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @amdgpu_ring_init._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 426, i32 16}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 450, i32 3}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 453, i32 3}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!42 = !{ptr @amdgpu_debugfs_ring_fops, !43, !"amdgpu_debugfs_ring_fops", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c", i32 410, i32 37}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2159260442}
!56 = !{i32 0, i32 33}
!57 = !{i8 0, i8 2}
!58 = !{i64 2148493286}
!59 = !{i64 2148407750, i64 2148407782, i64 2148407811, i64 2148407845, i64 2148407876, i64 2148407899}
!60 = !{i64 2150391575}
!61 = !{i64 2148403755, i64 2148403781, i64 2148403810, i64 2148403844, i64 2148403875, i64 2148403898}
!62 = !{i64 4688965}
!63 = !{i64 4689162}
!64 = !{i64 2152174395}
!65 = !{i64 2159281712, i64 2159281992, i64 2159282326, i64 2159282660}
!66 = !{i64 2159290564, i64 2159290844, i64 2159291178, i64 2159291512}
