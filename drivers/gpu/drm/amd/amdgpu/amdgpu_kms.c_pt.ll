; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_mgpu_info = type { [16 x %struct.amdgpu_gpu_instance], %struct.mutex, i32, i32, i32, %struct.delayed_work, i8 }
%struct.amdgpu_gpu_instance = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.drm_amdgpu_info_hw_ip = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.drm_amdgpu_info_firmware = type { i32, i32 }
%struct.drm_amdgpu_info_gds = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_amdgpu_info_vram_gtt = type { i64, i64, i64 }
%struct.drm_amdgpu_memory_info = type { %struct.drm_amdgpu_heap_info, %struct.drm_amdgpu_heap_info, %struct.drm_amdgpu_heap_info }
%struct.drm_amdgpu_heap_info = type { i64, i64, i64, i64 }
%struct.drm_amdgpu_info_vce_clock_table = type { [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], i32, i32 }
%struct.drm_amdgpu_info_vce_clock_table_entry = type { i32, i32, i32, i32 }
%struct.drm_amdgpu_info_vbios = type { [64 x i8], [64 x i8], i32, i32, [32 x i8], [32 x i8] }
%struct.drm_amdgpu_info_num_handles = type { i32, i32 }
%struct.drm_amdgpu_info = type { i64, i32, i32, %union.anon.116 }
%union.anon.116 = type { %struct.anon.119 }
%struct.anon.119 = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.amdgpu_crtc = type { %struct.drm_crtc, i32, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, i32, i32, %struct.dm_irq_params, %struct.amdgpu_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, %struct.hrtimer, i32, i32, ptr }
%union.dfixed = type { i32 }
%struct.dm_irq_params = type { i32, %struct.mod_vrr_params, ptr, i32, i8, %struct.mod_freesync_config, i32 }
%struct.mod_vrr_params = type { i8, i8, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_adjust, %struct.mod_vrr_params_fixed_refresh, %struct.mod_vrr_params_btr }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.mod_vrr_params_fixed_refresh = type { i8, i8, i8, i32, i32 }
%struct.mod_vrr_params_btr = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.mod_freesync_config = type { i32, i8, i8, i8, i32, i32, i32 }
%struct.amdgpu_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_amdgpu_info_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x [4 x i32]], i64, i64, i32, i64 }
%struct.amd_pm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }
%struct.amdgpu_video_codecs = type { i32, ptr }
%struct.amdgpu_video_codec_info = type { i32, i32, i32, i32, i32 }
%struct.drm_amdgpu_info_video_codec_info = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.drm_amdgpu_query_fw = type { i32, i32, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm, ptr, ptr, %struct.mutex, %struct.idr, %struct.amdgpu_ctx_mgr }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.94, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.anon.94 = type { %union.anon.95, [128 x i64] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.amdgpu_ctx_mgr = type { ptr, %struct.mutex, %struct.idr }
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
%struct.amdgpu_display_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, ptr, %struct.address_space, %struct.list_head, %union.anon.85, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.84 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.85 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@mgpu_info = external dso_local global %struct.amdgpu_mgpu_info, align 4
@amdgpu_driver_unload_kms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014[drm] smart shift update failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu_driver_unload_kms\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_driver_unload_kms._entry_ptr = internal global ptr @amdgpu_driver_unload_kms._entry, section ".printk_index", align 4
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot register more gpu instance\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_driver_load_kms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 178, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Fatal error during GPU init\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_driver_load_kms\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_driver_load_kms._entry_ptr = internal global ptr @amdgpu_driver_load_kms._entry, section ".printk_index", align 4
@amdgpu_runtime_pm = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_driver_load_kms._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 185, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: Using ATPX for runtime pm\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_driver_load_kms._entry_ptr.11 = internal global ptr @amdgpu_driver_load_kms._entry.8, section ".printk_index", align 4
@amdgpu_driver_load_kms._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 189, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: Using BOCO for runtime pm\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_driver_load_kms._entry_ptr.14 = internal global ptr @amdgpu_driver_load_kms._entry.12, section ".printk_index", align 4
@amdgpu_driver_load_kms._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 216, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: Using BACO for runtime pm\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_driver_load_kms._entry_ptr.17 = internal global ptr @amdgpu_driver_load_kms._entry.15, section ".printk_index", align 4
@amdgpu_driver_load_kms._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_driver_load_kms._entry_ptr.21 = internal global ptr @amdgpu_driver_load_kms._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown crtc id %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unallowed offset %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_mcbp = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid request %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RAS Intr triggered, device disabled!!\00", [58 x i8] zeroinitializer }, align 32
@amdgpu_driver_open_kms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1189, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: No more PASIDs available!\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_driver_open_kms\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_driver_open_kms._entry_ptr = internal global ptr @amdgpu_driver_open_kms._entry, section ".printk_index", align 4
@amdgpu_driver_open_kms.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&fpriv->bo_list_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid crtc %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Query failed! stat %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"crtc %d: dist from vblank start %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NULL mode info! Returned count may be wrong.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu_firmware_info\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_firmware_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_debugfs_firmware_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_ctx_num_entities = external dso_local local_unnamed_addr constant [9 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@amdgpu_ras_in_intr = external dso_local global %struct.atomic_t, align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.41, i32 179, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XGMI\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RAS\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDCP\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DTM\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RAP\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SECUREDISPLAY\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"VCE feature version: %u, firmware version: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UVD feature version: %u, firmware version: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MC feature version: %u, firmware version: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ME feature version: %u, firmware version: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"PFP feature version: %u, firmware version: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CE feature version: %u, firmware version: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RLC feature version: %u, firmware version: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"RLC SRLC feature version: %u, firmware version: 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"RLC SRLG feature version: %u, firmware version: 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"RLC SRLS feature version: %u, firmware version: 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MEC feature version: %u, firmware version: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MEC2 feature version: %u, firmware version: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SOS feature version: %u, firmware version: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ASD feature version: %u, firmware version: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"TA %s feature version: 0x%08x, firmware version: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"SMC feature version: %u, firmware version: 0x%08x (%d.%d.%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"SDMA%d feature version: %u, firmware version: 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"VCN feature version: %u, firmware version: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DMCU feature version: %u, firmware version: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DMCUB feature version: %u, firmware version: 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"TOC feature version: %u, firmware version: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VBIOS version: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 21, i64 23]
@__sancov_gen_cov_switch_values.71 = internal global [26 x i64] [i64 24, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33]
@__sancov_gen_cov_switch_values.72 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.77 = internal global [22 x i64] [i64 20, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 96, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 109, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 178, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 185, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 189, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 216, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 270, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 595, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 786, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 940, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1171, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1189, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1216, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1333, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1363, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1365, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1378, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1641, i32 22 }
@___asan_gen_.180 = private unnamed_addr constant [34 x i8] c"amdgpu_debugfs_firmware_info_fops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1631, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 230, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 214, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 174, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 378, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 179, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1436, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1437, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1438, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1439, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1440, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1441, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1450, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1458, i32 16 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1466, i32 16 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1474, i32 16 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1482, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1490, i32 16 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1498, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1506, i32 16 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1514, i32 16 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1522, i32 16 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1531, i32 16 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1540, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1549, i32 16 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1558, i32 16 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1568, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1580, i32 16 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1590, i32 17 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1599, i32 16 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1607, i32 16 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1615, i32 16 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1623, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1626, i32 16 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_driver_load_kms._entry, ptr @amdgpu_driver_load_kms._entry.12, ptr @amdgpu_driver_load_kms._entry.15, ptr @amdgpu_driver_load_kms._entry.20, ptr @amdgpu_driver_load_kms._entry.8, ptr @amdgpu_driver_load_kms._entry_ptr, ptr @amdgpu_driver_load_kms._entry_ptr.11, ptr @amdgpu_driver_load_kms._entry_ptr.14, ptr @amdgpu_driver_load_kms._entry_ptr.17, ptr @amdgpu_driver_load_kms._entry_ptr.21, ptr @amdgpu_driver_open_kms._entry, ptr @amdgpu_driver_open_kms._entry_ptr, ptr @amdgpu_driver_unload_kms._entry, ptr @amdgpu_driver_unload_kms._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @amdgpu_driver_open_kms.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @amdgpu_debugfs_firmware_info_fops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @xa_init_flags.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_driver_unload_kms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_driver_load_kms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_driver_load_kms._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_driver_load_kms._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_driver_load_kms._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_driver_load_kms._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_driver_open_kms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_driver_open_kms.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_firmware_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_unregister_gpu_instance(ptr noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 1), i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp14.not = icmp eq i32 %0, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %i.015
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %2, %adev
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %0, -1
  %arrayidx4 = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %sub
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %arrayidx4, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2), align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2), align 4
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 4)
  %9 = ptrtoint ptr %. to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %., align 4
  %dec6 = add i32 %10, -1
  store i32 %dec6, ptr %., align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 1)) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_driver_unload_kms(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 1), i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp14.not.i = icmp eq i32 %0, 0
  br i1 %cmp14.not.i, label %if.end.amdgpu_unregister_gpu_instance.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.amdgpu_unregister_gpu_instance.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_unregister_gpu_instance.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %0
  br i1 %exitcond.not.i, label %for.cond.i.amdgpu_unregister_gpu_instance.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.amdgpu_unregister_gpu_instance.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_unregister_gpu_instance.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %i.015.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %2, %add.ptr.i
  br i1 %cmp2.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %0, -1
  %arrayidx4.i = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %sub.i
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %arrayidx4.i, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2), align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2), align 4
  %flags.i = getelementptr i8, ptr %dev, i32 2376
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 4)
  %9 = ptrtoint ptr %..i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %..i, align 4
  %dec6.i = add i32 %10, -1
  store i32 %dec6.i, ptr %..i, align 4
  br label %amdgpu_unregister_gpu_instance.exit

amdgpu_unregister_gpu_instance.exit:              ; preds = %if.then.i, %for.cond.i.amdgpu_unregister_gpu_instance.exit_crit_edge, %if.end.amdgpu_unregister_gpu_instance.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 1)) #9
  %rmmio = getelementptr i8, ptr %dev, i32 2872
  %11 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio, align 8
  %cmp1 = icmp eq ptr %12, null
  br i1 %cmp1, label %amdgpu_unregister_gpu_instance.exit.cleanup_crit_edge, label %if.end3

amdgpu_unregister_gpu_instance.exit.cleanup_crit_edge: ; preds = %amdgpu_unregister_gpu_instance.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %amdgpu_unregister_gpu_instance.exit
  %runpm = getelementptr i8, ptr %dev, i32 91472
  %13 = ptrtoint ptr %runpm to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %runpm, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end3.if.end8_crit_edge, label %if.then4

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #9
  %17 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev5, align 4
  tail call void @pm_runtime_forbid(ptr noundef %18) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end3.if.end8_crit_edge
  tail call void @amdgpu_device_fini_hw(ptr noundef nonnull %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %amdgpu_unregister_gpu_instance.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_fini_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_register_gpu_instance(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 1), i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %0)
  %cmp = icmp ugt i32 %0, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adev, ptr %arrayidx, align 4
  %mgpu_fan_enabled = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %0, i32 1
  %2 = ptrtoint ptr %mgpu_fan_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mgpu_fan_enabled, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2), align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 2), align 4
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 4)
  %6 = ptrtoint ptr %. to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %., align 4
  %inc4 = add i32 %7, 1
  store i32 %inc4, ptr %., align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 1)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_driver_load_kms(ptr noundef %adev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %has_pr3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 157
  %0 = ptrtoint ptr %has_pr3 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %has_pr3, align 2
  %call11 = tail call i32 @amdgpu_device_init(ptr noundef %adev, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then126

if.end15:                                         ; preds = %entry
  %call16 = tail call zeroext i1 @amdgpu_device_supports_px(ptr noundef %ddev.i) #9
  br i1 %call16, label %land.lhs.true18, label %if.end15.if.else_crit_edge

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true18:                                  ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_runtime_pm to i32))
  %1 = load i32, ptr @amdgpu_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %land.lhs.true18.if.else_crit_edge, label %land.lhs.true18.if.end69.sink.split.sink.split_crit_edge

land.lhs.true18.if.end69.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.sink.split.sink.split

land.lhs.true18.if.else_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true18.if.else_crit_edge, %if.end15.if.else_crit_edge
  %call26 = tail call zeroext i1 @amdgpu_device_supports_boco(ptr noundef %ddev.i) #9
  br i1 %call26, label %land.lhs.true28, label %if.else.if.else37_crit_edge

if.else.if.else37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else37

land.lhs.true28:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_runtime_pm to i32))
  %2 = load i32, ptr @amdgpu_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp29.not = icmp eq i32 %2, 0
  br i1 %cmp29.not, label %land.lhs.true28.if.else37_crit_edge, label %land.lhs.true28.if.end69.sink.split.sink.split_crit_edge

land.lhs.true28.if.end69.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.sink.split.sink.split

land.lhs.true28.if.else37_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else37

if.else37:                                        ; preds = %land.lhs.true28.if.else37_crit_edge, %if.else.if.else37_crit_edge
  %call38 = tail call zeroext i1 @amdgpu_device_supports_baco(ptr noundef %ddev.i) #9
  br i1 %call38, label %land.lhs.true40, label %if.else37.if.end69_crit_edge

if.else37.if.end69_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

land.lhs.true40:                                  ; preds = %if.else37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_runtime_pm to i32))
  %3 = load i32, ptr @amdgpu_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp41.not = icmp eq i32 %3, 0
  br i1 %cmp41.not, label %land.lhs.true40.if.end69_crit_edge, label %if.then43

land.lhs.true40.if.end69_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then43:                                        ; preds = %land.lhs.true40
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then43.sw.epilog.sink.split_crit_edge [
    i32 21, label %if.then43.sw.bb_crit_edge
    i32 23, label %if.then43.sw.bb_crit_edge188
    i32 19, label %sw.bb49
  ]

if.then43.sw.bb_crit_edge188:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then43.sw.bb_crit_edge:                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then43.sw.epilog.sink.split_crit_edge:         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %if.then43.sw.bb_crit_edge, %if.then43.sw.bb_crit_edge188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp44 = icmp sgt i32 %3, 0
  br i1 %cmp44, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb49:                                          ; preds = %if.then43
  %noretry = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  %7 = ptrtoint ptr %noretry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %noretry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool50.not = icmp eq i32 %8, 0
  br i1 %tobool50.not, label %sw.bb49.sw.epilog.sink.split_crit_edge, label %sw.bb49.sw.epilog_crit_edge

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb49.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb49.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge, %if.then43.sw.epilog.sink.split_crit_edge
  %runpm52 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 155
  %9 = ptrtoint ptr %runpm52 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %runpm52, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb49.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %is_fw_fb = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 158
  %10 = ptrtoint ptr %is_fw_fb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_fw_fb, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool55.not = icmp eq i8 %11, 0
  br i1 %tobool55.not, label %sw.epilog.if.end58_crit_edge, label %if.then56

sw.epilog.if.end58_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then56:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %runpm57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 155
  %12 = ptrtoint ptr %runpm57 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %runpm57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %sw.epilog.if.end58_crit_edge
  %runpm59 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 155
  %13 = ptrtoint ptr %runpm59 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %runpm59, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool60.not = icmp eq i8 %14, 0
  br i1 %tobool60.not, label %if.end58.if.end69_crit_edge, label %if.end58.if.end69.sink.split_crit_edge

if.end58.if.end69.sink.split_crit_edge:           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.sink.split

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end69.sink.split.sink.split:                   ; preds = %land.lhs.true28.if.end69.sink.split.sink.split_crit_edge, %land.lhs.true18.if.end69.sink.split.sink.split_crit_edge
  %.str.13.sink.ph = phi ptr [ @.str.9, %land.lhs.true18.if.end69.sink.split.sink.split_crit_edge ], [ @.str.13, %land.lhs.true28.if.end69.sink.split.sink.split_crit_edge ]
  %runpm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 155
  %15 = ptrtoint ptr %runpm to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %runpm, align 8
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %if.end69.sink.split.sink.split, %if.end58.if.end69.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.16, %if.end58.if.end69.sink.split_crit_edge ], [ %.str.13.sink.ph, %if.end69.sink.split.sink.split ]
  %16 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull %.str.13.sink) #12
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %if.end58.if.end69_crit_edge, %land.lhs.true40.if.end69_crit_edge, %if.else37.if.end69_crit_edge
  %runpm86 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 155
  %18 = ptrtoint ptr %runpm86 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %runpm86, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool87.not = icmp eq i8 %19, 0
  br i1 %tobool87.not, label %if.end69.if.end135_crit_edge, label %if.then88

if.end69.if.end135_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then88:                                        ; preds = %if.end69
  %call89 = tail call zeroext i1 @amdgpu_device_supports_px(ptr noundef %ddev.i) #9
  br i1 %call89, label %if.then90, label %if.then88.if.end92_crit_edge

if.then88.if.end92_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then90:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %dev91 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev91, align 4
  %driver_flags.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %driver_flags.i, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.then88.if.end92_crit_edge
  %call93 = tail call zeroext i1 @amdgpu_device_supports_boco(ptr noundef %ddev.i) #9
  br i1 %call93, label %if.then94, label %if.end92.if.end96_crit_edge

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %dev95 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev95, align 4
  %driver_flags.i182 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 2
  %25 = ptrtoint ptr %driver_flags.i182 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 14, ptr %driver_flags.i182, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end92.if.end96_crit_edge
  %dev97 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev97, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %27, i1 noundef zeroext true) #9
  %28 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev97, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %29, i32 noundef 5000) #9
  %30 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev97, align 4
  tail call void @pm_runtime_allow(ptr noundef %31) #9
  %32 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev97, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 22
  %34 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %35 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev97, align 4
  %call.i183 = tail call i32 @__pm_runtime_suspend(ptr noundef %36, i32 noundef 13) #9
  %call103 = tail call zeroext i1 @amdgpu_device_supports_baco(ptr noundef %ddev.i) #9
  br i1 %call103, label %land.lhs.true105, label %if.end96.if.end135_crit_edge

if.end96.if.end135_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

land.lhs.true105:                                 ; preds = %if.end96
  %flags106 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %37 = ptrtoint ptr %flags106 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags106, align 8
  %and107 = and i32 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %land.lhs.true109, label %land.lhs.true105.if.end135_crit_edge

land.lhs.true105.if.end135_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

land.lhs.true109:                                 ; preds = %land.lhs.true105
  %asic_type110 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %39 = ptrtoint ptr %asic_type110 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %asic_type110, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %40)
  %cmp111 = icmp ugt i32 %40, 25
  br i1 %cmp111, label %if.then113, label %land.lhs.true109.if.end135_crit_edge

land.lhs.true109.if.end135_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then113:                                       ; preds = %land.lhs.true109
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 4
  %bus.i184 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %bus.i184 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i184, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %domain_nr.i.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %44, i32 0, i32 12
  %47 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %48 to i32
  %call3.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %46, i32 noundef %conv.i, i32 noundef 1) #9
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.then113.if.end135_crit_edge, label %if.then.i

if.then113.if.end135_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then.i:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %call3.i, i32 0, i32 44
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #9
  %call.i13.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.pci_dev, ptr %call3.i, i32 0, i32 44, i32 12, i32 22
  %49 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store volatile i64 %call.i13.i, ptr %last_busy.i.i, align 8
  %call.i14.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev.i, i32 noundef 13) #9
  tail call void @pci_dev_put(ptr noundef nonnull %call3.i) #9
  br label %if.end135

if.then126:                                       ; preds = %entry
  %dev14 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.4) #12
  %rmmio = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 32
  %52 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio, align 8
  %tobool127.not = icmp eq ptr %53, null
  br i1 %tobool127.not, label %if.then126.if.end134_crit_edge, label %land.lhs.true128

if.then126.if.end134_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

land.lhs.true128:                                 ; preds = %if.then126
  %runpm129 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 155
  %54 = ptrtoint ptr %runpm129 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %runpm129, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool130.not = icmp eq i8 %55, 0
  br i1 %tobool130.not, label %land.lhs.true128.if.end134_crit_edge, label %if.then132

land.lhs.true128.if.end134_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then132:                                       ; preds = %land.lhs.true128
  %56 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev14, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !151
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then132.if.end134_crit_edge, label %do.end11.i.i.i.i

if.then132.if.end134_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

do.end11.i.i.i.i:                                 ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !152
  br label %if.end134

if.end134:                                        ; preds = %do.end11.i.i.i.i, %if.then132.if.end134_crit_edge, %land.lhs.true128.if.end134_crit_edge, %if.then126.if.end134_crit_edge
  tail call void @amdgpu_driver_unload_kms(ptr noundef %ddev.i)
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then.i, %if.then113.if.end135_crit_edge, %land.lhs.true109.if.end135_crit_edge, %land.lhs.true105.if.end135_crit_edge, %if.end96.if.end135_crit_edge, %if.end69.if.end135_crit_edge
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_supports_px(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_supports_boco(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_supports_baco(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_info_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %filp) local_unnamed_addr #0 align 64 {
entry:
  %ui32 = alloca i32, align 4
  %ui64 = alloca i64, align 8
  %ui32_size = alloca i32, align 4
  %ip = alloca %struct.drm_amdgpu_info_hw_ip, align 8
  %count = alloca i32, align 4
  %fw_info = alloca %struct.drm_amdgpu_info_firmware, align 4
  %gds_info = alloca %struct.drm_amdgpu_info_gds, align 4
  %vram_gtt = alloca %struct.drm_amdgpu_info_vram_gtt, align 8
  %mem = alloca %struct.drm_amdgpu_memory_info, align 8
  %vce_clk_table = alloca %struct.drm_amdgpu_info_vce_clock_table, align 4
  %bios_size = alloca i32, align 4
  %vbios_info = alloca %struct.drm_amdgpu_info_vbios, align 4
  %handle = alloca %struct.drm_amdgpu_info_num_handles, align 4
  %ras_mask = alloca i64, align 8
  %codecs = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %mode_info = getelementptr i8, ptr %dev, i32 21992
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  %return_size = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %return_size, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ui32) #9
  %5 = ptrtoint ptr %ui32 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ui32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ui64) #9
  %6 = ptrtoint ptr %ui64 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %ui64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ui32_size) #9
  %7 = ptrtoint ptr %ui32_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %ui32_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool3.not = icmp eq i64 %1, 0
  %or.cond1766 = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond1766, label %entry.cleanup852_crit_edge, label %if.end

entry.cleanup852_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end:                                           ; preds = %entry
  %query = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %query, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %9, label %sw.default850 [
    i32 0, label %sw.bb
    i32 1, label %for.cond.preheader
    i32 2, label %sw.bb35
    i32 3, label %sw.bb51
    i32 5, label %sw.bb98
    i32 14, label %sw.bb110
    i32 15, label %sw.bb132
    i32 24, label %sw.bb144
    i32 30, label %sw.bb156
    i32 16, label %sw.bb168
    i32 23, label %sw.bb180
    i32 17, label %sw.bb194
    i32 19, label %sw.bb207
    i32 20, label %sw.bb223
    i32 25, label %sw.bb255
    i32 21, label %sw.bb341
    i32 22, label %sw.bb404
    i32 26, label %sw.bb556
    i32 27, label %sw.bb591
    i32 28, label %sw.bb656
    i32 29, label %sw.bb676
    i32 31, label %sw.bb746
    i32 32, label %sw.bb758
    i32 33, label %sw.bb781
  ]

for.cond.preheader:                               ; preds = %if.end
  %num_crtc = getelementptr i8, ptr %dev, i32 22400
  %11 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp121778 = icmp sgt i32 %12, 0
  br i1 %cmp121778, label %for.body.lr.ph, label %for.cond.preheader.if.then22.critedge_crit_edge

for.cond.preheader.if.then22.critedge_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22.critedge

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %13 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3
  br label %for.body

sw.bb:                                            ; preds = %if.end
  %accel_working = getelementptr i8, ptr %dev, i32 2394
  %14 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %accel_working, align 2, !range !149
  %16 = zext i8 %15 to i32
  %17 = ptrtoint ptr %ui32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ui32, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %4, i32 4)
  call void @__check_object_size(ptr noundef nonnull %ui32, i32 noundef %18, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %sw.bb.copy_to_user.exit_crit_edge, label %if.end.i.i

sw.bb.copy_to_user.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %sw.bb
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %18, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui32, i32 noundef %18) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui32, i32 noundef %18) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %sw.bb.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %18, %sw.bb.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %18, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  %cond9 = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup852

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.01779 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 79, i32 3, i32 %i.01779
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %base = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base, align 8
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp16 = icmp eq i32 %23, %25
  br i1 %cmp16, label %if.then18, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_id, align 8
  %28 = ptrtoint ptr %ui32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ui32, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %4, i32 4)
  call void @__check_object_size(ptr noundef nonnull %ui32, i32 noundef %29, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1263 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1263, label %if.then18.copy_to_user.exit1272_crit_edge, label %if.end.i.i1267

if.then18.copy_to_user.exit1272_crit_edge:        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1272

if.end.i.i1267:                                   ; preds = %if.then18
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %29, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1265 = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1265)
  %cmp.i6.i1266 = icmp eq i32 %asmresult.i.i1265, 0
  br i1 %cmp.i6.i1266, label %if.then2.i.i1270, label %if.end.i.i1267.copy_to_user.exit1272_crit_edge

if.end.i.i1267.copy_to_user.exit1272_crit_edge:   ; preds = %if.end.i.i1267
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1272

if.then2.i.i1270:                                 ; preds = %if.end.i.i1267
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1268 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui32, i32 noundef %29) #9
  %call.i12.i.i1269 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui32, i32 noundef %29) #9
  br label %copy_to_user.exit1272

copy_to_user.exit1272:                            ; preds = %if.then2.i.i1270, %if.end.i.i1267.copy_to_user.exit1272_crit_edge, %if.then18.copy_to_user.exit1272_crit_edge
  %n.addr.0.i1271 = phi i32 [ %29, %if.then18.copy_to_user.exit1272_crit_edge ], [ %call.i12.i.i1269, %if.then2.i.i1270 ], [ %29, %if.end.i.i1267.copy_to_user.exit1272_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1271)
  %tobool33.not = icmp eq i32 %n.addr.0.i1271, 0
  %cond34 = select i1 %tobool33.not, i32 0, i32 -14
  br label %cleanup852

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.01779, 1
  %exitcond1782.not = icmp eq i32 %inc, %12
  br i1 %exitcond1782.not, label %for.inc.if.then22.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.then22.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22.critedge

