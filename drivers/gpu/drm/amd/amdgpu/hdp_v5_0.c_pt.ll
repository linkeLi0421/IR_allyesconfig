; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/hdp_v5_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/hdp_v5_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.93], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.93 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@hdp_v5_0_funcs = dso_local constant { %struct.amdgpu_hdp_funcs, [44 x i8] } { %struct.amdgpu_hdp_funcs { ptr @hdp_v5_0_flush_hdp, ptr @hdp_v5_0_invalidate_hdp, ptr @hdp_v5_0_update_clock_gating, ptr @hdp_v5_0_get_clockgating_state, ptr @hdp_v5_0_init_registers }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"hdp_v5_0_funcs\00", align 1
@___asan_gen_.2 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/hdp_v5_0.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 217, i32 31 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @hdp_v5_0_funcs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdp_v5_0_funcs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdp_v5_0_flush_hdp(ptr noundef %adev, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %rmmio_remap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 34
  %4 = ptrtoint ptr %rmmio_remap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_remap, align 8
  %shr = lshr i32 %5, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %shr, i32 noundef 0, i32 noundef 2) #2
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  %rmmio_remap4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 34
  %6 = ptrtoint ptr %rmmio_remap4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_remap4, align 8
  %shr7 = lshr i32 %7, 2
  tail call void %3(ptr noundef nonnull %ring, i32 noundef %shr7, i32 noundef 0) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdp_v5_0_invalidate_hdp(ptr noundef %adev, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true5

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_wreg, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %land.lhs.true5.cond.false_crit_edge, label %cond.true

land.lhs.true5.cond.false_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 209
  tail call void %9(ptr noundef %adev, i32 noundef %add, i32 noundef 1, i32 noundef 2, i32 noundef 2) #2
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true5.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx17, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add20 = add i32 %17, 209
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add20, i32 noundef 1, i32 noundef 0) #2
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx24 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx24, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add27 = add i32 %21, 209
  tail call void %3(ptr noundef nonnull %ring, i32 noundef %add27, i32 noundef 1) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.false, %cond.true
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdp_v5_0_update_clock_gating(ptr noundef %adev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %1, 100696064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.hdp_v5_0_update_mem_power_gating.exit_crit_edge, label %if.end.i

entry.hdp_v5_0_update_mem_power_gating.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %hdp_v5_0_update_mem_power_gating.exit

if.end.i:                                         ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and1.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool8.not.i, label %land.lhs.true4.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true4.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i = add i32 %11, 216
  %call.i = tail call i32 %7(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0, i32 noundef 2) #2
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true4.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end.i.cond.false.i_crit_edge
  %arrayidx16.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %12 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19.i = add i32 %15, 216
  %call20.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add19.i, i32 noundef 0) #2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call20.i, %cond.false.i ]
  %16 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt.i, align 8
  %and23.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %cond.end.i.cond.false47.i_crit_edge, label %land.lhs.true25.i

cond.end.i.cond.false47.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false47.i

land.lhs.true25.i:                                ; preds = %cond.end.i
  %funcs28.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs28.i, align 4
  %tobool29.not.i = icmp eq ptr %19, null
  br i1 %tobool29.not.i, label %land.lhs.true25.i.cond.false47.i_crit_edge, label %land.lhs.true30.i

land.lhs.true25.i.cond.false47.i_crit_edge:       ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false47.i

land.lhs.true30.i:                                ; preds = %land.lhs.true25.i
  %sriov_rreg34.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg34.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg34.i, align 4
  %tobool35.not.i = icmp eq ptr %21, null
  br i1 %tobool35.not.i, label %land.lhs.true30.i.cond.false47.i_crit_edge, label %cond.true36.i

land.lhs.true30.i.cond.false47.i_crit_edge:       ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false47.i

cond.true36.i:                                    ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx42.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %22 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx42.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add45.i = add i32 %25, 212
  %call46.i = tail call i32 %21(ptr noundef %adev, i32 noundef %add45.i, i32 noundef 0, i32 noundef 2) #2
  br label %cond.end54.i

cond.false47.i:                                   ; preds = %land.lhs.true30.i.cond.false47.i_crit_edge, %land.lhs.true25.i.cond.false47.i_crit_edge, %cond.end.i.cond.false47.i_crit_edge
  %arrayidx49.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %26 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx49.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add52.i = add i32 %29, 212
  %call53.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add52.i, i32 noundef 0) #2
  br label %cond.end54.i

