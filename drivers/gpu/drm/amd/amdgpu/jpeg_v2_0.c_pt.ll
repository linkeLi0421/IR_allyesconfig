; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.90, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.90 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.96], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.96 = type { i8, [7 x i8] }
%struct.amdgpu_xgmi = type { i64, i64, i64, i32, i32, %struct.list_head, i8, ptr, i8, i8, ptr }
%struct.amdgpu_gart = type { ptr, ptr, i32, i32, i32, i8, i64 }
%struct.amdgpu_vm_manager = type { [3 x %struct.amdgpu_vmid_mgr], i32, i8, i64, [28 x i32], i64, i32, i32, i32, i32, i64, ptr, [28 x ptr], i32, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.xarray }
%struct.amdgpu_vmid_mgr = type { %struct.mutex, i32, %struct.list_head, [16 x %struct.amdgpu_vmid], %struct.atomic_t }
%struct.amdgpu_vmid = type { %struct.list_head, %struct.amdgpu_sync, ptr, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_vmhub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_mman = type { %struct.ttm_device, i8, ptr, ptr, ptr, i8, %struct.mutex, %struct.drm_sched_entity, %struct.amdgpu_vram_mgr, %struct.amdgpu_gtt_mgr, %struct.amdgpu_preempt_mgr, i64, ptr, i64, ptr, i8, ptr, i64, i64, ptr, i32, ptr, i64, i64, ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.91] }
%struct.anon.91 = type { [12 x %struct.ttm_pool_type] }
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
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c\00", [57 x i8] zeroinitializer }, align 32
@jpeg_v2_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str.2, ptr @jpeg_v2_0_early_init, ptr null, ptr @jpeg_v2_0_sw_init, ptr @jpeg_v2_0_sw_fini, ptr null, ptr @jpeg_v2_0_hw_init, ptr @jpeg_v2_0_hw_fini, ptr null, ptr @jpeg_v2_0_suspend, ptr @jpeg_v2_0_resume, ptr @jpeg_v2_0_is_idle, ptr @jpeg_v2_0_wait_for_idle, ptr null, ptr null, ptr null, ptr null, ptr @jpeg_v2_0_set_clockgating_state, ptr @jpeg_v2_0_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@jpeg_v2_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 13, i32 2, i32 0, i32 0, ptr @jpeg_v2_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jpeg_v2_0\00", [22 x i8] zeroinitializer }, align 32
@jpeg_v2_0_dec_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 8, i32 15, i32 0, i8 0, i8 0, i32 1, i32 0, ptr @jpeg_v2_0_dec_ring_get_rptr, ptr @jpeg_v2_0_dec_ring_get_wptr, ptr @jpeg_v2_0_dec_ring_set_wptr, ptr null, ptr null, i32 128, i32 22, ptr @jpeg_v2_0_dec_ring_emit_ib, ptr @jpeg_v2_0_dec_ring_emit_fence, ptr null, ptr @jpeg_v2_0_dec_ring_emit_vm_flush, ptr null, ptr null, ptr @amdgpu_jpeg_dec_ring_test_ring, ptr @amdgpu_jpeg_dec_ring_test_ib, ptr @jpeg_v2_0_dec_ring_nop, ptr @jpeg_v2_0_dec_ring_insert_start, ptr @jpeg_v2_0_dec_ring_insert_end, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_jpeg_ring_begin_use, ptr @amdgpu_jpeg_ring_end_use, ptr null, ptr null, ptr null, ptr @jpeg_v2_0_dec_ring_emit_wreg, ptr @jpeg_v2_0_dec_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jpeg_v2_0_set_dec_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] JPEG decode is enabled in VM mode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jpeg_v2_0_set_dec_ring_funcs\00", [35 x i8] zeroinitializer }, align 32
@jpeg_v2_0_set_dec_ring_funcs._entry_ptr = internal global ptr @jpeg_v2_0_set_dec_ring_funcs._entry, section ".printk_index", align 4
@jpeg_v2_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @jpeg_v2_0_set_interrupt_state, ptr @jpeg_v2_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: JPEG TRAP\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jpeg_dec\00", [23 x i8] zeroinitializer }, align 32
@jpeg_v2_0_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] JPEG decode initialized successfully.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jpeg_v2_0_hw_init\00", [46 x i8] zeroinitializer }, align 32
@jpeg_v2_0_hw_init._entry_ptr = internal global ptr @jpeg_v2_0_hw_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jpeg_v2_0_wait_for_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014[drm] Register(%d) [%s] failed to reach value 0x%08x != 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jpeg_v2_0_wait_for_idle\00", [40 x i8] zeroinitializer }, align 32
@jpeg_v2_0_wait_for_idle._entry_ptr = internal global ptr @jpeg_v2_0_wait_for_idle._entry, section ".printk_index", align 4
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmUVD_JRBC_STATUS\00", [46 x i8] zeroinitializer }, align 32
@jpeg_v2_0_enable_power_gating._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.13, ptr @.str, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"jpeg_v2_0_enable_power_gating\00", [34 x i8] zeroinitializer }, align 32
@jpeg_v2_0_enable_power_gating._entry_ptr = internal global ptr @jpeg_v2_0_enable_power_gating._entry, section ".printk_index", align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmUVD_PGFSM_STATUS\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: JPEG enable power gating failed\0A\00", [55 x i8] zeroinitializer }, align 32
@jpeg_v2_0_disable_power_gating._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.16, ptr @.str, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"jpeg_v2_0_disable_power_gating\00", [33 x i8] zeroinitializer }, align 32
@jpeg_v2_0_disable_power_gating._entry_ptr = internal global ptr @jpeg_v2_0_disable_power_gating._entry, section ".printk_index", align 4
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: JPEG disable power gating failed\0A\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 483, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"jpeg_v2_0_ip_funcs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 738, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"jpeg_v2_0_ip_block\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 805, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 314, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 739, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"jpeg_v2_0_dec_ring_vm_funcs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 758, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 791, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"jpeg_v2_0_irq_funcs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 794, i32 42 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 723, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 730, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 89, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 139, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 668, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 246, i32 7 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 251, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 215, i32 7 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 220, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @jpeg_v2_0_disable_power_gating._entry, ptr @jpeg_v2_0_disable_power_gating._entry_ptr, ptr @jpeg_v2_0_enable_power_gating._entry, ptr @jpeg_v2_0_enable_power_gating._entry_ptr, ptr @jpeg_v2_0_hw_init._entry, ptr @jpeg_v2_0_hw_init._entry_ptr, ptr @jpeg_v2_0_set_dec_ring_funcs._entry, ptr @jpeg_v2_0_set_dec_ring_funcs._entry_ptr, ptr @jpeg_v2_0_wait_for_idle._entry, ptr @jpeg_v2_0_wait_for_idle._entry_ptr, ptr @.str, ptr @jpeg_v2_0_ip_funcs, ptr @jpeg_v2_0_ip_block, ptr @.str.1, ptr @.str.2, ptr @jpeg_v2_0_dec_ring_vm_funcs, ptr @.str.3, ptr @.str.4, ptr @jpeg_v2_0_irq_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_0_dec_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_0_set_dec_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_0_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_0_wait_for_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_0_enable_power_gating._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_0_disable_power_gating._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v2_0_dec_ring_insert_start(ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 114687, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i5 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i5, label %if.then.i6, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit16

if.then.i6:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit16

amdgpu_ring_write.exit16:                         ; preds = %if.then.i6, %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i9 = add i64 %18, 1
  store i64 %inc.i9, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i11 = and i32 %20, %21
  %arrayidx.i12 = getelementptr i32, ptr %16, i32 %idxprom.i11
  %22 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 429572, ptr %arrayidx.i12, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i14 = and i64 %25, %24
  store i64 %and3.i14, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i15 = add i32 %27, -1
  store i32 %dec.i15, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i15)
  %cmp.i18 = icmp slt i32 %dec.i15, 1
  br i1 %cmp.i18, label %if.then.i19, label %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge

amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge: ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit29

if.then.i19:                                      ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit29

amdgpu_ring_write.exit29:                         ; preds = %if.then.i19, %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i22 = add i64 %31, 1
  store i64 %inc.i22, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i24 = and i32 %33, %34
  %arrayidx.i25 = getelementptr i32, ptr %29, i32 %idxprom.i24
  %35 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 98304, ptr %arrayidx.i25, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i27 = and i64 %38, %37
  store i64 %and3.i27, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i28 = add i32 %40, -1
  store i32 %dec.i28, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i28)
  %cmp.i31 = icmp slt i32 %dec.i28, 1
  br i1 %cmp.i31, label %if.then.i32, label %amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge

amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge: ; preds = %amdgpu_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit42

if.then.i32:                                      ; preds = %amdgpu_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit42

amdgpu_ring_write.exit42:                         ; preds = %if.then.i32, %amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i35 = add i64 %44, 1
  store i64 %inc.i35, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i37 = and i32 %46, %47
  %arrayidx.i38 = getelementptr i32, ptr %42, i32 %idxprom.i37
  %48 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 -2147418112, ptr %arrayidx.i38, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i40 = and i64 %51, %50
  store i64 %and3.i40, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i41 = add i32 %53, -1
  store i32 %dec.i41, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v2_0_dec_ring_insert_end(ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 114687, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i5 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i5, label %if.then.i6, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit16

if.then.i6:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit16

amdgpu_ring_write.exit16:                         ; preds = %if.then.i6, %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i9 = add i64 %18, 1
  store i64 %inc.i9, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i11 = and i32 %20, %21
  %arrayidx.i12 = getelementptr i32, ptr %16, i32 %idxprom.i11
  %22 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 429572, ptr %arrayidx.i12, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i14 = and i64 %25, %24
  store i64 %and3.i14, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i15 = add i32 %27, -1
  store i32 %dec.i15, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i15)
  %cmp.i18 = icmp slt i32 %dec.i15, 1
  br i1 %cmp.i18, label %if.then.i19, label %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge

amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge: ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit29

if.then.i19:                                      ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit29

amdgpu_ring_write.exit29:                         ; preds = %if.then.i19, %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i22 = add i64 %31, 1
  store i64 %inc.i22, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i24 = and i32 %33, %34
  %arrayidx.i25 = getelementptr i32, ptr %29, i32 %idxprom.i24
  %35 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 98304, ptr %arrayidx.i25, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i27 = and i64 %38, %37
  store i64 %and3.i27, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i28 = add i32 %40, -1
  store i32 %dec.i28, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i28)
  %cmp.i31 = icmp slt i32 %dec.i28, 1
  br i1 %cmp.i31, label %if.then.i32, label %amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge

amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge: ; preds = %amdgpu_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit42

if.then.i32:                                      ; preds = %amdgpu_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit42

amdgpu_ring_write.exit42:                         ; preds = %if.then.i32, %amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i35 = add i64 %44, 1
  store i64 %inc.i35, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i37 = and i32 %46, %47
  %arrayidx.i38 = getelementptr i32, ptr %42, i32 %idxprom.i37
  %48 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 65536, ptr %arrayidx.i38, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i40 = and i64 %51, %50
  store i64 %and3.i40, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i41 = add i32 %53, -1
  store i32 %dec.i41, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v2_0_dec_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 483, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 16426, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i46 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i46, label %if.then.i47, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit57_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit57_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit57

if.then.i47:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit57

amdgpu_ring_write.exit57:                         ; preds = %if.then.i47, %amdgpu_ring_write.exit.amdgpu_ring_write.exit57_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i50 = add i64 %18, 1
  store i64 %inc.i50, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i52 = and i32 %20, %21
  %arrayidx.i53 = getelementptr i32, ptr %16, i32 %idxprom.i52
  %22 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i53, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i55 = and i64 %25, %24
  store i64 %and3.i55, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i56 = add i32 %27, -1
  store i32 %dec.i56, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i56)
  %cmp.i59 = icmp slt i32 %dec.i56, 1
  br i1 %cmp.i59, label %if.then.i60, label %amdgpu_ring_write.exit57.amdgpu_ring_write.exit70_crit_edge

amdgpu_ring_write.exit57.amdgpu_ring_write.exit70_crit_edge: ; preds = %amdgpu_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit70

if.then.i60:                                      ; preds = %amdgpu_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit70

amdgpu_ring_write.exit70:                         ; preds = %if.then.i60, %amdgpu_ring_write.exit57.amdgpu_ring_write.exit70_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i63 = add i64 %31, 1
  store i64 %inc.i63, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i65 = and i32 %33, %34
  %arrayidx.i66 = getelementptr i32, ptr %29, i32 %idxprom.i65
  %35 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 16427, ptr %arrayidx.i66, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i68 = and i64 %38, %37
  store i64 %and3.i68, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i69 = add i32 %40, -1
  store i32 %dec.i69, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i69)
  %cmp.i72 = icmp slt i32 %dec.i69, 1
  br i1 %cmp.i72, label %if.then.i73, label %amdgpu_ring_write.exit70.amdgpu_ring_write.exit83_crit_edge

amdgpu_ring_write.exit70.amdgpu_ring_write.exit83_crit_edge: ; preds = %amdgpu_ring_write.exit70
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit83

if.then.i73:                                      ; preds = %amdgpu_ring_write.exit70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit83

amdgpu_ring_write.exit83:                         ; preds = %if.then.i73, %amdgpu_ring_write.exit70.amdgpu_ring_write.exit83_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i76 = add i64 %44, 1
  store i64 %inc.i76, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i78 = and i32 %46, %47
  %arrayidx.i79 = getelementptr i32, ptr %42, i32 %idxprom.i78
  %48 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv, ptr %arrayidx.i79, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i81 = and i64 %51, %50
  store i64 %and3.i81, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i82 = add i32 %53, -1
  store i32 %dec.i82, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i82)
  %cmp.i85 = icmp slt i32 %dec.i82, 1
  br i1 %cmp.i85, label %if.then.i86, label %amdgpu_ring_write.exit83.amdgpu_ring_write.exit96_crit_edge

amdgpu_ring_write.exit83.amdgpu_ring_write.exit96_crit_edge: ; preds = %amdgpu_ring_write.exit83
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit96

if.then.i86:                                      ; preds = %amdgpu_ring_write.exit83
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit96

amdgpu_ring_write.exit96:                         ; preds = %if.then.i86, %amdgpu_ring_write.exit83.amdgpu_ring_write.exit96_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i89 = add i64 %57, 1
  store i64 %inc.i89, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i91 = and i32 %59, %60
  %arrayidx.i92 = getelementptr i32, ptr %55, i32 %idxprom.i91
  %61 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 16618, ptr %arrayidx.i92, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i94 = and i64 %64, %63
  store i64 %and3.i94, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i95 = add i32 %66, -1
  store i32 %dec.i95, ptr %count_dw.i, align 8
  %conv22 = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i95)
  %cmp.i98 = icmp slt i32 %dec.i95, 1
  br i1 %cmp.i98, label %if.then.i99, label %amdgpu_ring_write.exit96.amdgpu_ring_write.exit109_crit_edge

amdgpu_ring_write.exit96.amdgpu_ring_write.exit109_crit_edge: ; preds = %amdgpu_ring_write.exit96
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit109

if.then.i99:                                      ; preds = %amdgpu_ring_write.exit96
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit109

amdgpu_ring_write.exit109:                        ; preds = %if.then.i99, %amdgpu_ring_write.exit96.amdgpu_ring_write.exit109_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i102 = add i64 %70, 1
  store i64 %inc.i102, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i104 = and i32 %72, %73
  %arrayidx.i105 = getelementptr i32, ptr %68, i32 %idxprom.i104
  %74 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %conv22, ptr %arrayidx.i105, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i107 = and i64 %77, %76
  store i64 %and3.i107, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i108 = add i32 %79, -1
  store i32 %dec.i108, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i108)
  %cmp.i111 = icmp slt i32 %dec.i108, 1
  br i1 %cmp.i111, label %if.then.i112, label %amdgpu_ring_write.exit109.amdgpu_ring_write.exit122_crit_edge