if.then22.critedge:                               ; preds = %for.inc.if.then22.critedge_crit_edge, %for.cond.preheader.if.then22.critedge_crit_edge
  %31 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %33) #9
  br label %cleanup852

sw.bb35:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ip) #9
  %34 = call ptr @memset(ptr %ip, i32 0, i32 32)
  %call36 = call fastcc i32 @amdgpu_hw_ip_info(ptr noundef %add.ptr.i, ptr noundef %data, ptr noundef nonnull %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %sw.bb35
  %35 = tail call i32 @llvm.umin.i32(i32 %4, i32 32)
  call void @__check_object_size(ptr noundef nonnull %ip, i32 noundef %35, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1281 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1281, label %if.end39.copy_to_user.exit1290_crit_edge, label %if.end.i.i1285

if.end39.copy_to_user.exit1290_crit_edge:         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1290

if.end.i.i1285:                                   ; preds = %if.end39
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %35, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1283 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1283)
  %cmp.i6.i1284 = icmp eq i32 %asmresult.i.i1283, 0
  br i1 %cmp.i6.i1284, label %if.then2.i.i1288, label %if.end.i.i1285.copy_to_user.exit1290_crit_edge

if.end.i.i1285.copy_to_user.exit1290_crit_edge:   ; preds = %if.end.i.i1285
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1290

if.then2.i.i1288:                                 ; preds = %if.end.i.i1285
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1286 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ip, i32 noundef %35) #9
  %call.i12.i.i1287 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ip, i32 noundef %35) #9
  br label %copy_to_user.exit1290

copy_to_user.exit1290:                            ; preds = %if.then2.i.i1288, %if.end.i.i1285.copy_to_user.exit1290_crit_edge, %if.end39.copy_to_user.exit1290_crit_edge
  %n.addr.0.i1289 = phi i32 [ %35, %if.end39.copy_to_user.exit1290_crit_edge ], [ %call.i12.i.i1287, %if.then2.i.i1288 ], [ %35, %if.end.i.i1285.copy_to_user.exit1290_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1289)
  %tobool48.not = icmp eq i32 %n.addr.0.i1289, 0
  %cond49 = select i1 %tobool48.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit1290, %sw.bb35.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond49, %copy_to_user.exit1290 ], [ %call36, %sw.bb35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ip) #9
  br label %cleanup852

sw.bb51:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #9
  %37 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %count, align 4
  %38 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %40, label %sw.bb51.cleanup96_crit_edge [
    i32 0, label %sw.bb51.sw.epilog_crit_edge
    i32 1, label %sw.bb51.sw.epilog_crit_edge1797
    i32 2, label %sw.bb55
    i32 3, label %sw.bb56
    i32 4, label %sw.bb57
    i32 5, label %sw.bb58
    i32 6, label %sw.bb51.sw.bb59_crit_edge
    i32 7, label %sw.bb51.sw.bb59_crit_edge1798
    i32 8, label %sw.bb60
  ]

sw.bb51.sw.bb59_crit_edge1798:                    ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb59

sw.bb51.sw.bb59_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb59

sw.bb51.sw.epilog_crit_edge1797:                  ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb51.cleanup96_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

sw.bb55:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb56:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb57:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb58:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb59:                                          ; preds = %sw.bb51.sw.bb59_crit_edge, %sw.bb51.sw.bb59_crit_edge1798
  br label %sw.epilog

sw.bb60:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %add.ptr.i, i32 noundef 13) #9
  %tobool62.not = icmp eq ptr %call61, null
  %cond63 = select i1 %tobool62.not, i32 11, i32 13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb51.sw.epilog_crit_edge, %sw.bb51.sw.epilog_crit_edge1797
  %type.0 = phi i32 [ %cond63, %sw.bb60 ], [ 11, %sw.bb59 ], [ 8, %sw.bb58 ], [ 9, %sw.bb57 ], [ 8, %sw.bb56 ], [ 7, %sw.bb55 ], [ 6, %sw.bb51.sw.epilog_crit_edge ], [ 6, %sw.bb51.sw.epilog_crit_edge1797 ]
  %num_ip_blocks = getelementptr i8, ptr %dev, i32 88296
  %42 = ptrtoint ptr %num_ip_blocks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_ip_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp651775 = icmp sgt i32 %43, 0
  br i1 %cmp651775, label %sw.epilog.for.body67_crit_edge, label %sw.epilog.for.end85_crit_edge

sw.epilog.for.end85_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end85

sw.epilog.for.body67_crit_edge:                   ; preds = %sw.epilog
  br label %for.body67

for.body67:                                       ; preds = %for.inc83.for.body67_crit_edge, %sw.epilog.for.body67_crit_edge
  %i.11776 = phi i32 [ %inc84, %for.inc83.for.body67_crit_edge ], [ 0, %sw.epilog.for.body67_crit_edge ]
  %version = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 122, i32 %i.11776, i32 1
  %44 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %version, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %type.0)
  %cmp70 = icmp eq i32 %47, %type.0
  br i1 %cmp70, label %land.lhs.true72, label %for.body67.for.inc83_crit_edge

for.body67.for.inc83_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83

land.lhs.true72:                                  ; preds = %for.body67
  %arrayidx68 = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 122, i32 %i.11776
  %48 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx68, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool75.not = icmp eq i8 %49, 0
  br i1 %tobool75.not, label %land.lhs.true72.for.inc83_crit_edge, label %land.lhs.true77

land.lhs.true72.for.inc83_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83

land.lhs.true77:                                  ; preds = %land.lhs.true72
  %50 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp78 = icmp eq i32 %51, 0
  br i1 %cmp78, label %if.then80, label %land.lhs.true77.for.inc83_crit_edge

land.lhs.true77.for.inc83_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83

if.then80:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %count, align 4
  br label %for.inc83

for.inc83:                                        ; preds = %if.then80, %land.lhs.true77.for.inc83_crit_edge, %land.lhs.true72.for.inc83_crit_edge, %for.body67.for.inc83_crit_edge
  %inc84 = add nuw nsw i32 %i.11776, 1
  %exitcond.not = icmp eq i32 %inc84, %43
  br i1 %exitcond.not, label %for.inc83.for.end85_crit_edge, label %for.inc83.for.body67_crit_edge

for.inc83.for.body67_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body67

for.inc83.for.end85_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end85

for.end85:                                        ; preds = %for.inc83.for.end85_crit_edge, %sw.epilog.for.end85_crit_edge
  %53 = tail call i32 @llvm.umin.i32(i32 %4, i32 4)
  call void @__check_object_size(ptr noundef nonnull %count, i32 noundef %53, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1299 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1299, label %for.end85.copy_to_user.exit1308_crit_edge, label %if.end.i.i1303

for.end85.copy_to_user.exit1308_crit_edge:        ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1308

if.end.i.i1303:                                   ; preds = %for.end85
  %54 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %53, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1301 = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1301)
  %cmp.i6.i1302 = icmp eq i32 %asmresult.i.i1301, 0
  br i1 %cmp.i6.i1302, label %if.then2.i.i1306, label %if.end.i.i1303.copy_to_user.exit1308_crit_edge

if.end.i.i1303.copy_to_user.exit1308_crit_edge:   ; preds = %if.end.i.i1303
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1308

if.then2.i.i1306:                                 ; preds = %if.end.i.i1303
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1304 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %count, i32 noundef %53) #9
  %call.i12.i.i1305 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %count, i32 noundef %53) #9
  br label %copy_to_user.exit1308

copy_to_user.exit1308:                            ; preds = %if.then2.i.i1306, %if.end.i.i1303.copy_to_user.exit1308_crit_edge, %for.end85.copy_to_user.exit1308_crit_edge
  %n.addr.0.i1307 = phi i32 [ %53, %for.end85.copy_to_user.exit1308_crit_edge ], [ %call.i12.i.i1305, %if.then2.i.i1306 ], [ %53, %if.end.i.i1303.copy_to_user.exit1308_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1307)
  %tobool94.not = icmp eq i32 %n.addr.0.i1307, 0
  %cond95 = select i1 %tobool94.not, i32 0, i32 -14
  br label %cleanup96

cleanup96:                                        ; preds = %copy_to_user.exit1308, %sw.bb51.cleanup96_crit_edge
  %retval.1 = phi i32 [ %cond95, %copy_to_user.exit1308 ], [ -22, %sw.bb51.cleanup96_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #9
  br label %cleanup852

sw.bb98:                                          ; preds = %if.end
  %funcs = getelementptr i8, ptr %dev, i32 44212
  %55 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %funcs, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call99 = tail call i64 %58(ptr noundef %add.ptr.i) #9
  %59 = ptrtoint ptr %ui64 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %call99, ptr %ui64, align 8
  %60 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %ui64, i32 noundef %60, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1317 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1317, label %sw.bb98.copy_to_user.exit1326_crit_edge, label %if.end.i.i1321

sw.bb98.copy_to_user.exit1326_crit_edge:          ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1326

if.end.i.i1321:                                   ; preds = %sw.bb98
  %61 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %60, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1319 = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1319)
  %cmp.i6.i1320 = icmp eq i32 %asmresult.i.i1319, 0
  br i1 %cmp.i6.i1320, label %if.then2.i.i1324, label %if.end.i.i1321.copy_to_user.exit1326_crit_edge

if.end.i.i1321.copy_to_user.exit1326_crit_edge:   ; preds = %if.end.i.i1321
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1326

if.then2.i.i1324:                                 ; preds = %if.end.i.i1321
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1322 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui64, i32 noundef %60) #9
  %call.i12.i.i1323 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui64, i32 noundef %60) #9
  br label %copy_to_user.exit1326

copy_to_user.exit1326:                            ; preds = %if.then2.i.i1324, %if.end.i.i1321.copy_to_user.exit1326_crit_edge, %sw.bb98.copy_to_user.exit1326_crit_edge
  %n.addr.0.i1325 = phi i32 [ %60, %sw.bb98.copy_to_user.exit1326_crit_edge ], [ %call.i12.i.i1323, %if.then2.i.i1324 ], [ %60, %if.end.i.i1321.copy_to_user.exit1326_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1325)
  %tobool108.not = icmp eq i32 %n.addr.0.i1325, 0
  %cond109 = select i1 %tobool108.not, i32 0, i32 -14
  br label %cleanup852

sw.bb110:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fw_info) #9
  %62 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %fw_info, align 4, !annotation !154
  %63 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, ptr %fw_info, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %63, align 4, !annotation !154
  %ip_instance = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3, i32 0, i32 1
  %65 = ptrtoint ptr %ip_instance to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ip_instance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp112.not = icmp eq i32 %66, 0
  br i1 %cmp112.not, label %if.end115, label %sw.bb110.cleanup130_crit_edge

sw.bb110.cleanup130_crit_edge:                    ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup130

if.end115:                                        ; preds = %sw.bb110
  %67 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3
  %call116 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef %67, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end115.cleanup130_crit_edge

if.end115.cleanup130_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup130

if.end119:                                        ; preds = %if.end115
  %68 = call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %fw_info, i32 noundef %68, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1335 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1335, label %if.end119.copy_to_user.exit1344_crit_edge, label %if.end.i.i1339

if.end119.copy_to_user.exit1344_crit_edge:        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1344

if.end.i.i1339:                                   ; preds = %if.end119
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %68, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1337 = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1337)
  %cmp.i6.i1338 = icmp eq i32 %asmresult.i.i1337, 0
  br i1 %cmp.i6.i1338, label %if.then2.i.i1342, label %if.end.i.i1339.copy_to_user.exit1344_crit_edge

if.end.i.i1339.copy_to_user.exit1344_crit_edge:   ; preds = %if.end.i.i1339
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1344

if.then2.i.i1342:                                 ; preds = %if.end.i.i1339
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1340 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fw_info, i32 noundef %68) #9
  %call.i12.i.i1341 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %fw_info, i32 noundef %68) #9
  br label %copy_to_user.exit1344

copy_to_user.exit1344:                            ; preds = %if.then2.i.i1342, %if.end.i.i1339.copy_to_user.exit1344_crit_edge, %if.end119.copy_to_user.exit1344_crit_edge
  %n.addr.0.i1343 = phi i32 [ %68, %if.end119.copy_to_user.exit1344_crit_edge ], [ %call.i12.i.i1341, %if.then2.i.i1342 ], [ %68, %if.end.i.i1339.copy_to_user.exit1344_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1343)
  %tobool128.not = icmp eq i32 %n.addr.0.i1343, 0
  %cond129 = select i1 %tobool128.not, i32 0, i32 -14
  br label %cleanup130

cleanup130:                                       ; preds = %copy_to_user.exit1344, %if.end115.cleanup130_crit_edge, %sw.bb110.cleanup130_crit_edge
  %retval.2 = phi i32 [ %cond129, %copy_to_user.exit1344 ], [ -22, %sw.bb110.cleanup130_crit_edge ], [ %call116, %if.end115.cleanup130_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw_info) #9
  br label %cleanup852

sw.bb132:                                         ; preds = %if.end
  %num_bytes_moved = getelementptr i8, ptr %dev, i32 21872
  %call.i.i1345 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_bytes_moved, i32 noundef 8) #9
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %num_bytes_moved) #9
  %70 = ptrtoint ptr %ui64 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call.i, ptr %ui64, align 8
  %71 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %ui64, i32 noundef %71, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1354 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1354, label %sw.bb132.copy_to_user.exit1363_crit_edge, label %if.end.i.i1358

sw.bb132.copy_to_user.exit1363_crit_edge:         ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1363

if.end.i.i1358:                                   ; preds = %sw.bb132
  %72 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %71, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1356 = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1356)
  %cmp.i6.i1357 = icmp eq i32 %asmresult.i.i1356, 0
  br i1 %cmp.i6.i1357, label %if.then2.i.i1361, label %if.end.i.i1358.copy_to_user.exit1363_crit_edge

if.end.i.i1358.copy_to_user.exit1363_crit_edge:   ; preds = %if.end.i.i1358
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1363

if.then2.i.i1361:                                 ; preds = %if.end.i.i1358
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1359 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui64, i32 noundef %71) #9
  %call.i12.i.i1360 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui64, i32 noundef %71) #9
  br label %copy_to_user.exit1363

copy_to_user.exit1363:                            ; preds = %if.then2.i.i1361, %if.end.i.i1358.copy_to_user.exit1363_crit_edge, %sw.bb132.copy_to_user.exit1363_crit_edge
  %n.addr.0.i1362 = phi i32 [ %71, %sw.bb132.copy_to_user.exit1363_crit_edge ], [ %call.i12.i.i1360, %if.then2.i.i1361 ], [ %71, %if.end.i.i1358.copy_to_user.exit1363_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1362)
  %tobool142.not = icmp eq i32 %n.addr.0.i1362, 0
  %cond143 = select i1 %tobool142.not, i32 0, i32 -14
  br label %cleanup852

sw.bb144:                                         ; preds = %if.end
  %num_evictions = getelementptr i8, ptr %dev, i32 21880
  %call.i.i1364 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_evictions, i32 noundef 8) #9
  %call.i1365 = tail call i64 @generic_atomic64_read(ptr noundef %num_evictions) #9
  %73 = ptrtoint ptr %ui64 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %call.i1365, ptr %ui64, align 8
  %74 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %ui64, i32 noundef %74, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1374 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1374, label %sw.bb144.copy_to_user.exit1383_crit_edge, label %if.end.i.i1378

sw.bb144.copy_to_user.exit1383_crit_edge:         ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1383

if.end.i.i1378:                                   ; preds = %sw.bb144
  %75 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %74, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1376 = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1376)
  %cmp.i6.i1377 = icmp eq i32 %asmresult.i.i1376, 0
  br i1 %cmp.i6.i1377, label %if.then2.i.i1381, label %if.end.i.i1378.copy_to_user.exit1383_crit_edge

if.end.i.i1378.copy_to_user.exit1383_crit_edge:   ; preds = %if.end.i.i1378
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1383

if.then2.i.i1381:                                 ; preds = %if.end.i.i1378
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1379 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui64, i32 noundef %74) #9
  %call.i12.i.i1380 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui64, i32 noundef %74) #9
  br label %copy_to_user.exit1383

copy_to_user.exit1383:                            ; preds = %if.then2.i.i1381, %if.end.i.i1378.copy_to_user.exit1383_crit_edge, %sw.bb144.copy_to_user.exit1383_crit_edge
  %n.addr.0.i1382 = phi i32 [ %74, %sw.bb144.copy_to_user.exit1383_crit_edge ], [ %call.i12.i.i1380, %if.then2.i.i1381 ], [ %74, %if.end.i.i1378.copy_to_user.exit1383_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1382)
  %tobool154.not = icmp eq i32 %n.addr.0.i1382, 0
  %cond155 = select i1 %tobool154.not, i32 0, i32 -14
  br label %cleanup852

sw.bb156:                                         ; preds = %if.end
  %num_vram_cpu_page_faults = getelementptr i8, ptr %dev, i32 21888
  %call.i.i1384 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_vram_cpu_page_faults, i32 noundef 8) #9
  %call.i1385 = tail call i64 @generic_atomic64_read(ptr noundef %num_vram_cpu_page_faults) #9
  %76 = ptrtoint ptr %ui64 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %call.i1385, ptr %ui64, align 8
  %77 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %ui64, i32 noundef %77, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1394 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1394, label %sw.bb156.copy_to_user.exit1403_crit_edge, label %if.end.i.i1398

sw.bb156.copy_to_user.exit1403_crit_edge:         ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1403

if.end.i.i1398:                                   ; preds = %sw.bb156
  %78 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %77, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1396 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1396)
  %cmp.i6.i1397 = icmp eq i32 %asmresult.i.i1396, 0
  br i1 %cmp.i6.i1397, label %if.then2.i.i1401, label %if.end.i.i1398.copy_to_user.exit1403_crit_edge

if.end.i.i1398.copy_to_user.exit1403_crit_edge:   ; preds = %if.end.i.i1398
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1403

if.then2.i.i1401:                                 ; preds = %if.end.i.i1398
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1399 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui64, i32 noundef %77) #9
  %call.i12.i.i1400 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui64, i32 noundef %77) #9
  br label %copy_to_user.exit1403

copy_to_user.exit1403:                            ; preds = %if.then2.i.i1401, %if.end.i.i1398.copy_to_user.exit1403_crit_edge, %sw.bb156.copy_to_user.exit1403_crit_edge
  %n.addr.0.i1402 = phi i32 [ %77, %sw.bb156.copy_to_user.exit1403_crit_edge ], [ %call.i12.i.i1400, %if.then2.i.i1401 ], [ %77, %if.end.i.i1398.copy_to_user.exit1403_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1402)
  %tobool166.not = icmp eq i32 %n.addr.0.i1402, 0
  %cond167 = select i1 %tobool166.not, i32 0, i32 -14
  br label %cleanup852

sw.bb168:                                         ; preds = %if.end
  %vram_mgr = getelementptr i8, ptr %dev, i32 20944
  %call169 = tail call i64 @amdgpu_vram_mgr_usage(ptr noundef %vram_mgr) #9
  %79 = ptrtoint ptr %ui64 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %call169, ptr %ui64, align 8
  %80 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %ui64, i32 noundef %80, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1412 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1412, label %sw.bb168.copy_to_user.exit1421_crit_edge, label %if.end.i.i1416

sw.bb168.copy_to_user.exit1421_crit_edge:         ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1421

if.end.i.i1416:                                   ; preds = %sw.bb168
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %80, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1414 = extractvalue { i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1414)
  %cmp.i6.i1415 = icmp eq i32 %asmresult.i.i1414, 0
  br i1 %cmp.i6.i1415, label %if.then2.i.i1419, label %if.end.i.i1416.copy_to_user.exit1421_crit_edge

if.end.i.i1416.copy_to_user.exit1421_crit_edge:   ; preds = %if.end.i.i1416
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1421

if.then2.i.i1419:                                 ; preds = %if.end.i.i1416
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1417 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui64, i32 noundef %80) #9
  %call.i12.i.i1418 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui64, i32 noundef %80) #9
  br label %copy_to_user.exit1421

copy_to_user.exit1421:                            ; preds = %if.then2.i.i1419, %if.end.i.i1416.copy_to_user.exit1421_crit_edge, %sw.bb168.copy_to_user.exit1421_crit_edge
  %n.addr.0.i1420 = phi i32 [ %80, %sw.bb168.copy_to_user.exit1421_crit_edge ], [ %call.i12.i.i1418, %if.then2.i.i1419 ], [ %80, %if.end.i.i1416.copy_to_user.exit1421_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1420)
  %tobool178.not = icmp eq i32 %n.addr.0.i1420, 0
  %cond179 = select i1 %tobool178.not, i32 0, i32 -14
  br label %cleanup852

sw.bb180:                                         ; preds = %if.end
  %vram_mgr182 = getelementptr i8, ptr %dev, i32 20944
  %call183 = tail call i64 @amdgpu_vram_mgr_vis_usage(ptr noundef %vram_mgr182) #9
  %82 = ptrtoint ptr %ui64 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %call183, ptr %ui64, align 8
  %83 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %ui64, i32 noundef %83, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1430 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1430, label %sw.bb180.copy_to_user.exit1439_crit_edge, label %if.end.i.i1434

sw.bb180.copy_to_user.exit1439_crit_edge:         ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1439

if.end.i.i1434:                                   ; preds = %sw.bb180
  %84 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %83, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1432 = extractvalue { i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1432)
  %cmp.i6.i1433 = icmp eq i32 %asmresult.i.i1432, 0
  br i1 %cmp.i6.i1433, label %if.then2.i.i1437, label %if.end.i.i1434.copy_to_user.exit1439_crit_edge

if.end.i.i1434.copy_to_user.exit1439_crit_edge:   ; preds = %if.end.i.i1434
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1439

if.then2.i.i1437:                                 ; preds = %if.end.i.i1434
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1435 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui64, i32 noundef %83) #9
  %call.i12.i.i1436 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui64, i32 noundef %83) #9
  br label %copy_to_user.exit1439

copy_to_user.exit1439:                            ; preds = %if.then2.i.i1437, %if.end.i.i1434.copy_to_user.exit1439_crit_edge, %sw.bb180.copy_to_user.exit1439_crit_edge
  %n.addr.0.i1438 = phi i32 [ %83, %sw.bb180.copy_to_user.exit1439_crit_edge ], [ %call.i12.i.i1436, %if.then2.i.i1437 ], [ %83, %if.end.i.i1434.copy_to_user.exit1439_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1438)
  %tobool192.not = icmp eq i32 %n.addr.0.i1438, 0
  %cond193 = select i1 %tobool192.not, i32 0, i32 -14
  br label %cleanup852

sw.bb194:                                         ; preds = %if.end
  %gtt_mgr = getelementptr i8, ptr %dev, i32 21280
  %call196 = tail call i64 @amdgpu_gtt_mgr_usage(ptr noundef %gtt_mgr) #9
  %85 = ptrtoint ptr %ui64 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %call196, ptr %ui64, align 8
  %86 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %ui64, i32 noundef %86, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1448 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1448, label %sw.bb194.copy_to_user.exit1457_crit_edge, label %if.end.i.i1452

sw.bb194.copy_to_user.exit1457_crit_edge:         ; preds = %sw.bb194
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1457

if.end.i.i1452:                                   ; preds = %sw.bb194
  %87 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %86, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1450 = extractvalue { i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1450)
  %cmp.i6.i1451 = icmp eq i32 %asmresult.i.i1450, 0
  br i1 %cmp.i6.i1451, label %if.then2.i.i1455, label %if.end.i.i1452.copy_to_user.exit1457_crit_edge

if.end.i.i1452.copy_to_user.exit1457_crit_edge:   ; preds = %if.end.i.i1452
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1457

if.then2.i.i1455:                                 ; preds = %if.end.i.i1452
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1453 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui64, i32 noundef %86) #9
  %call.i12.i.i1454 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui64, i32 noundef %86) #9
  br label %copy_to_user.exit1457

copy_to_user.exit1457:                            ; preds = %if.then2.i.i1455, %if.end.i.i1452.copy_to_user.exit1457_crit_edge, %sw.bb194.copy_to_user.exit1457_crit_edge
  %n.addr.0.i1456 = phi i32 [ %86, %sw.bb194.copy_to_user.exit1457_crit_edge ], [ %call.i12.i.i1454, %if.then2.i.i1455 ], [ %86, %if.end.i.i1452.copy_to_user.exit1457_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1456)
  %tobool205.not = icmp eq i32 %n.addr.0.i1456, 0
  %cond206 = select i1 %tobool205.not, i32 0, i32 -14
  br label %cleanup852

sw.bb207:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gds_info) #9
  %88 = getelementptr inbounds %struct.drm_amdgpu_info_gds, ptr %gds_info, i32 0, i32 1
  %89 = getelementptr inbounds %struct.drm_amdgpu_info_gds, ptr %gds_info, i32 0, i32 2
  %90 = getelementptr inbounds %struct.drm_amdgpu_info_gds, ptr %gds_info, i32 0, i32 4
  %91 = getelementptr inbounds %struct.drm_amdgpu_info_gds, ptr %gds_info, i32 0, i32 6
  %92 = call ptr @memset(ptr %gds_info, i32 0, i32 32)
  %gds = getelementptr i8, ptr %dev, i32 82768
  %93 = ptrtoint ptr %gds to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %gds, align 8
  %95 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %88, align 4
  %96 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %94, ptr %89, align 4
  %gws_size = getelementptr i8, ptr %dev, i32 82772
  %97 = ptrtoint ptr %gws_size to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %gws_size, align 4
  %99 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %90, align 4
  %oa_size = getelementptr i8, ptr %dev, i32 82776
  %100 = ptrtoint ptr %oa_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %oa_size, align 8
  %102 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %91, align 4
  %103 = tail call i32 @llvm.umin.i32(i32 %4, i32 32)
  call void @__check_object_size(ptr noundef nonnull %gds_info, i32 noundef %103, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1466 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1466, label %sw.bb207.copy_to_user.exit1475_crit_edge, label %if.end.i.i1470

sw.bb207.copy_to_user.exit1475_crit_edge:         ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1475

if.end.i.i1470:                                   ; preds = %sw.bb207
  %104 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %103, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1468 = extractvalue { i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1468)
  %cmp.i6.i1469 = icmp eq i32 %asmresult.i.i1468, 0
  br i1 %cmp.i6.i1469, label %if.then2.i.i1473, label %if.end.i.i1470.copy_to_user.exit1475_crit_edge

if.end.i.i1470.copy_to_user.exit1475_crit_edge:   ; preds = %if.end.i.i1470
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1475

if.then2.i.i1473:                                 ; preds = %if.end.i.i1470
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1471 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %gds_info, i32 noundef %103) #9
  %call.i12.i.i1472 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %gds_info, i32 noundef %103) #9
  br label %copy_to_user.exit1475