cond.end54.i:                                     ; preds = %cond.false47.i, %cond.true36.i
  %cond55.i = phi i32 [ %call46.i, %cond.true36.i ], [ %call53.i, %cond.false47.i ]
  %or58.i = or i32 %cond.i, 201326592
  %30 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt.i, align 8
  %and61.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %cond.end54.i.cond.false83.i_crit_edge, label %land.lhs.true63.i

cond.end54.i.cond.false83.i_crit_edge:            ; preds = %cond.end54.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false83.i

land.lhs.true63.i:                                ; preds = %cond.end54.i
  %funcs66.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %32 = ptrtoint ptr %funcs66.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs66.i, align 4
  %tobool67.not.i = icmp eq ptr %33, null
  br i1 %tobool67.not.i, label %land.lhs.true63.i.cond.false83.i_crit_edge, label %land.lhs.true68.i

land.lhs.true63.i.cond.false83.i_crit_edge:       ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false83.i

land.lhs.true68.i:                                ; preds = %land.lhs.true63.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool72.not.i = icmp eq ptr %35, null
  br i1 %tobool72.not.i, label %land.lhs.true68.i.cond.false83.i_crit_edge, label %cond.true73.i

land.lhs.true68.i.cond.false83.i_crit_edge:       ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false83.i

cond.true73.i:                                    ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx79.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %36 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx79.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add82.i = add i32 %39, 216
  tail call void %35(ptr noundef %adev, i32 noundef %add82.i, i32 noundef %or58.i, i32 noundef 0, i32 noundef 2) #2
  br label %cond.end89.i

cond.false83.i:                                   ; preds = %land.lhs.true68.i.cond.false83.i_crit_edge, %land.lhs.true63.i.cond.false83.i_crit_edge, %cond.end54.i.cond.false83.i_crit_edge
  %arrayidx85.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %40 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx85.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add88.i = add i32 %43, 216
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add88.i, i32 noundef %or58.i, i32 noundef 0) #2
  br label %cond.end89.i

cond.end89.i:                                     ; preds = %cond.false83.i, %cond.true73.i
  %and104.i = and i32 %cond55.i, -983056
  %44 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %virt.i, align 8
  %and108.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %cond.end89.i.cond.false131.i_crit_edge, label %land.lhs.true110.i

cond.end89.i.cond.false131.i_crit_edge:           ; preds = %cond.end89.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false131.i

land.lhs.true110.i:                               ; preds = %cond.end89.i
  %funcs113.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %46 = ptrtoint ptr %funcs113.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs113.i, align 4
  %tobool114.not.i = icmp eq ptr %47, null
  br i1 %tobool114.not.i, label %land.lhs.true110.i.cond.false131.i_crit_edge, label %land.lhs.true115.i

land.lhs.true110.i.cond.false131.i_crit_edge:     ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false131.i

land.lhs.true115.i:                               ; preds = %land.lhs.true110.i
  %sriov_wreg119.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %sriov_wreg119.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sriov_wreg119.i, align 4
  %tobool120.not.i = icmp eq ptr %49, null
  br i1 %tobool120.not.i, label %land.lhs.true115.i.cond.false131.i_crit_edge, label %cond.true121.i

land.lhs.true115.i.cond.false131.i_crit_edge:     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false131.i

cond.true121.i:                                   ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx127.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %50 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx127.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add130.i = add i32 %53, 212
  tail call void %49(ptr noundef %adev, i32 noundef %add130.i, i32 noundef %and104.i, i32 noundef 0, i32 noundef 2) #2
  br label %cond.end137.i