amdgpu_ring_write.exit109.amdgpu_ring_write.exit122_crit_edge: ; preds = %amdgpu_ring_write.exit109
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit122

if.then.i112:                                     ; preds = %amdgpu_ring_write.exit109
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit122

amdgpu_ring_write.exit122:                        ; preds = %if.then.i112, %amdgpu_ring_write.exit109.amdgpu_ring_write.exit122_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wptr.i, align 8
  %inc.i115 = add i64 %83, 1
  store i64 %inc.i115, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_mask.i, align 8
  %86 = trunc i64 %83 to i32
  %idxprom.i117 = and i32 %85, %86
  %arrayidx.i118 = getelementptr i32, ptr %81, i32 %idxprom.i117
  %87 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 16619, ptr %arrayidx.i118, align 4
  %88 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ptr_mask.i, align 8
  %90 = load i64, ptr %wptr.i, align 8
  %and3.i120 = and i64 %90, %89
  store i64 %and3.i120, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i, align 8
  %dec.i121 = add i32 %92, -1
  store i32 %dec.i121, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv24 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i121)
  %cmp.i124 = icmp slt i32 %dec.i121, 1
  br i1 %cmp.i124, label %if.then.i125, label %amdgpu_ring_write.exit122.amdgpu_ring_write.exit135_crit_edge

amdgpu_ring_write.exit122.amdgpu_ring_write.exit135_crit_edge: ; preds = %amdgpu_ring_write.exit122
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit135

if.then.i125:                                     ; preds = %amdgpu_ring_write.exit122
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit135

amdgpu_ring_write.exit135:                        ; preds = %if.then.i125, %amdgpu_ring_write.exit122.amdgpu_ring_write.exit135_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 4
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr.i, align 8
  %inc.i128 = add i64 %96, 1
  store i64 %inc.i128, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_mask.i, align 8
  %99 = trunc i64 %96 to i32
  %idxprom.i130 = and i32 %98, %99
  %arrayidx.i131 = getelementptr i32, ptr %94, i32 %idxprom.i130
  %100 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %conv24, ptr %arrayidx.i131, align 4
  %101 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ptr_mask.i, align 8
  %103 = load i64, ptr %wptr.i, align 8
  %and3.i133 = and i64 %103, %102
  store i64 %and3.i133, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count_dw.i, align 8
  %dec.i134 = add i32 %105, -1
  store i32 %dec.i134, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i134)
  %cmp.i137 = icmp slt i32 %dec.i134, 1
  br i1 %cmp.i137, label %if.then.i138, label %amdgpu_ring_write.exit135.amdgpu_ring_write.exit148_crit_edge

amdgpu_ring_write.exit135.amdgpu_ring_write.exit148_crit_edge: ; preds = %amdgpu_ring_write.exit135
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit148

if.then.i138:                                     ; preds = %amdgpu_ring_write.exit135
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit148

amdgpu_ring_write.exit148:                        ; preds = %if.then.i138, %amdgpu_ring_write.exit135.amdgpu_ring_write.exit148_crit_edge
  %106 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ring1.i, align 4
  %108 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %wptr.i, align 8
  %inc.i141 = add i64 %109, 1
  store i64 %inc.i141, ptr %wptr.i, align 8
  %110 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buf_mask.i, align 8
  %112 = trunc i64 %109 to i32
  %idxprom.i143 = and i32 %111, %112
  %arrayidx.i144 = getelementptr i32, ptr %107, i32 %idxprom.i143
  %113 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 16425, ptr %arrayidx.i144, align 4
  %114 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ptr_mask.i, align 8
  %116 = load i64, ptr %wptr.i, align 8
  %and3.i146 = and i64 %116, %115
  store i64 %and3.i146, ptr %wptr.i, align 8
  %117 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %count_dw.i, align 8
  %dec.i147 = add i32 %118, -1
  store i32 %dec.i147, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i147)
  %cmp.i150 = icmp slt i32 %dec.i147, 1
  br i1 %cmp.i150, label %if.then.i151, label %amdgpu_ring_write.exit148.amdgpu_ring_write.exit161_crit_edge

amdgpu_ring_write.exit148.amdgpu_ring_write.exit161_crit_edge: ; preds = %amdgpu_ring_write.exit148
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit161

if.then.i151:                                     ; preds = %amdgpu_ring_write.exit148
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit161

amdgpu_ring_write.exit161:                        ; preds = %if.then.i151, %amdgpu_ring_write.exit148.amdgpu_ring_write.exit161_crit_edge
  %119 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ring1.i, align 4
  %121 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %wptr.i, align 8
  %inc.i154 = add i64 %122, 1
  store i64 %inc.i154, ptr %wptr.i, align 8
  %123 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buf_mask.i, align 8
  %125 = trunc i64 %122 to i32
  %idxprom.i156 = and i32 %124, %125
  %arrayidx.i157 = getelementptr i32, ptr %120, i32 %idxprom.i156
  %126 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 8, ptr %arrayidx.i157, align 4
  %127 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %ptr_mask.i, align 8
  %129 = load i64, ptr %wptr.i, align 8
  %and3.i159 = and i64 %129, %128
  store i64 %and3.i159, ptr %wptr.i, align 8
  %130 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %count_dw.i, align 8
  %dec.i160 = add i32 %131, -1
  store i32 %dec.i160, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i160)
  %cmp.i163 = icmp slt i32 %dec.i160, 1
  br i1 %cmp.i163, label %if.then.i164, label %amdgpu_ring_write.exit161.amdgpu_ring_write.exit174_crit_edge

amdgpu_ring_write.exit161.amdgpu_ring_write.exit174_crit_edge: ; preds = %amdgpu_ring_write.exit161
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit174

if.then.i164:                                     ; preds = %amdgpu_ring_write.exit161
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit174

amdgpu_ring_write.exit174:                        ; preds = %if.then.i164, %amdgpu_ring_write.exit161.amdgpu_ring_write.exit174_crit_edge
  %132 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ring1.i, align 4
  %134 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %wptr.i, align 8
  %inc.i167 = add i64 %135, 1
  store i64 %inc.i167, ptr %wptr.i, align 8
  %136 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %buf_mask.i, align 8
  %138 = trunc i64 %135 to i32
  %idxprom.i169 = and i32 %137, %138
  %arrayidx.i170 = getelementptr i32, ptr %133, i32 %idxprom.i169
  %139 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 1073758249, ptr %arrayidx.i170, align 4
  %140 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %ptr_mask.i, align 8
  %142 = load i64, ptr %wptr.i, align 8
  %and3.i172 = and i64 %142, %141
  store i64 %and3.i172, ptr %wptr.i, align 8
  %143 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %count_dw.i, align 8
  %dec.i173 = add i32 %144, -1
  store i32 %dec.i173, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i173)
  %cmp.i176 = icmp slt i32 %dec.i173, 1
  br i1 %cmp.i176, label %if.then.i177, label %amdgpu_ring_write.exit174.amdgpu_ring_write.exit187_crit_edge

amdgpu_ring_write.exit174.amdgpu_ring_write.exit187_crit_edge: ; preds = %amdgpu_ring_write.exit174
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit187

if.then.i177:                                     ; preds = %amdgpu_ring_write.exit174
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit187

amdgpu_ring_write.exit187:                        ; preds = %if.then.i177, %amdgpu_ring_write.exit174.amdgpu_ring_write.exit187_crit_edge
  %145 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ring1.i, align 4
  %147 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %wptr.i, align 8
  %inc.i180 = add i64 %148, 1
  store i64 %inc.i180, ptr %wptr.i, align 8
  %149 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %buf_mask.i, align 8
  %151 = trunc i64 %148 to i32
  %idxprom.i182 = and i32 %150, %151
  %arrayidx.i183 = getelementptr i32, ptr %146, i32 %idxprom.i182
  %152 = ptrtoint ptr %arrayidx.i183 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 0, ptr %arrayidx.i183, align 4
  %153 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %ptr_mask.i, align 8
  %155 = load i64, ptr %wptr.i, align 8
  %and3.i185 = and i64 %155, %154
  store i64 %and3.i185, ptr %wptr.i, align 8
  %156 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %count_dw.i, align 8
  %dec.i186 = add i32 %157, -1
  store i32 %dec.i186, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i186)
  %cmp.i189 = icmp slt i32 %dec.i186, 1
  br i1 %cmp.i189, label %if.then.i190, label %amdgpu_ring_write.exit187.amdgpu_ring_write.exit200_crit_edge

amdgpu_ring_write.exit187.amdgpu_ring_write.exit200_crit_edge: ; preds = %amdgpu_ring_write.exit187
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit200

if.then.i190:                                     ; preds = %amdgpu_ring_write.exit187
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit200

amdgpu_ring_write.exit200:                        ; preds = %if.then.i190, %amdgpu_ring_write.exit187.amdgpu_ring_write.exit200_crit_edge
  %158 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ring1.i, align 4
  %160 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %wptr.i, align 8
  %inc.i193 = add i64 %161, 1
  store i64 %inc.i193, ptr %wptr.i, align 8
  %162 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %buf_mask.i, align 8
  %164 = trunc i64 %161 to i32
  %idxprom.i195 = and i32 %163, %164
  %arrayidx.i196 = getelementptr i32, ptr %159, i32 %idxprom.i195
  %165 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile i32 114687, ptr %arrayidx.i196, align 4
  %166 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %ptr_mask.i, align 8
  %168 = load i64, ptr %wptr.i, align 8
  %and3.i198 = and i64 %168, %167
  store i64 %and3.i198, ptr %wptr.i, align 8
  %169 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %count_dw.i, align 8
  %dec.i199 = add i32 %170, -1
  store i32 %dec.i199, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i199)
  %cmp.i202 = icmp slt i32 %dec.i199, 1
  br i1 %cmp.i202, label %if.then.i203, label %amdgpu_ring_write.exit200.amdgpu_ring_write.exit213_crit_edge

amdgpu_ring_write.exit200.amdgpu_ring_write.exit213_crit_edge: ; preds = %amdgpu_ring_write.exit200
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit213

if.then.i203:                                     ; preds = %amdgpu_ring_write.exit200
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit213

amdgpu_ring_write.exit213:                        ; preds = %if.then.i203, %amdgpu_ring_write.exit200.amdgpu_ring_write.exit213_crit_edge
  %171 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ring1.i, align 4
  %173 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %wptr.i, align 8
  %inc.i206 = add i64 %174, 1
  store i64 %inc.i206, ptr %wptr.i, align 8
  %175 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %buf_mask.i, align 8
  %177 = trunc i64 %174 to i32
  %idxprom.i208 = and i32 %176, %177
  %arrayidx.i209 = getelementptr i32, ptr %172, i32 %idxprom.i208
  %178 = ptrtoint ptr %arrayidx.i209 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 16316, ptr %arrayidx.i209, align 4
  %179 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %ptr_mask.i, align 8
  %181 = load i64, ptr %wptr.i, align 8
  %and3.i211 = and i64 %181, %180
  store i64 %and3.i211, ptr %wptr.i, align 8
  %182 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %count_dw.i, align 8
  %dec.i212 = add i32 %183, -1
  store i32 %dec.i212, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i212)
  %cmp.i215 = icmp slt i32 %dec.i212, 1
  br i1 %cmp.i215, label %if.then.i216, label %amdgpu_ring_write.exit213.amdgpu_ring_write.exit226_crit_edge

amdgpu_ring_write.exit213.amdgpu_ring_write.exit226_crit_edge: ; preds = %amdgpu_ring_write.exit213
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit226

if.then.i216:                                     ; preds = %amdgpu_ring_write.exit213
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit226

amdgpu_ring_write.exit226:                        ; preds = %if.then.i216, %amdgpu_ring_write.exit213.amdgpu_ring_write.exit226_crit_edge
  %184 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ring1.i, align 4
  %186 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %wptr.i, align 8
  %inc.i219 = add i64 %187, 1
  store i64 %inc.i219, ptr %wptr.i, align 8
  %188 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %buf_mask.i, align 8
  %190 = trunc i64 %187 to i32
  %idxprom.i221 = and i32 %189, %190
  %arrayidx.i222 = getelementptr i32, ptr %185, i32 %idxprom.i221
  %191 = ptrtoint ptr %arrayidx.i222 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile i32 98304, ptr %arrayidx.i222, align 4
  %192 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %ptr_mask.i, align 8
  %194 = load i64, ptr %wptr.i, align 8
  %and3.i224 = and i64 %194, %193
  store i64 %and3.i224, ptr %wptr.i, align 8
  %195 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %count_dw.i, align 8
  %dec.i225 = add i32 %196, -1
  store i32 %dec.i225, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i225)
  %cmp.i228 = icmp slt i32 %dec.i225, 1
  br i1 %cmp.i228, label %if.then.i229, label %amdgpu_ring_write.exit226.amdgpu_ring_write.exit239_crit_edge

amdgpu_ring_write.exit226.amdgpu_ring_write.exit239_crit_edge: ; preds = %amdgpu_ring_write.exit226
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit239

if.then.i229:                                     ; preds = %amdgpu_ring_write.exit226
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit239

amdgpu_ring_write.exit239:                        ; preds = %if.then.i229, %amdgpu_ring_write.exit226.amdgpu_ring_write.exit239_crit_edge
  %197 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ring1.i, align 4
  %199 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %wptr.i, align 8
  %inc.i232 = add i64 %200, 1
  store i64 %inc.i232, ptr %wptr.i, align 8
  %201 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %buf_mask.i, align 8
  %203 = trunc i64 %200 to i32
  %idxprom.i234 = and i32 %202, %203
  %arrayidx.i235 = getelementptr i32, ptr %198, i32 %idxprom.i234
  %204 = ptrtoint ptr %arrayidx.i235 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile i32 1, ptr %arrayidx.i235, align 4
  %205 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %ptr_mask.i, align 8
  %207 = load i64, ptr %wptr.i, align 8
  %and3.i237 = and i64 %207, %206
  store i64 %and3.i237, ptr %wptr.i, align 8
  %208 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %count_dw.i, align 8
  %dec.i238 = add i32 %209, -1
  store i32 %dec.i238, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i238)
  %cmp.i241 = icmp slt i32 %dec.i238, 1
  br i1 %cmp.i241, label %if.then.i242, label %amdgpu_ring_write.exit239.amdgpu_ring_write.exit252_crit_edge

amdgpu_ring_write.exit239.amdgpu_ring_write.exit252_crit_edge: ; preds = %amdgpu_ring_write.exit239
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit252

if.then.i242:                                     ; preds = %amdgpu_ring_write.exit239
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit252

amdgpu_ring_write.exit252:                        ; preds = %if.then.i242, %amdgpu_ring_write.exit239.amdgpu_ring_write.exit252_crit_edge
  %210 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ring1.i, align 4
  %212 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %wptr.i, align 8
  %inc.i245 = add i64 %213, 1
  store i64 %inc.i245, ptr %wptr.i, align 8
  %214 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %buf_mask.i, align 8
  %216 = trunc i64 %213 to i32
  %idxprom.i247 = and i32 %215, %216
  %arrayidx.i248 = getelementptr i32, ptr %211, i32 %idxprom.i247
  %217 = ptrtoint ptr %arrayidx.i248 to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile i32 1879048192, ptr %arrayidx.i248, align 4
  %218 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %ptr_mask.i, align 8
  %220 = load i64, ptr %wptr.i, align 8
  %and3.i250 = and i64 %220, %219
  store i64 %and3.i250, ptr %wptr.i, align 8
  %221 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %count_dw.i, align 8
  %dec.i251 = add i32 %222, -1
  store i32 %dec.i251, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i251)
  %cmp.i254 = icmp slt i32 %dec.i251, 1
  br i1 %cmp.i254, label %if.then.i255, label %amdgpu_ring_write.exit252.amdgpu_ring_write.exit265_crit_edge

amdgpu_ring_write.exit252.amdgpu_ring_write.exit265_crit_edge: ; preds = %amdgpu_ring_write.exit252
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit265

if.then.i255:                                     ; preds = %amdgpu_ring_write.exit252
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit265