copy_to_user.exit1475:                            ; preds = %if.then2.i.i1473, %if.end.i.i1470.copy_to_user.exit1475_crit_edge, %sw.bb207.copy_to_user.exit1475_crit_edge
  %n.addr.0.i1474 = phi i32 [ %103, %sw.bb207.copy_to_user.exit1475_crit_edge ], [ %call.i12.i.i1472, %if.then2.i.i1473 ], [ %103, %if.end.i.i1470.copy_to_user.exit1475_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1474)
  %tobool220.not = icmp eq i32 %n.addr.0.i1474, 0
  %cond221 = select i1 %tobool220.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gds_info) #9
  br label %cleanup852

sw.bb223:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vram_gtt) #9
  %105 = getelementptr inbounds %struct.drm_amdgpu_info_vram_gtt, ptr %vram_gtt, i32 0, i32 1
  %106 = getelementptr inbounds %struct.drm_amdgpu_info_vram_gtt, ptr %vram_gtt, i32 0, i32 2
  %real_vram_size = getelementptr i8, ptr %dev, i32 3864
  %107 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %real_vram_size, align 8
  %vram_pin_size = getelementptr i8, ptr %dev, i32 88904
  %call.i.i1476 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_pin_size, i32 noundef 8) #9
  %call.i1477 = tail call i64 @generic_atomic64_read(ptr noundef %vram_pin_size) #9
  %sub = add i64 %108, -8388608
  %sub225 = sub i64 %sub, %call.i1477
  %109 = ptrtoint ptr %vram_gtt to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %sub225, ptr %vram_gtt, align 8
  %visible_vram_size = getelementptr i8, ptr %dev, i32 3768
  %110 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %visible_vram_size, align 8
  %visible_pin_size = getelementptr i8, ptr %dev, i32 88912
  %call.i.i1478 = tail call zeroext i1 @__kasan_check_read(ptr noundef %visible_pin_size, i32 noundef 8) #9
  %call.i1479 = tail call i64 @generic_atomic64_read(ptr noundef %visible_pin_size) #9
  %sub228 = sub i64 %111, %call.i1479
  %112 = tail call i64 @llvm.umin.i64(i64 %sub228, i64 %sub225)
  %113 = ptrtoint ptr %105 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %105, align 8
  %arrayidx.i = getelementptr i8, ptr %dev, i32 17852
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i, align 4
  %size239 = getelementptr inbounds %struct.ttm_resource_manager, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %size239 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %size239, align 8
  %mul = shl i64 %117, 12
  %gart_pin_size = getelementptr i8, ptr %dev, i32 88920
  %call.i.i1480 = tail call zeroext i1 @__kasan_check_read(ptr noundef %gart_pin_size, i32 noundef 8) #9
  %call.i1481 = tail call i64 @generic_atomic64_read(ptr noundef %gart_pin_size) #9
  %sub243 = sub i64 %mul, %call.i1481
  %118 = ptrtoint ptr %106 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %sub243, ptr %106, align 8
  %119 = tail call i32 @llvm.umin.i32(i32 %4, i32 24)
  call void @__check_object_size(ptr noundef nonnull %vram_gtt, i32 noundef %119, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1490 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1490, label %sw.bb223.copy_to_user.exit1499_crit_edge, label %if.end.i.i1494

sw.bb223.copy_to_user.exit1499_crit_edge:         ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1499

if.end.i.i1494:                                   ; preds = %sw.bb223
  %120 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %119, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1492 = extractvalue { i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1492)
  %cmp.i6.i1493 = icmp eq i32 %asmresult.i.i1492, 0
  br i1 %cmp.i6.i1493, label %if.then2.i.i1497, label %if.end.i.i1494.copy_to_user.exit1499_crit_edge

if.end.i.i1494.copy_to_user.exit1499_crit_edge:   ; preds = %if.end.i.i1494
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1499

if.then2.i.i1497:                                 ; preds = %if.end.i.i1494
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1495 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vram_gtt, i32 noundef %119) #9
  %call.i12.i.i1496 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %vram_gtt, i32 noundef %119) #9
  br label %copy_to_user.exit1499

copy_to_user.exit1499:                            ; preds = %if.then2.i.i1497, %if.end.i.i1494.copy_to_user.exit1499_crit_edge, %sw.bb223.copy_to_user.exit1499_crit_edge
  %n.addr.0.i1498 = phi i32 [ %119, %sw.bb223.copy_to_user.exit1499_crit_edge ], [ %call.i12.i.i1496, %if.then2.i.i1497 ], [ %119, %if.end.i.i1494.copy_to_user.exit1499_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1498)
  %tobool252.not = icmp eq i32 %n.addr.0.i1498, 0
  %cond253 = select i1 %tobool252.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vram_gtt) #9
  br label %cleanup852

sw.bb255:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %mem) #9
  %arrayidx.i1737 = getelementptr i8, ptr %dev, i32 17852
  %121 = ptrtoint ptr %arrayidx.i1737 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i1737, align 4
  %real_vram_size260 = getelementptr i8, ptr %dev, i32 3864
  %123 = ptrtoint ptr %real_vram_size260 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %real_vram_size260, align 8
  %125 = ptrtoint ptr %mem to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %mem, align 8
  %vram_pin_size263 = getelementptr i8, ptr %dev, i32 88904
  %call.i.i1500 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_pin_size263, i32 noundef 8) #9
  %call.i1501 = tail call i64 @generic_atomic64_read(ptr noundef %vram_pin_size263) #9
  %sub265 = add i64 %124, -8388608
  %sub266 = sub i64 %sub265, %call.i1501
  %usable_heap_size = getelementptr inbounds %struct.drm_amdgpu_heap_info, ptr %mem, i32 0, i32 1
  %126 = ptrtoint ptr %usable_heap_size to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %sub266, ptr %usable_heap_size, align 8
  %vram_mgr269 = getelementptr i8, ptr %dev, i32 20944
  %call270 = tail call i64 @amdgpu_vram_mgr_usage(ptr noundef %vram_mgr269) #9
  %heap_usage = getelementptr inbounds %struct.drm_amdgpu_heap_info, ptr %mem, i32 0, i32 2
  %127 = ptrtoint ptr %heap_usage to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %call270, ptr %heap_usage, align 8
  %mul274 = mul i64 %sub266, 3
  %div1232 = lshr i64 %mul274, 2
  %max_allocation = getelementptr inbounds %struct.drm_amdgpu_heap_info, ptr %mem, i32 0, i32 3
  %128 = ptrtoint ptr %max_allocation to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %div1232, ptr %max_allocation, align 8
  %visible_vram_size277 = getelementptr i8, ptr %dev, i32 3768
  %129 = ptrtoint ptr %visible_vram_size277 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %visible_vram_size277, align 8
  %cpu_accessible_vram = getelementptr inbounds %struct.drm_amdgpu_memory_info, ptr %mem, i32 0, i32 1
  %131 = ptrtoint ptr %cpu_accessible_vram to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %cpu_accessible_vram, align 8
  %visible_pin_size281 = getelementptr i8, ptr %dev, i32 88912
  %call.i.i1502 = tail call zeroext i1 @__kasan_check_read(ptr noundef %visible_pin_size281, i32 noundef 8) #9
  %call.i1503 = tail call i64 @generic_atomic64_read(ptr noundef %visible_pin_size281) #9
  %sub283 = sub i64 %130, %call.i1503
  %132 = tail call i64 @llvm.umin.i64(i64 %sub283, i64 %sub266)
  %usable_heap_size294 = getelementptr inbounds %struct.drm_amdgpu_memory_info, ptr %mem, i32 0, i32 1, i32 1
  %133 = ptrtoint ptr %usable_heap_size294 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %usable_heap_size294, align 8
  %call297 = tail call i64 @amdgpu_vram_mgr_vis_usage(ptr noundef %vram_mgr269) #9
  %heap_usage299 = getelementptr inbounds %struct.drm_amdgpu_memory_info, ptr %mem, i32 0, i32 1, i32 2
  %134 = ptrtoint ptr %heap_usage299 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %call297, ptr %heap_usage299, align 8
  %mul302 = mul i64 %132, 3
  %div3031233 = lshr i64 %mul302, 2
  %max_allocation305 = getelementptr inbounds %struct.drm_amdgpu_memory_info, ptr %mem, i32 0, i32 1, i32 3
  %135 = ptrtoint ptr %max_allocation305 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %div3031233, ptr %max_allocation305, align 8
  %size306 = getelementptr inbounds %struct.ttm_resource_manager, ptr %122, i32 0, i32 2
  %136 = ptrtoint ptr %size306 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %size306, align 8
  %gtt = getelementptr inbounds %struct.drm_amdgpu_memory_info, ptr %mem, i32 0, i32 2
  %mul310 = shl i64 %137, 12
  %138 = ptrtoint ptr %gtt to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %mul310, ptr %gtt, align 8
  %gart_pin_size313 = getelementptr i8, ptr %dev, i32 88920
  %call.i.i1504 = tail call zeroext i1 @__kasan_check_read(ptr noundef %gart_pin_size313, i32 noundef 8) #9
  %call.i1505 = tail call i64 @generic_atomic64_read(ptr noundef %gart_pin_size313) #9
  %sub315 = sub i64 %mul310, %call.i1505
  %usable_heap_size317 = getelementptr inbounds %struct.drm_amdgpu_memory_info, ptr %mem, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %usable_heap_size317 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %sub315, ptr %usable_heap_size317, align 8
  %gtt_mgr319 = getelementptr i8, ptr %dev, i32 21280
  %call320 = tail call i64 @amdgpu_gtt_mgr_usage(ptr noundef %gtt_mgr319) #9
  %heap_usage322 = getelementptr inbounds %struct.drm_amdgpu_memory_info, ptr %mem, i32 0, i32 2, i32 2
  %140 = ptrtoint ptr %heap_usage322 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %call320, ptr %heap_usage322, align 8
  %mul325 = mul i64 %sub315, 3
  %div3261234 = lshr i64 %mul325, 2
  %max_allocation328 = getelementptr inbounds %struct.drm_amdgpu_memory_info, ptr %mem, i32 0, i32 2, i32 3
  %141 = ptrtoint ptr %max_allocation328 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %div3261234, ptr %max_allocation328, align 8
  %142 = tail call i32 @llvm.umin.i32(i32 %4, i32 96)
  call void @__check_object_size(ptr noundef nonnull %mem, i32 noundef %142, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1514 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1514, label %sw.bb255.copy_to_user.exit1523_crit_edge, label %if.end.i.i1518

sw.bb255.copy_to_user.exit1523_crit_edge:         ; preds = %sw.bb255
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1523

if.end.i.i1518:                                   ; preds = %sw.bb255
  %143 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %142, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1516 = extractvalue { i32, i32 } %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1516)
  %cmp.i6.i1517 = icmp eq i32 %asmresult.i.i1516, 0
  br i1 %cmp.i6.i1517, label %if.then2.i.i1521, label %if.end.i.i1518.copy_to_user.exit1523_crit_edge

if.end.i.i1518.copy_to_user.exit1523_crit_edge:   ; preds = %if.end.i.i1518
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1523

if.then2.i.i1521:                                 ; preds = %if.end.i.i1518
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1519 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mem, i32 noundef %142) #9
  %call.i12.i.i1520 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %mem, i32 noundef %142) #9
  br label %copy_to_user.exit1523

copy_to_user.exit1523:                            ; preds = %if.then2.i.i1521, %if.end.i.i1518.copy_to_user.exit1523_crit_edge, %sw.bb255.copy_to_user.exit1523_crit_edge
  %n.addr.0.i1522 = phi i32 [ %142, %sw.bb255.copy_to_user.exit1523_crit_edge ], [ %call.i12.i.i1520, %if.then2.i.i1521 ], [ %142, %if.end.i.i1518.copy_to_user.exit1523_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1522)
  %tobool337.not = icmp eq i32 %n.addr.0.i1522, 0
  %cond338 = select i1 %tobool337.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mem) #9
  br label %cleanup852

sw.bb341:                                         ; preds = %if.end
  %144 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3
  %instance = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3, i32 0, i32 2
  %145 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %instance, align 8
  %and = and i32 %146, 255
  %shr343 = lshr i32 %146, 8
  %and344 = and i32 %shr343, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and)
  %cmp345 = icmp eq i32 %and, 255
  br i1 %cmp345, label %sw.bb341.if.end352_crit_edge, label %if.else

sw.bb341.if.end352_crit_edge:                     ; preds = %sw.bb341
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end352

if.else:                                          ; preds = %sw.bb341
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp348 = icmp ugt i32 %and, 3
  br i1 %cmp348, label %if.else.cleanup852_crit_edge, label %if.else.if.end352_crit_edge

if.else.if.end352_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end352

if.else.cleanup852_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end352:                                        ; preds = %if.else.if.end352_crit_edge, %sw.bb341.if.end352_crit_edge
  %se_num.0 = phi i32 [ %and, %if.else.if.end352_crit_edge ], [ -1, %sw.bb341.if.end352_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and344)
  %cmp353 = icmp eq i32 %and344, 255
  br i1 %cmp353, label %if.end352.if.end361_crit_edge, label %if.else356

if.end352.if.end361_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end361

if.else356:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and344)
  %cmp357 = icmp ugt i32 %and344, 1
  br i1 %cmp357, label %if.else356.cleanup852_crit_edge, label %if.else356.if.end361_crit_edge

if.else356.if.end361_crit_edge:                   ; preds = %if.else356
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end361

if.else356.cleanup852_crit_edge:                  ; preds = %if.else356
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end361:                                        ; preds = %if.else356.if.end361_crit_edge, %if.end352.if.end361_crit_edge
  %sh_num.0 = phi i32 [ %and344, %if.else356.if.end361_crit_edge ], [ -1, %if.end352.if.end361_crit_edge ]
  %count362 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3, i32 0, i32 1
  %147 = ptrtoint ptr %count362 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %count362, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %148)
  %cmp363 = icmp ugt i32 %148, 128
  br i1 %cmp363, label %if.end361.cleanup852_crit_edge, label %if.end7.i

if.end361.cleanup852_crit_edge:                   ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end7.i:                                        ; preds = %if.end361
  %149 = shl nuw nsw i32 %148, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %149, i32 noundef 3264) #14
  %tobool369.not = icmp eq ptr %call8.i, null
  br i1 %tobool369.not, label %if.end7.i.cleanup852_crit_edge, label %if.end371

if.end7.i.cleanup852_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end371:                                        ; preds = %if.end7.i
  %150 = ptrtoint ptr %count362 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %count362, align 4
  %mul373 = shl i32 %151, 2
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %add.ptr.i, i1 noundef zeroext false) #9
  %152 = ptrtoint ptr %count362 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %count362, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp3761773.not = icmp eq i32 %153, 0
  br i1 %cmp3761773.not, label %if.end371.for.end388_crit_edge, label %for.body378.lr.ph

if.end371.for.end388_crit_edge:                   ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end388

for.body378.lr.ph:                                ; preds = %if.end371
  %asic_funcs = getelementptr i8, ptr %dev, i32 2388
  br label %for.body378

for.body378:                                      ; preds = %for.inc386.for.body378_crit_edge, %for.body378.lr.ph
  %i.21774 = phi i32 [ 0, %for.body378.lr.ph ], [ %inc387, %for.inc386.for.body378_crit_edge ]
  %154 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %asic_funcs, align 4
  %read_register = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %read_register to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read_register, align 4
  %158 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %144, align 8
  %add = add i32 %159, %i.21774
  %arrayidx379 = getelementptr i32, ptr %call8.i, i32 %i.21774
  %call380 = tail call i32 %157(ptr noundef %add.ptr.i, i32 noundef %se_num.0, i32 noundef %sh_num.0, i32 noundef %add, ptr noundef %arrayidx379) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call380)
  %tobool381.not = icmp eq i32 %call380, 0
  br i1 %tobool381.not, label %for.inc386, label %if.then382

if.then382:                                       ; preds = %for.body378
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %144, align 8
  %add384 = add i32 %161, %i.21774
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %add384) #9
  tail call void @kfree(ptr noundef nonnull %call8.i) #9
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %add.ptr.i, i1 noundef zeroext true) #9
  br label %cleanup852

for.inc386:                                       ; preds = %for.body378
  %inc387 = add nuw i32 %i.21774, 1
  %162 = ptrtoint ptr %count362 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %count362, align 4
  %cmp376 = icmp ult i32 %inc387, %163
  br i1 %cmp376, label %for.inc386.for.body378_crit_edge, label %for.inc386.for.end388_crit_edge

for.inc386.for.end388_crit_edge:                  ; preds = %for.inc386
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end388

for.inc386.for.body378_crit_edge:                 ; preds = %for.inc386
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body378

for.end388:                                       ; preds = %for.inc386.for.end388_crit_edge, %if.end371.for.end388_crit_edge
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %add.ptr.i, i1 noundef zeroext true) #9
  %164 = tail call i32 @llvm.umin.i32(i32 %4, i32 %mul373)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp9.i.i = icmp slt i32 %164, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i1531

land.rhs16.i.i:                                   ; preds = %for.end388
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_to_user.exit1541.thread_crit_edge, label %if.then27.i.i, !prof !155

land.rhs16.i.i.copy_to_user.exit1541.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1541.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_to_user.exit1541.thread

if.then.i.i.i1531:                                ; preds = %for.end388
  tail call void @__check_object_size(ptr noundef nonnull %call8.i, i32 noundef %164, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1532 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1532, label %if.then.i.i.i1531.copy_to_user.exit1541_crit_edge, label %if.end.i.i1536

if.then.i.i.i1531.copy_to_user.exit1541_crit_edge: ; preds = %if.then.i.i.i1531
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1541

if.end.i.i1536:                                   ; preds = %if.then.i.i.i1531
  %165 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %164, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1534 = extractvalue { i32, i32 } %165, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1534)
  %cmp.i6.i1535 = icmp eq i32 %asmresult.i.i1534, 0
  br i1 %cmp.i6.i1535, label %if.then2.i.i1539, label %if.end.i.i1536.copy_to_user.exit1541_crit_edge

if.end.i.i1536.copy_to_user.exit1541_crit_edge:   ; preds = %if.end.i.i1536
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1541

if.then2.i.i1539:                                 ; preds = %if.end.i.i1536
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1537 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call8.i, i32 noundef %164) #9
  %call.i12.i.i1538 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %call8.i, i32 noundef %164) #9
  br label %copy_to_user.exit1541

copy_to_user.exit1541.thread:                     ; preds = %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit1541.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i) #9
  br label %cleanup852

copy_to_user.exit1541:                            ; preds = %if.then2.i.i1539, %if.end.i.i1536.copy_to_user.exit1541_crit_edge, %if.then.i.i.i1531.copy_to_user.exit1541_crit_edge
  %n.addr.0.i1540 = phi i32 [ %164, %if.then.i.i.i1531.copy_to_user.exit1541_crit_edge ], [ %call.i12.i.i1538, %if.then2.i.i1539 ], [ %164, %if.end.i.i1536.copy_to_user.exit1541_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1540)
  %tobool397.not = icmp eq i32 %n.addr.0.i1540, 0
  %spec.select1789 = select i1 %tobool397.not, i32 0, i32 -14
  br label %cleanup852

sw.bb404:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %166 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i1749 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %166, i32 noundef 3520, i32 noundef 368) #15
  %tobool407.not = icmp eq ptr %call7.i.i1749, null
  br i1 %tobool407.not, label %sw.bb404.cleanup852_crit_edge, label %if.end409

sw.bb404.cleanup852_crit_edge:                    ; preds = %sw.bb404
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end409:                                        ; preds = %sw.bb404
  %pdev = getelementptr i8, ptr %dev, i32 -4
  %167 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 8
  %169 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %device, align 2
  %conv410 = zext i16 %170 to i32
  %171 = ptrtoint ptr %call7.i.i1749 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv410, ptr %call7.i.i1749, align 8
  %rev_id = getelementptr i8, ptr %dev, i32 2368
  %172 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %rev_id, align 8
  %chip_rev = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 1
  %174 = ptrtoint ptr %chip_rev to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %chip_rev, align 4
  %external_rev_id = getelementptr i8, ptr %dev, i32 2372
  %175 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %external_rev_id, align 4
  %external_rev = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 2
  %177 = ptrtoint ptr %external_rev to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %external_rev, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 12
  %178 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %revision, align 4
  %conv412 = zext i8 %179 to i32
  %pci_rev = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 3
  %180 = ptrtoint ptr %pci_rev to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv412, ptr %pci_rev, align 4
  %family = getelementptr i8, ptr %dev, i32 2364
  %181 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %family, align 4
  %family413 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 4
  %183 = ptrtoint ptr %family413 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %family413, align 8
  %config = getelementptr i8, ptr %dev, i32 32928
  %184 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %config, align 8
  %num_shader_engines = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 5
  %186 = ptrtoint ptr %num_shader_engines to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %num_shader_engines, align 4
  %max_sh_per_se = getelementptr i8, ptr %dev, i32 32940
  %187 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %max_sh_per_se, align 4
  %num_shader_arrays_per_engine = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 6
  %189 = ptrtoint ptr %num_shader_arrays_per_engine to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %num_shader_arrays_per_engine, align 8
  %asic_funcs417 = getelementptr i8, ptr %dev, i32 2388
  %190 = ptrtoint ptr %asic_funcs417 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %asic_funcs417, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %191, i32 0, i32 6
  %192 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %get_xclk, align 4
  %call418 = tail call i32 %193(ptr noundef %add.ptr.i) #9
  %mul419 = mul i32 %call418, 10
  %gpu_counter_freq = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 7
  %194 = ptrtoint ptr %gpu_counter_freq to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %mul419, ptr %gpu_counter_freq, align 4
  %dpm_enabled = getelementptr i8, ptr %dev, i32 29184
  %195 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %dpm_enabled, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool420.not = icmp eq i8 %196, 0
  br i1 %tobool420.not, label %if.else428, label %if.then421

if.then421:                                       ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #11
  %call422 = tail call i32 @amdgpu_dpm_get_sclk(ptr noundef %add.ptr.i, i1 noundef zeroext false) #9
  %mul423 = mul i32 %call422, 10
  %conv424 = sext i32 %mul423 to i64
  %max_engine_clock = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 8
  %197 = ptrtoint ptr %max_engine_clock to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %conv424, ptr %max_engine_clock, align 8
  %call425 = tail call i32 @amdgpu_dpm_get_mclk(ptr noundef %add.ptr.i, i1 noundef zeroext false) #9
  %mul426 = mul i32 %call425, 10
  %conv427 = sext i32 %mul426 to i64
  br label %if.end436

if.else428:                                       ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #11
  %default_sclk = getelementptr i8, ptr %dev, i32 3728
  %198 = ptrtoint ptr %default_sclk to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %default_sclk, align 4
  %mul429 = mul i32 %199, 10
  %conv430 = zext i32 %mul429 to i64
  %max_engine_clock431 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 8
  %200 = ptrtoint ptr %max_engine_clock431 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %conv430, ptr %max_engine_clock431, align 8
  %default_mclk = getelementptr i8, ptr %dev, i32 3724
  %201 = ptrtoint ptr %default_mclk to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %default_mclk, align 4
  %mul433 = mul i32 %202, 10
  %conv434 = zext i32 %mul433 to i64
  br label %if.end436

if.end436:                                        ; preds = %if.else428, %if.then421
  %conv427.sink = phi i64 [ %conv434, %if.else428 ], [ %conv427, %if.then421 ]
  %203 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 9
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %conv427.sink, ptr %203, align 8
  %backend_enable_mask = getelementptr i8, ptr %dev, i32 32984
  %205 = ptrtoint ptr %backend_enable_mask to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %backend_enable_mask, align 8
  %enabled_rb_pipes_mask = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 13
  %207 = ptrtoint ptr %enabled_rb_pipes_mask to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %enabled_rb_pipes_mask, align 8
  %max_backends_per_se = getelementptr i8, ptr %dev, i32 32944
  %208 = ptrtoint ptr %max_backends_per_se to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %max_backends_per_se, align 8
  %210 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %config, align 8
  %mul444 = mul i32 %211, %209
  %num_rb_pipes = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 14
  %212 = ptrtoint ptr %num_rb_pipes to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %mul444, ptr %num_rb_pipes, align 4
  %max_hw_contexts = getelementptr i8, ptr %dev, i32 32960
  %213 = ptrtoint ptr %max_hw_contexts to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %max_hw_contexts, align 8
  %num_hw_gfx_contexts = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 15
  %215 = ptrtoint ptr %num_hw_gfx_contexts to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %num_hw_gfx_contexts, align 8
  %_pad = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 16
  %216 = ptrtoint ptr %_pad to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %_pad, align 4
  %ids_flags = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 17
  %flags = getelementptr i8, ptr %dev, i32 2376
  %217 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %flags, align 8
  %and447 = lshr i32 %218, 17
  %and447.lobit = and i32 %and447, 1
  %219 = zext i32 %and447.lobit to i64
  %220 = ptrtoint ptr %ids_flags to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %219, ptr %ids_flags, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_mcbp to i32))
  %221 = load i32, ptr @amdgpu_mcbp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool452.not = icmp eq i32 %221, 0
  br i1 %tobool452.not, label %lor.lhs.false453, label %if.end436.if.then456_crit_edge

if.end436.if.then456_crit_edge:                   ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then456