cond.false131.i:                                  ; preds = %land.lhs.true115.i.cond.false131.i_crit_edge, %land.lhs.true110.i.cond.false131.i_crit_edge, %cond.end89.i.cond.false131.i_crit_edge
  %arrayidx133.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %54 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx133.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add136.i = add i32 %57, 212
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add136.i, i32 noundef %and104.i, i32 noundef 0) #2
  br label %cond.end137.i

cond.end137.i:                                    ; preds = %cond.false131.i, %cond.true121.i
  br i1 %enable, label %if.then139.i, label %cond.end137.i.if.end222.i_crit_edge

cond.end137.i.if.end222.i_crit_edge:              ; preds = %cond.end137.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end222.i

if.then139.i:                                     ; preds = %cond.end137.i
  %58 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cg_flags.i, align 8
  %and141.i = and i32 %59, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i)
  %tobool142.not.i = icmp eq i32 %and141.i, 0
  br i1 %tobool142.not.i, label %if.else.i, label %if.then143.i

if.then143.i:                                     ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #4
  %or147.i = or i32 %and104.i, 131074
  br label %if.end180.i

if.else.i:                                        ; preds = %if.then139.i
  %and149.i = and i32 %59, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %if.else156.i, label %if.then151.i

if.then151.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  %or155.i = or i32 %and104.i, 262148
  br label %if.end180.i

if.else156.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  %and158.i = lshr i32 %59, 23
  %60 = and i32 %and158.i, 8
  %61 = or i32 %60, %and104.i
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.else156.i, %if.then151.i, %if.then143.i
  %hdp_mem_pwr_cntl.0.i = phi i32 [ %or147.i, %if.then143.i ], [ %or155.i, %if.then151.i ], [ %61, %if.else156.i ]
  %and182.i = and i32 %59, 100696064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i)
  %tobool183.not.i = icmp eq i32 %and182.i, 0
  br i1 %tobool183.not.i, label %if.end180.i.if.end222.i_crit_edge, label %if.then184.i

if.end180.i.if.end222.i_crit_edge:                ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end222.i

if.then184.i:                                     ; preds = %if.end180.i
  %or188.i = or i32 %hdp_mem_pwr_cntl.0.i, 65537
  %62 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %virt.i, align 8
  %and191.i = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i)
  %tobool192.not.i = icmp eq i32 %and191.i, 0
  br i1 %tobool192.not.i, label %if.then184.i.cond.false214.i_crit_edge, label %land.lhs.true193.i

if.then184.i.cond.false214.i_crit_edge:           ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false214.i

land.lhs.true193.i:                               ; preds = %if.then184.i
  %funcs196.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %64 = ptrtoint ptr %funcs196.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %funcs196.i, align 4
  %tobool197.not.i = icmp eq ptr %65, null
  br i1 %tobool197.not.i, label %land.lhs.true193.i.cond.false214.i_crit_edge, label %land.lhs.true198.i

land.lhs.true193.i.cond.false214.i_crit_edge:     ; preds = %land.lhs.true193.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false214.i

land.lhs.true198.i:                               ; preds = %land.lhs.true193.i
  %sriov_wreg202.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %sriov_wreg202.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sriov_wreg202.i, align 4
  %tobool203.not.i = icmp eq ptr %67, null
  br i1 %tobool203.not.i, label %land.lhs.true198.i.cond.false214.i_crit_edge, label %cond.true204.i

land.lhs.true198.i.cond.false214.i_crit_edge:     ; preds = %land.lhs.true198.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false214.i

cond.true204.i:                                   ; preds = %land.lhs.true198.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx210.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %68 = ptrtoint ptr %arrayidx210.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx210.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add213.i = add i32 %71, 212
  tail call void %67(ptr noundef %adev, i32 noundef %add213.i, i32 noundef %or188.i, i32 noundef 0, i32 noundef 2) #2
  br label %if.end222.i