amdgpu_ring_write.exit265:                        ; preds = %if.then.i255, %amdgpu_ring_write.exit252.amdgpu_ring_write.exit265_crit_edge
  %223 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ring1.i, align 4
  %225 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %wptr.i, align 8
  %inc.i258 = add i64 %226, 1
  store i64 %inc.i258, ptr %wptr.i, align 8
  %227 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %buf_mask.i, align 8
  %229 = trunc i64 %226 to i32
  %idxprom.i260 = and i32 %228, %229
  %arrayidx.i261 = getelementptr i32, ptr %224, i32 %idxprom.i260
  %230 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile i32 0, ptr %arrayidx.i261, align 4
  %231 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %ptr_mask.i, align 8
  %233 = load i64, ptr %wptr.i, align 8
  %and3.i263 = and i64 %233, %232
  store i64 %and3.i263, ptr %wptr.i, align 8
  %234 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %count_dw.i, align 8
  %dec.i264 = add i32 %235, -1
  store i32 %dec.i264, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v2_0_dec_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vmid1 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %0 = ptrtoint ptr %vmid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmid1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %cond.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %7, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %8 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_mask.i, align 8
  %10 = trunc i64 %7 to i32
  %idxprom.i = and i32 %9, %10
  %arrayidx.i = getelementptr i32, ptr %5, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 16591, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %12 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ptr_mask.i, align 8
  %14 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %14, %13
  store i64 %and3.i, ptr %wptr.i, align 8
  %15 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %shl = shl i32 %cond, 4
  %or = or i32 %shl, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i44 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i44, label %if.then.i45, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit55_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit55_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit55

if.then.i45:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit55

amdgpu_ring_write.exit55:                         ; preds = %if.then.i45, %amdgpu_ring_write.exit.amdgpu_ring_write.exit55_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i48 = add i64 %20, 1
  store i64 %inc.i48, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i50 = and i32 %22, %23
  %arrayidx.i51 = getelementptr i32, ptr %18, i32 %idxprom.i50
  %24 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %or, ptr %arrayidx.i51, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i53 = and i64 %27, %26
  store i64 %and3.i53, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i54 = add i32 %29, -1
  store i32 %dec.i54, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i54)
  %cmp.i57 = icmp slt i32 %dec.i54, 1
  br i1 %cmp.i57, label %if.then.i58, label %amdgpu_ring_write.exit55.amdgpu_ring_write.exit68_crit_edge

amdgpu_ring_write.exit55.amdgpu_ring_write.exit68_crit_edge: ; preds = %amdgpu_ring_write.exit55
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit68

if.then.i58:                                      ; preds = %amdgpu_ring_write.exit55
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit68

amdgpu_ring_write.exit68:                         ; preds = %if.then.i58, %amdgpu_ring_write.exit55.amdgpu_ring_write.exit68_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 4
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wptr.i, align 8
  %inc.i61 = add i64 %33, 1
  store i64 %inc.i61, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_mask.i, align 8
  %36 = trunc i64 %33 to i32
  %idxprom.i63 = and i32 %35, %36
  %arrayidx.i64 = getelementptr i32, ptr %31, i32 %idxprom.i63
  %37 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 16593, ptr %arrayidx.i64, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ptr_mask.i, align 8
  %40 = load i64, ptr %wptr.i, align 8
  %and3.i66 = and i64 %40, %39
  store i64 %and3.i66, ptr %wptr.i, align 8
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 8
  %dec.i67 = add i32 %42, -1
  store i32 %dec.i67, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i67)
  %cmp.i70 = icmp slt i32 %dec.i67, 1
  br i1 %cmp.i70, label %if.then.i71, label %amdgpu_ring_write.exit68.amdgpu_ring_write.exit81_crit_edge

amdgpu_ring_write.exit68.amdgpu_ring_write.exit81_crit_edge: ; preds = %amdgpu_ring_write.exit68
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit81

if.then.i71:                                      ; preds = %amdgpu_ring_write.exit68
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit81

amdgpu_ring_write.exit81:                         ; preds = %if.then.i71, %amdgpu_ring_write.exit68.amdgpu_ring_write.exit81_crit_edge
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 4
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wptr.i, align 8
  %inc.i74 = add i64 %46, 1
  store i64 %inc.i74, ptr %wptr.i, align 8
  %47 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_mask.i, align 8
  %49 = trunc i64 %46 to i32
  %idxprom.i76 = and i32 %48, %49
  %arrayidx.i77 = getelementptr i32, ptr %44, i32 %idxprom.i76
  %50 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %or, ptr %arrayidx.i77, align 4
  %51 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ptr_mask.i, align 8
  %53 = load i64, ptr %wptr.i, align 8
  %and3.i79 = and i64 %53, %52
  store i64 %and3.i79, ptr %wptr.i, align 8
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dw.i, align 8
  %dec.i80 = add i32 %55, -1
  store i32 %dec.i80, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i80)
  %cmp.i83 = icmp slt i32 %dec.i80, 1
  br i1 %cmp.i83, label %if.then.i84, label %amdgpu_ring_write.exit81.amdgpu_ring_write.exit94_crit_edge

amdgpu_ring_write.exit81.amdgpu_ring_write.exit94_crit_edge: ; preds = %amdgpu_ring_write.exit81
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit94

if.then.i84:                                      ; preds = %amdgpu_ring_write.exit81
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit94

amdgpu_ring_write.exit94:                         ; preds = %if.then.i84, %amdgpu_ring_write.exit81.amdgpu_ring_write.exit94_crit_edge
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 4
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %wptr.i, align 8
  %inc.i87 = add i64 %59, 1
  store i64 %inc.i87, ptr %wptr.i, align 8
  %60 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_mask.i, align 8
  %62 = trunc i64 %59 to i32
  %idxprom.i89 = and i32 %61, %62
  %arrayidx.i90 = getelementptr i32, ptr %57, i32 %idxprom.i89
  %63 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 16616, ptr %arrayidx.i90, align 4
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ptr_mask.i, align 8
  %66 = load i64, ptr %wptr.i, align 8
  %and3.i92 = and i64 %66, %65
  store i64 %and3.i92, ptr %wptr.i, align 8
  %67 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i, align 8
  %dec.i93 = add i32 %68, -1
  store i32 %dec.i93, ptr %count_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %69 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i93)
  %cmp.i96 = icmp slt i32 %dec.i93, 1
  br i1 %cmp.i96, label %if.then.i97, label %amdgpu_ring_write.exit94.amdgpu_ring_write.exit107_crit_edge

amdgpu_ring_write.exit94.amdgpu_ring_write.exit107_crit_edge: ; preds = %amdgpu_ring_write.exit94
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit107

if.then.i97:                                      ; preds = %amdgpu_ring_write.exit94
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit107

amdgpu_ring_write.exit107:                        ; preds = %if.then.i97, %amdgpu_ring_write.exit94.amdgpu_ring_write.exit107_crit_edge
  %71 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ring1.i, align 4
  %73 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %wptr.i, align 8
  %inc.i100 = add i64 %74, 1
  store i64 %inc.i100, ptr %wptr.i, align 8
  %75 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buf_mask.i, align 8
  %77 = trunc i64 %74 to i32
  %idxprom.i102 = and i32 %76, %77
  %arrayidx.i103 = getelementptr i32, ptr %72, i32 %idxprom.i102
  %78 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 %conv, ptr %arrayidx.i103, align 4
  %79 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %ptr_mask.i, align 8
  %81 = load i64, ptr %wptr.i, align 8
  %and3.i105 = and i64 %81, %80
  store i64 %and3.i105, ptr %wptr.i, align 8
  %82 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count_dw.i, align 8
  %dec.i106 = add i32 %83, -1
  store i32 %dec.i106, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i106)
  %cmp.i109 = icmp slt i32 %dec.i106, 1
  br i1 %cmp.i109, label %if.then.i110, label %amdgpu_ring_write.exit107.amdgpu_ring_write.exit120_crit_edge

amdgpu_ring_write.exit107.amdgpu_ring_write.exit120_crit_edge: ; preds = %amdgpu_ring_write.exit107
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit120

if.then.i110:                                     ; preds = %amdgpu_ring_write.exit107
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit120

amdgpu_ring_write.exit120:                        ; preds = %if.then.i110, %amdgpu_ring_write.exit107.amdgpu_ring_write.exit120_crit_edge
  %84 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ring1.i, align 4
  %86 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %wptr.i, align 8
  %inc.i113 = add i64 %87, 1
  store i64 %inc.i113, ptr %wptr.i, align 8
  %88 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %buf_mask.i, align 8
  %90 = trunc i64 %87 to i32
  %idxprom.i115 = and i32 %89, %90
  %arrayidx.i116 = getelementptr i32, ptr %85, i32 %idxprom.i115
  %91 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 16617, ptr %arrayidx.i116, align 4
  %92 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %ptr_mask.i, align 8
  %94 = load i64, ptr %wptr.i, align 8
  %and3.i118 = and i64 %94, %93
  store i64 %and3.i118, ptr %wptr.i, align 8
  %95 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %count_dw.i, align 8
  %dec.i119 = add i32 %96, -1
  store i32 %dec.i119, ptr %count_dw.i, align 8
  %97 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %98, 32
  %conv6 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i119)
  %cmp.i122 = icmp slt i32 %dec.i119, 1
  br i1 %cmp.i122, label %if.then.i123, label %amdgpu_ring_write.exit120.amdgpu_ring_write.exit133_crit_edge

amdgpu_ring_write.exit120.amdgpu_ring_write.exit133_crit_edge: ; preds = %amdgpu_ring_write.exit120
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit133

if.then.i123:                                     ; preds = %amdgpu_ring_write.exit120
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit133

amdgpu_ring_write.exit133:                        ; preds = %if.then.i123, %amdgpu_ring_write.exit120.amdgpu_ring_write.exit133_crit_edge
  %99 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ring1.i, align 4
  %101 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %wptr.i, align 8
  %inc.i126 = add i64 %102, 1
  store i64 %inc.i126, ptr %wptr.i, align 8
  %103 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %buf_mask.i, align 8
  %105 = trunc i64 %102 to i32
  %idxprom.i128 = and i32 %104, %105
  %arrayidx.i129 = getelementptr i32, ptr %100, i32 %idxprom.i128
  %106 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 %conv6, ptr %arrayidx.i129, align 4
  %107 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %ptr_mask.i, align 8
  %109 = load i64, ptr %wptr.i, align 8
  %and3.i131 = and i64 %109, %108
  store i64 %and3.i131, ptr %wptr.i, align 8
  %110 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %count_dw.i, align 8
  %dec.i132 = add i32 %111, -1
  store i32 %dec.i132, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i132)
  %cmp.i135 = icmp slt i32 %dec.i132, 1
  br i1 %cmp.i135, label %if.then.i136, label %amdgpu_ring_write.exit133.amdgpu_ring_write.exit146_crit_edge

amdgpu_ring_write.exit133.amdgpu_ring_write.exit146_crit_edge: ; preds = %amdgpu_ring_write.exit133
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit146

if.then.i136:                                     ; preds = %amdgpu_ring_write.exit133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit146

amdgpu_ring_write.exit146:                        ; preds = %if.then.i136, %amdgpu_ring_write.exit133.amdgpu_ring_write.exit146_crit_edge
  %112 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ring1.i, align 4
  %114 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %wptr.i, align 8
  %inc.i139 = add i64 %115, 1
  store i64 %inc.i139, ptr %wptr.i, align 8
  %116 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %buf_mask.i, align 8
  %118 = trunc i64 %115 to i32
  %idxprom.i141 = and i32 %117, %118
  %arrayidx.i142 = getelementptr i32, ptr %113, i32 %idxprom.i141
  %119 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 16514, ptr %arrayidx.i142, align 4
  %120 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %ptr_mask.i, align 8
  %122 = load i64, ptr %wptr.i, align 8
  %and3.i144 = and i64 %122, %121
  store i64 %and3.i144, ptr %wptr.i, align 8
  %123 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %count_dw.i, align 8
  %dec.i145 = add i32 %124, -1
  store i32 %dec.i145, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %125 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i145)
  %cmp.i148 = icmp slt i32 %dec.i145, 1
  br i1 %cmp.i148, label %if.then.i149, label %amdgpu_ring_write.exit146.amdgpu_ring_write.exit159_crit_edge

amdgpu_ring_write.exit146.amdgpu_ring_write.exit159_crit_edge: ; preds = %amdgpu_ring_write.exit146
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit159

if.then.i149:                                     ; preds = %amdgpu_ring_write.exit146
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit159

amdgpu_ring_write.exit159:                        ; preds = %if.then.i149, %amdgpu_ring_write.exit146.amdgpu_ring_write.exit159_crit_edge
  %127 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ring1.i, align 4
  %129 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %wptr.i, align 8
  %inc.i152 = add i64 %130, 1
  store i64 %inc.i152, ptr %wptr.i, align 8
  %131 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %buf_mask.i, align 8
  %133 = trunc i64 %130 to i32
  %idxprom.i154 = and i32 %132, %133
  %arrayidx.i155 = getelementptr i32, ptr %128, i32 %idxprom.i154
  %134 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 %126, ptr %arrayidx.i155, align 4
  %135 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %ptr_mask.i, align 8
  %137 = load i64, ptr %wptr.i, align 8
  %and3.i157 = and i64 %137, %136
  store i64 %and3.i157, ptr %wptr.i, align 8
  %138 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %count_dw.i, align 8
  %dec.i158 = add i32 %139, -1
  store i32 %dec.i158, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i158)
  %cmp.i161 = icmp slt i32 %dec.i158, 1
  br i1 %cmp.i161, label %if.then.i162, label %amdgpu_ring_write.exit159.amdgpu_ring_write.exit172_crit_edge

amdgpu_ring_write.exit159.amdgpu_ring_write.exit172_crit_edge: ; preds = %amdgpu_ring_write.exit159
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit172

if.then.i162:                                     ; preds = %amdgpu_ring_write.exit159
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit172

amdgpu_ring_write.exit172:                        ; preds = %if.then.i162, %amdgpu_ring_write.exit159.amdgpu_ring_write.exit172_crit_edge
  %140 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ring1.i, align 4
  %142 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %wptr.i, align 8
  %inc.i165 = add i64 %143, 1
  store i64 %inc.i165, ptr %wptr.i, align 8
  %144 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %buf_mask.i, align 8
  %146 = trunc i64 %143 to i32
  %idxprom.i167 = and i32 %145, %146
  %arrayidx.i168 = getelementptr i32, ptr %141, i32 %idxprom.i167
  %147 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 16620, ptr %arrayidx.i168, align 4
  %148 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %ptr_mask.i, align 8
  %150 = load i64, ptr %wptr.i, align 8
  %and3.i170 = and i64 %150, %149
  store i64 %and3.i170, ptr %wptr.i, align 8
  %151 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %count_dw.i, align 8
  %dec.i171 = add i32 %152, -1
  store i32 %dec.i171, ptr %count_dw.i, align 8
  %gpu_addr7 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 12
  %153 = ptrtoint ptr %gpu_addr7 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %gpu_addr7, align 8
  %conv9 = trunc i64 %154 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i171)
  %cmp.i174 = icmp slt i32 %dec.i171, 1
  br i1 %cmp.i174, label %if.then.i175, label %amdgpu_ring_write.exit172.amdgpu_ring_write.exit185_crit_edge

amdgpu_ring_write.exit172.amdgpu_ring_write.exit185_crit_edge: ; preds = %amdgpu_ring_write.exit172
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit185

if.then.i175:                                     ; preds = %amdgpu_ring_write.exit172
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit185