lor.lhs.false453:                                 ; preds = %if.end436
  %virt = getelementptr i8, ptr %dev, i32 90272
  %222 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %virt, align 8
  %and454 = and i32 %223, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and454)
  %tobool455.not = icmp eq i32 %and454, 0
  br i1 %tobool455.not, label %lor.lhs.false453.if.end459_crit_edge, label %lor.lhs.false453.if.then456_crit_edge

lor.lhs.false453.if.then456_crit_edge:            ; preds = %lor.lhs.false453
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then456

lor.lhs.false453.if.end459_crit_edge:             ; preds = %lor.lhs.false453
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end459

if.then456:                                       ; preds = %lor.lhs.false453.if.then456_crit_edge, %if.end436.if.then456_crit_edge
  %or458 = or i64 %219, 2
  %224 = ptrtoint ptr %ids_flags to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %or458, ptr %ids_flags, align 8
  br label %if.end459

if.end459:                                        ; preds = %if.then456, %lor.lhs.false453.if.end459_crit_edge
  %tmz_enabled.i = getelementptr i8, ptr %dev, i32 10161
  %225 = ptrtoint ptr %tmz_enabled.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %tmz_enabled.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool.i.not = icmp eq i8 %226, 0
  br i1 %tobool.i.not, label %if.end459.if.end464_crit_edge, label %if.then461

if.end459.if.end464_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end464

if.then461:                                       ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #11
  %227 = ptrtoint ptr %ids_flags to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %ids_flags, align 8
  %or463 = or i64 %228, 4
  store i64 %or463, ptr %ids_flags, align 8
  br label %if.end464

if.end464:                                        ; preds = %if.then461, %if.end459.if.end464_crit_edge
  %max_pfn = getelementptr i8, ptr %dev, i32 17288
  %229 = ptrtoint ptr %max_pfn to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %max_pfn, align 8
  %mul465 = shl i64 %230, 12
  %sub466 = add i64 %mul465, -2097152
  %fw_version = getelementptr i8, ptr %dev, i32 65480
  %231 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %fw_version, align 8
  %233 = add i32 %232, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 892141567, i32 %233)
  %234 = icmp ult i32 %233, 892141567
  %235 = tail call i64 @llvm.umin.i64(i64 %sub466, i64 1099511627776)
  %vm_size.0 = select i1 %234, i64 %235, i64 %sub466
  %virtual_address_offset = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 18
  %236 = ptrtoint ptr %virtual_address_offset to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 2097152, ptr %virtual_address_offset, align 8
  %237 = tail call i64 @llvm.umin.i64(i64 %vm_size.0, i64 140737488355328)
  %virtual_address_max = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 19
  %238 = ptrtoint ptr %virtual_address_max to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %237, ptr %virtual_address_max, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %vm_size.0)
  %cmp489 = icmp ugt i64 %vm_size.0, 140737488355328
  br i1 %cmp489, label %if.then491, label %if.end464.if.end493_crit_edge

if.end464.if.end493_crit_edge:                    ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end493

if.then491:                                       ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #11
  %high_va_offset = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 45
  %239 = ptrtoint ptr %high_va_offset to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 -140737488355328, ptr %high_va_offset, align 8
  %or492 = or i64 %vm_size.0, -140737488355328
  %high_va_max = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 46
  %240 = ptrtoint ptr %high_va_max to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 %or492, ptr %high_va_max, align 8
  br label %if.end493

if.end493:                                        ; preds = %if.then491, %if.end464.if.end493_crit_edge
  %virtual_address_alignment = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 20
  %241 = ptrtoint ptr %virtual_address_alignment to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 4096, ptr %virtual_address_alignment, align 8
  %fragment_size = getelementptr i8, ptr %dev, i32 17304
  %242 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %fragment_size, align 8
  %mul495 = shl i32 4096, %243
  %pte_fragment_size = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 21
  %244 = ptrtoint ptr %pte_fragment_size to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %mul495, ptr %pte_fragment_size, align 4
  %gart_page_size = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 22
  %245 = ptrtoint ptr %gart_page_size to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 4096, ptr %gart_page_size, align 8
  %number = getelementptr i8, ptr %dev, i32 44076
  %246 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %number, align 4
  %cu_active_number = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 10
  %248 = ptrtoint ptr %cu_active_number to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %cu_active_number, align 8
  %ao_cu_mask = getelementptr i8, ptr %dev, i32 44080
  %249 = ptrtoint ptr %ao_cu_mask to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %ao_cu_mask, align 8
  %cu_ao_mask = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 11
  %251 = ptrtoint ptr %cu_ao_mask to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %cu_ao_mask, align 4
  %ce_ram_size = getelementptr i8, ptr %dev, i32 44052
  %252 = ptrtoint ptr %ce_ram_size to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %ce_ram_size, align 4
  %ce_ram_size500 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 23
  %254 = ptrtoint ptr %ce_ram_size500 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %ce_ram_size500, align 4
  %cu_ao_bitmap = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 44
  %ao_cu_bitmap = getelementptr i8, ptr %dev, i32 44084
  %255 = call ptr @memcpy(ptr %cu_ao_bitmap, ptr %ao_cu_bitmap, i32 64)
  %cu_bitmap = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 12
  %bitmap = getelementptr i8, ptr %dev, i32 44148
  %256 = call ptr @memcpy(ptr %cu_bitmap, ptr %bitmap, i32 64)
  %vram_type = getelementptr i8, ptr %dev, i32 3908
  %257 = ptrtoint ptr %vram_type to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %vram_type, align 4
  %vram_type510 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 24
  %259 = ptrtoint ptr %vram_type510 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %vram_type510, align 8
  %vram_width = getelementptr i8, ptr %dev, i32 3856
  %260 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %vram_width, align 8
  %vram_bit_width = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 25
  %262 = ptrtoint ptr %vram_bit_width to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %vram_bit_width, align 4
  %harvest_config = getelementptr i8, ptr %dev, i32 68604
  %263 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %harvest_config, align 4
  %vce_harvest_config = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 26
  %265 = ptrtoint ptr %vce_harvest_config to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %vce_harvest_config, align 8
  %double_offchip_lds_buf = getelementptr i8, ptr %dev, i32 33364
  %266 = ptrtoint ptr %double_offchip_lds_buf to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %double_offchip_lds_buf, align 4
  %gc_double_offchip_lds_buf = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 27
  %268 = ptrtoint ptr %gc_double_offchip_lds_buf to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %gc_double_offchip_lds_buf, align 4
  %wave_front_size = getelementptr i8, ptr %dev, i32 44064
  %269 = ptrtoint ptr %wave_front_size to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %wave_front_size, align 8
  %wave_front_size517 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 36
  %271 = ptrtoint ptr %wave_front_size517 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %wave_front_size517, align 8
  %max_gprs = getelementptr i8, ptr %dev, i32 32952
  %272 = ptrtoint ptr %max_gprs to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %max_gprs, align 8
  %num_shader_visible_vgprs = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 37
  %274 = ptrtoint ptr %num_shader_visible_vgprs to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %num_shader_visible_vgprs, align 4
  %max_cu_per_sh = getelementptr i8, ptr %dev, i32 32936
  %275 = ptrtoint ptr %max_cu_per_sh to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %max_cu_per_sh, align 8
  %num_cu_per_sh = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 38
  %277 = ptrtoint ptr %num_cu_per_sh to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %num_cu_per_sh, align 8
  %max_texture_channel_caches = getelementptr i8, ptr %dev, i32 32948
  %278 = ptrtoint ptr %max_texture_channel_caches to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %max_texture_channel_caches, align 4
  %num_tcc_blocks = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 39
  %280 = ptrtoint ptr %num_tcc_blocks to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %num_tcc_blocks, align 4
  %gs_vgt_table_depth = getelementptr i8, ptr %dev, i32 33028
  %281 = ptrtoint ptr %gs_vgt_table_depth to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %gs_vgt_table_depth, align 4
  %gs_vgt_table_depth526 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 40
  %283 = ptrtoint ptr %gs_vgt_table_depth526 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %gs_vgt_table_depth526, align 8
  %gs_prim_buffer_depth = getelementptr i8, ptr %dev, i32 33032
  %284 = ptrtoint ptr %gs_prim_buffer_depth to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %gs_prim_buffer_depth, align 8
  %gs_prim_buffer_depth529 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 41
  %286 = ptrtoint ptr %gs_prim_buffer_depth529 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %gs_prim_buffer_depth529, align 4
  %max_gs_threads = getelementptr i8, ptr %dev, i32 32956
  %287 = ptrtoint ptr %max_gs_threads to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %max_gs_threads, align 4
  %max_gs_waves_per_vgt = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 42
  %289 = ptrtoint ptr %max_gs_waves_per_vgt to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %max_gs_waves_per_vgt, align 8
  %290 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 142, i32 %291)
  %cmp533 = icmp ugt i32 %291, 142
  br i1 %cmp533, label %if.then535, label %if.end493.if.end539_crit_edge

if.end493.if.end539_crit_edge:                    ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539

if.then535:                                       ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #11
  %pa_sc_tile_steering_override = getelementptr i8, ptr %dev, i32 33380
  %292 = ptrtoint ptr %pa_sc_tile_steering_override to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %pa_sc_tile_steering_override, align 4
  %pa_sc_tile_steering_override538 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 47
  %294 = ptrtoint ptr %pa_sc_tile_steering_override538 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %pa_sc_tile_steering_override538, align 8
  br label %if.end539

if.end539:                                        ; preds = %if.then535, %if.end493.if.end539_crit_edge
  %tcc_disabled_mask = getelementptr i8, ptr %dev, i32 33384
  %295 = ptrtoint ptr %tcc_disabled_mask to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %tcc_disabled_mask, align 8
  %tcc_disabled_mask542 = getelementptr inbounds %struct.drm_amdgpu_info_device, ptr %call7.i.i1749, i32 0, i32 48
  %297 = ptrtoint ptr %tcc_disabled_mask542 to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 %296, ptr %tcc_disabled_mask542, align 8
  %298 = tail call i32 @llvm.umin.i32(i32 %4, i32 368)
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i1749, i32 noundef %298, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1551 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1551, label %if.end539.copy_to_user.exit1560_crit_edge, label %if.end.i.i1555

if.end539.copy_to_user.exit1560_crit_edge:        ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1560

if.end.i.i1555:                                   ; preds = %if.end539
  %299 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %298, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1553 = extractvalue { i32, i32 } %299, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1553)
  %cmp.i6.i1554 = icmp eq i32 %asmresult.i.i1553, 0
  br i1 %cmp.i6.i1554, label %if.then2.i.i1558, label %if.end.i.i1555.copy_to_user.exit1560_crit_edge

if.end.i.i1555.copy_to_user.exit1560_crit_edge:   ; preds = %if.end.i.i1555
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1560

if.then2.i.i1558:                                 ; preds = %if.end.i.i1555
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1556 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i1749, i32 noundef %298) #9
  %call.i12.i.i1557 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %call7.i.i1749, i32 noundef %298) #9
  br label %copy_to_user.exit1560

copy_to_user.exit1560:                            ; preds = %if.then2.i.i1558, %if.end.i.i1555.copy_to_user.exit1560_crit_edge, %if.end539.copy_to_user.exit1560_crit_edge
  %n.addr.0.i1559 = phi i32 [ %298, %if.end539.copy_to_user.exit1560_crit_edge ], [ %call.i12.i.i1557, %if.then2.i.i1558 ], [ %298, %if.end.i.i1555.copy_to_user.exit1560_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1559)
  %tobool551.not = icmp eq i32 %n.addr.0.i1559, 0
  %cond552 = select i1 %tobool551.not, i32 0, i32 -14
  tail call void @kfree(ptr noundef nonnull %call7.i.i1749) #9
  br label %cleanup852

sw.bb556:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %vce_clk_table) #9
  %300 = call ptr @memset(ptr %vce_clk_table, i32 0, i32 104)
  %powerplay = getelementptr i8, ptr %dev, i32 26752
  %pp_funcs = getelementptr i8, ptr %dev, i32 26756
  %num_valid_entries = getelementptr inbounds %struct.drm_amdgpu_info_vce_clock_table, ptr %vce_clk_table, i32 0, i32 1
  %301 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %pp_funcs, align 4
  %get_vce_clock_state = getelementptr inbounds %struct.amd_pm_funcs, ptr %302, i32 0, i32 29
  %303 = ptrtoint ptr %get_vce_clock_state to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %get_vce_clock_state, align 4
  %305 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %powerplay, align 8
  %call563 = tail call ptr %304(ptr noundef %306, i32 noundef 0) #9
  %tobool564.not = icmp eq ptr %call563, null
  br i1 %tobool564.not, label %sw.bb556.for.inc575_crit_edge, label %if.then565

sw.bb556.for.inc575_crit_edge:                    ; preds = %sw.bb556
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc575

if.then565:                                       ; preds = %sw.bb556
  call void @__sanitizer_cov_trace_pc() #11
  %sclk = getelementptr inbounds %struct.amd_vce_state, ptr %call563, i32 0, i32 2
  %307 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %sclk, align 4
  %309 = ptrtoint ptr %vce_clk_table to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %vce_clk_table, align 4
  %mclk = getelementptr inbounds %struct.amd_vce_state, ptr %call563, i32 0, i32 3
  %310 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %mclk, align 4
  %mclk570 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 0, i32 1
  %312 = ptrtoint ptr %mclk570 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %311, ptr %mclk570, align 4
  %313 = ptrtoint ptr %call563 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %call563, align 4
  %eclk = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 0, i32 2
  %315 = ptrtoint ptr %eclk to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %314, ptr %eclk, align 4
  %316 = ptrtoint ptr %num_valid_entries to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %num_valid_entries, align 4
  %inc573 = add i32 %317, 1
  store i32 %inc573, ptr %num_valid_entries, align 4
  br label %for.inc575

for.inc575:                                       ; preds = %if.then565, %sw.bb556.for.inc575_crit_edge
  %318 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %pp_funcs, align 4
  %get_vce_clock_state.1 = getelementptr inbounds %struct.amd_pm_funcs, ptr %319, i32 0, i32 29
  %320 = ptrtoint ptr %get_vce_clock_state.1 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %get_vce_clock_state.1, align 4
  %322 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %powerplay, align 8
  %call563.1 = tail call ptr %321(ptr noundef %323, i32 noundef 1) #9
  %tobool564.not.1 = icmp eq ptr %call563.1, null
  br i1 %tobool564.not.1, label %for.inc575.for.inc575.1_crit_edge, label %if.then565.1

for.inc575.for.inc575.1_crit_edge:                ; preds = %for.inc575
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc575.1

if.then565.1:                                     ; preds = %for.inc575
  call void @__sanitizer_cov_trace_pc() #11
  %sclk.1 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.1, i32 0, i32 2
  %324 = ptrtoint ptr %sclk.1 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %sclk.1, align 4
  %arrayidx566.1 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 1
  %326 = ptrtoint ptr %arrayidx566.1 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %arrayidx566.1, align 4
  %mclk.1 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.1, i32 0, i32 3
  %327 = ptrtoint ptr %mclk.1 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %mclk.1, align 4
  %mclk570.1 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 1, i32 1
  %329 = ptrtoint ptr %mclk570.1 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %328, ptr %mclk570.1, align 4
  %330 = ptrtoint ptr %call563.1 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %call563.1, align 4
  %eclk.1 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 1, i32 2
  %332 = ptrtoint ptr %eclk.1 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %331, ptr %eclk.1, align 4
  %333 = ptrtoint ptr %num_valid_entries to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %num_valid_entries, align 4
  %inc573.1 = add i32 %334, 1
  store i32 %inc573.1, ptr %num_valid_entries, align 4
  br label %for.inc575.1

for.inc575.1:                                     ; preds = %if.then565.1, %for.inc575.for.inc575.1_crit_edge
  %335 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %pp_funcs, align 4
  %get_vce_clock_state.2 = getelementptr inbounds %struct.amd_pm_funcs, ptr %336, i32 0, i32 29
  %337 = ptrtoint ptr %get_vce_clock_state.2 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %get_vce_clock_state.2, align 4
  %339 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %powerplay, align 8
  %call563.2 = tail call ptr %338(ptr noundef %340, i32 noundef 2) #9
  %tobool564.not.2 = icmp eq ptr %call563.2, null
  br i1 %tobool564.not.2, label %for.inc575.1.for.inc575.2_crit_edge, label %if.then565.2

for.inc575.1.for.inc575.2_crit_edge:              ; preds = %for.inc575.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc575.2

if.then565.2:                                     ; preds = %for.inc575.1
  call void @__sanitizer_cov_trace_pc() #11
  %sclk.2 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.2, i32 0, i32 2
  %341 = ptrtoint ptr %sclk.2 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %sclk.2, align 4
  %arrayidx566.2 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 2
  %343 = ptrtoint ptr %arrayidx566.2 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %342, ptr %arrayidx566.2, align 4
  %mclk.2 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.2, i32 0, i32 3
  %344 = ptrtoint ptr %mclk.2 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %mclk.2, align 4
  %mclk570.2 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 2, i32 1
  %346 = ptrtoint ptr %mclk570.2 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %345, ptr %mclk570.2, align 4
  %347 = ptrtoint ptr %call563.2 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %call563.2, align 4
  %eclk.2 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 2, i32 2
  %349 = ptrtoint ptr %eclk.2 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %eclk.2, align 4
  %350 = ptrtoint ptr %num_valid_entries to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %num_valid_entries, align 4
  %inc573.2 = add i32 %351, 1
  store i32 %inc573.2, ptr %num_valid_entries, align 4
  br label %for.inc575.2

for.inc575.2:                                     ; preds = %if.then565.2, %for.inc575.1.for.inc575.2_crit_edge
  %352 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %pp_funcs, align 4
  %get_vce_clock_state.3 = getelementptr inbounds %struct.amd_pm_funcs, ptr %353, i32 0, i32 29
  %354 = ptrtoint ptr %get_vce_clock_state.3 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %get_vce_clock_state.3, align 4
  %356 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %powerplay, align 8
  %call563.3 = tail call ptr %355(ptr noundef %357, i32 noundef 3) #9
  %tobool564.not.3 = icmp eq ptr %call563.3, null
  br i1 %tobool564.not.3, label %for.inc575.2.for.inc575.3_crit_edge, label %if.then565.3

for.inc575.2.for.inc575.3_crit_edge:              ; preds = %for.inc575.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc575.3

if.then565.3:                                     ; preds = %for.inc575.2
  call void @__sanitizer_cov_trace_pc() #11
  %sclk.3 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.3, i32 0, i32 2
  %358 = ptrtoint ptr %sclk.3 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %sclk.3, align 4
  %arrayidx566.3 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 3
  %360 = ptrtoint ptr %arrayidx566.3 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %359, ptr %arrayidx566.3, align 4
  %mclk.3 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.3, i32 0, i32 3
  %361 = ptrtoint ptr %mclk.3 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %mclk.3, align 4
  %mclk570.3 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 3, i32 1
  %363 = ptrtoint ptr %mclk570.3 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %362, ptr %mclk570.3, align 4
  %364 = ptrtoint ptr %call563.3 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %call563.3, align 4
  %eclk.3 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 3, i32 2
  %366 = ptrtoint ptr %eclk.3 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %365, ptr %eclk.3, align 4
  %367 = ptrtoint ptr %num_valid_entries to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %num_valid_entries, align 4
  %inc573.3 = add i32 %368, 1
  store i32 %inc573.3, ptr %num_valid_entries, align 4
  br label %for.inc575.3

for.inc575.3:                                     ; preds = %if.then565.3, %for.inc575.2.for.inc575.3_crit_edge
  %369 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %pp_funcs, align 4
  %get_vce_clock_state.4 = getelementptr inbounds %struct.amd_pm_funcs, ptr %370, i32 0, i32 29
  %371 = ptrtoint ptr %get_vce_clock_state.4 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %get_vce_clock_state.4, align 4
  %373 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %powerplay, align 8
  %call563.4 = tail call ptr %372(ptr noundef %374, i32 noundef 4) #9
  %tobool564.not.4 = icmp eq ptr %call563.4, null
  br i1 %tobool564.not.4, label %for.inc575.3.for.inc575.4_crit_edge, label %if.then565.4

for.inc575.3.for.inc575.4_crit_edge:              ; preds = %for.inc575.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc575.4

if.then565.4:                                     ; preds = %for.inc575.3
  call void @__sanitizer_cov_trace_pc() #11
  %sclk.4 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.4, i32 0, i32 2
  %375 = ptrtoint ptr %sclk.4 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %sclk.4, align 4
  %arrayidx566.4 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 4
  %377 = ptrtoint ptr %arrayidx566.4 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %376, ptr %arrayidx566.4, align 4
  %mclk.4 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.4, i32 0, i32 3
  %378 = ptrtoint ptr %mclk.4 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %mclk.4, align 4
  %mclk570.4 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 4, i32 1
  %380 = ptrtoint ptr %mclk570.4 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %379, ptr %mclk570.4, align 4
  %381 = ptrtoint ptr %call563.4 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %call563.4, align 4
  %eclk.4 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 4, i32 2
  %383 = ptrtoint ptr %eclk.4 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %382, ptr %eclk.4, align 4
  %384 = ptrtoint ptr %num_valid_entries to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %num_valid_entries, align 4
  %inc573.4 = add i32 %385, 1
  store i32 %inc573.4, ptr %num_valid_entries, align 4
  br label %for.inc575.4

for.inc575.4:                                     ; preds = %if.then565.4, %for.inc575.3.for.inc575.4_crit_edge
  %386 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %pp_funcs, align 4
  %get_vce_clock_state.5 = getelementptr inbounds %struct.amd_pm_funcs, ptr %387, i32 0, i32 29
  %388 = ptrtoint ptr %get_vce_clock_state.5 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %get_vce_clock_state.5, align 4
  %390 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %powerplay, align 8
  %call563.5 = tail call ptr %389(ptr noundef %391, i32 noundef 5) #9
  %tobool564.not.5 = icmp eq ptr %call563.5, null
  br i1 %tobool564.not.5, label %for.inc575.4.for.inc575.5_crit_edge, label %if.then565.5

for.inc575.4.for.inc575.5_crit_edge:              ; preds = %for.inc575.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc575.5

if.then565.5:                                     ; preds = %for.inc575.4
  call void @__sanitizer_cov_trace_pc() #11
  %sclk.5 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.5, i32 0, i32 2
  %392 = ptrtoint ptr %sclk.5 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %sclk.5, align 4
  %arrayidx566.5 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 5
  %394 = ptrtoint ptr %arrayidx566.5 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %393, ptr %arrayidx566.5, align 4
  %mclk.5 = getelementptr inbounds %struct.amd_vce_state, ptr %call563.5, i32 0, i32 3
  %395 = ptrtoint ptr %mclk.5 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %mclk.5, align 4
  %mclk570.5 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 5, i32 1
  %397 = ptrtoint ptr %mclk570.5 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %396, ptr %mclk570.5, align 4
  %398 = ptrtoint ptr %call563.5 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %call563.5, align 4
  %eclk.5 = getelementptr inbounds [6 x %struct.drm_amdgpu_info_vce_clock_table_entry], ptr %vce_clk_table, i32 0, i32 5, i32 2
  %400 = ptrtoint ptr %eclk.5 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %399, ptr %eclk.5, align 4
  %401 = ptrtoint ptr %num_valid_entries to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %num_valid_entries, align 4
  %inc573.5 = add i32 %402, 1
  store i32 %inc573.5, ptr %num_valid_entries, align 4
  br label %for.inc575.5

for.inc575.5:                                     ; preds = %if.then565.5, %for.inc575.4.for.inc575.5_crit_edge
  %403 = tail call i32 @llvm.umin.i32(i32 %4, i32 104)
  call void @__check_object_size(ptr noundef nonnull %vce_clk_table, i32 noundef %403, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1570 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1570, label %for.inc575.5.copy_to_user.exit1579_crit_edge, label %if.end.i.i1574

for.inc575.5.copy_to_user.exit1579_crit_edge:     ; preds = %for.inc575.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1579

if.end.i.i1574:                                   ; preds = %for.inc575.5
  %404 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %403, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1572 = extractvalue { i32, i32 } %404, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1572)
  %cmp.i6.i1573 = icmp eq i32 %asmresult.i.i1572, 0
  br i1 %cmp.i6.i1573, label %if.then2.i.i1577, label %if.end.i.i1574.copy_to_user.exit1579_crit_edge

if.end.i.i1574.copy_to_user.exit1579_crit_edge:   ; preds = %if.end.i.i1574
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1579

if.then2.i.i1577:                                 ; preds = %if.end.i.i1574
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1575 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vce_clk_table, i32 noundef %403) #9
  %call.i12.i.i1576 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %vce_clk_table, i32 noundef %403) #9
  br label %copy_to_user.exit1579

copy_to_user.exit1579:                            ; preds = %if.then2.i.i1577, %if.end.i.i1574.copy_to_user.exit1579_crit_edge, %for.inc575.5.copy_to_user.exit1579_crit_edge
  %n.addr.0.i1578 = phi i32 [ %403, %for.inc575.5.copy_to_user.exit1579_crit_edge ], [ %call.i12.i.i1576, %if.then2.i.i1577 ], [ %403, %if.end.i.i1574.copy_to_user.exit1579_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1578)
  %tobool586.not = icmp eq i32 %n.addr.0.i1578, 0
  %cond587 = select i1 %tobool586.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %vce_clk_table) #9
  br label %cleanup852

sw.bb591:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bios_size) #9
  %bios_size592 = getelementptr i8, ptr %dev, i32 2792
  %405 = ptrtoint ptr %bios_size592 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %bios_size592, align 8
  %407 = ptrtoint ptr %bios_size to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %406, ptr %bios_size, align 4
  %408 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %408, align 8
  %411 = zext i32 %410 to i64
  call void @__sanitizer_cov_trace_switch(i64 %411, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %410, label %sw.default653 [
    i32 1, label %sw.bb594
    i32 2, label %sw.bb605
    i32 3, label %sw.bb625
  ]

sw.bb594:                                         ; preds = %sw.bb591
  %412 = tail call i32 @llvm.umin.i32(i32 %4, i32 4)
  call void @__check_object_size(ptr noundef nonnull %bios_size, i32 noundef %412, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1589 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1589, label %sw.bb594.copy_to_user.exit1598_crit_edge, label %if.end.i.i1593

sw.bb594.copy_to_user.exit1598_crit_edge:         ; preds = %sw.bb594
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1598

if.end.i.i1593:                                   ; preds = %sw.bb594
  %413 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %412, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1591 = extractvalue { i32, i32 } %413, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1591)
  %cmp.i6.i1592 = icmp eq i32 %asmresult.i.i1591, 0
  br i1 %cmp.i6.i1592, label %if.then2.i.i1596, label %if.end.i.i1593.copy_to_user.exit1598_crit_edge

if.end.i.i1593.copy_to_user.exit1598_crit_edge:   ; preds = %if.end.i.i1593
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1598

if.then2.i.i1596:                                 ; preds = %if.end.i.i1593
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1594 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bios_size, i32 noundef %412) #9
  %call.i12.i.i1595 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %bios_size, i32 noundef %412) #9
  br label %copy_to_user.exit1598