cond.false214.i:                                  ; preds = %land.lhs.true198.i.cond.false214.i_crit_edge, %land.lhs.true193.i.cond.false214.i_crit_edge, %if.then184.i.cond.false214.i_crit_edge
  %arrayidx216.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %72 = ptrtoint ptr %arrayidx216.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx216.i, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add219.i = add i32 %75, 212
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add219.i, i32 noundef %or188.i, i32 noundef 0) #2
  br label %if.end222.i

if.end222.i:                                      ; preds = %cond.false214.i, %cond.true204.i, %if.end180.i.if.end222.i_crit_edge, %cond.end137.i.if.end222.i_crit_edge
  %and225.i = and i32 %cond.i, -201326593
  %76 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %virt.i, align 8
  %and229.i = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229.i)
  %tobool230.not.i = icmp eq i32 %and229.i, 0
  br i1 %tobool230.not.i, label %if.end222.i.cond.false252.i_crit_edge, label %land.lhs.true231.i

if.end222.i.cond.false252.i_crit_edge:            ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false252.i

land.lhs.true231.i:                               ; preds = %if.end222.i
  %funcs234.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %78 = ptrtoint ptr %funcs234.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %funcs234.i, align 4
  %tobool235.not.i = icmp eq ptr %79, null
  br i1 %tobool235.not.i, label %land.lhs.true231.i.cond.false252.i_crit_edge, label %land.lhs.true236.i

land.lhs.true231.i.cond.false252.i_crit_edge:     ; preds = %land.lhs.true231.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false252.i

land.lhs.true236.i:                               ; preds = %land.lhs.true231.i
  %sriov_wreg240.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %sriov_wreg240.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sriov_wreg240.i, align 4
  %tobool241.not.i = icmp eq ptr %81, null
  br i1 %tobool241.not.i, label %land.lhs.true236.i.cond.false252.i_crit_edge, label %cond.true242.i

land.lhs.true236.i.cond.false252.i_crit_edge:     ; preds = %land.lhs.true236.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false252.i

cond.true242.i:                                   ; preds = %land.lhs.true236.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx248.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %82 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx248.i, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add251.i = add i32 %85, 216
  tail call void %81(ptr noundef %adev, i32 noundef %add251.i, i32 noundef %and225.i, i32 noundef 0, i32 noundef 2) #2
  br label %hdp_v5_0_update_mem_power_gating.exit

cond.false252.i:                                  ; preds = %land.lhs.true236.i.cond.false252.i_crit_edge, %land.lhs.true231.i.cond.false252.i_crit_edge, %if.end222.i.cond.false252.i_crit_edge
  %arrayidx254.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %86 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx254.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add257.i = add i32 %89, 216
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add257.i, i32 noundef %and225.i, i32 noundef 0) #2
  br label %hdp_v5_0_update_mem_power_gating.exit

hdp_v5_0_update_mem_power_gating.exit:            ; preds = %cond.false252.i, %cond.true242.i, %entry.hdp_v5_0_update_mem_power_gating.exit_crit_edge
  %90 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cg_flags.i, align 8
  %and.i5 = and i32 %91, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool.not.i6 = icmp eq i32 %and.i5, 0
  br i1 %tobool.not.i6, label %hdp_v5_0_update_mem_power_gating.exit.hdp_v5_0_update_medium_grain_clock_gating.exit_crit_edge, label %if.end.i10

hdp_v5_0_update_mem_power_gating.exit.hdp_v5_0_update_medium_grain_clock_gating.exit_crit_edge: ; preds = %hdp_v5_0_update_mem_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %hdp_v5_0_update_medium_grain_clock_gating.exit

if.end.i10:                                       ; preds = %hdp_v5_0_update_mem_power_gating.exit
  %virt.i7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %92 = ptrtoint ptr %virt.i7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %virt.i7, align 8
  %and1.i8 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i8)
  %tobool2.not.i9 = icmp eq i32 %and1.i8, 0
  br i1 %tobool2.not.i9, label %if.end.i10.cond.false.i24_crit_edge, label %land.lhs.true.i13

if.end.i10.cond.false.i24_crit_edge:              ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false.i24