amdgpu_ring_write.exit185:                        ; preds = %if.then.i175, %amdgpu_ring_write.exit172.amdgpu_ring_write.exit185_crit_edge
  %155 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ring1.i, align 4
  %157 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %wptr.i, align 8
  %inc.i178 = add i64 %158, 1
  store i64 %inc.i178, ptr %wptr.i, align 8
  %159 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %buf_mask.i, align 8
  %161 = trunc i64 %158 to i32
  %idxprom.i180 = and i32 %160, %161
  %arrayidx.i181 = getelementptr i32, ptr %156, i32 %idxprom.i180
  %162 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile i32 %conv9, ptr %arrayidx.i181, align 4
  %163 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %ptr_mask.i, align 8
  %165 = load i64, ptr %wptr.i, align 8
  %and3.i183 = and i64 %165, %164
  store i64 %and3.i183, ptr %wptr.i, align 8
  %166 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %count_dw.i, align 8
  %dec.i184 = add i32 %167, -1
  store i32 %dec.i184, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i184)
  %cmp.i187 = icmp slt i32 %dec.i184, 1
  br i1 %cmp.i187, label %if.then.i188, label %amdgpu_ring_write.exit185.amdgpu_ring_write.exit198_crit_edge

amdgpu_ring_write.exit185.amdgpu_ring_write.exit198_crit_edge: ; preds = %amdgpu_ring_write.exit185
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit198

if.then.i188:                                     ; preds = %amdgpu_ring_write.exit185
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit198

amdgpu_ring_write.exit198:                        ; preds = %if.then.i188, %amdgpu_ring_write.exit185.amdgpu_ring_write.exit198_crit_edge
  %168 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ring1.i, align 4
  %170 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %wptr.i, align 8
  %inc.i191 = add i64 %171, 1
  store i64 %inc.i191, ptr %wptr.i, align 8
  %172 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %buf_mask.i, align 8
  %174 = trunc i64 %171 to i32
  %idxprom.i193 = and i32 %173, %174
  %arrayidx.i194 = getelementptr i32, ptr %169, i32 %idxprom.i193
  %175 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile i32 16621, ptr %arrayidx.i194, align 4
  %176 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %ptr_mask.i, align 8
  %178 = load i64, ptr %wptr.i, align 8
  %and3.i196 = and i64 %178, %177
  store i64 %and3.i196, ptr %wptr.i, align 8
  %179 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %count_dw.i, align 8
  %dec.i197 = add i32 %180, -1
  store i32 %dec.i197, ptr %count_dw.i, align 8
  %181 = ptrtoint ptr %gpu_addr7 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %gpu_addr7, align 8
  %shr11 = lshr i64 %182, 32
  %conv13 = trunc i64 %shr11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i197)
  %cmp.i200 = icmp slt i32 %dec.i197, 1
  br i1 %cmp.i200, label %if.then.i201, label %amdgpu_ring_write.exit198.amdgpu_ring_write.exit211_crit_edge

amdgpu_ring_write.exit198.amdgpu_ring_write.exit211_crit_edge: ; preds = %amdgpu_ring_write.exit198
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit211

if.then.i201:                                     ; preds = %amdgpu_ring_write.exit198
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit211

amdgpu_ring_write.exit211:                        ; preds = %if.then.i201, %amdgpu_ring_write.exit198.amdgpu_ring_write.exit211_crit_edge
  %183 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ring1.i, align 4
  %185 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %wptr.i, align 8
  %inc.i204 = add i64 %186, 1
  store i64 %inc.i204, ptr %wptr.i, align 8
  %187 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %buf_mask.i, align 8
  %189 = trunc i64 %186 to i32
  %idxprom.i206 = and i32 %188, %189
  %arrayidx.i207 = getelementptr i32, ptr %184, i32 %idxprom.i206
  %190 = ptrtoint ptr %arrayidx.i207 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile i32 %conv13, ptr %arrayidx.i207, align 4
  %191 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %ptr_mask.i, align 8
  %193 = load i64, ptr %wptr.i, align 8
  %and3.i209 = and i64 %193, %192
  store i64 %and3.i209, ptr %wptr.i, align 8
  %194 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %count_dw.i, align 8
  %dec.i210 = add i32 %195, -1
  store i32 %dec.i210, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i210)
  %cmp.i213 = icmp slt i32 %dec.i210, 1
  br i1 %cmp.i213, label %if.then.i214, label %amdgpu_ring_write.exit211.amdgpu_ring_write.exit224_crit_edge

amdgpu_ring_write.exit211.amdgpu_ring_write.exit224_crit_edge: ; preds = %amdgpu_ring_write.exit211
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit224

if.then.i214:                                     ; preds = %amdgpu_ring_write.exit211
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit224

amdgpu_ring_write.exit224:                        ; preds = %if.then.i214, %amdgpu_ring_write.exit211.amdgpu_ring_write.exit224_crit_edge
  %196 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ring1.i, align 4
  %198 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %wptr.i, align 8
  %inc.i217 = add i64 %199, 1
  store i64 %inc.i217, ptr %wptr.i, align 8
  %200 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %buf_mask.i, align 8
  %202 = trunc i64 %199 to i32
  %idxprom.i219 = and i32 %201, %202
  %arrayidx.i220 = getelementptr i32, ptr %197, i32 %idxprom.i219
  %203 = ptrtoint ptr %arrayidx.i220 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile i32 536870912, ptr %arrayidx.i220, align 4
  %204 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %ptr_mask.i, align 8
  %206 = load i64, ptr %wptr.i, align 8
  %and3.i222 = and i64 %206, %205
  store i64 %and3.i222, ptr %wptr.i, align 8
  %207 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %count_dw.i, align 8
  %dec.i223 = add i32 %208, -1
  store i32 %dec.i223, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i223)
  %cmp.i226 = icmp slt i32 %dec.i223, 1
  br i1 %cmp.i226, label %if.then.i227, label %amdgpu_ring_write.exit224.amdgpu_ring_write.exit237_crit_edge

amdgpu_ring_write.exit224.amdgpu_ring_write.exit237_crit_edge: ; preds = %amdgpu_ring_write.exit224
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit237

if.then.i227:                                     ; preds = %amdgpu_ring_write.exit224
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit237

amdgpu_ring_write.exit237:                        ; preds = %if.then.i227, %amdgpu_ring_write.exit224.amdgpu_ring_write.exit237_crit_edge
  %209 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ring1.i, align 4
  %211 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %wptr.i, align 8
  %inc.i230 = add i64 %212, 1
  store i64 %inc.i230, ptr %wptr.i, align 8
  %213 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %buf_mask.i, align 8
  %215 = trunc i64 %212 to i32
  %idxprom.i232 = and i32 %214, %215
  %arrayidx.i233 = getelementptr i32, ptr %210, i32 %idxprom.i232
  %216 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile i32 0, ptr %arrayidx.i233, align 4
  %217 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %ptr_mask.i, align 8
  %219 = load i64, ptr %wptr.i, align 8
  %and3.i235 = and i64 %219, %218
  store i64 %and3.i235, ptr %wptr.i, align 8
  %220 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %count_dw.i, align 8
  %dec.i236 = add i32 %221, -1
  store i32 %dec.i236, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i236)
  %cmp.i239 = icmp slt i32 %dec.i236, 1
  br i1 %cmp.i239, label %if.then.i240, label %amdgpu_ring_write.exit237.amdgpu_ring_write.exit250_crit_edge

amdgpu_ring_write.exit237.amdgpu_ring_write.exit250_crit_edge: ; preds = %amdgpu_ring_write.exit237
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit250

if.then.i240:                                     ; preds = %amdgpu_ring_write.exit237
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit250

amdgpu_ring_write.exit250:                        ; preds = %if.then.i240, %amdgpu_ring_write.exit237.amdgpu_ring_write.exit250_crit_edge
  %222 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ring1.i, align 4
  %224 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %wptr.i, align 8
  %inc.i243 = add i64 %225, 1
  store i64 %inc.i243, ptr %wptr.i, align 8
  %226 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %buf_mask.i, align 8
  %228 = trunc i64 %225 to i32
  %idxprom.i245 = and i32 %227, %228
  %arrayidx.i246 = getelementptr i32, ptr %223, i32 %idxprom.i245
  %229 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile i32 16517, ptr %arrayidx.i246, align 4
  %230 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %ptr_mask.i, align 8
  %232 = load i64, ptr %wptr.i, align 8
  %and3.i248 = and i64 %232, %231
  store i64 %and3.i248, ptr %wptr.i, align 8
  %233 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %count_dw.i, align 8
  %dec.i249 = add i32 %234, -1
  store i32 %dec.i249, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i249)
  %cmp.i252 = icmp slt i32 %dec.i249, 1
  br i1 %cmp.i252, label %if.then.i253, label %amdgpu_ring_write.exit250.amdgpu_ring_write.exit263_crit_edge

amdgpu_ring_write.exit250.amdgpu_ring_write.exit263_crit_edge: ; preds = %amdgpu_ring_write.exit250
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit263

if.then.i253:                                     ; preds = %amdgpu_ring_write.exit250
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit263

amdgpu_ring_write.exit263:                        ; preds = %if.then.i253, %amdgpu_ring_write.exit250.amdgpu_ring_write.exit263_crit_edge
  %235 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ring1.i, align 4
  %237 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %wptr.i, align 8
  %inc.i256 = add i64 %238, 1
  store i64 %inc.i256, ptr %wptr.i, align 8
  %239 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %buf_mask.i, align 8
  %241 = trunc i64 %238 to i32
  %idxprom.i258 = and i32 %240, %241
  %arrayidx.i259 = getelementptr i32, ptr %236, i32 %idxprom.i258
  %242 = ptrtoint ptr %arrayidx.i259 to i32
  call void @__asan_store4_noabort(i32 %242)
  store volatile i32 20972032, ptr %arrayidx.i259, align 4
  %243 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %ptr_mask.i, align 8
  %245 = load i64, ptr %wptr.i, align 8
  %and3.i261 = and i64 %245, %244
  store i64 %and3.i261, ptr %wptr.i, align 8
  %246 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %count_dw.i, align 8
  %dec.i262 = add i32 %247, -1
  store i32 %dec.i262, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i262)
  %cmp.i265 = icmp slt i32 %dec.i262, 1
  br i1 %cmp.i265, label %if.then.i266, label %amdgpu_ring_write.exit263.amdgpu_ring_write.exit276_crit_edge

amdgpu_ring_write.exit263.amdgpu_ring_write.exit276_crit_edge: ; preds = %amdgpu_ring_write.exit263
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit276

if.then.i266:                                     ; preds = %amdgpu_ring_write.exit263
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit276

amdgpu_ring_write.exit276:                        ; preds = %if.then.i266, %amdgpu_ring_write.exit263.amdgpu_ring_write.exit276_crit_edge
  %248 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ring1.i, align 4
  %250 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %wptr.i, align 8
  %inc.i269 = add i64 %251, 1
  store i64 %inc.i269, ptr %wptr.i, align 8
  %252 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %buf_mask.i, align 8
  %254 = trunc i64 %251 to i32
  %idxprom.i271 = and i32 %253, %254
  %arrayidx.i272 = getelementptr i32, ptr %249, i32 %idxprom.i271
  %255 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_store4_noabort(i32 %255)
  store volatile i32 16516, ptr %arrayidx.i272, align 4
  %256 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %ptr_mask.i, align 8
  %258 = load i64, ptr %wptr.i, align 8
  %and3.i274 = and i64 %258, %257
  store i64 %and3.i274, ptr %wptr.i, align 8
  %259 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %count_dw.i, align 8
  %dec.i275 = add i32 %260, -1
  store i32 %dec.i275, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i275)
  %cmp.i278 = icmp slt i32 %dec.i275, 1
  br i1 %cmp.i278, label %if.then.i279, label %amdgpu_ring_write.exit276.amdgpu_ring_write.exit289_crit_edge

amdgpu_ring_write.exit276.amdgpu_ring_write.exit289_crit_edge: ; preds = %amdgpu_ring_write.exit276
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit289

if.then.i279:                                     ; preds = %amdgpu_ring_write.exit276
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit289

amdgpu_ring_write.exit289:                        ; preds = %if.then.i279, %amdgpu_ring_write.exit276.amdgpu_ring_write.exit289_crit_edge
  %261 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ring1.i, align 4
  %263 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %wptr.i, align 8
  %inc.i282 = add i64 %264, 1
  store i64 %inc.i282, ptr %wptr.i, align 8
  %265 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %buf_mask.i, align 8
  %267 = trunc i64 %264 to i32
  %idxprom.i284 = and i32 %266, %267
  %arrayidx.i285 = getelementptr i32, ptr %262, i32 %idxprom.i284
  %268 = ptrtoint ptr %arrayidx.i285 to i32
  call void @__asan_store4_noabort(i32 %268)
  store volatile i32 2, ptr %arrayidx.i285, align 4
  %269 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %ptr_mask.i, align 8
  %271 = load i64, ptr %wptr.i, align 8
  %and3.i287 = and i64 %271, %270
  store i64 %and3.i287, ptr %wptr.i, align 8
  %272 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %count_dw.i, align 8
  %dec.i288 = add i32 %273, -1
  store i32 %dec.i288, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i288)
  %cmp.i291 = icmp slt i32 %dec.i288, 1
  br i1 %cmp.i291, label %if.then.i292, label %amdgpu_ring_write.exit289.amdgpu_ring_write.exit302_crit_edge

amdgpu_ring_write.exit289.amdgpu_ring_write.exit302_crit_edge: ; preds = %amdgpu_ring_write.exit289
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit302

if.then.i292:                                     ; preds = %amdgpu_ring_write.exit289
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit302

amdgpu_ring_write.exit302:                        ; preds = %if.then.i292, %amdgpu_ring_write.exit289.amdgpu_ring_write.exit302_crit_edge
  %274 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %ring1.i, align 4
  %276 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %wptr.i, align 8
  %inc.i295 = add i64 %277, 1
  store i64 %inc.i295, ptr %wptr.i, align 8
  %278 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %buf_mask.i, align 8
  %280 = trunc i64 %277 to i32
  %idxprom.i297 = and i32 %279, %280
  %arrayidx.i298 = getelementptr i32, ptr %275, i32 %idxprom.i297
  %281 = ptrtoint ptr %arrayidx.i298 to i32
  call void @__asan_store4_noabort(i32 %281)
  store volatile i32 855654537, ptr %arrayidx.i298, align 4
  %282 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %ptr_mask.i, align 8
  %284 = load i64, ptr %wptr.i, align 8
  %and3.i300 = and i64 %284, %283
  store i64 %and3.i300, ptr %wptr.i, align 8
  %285 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %count_dw.i, align 8
  %dec.i301 = add i32 %286, -1
  store i32 %dec.i301, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i301)
  %cmp.i304 = icmp slt i32 %dec.i301, 1
  br i1 %cmp.i304, label %if.then.i305, label %amdgpu_ring_write.exit302.amdgpu_ring_write.exit315_crit_edge

amdgpu_ring_write.exit302.amdgpu_ring_write.exit315_crit_edge: ; preds = %amdgpu_ring_write.exit302
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit315

if.then.i305:                                     ; preds = %amdgpu_ring_write.exit302
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit315

amdgpu_ring_write.exit315:                        ; preds = %if.then.i305, %amdgpu_ring_write.exit302.amdgpu_ring_write.exit315_crit_edge
  %287 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %ring1.i, align 4
  %289 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %wptr.i, align 8
  %inc.i308 = add i64 %290, 1
  store i64 %inc.i308, ptr %wptr.i, align 8
  %291 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %buf_mask.i, align 8
  %293 = trunc i64 %290 to i32
  %idxprom.i310 = and i32 %292, %293
  %arrayidx.i311 = getelementptr i32, ptr %288, i32 %idxprom.i310
  %294 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_store4_noabort(i32 %294)
  store volatile i32 2, ptr %arrayidx.i311, align 4
  %295 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %ptr_mask.i, align 8
  %297 = load i64, ptr %wptr.i, align 8
  %and3.i313 = and i64 %297, %296
  store i64 %and3.i313, ptr %wptr.i, align 8
  %298 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %count_dw.i, align 8
  %dec.i314 = add i32 %299, -1
  store i32 %dec.i314, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v2_0_dec_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %reg, i32 noundef %val, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 2
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 16517, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i17 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i17, label %if.then.i18, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit28_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit28_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit28