copy_to_user.exit1598:                            ; preds = %if.then2.i.i1596, %if.end.i.i1593.copy_to_user.exit1598_crit_edge, %sw.bb594.copy_to_user.exit1598_crit_edge
  %n.addr.0.i1597 = phi i32 [ %412, %sw.bb594.copy_to_user.exit1598_crit_edge ], [ %call.i12.i.i1595, %if.then2.i.i1596 ], [ %412, %if.end.i.i1593.copy_to_user.exit1598_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1597)
  %tobool603.not = icmp eq i32 %n.addr.0.i1597, 0
  %cond604 = select i1 %tobool603.not, i32 0, i32 -14
  br label %cleanup655

sw.bb605:                                         ; preds = %sw.bb591
  %offset = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3, i32 0, i32 1
  %414 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %406, i32 %415)
  %cmp606.not = icmp ugt i32 %406, %415
  br i1 %cmp606.not, label %if.end609, label %sw.bb605.cleanup655_crit_edge

sw.bb605.cleanup655_crit_edge:                    ; preds = %sw.bb605
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup655

if.end609:                                        ; preds = %sw.bb605
  %bios610 = getelementptr i8, ptr %dev, i32 2788
  %416 = ptrtoint ptr %bios610 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %bios610, align 4
  %add.ptr611 = getelementptr i8, ptr %417, i32 %415
  %sub612 = sub i32 %406, %415
  %418 = tail call i32 @llvm.umin.i32(i32 %4, i32 %sub612)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %cmp9.i.i1605 = icmp slt i32 %418, 0
  br i1 %cmp9.i.i1605, label %land.rhs16.i.i1608, label %if.then.i.i.i1611

land.rhs16.i.i1608:                               ; preds = %if.end609
  %.b1.i.i1607 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i1607, label %land.rhs16.i.i1608.cleanup655_crit_edge, label %if.then27.i.i1609, !prof !155

land.rhs16.i.i1608.cleanup655_crit_edge:          ; preds = %land.rhs16.i.i1608
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup655

if.then27.i.i1609:                                ; preds = %land.rhs16.i.i1608
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup655

if.then.i.i.i1611:                                ; preds = %if.end609
  tail call void @__check_object_size(ptr noundef %add.ptr611, i32 noundef %418, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1612 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1612, label %if.then.i.i.i1611.copy_to_user.exit1621_crit_edge, label %if.end.i.i1616

if.then.i.i.i1611.copy_to_user.exit1621_crit_edge: ; preds = %if.then.i.i.i1611
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1621

if.end.i.i1616:                                   ; preds = %if.then.i.i.i1611
  %419 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %418, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1614 = extractvalue { i32, i32 } %419, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1614)
  %cmp.i6.i1615 = icmp eq i32 %asmresult.i.i1614, 0
  br i1 %cmp.i6.i1615, label %if.then2.i.i1619, label %if.end.i.i1616.copy_to_user.exit1621_crit_edge

if.end.i.i1616.copy_to_user.exit1621_crit_edge:   ; preds = %if.end.i.i1616
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1621

if.then2.i.i1619:                                 ; preds = %if.end.i.i1616
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1617 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr611, i32 noundef %418) #9
  %call.i12.i.i1618 = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %add.ptr611, i32 noundef %418) #9
  br label %copy_to_user.exit1621

copy_to_user.exit1621:                            ; preds = %if.then2.i.i1619, %if.end.i.i1616.copy_to_user.exit1621_crit_edge, %if.then.i.i.i1611.copy_to_user.exit1621_crit_edge
  %n.addr.0.i1620 = phi i32 [ %418, %if.then.i.i.i1611.copy_to_user.exit1621_crit_edge ], [ %call.i12.i.i1618, %if.then2.i.i1619 ], [ %418, %if.end.i.i1616.copy_to_user.exit1621_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1620)
  %tobool621.not = icmp eq i32 %n.addr.0.i1620, 0
  %spec.select1790 = select i1 %tobool621.not, i32 0, i32 -14
  br label %cleanup655

sw.bb625:                                         ; preds = %sw.bb591
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %vbios_info) #9
  %420 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %mode_info, align 8
  %name628 = getelementptr inbounds %struct.atom_context, ptr %421, i32 0, i32 18
  %422 = getelementptr inbounds i8, ptr %vbios_info, i32 132
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 0, ptr %422, align 4
  %424 = call ptr @memcpy(ptr %vbios_info, ptr %name628, i32 64)
  %vbios_pn = getelementptr inbounds %struct.drm_amdgpu_info_vbios, ptr %vbios_info, i32 0, i32 1
  %vbios_pn631 = getelementptr inbounds %struct.atom_context, ptr %421, i32 0, i32 19
  %425 = call ptr @memcpy(ptr %vbios_pn, ptr %vbios_pn631, i32 64)
  %version633 = getelementptr inbounds %struct.atom_context, ptr %421, i32 0, i32 20
  %426 = ptrtoint ptr %version633 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %version633, align 4
  %version634 = getelementptr inbounds %struct.drm_amdgpu_info_vbios, ptr %vbios_info, i32 0, i32 2
  %428 = ptrtoint ptr %version634 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %427, ptr %version634, align 4
  %vbios_ver_str = getelementptr inbounds %struct.drm_amdgpu_info_vbios, ptr %vbios_info, i32 0, i32 4
  %vbios_ver_str636 = getelementptr inbounds %struct.atom_context, ptr %421, i32 0, i32 21
  %429 = call ptr @memcpy(ptr %vbios_ver_str, ptr %vbios_ver_str636, i32 32)
  %date = getelementptr inbounds %struct.drm_amdgpu_info_vbios, ptr %vbios_info, i32 0, i32 5
  %date639 = getelementptr inbounds %struct.atom_context, ptr %421, i32 0, i32 22
  %430 = call ptr @memcpy(ptr %date, ptr %date639, i32 32)
  %431 = tail call i32 @llvm.umin.i32(i32 %4, i32 200)
  call void @__check_object_size(ptr noundef nonnull %vbios_info, i32 noundef %431, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1631 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1631, label %sw.bb625.copy_to_user.exit1640_crit_edge, label %if.end.i.i1635

sw.bb625.copy_to_user.exit1640_crit_edge:         ; preds = %sw.bb625
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1640

if.end.i.i1635:                                   ; preds = %sw.bb625
  %432 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %431, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1633 = extractvalue { i32, i32 } %432, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1633)
  %cmp.i6.i1634 = icmp eq i32 %asmresult.i.i1633, 0
  br i1 %cmp.i6.i1634, label %if.then2.i.i1638, label %if.end.i.i1635.copy_to_user.exit1640_crit_edge

if.end.i.i1635.copy_to_user.exit1640_crit_edge:   ; preds = %if.end.i.i1635
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1640

if.then2.i.i1638:                                 ; preds = %if.end.i.i1635
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1636 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vbios_info, i32 noundef %431) #9
  %call.i12.i.i1637 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %vbios_info, i32 noundef %431) #9
  br label %copy_to_user.exit1640

copy_to_user.exit1640:                            ; preds = %if.then2.i.i1638, %if.end.i.i1635.copy_to_user.exit1640_crit_edge, %sw.bb625.copy_to_user.exit1640_crit_edge
  %n.addr.0.i1639 = phi i32 [ %431, %sw.bb625.copy_to_user.exit1640_crit_edge ], [ %call.i12.i.i1637, %if.then2.i.i1638 ], [ %431, %if.end.i.i1635.copy_to_user.exit1640_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1639)
  %tobool649.not = icmp eq i32 %n.addr.0.i1639, 0
  %cond650 = select i1 %tobool649.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %vbios_info) #9
  br label %cleanup655

sw.default653:                                    ; preds = %sw.bb591
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %410) #9
  br label %cleanup655

cleanup655:                                       ; preds = %sw.default653, %copy_to_user.exit1640, %copy_to_user.exit1621, %if.then27.i.i1609, %land.rhs16.i.i1608.cleanup655_crit_edge, %sw.bb605.cleanup655_crit_edge, %copy_to_user.exit1598
  %retval.6 = phi i32 [ -22, %sw.default653 ], [ %cond650, %copy_to_user.exit1640 ], [ %cond604, %copy_to_user.exit1598 ], [ -22, %sw.bb605.cleanup655_crit_edge ], [ -14, %if.then27.i.i1609 ], [ -14, %land.rhs16.i.i1608.cleanup655_crit_edge ], [ %spec.select1790, %copy_to_user.exit1621 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bios_size) #9
  br label %cleanup852

sw.bb656:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %handle) #9
  %433 = getelementptr inbounds %struct.drm_amdgpu_info_num_handles, ptr %handle, i32 0, i32 1
  %434 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %434, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %436)
  %cond863 = icmp eq i32 %436, 3
  br i1 %cond863, label %sw.bb658, label %sw.bb656.cleanup675_crit_edge

sw.bb656.cleanup675_crit_edge:                    ; preds = %sw.bb656
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup675

sw.bb658:                                         ; preds = %sw.bb656
  %asic_type = getelementptr i8, ptr %dev, i32 2360
  %437 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %438)
  %cmp659 = icmp ult i32 %438, 15
  br i1 %cmp659, label %if.then661, label %sw.bb658.cleanup675_crit_edge

sw.bb658.cleanup675_crit_edge:                    ; preds = %sw.bb658
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup675

if.then661:                                       ; preds = %sw.bb658
  %max_handles = getelementptr i8, ptr %dev, i32 59312
  %439 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %max_handles, align 8
  %441 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %440, ptr %handle, align 4
  %call662 = tail call i32 @amdgpu_uvd_used_handles(ptr noundef %add.ptr.i) #9
  %442 = ptrtoint ptr %433 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %call662, ptr %433, align 4
  %443 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %handle, i32 noundef %443, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1650 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1650, label %if.then661.copy_to_user.exit1659_crit_edge, label %if.end.i.i1654

if.then661.copy_to_user.exit1659_crit_edge:       ; preds = %if.then661
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1659

if.end.i.i1654:                                   ; preds = %if.then661
  %444 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %443, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1652 = extractvalue { i32, i32 } %444, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1652)
  %cmp.i6.i1653 = icmp eq i32 %asmresult.i.i1652, 0
  br i1 %cmp.i6.i1653, label %if.then2.i.i1657, label %if.end.i.i1654.copy_to_user.exit1659_crit_edge

if.end.i.i1654.copy_to_user.exit1659_crit_edge:   ; preds = %if.end.i.i1654
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1659

if.then2.i.i1657:                                 ; preds = %if.end.i.i1654
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1655 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %handle, i32 noundef %443) #9
  %call.i12.i.i1656 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %handle, i32 noundef %443) #9
  br label %copy_to_user.exit1659

copy_to_user.exit1659:                            ; preds = %if.then2.i.i1657, %if.end.i.i1654.copy_to_user.exit1659_crit_edge, %if.then661.copy_to_user.exit1659_crit_edge
  %n.addr.0.i1658 = phi i32 [ %443, %if.then661.copy_to_user.exit1659_crit_edge ], [ %call.i12.i.i1656, %if.then2.i.i1657 ], [ %443, %if.end.i.i1654.copy_to_user.exit1659_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1658)
  %tobool671.not = icmp eq i32 %n.addr.0.i1658, 0
  %cond672 = select i1 %tobool671.not, i32 0, i32 -14
  br label %cleanup675

cleanup675:                                       ; preds = %copy_to_user.exit1659, %sw.bb658.cleanup675_crit_edge, %sw.bb656.cleanup675_crit_edge
  %retval.7 = phi i32 [ %cond672, %copy_to_user.exit1659 ], [ -61, %sw.bb658.cleanup675_crit_edge ], [ -22, %sw.bb656.cleanup675_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #9
  br label %cleanup852

sw.bb676:                                         ; preds = %if.end
  %dpm_enabled678 = getelementptr i8, ptr %dev, i32 29184
  %445 = ptrtoint ptr %dpm_enabled678 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %dpm_enabled678, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %446)
  %tobool679.not = icmp eq i8 %446, 0
  br i1 %tobool679.not, label %sw.bb676.cleanup852_crit_edge, label %if.end681

sw.bb676.cleanup852_crit_edge:                    ; preds = %sw.bb676
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end681:                                        ; preds = %sw.bb676
  %447 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3
  %448 = ptrtoint ptr %447 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %447, align 8
  %450 = zext i32 %449 to i64
  call void @__sanitizer_cov_trace_switch(i64 %450, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %449, label %sw.default733 [
    i32 1, label %sw.bb683
    i32 2, label %sw.bb689
    i32 3, label %sw.bb695
    i32 4, label %sw.bb700
    i32 5, label %sw.bb705
    i32 6, label %sw.bb711
    i32 7, label %sw.bb716
    i32 8, label %sw.bb721
    i32 9, label %sw.bb727
  ]

sw.bb683:                                         ; preds = %if.end681
  %call684 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %ui32, ptr noundef nonnull %ui32_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call684)
  %tobool685.not = icmp eq i32 %call684, 0
  br i1 %tobool685.not, label %if.end687, label %sw.bb683.cleanup852_crit_edge

sw.bb683.cleanup852_crit_edge:                    ; preds = %sw.bb683
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end687:                                        ; preds = %sw.bb683
  call void @__sanitizer_cov_trace_pc() #11
  %451 = ptrtoint ptr %ui32 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %ui32, align 4
  %div688 = udiv i32 %452, 100
  store i32 %div688, ptr %ui32, align 4
  br label %sw.epilog735

sw.bb689:                                         ; preds = %if.end681
  %call690 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 9, ptr noundef nonnull %ui32, ptr noundef nonnull %ui32_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call690)
  %tobool691.not = icmp eq i32 %call690, 0
  br i1 %tobool691.not, label %if.end693, label %sw.bb689.cleanup852_crit_edge

sw.bb689.cleanup852_crit_edge:                    ; preds = %sw.bb689
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end693:                                        ; preds = %sw.bb689
  call void @__sanitizer_cov_trace_pc() #11
  %453 = ptrtoint ptr %ui32 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %ui32, align 4
  %div694 = udiv i32 %454, 100
  store i32 %div694, ptr %ui32, align 4
  br label %sw.epilog735

sw.bb695:                                         ; preds = %if.end681
  %call696 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 10, ptr noundef nonnull %ui32, ptr noundef nonnull %ui32_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call696)
  %tobool697.not = icmp eq i32 %call696, 0
  br i1 %tobool697.not, label %sw.bb695.sw.epilog735_crit_edge, label %sw.bb695.cleanup852_crit_edge

sw.bb695.cleanup852_crit_edge:                    ; preds = %sw.bb695
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

sw.bb695.sw.epilog735_crit_edge:                  ; preds = %sw.bb695
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog735

sw.bb700:                                         ; preds = %if.end681
  %call701 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 7, ptr noundef nonnull %ui32, ptr noundef nonnull %ui32_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call701)
  %tobool702.not = icmp eq i32 %call701, 0
  br i1 %tobool702.not, label %sw.bb700.sw.epilog735_crit_edge, label %sw.bb700.cleanup852_crit_edge

sw.bb700.cleanup852_crit_edge:                    ; preds = %sw.bb700
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

sw.bb700.sw.epilog735_crit_edge:                  ; preds = %sw.bb700
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog735

sw.bb705:                                         ; preds = %if.end681
  %call706 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 15, ptr noundef nonnull %ui32, ptr noundef nonnull %ui32_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call706)
  %tobool707.not = icmp eq i32 %call706, 0
  br i1 %tobool707.not, label %if.end709, label %sw.bb705.cleanup852_crit_edge

sw.bb705.cleanup852_crit_edge:                    ; preds = %sw.bb705
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end709:                                        ; preds = %sw.bb705
  call void @__sanitizer_cov_trace_pc() #11
  %455 = ptrtoint ptr %ui32 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %ui32, align 4
  %shr710 = lshr i32 %456, 8
  store i32 %shr710, ptr %ui32, align 4
  br label %sw.epilog735

sw.bb711:                                         ; preds = %if.end681
  %call712 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %ui32, ptr noundef nonnull %ui32_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call712)
  %tobool713.not = icmp eq i32 %call712, 0
  br i1 %tobool713.not, label %sw.bb711.sw.epilog735_crit_edge, label %sw.bb711.cleanup852_crit_edge

sw.bb711.cleanup852_crit_edge:                    ; preds = %sw.bb711
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

sw.bb711.sw.epilog735_crit_edge:                  ; preds = %sw.bb711
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog735

sw.bb716:                                         ; preds = %if.end681
  %call717 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 3, ptr noundef nonnull %ui32, ptr noundef nonnull %ui32_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call717)
  %tobool718.not = icmp eq i32 %call717, 0
  br i1 %tobool718.not, label %sw.bb716.sw.epilog735_crit_edge, label %sw.bb716.cleanup852_crit_edge

sw.bb716.cleanup852_crit_edge:                    ; preds = %sw.bb716
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

sw.bb716.sw.epilog735_crit_edge:                  ; preds = %sw.bb716
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog735

sw.bb721:                                         ; preds = %if.end681
  %call722 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 18, ptr noundef nonnull %ui32, ptr noundef nonnull %ui32_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call722)
  %tobool723.not = icmp eq i32 %call722, 0
  br i1 %tobool723.not, label %if.end725, label %sw.bb721.cleanup852_crit_edge

sw.bb721.cleanup852_crit_edge:                    ; preds = %sw.bb721
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end725:                                        ; preds = %sw.bb721
  call void @__sanitizer_cov_trace_pc() #11
  %457 = ptrtoint ptr %ui32 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %ui32, align 4
  %div726 = udiv i32 %458, 100
  store i32 %div726, ptr %ui32, align 4
  br label %sw.epilog735

sw.bb727:                                         ; preds = %if.end681
  %call728 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 19, ptr noundef nonnull %ui32, ptr noundef nonnull %ui32_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call728)
  %tobool729.not = icmp eq i32 %call728, 0
  br i1 %tobool729.not, label %if.end731, label %sw.bb727.cleanup852_crit_edge

sw.bb727.cleanup852_crit_edge:                    ; preds = %sw.bb727
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup852

if.end731:                                        ; preds = %sw.bb727
  call void @__sanitizer_cov_trace_pc() #11
  %459 = ptrtoint ptr %ui32 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %ui32, align 4
  %div732 = udiv i32 %460, 100
  store i32 %div732, ptr %ui32, align 4
  br label %sw.epilog735

sw.default733:                                    ; preds = %if.end681
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %449) #9
  br label %cleanup852

sw.epilog735:                                     ; preds = %if.end731, %if.end725, %sw.bb716.sw.epilog735_crit_edge, %sw.bb711.sw.epilog735_crit_edge, %if.end709, %sw.bb700.sw.epilog735_crit_edge, %sw.bb695.sw.epilog735_crit_edge, %if.end693, %if.end687
  %461 = call i32 @llvm.umin.i32(i32 %4, i32 4)
  call void @__check_object_size(ptr noundef nonnull %ui32, i32 noundef %461, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1669 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1669, label %sw.epilog735.copy_to_user.exit1678_crit_edge, label %if.end.i.i1673

sw.epilog735.copy_to_user.exit1678_crit_edge:     ; preds = %sw.epilog735
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1678

if.end.i.i1673:                                   ; preds = %sw.epilog735
  %462 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %461, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1671 = extractvalue { i32, i32 } %462, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1671)
  %cmp.i6.i1672 = icmp eq i32 %asmresult.i.i1671, 0
  br i1 %cmp.i6.i1672, label %if.then2.i.i1676, label %if.end.i.i1673.copy_to_user.exit1678_crit_edge

if.end.i.i1673.copy_to_user.exit1678_crit_edge:   ; preds = %if.end.i.i1673
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1678

if.then2.i.i1676:                                 ; preds = %if.end.i.i1673
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1674 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui32, i32 noundef %461) #9
  %call.i12.i.i1675 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui32, i32 noundef %461) #9
  br label %copy_to_user.exit1678

copy_to_user.exit1678:                            ; preds = %if.then2.i.i1676, %if.end.i.i1673.copy_to_user.exit1678_crit_edge, %sw.epilog735.copy_to_user.exit1678_crit_edge
  %n.addr.0.i1677 = phi i32 [ %461, %sw.epilog735.copy_to_user.exit1678_crit_edge ], [ %call.i12.i.i1675, %if.then2.i.i1676 ], [ %461, %if.end.i.i1673.copy_to_user.exit1678_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1677)
  %tobool744.not = icmp eq i32 %n.addr.0.i1677, 0
  %cond745 = select i1 %tobool744.not, i32 0, i32 -14
  br label %cleanup852

sw.bb746:                                         ; preds = %if.end
  %vram_lost_counter = getelementptr i8, ptr %dev, i32 21900
  %call.i.i1679 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_lost_counter, i32 noundef 4) #9
  %463 = ptrtoint ptr %vram_lost_counter to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load volatile i32, ptr %vram_lost_counter, align 4
  %465 = ptrtoint ptr %ui32 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %464, ptr %ui32, align 4
  %466 = tail call i32 @llvm.umin.i32(i32 %4, i32 4)
  call void @__check_object_size(ptr noundef nonnull %ui32, i32 noundef %466, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1689 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1689, label %sw.bb746.copy_to_user.exit1698_crit_edge, label %if.end.i.i1693

sw.bb746.copy_to_user.exit1698_crit_edge:         ; preds = %sw.bb746
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1698

if.end.i.i1693:                                   ; preds = %sw.bb746
  %467 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %466, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1691 = extractvalue { i32, i32 } %467, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1691)
  %cmp.i6.i1692 = icmp eq i32 %asmresult.i.i1691, 0
  br i1 %cmp.i6.i1692, label %if.then2.i.i1696, label %if.end.i.i1693.copy_to_user.exit1698_crit_edge

if.end.i.i1693.copy_to_user.exit1698_crit_edge:   ; preds = %if.end.i.i1693
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1698

if.then2.i.i1696:                                 ; preds = %if.end.i.i1693
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1694 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ui32, i32 noundef %466) #9
  %call.i12.i.i1695 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ui32, i32 noundef %466) #9
  br label %copy_to_user.exit1698

copy_to_user.exit1698:                            ; preds = %if.then2.i.i1696, %if.end.i.i1693.copy_to_user.exit1698_crit_edge, %sw.bb746.copy_to_user.exit1698_crit_edge
  %n.addr.0.i1697 = phi i32 [ %466, %sw.bb746.copy_to_user.exit1698_crit_edge ], [ %call.i12.i.i1695, %if.then2.i.i1696 ], [ %466, %if.end.i.i1693.copy_to_user.exit1698_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1697)
  %tobool756.not = icmp eq i32 %n.addr.0.i1697, 0
  %cond757 = select i1 %tobool756.not, i32 0, i32 -14
  br label %cleanup852

sw.bb758:                                         ; preds = %if.end
  %ras759 = getelementptr i8, ptr %dev, i32 82000
  %468 = ptrtoint ptr %ras759 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %ras759, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ras_mask) #9
  %tobool760.not = icmp eq ptr %469, null
  br i1 %tobool760.not, label %sw.bb758.cleanup779_crit_edge, label %if.end762

sw.bb758.cleanup779_crit_edge:                    ; preds = %sw.bb758
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup779

if.end762:                                        ; preds = %sw.bb758
  %ras_enabled = getelementptr i8, ptr %dev, i32 91656
  %470 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %ras_enabled, align 8
  %conv763 = zext i32 %471 to i64
  %shl764 = shl nuw i64 %conv763, 32
  %472 = ptrtoint ptr %469 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %469, align 8
  %conv765 = zext i32 %473 to i64
  %or766 = or i64 %shl764, %conv765
  %474 = ptrtoint ptr %ras_mask to i32
  call void @__asan_store8_noabort(i32 %474)
  store i64 %or766, ptr %ras_mask, align 8
  %475 = tail call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %ras_mask, i32 noundef %475, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1708 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1708, label %if.end762.copy_to_user.exit1717_crit_edge, label %if.end.i.i1712

if.end762.copy_to_user.exit1717_crit_edge:        ; preds = %if.end762
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1717

if.end.i.i1712:                                   ; preds = %if.end762
  %476 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %475, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1710 = extractvalue { i32, i32 } %476, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1710)
  %cmp.i6.i1711 = icmp eq i32 %asmresult.i.i1710, 0
  br i1 %cmp.i6.i1711, label %if.then2.i.i1715, label %if.end.i.i1712.copy_to_user.exit1717_crit_edge

if.end.i.i1712.copy_to_user.exit1717_crit_edge:   ; preds = %if.end.i.i1712
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1717

if.then2.i.i1715:                                 ; preds = %if.end.i.i1712
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1713 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ras_mask, i32 noundef %475) #9
  %call.i12.i.i1714 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ras_mask, i32 noundef %475) #9
  br label %copy_to_user.exit1717

copy_to_user.exit1717:                            ; preds = %if.then2.i.i1715, %if.end.i.i1712.copy_to_user.exit1717_crit_edge, %if.end762.copy_to_user.exit1717_crit_edge
  %n.addr.0.i1716 = phi i32 [ %475, %if.end762.copy_to_user.exit1717_crit_edge ], [ %call.i12.i.i1714, %if.then2.i.i1715 ], [ %475, %if.end.i.i1712.copy_to_user.exit1717_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1716)
  %tobool777.not = icmp eq i32 %n.addr.0.i1716, 0
  %cond778 = select i1 %tobool777.not, i32 0, i32 -14
  br label %cleanup779

cleanup779:                                       ; preds = %copy_to_user.exit1717, %sw.bb758.cleanup779_crit_edge
  %retval.8 = phi i32 [ %cond778, %copy_to_user.exit1717 ], [ -22, %sw.bb758.cleanup779_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ras_mask) #9
  br label %cleanup852