land.lhs.true.i13:                                ; preds = %if.end.i10
  %funcs.i11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %94 = ptrtoint ptr %funcs.i11 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %funcs.i11, align 4
  %tobool3.not.i12 = icmp eq ptr %95, null
  br i1 %tobool3.not.i12, label %land.lhs.true.i13.cond.false.i24_crit_edge, label %land.lhs.true4.i16

land.lhs.true.i13.cond.false.i24_crit_edge:       ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false.i24

land.lhs.true4.i16:                               ; preds = %land.lhs.true.i13
  %sriov_rreg.i14 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %95, i32 0, i32 13
  %96 = ptrtoint ptr %sriov_rreg.i14 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sriov_rreg.i14, align 4
  %tobool8.not.i15 = icmp eq ptr %97, null
  br i1 %tobool8.not.i15, label %land.lhs.true4.i16.cond.false.i24_crit_edge, label %cond.true.i20

land.lhs.true4.i16.cond.false.i24_crit_edge:      ; preds = %land.lhs.true4.i16
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false.i24

cond.true.i20:                                    ; preds = %land.lhs.true4.i16
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx.i17 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %98 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i17, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add.i18 = add i32 %101, 216
  %call.i19 = tail call i32 %97(ptr noundef %adev, i32 noundef %add.i18, i32 noundef 0, i32 noundef 2) #2
  br label %cond.end.i27

cond.false.i24:                                   ; preds = %land.lhs.true4.i16.cond.false.i24_crit_edge, %land.lhs.true.i13.cond.false.i24_crit_edge, %if.end.i10.cond.false.i24_crit_edge
  %arrayidx16.i21 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %102 = ptrtoint ptr %arrayidx16.i21 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx16.i21, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %add19.i22 = add i32 %105, 216
  %call20.i23 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add19.i22, i32 noundef 0) #2
  br label %cond.end.i27

cond.end.i27:                                     ; preds = %cond.false.i24, %cond.true.i20
  %cond.i25 = phi i32 [ %call.i19, %cond.true.i20 ], [ %call20.i23, %cond.false.i24 ]
  %and23.i26 = and i32 %cond.i25, 67108863
  %masksel.i = select i1 %enable, i32 0, i32 -67108864
  %hdp_clk_cntl.0.i = or i32 %and23.i26, %masksel.i
  %106 = ptrtoint ptr %virt.i7 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %virt.i7, align 8
  %and27.i = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %cond.end.i27.cond.false49.i_crit_edge, label %land.lhs.true29.i

cond.end.i27.cond.false49.i_crit_edge:            ; preds = %cond.end.i27
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false49.i

land.lhs.true29.i:                                ; preds = %cond.end.i27
  %funcs32.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %108 = ptrtoint ptr %funcs32.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %funcs32.i, align 4
  %tobool33.not.i = icmp eq ptr %109, null
  br i1 %tobool33.not.i, label %land.lhs.true29.i.cond.false49.i_crit_edge, label %land.lhs.true34.i

land.lhs.true29.i.cond.false49.i_crit_edge:       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false49.i

land.lhs.true34.i:                                ; preds = %land.lhs.true29.i
  %sriov_wreg.i28 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %109, i32 0, i32 12
  %110 = ptrtoint ptr %sriov_wreg.i28 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sriov_wreg.i28, align 4
  %tobool38.not.i = icmp eq ptr %111, null
  br i1 %tobool38.not.i, label %land.lhs.true34.i.cond.false49.i_crit_edge, label %cond.true39.i

land.lhs.true34.i.cond.false49.i_crit_edge:       ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false49.i

cond.true39.i:                                    ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx45.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %112 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx45.i, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %add48.i = add i32 %115, 216
  tail call void %111(ptr noundef %adev, i32 noundef %add48.i, i32 noundef %hdp_clk_cntl.0.i, i32 noundef 0, i32 noundef 2) #2
  br label %hdp_v5_0_update_medium_grain_clock_gating.exit