amdgpu_ring_write.exit28:                         ; preds = %if.then.i18, %amdgpu_ring_write.exit.amdgpu_ring_write.exit28_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i21 = add i64 %18, 1
  store i64 %inc.i21, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i23 = and i32 %20, %21
  %arrayidx.i24 = getelementptr i32, ptr %16, i32 %idxprom.i23
  %22 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 20972032, ptr %arrayidx.i24, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i26 = and i64 %25, %24
  store i64 %and3.i26, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i27 = add i32 %27, -1
  store i32 %dec.i27, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i27)
  %cmp.i30 = icmp slt i32 %dec.i27, 1
  br i1 %cmp.i30, label %if.then.i31, label %amdgpu_ring_write.exit28.amdgpu_ring_write.exit41_crit_edge

amdgpu_ring_write.exit28.amdgpu_ring_write.exit41_crit_edge: ; preds = %amdgpu_ring_write.exit28
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit41

amdgpu_ring_write.exit41:                         ; preds = %if.then.i31, %amdgpu_ring_write.exit28.amdgpu_ring_write.exit41_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i34 = add i64 %31, 1
  store i64 %inc.i34, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i36 = and i32 %33, %34
  %arrayidx.i37 = getelementptr i32, ptr %29, i32 %idxprom.i36
  %35 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 16516, ptr %arrayidx.i37, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i39 = and i64 %38, %37
  store i64 %and3.i39, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i40 = add i32 %40, -1
  store i32 %dec.i40, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i43 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i43, label %if.then.i44, label %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge

amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge: ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit54

amdgpu_ring_write.exit54:                         ; preds = %if.then.i44, %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i47 = add i64 %44, 1
  store i64 %inc.i47, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i49 = and i32 %46, %47
  %arrayidx.i50 = getelementptr i32, ptr %42, i32 %idxprom.i49
  %48 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %val, ptr %arrayidx.i50, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i52 = and i64 %51, %50
  store i64 %and3.i52, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i53 = add i32 %53, -1
  store i32 %dec.i53, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i56 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit67

amdgpu_ring_write.exit67:                         ; preds = %if.then.i57, %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i60 = add i64 %57, 1
  store i64 %inc.i60, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i62 = and i32 %59, %60
  %arrayidx.i63 = getelementptr i32, ptr %55, i32 %idxprom.i62
  %61 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 114687, ptr %arrayidx.i63, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i65 = and i64 %64, %63
  store i64 %and3.i65, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i66 = add i32 %66, -1
  store i32 %dec.i66, ptr %count_dw.i, align 8
  %67 = add i32 %shl, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %67)
  %68 = icmp ult i32 %67, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %68, label %if.then, label %if.else

if.then:                                          ; preds = %amdgpu_ring_write.exit67
  br i1 %cmp.i69, label %if.then.i70, label %if.then.amdgpu_ring_write.exit80_crit_edge

if.then.amdgpu_ring_write.exit80_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %if.then.amdgpu_ring_write.exit80_crit_edge
  %69 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i, align 4
  %71 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %wptr.i, align 8
  %inc.i73 = add i64 %72, 1
  store i64 %inc.i73, ptr %wptr.i, align 8
  %73 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_mask.i, align 8
  %75 = trunc i64 %72 to i32
  %idxprom.i75 = and i32 %74, %75
  %arrayidx.i76 = getelementptr i32, ptr %70, i32 %idxprom.i75
  %76 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %arrayidx.i76, align 4
  %77 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ptr_mask.i, align 8
  %79 = load i64, ptr %wptr.i, align 8
  %and3.i78 = and i64 %79, %78
  store i64 %and3.i78, ptr %wptr.i, align 8
  %80 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count_dw.i, align 8
  %dec.i79 = add i32 %81, -1
  store i32 %dec.i79, ptr %count_dw.i, align 8
  %and = and i32 %reg, 262143
  %or3 = or i32 %and, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i82 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i82, label %amdgpu_ring_write.exit80.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit80.if.end_crit_edge

amdgpu_ring_write.exit80.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

amdgpu_ring_write.exit80.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.else:                                          ; preds = %amdgpu_ring_write.exit67
  br i1 %cmp.i69, label %if.then.i96, label %if.else.amdgpu_ring_write.exit106_crit_edge

if.else.amdgpu_ring_write.exit106_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit106

if.then.i96:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit106

amdgpu_ring_write.exit106:                        ; preds = %if.then.i96, %if.else.amdgpu_ring_write.exit106_crit_edge
  %82 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ring1.i, align 4
  %84 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %wptr.i, align 8
  %inc.i99 = add i64 %85, 1
  store i64 %inc.i99, ptr %wptr.i, align 8
  %86 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %buf_mask.i, align 8
  %88 = trunc i64 %85 to i32
  %idxprom.i101 = and i32 %87, %88
  %arrayidx.i102 = getelementptr i32, ptr %83, i32 %idxprom.i101
  %89 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 %shl, ptr %arrayidx.i102, align 4
  %90 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %ptr_mask.i, align 8
  %92 = load i64, ptr %wptr.i, align 8
  %and3.i104 = and i64 %92, %91
  store i64 %and3.i104, ptr %wptr.i, align 8
  %93 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count_dw.i, align 8
  %dec.i105 = add i32 %94, -1
  store i32 %dec.i105, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i105)
  %cmp.i108 = icmp slt i32 %dec.i105, 1
  br i1 %cmp.i108, label %amdgpu_ring_write.exit106.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit106.if.end_crit_edge

amdgpu_ring_write.exit106.if.end_crit_edge:       ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

amdgpu_ring_write.exit106.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %amdgpu_ring_write.exit106.if.end.sink.split_crit_edge, %amdgpu_ring_write.exit80.if.end.sink.split_crit_edge
  %.sink.ph = phi i32 [ %or3, %amdgpu_ring_write.exit80.if.end.sink.split_crit_edge ], [ 805404672, %amdgpu_ring_write.exit106.if.end.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %amdgpu_ring_write.exit106.if.end_crit_edge, %amdgpu_ring_write.exit80.if.end_crit_edge
  %.sink = phi i32 [ %or3, %amdgpu_ring_write.exit80.if.end_crit_edge ], [ 805404672, %amdgpu_ring_write.exit106.if.end_crit_edge ], [ %.sink.ph, %if.end.sink.split ]
  %95 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ring1.i, align 4
  %97 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %wptr.i, align 8
  %inc.i112 = add i64 %98, 1
  store i64 %inc.i112, ptr %wptr.i, align 8
  %99 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %buf_mask.i, align 8
  %101 = trunc i64 %98 to i32
  %idxprom.i114 = and i32 %100, %101
  %arrayidx.i115 = getelementptr i32, ptr %96, i32 %idxprom.i114
  %102 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 %.sink, ptr %arrayidx.i115, align 4
  %103 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %ptr_mask.i, align 8
  %105 = load i64, ptr %wptr.i, align 8
  %and3.i117 = and i64 %105, %104
  store i64 %and3.i117, ptr %wptr.i, align 8
  %106 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.in = load i32, ptr %count_dw.i, align 8
  %107 = add i32 %.in, -1
  store i32 %107, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp.i121 = icmp slt i32 %107, 1
  br i1 %cmp.i121, label %if.then.i122, label %if.end.amdgpu_ring_write.exit132_crit_edge

if.end.amdgpu_ring_write.exit132_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit132

if.then.i122:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit132

amdgpu_ring_write.exit132:                        ; preds = %if.then.i122, %if.end.amdgpu_ring_write.exit132_crit_edge
  %108 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ring1.i, align 4
  %110 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %wptr.i, align 8
  %inc.i125 = add i64 %111, 1
  store i64 %inc.i125, ptr %wptr.i, align 8
  %112 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %buf_mask.i, align 8
  %114 = trunc i64 %111 to i32
  %idxprom.i127 = and i32 %113, %114
  %arrayidx.i128 = getelementptr i32, ptr %109, i32 %idxprom.i127
  %115 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 %mask, ptr %arrayidx.i128, align 4
  %116 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %ptr_mask.i, align 8
  %118 = load i64, ptr %wptr.i, align 8
  %and3.i130 = and i64 %118, %117
  store i64 %and3.i130, ptr %wptr.i, align 8
  %119 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %count_dw.i, align 8
  %dec.i131 = add i32 %120, -1
  store i32 %dec.i131, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v2_0_dec_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub1 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub1, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %6 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmc_funcs, align 4
  %emit_flush_gpu_tlb = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %emit_flush_gpu_tlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emit_flush_gpu_tlb, align 4
  %call = tail call i64 %9(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 9
  %12 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %13, %vmid
  %add = add i32 %mul, %11
  %conv = trunc i64 %call to i32
  tail call void @jpeg_v2_0_dec_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %add, i32 noundef %conv, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v2_0_dec_ring_emit_wreg(ptr noundef %ring, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 2
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 114687, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %15 = add i32 %shl, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %15)
  %16 = icmp ult i32 %15, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i13 = icmp slt i32 %dec.i, 1
  br i1 %16, label %if.then, label %if.else

if.then:                                          ; preds = %amdgpu_ring_write.exit
  br i1 %cmp.i13, label %if.then.i14, label %if.then.amdgpu_ring_write.exit24_crit_edge

if.then.amdgpu_ring_write.exit24_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit24

if.then.i14:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit24

amdgpu_ring_write.exit24:                         ; preds = %if.then.i14, %if.then.amdgpu_ring_write.exit24_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i17 = add i64 %20, 1
  store i64 %inc.i17, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i19 = and i32 %22, %23
  %arrayidx.i20 = getelementptr i32, ptr %18, i32 %idxprom.i19
  %24 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %arrayidx.i20, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i22 = and i64 %27, %26
  store i64 %and3.i22, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i23 = add i32 %29, -1
  store i32 %dec.i23, ptr %count_dw.i, align 8
  %and = and i32 %reg, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i23)
  %cmp.i26 = icmp slt i32 %dec.i23, 1
  br i1 %cmp.i26, label %amdgpu_ring_write.exit24.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit24.if.end_crit_edge

amdgpu_ring_write.exit24.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

amdgpu_ring_write.exit24.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.else:                                          ; preds = %amdgpu_ring_write.exit
  br i1 %cmp.i13, label %if.then.i40, label %if.else.amdgpu_ring_write.exit50_crit_edge

if.else.amdgpu_ring_write.exit50_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit50

amdgpu_ring_write.exit50:                         ; preds = %if.then.i40, %if.else.amdgpu_ring_write.exit50_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 4
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wptr.i, align 8
  %inc.i43 = add i64 %33, 1
  store i64 %inc.i43, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_mask.i, align 8
  %36 = trunc i64 %33 to i32
  %idxprom.i45 = and i32 %35, %36
  %arrayidx.i46 = getelementptr i32, ptr %31, i32 %idxprom.i45
  %37 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %shl, ptr %arrayidx.i46, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ptr_mask.i, align 8
  %40 = load i64, ptr %wptr.i, align 8
  %and3.i48 = and i64 %40, %39
  store i64 %and3.i48, ptr %wptr.i, align 8
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 8
  %dec.i49 = add i32 %42, -1
  store i32 %dec.i49, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i49)
  %cmp.i52 = icmp slt i32 %dec.i49, 1
  br i1 %cmp.i52, label %amdgpu_ring_write.exit50.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit50.if.end_crit_edge

amdgpu_ring_write.exit50.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