sw.bb781:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %codecs) #9
  %477 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr inttoptr (i32 -1 to ptr), ptr %codecs, align 4, !annotation !154
  %478 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %data, i32 0, i32 3
  %479 = ptrtoint ptr %478 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %478, align 8
  %481 = zext i32 %480 to i64
  call void @__sanitizer_cov_trace_switch(i64 %481, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %480, label %sw.default797 [
    i32 0, label %sw.bb784
    i32 1, label %sw.bb790
  ]

sw.bb784:                                         ; preds = %sw.bb781
  %asic_funcs785 = getelementptr i8, ptr %dev, i32 2388
  %482 = ptrtoint ptr %asic_funcs785 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %asic_funcs785, align 4
  %query_video_codecs = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %483, i32 0, i32 22
  %484 = ptrtoint ptr %query_video_codecs to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %query_video_codecs, align 4
  %call786 = call i32 %485(ptr noundef %add.ptr.i, i1 noundef zeroext false, ptr noundef nonnull %codecs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call786)
  %tobool787.not = icmp eq i32 %call786, 0
  br i1 %tobool787.not, label %sw.bb784.sw.epilog799_crit_edge, label %sw.bb784.cleanup847_crit_edge

sw.bb784.cleanup847_crit_edge:                    ; preds = %sw.bb784
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup847

sw.bb784.sw.epilog799_crit_edge:                  ; preds = %sw.bb784
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog799

sw.bb790:                                         ; preds = %sw.bb781
  %asic_funcs791 = getelementptr i8, ptr %dev, i32 2388
  %486 = ptrtoint ptr %asic_funcs791 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %asic_funcs791, align 4
  %query_video_codecs792 = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %487, i32 0, i32 22
  %488 = ptrtoint ptr %query_video_codecs792 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %query_video_codecs792, align 4
  %call793 = call i32 %489(ptr noundef %add.ptr.i, i1 noundef zeroext true, ptr noundef nonnull %codecs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call793)
  %tobool794.not = icmp eq i32 %call793, 0
  br i1 %tobool794.not, label %sw.bb790.sw.epilog799_crit_edge, label %sw.bb790.cleanup847_crit_edge

sw.bb790.cleanup847_crit_edge:                    ; preds = %sw.bb790
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup847

sw.bb790.sw.epilog799_crit_edge:                  ; preds = %sw.bb790
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog799

sw.default797:                                    ; preds = %sw.bb781
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %480) #9
  br label %cleanup847

sw.epilog799:                                     ; preds = %sw.bb790.sw.epilog799_crit_edge, %sw.bb784.sw.epilog799_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %490 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i1757 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %490, i32 noundef 3520, i32 noundef 192) #15
  %tobool801.not = icmp eq ptr %call7.i.i1757, null
  br i1 %tobool801.not, label %sw.epilog799.cleanup847_crit_edge, label %for.cond804.preheader

sw.epilog799.cleanup847_crit_edge:                ; preds = %sw.epilog799
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup847

for.cond804.preheader:                            ; preds = %sw.epilog799
  %491 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %codecs, align 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %492, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %494)
  %cmp8051768.not = icmp eq i32 %494, 0
  br i1 %cmp8051768.not, label %for.cond804.preheader.for.end836_crit_edge, label %for.body807.lr.ph

for.cond804.preheader.for.end836_crit_edge:       ; preds = %for.cond804.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end836

for.body807.lr.ph:                                ; preds = %for.cond804.preheader
  %codec_array = getelementptr inbounds %struct.amdgpu_video_codecs, ptr %492, i32 0, i32 1
  br label %for.body807

for.body807:                                      ; preds = %sw.epilog833.for.body807_crit_edge, %for.body807.lr.ph
  %i.31769 = phi i32 [ 0, %for.body807.lr.ph ], [ %inc835, %sw.epilog833.for.body807_crit_edge ]
  %495 = ptrtoint ptr %codec_array to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %codec_array, align 4
  %arrayidx808 = getelementptr %struct.amdgpu_video_codec_info, ptr %496, i32 %i.31769
  %497 = ptrtoint ptr %arrayidx808 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %arrayidx808, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %498)
  %switch = icmp ult i32 %498, 8
  br i1 %switch, label %sw.bb809, label %for.body807.sw.epilog833_crit_edge

for.body807.sw.epilog833_crit_edge:               ; preds = %for.body807
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog833

sw.bb809:                                         ; preds = %for.body807
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx810 = getelementptr [8 x %struct.drm_amdgpu_info_video_codec_info], ptr %call7.i.i1757, i32 0, i32 %498
  %499 = ptrtoint ptr %arrayidx810 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 1, ptr %arrayidx810, align 8
  %500 = ptrtoint ptr %codec_array to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %codec_array, align 4
  %max_width = getelementptr %struct.amdgpu_video_codec_info, ptr %501, i32 %i.31769, i32 1
  %502 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %max_width, align 4
  %max_width816 = getelementptr [8 x %struct.drm_amdgpu_info_video_codec_info], ptr %call7.i.i1757, i32 0, i32 %498, i32 1
  %504 = ptrtoint ptr %max_width816 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %503, ptr %max_width816, align 4
  %505 = load ptr, ptr %codec_array, align 4
  %max_height = getelementptr %struct.amdgpu_video_codec_info, ptr %505, i32 %i.31769, i32 2
  %506 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %max_height, align 4
  %max_height821 = getelementptr [8 x %struct.drm_amdgpu_info_video_codec_info], ptr %call7.i.i1757, i32 0, i32 %498, i32 2
  %508 = ptrtoint ptr %max_height821 to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %507, ptr %max_height821, align 8
  %509 = load ptr, ptr %codec_array, align 4
  %max_pixels_per_frame = getelementptr %struct.amdgpu_video_codec_info, ptr %509, i32 %i.31769, i32 3
  %510 = ptrtoint ptr %max_pixels_per_frame to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %max_pixels_per_frame, align 4
  %max_pixels_per_frame826 = getelementptr [8 x %struct.drm_amdgpu_info_video_codec_info], ptr %call7.i.i1757, i32 0, i32 %498, i32 3
  %512 = ptrtoint ptr %max_pixels_per_frame826 to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %511, ptr %max_pixels_per_frame826, align 4
  %513 = load ptr, ptr %codec_array, align 4
  %max_level = getelementptr %struct.amdgpu_video_codec_info, ptr %513, i32 %i.31769, i32 4
  %514 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %max_level, align 4
  %max_level831 = getelementptr [8 x %struct.drm_amdgpu_info_video_codec_info], ptr %call7.i.i1757, i32 0, i32 %498, i32 4
  %516 = ptrtoint ptr %max_level831 to i32
  call void @__asan_store4_noabort(i32 %516)
  store i32 %515, ptr %max_level831, align 8
  br label %sw.epilog833

sw.epilog833:                                     ; preds = %sw.bb809, %for.body807.sw.epilog833_crit_edge
  %inc835 = add nuw i32 %i.31769, 1
  %517 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %492, align 4
  %cmp805 = icmp ult i32 %inc835, %518
  br i1 %cmp805, label %sw.epilog833.for.body807_crit_edge, label %sw.epilog833.for.end836_crit_edge

sw.epilog833.for.end836_crit_edge:                ; preds = %sw.epilog833
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end836

sw.epilog833.for.body807_crit_edge:               ; preds = %sw.epilog833
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body807

for.end836:                                       ; preds = %sw.epilog833.for.end836_crit_edge, %for.cond804.preheader.for.end836_crit_edge
  %519 = call i32 @llvm.umin.i32(i32 %4, i32 192)
  call void @__check_object_size(ptr noundef nonnull %call7.i.i1757, i32 noundef %519, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i1727 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1727, label %for.end836.copy_to_user.exit1736_crit_edge, label %if.end.i.i1731

for.end836.copy_to_user.exit1736_crit_edge:       ; preds = %for.end836
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1736

if.end.i.i1731:                                   ; preds = %for.end836
  %520 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %519, i32 -1226833920) #13, !srcloc !153
  %asmresult.i.i1729 = extractvalue { i32, i32 } %520, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1729)
  %cmp.i6.i1730 = icmp eq i32 %asmresult.i.i1729, 0
  br i1 %cmp.i6.i1730, label %if.then2.i.i1734, label %if.end.i.i1731.copy_to_user.exit1736_crit_edge

if.end.i.i1731.copy_to_user.exit1736_crit_edge:   ; preds = %if.end.i.i1731
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1736

if.then2.i.i1734:                                 ; preds = %if.end.i.i1731
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1732 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i1757, i32 noundef %519) #9
  %call.i12.i.i1733 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %call7.i.i1757, i32 noundef %519) #9
  br label %copy_to_user.exit1736

copy_to_user.exit1736:                            ; preds = %if.then2.i.i1734, %if.end.i.i1731.copy_to_user.exit1736_crit_edge, %for.end836.copy_to_user.exit1736_crit_edge
  %n.addr.0.i1735 = phi i32 [ %519, %for.end836.copy_to_user.exit1736_crit_edge ], [ %call.i12.i.i1733, %if.then2.i.i1734 ], [ %519, %if.end.i.i1731.copy_to_user.exit1736_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1735)
  %tobool845.not = icmp eq i32 %n.addr.0.i1735, 0
  %cond846 = select i1 %tobool845.not, i32 0, i32 -14
  call void @kfree(ptr noundef nonnull %call7.i.i1757) #9
  br label %cleanup847

cleanup847:                                       ; preds = %copy_to_user.exit1736, %sw.epilog799.cleanup847_crit_edge, %sw.default797, %sw.bb790.cleanup847_crit_edge, %sw.bb784.cleanup847_crit_edge
  %retval.9 = phi i32 [ -22, %sw.default797 ], [ %cond846, %copy_to_user.exit1736 ], [ -22, %sw.bb784.cleanup847_crit_edge ], [ -22, %sw.bb790.cleanup847_crit_edge ], [ -12, %sw.epilog799.cleanup847_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %codecs) #9
  br label %cleanup852

sw.default850:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %9) #9
  br label %cleanup852

cleanup852:                                       ; preds = %sw.default850, %cleanup847, %cleanup779, %copy_to_user.exit1698, %copy_to_user.exit1678, %sw.default733, %sw.bb727.cleanup852_crit_edge, %sw.bb721.cleanup852_crit_edge, %sw.bb716.cleanup852_crit_edge, %sw.bb711.cleanup852_crit_edge, %sw.bb705.cleanup852_crit_edge, %sw.bb700.cleanup852_crit_edge, %sw.bb695.cleanup852_crit_edge, %sw.bb689.cleanup852_crit_edge, %sw.bb683.cleanup852_crit_edge, %sw.bb676.cleanup852_crit_edge, %cleanup675, %cleanup655, %copy_to_user.exit1579, %copy_to_user.exit1560, %sw.bb404.cleanup852_crit_edge, %copy_to_user.exit1541, %copy_to_user.exit1541.thread, %if.then382, %if.end7.i.cleanup852_crit_edge, %if.end361.cleanup852_crit_edge, %if.else356.cleanup852_crit_edge, %if.else.cleanup852_crit_edge, %copy_to_user.exit1523, %copy_to_user.exit1499, %copy_to_user.exit1475, %copy_to_user.exit1457, %copy_to_user.exit1439, %copy_to_user.exit1421, %copy_to_user.exit1403, %copy_to_user.exit1383, %copy_to_user.exit1363, %cleanup130, %copy_to_user.exit1326, %cleanup96, %cleanup, %if.then22.critedge, %copy_to_user.exit1272, %copy_to_user.exit, %entry.cleanup852_crit_edge
  %retval.10 = phi i32 [ -22, %sw.default850 ], [ %retval.9, %cleanup847 ], [ %retval.8, %cleanup779 ], [ %cond757, %copy_to_user.exit1698 ], [ -22, %sw.default733 ], [ %cond745, %copy_to_user.exit1678 ], [ %retval.7, %cleanup675 ], [ %retval.6, %cleanup655 ], [ %cond587, %copy_to_user.exit1579 ], [ %cond338, %copy_to_user.exit1523 ], [ %cond253, %copy_to_user.exit1499 ], [ %cond221, %copy_to_user.exit1475 ], [ %cond206, %copy_to_user.exit1457 ], [ %cond193, %copy_to_user.exit1439 ], [ %cond179, %copy_to_user.exit1421 ], [ %cond167, %copy_to_user.exit1403 ], [ %cond155, %copy_to_user.exit1383 ], [ %cond143, %copy_to_user.exit1363 ], [ %retval.2, %cleanup130 ], [ %cond109, %copy_to_user.exit1326 ], [ %retval.1, %cleanup96 ], [ %retval.0, %cleanup ], [ %cond34, %copy_to_user.exit1272 ], [ -22, %if.then22.critedge ], [ %cond9, %copy_to_user.exit ], [ -22, %entry.cleanup852_crit_edge ], [ -14, %if.then382 ], [ -22, %if.else.cleanup852_crit_edge ], [ -22, %if.else356.cleanup852_crit_edge ], [ -22, %if.end361.cleanup852_crit_edge ], [ -12, %if.end7.i.cleanup852_crit_edge ], [ %cond552, %copy_to_user.exit1560 ], [ -12, %sw.bb404.cleanup852_crit_edge ], [ -2, %sw.bb676.cleanup852_crit_edge ], [ -22, %sw.bb683.cleanup852_crit_edge ], [ -22, %sw.bb689.cleanup852_crit_edge ], [ -22, %sw.bb695.cleanup852_crit_edge ], [ -22, %sw.bb700.cleanup852_crit_edge ], [ -22, %sw.bb705.cleanup852_crit_edge ], [ -22, %sw.bb711.cleanup852_crit_edge ], [ -22, %sw.bb716.cleanup852_crit_edge ], [ -22, %sw.bb721.cleanup852_crit_edge ], [ -22, %sw.bb727.cleanup852_crit_edge ], [ -14, %copy_to_user.exit1541.thread ], [ %spec.select1789, %copy_to_user.exit1541 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ui32_size) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ui64) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ui32) #9
  ret i32 %retval.10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_hw_ip_info(ptr noundef %adev, ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.drm_amdgpu_info, ptr %info, i32 0, i32 3
  %ip_instance = getelementptr inbounds %struct.drm_amdgpu_info, ptr %info, i32 0, i32 3, i32 0, i32 1
  %1 = ptrtoint ptr %ip_instance to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ip_instance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %for.cond8.preheader
    i32 2, label %for.cond24.preheader
    i32 3, label %for.cond39.preheader
    i32 4, label %for.cond60.preheader
    i32 5, label %for.cond78.preheader
    i32 6, label %for.cond114.preheader
    i32 7, label %for.cond139.preheader
    i32 8, label %sw.bb176
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond139.preheader:                            ; preds = %if.end
  %num_vcn_inst141 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %6 = ptrtoint ptr %num_vcn_inst141 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_vcn_inst141, align 1
  %conv142 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp143361.not = icmp eq i8 %7, 0
  br i1 %cmp143361.not, label %for.cond139.preheader.sw.epilog_crit_edge, label %for.body145.lr.ph

for.cond139.preheader.sw.epilog_crit_edge:        ; preds = %for.cond139.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body145.lr.ph:                                ; preds = %for.cond139.preheader
  %harvest_config147 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 12
  %8 = ptrtoint ptr %harvest_config147 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %harvest_config147, align 4
  %num_enc_rings155 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 3
  br label %for.body145

for.cond114.preheader:                            ; preds = %if.end
  %num_vcn_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 6
  %10 = ptrtoint ptr %num_vcn_inst to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_vcn_inst, align 1
  %conv115 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp116367.not = icmp eq i8 %11, 0
  br i1 %cmp116367.not, label %for.cond114.preheader.sw.epilog_crit_edge, label %for.body118.lr.ph

for.cond114.preheader.sw.epilog_crit_edge:        ; preds = %for.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body118.lr.ph:                                ; preds = %for.cond114.preheader
  %harvest_config120 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 12
  %12 = ptrtoint ptr %harvest_config120 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %harvest_config120, align 4
  br label %for.body118

for.cond78.preheader:                             ; preds = %if.end
  %num_uvd_inst80 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 4
  %14 = ptrtoint ptr %num_uvd_inst80 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_uvd_inst80, align 8
  %conv81 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp82376.not = icmp eq i8 %15, 0
  br i1 %cmp82376.not, label %for.cond78.preheader.sw.epilog_crit_edge, label %for.body84.lr.ph

for.cond78.preheader.sw.epilog_crit_edge:         ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body84.lr.ph:                                 ; preds = %for.cond78.preheader
  %harvest_config86 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 12
  %16 = ptrtoint ptr %harvest_config86 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %harvest_config86, align 4
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 3
  br label %for.body84

for.cond60.preheader:                             ; preds = %if.end
  %num_rings61 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 17
  %18 = ptrtoint ptr %num_rings61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_rings61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp62382.not = icmp eq i32 %19, 0
  br i1 %cmp62382.not, label %for.cond60.preheader.sw.epilog_crit_edge, label %for.cond60.preheader.for.body64_crit_edge

for.cond60.preheader.for.body64_crit_edge:        ; preds = %for.cond60.preheader
  br label %for.body64

for.cond60.preheader.sw.epilog_crit_edge:         ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.cond39.preheader:                             ; preds = %if.end
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 4
  %20 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp40386.not = icmp eq i8 %21, 0
  br i1 %cmp40386.not, label %for.cond39.preheader.sw.epilog_crit_edge, label %for.body42.lr.ph

for.cond39.preheader.sw.epilog_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 12
  %22 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %harvest_config, align 4
  br label %for.body42

for.cond24.preheader:                             ; preds = %if.end
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %24 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp25391.not = icmp eq i32 %25, 0
  br i1 %cmp25391.not, label %for.cond24.preheader.sw.epilog_crit_edge, label %for.body26.lr.ph

for.cond24.preheader.sw.epilog_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  br label %for.body26

for.cond8.preheader:                              ; preds = %if.end
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %26 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10395.not = icmp eq i32 %27, 0
  br i1 %cmp10395.not, label %for.cond8.preheader.sw.epilog_crit_edge, label %for.cond8.preheader.for.body11_crit_edge

for.cond8.preheader.for.body11_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body11

for.cond8.preheader.sw.epilog_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.cond.preheader:                               ; preds = %if.end
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 37
  %28 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_gfx_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2399.not = icmp eq i32 %29, 0
  br i1 %cmp2399.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0401 = phi i32 [ %inc6, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %num_rings.0400 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ready = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 %i.0401, i32 3, i32 17
  %30 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ready, align 4, !range !149
  %32 = zext i8 %31 to i32
  %spec.select = add i32 %num_rings.0400, %32
  %inc6 = add nuw i32 %i.0401, 1
  %exitcond427.not = icmp eq i32 %inc6, %29
  br i1 %exitcond427.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond8.preheader.for.body11_crit_edge
  %i.1397 = phi i32 [ %inc21, %for.body11.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  %num_rings.2396 = phi i32 [ %spec.select337, %for.body11.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  %ready15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.1397, i32 3, i32 17
  %33 = ptrtoint ptr %ready15 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ready15, align 4, !range !149
  %35 = zext i8 %34 to i32
  %spec.select337 = add i32 %num_rings.2396, %35
  %inc21 = add nuw i32 %i.1397, 1
  %exitcond426.not = icmp eq i32 %inc21, %27
  br i1 %exitcond426.not, label %for.body11.sw.epilog_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.body11.sw.epilog_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body26.lr.ph
  %i.2393 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc36, %for.body26.for.body26_crit_edge ]
  %num_rings.4392 = phi i32 [ 0, %for.body26.lr.ph ], [ %spec.select338, %for.body26.for.body26_crit_edge ]
  %ready30 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.2393, i32 3, i32 3, i32 17
  %36 = ptrtoint ptr %ready30 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ready30, align 4, !range !149
  %38 = zext i8 %37 to i32
  %spec.select338 = add i32 %num_rings.4392, %38
  %inc36 = add nuw i32 %i.2393, 1
  %exitcond425.not = icmp eq i32 %inc36, %25
  br i1 %exitcond425.not, label %for.body26.sw.epilog_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

for.body26.sw.epilog_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body42:                                       ; preds = %for.inc56.for.body42_crit_edge, %for.body42.lr.ph
  %i.3388 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc57, %for.inc56.for.body42_crit_edge ]
  %num_rings.6387 = phi i32 [ 0, %for.body42.lr.ph ], [ %num_rings.7, %for.inc56.for.body42_crit_edge ]
  %shl = shl nuw i32 1, %i.3388
  %and = and i32 %23, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.end46, label %for.body42.for.inc56_crit_edge

for.body42.for.inc56_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc56

if.end46:                                         ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  %ready51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %i.3388, i32 4, i32 3, i32 17
  %39 = ptrtoint ptr %ready51 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ready51, align 4, !range !149
  %41 = zext i8 %40 to i32
  %spec.select339 = add i32 %num_rings.6387, %41
  br label %for.inc56

for.inc56:                                        ; preds = %if.end46, %for.body42.for.inc56_crit_edge
  %num_rings.7 = phi i32 [ %num_rings.6387, %for.body42.for.inc56_crit_edge ], [ %spec.select339, %if.end46 ]
  %inc57 = add nuw nsw i32 %i.3388, 1
  %exitcond424.not = icmp eq i32 %inc57, %conv
  br i1 %exitcond424.not, label %for.inc56.sw.epilog_crit_edge, label %for.inc56.for.body42_crit_edge

for.inc56.for.body42_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42

for.inc56.sw.epilog_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.cond60.preheader.for.body64_crit_edge
  %i.4384 = phi i32 [ %inc75, %for.body64.for.body64_crit_edge ], [ 0, %for.cond60.preheader.for.body64_crit_edge ]
  %num_rings.8383 = phi i32 [ %spec.select340, %for.body64.for.body64_crit_edge ], [ 0, %for.cond60.preheader.for.body64_crit_edge ]
  %ready69 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 %i.4384, i32 3, i32 17
  %42 = ptrtoint ptr %ready69 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ready69, align 4, !range !149
  %44 = zext i8 %43 to i32
  %spec.select340 = add i32 %num_rings.8383, %44
  %inc75 = add nuw i32 %i.4384, 1
  %exitcond423.not = icmp eq i32 %inc75, %19
  br i1 %exitcond423.not, label %for.body64.sw.epilog_crit_edge, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body64

for.body64.sw.epilog_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body84:                                       ; preds = %for.inc110.for.body84_crit_edge, %for.body84.lr.ph
  %i.5378 = phi i32 [ 0, %for.body84.lr.ph ], [ %inc111, %for.inc110.for.body84_crit_edge ]
  %num_rings.10377 = phi i32 [ 0, %for.body84.lr.ph ], [ %num_rings.13, %for.inc110.for.body84_crit_edge ]
  %shl87 = shl nuw i32 1, %i.5378
  %and88 = and i32 %17, %shl87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %for.cond92.preheader, label %for.body84.for.inc110_crit_edge

for.body84.for.inc110_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110

for.cond92.preheader:                             ; preds = %for.body84
  %45 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp94372.not = icmp eq i32 %46, 0
  br i1 %cmp94372.not, label %for.cond92.preheader.for.inc110_crit_edge, label %for.cond92.preheader.for.body96_crit_edge

for.cond92.preheader.for.body96_crit_edge:        ; preds = %for.cond92.preheader
  br label %for.body96

for.cond92.preheader.for.inc110_crit_edge:        ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110

for.body96:                                       ; preds = %for.body96.for.body96_crit_edge, %for.cond92.preheader.for.body96_crit_edge
  %j.0374 = phi i32 [ %inc108, %for.body96.for.body96_crit_edge ], [ 0, %for.cond92.preheader.for.body96_crit_edge ]
  %num_rings.11373 = phi i32 [ %spec.select341, %for.body96.for.body96_crit_edge ], [ %num_rings.10377, %for.cond92.preheader.for.body96_crit_edge ]
  %ready102 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %i.5378, i32 5, i32 %j.0374, i32 3, i32 17
  %47 = ptrtoint ptr %ready102 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ready102, align 4, !range !149
  %49 = zext i8 %48 to i32
  %spec.select341 = add i32 %num_rings.11373, %49
  %inc108 = add nuw i32 %j.0374, 1
  %exitcond421.not = icmp eq i32 %inc108, %46
  br i1 %exitcond421.not, label %for.body96.for.inc110_crit_edge, label %for.body96.for.body96_crit_edge

for.body96.for.body96_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body96

for.body96.for.inc110_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110

for.inc110:                                       ; preds = %for.body96.for.inc110_crit_edge, %for.cond92.preheader.for.inc110_crit_edge, %for.body84.for.inc110_crit_edge
  %num_rings.13 = phi i32 [ %num_rings.10377, %for.body84.for.inc110_crit_edge ], [ %num_rings.10377, %for.cond92.preheader.for.inc110_crit_edge ], [ %spec.select341, %for.body96.for.inc110_crit_edge ]
  %inc111 = add nuw nsw i32 %i.5378, 1
  %exitcond422.not = icmp eq i32 %inc111, %conv81
  br i1 %exitcond422.not, label %for.inc110.sw.epilog_crit_edge, label %for.inc110.for.body84_crit_edge

for.inc110.for.body84_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body84

for.inc110.sw.epilog_crit_edge:                   ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body118:                                      ; preds = %for.inc135.for.body118_crit_edge, %for.body118.lr.ph
  %i.6369 = phi i32 [ 0, %for.body118.lr.ph ], [ %inc136, %for.inc135.for.body118_crit_edge ]
  %num_rings.14368 = phi i32 [ 0, %for.body118.lr.ph ], [ %num_rings.15, %for.inc135.for.body118_crit_edge ]
  %shl121 = shl nuw i32 1, %i.6369
  %and122 = and i32 %13, %shl121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end125, label %for.body118.for.inc135_crit_edge

for.body118.for.inc135_crit_edge:                 ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

if.end125:                                        ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #11
  %ready130 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.6369, i32 4, i32 3, i32 17
  %50 = ptrtoint ptr %ready130 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ready130, align 4, !range !149
  %52 = zext i8 %51 to i32
  %spec.select342 = add i32 %num_rings.14368, %52
  br label %for.inc135

for.inc135:                                       ; preds = %if.end125, %for.body118.for.inc135_crit_edge
  %num_rings.15 = phi i32 [ %num_rings.14368, %for.body118.for.inc135_crit_edge ], [ %spec.select342, %if.end125 ]
  %inc136 = add nuw nsw i32 %i.6369, 1
  %exitcond420.not = icmp eq i32 %inc136, %conv115
  br i1 %exitcond420.not, label %for.inc135.sw.epilog_crit_edge, label %for.inc135.for.body118_crit_edge

for.inc135.for.body118_crit_edge:                 ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body118

for.inc135.sw.epilog_crit_edge:                   ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body145:                                      ; preds = %for.inc173.for.body145_crit_edge, %for.body145.lr.ph
  %i.7363 = phi i32 [ 0, %for.body145.lr.ph ], [ %inc174, %for.inc173.for.body145_crit_edge ]
  %num_rings.16362 = phi i32 [ 0, %for.body145.lr.ph ], [ %num_rings.19, %for.inc173.for.body145_crit_edge ]
  %shl148 = shl nuw i32 1, %i.7363
  %and149 = and i32 %9, %shl148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %for.cond153.preheader, label %for.body145.for.inc173_crit_edge

for.body145.for.inc173_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc173

for.cond153.preheader:                            ; preds = %for.body145
  %53 = ptrtoint ptr %num_enc_rings155 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_enc_rings155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp156357.not = icmp eq i32 %54, 0
  br i1 %cmp156357.not, label %for.cond153.preheader.for.inc173_crit_edge, label %for.cond153.preheader.for.body158_crit_edge

for.cond153.preheader.for.body158_crit_edge:      ; preds = %for.cond153.preheader
  br label %for.body158

for.cond153.preheader.for.inc173_crit_edge:       ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc173

for.body158:                                      ; preds = %for.body158.for.body158_crit_edge, %for.cond153.preheader.for.body158_crit_edge
  %j.1359 = phi i32 [ %inc171, %for.body158.for.body158_crit_edge ], [ 0, %for.cond153.preheader.for.body158_crit_edge ]
  %num_rings.17358 = phi i32 [ %spec.select343, %for.body158.for.body158_crit_edge ], [ %num_rings.16362, %for.cond153.preheader.for.body158_crit_edge ]
  %ready165 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 110, i32 7, i32 %i.7363, i32 5, i32 %j.1359, i32 3, i32 17
  %55 = ptrtoint ptr %ready165 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ready165, align 4, !range !149
  %57 = zext i8 %56 to i32
  %spec.select343 = add i32 %num_rings.17358, %57
  %inc171 = add nuw i32 %j.1359, 1
  %exitcond418.not = icmp eq i32 %inc171, %54
  br i1 %exitcond418.not, label %for.body158.for.inc173_crit_edge, label %for.body158.for.body158_crit_edge

for.body158.for.body158_crit_edge:                ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body158

for.body158.for.inc173_crit_edge:                 ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc173

for.inc173:                                       ; preds = %for.body158.for.inc173_crit_edge, %for.cond153.preheader.for.inc173_crit_edge, %for.body145.for.inc173_crit_edge
  %num_rings.19 = phi i32 [ %num_rings.16362, %for.body145.for.inc173_crit_edge ], [ %num_rings.16362, %for.cond153.preheader.for.inc173_crit_edge ], [ %spec.select343, %for.body158.for.inc173_crit_edge ]
  %inc174 = add nuw nsw i32 %i.7363, 1
  %exitcond419.not = icmp eq i32 %inc174, %conv142
  br i1 %exitcond419.not, label %for.inc173.sw.epilog_crit_edge, label %for.inc173.for.body145_crit_edge

for.inc173.for.body145_crit_edge:                 ; preds = %for.inc173
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body145

for.inc173.sw.epilog_crit_edge:                   ; preds = %for.inc173
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb176:                                         ; preds = %if.end
  %call = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %adev, i32 noundef 13) #9
  %tobool177.not = icmp eq ptr %call, null
  %cond = select i1 %tobool177.not, i32 11, i32 13
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111
  %58 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %jpeg, align 8
  %conv179 = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp180353.not = icmp eq i8 %59, 0
  br i1 %cmp180353.not, label %sw.bb176.sw.epilog_crit_edge, label %for.body182.lr.ph

sw.bb176.sw.epilog_crit_edge:                     ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body182.lr.ph:                                ; preds = %sw.bb176
  %harvest_config184 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 3
  %60 = ptrtoint ptr %harvest_config184 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %harvest_config184, align 4
  br label %for.body182

for.body182:                                      ; preds = %for.inc200.for.body182_crit_edge, %for.body182.lr.ph
  %i.8355 = phi i32 [ 0, %for.body182.lr.ph ], [ %inc201, %for.inc200.for.body182_crit_edge ]
  %num_rings.20354 = phi i32 [ 0, %for.body182.lr.ph ], [ %num_rings.21, %for.inc200.for.body182_crit_edge ]
  %shl185 = shl nuw i32 1, %i.8355
  %and186 = and i32 %61, %shl185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end189, label %for.body182.for.inc200_crit_edge

for.body182.for.inc200_crit_edge:                 ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc200

if.end189:                                        ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #11
  %ready195 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 %i.8355, i32 0, i32 3, i32 17
  %62 = ptrtoint ptr %ready195 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ready195, align 4, !range !149
  %64 = zext i8 %63 to i32
  %spec.select344 = add i32 %num_rings.20354, %64
  br label %for.inc200

for.inc200:                                       ; preds = %if.end189, %for.body182.for.inc200_crit_edge
  %num_rings.21 = phi i32 [ %num_rings.20354, %for.body182.for.inc200_crit_edge ], [ %spec.select344, %if.end189 ]
  %inc201 = add nuw nsw i32 %i.8355, 1
  %exitcond.not = icmp eq i32 %inc201, %conv179
  br i1 %exitcond.not, label %for.inc200.sw.epilog_crit_edge, label %for.inc200.for.body182_crit_edge

for.inc200.for.body182_crit_edge:                 ; preds = %for.inc200
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body182

for.inc200.sw.epilog_crit_edge:                   ; preds = %for.inc200
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc200.sw.epilog_crit_edge, %sw.bb176.sw.epilog_crit_edge, %for.inc173.sw.epilog_crit_edge, %for.inc135.sw.epilog_crit_edge, %for.inc110.sw.epilog_crit_edge, %for.body64.sw.epilog_crit_edge, %for.inc56.sw.epilog_crit_edge, %for.body26.sw.epilog_crit_edge, %for.body11.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %for.cond8.preheader.sw.epilog_crit_edge, %for.cond24.preheader.sw.epilog_crit_edge, %for.cond39.preheader.sw.epilog_crit_edge, %for.cond60.preheader.sw.epilog_crit_edge, %for.cond78.preheader.sw.epilog_crit_edge, %for.cond114.preheader.sw.epilog_crit_edge, %for.cond139.preheader.sw.epilog_crit_edge
  %ib_start_alignment.0 = phi i32 [ 32, %for.cond.preheader.sw.epilog_crit_edge ], [ 32, %for.cond8.preheader.sw.epilog_crit_edge ], [ 256, %for.cond24.preheader.sw.epilog_crit_edge ], [ 64, %for.cond39.preheader.sw.epilog_crit_edge ], [ 4, %for.cond60.preheader.sw.epilog_crit_edge ], [ 64, %for.cond78.preheader.sw.epilog_crit_edge ], [ 16, %for.cond114.preheader.sw.epilog_crit_edge ], [ 64, %for.cond139.preheader.sw.epilog_crit_edge ], [ 16, %sw.bb176.sw.epilog_crit_edge ], [ 32, %for.body.sw.epilog_crit_edge ], [ 32, %for.body11.sw.epilog_crit_edge ], [ 256, %for.body26.sw.epilog_crit_edge ], [ 64, %for.inc56.sw.epilog_crit_edge ], [ 4, %for.body64.sw.epilog_crit_edge ], [ 64, %for.inc110.sw.epilog_crit_edge ], [ 16, %for.inc135.sw.epilog_crit_edge ], [ 64, %for.inc173.sw.epilog_crit_edge ], [ 16, %for.inc200.sw.epilog_crit_edge ]
  %ib_size_alignment.0 = phi i32 [ 32, %for.cond.preheader.sw.epilog_crit_edge ], [ 32, %for.cond8.preheader.sw.epilog_crit_edge ], [ 4, %for.cond24.preheader.sw.epilog_crit_edge ], [ 64, %for.cond39.preheader.sw.epilog_crit_edge ], [ 1, %for.cond60.preheader.sw.epilog_crit_edge ], [ 64, %for.cond78.preheader.sw.epilog_crit_edge ], [ 16, %for.cond114.preheader.sw.epilog_crit_edge ], [ 1, %for.cond139.preheader.sw.epilog_crit_edge ], [ 16, %sw.bb176.sw.epilog_crit_edge ], [ 32, %for.body.sw.epilog_crit_edge ], [ 32, %for.body11.sw.epilog_crit_edge ], [ 4, %for.body26.sw.epilog_crit_edge ], [ 64, %for.inc56.sw.epilog_crit_edge ], [ 1, %for.body64.sw.epilog_crit_edge ], [ 64, %for.inc110.sw.epilog_crit_edge ], [ 16, %for.inc135.sw.epilog_crit_edge ], [ 1, %for.inc173.sw.epilog_crit_edge ], [ 16, %for.inc200.sw.epilog_crit_edge ]
  %type.0 = phi i32 [ 6, %for.cond.preheader.sw.epilog_crit_edge ], [ 6, %for.cond8.preheader.sw.epilog_crit_edge ], [ 7, %for.cond24.preheader.sw.epilog_crit_edge ], [ 8, %for.cond39.preheader.sw.epilog_crit_edge ], [ 9, %for.cond60.preheader.sw.epilog_crit_edge ], [ 8, %for.cond78.preheader.sw.epilog_crit_edge ], [ 11, %for.cond114.preheader.sw.epilog_crit_edge ], [ 11, %for.cond139.preheader.sw.epilog_crit_edge ], [ %cond, %sw.bb176.sw.epilog_crit_edge ], [ 6, %for.body.sw.epilog_crit_edge ], [ 6, %for.body11.sw.epilog_crit_edge ], [ 7, %for.body26.sw.epilog_crit_edge ], [ 8, %for.inc56.sw.epilog_crit_edge ], [ 9, %for.body64.sw.epilog_crit_edge ], [ 8, %for.inc110.sw.epilog_crit_edge ], [ 11, %for.inc135.sw.epilog_crit_edge ], [ 11, %for.inc173.sw.epilog_crit_edge ], [ %cond, %for.inc200.sw.epilog_crit_edge ]
  %num_rings.22 = phi i32 [ 0, %for.cond.preheader.sw.epilog_crit_edge ], [ 0, %for.cond8.preheader.sw.epilog_crit_edge ], [ 0, %for.cond24.preheader.sw.epilog_crit_edge ], [ 0, %for.cond39.preheader.sw.epilog_crit_edge ], [ 0, %for.cond60.preheader.sw.epilog_crit_edge ], [ 0, %for.cond78.preheader.sw.epilog_crit_edge ], [ 0, %for.cond114.preheader.sw.epilog_crit_edge ], [ 0, %for.cond139.preheader.sw.epilog_crit_edge ], [ 0, %sw.bb176.sw.epilog_crit_edge ], [ %spec.select, %for.body.sw.epilog_crit_edge ], [ %spec.select337, %for.body11.sw.epilog_crit_edge ], [ %spec.select338, %for.body26.sw.epilog_crit_edge ], [ %num_rings.7, %for.inc56.sw.epilog_crit_edge ], [ %spec.select340, %for.body64.sw.epilog_crit_edge ], [ %num_rings.13, %for.inc110.sw.epilog_crit_edge ], [ %num_rings.15, %for.inc135.sw.epilog_crit_edge ], [ %num_rings.19, %for.inc173.sw.epilog_crit_edge ], [ %num_rings.21, %for.inc200.sw.epilog_crit_edge ]
  %num_ip_blocks = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 124
  %65 = ptrtoint ptr %num_ip_blocks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_ip_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp204403.not = icmp eq i32 %66, 0
  br i1 %cmp204403.not, label %sw.epilog.for.end219_crit_edge, label %sw.epilog.for.body206_crit_edge

sw.epilog.for.body206_crit_edge:                  ; preds = %sw.epilog
  br label %for.body206

sw.epilog.for.end219_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end219

for.body206:                                      ; preds = %for.inc217.for.body206_crit_edge, %sw.epilog.for.body206_crit_edge
  %i.9404 = phi i32 [ %inc218, %for.inc217.for.body206_crit_edge ], [ 0, %sw.epilog.for.body206_crit_edge ]
  %version = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 122, i32 %i.9404, i32 1
  %67 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %version, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %type.0)
  %cmp209 = icmp eq i32 %70, %type.0
  br i1 %cmp209, label %land.lhs.true, label %for.body206.for.inc217_crit_edge