cond.false49.i:                                   ; preds = %land.lhs.true34.i.cond.false49.i_crit_edge, %land.lhs.true29.i.cond.false49.i_crit_edge, %cond.end.i27.cond.false49.i_crit_edge
  %arrayidx51.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %116 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx51.i, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %add54.i = add i32 %119, 216
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add54.i, i32 noundef %hdp_clk_cntl.0.i, i32 noundef 0) #2
  br label %hdp_v5_0_update_medium_grain_clock_gating.exit

hdp_v5_0_update_medium_grain_clock_gating.exit:   ; preds = %cond.false49.i, %cond.true39.i, %hdp_v5_0_update_mem_power_gating.exit.hdp_v5_0_update_medium_grain_clock_gating.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdp_v5_0_get_clockgating_state(ptr noundef %adev, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 216
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 2) #2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 216
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %cond)
  %tobool20.not = icmp ult i32 %cond, 67108864
  br i1 %tobool20.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 65536
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and23 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end.cond.false47_crit_edge, label %land.lhs.true25

if.end.cond.false47_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false47

land.lhs.true25:                                  ; preds = %if.end
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false47_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false47_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false47

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_rreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg34, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false47_crit_edge, label %cond.true36

land.lhs.true30.cond.false47_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx42, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add45 = add i32 %25, 212
  %call46 = tail call i32 %21(ptr noundef %adev, i32 noundef %add45, i32 noundef 0, i32 noundef 2) #2
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true30.cond.false47_crit_edge, %land.lhs.true25.cond.false47_crit_edge, %if.end.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx49, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add52 = add i32 %29, 212
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add52, i32 noundef 0) #2
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true36
  %cond55 = phi i32 [ %call46, %cond.true36 ], [ %call53, %cond.false47 ]
  %and56 = and i32 %cond55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else, label %cond.end54.if.end71.sink.split_crit_edge

cond.end54.if.end71.sink.split_crit_edge:         ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end71.sink.split

if.else:                                          ; preds = %cond.end54
  %and60 = and i32 %cond55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else64, label %if.else.if.end71.sink.split_crit_edge

if.else.if.end71.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end71.sink.split

if.else64:                                        ; preds = %if.else
  %and65 = and i32 %cond55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else64.if.end71_crit_edge, label %if.else64.if.end71.sink.split_crit_edge

if.else64.if.end71.sink.split_crit_edge:          ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end71.sink.split

if.else64.if.end71_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end71

if.end71.sink.split:                              ; preds = %if.else64.if.end71.sink.split_crit_edge, %if.else.if.end71.sink.split_crit_edge, %cond.end54.if.end71.sink.split_crit_edge
  %.sink96 = phi i32 [ 32768, %cond.end54.if.end71.sink.split_crit_edge ], [ 33554432, %if.else.if.end71.sink.split_crit_edge ], [ 67108864, %if.else64.if.end71.sink.split_crit_edge ]
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or63 = or i32 %31, %.sink96
  store i32 %or63, ptr %flags, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %if.else64.if.end71_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdp_v5_0_init_registers(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 211
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 2) #2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 211
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %or = or i32 %cond, 1
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and21 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.false43_crit_edge, label %land.lhs.true23

cond.end.cond.false43_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false43

land.lhs.true23:                                  ; preds = %cond.end
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false43_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false43_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false43

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %land.lhs.true28.cond.false43_crit_edge, label %cond.true33

land.lhs.true28.cond.false43_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.false43

cond.true33:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx39 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx39, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add42 = add i32 %23, 211
  tail call void %19(ptr noundef %adev, i32 noundef %add42, i32 noundef %or, i32 noundef 0, i32 noundef 2) #2
  br label %cond.end49

cond.false43:                                     ; preds = %land.lhs.true28.cond.false43_crit_edge, %land.lhs.true23.cond.false43_crit_edge, %cond.end.cond.false43_crit_edge
  %arrayidx45 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 2
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx45, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add48 = add i32 %27, 211
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48, i32 noundef %or, i32 noundef 0) #2
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false43, %cond.true33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @hdp_v5_0_funcs, !1, !"hdp_v5_0_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/hdp_v5_0.c", i32 217, i32 31}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