amdgpu_ring_write.exit50.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %amdgpu_ring_write.exit50.if.end.sink.split_crit_edge, %amdgpu_ring_write.exit24.if.end.sink.split_crit_edge
  %.sink.ph = phi i32 [ %and, %amdgpu_ring_write.exit24.if.end.sink.split_crit_edge ], [ 98304, %amdgpu_ring_write.exit50.if.end.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %amdgpu_ring_write.exit50.if.end_crit_edge, %amdgpu_ring_write.exit24.if.end_crit_edge
  %.sink = phi i32 [ %and, %amdgpu_ring_write.exit24.if.end_crit_edge ], [ 98304, %amdgpu_ring_write.exit50.if.end_crit_edge ], [ %.sink.ph, %if.end.sink.split ]
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 4
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wptr.i, align 8
  %inc.i56 = add i64 %46, 1
  store i64 %inc.i56, ptr %wptr.i, align 8
  %47 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_mask.i, align 8
  %49 = trunc i64 %46 to i32
  %idxprom.i58 = and i32 %48, %49
  %arrayidx.i59 = getelementptr i32, ptr %44, i32 %idxprom.i58
  %50 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %.sink, ptr %arrayidx.i59, align 4
  %51 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ptr_mask.i, align 8
  %53 = load i64, ptr %wptr.i, align 8
  %and3.i61 = and i64 %53, %52
  store i64 %and3.i61, ptr %wptr.i, align 8
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.in = load i32, ptr %count_dw.i, align 8
  %55 = add i32 %.in, -1
  store i32 %55, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i65 = icmp slt i32 %55, 1
  br i1 %cmp.i65, label %if.then.i66, label %if.end.amdgpu_ring_write.exit76_crit_edge

if.end.amdgpu_ring_write.exit76_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit76

if.then.i66:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit76

amdgpu_ring_write.exit76:                         ; preds = %if.then.i66, %if.end.amdgpu_ring_write.exit76_crit_edge
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 4
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %wptr.i, align 8
  %inc.i69 = add i64 %59, 1
  store i64 %inc.i69, ptr %wptr.i, align 8
  %60 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_mask.i, align 8
  %62 = trunc i64 %59 to i32
  %idxprom.i71 = and i32 %61, %62
  %arrayidx.i72 = getelementptr i32, ptr %57, i32 %idxprom.i71
  %63 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %val, ptr %arrayidx.i72, align 4
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ptr_mask.i, align 8
  %66 = load i64, ptr %wptr.i, align 8
  %and3.i74 = and i64 %66, %65
  store i64 %and3.i74, ptr %wptr.i, align 8
  %67 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i, align 8
  %dec.i75 = add i32 %68, -1
  store i32 %dec.i75, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v2_0_dec_ring_nop(ptr nocapture noundef %ring, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %0 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wptr, align 8
  %rem = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem)
  %tobool.not = icmp ne i64 %rem, 0
  %rem1 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %tobool2 = icmp ne i32 %rem1, 0
  %2 = or i1 %tobool2, %tobool.not
  br i1 %2, label %do.end, label %entry.if.end_crit_edge, !prof !59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 646, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp41.not = icmp ult i32 %count, 2
  br i1 %cmp41.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div27 = lshr i32 %count, 1
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %3 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %count_dw.i, align 8
  br label %for.body

for.body:                                         ; preds = %amdgpu_ring_write.exit40.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %.pr, %for.body.lr.ph ], [ %dec.i39, %amdgpu_ring_write.exit40.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %amdgpu_ring_write.exit40.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp slt i32 %4, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.amdgpu_ring_write.exit_crit_edge

for.body.amdgpu_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %for.body.amdgpu_ring_write.exit_crit_edge
  %5 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring1.i, align 4
  %7 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %wptr, align 8
  %inc.i = add i64 %8, 1
  store i64 %inc.i, ptr %wptr, align 8
  %9 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_mask.i, align 8
  %11 = trunc i64 %8 to i32
  %idxprom.i = and i32 %10, %11
  %arrayidx.i = getelementptr i32, ptr %6, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1610612736, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ptr_mask.i, align 8
  %15 = load i64, ptr %wptr, align 8
  %and3.i = and i64 %15, %14
  store i64 %and3.i, ptr %wptr, align 8
  %16 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i29 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i29, label %if.then.i30, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit40

if.then.i30:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %amdgpu_ring_write.exit40

amdgpu_ring_write.exit40:                         ; preds = %if.then.i30, %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 4
  %20 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wptr, align 8
  %inc.i33 = add i64 %21, 1
  store i64 %inc.i33, ptr %wptr, align 8
  %22 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_mask.i, align 8
  %24 = trunc i64 %21 to i32
  %idxprom.i35 = and i32 %23, %24
  %arrayidx.i36 = getelementptr i32, ptr %19, i32 %idxprom.i35
  %25 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %arrayidx.i36, align 4
  %26 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ptr_mask.i, align 8
  %28 = load i64, ptr %wptr, align 8
  %and3.i38 = and i64 %28, %27
  store i64 %and3.i38, ptr %wptr, align 8
  %29 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count_dw.i, align 8
  %dec.i39 = add i32 %30, -1
  store i32 %dec.i39, ptr %count_dw.i, align 8
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %div27
  br i1 %exitcond.not, label %amdgpu_ring_write.exit40.for.end_crit_edge, label %amdgpu_ring_write.exit40.for.body_crit_edge

amdgpu_ring_write.exit40.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

amdgpu_ring_write.exit40.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %amdgpu_ring_write.exit40.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_early_init(ptr nocapture noundef writeonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %jpeg, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @jpeg_v2_0_dec_ring_vm_funcs, ptr %funcs.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  %irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %irq.i, align 8
  %funcs.i3 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %funcs.i3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @jpeg_v2_0_irq_funcs, ptr %funcs.i3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 1
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 16, i32 noundef 153, ptr noundef %irq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @amdgpu_jpeg_sw_init(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @amdgpu_jpeg_resume(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %use_doorbell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 24
  %0 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %use_doorbell, align 4
  %1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shl = shl i32 %3, 1
  %add = or i32 %shl, 1
  %doorbell_index12 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 23
  %4 = ptrtoint ptr %doorbell_index12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %doorbell_index12, align 8
  %name = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 29
  %5 = call ptr @memcpy(ptr %name, ptr @.str.7, i32 9)
  %call19 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %inst, i32 noundef 512, ptr noundef %irq, i32 noundef 0, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %internal = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 2
  %6 = ptrtoint ptr %internal to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16415, ptr %internal, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %add26 = add i32 %10, 159
  %external = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %external to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add26, ptr %external, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call19, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_jpeg_suspend(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @amdgpu_jpeg_sw_fini(ptr noundef %handle) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %vcn_doorbell_range = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vcn_doorbell_range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcn_doorbell_range, align 4
  %use_doorbell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 24
  %4 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_doorbell, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  %6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shl = shl i32 %8, 1
  tail call void %3(ptr noundef %handle, i1 noundef zeroext %tobool, i32 noundef %shl, i32 noundef 0) #4
  %call = tail call i32 @amdgpu_ring_test_helper(ptr noundef %inst) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 110, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #4
  %cur_state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 5
  %0 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true1

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true1:                                   ; preds = %land.lhs.true
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true1.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true1.cond.false_crit_edge:              ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 265
  %call14 = tail call i32 %7(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cond.true.if.end_crit_edge, label %cond.true.if.then_crit_edge

cond.true.if.then_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.true.if.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true1.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add20 = add i32 %15, 265
  %call21 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add20, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cond.false.if.end_crit_edge, label %cond.false.if.then_crit_edge

cond.false.if.then_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %cond.false.if.then_crit_edge, %cond.true.if.then_crit_edge
  %call23 = tail call i32 @jpeg_v2_0_set_powergating_state(ptr noundef %handle, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false.if.end_crit_edge, %cond.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jpeg_v2_0_hw_fini(ptr noundef %handle)
  %call1 = tail call i32 @amdgpu_jpeg_suspend(ptr noundef %handle) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_jpeg_resume(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %inst.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs.i, align 8
  %vcn_doorbell_range.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vcn_doorbell_range.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcn_doorbell_range.i, align 4
  %use_doorbell.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 24
  %4 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_doorbell.i, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i = icmp ne i8 %5, 0
  %6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shl.i = shl i32 %8, 1
  tail call void %3(ptr noundef %handle, i1 noundef zeroext %tobool.i, i32 noundef %shl.i, i32 noundef 0) #4
  %call.i = tail call i32 @amdgpu_ring_test_helper(ptr noundef %inst.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @jpeg_v2_0_is_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 265
  %call = tail call i32 %5(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 265
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add17, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp = icmp ne i32 %and19, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_wait_for_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 265
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add, i32 noundef 0) #4
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %4 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usec_timeout, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %old_.0 = phi i32 [ 0, %entry ], [ %old_.1, %if.end.while.cond_crit_edge ]
  %tmp_.0 = phi i32 [ %call, %entry ], [ %call11, %if.end.while.cond_crit_edge ]
  %loop.0 = phi i32 [ %5, %entry ], [ %dec, %if.end.while.cond_crit_edge ]
  %and = and i32 %tmp_.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.not = icmp eq i32 %and, 0
  br i1 %cmp.not.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %old_.0, i32 %tmp_.0)
  %cmp4.not = icmp eq i32 %old_.0, %tmp_.0
  br i1 %cmp4.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %old_.1 = phi i32 [ %tmp_.0, %if.then ], [ %old_.0, %if.else ]
  %loop.1 = phi i32 [ %7, %if.then ], [ %loop.0, %if.else ]
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add10 = add i32 %12, 265
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add10, i32 noundef 0) #4
  %dec = add i32 %loop.1, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and14 = and i32 %call11, 1
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef %and14) #7
  br label %while.end

while.end:                                        ; preds = %do.end, %while.cond.while.end_crit_edge
  %ret1.0 = phi i32 [ -110, %do.end ], [ 0, %while.cond.while.end_crit_edge ]
  ret i32 %ret1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.cond.false.i_crit_edge, label %land.lhs.true.i

if.then.cond.false.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add.i = add i32 %9, 265
  %call.i = tail call i32 %5(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 16) #4
  br label %jpeg_v2_0_is_idle.exit

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.then.cond.false.i_crit_edge
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %10 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17.i = add i32 %13, 265
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add17.i, i32 noundef 0) #4
  br label %jpeg_v2_0_is_idle.exit

jpeg_v2_0_is_idle.exit:                           ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call18.i, %cond.false.i ]
  %and19.i = and i32 %cond.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %cmp.i.not = icmp eq i32 %and19.i, 0
  br i1 %cmp.i.not, label %jpeg_v2_0_is_idle.exit.cleanup_crit_edge, label %if.end

jpeg_v2_0_is_idle.exit.cleanup_crit_edge:         ; preds = %jpeg_v2_0_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %jpeg_v2_0_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @jpeg_v2_0_enable_clock_gating(ptr noundef %handle)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @jpeg_v2_0_disable_clock_gating(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %jpeg_v2_0_is_idle.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %jpeg_v2_0_is_idle.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_set_powergating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 5
  %0 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %state)
  %cmp = icmp eq i32 %1, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp1 = icmp eq i32 %state, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 402
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #4
  %or.i = or i32 %call.i, 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add7.i = add i32 %9, 402
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add7.i, i32 noundef %or.i, i32 noundef 0) #4
  tail call fastcc void @jpeg_v2_0_enable_clock_gating(ptr noundef %handle) #4
  %pg_flags.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %10 = ptrtoint ptr %pg_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pg_flags.i.i, align 4
  %and.i.i = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.if.end.i_crit_edge, label %if.then.i.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx2.i.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i.i, align 4
  %add.i.i = add i32 %15, 10
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef 0) #4
  %or.i.i = or i32 %call.i.i, 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx7.i.i = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i.i, align 4
  %add8.i.i = add i32 %19, 10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add8.i.i, i32 noundef %or.i.i, i32 noundef 0) #4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i.i = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %23, i32 noundef 8388608, i32 noundef 0) #4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx17.i.i = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx17.i.i, align 4
  %add18.i.i = add i32 %27, 1
  %call19.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add18.i.i, i32 noundef 0) #4
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %28 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usec_timeout.i.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %if.then.i.i
  %old_.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %old_.1.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %tmp_.0.i.i = phi i32 [ %call19.i.i, %if.then.i.i ], [ %call29.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %loop.0.i.i = phi i32 [ %29, %if.then.i.i ], [ %dec.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %and20.i.i = and i32 %tmp_.0.i.i, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %and20.i.i)
  %cmp.not.i.i = icmp eq i32 %and20.i.i, 8388608
  br i1 %cmp.not.i.i, label %while.cond.i.i.if.end.i_crit_edge, label %while.body.i.i

while.cond.i.i.if.end.i_crit_edge:                ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %old_.0.i.i, i32 %tmp_.0.i.i)
  %cmp21.not.i.i = icmp eq i32 %old_.0.i.i, %tmp_.0.i.i
  br i1 %cmp21.not.i.i, label %if.else.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout.i.i, align 8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then22.i.i
  %old_.1.i.i = phi i32 [ %tmp_.0.i.i, %if.then22.i.i ], [ %old_.0.i.i, %if.else.i.i ]
  %loop.1.i.i = phi i32 [ %31, %if.then22.i.i ], [ %loop.0.i.i, %if.else.i.i ]
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx27.i.i = getelementptr i32, ptr %34, i32 1
  %35 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx27.i.i, align 4
  %add28.i.i = add i32 %36, 1
  %call29.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add28.i.i, i32 noundef 0) #4
  %dec.i.i = add i32 %loop.1.i.i, -1
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool30.not.i.i, label %jpeg_v2_0_enable_power_gating.exit.i, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

jpeg_v2_0_enable_power_gating.exit.i:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and33.i.i = and i32 %call29.i.i, 12582912
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef 8388608, i32 noundef %and33.i.i) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #4
  br label %cleanup

if.end.i:                                         ; preds = %while.cond.i.i.if.end.i_crit_edge, %if.then2.if.end.i_crit_edge
  %dpm_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %37 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dpm_enabled.i, align 8, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool9.not.i = icmp eq i8 %38, 0
  br i1 %tobool9.not.i, label %if.end.i.if.then5_crit_edge, label %if.then10.i

if.end.i.if.then5_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_dpm_enable_jpeg(ptr noundef %handle, i1 noundef zeroext false) #4
  br label %if.then5

if.else:                                          ; preds = %if.end
  %dpm_enabled.i16 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %39 = ptrtoint ptr %dpm_enabled.i16 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dpm_enabled.i16, align 8, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.else.if.end.i20_crit_edge, label %if.then.i

if.else.if.end.i20_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i20

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_dpm_enable_jpeg(ptr noundef %handle, i1 noundef zeroext true) #4
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then.i, %if.else.if.end.i20_crit_edge
  %pg_flags.i.i17 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %41 = ptrtoint ptr %pg_flags.i.i17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pg_flags.i.i17, align 4
  %and.i.i18 = and i32 %42, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.not.i.i19 = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.not.i.i19, label %if.end.i20.if.end3.i_crit_edge, label %if.then.i.i24

if.end.i20.if.end3.i_crit_edge:                   ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

if.then.i.i24:                                    ; preds = %if.end.i20
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx2.i.i21 = getelementptr i32, ptr %44, i32 1
  %45 = ptrtoint ptr %arrayidx2.i.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.i.i21, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %46, i32 noundef 4194304, i32 noundef 0) #4
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx6.i.i = getelementptr i32, ptr %48, i32 1
  %49 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx6.i.i, align 4
  %add7.i.i = add i32 %50, 1
  %call.i.i22 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add7.i.i, i32 noundef 0) #4
  %usec_timeout.i.i23 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %51 = ptrtoint ptr %usec_timeout.i.i23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %usec_timeout.i.i23, align 8
  br label %while.cond.i.i29

while.cond.i.i29:                                 ; preds = %if.end.i.i35.while.cond.i.i29_crit_edge, %if.then.i.i24
  %old_.0.i.i25 = phi i32 [ 0, %if.then.i.i24 ], [ %old_.1.i.i32, %if.end.i.i35.while.cond.i.i29_crit_edge ]
  %tmp_.0.i.i26 = phi i32 [ %call.i.i22, %if.then.i.i24 ], [ %call17.i.i, %if.end.i.i35.while.cond.i.i29_crit_edge ]
  %loop.0.i.i27 = phi i32 [ %52, %if.then.i.i24 ], [ %dec.i.i34, %if.end.i.i35.while.cond.i.i29_crit_edge ]
  %and8.i.i = and i32 %tmp_.0.i.i26, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %cmp.not.i.i28 = icmp eq i32 %and8.i.i, 0
  br i1 %cmp.not.i.i28, label %while.cond.i.i29.if.end3.i_crit_edge, label %while.body.i.i30

while.cond.i.i29.if.end3.i_crit_edge:             ; preds = %while.cond.i.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

while.body.i.i30:                                 ; preds = %while.cond.i.i29
  call void @__sanitizer_cov_trace_cmp4(i32 %old_.0.i.i25, i32 %tmp_.0.i.i26)
  %cmp9.not.i.i = icmp eq i32 %old_.0.i.i25, %tmp_.0.i.i26
  br i1 %cmp9.not.i.i, label %if.else.i.i31, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %while.body.i.i30
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %usec_timeout.i.i23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %usec_timeout.i.i23, align 8
  br label %if.end.i.i35

if.else.i.i31:                                    ; preds = %while.body.i.i30
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #4
  br label %if.end.i.i35

if.end.i.i35:                                     ; preds = %if.else.i.i31, %if.then10.i.i
  %old_.1.i.i32 = phi i32 [ %tmp_.0.i.i26, %if.then10.i.i ], [ %old_.0.i.i25, %if.else.i.i31 ]
  %loop.1.i.i33 = phi i32 [ %54, %if.then10.i.i ], [ %loop.0.i.i27, %if.else.i.i31 ]
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx15.i.i = getelementptr i32, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx15.i.i, align 4
  %add16.i.i = add i32 %59, 1
  %call17.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add16.i.i, i32 noundef 0) #4
  %dec.i.i34 = add i32 %loop.1.i.i33, -1
  %tobool18.not.i.i = icmp eq i32 %dec.i.i34, 0
  br i1 %tobool18.not.i.i, label %jpeg_v2_0_disable_power_gating.exit.i, label %if.end.i.i35.while.cond.i.i29_crit_edge

if.end.i.i35.while.cond.i.i29_crit_edge:          ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i29

jpeg_v2_0_disable_power_gating.exit.i:            ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #6
  %and21.i.i = and i32 %call17.i.i, 12582912
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef %and21.i.i) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #4
  br label %cleanup

if.end3.i:                                        ; preds = %while.cond.i.i29.if.end3.i_crit_edge, %if.end.i20.if.end3.i_crit_edge
  %arrayidx32.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %60 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx32.i.i, align 8
  %arrayidx34.i.i = getelementptr i32, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx34.i.i, align 4
  %add35.i.i = add i32 %63, 10
  %call36.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add35.i.i, i32 noundef 0) #4
  %and37.i.i = and i32 %call36.i.i, -2
  %64 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx32.i.i, align 8
  %arrayidx41.i.i = getelementptr i32, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx41.i.i, align 4
  %add42.i.i = add i32 %67, 10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add42.i.i, i32 noundef %and37.i.i, i32 noundef 0) #4
  tail call fastcc void @jpeg_v2_0_disable_clock_gating(ptr noundef %handle) #4
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %68 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.end3.i.cond.false.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %70 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %funcs.i, align 4
  %tobool5.not.i = icmp eq ptr %71, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool10.not.i = icmp eq ptr %73, null
  br i1 %tobool10.not.i, label %land.lhs.true6.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true6.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx32.i.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add.i36 = add i32 %77, 166
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %78 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %gb_addr_config.i, align 4
  tail call void %73(ptr noundef %handle, i32 noundef %add.i36, i32 noundef %79, i32 noundef 0, i32 noundef 16) #4
  br label %do.body.i

cond.false.i:                                     ; preds = %land.lhs.true6.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end3.i.cond.false.i_crit_edge
  %80 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx32.i.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add22.i = add i32 %83, 166
  %gb_addr_config25.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %84 = ptrtoint ptr %gb_addr_config25.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %gb_addr_config25.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add22.i, i32 noundef %85, i32 noundef 0) #4
  br label %do.body.i