for.body206.for.inc217_crit_edge:                 ; preds = %for.body206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc217

land.lhs.true:                                    ; preds = %for.body206
  %arrayidx207 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 122, i32 %i.9404
  %71 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx207, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool213.not = icmp eq i8 %72, 0
  br i1 %tobool213.not, label %land.lhs.true.for.inc217_crit_edge, label %land.lhs.true.for.end219_crit_edge

land.lhs.true.for.end219_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end219

land.lhs.true.for.inc217_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc217

for.inc217:                                       ; preds = %land.lhs.true.for.inc217_crit_edge, %for.body206.for.inc217_crit_edge
  %inc218 = add nuw i32 %i.9404, 1
  %exitcond428.not = icmp eq i32 %inc218, %66
  br i1 %exitcond428.not, label %for.inc217.cleanup_crit_edge, label %for.inc217.for.body206_crit_edge

for.inc217.for.body206_crit_edge:                 ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body206

for.inc217.cleanup_crit_edge:                     ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end219:                                       ; preds = %land.lhs.true.for.end219_crit_edge, %sw.epilog.for.end219_crit_edge
  %i.9.lcssa = phi i32 [ 0, %sw.epilog.for.end219_crit_edge ], [ %i.9404, %land.lhs.true.for.end219_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.9.lcssa, i32 %66)
  %cmp221 = icmp eq i32 %i.9.lcssa, %66
  br i1 %cmp221, label %for.end219.cleanup_crit_edge, label %if.end224