do.body.i:                                        ; preds = %cond.false.i, %cond.true.i
  %86 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx32.i.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add30.i = add i32 %89, 402
  %call31.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add30.i, i32 noundef 0) #4
  %and32.i = and i32 %call31.i, -2
  %90 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx32.i.i, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %add37.i = add i32 %93, 402
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add37.i, i32 noundef %and32.i, i32 noundef 0) #4
  %94 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx32.i.i, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %add44.i = add i32 %97, 449
  %call45.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add44.i, i32 noundef 0) #4
  %or47.i = or i32 %call45.i, 2
  %98 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx32.i.i, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add52.i = add i32 %101, 449
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add52.i, i32 noundef %or47.i, i32 noundef 0) #4
  %102 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %virt.i, align 8
  %and57.i = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %do.body.i.cond.false80.i_crit_edge, label %land.lhs.true59.i

do.body.i.cond.false80.i_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false80.i

land.lhs.true59.i:                                ; preds = %do.body.i
  %funcs62.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %104 = ptrtoint ptr %funcs62.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %funcs62.i, align 4
  %tobool63.not.i = icmp eq ptr %105, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i.cond.false80.i_crit_edge, label %land.lhs.true64.i

land.lhs.true59.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false80.i

land.lhs.true64.i:                                ; preds = %land.lhs.true59.i
  %sriov_wreg68.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %105, i32 0, i32 12
  %106 = ptrtoint ptr %sriov_wreg68.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sriov_wreg68.i, align 4
  %tobool69.not.i = icmp eq ptr %107, null
  br i1 %tobool69.not.i, label %land.lhs.true64.i.cond.false80.i_crit_edge, label %cond.true70.i

land.lhs.true64.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false80.i

cond.true70.i:                                    ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #6
  %108 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx32.i.i, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  %add79.i = add i32 %111, 336
  tail call void %107(ptr noundef %handle, i32 noundef %add79.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end86.i

cond.false80.i:                                   ; preds = %land.lhs.true64.i.cond.false80.i_crit_edge, %land.lhs.true59.i.cond.false80.i_crit_edge, %do.body.i.cond.false80.i_crit_edge
  %112 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx32.i.i, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %add85.i = add i32 %115, 336
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add85.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end86.i

cond.end86.i:                                     ; preds = %cond.false80.i, %cond.true70.i
  %116 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %virt.i, align 8
  %and89.i = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %cond.end86.i.cond.false112.i_crit_edge, label %land.lhs.true91.i

cond.end86.i.cond.false112.i_crit_edge:           ; preds = %cond.end86.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false112.i

land.lhs.true91.i:                                ; preds = %cond.end86.i
  %funcs94.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %118 = ptrtoint ptr %funcs94.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %funcs94.i, align 4
  %tobool95.not.i = icmp eq ptr %119, null
  br i1 %tobool95.not.i, label %land.lhs.true91.i.cond.false112.i_crit_edge, label %land.lhs.true96.i

land.lhs.true91.i.cond.false112.i_crit_edge:      ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false112.i

land.lhs.true96.i:                                ; preds = %land.lhs.true91.i
  %sriov_wreg100.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %119, i32 0, i32 12
  %120 = ptrtoint ptr %sriov_wreg100.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sriov_wreg100.i, align 4
  %tobool101.not.i = icmp eq ptr %121, null
  br i1 %tobool101.not.i, label %land.lhs.true96.i.cond.false112.i_crit_edge, label %cond.true102.i

land.lhs.true96.i.cond.false112.i_crit_edge:      ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false112.i

cond.true102.i:                                   ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #6
  %122 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx32.i.i, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add111.i = add i32 %125, 257
  tail call void %121(ptr noundef %handle, i32 noundef %add111.i, i32 noundef 3, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end118.i

cond.false112.i:                                  ; preds = %land.lhs.true96.i.cond.false112.i_crit_edge, %land.lhs.true91.i.cond.false112.i_crit_edge, %cond.end86.i.cond.false112.i_crit_edge
  %126 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx32.i.i, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %add117.i = add i32 %129, 257
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add117.i, i32 noundef 3, i32 noundef 0) #4
  br label %cond.end118.i

cond.end118.i:                                    ; preds = %cond.false112.i, %cond.true102.i
  %130 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %virt.i, align 8
  %and121.i = and i32 %131, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %cond.end118.i.cond.false145.i_crit_edge, label %land.lhs.true123.i

cond.end118.i.cond.false145.i_crit_edge:          ; preds = %cond.end118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false145.i

land.lhs.true123.i:                               ; preds = %cond.end118.i
  %funcs126.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %132 = ptrtoint ptr %funcs126.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %funcs126.i, align 4
  %tobool127.not.i = icmp eq ptr %133, null
  br i1 %tobool127.not.i, label %land.lhs.true123.i.cond.false145.i_crit_edge, label %land.lhs.true128.i

land.lhs.true123.i.cond.false145.i_crit_edge:     ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false145.i

land.lhs.true128.i:                               ; preds = %land.lhs.true123.i
  %sriov_wreg132.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %133, i32 0, i32 12
  %134 = ptrtoint ptr %sriov_wreg132.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sriov_wreg132.i, align 4
  %tobool133.not.i = icmp eq ptr %135, null
  br i1 %tobool133.not.i, label %land.lhs.true128.i.cond.false145.i_crit_edge, label %cond.true134.i

land.lhs.true128.i.cond.false145.i_crit_edge:     ; preds = %land.lhs.true128.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false145.i

cond.true134.i:                                   ; preds = %land.lhs.true128.i
  call void @__sanitizer_cov_trace_pc() #6
  %136 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx32.i.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %add143.i = add i32 %139, 358
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %140 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %gpu_addr.i, align 8
  %conv.i = trunc i64 %141 to i32
  tail call void %135(ptr noundef %handle, i32 noundef %add143.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end154.i

cond.false145.i:                                  ; preds = %land.lhs.true128.i.cond.false145.i_crit_edge, %land.lhs.true123.i.cond.false145.i_crit_edge, %cond.end118.i.cond.false145.i_crit_edge
  %142 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx32.i.i, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %add150.i = add i32 %145, 358
  %gpu_addr151.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %146 = ptrtoint ptr %gpu_addr151.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %gpu_addr151.i, align 8
  %conv153.i = trunc i64 %147 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add150.i, i32 noundef %conv153.i, i32 noundef 0) #4
  br label %cond.end154.i

cond.end154.i:                                    ; preds = %cond.false145.i, %cond.true134.i
  %148 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %virt.i, align 8
  %and157.i = and i32 %149, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157.i)
  %tobool158.not.i = icmp eq i32 %and157.i, 0
  br i1 %tobool158.not.i, label %cond.end154.i.cond.false183.i_crit_edge, label %land.lhs.true159.i

cond.end154.i.cond.false183.i_crit_edge:          ; preds = %cond.end154.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183.i

land.lhs.true159.i:                               ; preds = %cond.end154.i
  %funcs162.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %150 = ptrtoint ptr %funcs162.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %funcs162.i, align 4
  %tobool163.not.i = icmp eq ptr %151, null
  br i1 %tobool163.not.i, label %land.lhs.true159.i.cond.false183.i_crit_edge, label %land.lhs.true164.i

land.lhs.true159.i.cond.false183.i_crit_edge:     ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183.i

land.lhs.true164.i:                               ; preds = %land.lhs.true159.i
  %sriov_wreg168.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %151, i32 0, i32 12
  %152 = ptrtoint ptr %sriov_wreg168.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %sriov_wreg168.i, align 4
  %tobool169.not.i = icmp eq ptr %153, null
  br i1 %tobool169.not.i, label %land.lhs.true164.i.cond.false183.i_crit_edge, label %cond.true170.i

land.lhs.true164.i.cond.false183.i_crit_edge:     ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183.i

cond.true170.i:                                   ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #6
  %154 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx32.i.i, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  %add179.i = add i32 %157, 359
  %gpu_addr180.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %158 = ptrtoint ptr %gpu_addr180.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %gpu_addr180.i, align 8
  %shr.i = lshr i64 %159, 32
  %conv182.i = trunc i64 %shr.i to i32
  tail call void %153(ptr noundef %handle, i32 noundef %add179.i, i32 noundef %conv182.i, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end193.i

cond.false183.i:                                  ; preds = %land.lhs.true164.i.cond.false183.i_crit_edge, %land.lhs.true159.i.cond.false183.i_crit_edge, %cond.end154.i.cond.false183.i_crit_edge
  %160 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx32.i.i, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  %add188.i = add i32 %163, 359
  %gpu_addr189.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %164 = ptrtoint ptr %gpu_addr189.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %gpu_addr189.i, align 8
  %shr190.i = lshr i64 %165, 32
  %conv192.i = trunc i64 %shr190.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add188.i, i32 noundef %conv192.i, i32 noundef 0) #4
  br label %cond.end193.i

cond.end193.i:                                    ; preds = %cond.false183.i, %cond.true170.i
  %166 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %virt.i, align 8
  %and196.i = and i32 %167, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i)
  %tobool197.not.i = icmp eq i32 %and196.i, 0
  br i1 %tobool197.not.i, label %cond.end193.i.cond.false219.i_crit_edge, label %land.lhs.true198.i

cond.end193.i.cond.false219.i_crit_edge:          ; preds = %cond.end193.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false219.i

land.lhs.true198.i:                               ; preds = %cond.end193.i
  %funcs201.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %168 = ptrtoint ptr %funcs201.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %funcs201.i, align 4
  %tobool202.not.i = icmp eq ptr %169, null
  br i1 %tobool202.not.i, label %land.lhs.true198.i.cond.false219.i_crit_edge, label %land.lhs.true203.i

land.lhs.true198.i.cond.false219.i_crit_edge:     ; preds = %land.lhs.true198.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false219.i

land.lhs.true203.i:                               ; preds = %land.lhs.true198.i
  %sriov_wreg207.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %169, i32 0, i32 12
  %170 = ptrtoint ptr %sriov_wreg207.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %sriov_wreg207.i, align 4
  %tobool208.not.i = icmp eq ptr %171, null
  br i1 %tobool208.not.i, label %land.lhs.true203.i.cond.false219.i_crit_edge, label %cond.true209.i

land.lhs.true203.i.cond.false219.i_crit_edge:     ; preds = %land.lhs.true203.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false219.i

cond.true209.i:                                   ; preds = %land.lhs.true203.i
  call void @__sanitizer_cov_trace_pc() #6
  %172 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx32.i.i, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  %add218.i = add i32 %175, 266
  tail call void %171(ptr noundef %handle, i32 noundef %add218.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end225.i

cond.false219.i:                                  ; preds = %land.lhs.true203.i.cond.false219.i_crit_edge, %land.lhs.true198.i.cond.false219.i_crit_edge, %cond.end193.i.cond.false219.i_crit_edge
  %176 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx32.i.i, align 8
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  %add224.i = add i32 %179, 266
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add224.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end225.i

cond.end225.i:                                    ; preds = %cond.false219.i, %cond.true209.i
  %180 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %virt.i, align 8
  %and228.i = and i32 %181, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.i)
  %tobool229.not.i = icmp eq i32 %and228.i, 0
  br i1 %tobool229.not.i, label %cond.end225.i.cond.false251.i_crit_edge, label %land.lhs.true230.i

cond.end225.i.cond.false251.i_crit_edge:          ; preds = %cond.end225.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false251.i

land.lhs.true230.i:                               ; preds = %cond.end225.i
  %funcs233.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %182 = ptrtoint ptr %funcs233.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %funcs233.i, align 4
  %tobool234.not.i = icmp eq ptr %183, null
  br i1 %tobool234.not.i, label %land.lhs.true230.i.cond.false251.i_crit_edge, label %land.lhs.true235.i

land.lhs.true230.i.cond.false251.i_crit_edge:     ; preds = %land.lhs.true230.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false251.i

land.lhs.true235.i:                               ; preds = %land.lhs.true230.i
  %sriov_wreg239.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %183, i32 0, i32 12
  %184 = ptrtoint ptr %sriov_wreg239.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %sriov_wreg239.i, align 4
  %tobool240.not.i = icmp eq ptr %185, null
  br i1 %tobool240.not.i, label %land.lhs.true235.i.cond.false251.i_crit_edge, label %cond.true241.i

land.lhs.true235.i.cond.false251.i_crit_edge:     ; preds = %land.lhs.true235.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false251.i

cond.true241.i:                                   ; preds = %land.lhs.true235.i
  call void @__sanitizer_cov_trace_pc() #6
  %186 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx32.i.i, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %add250.i = add i32 %189, 256
  tail call void %185(ptr noundef %handle, i32 noundef %add250.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end257.i

cond.false251.i:                                  ; preds = %land.lhs.true235.i.cond.false251.i_crit_edge, %land.lhs.true230.i.cond.false251.i_crit_edge, %cond.end225.i.cond.false251.i_crit_edge
  %190 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx32.i.i, align 8
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  %add256.i = add i32 %193, 256
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add256.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end257.i

cond.end257.i:                                    ; preds = %cond.false251.i, %cond.true241.i
  %194 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %virt.i, align 8
  %and260.i = and i32 %195, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260.i)
  %tobool261.not.i = icmp eq i32 %and260.i, 0
  br i1 %tobool261.not.i, label %cond.end257.i.cond.false283.i_crit_edge, label %land.lhs.true262.i

cond.end257.i.cond.false283.i_crit_edge:          ; preds = %cond.end257.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false283.i

land.lhs.true262.i:                               ; preds = %cond.end257.i
  %funcs265.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %196 = ptrtoint ptr %funcs265.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %funcs265.i, align 4
  %tobool266.not.i = icmp eq ptr %197, null
  br i1 %tobool266.not.i, label %land.lhs.true262.i.cond.false283.i_crit_edge, label %land.lhs.true267.i

land.lhs.true262.i.cond.false283.i_crit_edge:     ; preds = %land.lhs.true262.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false283.i

land.lhs.true267.i:                               ; preds = %land.lhs.true262.i
  %sriov_wreg271.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %197, i32 0, i32 12
  %198 = ptrtoint ptr %sriov_wreg271.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sriov_wreg271.i, align 4
  %tobool272.not.i = icmp eq ptr %199, null
  br i1 %tobool272.not.i, label %land.lhs.true267.i.cond.false283.i_crit_edge, label %cond.true273.i

land.lhs.true267.i.cond.false283.i_crit_edge:     ; preds = %land.lhs.true267.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false283.i

cond.true273.i:                                   ; preds = %land.lhs.true267.i
  call void @__sanitizer_cov_trace_pc() #6
  %200 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx32.i.i, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 4
  %add282.i = add i32 %203, 257
  tail call void %199(ptr noundef %handle, i32 noundef %add282.i, i32 noundef 2, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end289.i

cond.false283.i:                                  ; preds = %land.lhs.true267.i.cond.false283.i_crit_edge, %land.lhs.true262.i.cond.false283.i_crit_edge, %cond.end257.i.cond.false283.i_crit_edge
  %204 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx32.i.i, align 8
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 4
  %add288.i = add i32 %207, 257
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add288.i, i32 noundef 2, i32 noundef 0) #4
  br label %cond.end289.i

cond.end289.i:                                    ; preds = %cond.false283.i, %cond.true273.i
  %208 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %virt.i, align 8
  %and292.i = and i32 %209, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292.i)
  %tobool293.not.i = icmp eq i32 %and292.i, 0
  br i1 %tobool293.not.i, label %cond.end289.i.cond.false315.i_crit_edge, label %land.lhs.true294.i

cond.end289.i.cond.false315.i_crit_edge:          ; preds = %cond.end289.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false315.i

land.lhs.true294.i:                               ; preds = %cond.end289.i
  %funcs297.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %210 = ptrtoint ptr %funcs297.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %funcs297.i, align 4
  %tobool298.not.i = icmp eq ptr %211, null
  br i1 %tobool298.not.i, label %land.lhs.true294.i.cond.false315.i_crit_edge, label %land.lhs.true299.i

land.lhs.true294.i.cond.false315.i_crit_edge:     ; preds = %land.lhs.true294.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false315.i

land.lhs.true299.i:                               ; preds = %land.lhs.true294.i
  %sriov_wreg303.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %211, i32 0, i32 12
  %212 = ptrtoint ptr %sriov_wreg303.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %sriov_wreg303.i, align 4
  %tobool304.not.i = icmp eq ptr %213, null
  br i1 %tobool304.not.i, label %land.lhs.true299.i.cond.false315.i_crit_edge, label %cond.true305.i

land.lhs.true299.i.cond.false315.i_crit_edge:     ; preds = %land.lhs.true299.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false315.i

cond.true305.i:                                   ; preds = %land.lhs.true299.i
  call void @__sanitizer_cov_trace_pc() #6
  %214 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx32.i.i, align 8
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  %add314.i = add i32 %217, 275
  %ring_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 9
  %218 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ring_size.i, align 8
  %div484.i = lshr i32 %219, 2
  tail call void %213(ptr noundef %handle, i32 noundef %add314.i, i32 noundef %div484.i, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end323.i

cond.false315.i:                                  ; preds = %land.lhs.true299.i.cond.false315.i_crit_edge, %land.lhs.true294.i.cond.false315.i_crit_edge, %cond.end289.i.cond.false315.i_crit_edge
  %220 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx32.i.i, align 8
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %221, align 4
  %add320.i = add i32 %223, 275
  %ring_size321.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 9
  %224 = ptrtoint ptr %ring_size321.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %ring_size321.i, align 8
  %div322483.i = lshr i32 %225, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add320.i, i32 noundef %div322483.i, i32 noundef 0) #4
  br label %cond.end323.i

cond.end323.i:                                    ; preds = %cond.false315.i, %cond.true305.i
  %226 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %virt.i, align 8
  %and326.i = and i32 %227, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326.i)
  %tobool327.not.i = icmp eq i32 %and326.i, 0
  br i1 %tobool327.not.i, label %cond.end323.i.cond.false349.i_crit_edge, label %land.lhs.true328.i

cond.end323.i.cond.false349.i_crit_edge:          ; preds = %cond.end323.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false349.i

land.lhs.true328.i:                               ; preds = %cond.end323.i
  %funcs331.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %228 = ptrtoint ptr %funcs331.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %funcs331.i, align 4
  %tobool332.not.i = icmp eq ptr %229, null
  br i1 %tobool332.not.i, label %land.lhs.true328.i.cond.false349.i_crit_edge, label %land.lhs.true333.i

land.lhs.true328.i.cond.false349.i_crit_edge:     ; preds = %land.lhs.true328.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false349.i

land.lhs.true333.i:                               ; preds = %land.lhs.true328.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %229, i32 0, i32 13
  %230 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool337.not.i = icmp eq ptr %231, null
  br i1 %tobool337.not.i, label %land.lhs.true333.i.cond.false349.i_crit_edge, label %cond.true338.i

land.lhs.true333.i.cond.false349.i_crit_edge:     ; preds = %land.lhs.true333.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false349.i

cond.true338.i:                                   ; preds = %land.lhs.true333.i
  call void @__sanitizer_cov_trace_pc() #6
  %232 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx32.i.i, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %233, align 4
  %add347.i = add i32 %235, 256
  %call348.i = tail call i32 %231(ptr noundef %handle, i32 noundef %add347.i, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end356.i

cond.false349.i:                                  ; preds = %land.lhs.true333.i.cond.false349.i_crit_edge, %land.lhs.true328.i.cond.false349.i_crit_edge, %cond.end323.i.cond.false349.i_crit_edge
  %236 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx32.i.i, align 8
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %237, align 4
  %add354.i = add i32 %239, 256
  %call355.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add354.i, i32 noundef 0) #4
  br label %cond.end356.i

cond.end356.i:                                    ; preds = %cond.false349.i, %cond.true338.i
  %cond.i = phi i32 [ %call348.i, %cond.true338.i ], [ %call355.i, %cond.false349.i ]
  %conv357.i = zext i32 %cond.i to i64
  %wptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 7
  %240 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 %conv357.i, ptr %wptr.i, align 8
  br label %if.then5

if.then5:                                         ; preds = %cond.end356.i, %if.then10.i, %if.end.i.if.then5_crit_edge
  %241 = ptrtoint ptr %cur_state to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %state, ptr %cur_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %jpeg_v2_0_disable_power_gating.exit.i, %jpeg_v2_0_enable_power_gating.exit.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ -110, %jpeg_v2_0_enable_power_gating.exit.i ], [ -110, %jpeg_v2_0_disable_power_gating.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jpeg_v2_0_dec_ring_get_rptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 266
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 266
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jpeg_v2_0_dec_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %wb2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %4 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb2, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %6 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt, align 8
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else.cond.false_crit_edge, label %land.lhs.true

if.else.cond.false_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true5

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_rreg, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %land.lhs.true5.cond.false_crit_edge, label %cond.true

land.lhs.true5.cond.false_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx14, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add = add i32 %19, 256
  %call = tail call i32 %15(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true5.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add21 = add i32 %23, 256
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add21, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %if.then
  %retval.0.in = phi i32 [ %9, %if.then ], [ %call, %cond.true ], [ %call22, %cond.false ]
  %retval.0 = zext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v2_0_dec_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %5 to i32
  %wb2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %6 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wb2, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %8 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %conv, ptr %arrayidx, align 4
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %11 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %doorbell_index, align 8
  %13 = load i64, ptr %wptr, align 8
  %conv5 = trunc i64 %13 to i32
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %1, i32 noundef %12, i32 noundef %conv5) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and6 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.cond.false_crit_edge, label %land.lhs.true

if.else.cond.false_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true9

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true9:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %land.lhs.true9.cond.false_crit_edge, label %cond.true

land.lhs.true9.cond.false_crit_edge:              ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add = add i32 %23, 256
  %wptr21 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %24 = ptrtoint ptr %wptr21 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wptr21, align 8
  %conv23 = trunc i64 %25 to i32
  tail call void %19(ptr noundef %1, i32 noundef %add, i32 noundef %conv23, i32 noundef 0, i32 noundef 16) #4
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true9.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx25, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add28 = add i32 %29, 256
  %wptr29 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %30 = ptrtoint ptr %wptr29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr29, align 8
  %conv31 = trunc i64 %31 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add28, i32 noundef %conv31, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %cond.false, %cond.true, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_dec_ring_test_ring(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_dec_ring_test_ib(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_generic_pad_ib(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_jpeg_ring_begin_use(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_jpeg_ring_end_use(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_emit_reg_write_reg_wait_helper(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jpeg_v2_0_set_interrupt_state(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #4
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 153, i32 %1)
  %cond = icmp eq i32 %1, 153
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1
  %call = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %inst) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %2 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_data, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %3) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_sw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_sw_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jpeg_v2_0_enable_clock_gating(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 481
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 481
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %14 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cg_flags, align 8
  %and19 = lshr i32 %15, 30
  %16 = or i32 %cond, %and19
  %or23 = or i32 %16, 130
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virt, align 8
  %and26 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %cond.end.cond.false48_crit_edge, label %land.lhs.true28

cond.end.cond.false48_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false48

land.lhs.true28:                                  ; preds = %cond.end
  %funcs31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %19 = ptrtoint ptr %funcs31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs31, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %land.lhs.true28.cond.false48_crit_edge, label %land.lhs.true33

land.lhs.true28.cond.false48_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false48

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sriov_wreg, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %land.lhs.true33.cond.false48_crit_edge, label %cond.true38

land.lhs.true33.cond.false48_crit_edge:           ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false48

cond.true38:                                      ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx44, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add47 = add i32 %26, 481
  tail call void %22(ptr noundef %adev, i32 noundef %add47, i32 noundef %or23, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end54

cond.false48:                                     ; preds = %land.lhs.true33.cond.false48_crit_edge, %land.lhs.true28.cond.false48_crit_edge, %cond.end.cond.false48_crit_edge
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx50, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add53 = add i32 %30, 481
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add53, i32 noundef %or23, i32 noundef 0) #4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false48, %cond.true38
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %virt, align 8
  %and57 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %cond.end54.cond.false81_crit_edge, label %land.lhs.true59

cond.end54.cond.false81_crit_edge:                ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81

land.lhs.true59:                                  ; preds = %cond.end54
  %funcs62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs62, align 4
  %tobool63.not = icmp eq ptr %34, null
  br i1 %tobool63.not, label %land.lhs.true59.cond.false81_crit_edge, label %land.lhs.true64

land.lhs.true59.cond.false81_crit_edge:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %sriov_rreg68 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg68, align 4
  %tobool69.not = icmp eq ptr %36, null
  br i1 %tobool69.not, label %land.lhs.true64.cond.false81_crit_edge, label %cond.true70

land.lhs.true64.cond.false81_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81

cond.true70:                                      ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx76 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %37 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx76, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add79 = add i32 %40, 480
  %call80 = tail call i32 %36(ptr noundef %adev, i32 noundef %add79, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end88

cond.false81:                                     ; preds = %land.lhs.true64.cond.false81_crit_edge, %land.lhs.true59.cond.false81_crit_edge, %cond.end54.cond.false81_crit_edge
  %arrayidx83 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %41 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx83, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add86 = add i32 %44, 480
  %call87 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add86, i32 noundef 0) #4
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false81, %cond.true70
  %cond89 = phi i32 [ %call80, %cond.true70 ], [ %call87, %cond.false81 ]
  %or90 = or i32 %cond89, 31
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and93 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %cond.end88.cond.false116_crit_edge, label %land.lhs.true95

cond.end88.cond.false116_crit_edge:               ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false116

land.lhs.true95:                                  ; preds = %cond.end88
  %funcs98 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %47 = ptrtoint ptr %funcs98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs98, align 4
  %tobool99.not = icmp eq ptr %48, null
  br i1 %tobool99.not, label %land.lhs.true95.cond.false116_crit_edge, label %land.lhs.true100

land.lhs.true95.cond.false116_crit_edge:          ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false116

land.lhs.true100:                                 ; preds = %land.lhs.true95
  %sriov_wreg104 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %sriov_wreg104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_wreg104, align 4
  %tobool105.not = icmp eq ptr %50, null
  br i1 %tobool105.not, label %land.lhs.true100.cond.false116_crit_edge, label %cond.true106

land.lhs.true100.cond.false116_crit_edge:         ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false116

cond.true106:                                     ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx112 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %51 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx112, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add115 = add i32 %54, 480
  tail call void %50(ptr noundef %adev, i32 noundef %add115, i32 noundef %or90, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end122

cond.false116:                                    ; preds = %land.lhs.true100.cond.false116_crit_edge, %land.lhs.true95.cond.false116_crit_edge, %cond.end88.cond.false116_crit_edge
  %arrayidx118 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %55 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx118, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add121 = add i32 %58, 480
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add121, i32 noundef %or90, i32 noundef 0) #4
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false116, %cond.true106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jpeg_v2_0_disable_clock_gating(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 481
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 481
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %14 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cg_flags, align 8
  %and19 = lshr i32 %15, 30
  %16 = or i32 %cond, %and19
  %or23 = or i32 %16, 130
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virt, align 8
  %and26 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %cond.end.cond.false48_crit_edge, label %land.lhs.true28

cond.end.cond.false48_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false48

land.lhs.true28:                                  ; preds = %cond.end
  %funcs31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %19 = ptrtoint ptr %funcs31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs31, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %land.lhs.true28.cond.false48_crit_edge, label %land.lhs.true33

land.lhs.true28.cond.false48_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false48

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sriov_wreg, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %land.lhs.true33.cond.false48_crit_edge, label %cond.true38

land.lhs.true33.cond.false48_crit_edge:           ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false48

cond.true38:                                      ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx44, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add47 = add i32 %26, 481
  tail call void %22(ptr noundef %adev, i32 noundef %add47, i32 noundef %or23, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end54

cond.false48:                                     ; preds = %land.lhs.true33.cond.false48_crit_edge, %land.lhs.true28.cond.false48_crit_edge, %cond.end.cond.false48_crit_edge
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx50, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add53 = add i32 %30, 481
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add53, i32 noundef %or23, i32 noundef 0) #4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false48, %cond.true38
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %virt, align 8
  %and57 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %cond.end54.cond.false81_crit_edge, label %land.lhs.true59

cond.end54.cond.false81_crit_edge:                ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81

land.lhs.true59:                                  ; preds = %cond.end54
  %funcs62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs62, align 4
  %tobool63.not = icmp eq ptr %34, null
  br i1 %tobool63.not, label %land.lhs.true59.cond.false81_crit_edge, label %land.lhs.true64

land.lhs.true59.cond.false81_crit_edge:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %sriov_rreg68 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg68, align 4
  %tobool69.not = icmp eq ptr %36, null
  br i1 %tobool69.not, label %land.lhs.true64.cond.false81_crit_edge, label %cond.true70

land.lhs.true64.cond.false81_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81

cond.true70:                                      ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx76 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %37 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx76, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add79 = add i32 %40, 480
  %call80 = tail call i32 %36(ptr noundef %adev, i32 noundef %add79, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end88

cond.false81:                                     ; preds = %land.lhs.true64.cond.false81_crit_edge, %land.lhs.true59.cond.false81_crit_edge, %cond.end54.cond.false81_crit_edge
  %arrayidx83 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %41 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx83, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add86 = add i32 %44, 480
  %call87 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add86, i32 noundef 0) #4
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false81, %cond.true70
  %cond89 = phi i32 [ %call80, %cond.true70 ], [ %call87, %cond.false81 ]
  %and90 = and i32 %cond89, -32
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and93 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %cond.end88.cond.false116_crit_edge, label %land.lhs.true95

cond.end88.cond.false116_crit_edge:               ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false116

land.lhs.true95:                                  ; preds = %cond.end88
  %funcs98 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %47 = ptrtoint ptr %funcs98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs98, align 4
  %tobool99.not = icmp eq ptr %48, null
  br i1 %tobool99.not, label %land.lhs.true95.cond.false116_crit_edge, label %land.lhs.true100

land.lhs.true95.cond.false116_crit_edge:          ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false116

land.lhs.true100:                                 ; preds = %land.lhs.true95
  %sriov_wreg104 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %sriov_wreg104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_wreg104, align 4
  %tobool105.not = icmp eq ptr %50, null
  br i1 %tobool105.not, label %land.lhs.true100.cond.false116_crit_edge, label %cond.true106

land.lhs.true100.cond.false116_crit_edge:         ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false116

cond.true106:                                     ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx112 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %51 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx112, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add115 = add i32 %54, 480
  tail call void %50(ptr noundef %adev, i32 noundef %add115, i32 noundef %and90, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end122

cond.false116:                                    ; preds = %land.lhs.true100.cond.false116_crit_edge, %land.lhs.true95.cond.false116_crit_edge, %cond.end88.cond.false116_crit_edge
  %arrayidx118 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %55 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx118, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add121 = add i32 %58, 480
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add121, i32 noundef %and90, i32 noundef 0) #4
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false116, %cond.true106
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_enable_jpeg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 483, i32 2}
!2 = !{ptr @jpeg_v2_0_ip_block, !3, !"jpeg_v2_0_ip_block", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 805, i32 38}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 739, i32 10}
!8 = !{ptr @jpeg_v2_0_ip_funcs, !9, !"jpeg_v2_0_ip_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 738, i32 34}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 791, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @jpeg_v2_0_set_dec_ring_funcs._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @jpeg_v2_0_set_dec_ring_funcs._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @jpeg_v2_0_dec_ring_vm_funcs, !16, !"jpeg_v2_0_dec_ring_vm_funcs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 758, i32 39}
!17 = !{ptr @jpeg_v2_0_irq_funcs, !18, !"jpeg_v2_0_irq_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 794, i32 42}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 723, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 730, i32 3}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 89, i32 22}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 139, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @jpeg_v2_0_hw_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @jpeg_v2_0_hw_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 668, i32 8}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @jpeg_v2_0_wait_for_idle._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @jpeg_v2_0_wait_for_idle._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 246, i32 7}
!38 = !{ptr @jpeg_v2_0_enable_power_gating._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @jpeg_v2_0_enable_power_gating._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 251, i32 4}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 215, i32 7}
!45 = !{ptr @jpeg_v2_0_disable_power_gating._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @jpeg_v2_0_disable_power_gating._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c", i32 220, i32 4}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i8 0, i8 2}