for.end219.cleanup_crit_edge:                     ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end224:                                        ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %0, align 8
  %arrayidx226 = getelementptr [9 x i32], ptr @amdgpu_ctx_num_entities, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx226, align 4
  %77 = tail call i32 @llvm.umin.i32(i32 %76, i32 %num_rings.22)
  %version232 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 122, i32 %i.9.lcssa, i32 1
  %78 = ptrtoint ptr %version232 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %version232, align 4
  %major = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %major, align 4
  %82 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %result, align 8
  %83 = load ptr, ptr %version232, align 4
  %minor = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %minor, align 4
  %hw_ip_version_minor = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, ptr %result, i32 0, i32 1
  %86 = ptrtoint ptr %hw_ip_version_minor to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %hw_ip_version_minor, align 4
  %capabilities_flags = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, ptr %result, i32 0, i32 2
  %87 = ptrtoint ptr %capabilities_flags to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 0, ptr %capabilities_flags, align 8
  %notmask = shl nsw i32 -1, %77
  %sub = xor i32 %notmask, -1
  %available_rings = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, ptr %result, i32 0, i32 5
  %88 = ptrtoint ptr %available_rings to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub, ptr %available_rings, align 8
  %ib_start_alignment237 = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, ptr %result, i32 0, i32 3
  %89 = ptrtoint ptr %ib_start_alignment237 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %ib_start_alignment.0, ptr %ib_start_alignment237, align 8
  %ib_size_alignment238 = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, ptr %result, i32 0, i32 4
  %90 = ptrtoint ptr %ib_size_alignment238 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %ib_size_alignment.0, ptr %ib_size_alignment238, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end224, %for.end219.cleanup_crit_edge, %for.inc217.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end224 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.end219.cleanup_crit_edge ], [ 0, %for.inc217.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_device_ip_get_ip_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @amdgpu_firmware_info(ptr noundef writeonly %fw_info, ptr nocapture noundef readonly %query_fw, ptr noundef readonly %adev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %query_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %query_fw, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 14, label %sw.bb6
    i32 3, label %sw.bb10
    i32 4, label %sw.bb14
    i32 5, label %sw.bb18
    i32 6, label %sw.bb23
    i32 7, label %sw.bb28
    i32 15, label %sw.bb33
    i32 16, label %sw.bb38
    i32 17, label %sw.bb43
    i32 8, label %sw.bb48
    i32 10, label %sw.bb62
    i32 19, label %sw.bb66
    i32 11, label %sw.bb136
    i32 12, label %sw.bb151
    i32 13, label %sw.bb159
    i32 18, label %sw.bb169
    i32 20, label %sw.bb172
    i32 21, label %sw.bb176
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 4
  %3 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_version, align 8
  %5 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fw_info, align 4
  %fb_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 5
  %6 = ptrtoint ptr %fb_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_version, align 4
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fw_version3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %8 = ptrtoint ptr %fw_version3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_version3, align 4
  %10 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fw_info, align 4
  br label %return.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vcn = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110
  %11 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vcn, align 8
  %13 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fw_info, align 4
  br label %return.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fw_version11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 19
  %14 = ptrtoint ptr %fw_version11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_version11, align 4
  %16 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fw_info, align 4
  br label %return.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %me_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 10
  %17 = ptrtoint ptr %me_fw_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %me_fw_version, align 8
  %19 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fw_info, align 4
  %me_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 21
  %20 = ptrtoint ptr %me_feature_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %me_feature_version, align 4
  br label %return.sink.split

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pfp_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 12
  %22 = ptrtoint ptr %pfp_fw_version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pfp_fw_version, align 8
  %24 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %fw_info, align 4
  %pfp_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 23
  %25 = ptrtoint ptr %pfp_feature_version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pfp_feature_version, align 4
  br label %return.sink.split

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ce_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 14
  %27 = ptrtoint ptr %ce_fw_version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ce_fw_version, align 8
  %29 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fw_info, align 4
  %ce_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 22
  %30 = ptrtoint ptr %ce_feature_version to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ce_feature_version, align 8
  br label %return.sink.split

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rlc_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 16
  %32 = ptrtoint ptr %rlc_fw_version to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rlc_fw_version, align 8
  %34 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fw_info, align 4
  %rlc_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 24
  %35 = ptrtoint ptr %rlc_feature_version to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rlc_feature_version, align 8
  br label %return.sink.split

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rlc_srlc_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 25
  %37 = ptrtoint ptr %rlc_srlc_fw_version to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rlc_srlc_fw_version, align 4
  %39 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %fw_info, align 4
  %rlc_srlc_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 26
  %40 = ptrtoint ptr %rlc_srlc_feature_version to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rlc_srlc_feature_version, align 8
  br label %return.sink.split

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rlc_srlg_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 27
  %42 = ptrtoint ptr %rlc_srlg_fw_version to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rlc_srlg_fw_version, align 4
  %44 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %fw_info, align 4
  %rlc_srlg_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 28
  %45 = ptrtoint ptr %rlc_srlg_feature_version to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rlc_srlg_feature_version, align 8
  br label %return.sink.split

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rlc_srls_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 29
  %47 = ptrtoint ptr %rlc_srls_fw_version to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rlc_srls_fw_version, align 4
  %49 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fw_info, align 4
  %rlc_srls_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 30
  %50 = ptrtoint ptr %rlc_srls_feature_version to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rlc_srls_feature_version, align 8
  br label %return.sink.split

sw.bb48:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.drm_amdgpu_query_fw, ptr %query_fw, i32 0, i32 2
  %52 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %53, label %sw.bb48.return_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then55
  ]

sw.bb48.return_crit_edge:                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  %mec_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 18
  %55 = ptrtoint ptr %mec_fw_version to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mec_fw_version, align 8
  %57 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %fw_info, align 4
  %mec_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 31
  %58 = ptrtoint ptr %mec_feature_version to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mec_feature_version, align 4
  br label %return.sink.split

if.then55:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  %mec2_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 20
  %60 = ptrtoint ptr %mec2_fw_version to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mec2_fw_version, align 8
  %62 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %fw_info, align 4
  %mec2_feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 32
  %63 = ptrtoint ptr %mec2_feature_version to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mec2_feature_version, align 8
  br label %return.sink.split

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fw_version63 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 17
  %65 = ptrtoint ptr %fw_version63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fw_version63, align 4
  %67 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %fw_info, align 4
  br label %return.sink.split

sw.bb66:                                          ; preds = %entry
  %index67 = getelementptr inbounds %struct.drm_amdgpu_query_fw, ptr %query_fw, i32 0, i32 2
  %68 = ptrtoint ptr %index67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index67, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %69, label %sw.bb66.return_crit_edge [
    i32 2, label %sw.bb68
    i32 3, label %sw.bb76
    i32 4, label %sw.bb88
    i32 5, label %sw.bb100
    i32 6, label %sw.bb112
    i32 7, label %sw.bb124
  ]

sw.bb66.return_crit_edge:                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb68:                                          ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %bin_desc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 0, i32 3
  %71 = ptrtoint ptr %bin_desc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bin_desc, align 8
  %73 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %fw_info, align 4
  %feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %feature_version to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %feature_version, align 4
  br label %return.sink.split

sw.bb76:                                          ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %bin_desc79 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 0, i32 3
  %76 = ptrtoint ptr %bin_desc79 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bin_desc79, align 8
  %78 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %fw_info, align 4
  %feature_version86 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %feature_version86 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %feature_version86, align 4
  br label %return.sink.split

sw.bb88:                                          ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %bin_desc91 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 35, i32 0, i32 3
  %81 = ptrtoint ptr %bin_desc91 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bin_desc91, align 8
  %83 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %fw_info, align 4
  %feature_version98 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 35, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %feature_version98 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %feature_version98, align 4
  br label %return.sink.split

sw.bb100:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %bin_desc103 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 36, i32 0, i32 3
  %86 = ptrtoint ptr %bin_desc103 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bin_desc103, align 8
  %88 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %fw_info, align 4
  %feature_version110 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 36, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %feature_version110 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %feature_version110, align 4
  br label %return.sink.split

sw.bb112:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %bin_desc115 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 37, i32 0, i32 3
  %91 = ptrtoint ptr %bin_desc115 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bin_desc115, align 8
  %93 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %fw_info, align 4
  %feature_version122 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 37, i32 0, i32 3, i32 1
  %94 = ptrtoint ptr %feature_version122 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %feature_version122, align 4
  br label %return.sink.split

sw.bb124:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %bin_desc127 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 38, i32 0, i32 3
  %96 = ptrtoint ptr %bin_desc127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bin_desc127, align 8
  %98 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %fw_info, align 4
  %feature_version134 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 38, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %feature_version134 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %feature_version134, align 4
  br label %return.sink.split

sw.bb136:                                         ; preds = %entry
  %index137 = getelementptr inbounds %struct.drm_amdgpu_query_fw, ptr %query_fw, i32 0, i32 2
  %101 = ptrtoint ptr %index137 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %index137, align 4
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %103 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp138.not = icmp ult i32 %102, %104
  br i1 %cmp138.not, label %if.end140, label %sw.bb136.return_crit_edge

sw.bb136.return_crit_edge:                        ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end140:                                        ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #11
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %fw_version143 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %102, i32 1
  %105 = ptrtoint ptr %fw_version143 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fw_version143, align 4
  %107 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %fw_info, align 4
  %108 = ptrtoint ptr %index137 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index137, align 4
  %feature_version149 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %109, i32 2
  %110 = ptrtoint ptr %feature_version149 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %feature_version149, align 8
  br label %return.sink.split

sw.bb151:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sos = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 9
  %112 = ptrtoint ptr %sos to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sos, align 8
  %114 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %fw_info, align 4
  %feature_version157 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 9, i32 1
  %115 = ptrtoint ptr %feature_version157 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %feature_version157, align 4
  br label %return.sink.split

sw.bb159:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bin_desc161 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 32, i32 3
  %117 = ptrtoint ptr %bin_desc161 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bin_desc161, align 8
  %119 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %fw_info, align 4
  %feature_version167 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 32, i32 3, i32 1
  %120 = ptrtoint ptr %feature_version167 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %feature_version167, align 4
  br label %return.sink.split

sw.bb169:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dmcu_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 39
  %122 = ptrtoint ptr %dmcu_fw_version to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dmcu_fw_version, align 4
  %124 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %fw_info, align 4
  br label %return.sink.split

sw.bb172:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dmcub_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 10
  %125 = ptrtoint ptr %dmcub_fw_version to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dmcub_fw_version, align 4
  %127 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %fw_info, align 4
  br label %return.sink.split

sw.bb176:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %toc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 10
  %128 = ptrtoint ptr %toc to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %toc, align 8
  %130 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %fw_info, align 4
  %feature_version182 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 10, i32 1
  %131 = ptrtoint ptr %feature_version182 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %feature_version182, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb176, %sw.bb172, %sw.bb169, %sw.bb159, %sw.bb151, %if.end140, %sw.bb124, %sw.bb112, %sw.bb100, %sw.bb88, %sw.bb76, %sw.bb68, %sw.bb62, %if.then55, %if.then, %sw.bb43, %sw.bb38, %sw.bb33, %sw.bb28, %sw.bb23, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb
  %.sink = phi i32 [ %7, %sw.bb ], [ 0, %sw.bb2 ], [ 0, %sw.bb6 ], [ 0, %sw.bb10 ], [ %21, %sw.bb14 ], [ %26, %sw.bb18 ], [ %31, %sw.bb23 ], [ %36, %sw.bb28 ], [ %41, %sw.bb33 ], [ %46, %sw.bb38 ], [ %51, %sw.bb43 ], [ 0, %sw.bb62 ], [ %111, %if.end140 ], [ %116, %sw.bb151 ], [ %121, %sw.bb159 ], [ 0, %sw.bb169 ], [ 0, %sw.bb172 ], [ %132, %sw.bb176 ], [ %64, %if.then55 ], [ %59, %if.then ], [ %100, %sw.bb124 ], [ %95, %sw.bb112 ], [ %90, %sw.bb100 ], [ %85, %sw.bb88 ], [ %80, %sw.bb76 ], [ %75, %sw.bb68 ]
  %feature = getelementptr inbounds %struct.drm_amdgpu_info_firmware, ptr %fw_info, i32 0, i32 1
  %133 = ptrtoint ptr %feature to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %.sink, ptr %feature, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb136.return_crit_edge, %sw.bb66.return_crit_edge, %sw.bb48.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb48.return_crit_edge ], [ -22, %sw.bb66.return_crit_edge ], [ -22, %sw.bb136.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_vram_mgr_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_vram_mgr_vis_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gtt_mgr_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_off_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_get_sclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_get_mclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_used_handles(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_read_sensor(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_driver_lastclose_kms(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_fb_helper_lastclose(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_driver_open_kms(ptr noundef %dev, ptr nocapture noundef writeonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %delayed_init_work = getelementptr i8, ptr %dev, i32 90168
  %call1 = tail call zeroext i1 @flush_delayed_work(ptr noundef %delayed_init_work) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %0 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #9
  br label %cleanup58

if.end:                                           ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %1 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %driver_priv, align 4
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.pm_put_crit_edge, label %if.end6

if.end.pm_put_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_put

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2144) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end6.out_suspend_crit_edge, label %if.end12, !prof !156

if.end6.out_suspend_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_suspend

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @amdgpu_pasid_alloc(i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.26) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end12.if.end17_crit_edge
  %pasid.0 = phi i32 [ 0, %do.end ], [ %call13, %if.end12.if.end17_crit_edge ]
  %call18 = tail call i32 @amdgpu_vm_init(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.error_pasid_crit_edge

if.end17.error_pasid_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_pasid

if.end21:                                         ; preds = %if.end17
  %call23 = tail call i32 @amdgpu_vm_set_pasid(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, i32 noundef %pasid.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.error_vm_crit_edge

if.end21.error_vm_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_vm

if.end26:                                         ; preds = %if.end21
  %call28 = tail call ptr @amdgpu_vm_bo_add(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, ptr noundef null) #9
  %prt_va = getelementptr inbounds %struct.amdgpu_fpriv, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prt_va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28, ptr %prt_va, align 8
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end26.error_vm_crit_edge, label %if.end32

if.end26.error_vm_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_vm

if.end32:                                         ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_mcbp to i32))
  %8 = load i32, ptr @amdgpu_mcbp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool33.not = icmp eq i32 %8, 0
  br i1 %tobool33.not, label %lor.lhs.false, label %if.end32.if.then35_crit_edge

if.end32.if.then35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end32
  %virt = getelementptr i8, ptr %dev, i32 90272
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %lor.lhs.false.do.body45_crit_edge, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

lor.lhs.false.do.body45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end32.if.then35_crit_edge
  %call36 = tail call i64 @amdgpu_csa_vaddr(ptr noundef %add.ptr.i) #9
  %and37 = and i64 %call36, 281474976710655
  %csa_obj = getelementptr i8, ptr %dev, i32 90276
  %11 = ptrtoint ptr %csa_obj to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csa_obj, align 4
  %csa_va = getelementptr inbounds %struct.amdgpu_fpriv, ptr %call7.i.i, i32 0, i32 2
  %call40 = tail call i32 @amdgpu_map_static_csa(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, ptr noundef %12, ptr noundef %csa_va, i64 noundef %and37, i32 noundef 131072) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then35.do.body45_crit_edge, label %if.then35.error_vm_crit_edge

if.then35.error_vm_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_vm

if.then35.do.body45_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

do.body45:                                        ; preds = %if.then35.do.body45_crit_edge, %lor.lhs.false.do.body45_crit_edge
  %bo_list_lock = getelementptr inbounds %struct.amdgpu_fpriv, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %bo_list_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @amdgpu_driver_open_kms.__key) #9
  %bo_list_handles = getelementptr inbounds %struct.amdgpu_fpriv, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %bo_list_handles, ptr noundef nonnull @.str.38, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 67108868, ptr %xa_flags.i.i.i, align 8
  %xa_head.i.i.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %14 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %call7.i.i, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idr_base.i.i, align 8
  %idr_next.i.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %call7.i.i, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %idr_next.i.i, align 4
  %ctx_mgr = getelementptr inbounds %struct.amdgpu_fpriv, ptr %call7.i.i, i32 0, i32 5
  tail call void @amdgpu_ctx_mgr_init(ptr noundef %ctx_mgr) #9
  %17 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  br label %out_suspend

error_vm:                                         ; preds = %if.then35.error_vm_crit_edge, %if.end26.error_vm_crit_edge, %if.end21.error_vm_crit_edge
  %r.1 = phi i32 [ %call23, %if.end21.error_vm_crit_edge ], [ %call40, %if.then35.error_vm_crit_edge ], [ -12, %if.end26.error_vm_crit_edge ]
  tail call void @amdgpu_vm_fini(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i) #9
  br label %error_pasid

error_pasid:                                      ; preds = %error_vm, %if.end17.error_pasid_crit_edge
  %r.2 = phi i32 [ %call18, %if.end17.error_pasid_crit_edge ], [ %r.1, %error_vm ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pasid.0)
  %tobool50.not = icmp eq i32 %pasid.0, 0
  br i1 %tobool50.not, label %error_pasid.if.end54_crit_edge, label %if.then51

error_pasid.if.end54_crit_edge:                   ; preds = %error_pasid
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then51:                                        ; preds = %error_pasid
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_pasid_free(i32 noundef %pasid.0) #9
  %call53 = tail call i32 @amdgpu_vm_set_pasid(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, i32 noundef 0) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %error_pasid.if.end54_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out_suspend

out_suspend:                                      ; preds = %if.end54, %do.body45, %if.end6.out_suspend_crit_edge
  %r.3 = phi i32 [ %r.2, %if.end54 ], [ 0, %do.body45 ], [ -12, %if.end6.out_suspend_crit_edge ]
  %18 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev3, align 4
  %call.i97 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i97, ptr %last_busy.i, align 8
  br label %pm_put

pm_put:                                           ; preds = %out_suspend, %if.end.pm_put_crit_edge
  %r.4 = phi i32 [ %call.i, %if.end.pm_put_crit_edge ], [ %r.3, %out_suspend ]
  %21 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev3, align 4
  %call.i98 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #9
  br label %cleanup58

cleanup58:                                        ; preds = %pm_put, %if.then
  %retval.0 = phi i32 [ -133, %if.then ], [ %r.4, %pm_put ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_pasid_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_set_pasid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_vm_bo_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_csa_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_map_static_csa(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ctx_mgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_pasid_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_driver_postclose_kms(ptr noundef %dev, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %pd = alloca ptr, align 4
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pd) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %call3 = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %add.ptr.i, i32 noundef 8) #9
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_uvd_free_handles(ptr noundef %add.ptr.i, ptr noundef %file_priv) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %add.ptr.i, i32 noundef 9) #9
  %cmp7.not = icmp eq ptr %call6, null
  br i1 %cmp7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_vce_free_handles(ptr noundef %add.ptr.i, ptr noundef %file_priv) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %prt_va = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prt_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prt_va, align 8
  tail call void @amdgpu_vm_bo_rmv(ptr noundef %add.ptr.i, ptr noundef %5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_mcbp to i32))
  %6 = load i32, ptr @amdgpu_mcbp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end9
  %virt = getelementptr i8, ptr %dev, i32 90272
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end29_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end9.do.body_crit_edge
  %csa_obj = getelementptr i8, ptr %dev, i32 90276
  %9 = ptrtoint ptr %csa_obj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csa_obj, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 4, i32 0, i32 9
  %13 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %14, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %15 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %do.end25
    i32 -512, label %do.body.do.body19_crit_edge
  ], !prof !157

do.body.do.body19_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 -17736
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.39, ptr noundef %10) #12
  br label %do.body19

do.body19:                                        ; preds = %do.end.i, %do.body.do.body19_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1275, 0\0A.popsection", ""() #9, !srcloc !158
  unreachable

do.end25:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %csa_va = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %csa_va to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csa_va, align 4
  tail call void @amdgpu_vm_bo_rmv(ptr noundef %add.ptr.i, ptr noundef %19) #9
  %20 = ptrtoint ptr %csa_va to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %csa_va, align 4
  %21 = ptrtoint ptr %csa_obj to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csa_obj, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %22, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %22, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #9
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %22, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %26, ptr noundef null) #9
  %27 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %28, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #9
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %22, i32 0, i32 4, i32 0, i32 9
  %29 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %30) #9
  tail call void @ww_mutex_unlock(ptr noundef %30) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end25, %lor.lhs.false.if.end29_crit_edge
  %pasid30 = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %pasid30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pasid30, align 4
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %1, i32 0, i32 12, i32 1
  %33 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bo, align 4
  %call32 = tail call ptr @amdgpu_bo_ref(ptr noundef %34) #9
  %35 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call32, ptr %pd, align 4
  %ctx_mgr = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 5
  tail call void @amdgpu_ctx_mgr_fini(ptr noundef %ctx_mgr) #9
  tail call void @amdgpu_vm_fini(ptr noundef %add.ptr.i, ptr noundef nonnull %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool34.not = icmp eq i32 %32, 0
  br i1 %tobool34.not, label %if.end29.if.end36_crit_edge, label %if.then35

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pd, align 4
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %37, i32 0, i32 4, i32 0, i32 9
  %38 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resv, align 8
  tail call void @amdgpu_pasid_free_delayed(ptr noundef %39, i32 noundef %32) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end29.if.end36_crit_edge
  call void @amdgpu_bo_unref(ptr noundef nonnull %pd) #9
  %bo_list_handles = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %handle, align 4
  %call3779 = call ptr @idr_get_next(ptr noundef %bo_list_handles, ptr noundef nonnull %handle) #9
  %cmp38.not80 = icmp eq ptr %call3779, null
  br i1 %cmp38.not80, label %if.end36.for.end_crit_edge, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end36.for.body_crit_edge
  %call3781 = phi ptr [ %call37, %for.body.for.body_crit_edge ], [ %call3779, %if.end36.for.body_crit_edge ]
  call void @amdgpu_bo_list_put(ptr noundef nonnull %call3781) #9
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %handle, align 4
  %add = add i32 %42, 1
  store i32 %add, ptr %handle, align 4
  %call37 = call ptr @idr_get_next(ptr noundef %bo_list_handles, ptr noundef nonnull %handle) #9
  %cmp38.not = icmp eq ptr %call37, null
  br i1 %cmp38.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end36.for.end_crit_edge
  call void @idr_destroy(ptr noundef %bo_list_handles) #9
  %bo_list_lock = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 3
  call void @mutex_destroy(ptr noundef %bo_list_lock) #9
  call void @kfree(ptr noundef nonnull %1) #9
  %43 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %driver_priv, align 4
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 4
  %call.i77 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 12, i32 22
  %46 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store volatile i64 %call.i77, ptr %last_busy.i, align 8
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  %call.i78 = call i32 @__pm_runtime_suspend(ptr noundef %48, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_uvd_free_handles(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vce_free_handles(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_bo_rmv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_bo_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ctx_mgr_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_pasid_free_delayed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_list_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_driver_release_kms(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  tail call void @amdgpu_device_fini_sw(ptr noundef %add.ptr.i) #9
  %pdev = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_fini_sw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_get_vblank_counter_kms(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  %vpos = alloca i32, align 4
  %hpos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpos) #9
  %4 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vpos, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpos) #9
  %5 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %hpos, align 4, !annotation !154
  %num_crtc = getelementptr i8, ptr %1, i32 22400
  %6 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 79, i32 3, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  %funcs23 = getelementptr i8, ptr %1, i32 22416
  br i1 %tobool.not, label %if.else21, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %10 = ptrtoint ptr %funcs23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs23, align 8
  %vblank_get_counter = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %vblank_get_counter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vblank_get_counter, align 4
  %call5 = call i32 %13(ptr noundef %add.ptr.i, i32 noundef %3) #9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %hwmode = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 13
  %call9 = call i32 @amdgpu_display_get_crtc_scanoutpos(ptr noundef %1, i32 noundef %3, i32 noundef -2147483648, ptr noundef nonnull %vpos, ptr noundef nonnull %hpos, ptr noundef null, ptr noundef null, ptr noundef %hwmode) #9
  %16 = ptrtoint ptr %funcs23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs23, align 8
  %vblank_get_counter12 = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %vblank_get_counter12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vblank_get_counter12, align 4
  %call13 = call i32 %19(ptr noundef %add.ptr.i, i32 noundef %3) #9
  %cmp14.not = icmp eq i32 %call5, %call13
  br i1 %cmp14.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  %and = and i32 %call9, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp15.not = icmp eq i32 %and, 5
  br i1 %cmp15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %call9) #9
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vpos, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.32, i32 noundef %3, i32 noundef %21) #9
  %22 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vpos, align 4
  %24 = xor i32 %23, -1
  %.lobit.not = lshr i32 %24, 31
  %spec.select = add i32 %.lobit.not, %call5
  br label %cleanup

if.else21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %funcs23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs23, align 8
  %vblank_get_counter24 = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %vblank_get_counter24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vblank_get_counter24, align 4
  %call25 = tail call i32 %28(ptr noundef %add.ptr.i, i32 noundef %3) #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.33) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else21, %if.else, %if.then16, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call5, %if.then16 ], [ %call25, %if.else21 ], [ %spec.select, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_get_crtc_scanoutpos(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_enable_vblank_kms(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call i32 @amdgpu_display_crtc_idx_to_irq_type(ptr noundef %add.ptr.i, i32 noundef %3) #9
  %crtc_irq = getelementptr i8, ptr %1, i32 22468
  %call3 = tail call i32 @amdgpu_irq_get(ptr noundef %add.ptr.i, ptr noundef %crtc_irq, i32 noundef %call2) #9
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_disable_vblank_kms(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call i32 @amdgpu_display_crtc_idx_to_irq_type(ptr noundef %add.ptr.i, i32 noundef %3) #9
  %crtc_irq = getelementptr i8, ptr %1, i32 22468
  %call3 = tail call i32 @amdgpu_irq_put(ptr noundef %add.ptr.i, ptr noundef %crtc_irq, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_debugfs_firmware_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
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
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_debugfs_firmware_info_fops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

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
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_firmware_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_debugfs_firmware_info_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_firmware_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %fw_info = alloca %struct.drm_amdgpu_info_firmware, align 4
  %query_fw = alloca %struct.drm_amdgpu_query_fw, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fw_info) #9
  %2 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fw_info, align 4, !annotation !154
  %3 = getelementptr inbounds %struct.drm_amdgpu_info_firmware, ptr %fw_info, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %query_fw) #9
  %5 = getelementptr inbounds %struct.drm_amdgpu_query_fw, ptr %query_fw, i32 0, i32 2
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %6 = getelementptr inbounds i8, ptr %query_fw, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 12)
  %8 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info, align 8
  %10 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %query_fw, align 4
  %call = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %13 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, i32 noundef %12, i32 noundef %14) #9
  %15 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %query_fw, align 4
  %call2 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %18 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %17, i32 noundef %19) #9
  %20 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %query_fw, align 4
  %call9 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  %23 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %22, i32 noundef %24) #9
  %25 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %query_fw, align 4
  %call16 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %28 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, i32 noundef %27, i32 noundef %29) #9
  %30 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %query_fw, align 4
  %call23 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  %33 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53, i32 noundef %32, i32 noundef %34) #9
  %35 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %query_fw, align 4
  %call30 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 4
  %38 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, i32 noundef %37, i32 noundef %39) #9
  %40 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 7, ptr %query_fw, align 4
  %call37 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %43 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, i32 noundef %42, i32 noundef %44) #9
  %45 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 15, ptr %query_fw, align 4
  %call44 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %3, align 4
  %48 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %47, i32 noundef %49) #9
  %50 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16, ptr %query_fw, align 4
  %call51 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %3, align 4
  %53 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, i32 noundef %52, i32 noundef %54) #9
  %55 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 17, ptr %query_fw, align 4
  %call58 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %3, align 4
  %58 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %57, i32 noundef %59) #9
  %60 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 8, ptr %query_fw, align 4
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %5, align 4
  %call65 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %3, align 4
  %64 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %63, i32 noundef %65) #9
  %mec2_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 19
  %66 = ptrtoint ptr %mec2_fw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mec2_fw, align 4
  %tobool71.not = icmp eq ptr %67, null
  br i1 %tobool71.not, label %if.end68.if.end80_crit_edge, label %if.then72

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then72:                                        ; preds = %if.end68
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %5, align 4
  %call74 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then72.cleanup_crit_edge

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end77:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %3, align 4
  %71 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, i32 noundef %70, i32 noundef %72) #9
  br label %if.end80

if.end80:                                         ; preds = %if.end77, %if.end68.if.end80_crit_edge
  %73 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 12, ptr %query_fw, align 4
  %call82 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end85:                                         ; preds = %if.end80
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %3, align 4
  %76 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, i32 noundef %75, i32 noundef %77) #9
  %78 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 13, ptr %query_fw, align 4
  %call89 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end92:                                         ; preds = %if.end85
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %3, align 4
  %81 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %80, i32 noundef %82) #9
  %83 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 19, ptr %query_fw, align 4
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %5, align 4
  %call97 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end92.for.inc_crit_edge

if.end92.for.inc_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end100:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %3, align 4
  %87 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.43, i32 noundef %86, i32 noundef %88) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end100, %if.end92.for.inc_crit_edge
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3, ptr %5, align 4
  %call97.1 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.1)
  %tobool98.not.1 = icmp eq i32 %call97.1, 0
  br i1 %tobool98.not.1, label %if.end100.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end100.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %3, align 4
  %92 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.44, i32 noundef %91, i32 noundef %93) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end100.1, %for.inc.for.inc.1_crit_edge
  %94 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 4, ptr %5, align 4
  %call97.2 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.2)
  %tobool98.not.2 = icmp eq i32 %call97.2, 0
  br i1 %tobool98.not.2, label %if.end100.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end100.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %3, align 4
  %97 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.45, i32 noundef %96, i32 noundef %98) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end100.2, %for.inc.1.for.inc.2_crit_edge
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 5, ptr %5, align 4
  %call97.3 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.3)
  %tobool98.not.3 = icmp eq i32 %call97.3, 0
  br i1 %tobool98.not.3, label %if.end100.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.end100.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %3, align 4
  %102 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.46, i32 noundef %101, i32 noundef %103) #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end100.3, %for.inc.2.for.inc.3_crit_edge
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 6, ptr %5, align 4
  %call97.4 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.4)
  %tobool98.not.4 = icmp eq i32 %call97.4, 0
  br i1 %tobool98.not.4, label %if.end100.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.end100.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %3, align 4
  %107 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.47, i32 noundef %106, i32 noundef %108) #9
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end100.4, %for.inc.3.for.inc.4_crit_edge
  %109 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 7, ptr %5, align 4
  %call97.5 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.5)
  %tobool98.not.5 = icmp eq i32 %call97.5, 0
  br i1 %tobool98.not.5, label %if.end100.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.end100.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %3, align 4
  %112 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.48, i32 noundef %111, i32 noundef %113) #9
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end100.5, %for.inc.4.for.inc.5_crit_edge
  %114 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 10, ptr %query_fw, align 4
  %call104 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end107:                                        ; preds = %for.inc.5
  %115 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fw_info, align 4
  %shr = lshr i32 %116, 16
  %shr110 = lshr i32 %116, 8
  %117 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %3, align 4
  %conv120 = and i32 %shr110, 255
  %conv121 = and i32 %116, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.64, i32 noundef %118, i32 noundef %116, i32 noundef %shr, i32 noundef %conv120, i32 noundef %conv121) #9
  %119 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 11, ptr %query_fw, align 4
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 107, i32 8
  %120 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp124266 = icmp sgt i32 %121, 0
  br i1 %cmp124266, label %if.end107.for.body126_crit_edge, label %if.end107.for.end136_crit_edge

if.end107.for.end136_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end136

if.end107.for.body126_crit_edge:                  ; preds = %if.end107
  br label %for.body126

for.body126:                                      ; preds = %if.end131.for.body126_crit_edge, %if.end107.for.body126_crit_edge
  %i.1267 = phi i32 [ %inc135, %if.end131.for.body126_crit_edge ], [ 0, %if.end107.for.body126_crit_edge ]
  %122 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %i.1267, ptr %5, align 4
  %call128 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %for.body126.cleanup_crit_edge

for.body126.cleanup_crit_edge:                    ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end131:                                        ; preds = %for.body126
  %123 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %3, align 4
  %125 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, i32 noundef %i.1267, i32 noundef %124, i32 noundef %126) #9
  %inc135 = add nuw nsw i32 %i.1267, 1
  %127 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_instances, align 4
  %cmp124 = icmp slt i32 %inc135, %128
  br i1 %cmp124, label %if.end131.for.body126_crit_edge, label %if.end131.for.end136_crit_edge

if.end131.for.end136_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end136

if.end131.for.body126_crit_edge:                  ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body126

for.end136:                                       ; preds = %if.end131.for.end136_crit_edge, %if.end107.for.end136_crit_edge
  %129 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 14, ptr %query_fw, align 4
  %call138 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %for.end136.cleanup_crit_edge

for.end136.cleanup_crit_edge:                     ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end141:                                        ; preds = %for.end136
  %130 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %3, align 4
  %132 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.66, i32 noundef %131, i32 noundef %133) #9
  %134 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 18, ptr %query_fw, align 4
  %call145 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end148:                                        ; preds = %if.end141
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %3, align 4
  %137 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.67, i32 noundef %136, i32 noundef %138) #9
  %139 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 20, ptr %query_fw, align 4
  %call152 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.end148.cleanup_crit_edge

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end155:                                        ; preds = %if.end148
  %140 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %3, align 4
  %142 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.68, i32 noundef %141, i32 noundef %143) #9
  %144 = ptrtoint ptr %query_fw to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 21, ptr %query_fw, align 4
  %call159 = call fastcc i32 @amdgpu_firmware_info(ptr noundef nonnull %fw_info, ptr noundef nonnull %query_fw, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end162, label %if.end155.cleanup_crit_edge

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end162:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %3, align 4
  %147 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %fw_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.69, i32 noundef %146, i32 noundef %148) #9
  %vbios_version = getelementptr inbounds %struct.atom_context, ptr %9, i32 0, i32 17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.70, ptr noundef %vbios_version) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %if.end155.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %if.end141.cleanup_crit_edge, %for.end136.cleanup_crit_edge, %for.body126.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end162 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call9, %if.end5.cleanup_crit_edge ], [ %call16, %if.end12.cleanup_crit_edge ], [ %call23, %if.end19.cleanup_crit_edge ], [ %call30, %if.end26.cleanup_crit_edge ], [ %call37, %if.end33.cleanup_crit_edge ], [ %call44, %if.end40.cleanup_crit_edge ], [ %call51, %if.end47.cleanup_crit_edge ], [ %call58, %if.end54.cleanup_crit_edge ], [ %call65, %if.end61.cleanup_crit_edge ], [ %call74, %if.then72.cleanup_crit_edge ], [ %call82, %if.end80.cleanup_crit_edge ], [ %call89, %if.end85.cleanup_crit_edge ], [ %call104, %for.inc.5.cleanup_crit_edge ], [ %call138, %for.end136.cleanup_crit_edge ], [ %call145, %if.end141.cleanup_crit_edge ], [ %call152, %if.end148.cleanup_crit_edge ], [ %call159, %if.end155.cleanup_crit_edge ], [ %call128, %for.body126.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %query_fw) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw_info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !46, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !65, !67, !69, !71, !72, !74, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 96, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @amdgpu_driver_unload_kms._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @amdgpu_driver_unload_kms._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 109, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 178, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @amdgpu_driver_load_kms._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @amdgpu_driver_load_kms._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 185, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @amdgpu_driver_load_kms._entry.8, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @amdgpu_driver_load_kms._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 189, i32 3}
!22 = !{ptr @amdgpu_driver_load_kms._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @amdgpu_driver_load_kms._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 216, i32 4}
!26 = !{ptr @amdgpu_driver_load_kms._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @amdgpu_driver_load_kms._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 225, i32 3}
!30 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !29, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!32 = !{ptr @amdgpu_driver_load_kms._entry.20, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 270, i32 3}
!34 = !{ptr @amdgpu_driver_load_kms._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 595, i32 4}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 786, i32 5}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 940, i32 4}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1171, i32 3}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1189, i32 3}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @amdgpu_driver_open_kms._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @amdgpu_driver_open_kms._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @amdgpu_driver_open_kms.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1216, i32 2}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1333, i32 3}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1363, i32 4}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1365, i32 4}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1378, i32 3}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1641, i32 22}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!69 = !{ptr @xa_init_flags.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @amdgpu_bo_reserve._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @amdgpu_bo_reserve._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!80 = !{ptr @amdgpu_debugfs_firmware_info_fops, !81, !"amdgpu_debugfs_firmware_info_fops", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1631, i32 1}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1436, i32 3}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1437, i32 3}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1438, i32 3}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1439, i32 3}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1440, i32 3}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1441, i32 3}
!94 = distinct !{null, !95, !"ta_fw_name", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1434, i32 21}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1450, i32 16}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1458, i32 16}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1466, i32 16}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1474, i32 16}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1482, i32 16}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1490, i32 16}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1498, i32 16}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1506, i32 16}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1514, i32 16}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1522, i32 16}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1531, i32 16}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1540, i32 17}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1549, i32 16}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1558, i32 16}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1568, i32 17}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1580, i32 16}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1590, i32 17}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1599, i32 16}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1607, i32 16}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1615, i32 16}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1623, i32 16}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c", i32 1626, i32 16}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i8 0, i8 2}
!150 = !{i64 2148398210}
!151 = !{i64 774131, i64 774156, i64 774178, i64 774194, i64 774206, i64 774226, i64 774250, i64 774266, i64 774278}
!152 = !{i64 2148398398}
!153 = !{i64 2152167744, i64 2152167769}
!154 = !{!"auto-init"}
!155 = !{!"branch_weights", i32 2000, i32 1}
!156 = !{!"branch_weights", i32 1, i32 2000}
!157 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!158 = !{i64 2159461526, i64 2159462031, i64 2159461563, i64 2159461619, i64 2159461653, i64 2159461677, i64 2159461718, i64 2159461739, i64 2159461767, i64 2159461801}
