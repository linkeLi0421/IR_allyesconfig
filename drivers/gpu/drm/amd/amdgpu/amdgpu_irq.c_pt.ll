; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.98, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
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
%struct.anon.90 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.97], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.97 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.94] }
%struct.anon.94 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.98 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.111, i32, i32, i32, i32 }
%union.anon.111 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.amdgpu_nbio_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }
%struct.amdgpu_ih_funcs = type { ptr, ptr, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IH\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDMA2 or ACP\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ATHUB\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BIF\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDMA3 or DCE\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDMA4 or ISP\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VMC1 or PCIE0\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RLC\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA0\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA1\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SE0SH\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SE1SH\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SE2SH\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SE3SH\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VCN1 or UVD1\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"THM\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VCN or UVD\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SDMA5 or VCE0\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VMC\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SDMA6 or XDMA\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GRBM_CP\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ATS\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ROM_SMUIO\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DF\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SDMA7 or VCE1\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PWR\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UTCL2\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EA\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UTCL2LOG\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP0\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP1\00", [28 x i8] zeroinitializer }, align 32
@soc15_ih_clientid_name = dso_local global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error disabling interrupt (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&adev->irq.lock\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_irq_init.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amdgpu_irq_init\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: using MSI/MSI-X.\0A\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_irq_init.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&adev->hotplug_work)\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_irq_init.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&adev->irq.ih1_work)\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_irq_init.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&adev->irq.ih2_work)\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_irq_init.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&adev->irq.ih_soft_work)\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: irq initialized.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid client_id in IV: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid src_id in IV: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unregistered interrupt client_id: %d src_id: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error processing interrupt (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unhandled interrupt src_id: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_hw_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @amdgpu_irqdomain_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GPU irq add domain failed\0A\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_msi = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_amdgpu_iv = external dso_local global %struct.tracepoint, align 4
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", [44 x i8] zeroinitializer }, align 32
@trace_amdgpu_iv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@amdgpu_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_irq_mask, ptr null, ptr @amdgpu_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"amdgpu-ih\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 69, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 70, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 71, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 72, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 73, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 74, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 75, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 76, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 77, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 78, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 79, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 80, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 81, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 82, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 83, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 84, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 85, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 86, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 87, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 88, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 89, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 90, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 91, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 92, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 93, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 94, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 95, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 96, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 97, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 98, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 99, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 100, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [23 x i8] c"soc15_ih_clientid_name\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 68, i32 13 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 167, i32 6 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 311, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 329, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 343, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 347, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 348, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 349, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 369, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 504, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 507, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 514, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 520, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 525, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [24 x i8] c"amdgpu_hw_irqdomain_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 745, i32 36 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 765, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 76, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 108, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"amdgpu_irq_chip\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 714, i32 24 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 715, i32 10 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @soc15_ih_clientid_name, ptr @.str.32, ptr @amdgpu_irq_init.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @amdgpu_irq_init.__key.38, ptr @.str.39, ptr @amdgpu_irq_init.__key.40, ptr @.str.41, ptr @amdgpu_irq_init.__key.42, ptr @.str.43, ptr @amdgpu_irq_init.__key.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @amdgpu_hw_irqdomain_ops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @amdgpu_irq_chip, ptr @.str.56], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc15_ih_clientid_name to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_irq_init.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_irq_init.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_irq_init.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_irq_init.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_hw_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_irq_disable_all(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %for.body

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %entry
  %i.065 = phi i32 [ 0, %entry ], [ %inc39, %for.inc38.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 3, i32 %i.065
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc38_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.inc38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc38

for.body11:                                       ; preds = %cleanup.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %j.064 = phi i32 [ %inc36, %cleanup.for.body11_crit_edge ], [ 0, %for.body.for.body11_crit_edge ]
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr ptr, ptr %3, i32 %j.064
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %5, null
  br i1 %tobool17.not, label %for.body11.cleanup_crit_edge, label %lor.lhs.false

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body11
  %funcs = getelementptr inbounds %struct.amdgpu_irq_src, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  br i1 %tobool20.not, label %lor.lhs.false19.cleanup_crit_edge, label %for.cond23.preheader

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond23.preheader:                             ; preds = %lor.lhs.false19
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2562.not = icmp eq i32 %13, 0
  br i1 %cmp2562.not, label %for.cond23.preheader.cleanup_crit_edge, label %for.body27.lr.ph

for.cond23.preheader.cleanup_crit_edge:           ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body27.lr.ph:                                 ; preds = %for.cond23.preheader
  %enabled_types = getelementptr inbounds %struct.amdgpu_irq_src, ptr %5, i32 0, i32 1
  br label %for.body27

for.body27:                                       ; preds = %for.inc.for.body27_crit_edge, %for.body27.lr.ph
  %k.063 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc, %for.inc.for.body27_crit_edge ]
  %14 = ptrtoint ptr %enabled_types to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enabled_types, align 4
  %arrayidx28 = getelementptr %struct.atomic_t, ptr %15, i32 %k.063
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx28, i32 noundef 4) #10
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %arrayidx28, align 4
  %17 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call31 = tail call i32 %20(ptr noundef %adev, ptr noundef nonnull %5, i32 noundef %k.063, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.body27.for.inc_crit_edge, label %if.then33

for.body27.for.inc_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then33:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %call31) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %for.body27.for.inc_crit_edge
  %inc = add nuw i32 %k.063, 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %cmp25 = icmp ult i32 %inc, %22
  br i1 %cmp25, label %for.inc.for.body27_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body27_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond23.preheader.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body11.cleanup_crit_edge
  %inc36 = add nuw nsw i32 %j.064, 1
  %exitcond.not = icmp eq i32 %inc36, 256
  br i1 %exitcond.not, label %cleanup.for.inc38_crit_edge, label %cleanup.for.body11_crit_edge

cleanup.for.body11_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

cleanup.for.inc38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc38

for.inc38:                                        ; preds = %cleanup.for.inc38_crit_edge, %for.body.for.inc38_crit_edge
  %inc39 = add nuw nsw i32 %i.065, 1
  %exitcond66.not = icmp eq i32 %inc39, 32
  br i1 %exitcond66.not, label %for.end40, label %for.inc38.for.body_crit_edge

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end40:                                        ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_irq_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94
  %lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @amdgpu_irq_init.__key, i16 noundef signext 3) #10
  %msi_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 4
  %0 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %msi_enabled, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_msi to i32))
  %1 = load i32, ptr @amdgpu_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond.i.not = icmp eq i32 %1, 0
  br i1 %cond.i.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %call4 = tail call i32 @pci_msix_vec_count(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp slt i32 %call4, 1
  %. = select i1 %cmp, i32 2, i32 6
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %5, i32 noundef 1, i32 noundef 1, i32 noundef %., ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp sgt i32 %call.i, 0
  br i1 %cmp8, label %if.then9, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %msi_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_irq_init.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_irq_init, %if.then16)) #10
          to label %if.end21 [label %if.then16], !srcloc !127

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_irq_init.__UNIQUE_ID_ddebug391, ptr noundef %8, ptr noundef nonnull @.str.37) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then9, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %call22 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #10
  br i1 %call22, label %if.end21.do.body42_crit_edge, label %if.then23

if.end21.do.body42_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

if.then23:                                        ; preds = %if.end21
  %enable_virtual_display = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %9 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_virtual_display, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool24.not = icmp eq i8 %10, 0
  br i1 %tobool24.not, label %if.then25, label %if.then23.if.end27_crit_edge

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %vblank_disable_immediate = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 22
  %11 = ptrtoint ptr %vblank_disable_immediate to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %vblank_disable_immediate, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then23.if.end27_crit_edge
  %ddev.i164 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %12 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_crtc, align 8
  %call29 = tail call i32 @drm_vblank_init(ptr noundef %ddev.i164, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body33, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %hotplug_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 80
  tail call void @__init_work(ptr noundef %hotplug_work, i32 noundef 0) #10
  %14 = ptrtoint ptr %hotplug_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %hotplug_work, align 8
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 80, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.39, ptr noundef nonnull @amdgpu_irq_init.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry37 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 80, i32 1
  %15 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 80, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry37, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 80, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @amdgpu_hotplug_work_func, ptr %func, align 4
  br label %do.body42

do.body42:                                        ; preds = %do.body33, %if.end21.do.body42_crit_edge
  %ih1_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 10
  tail call void @__init_work(ptr noundef %ih1_work, i32 noundef 0) #10
  %18 = ptrtoint ptr %ih1_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %ih1_work, align 4
  %lockdep_map51 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map51, ptr noundef nonnull @.str.41, ptr noundef nonnull @amdgpu_irq_init.__key.40, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry54 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 10, i32 1
  %19 = ptrtoint ptr %entry54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry54, ptr %entry54, align 4
  %prev.i165 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 10, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i165 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry54, ptr %prev.i165, align 4
  %func57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 10, i32 2
  %21 = ptrtoint ptr %func57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @amdgpu_irq_handle_ih1, ptr %func57, align 4
  %ih2_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 11
  tail call void @__init_work(ptr noundef %ih2_work, i32 noundef 0) #10
  %22 = ptrtoint ptr %ih2_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %ih2_work, align 8
  %lockdep_map69 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map69, ptr noundef nonnull @.str.43, ptr noundef nonnull @amdgpu_irq_init.__key.42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry72 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 11, i32 1
  %23 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i166 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 11, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i166 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry72, ptr %prev.i166, align 4
  %func75 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 11, i32 2
  %25 = ptrtoint ptr %func75 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @amdgpu_irq_handle_ih2, ptr %func75, align 4
  %ih_soft_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 12
  tail call void @__init_work(ptr noundef %ih_soft_work, i32 noundef 0) #10
  %26 = ptrtoint ptr %ih_soft_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %ih_soft_work, align 4
  %lockdep_map87 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map87, ptr noundef nonnull @.str.45, ptr noundef nonnull @amdgpu_irq_init.__key.44, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry90 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 12, i32 1
  %27 = ptrtoint ptr %entry90 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry90, ptr %entry90, align 4
  %prev.i167 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 12, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i167 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry90, ptr %prev.i167, align 4
  %func93 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 12, i32 2
  %29 = ptrtoint ptr %func93 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @amdgpu_irq_handle_ih_soft, ptr %func93, align 4
  %pdev96 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %30 = ptrtoint ptr %pdev96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev96, align 4
  %call97 = tail call i32 @pci_irq_vector(ptr noundef %31, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.body42.cleanup_crit_edge, label %if.end100

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end100:                                        ; preds = %do.body42
  %ddev.i168 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %driver = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %call.i170 = tail call i32 @request_threaded_irq(i32 noundef %call97, ptr noundef nonnull @amdgpu_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %35, ptr noundef %ddev.i168) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool104.not = icmp eq i32 %call.i170, 0
  br i1 %tobool104.not, label %if.end111, label %if.then105

if.then105:                                       ; preds = %if.end100
  %call106 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #10
  br i1 %call106, label %if.then105.cleanup_crit_edge, label %if.then107

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then107:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  %hotplug_work108 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 80
  %call109 = tail call zeroext i1 @flush_work(ptr noundef %hotplug_work108) #10
  br label %cleanup

if.end111:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %irq1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %irq1, align 8
  %irq114 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 1
  %37 = ptrtoint ptr %irq114 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call97, ptr %irq114, align 4
  %max_vblank_count = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 26
  %38 = ptrtoint ptr %max_vblank_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16777215, ptr %max_vblank_count, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.46) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %if.then107, %if.then105.cleanup_crit_edge, %do.body42.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end111 ], [ %call29, %if.end27.cleanup_crit_edge ], [ %call97, %do.body42.cleanup_crit_edge ], [ %call.i170, %if.then107 ], [ %call.i170, %if.then105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msix_vec_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_has_dc_support(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_hotplug_work_func(ptr noundef %work) #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr i8, ptr %work, i32 -22424
  %mode_config1 = getelementptr i8, ptr %work, i32 -21764
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #10
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !129
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !129
  tail call void @mutex_lock_nested(ptr noundef %mode_config1, i32 noundef 0) #10
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i, ptr noundef nonnull %iter) #10
  %call28 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #10
  %tobool.not9 = icmp eq ptr %call28, null
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call210 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call28, %entry.while.body_crit_edge ]
  call void @amdgpu_connector_hotplug(ptr noundef nonnull %call210) #10
  %call2 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #10
  call void @mutex_unlock(ptr noundef %mode_config1) #10
  %call4 = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %ddev.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_irq_handle_ih1(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -25580
  %ih1 = getelementptr i8, ptr %work, i32 -508
  %call = tail call i32 @amdgpu_ih_process(ptr noundef %add.ptr, ptr noundef %ih1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_irq_handle_ih2(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -25624
  %ih2 = getelementptr i8, ptr %work, i32 -384
  %call = tail call i32 @amdgpu_ih_process(ptr noundef %add.ptr, ptr noundef %ih2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_irq_handle_ih_soft(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -25668
  %ih_soft = getelementptr i8, ptr %work, i32 -260
  %call = tail call i32 @amdgpu_ih_process(ptr noundef %add.ptr, ptr noundef %ih_soft) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_irq_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %arg, i32 -8
  %ih = getelementptr i8, ptr %arg, i32 24896
  %call2 = tail call i32 @amdgpu_ih_process(ptr noundef %add.ptr.i, ptr noundef %ih) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %2 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ras1.i = getelementptr i8, ptr %arg, i32 82000
  %3 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.if.end27_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

amdgpu_ras_is_supported.exit:                     ; preds = %if.end
  %ras_enabled.i = getelementptr i8, ptr %arg, i32 91656
  %5 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ras_enabled.i, align 8
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.end27_crit_edge, label %if.then5

amdgpu_ras_is_supported.exit.if.end27_crit_edge:  ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then5:                                         ; preds = %amdgpu_ras_is_supported.exit
  %ras_funcs = getelementptr i8, ptr %arg, i32 32796
  %8 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ras_funcs, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.then5.if.end27_crit_edge, label %land.lhs.true

if.then5.if.end27_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %if.then5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %land.lhs.true.land.lhs.true18_crit_edge, label %if.end14

land.lhs.true.land.lhs.true18_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true18

if.end14:                                         ; preds = %land.lhs.true
  tail call void %11(ptr noundef %add.ptr.i) #10
  %12 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %ras_funcs, align 4
  %tobool17.not = icmp eq ptr %.pr, null
  br i1 %tobool17.not, label %if.end14.if.end27_crit_edge, label %if.end14.land.lhs.true18_crit_edge

if.end14.land.lhs.true18_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true18

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true18:                                  ; preds = %if.end14.land.lhs.true18_crit_edge, %land.lhs.true.land.lhs.true18_crit_edge
  %13 = phi ptr [ %.pr, %if.end14.land.lhs.true18_crit_edge ], [ %9, %land.lhs.true.land.lhs.true18_crit_edge ]
  %handle_ras_err_event_athub_intr_no_bifring = getelementptr inbounds %struct.amdgpu_nbio_ras_funcs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %handle_ras_err_event_athub_intr_no_bifring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle_ras_err_event_athub_intr_no_bifring, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %land.lhs.true18.if.end27_crit_edge, label %if.then22

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %15(ptr noundef %add.ptr.i) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %land.lhs.true18.if.end27_crit_edge, %if.end14.if.end27_crit_edge, %if.then5.if.end27_crit_edge, %amdgpu_ras_is_supported.exit.if.end27_crit_edge, %if.end.if.end27_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_irq_fini_hw(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %irq2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 1
  %2 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq2, align 4
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call3 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %ddev.i) #10
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %irq, align 8
  %msi_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 4
  %5 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msi_enabled, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %8) #10
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %call9 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #10
  br i1 %call9, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hotplug_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 80
  %call11 = tail call zeroext i1 @flush_work(ptr noundef %hotplug_work) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  %ih_soft = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 8
  tail call void @amdgpu_ih_ring_fini(ptr noundef %adev, ptr noundef %ih_soft) #10
  %ih = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 5
  tail call void @amdgpu_ih_ring_fini(ptr noundef %adev, ptr noundef %ih) #10
  %ih1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 6
  tail call void @amdgpu_ih_ring_fini(ptr noundef %adev, ptr noundef %ih1) #10
  %ih2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 7
  tail call void @amdgpu_ih_ring_fini(ptr noundef %adev, ptr noundef %ih2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ih_ring_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_irq_fini_sw(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 3, i32 %i.037
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc21_crit_edge, label %for.body.for.body3_crit_edge

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body.for.inc21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21

for.body3:                                        ; preds = %cleanup.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %j.036 = phi i32 [ %inc, %cleanup.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr ptr, ptr %3, i32 %j.036
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %for.body3.cleanup_crit_edge, label %if.end11

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  %enabled_types = getelementptr inbounds %struct.amdgpu_irq_src, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %enabled_types to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enabled_types, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %enabled_types to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %enabled_types, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.body3.cleanup_crit_edge
  %inc = add nuw nsw i32 %j.036, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body3_crit_edge

cleanup.for.body3_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %for.end, %for.body.for.inc21_crit_edge
  %inc22 = add nuw nsw i32 %i.037, 1
  %exitcond38.not = icmp eq i32 %inc22, 32
  br i1 %exitcond38.not, label %for.end23, label %for.inc21.for.body_crit_edge

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end23:                                        ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_irq_add_id(ptr nocapture noundef %adev, i32 noundef %client_id, i32 noundef %src_id, ptr noundef %source) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %client_id)
  %cmp = icmp ugt i32 %client_id, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %src_id)
  %cmp1 = icmp ugt i32 %src_id, 255
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_irq_src, ptr %source, i32 0, i32 2
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end3.return_crit_edge, label %if.end5

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end5:                                          ; preds = %if.end3
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 3, i32 %client_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then7:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1024) #13
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool16.not, label %if.then7.return_crit_edge, label %if.then7.if.end19_crit_edge

if.then7.if.end19_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then7.return_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end19:                                         ; preds = %if.then7.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %arrayidx24 = getelementptr ptr, ptr %7, i32 %src_id
  %8 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx24, align 4
  %cmp25.not = icmp eq ptr %9, null
  br i1 %cmp25.not, label %if.end27, label %if.end19.return_crit_edge

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end27:                                         ; preds = %if.end19
  %10 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool28.not = icmp eq i32 %11, 0
  br i1 %tobool28.not, label %if.end27.if.end37_crit_edge, label %land.lhs.true

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end27
  %enabled_types = getelementptr inbounds %struct.amdgpu_irq_src, ptr %source, i32 0, i32 1
  %12 = ptrtoint ptr %enabled_types to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enabled_types, align 4
  %tobool29.not = icmp eq ptr %13, null
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then30:                                        ; preds = %land.lhs.true
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #10
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.then30.return_crit_edge, label %if.end7.i.i, !prof !130

if.then30.return_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end7.i.i:                                      ; preds = %if.then30
  %16 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #14
  %tobool33.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool33.not, label %if.end7.i.i.return_crit_edge, label %cleanup

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

cleanup:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %enabled_types to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i, ptr %enabled_types, align 4
  br label %if.end37

if.end37:                                         ; preds = %cleanup, %land.lhs.true.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %arrayidx42 = getelementptr ptr, ptr %19, i32 %src_id
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %source, ptr %arrayidx42, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.end7.i.i.return_crit_edge, %if.then30.return_crit_edge, %if.end19.return_crit_edge, %if.then7.return_crit_edge, %if.end3.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end37 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end3.return_crit_edge ], [ -12, %if.then7.return_crit_edge ], [ -22, %if.end19.return_crit_edge ], [ -12, %if.end7.i.i.return_crit_edge ], [ -12, %if.then30.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_irq_dispatch(ptr noundef %adev, ptr noundef %ih) local_unnamed_addr #0 align 64 {
entry:
  %entry1 = alloca %struct.amdgpu_iv_entry, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %0 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rptr, align 8
  %shr = lshr i32 %1, 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %entry1) #10
  %2 = call ptr @memset(ptr %entry1, i32 255, i32 64)
  %3 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ih, ptr %entry1, align 8
  %ring = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 6
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %shr
  %iv_entry = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 11
  %6 = ptrtoint ptr %iv_entry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %iv_entry, align 4
  %ih_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 9
  %7 = ptrtoint ptr %ih_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ih_funcs, align 8
  %decode_iv = getelementptr inbounds %struct.amdgpu_ih_funcs, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %decode_iv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %decode_iv, align 4
  call void %10(ptr noundef %adev, ptr noundef %ih, ptr noundef nonnull %entry1) #10
  %ih4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 5
  %sub.ptr.lhs.cast = ptrtoint ptr %ih to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ih4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 168
  call fastcc void @trace_amdgpu_iv(i32 noundef %sub.ptr.div, ptr noundef nonnull %entry1)
  %client_id5 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %11 = ptrtoint ptr %client_id5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %client_id5, align 4
  %src_id6 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %13 = ptrtoint ptr %src_id6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_id6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %12)
  %cmp = icmp ugt i32 %12, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.47, i32 noundef %12) #10
  br label %if.then42

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %cmp7 = icmp ugt i32 %14, 255
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.48, i32 noundef %14) #10
  br label %if.then42

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %land.lhs.true, label %if.else9.if.else15_crit_edge

if.else9.if.else15_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

land.lhs.true:                                    ; preds = %if.else9
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 15, i32 %14
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %land.lhs.true.if.else15_crit_edge, label %if.then13

land.lhs.true.if.else15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %domain = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 14
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %call = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %14) #10
  br label %if.then42

if.else15:                                        ; preds = %land.lhs.true.if.else15_crit_edge, %if.else9.if.else15_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 3, i32 %12
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.49, i32 noundef %12, i32 noundef %14) #10
  br label %if.then42

if.else20:                                        ; preds = %if.else15
  %arrayidx25 = getelementptr ptr, ptr %20, i32 %14
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.else35, label %if.then27

if.then27:                                        ; preds = %if.else20
  %funcs = getelementptr inbounds %struct.amdgpu_irq_src, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %funcs, align 4
  %process = getelementptr inbounds %struct.amdgpu_irq_src_funcs, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %process, align 4
  %call28 = call i32 %26(ptr noundef %adev, ptr noundef nonnull %22, ptr noundef nonnull %entry1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50, i32 noundef %call28) #10
  br label %if.then42

if.else31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool32.not.not = icmp eq i32 %call28, 0
  br i1 %tobool32.not.not, label %if.else31.if.then42_crit_edge, label %if.else31.if.end44_crit_edge

if.else31.if.end44_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.else31.if.then42_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.else35:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.51, i32 noundef %14) #10
  br label %if.then42

if.then42:                                        ; preds = %if.else35, %if.else31.if.then42_crit_edge, %if.then30, %if.then19, %if.then13, %if.then8, %if.then
  %27 = ptrtoint ptr %iv_entry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv_entry, align 4
  call void @amdgpu_amdkfd_interrupt(ptr noundef %adev, ptr noundef %28) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.else31.if.end44_crit_edge
  %timestamp = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 6
  %29 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %timestamp, align 8
  %processed_timestamp = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 16
  %31 = ptrtoint ptr %processed_timestamp to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %processed_timestamp, align 8
  %33 = sub i64 %30, %32
  %sub = shl i64 %33, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp46 = icmp sgt i64 %sub, 0
  br i1 %cmp46, label %if.then47, label %if.end44.if.end50_crit_edge

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %processed_timestamp to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %30, ptr %processed_timestamp, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end44.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %entry1) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_iv(i32 noundef %ih, ptr noundef %iv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_iv, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_iv, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !131

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !132
  %call42 = tail call i32 @__traceiter_amdgpu_iv(ptr noundef null, i32 noundef %ih, ptr noundef %iv) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !133
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !131

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_iv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_iv, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_iv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_amdgpu_iv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 113, ptr noundef nonnull @.str.54) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %31 = tail call i32 @llvm.read_register.i32(metadata !117) #10
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
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_amdkfd_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_irq_delegate(ptr noundef %adev, ptr nocapture noundef readonly %entry1, i32 noundef %num_dw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ih_soft = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 8
  %iv_entry = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 11
  %0 = ptrtoint ptr %iv_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv_entry, align 4
  tail call void @amdgpu_ih_ring_write(ptr noundef %ih_soft, ptr noundef %1, i32 noundef %num_dw) #10
  %ih_soft_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %ih_soft_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ih_ring_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_irq_update(ptr noundef %adev, ptr noundef %src, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq.i, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.amdgpu_irq_enabled.exit.thread_crit_edge, label %if.end.i

entry.amdgpu_irq_enabled.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_enabled.exit.thread

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp.not.i = icmp ugt i32 %3, %type
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.amdgpu_irq_enabled.exit.thread_crit_edge

if.end.i.amdgpu_irq_enabled.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_enabled.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %enabled_types.i = getelementptr inbounds %struct.amdgpu_irq_src, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %enabled_types.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enabled_types.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end2.i.amdgpu_irq_enabled.exit.thread_crit_edge, label %lor.lhs.false.i

if.end2.i.amdgpu_irq_enabled.exit.thread_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_enabled.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end2.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_irq_src, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.amdgpu_irq_enabled.exit.thread_crit_edge, label %amdgpu_irq_enabled.exit

lor.lhs.false.i.amdgpu_irq_enabled.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_enabled.exit.thread

amdgpu_irq_enabled.exit:                          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.atomic_t, ptr %5, i32 %type
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.i.not = icmp ne i32 %11, 0
  %spec.select = zext i1 %tobool8.i.not to i32
  br label %amdgpu_irq_enabled.exit.thread

amdgpu_irq_enabled.exit.thread:                   ; preds = %amdgpu_irq_enabled.exit, %lor.lhs.false.i.amdgpu_irq_enabled.exit.thread_crit_edge, %if.end2.i.amdgpu_irq_enabled.exit.thread_crit_edge, %if.end.i.amdgpu_irq_enabled.exit.thread_crit_edge, %entry.amdgpu_irq_enabled.exit.thread_crit_edge
  %12 = phi i32 [ 0, %entry.amdgpu_irq_enabled.exit.thread_crit_edge ], [ 0, %if.end.i.amdgpu_irq_enabled.exit.thread_crit_edge ], [ 0, %lor.lhs.false.i.amdgpu_irq_enabled.exit.thread_crit_edge ], [ 0, %if.end2.i.amdgpu_irq_enabled.exit.thread_crit_edge ], [ %spec.select, %amdgpu_irq_enabled.exit ]
  %funcs = getelementptr inbounds %struct.amdgpu_irq_src, ptr %src, i32 0, i32 2
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call6 = tail call i32 %16(ptr noundef %adev, ptr noundef %src, i32 noundef %type, i32 noundef %12) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_irq_enabled(ptr nocapture noundef readonly %adev, ptr nocapture noundef readonly %src, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp.not = icmp ugt i32 %3, %type
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.end
  %enabled_types = getelementptr inbounds %struct.amdgpu_irq_src, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %enabled_types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enabled_types, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end2.return_crit_edge, label %lor.lhs.false

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %if.end2
  %funcs = getelementptr inbounds %struct.amdgpu_irq_src, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.return_crit_edge, label %if.end6

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.atomic_t, ptr %5, i32 %type
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #10
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8 = icmp ne i32 %11, 0
  br label %return

return:                                           ; preds = %if.end6, %lor.lhs.false.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool8, %if.end6 ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %if.end2.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_irq_gpu_reset_resume_helper(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %ctrl.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %2 = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i) #10
  %4 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %ctrl.i, align 2, !annotation !129
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %msix_cap.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %msix_cap.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msix_cap.i, align 2
  %conv.i = zext i8 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %call.i = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef %add.i, ptr noundef nonnull %ctrl.i) #10
  %9 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctrl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %tobool.not.i = icmp sgt i16 %10, -1
  br i1 %tobool.not.i, label %if.then.amdgpu_restore_msix.exit_crit_edge, label %if.end.i

if.then.amdgpu_restore_msix.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_restore_msix.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %and4.i = and i16 %10, 32767
  %11 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %and4.i, ptr %ctrl.i, align 2
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %msix_cap8.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %msix_cap8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %msix_cap8.i, align 2
  %conv9.i = zext i8 %15 to i32
  %add10.i = add nuw nsw i32 %conv9.i, 2
  %call11.i = call i32 @pci_write_config_word(ptr noundef %13, i32 noundef %add10.i, i16 noundef zeroext %and4.i) #10
  %16 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ctrl.i, align 2
  %18 = or i16 %17, -32768
  store i16 %18, ptr %ctrl.i, align 2
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %msix_cap16.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %msix_cap16.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %msix_cap16.i, align 2
  %conv17.i = zext i8 %22 to i32
  %add18.i = add nuw nsw i32 %conv17.i, 2
  %call19.i = call i32 @pci_write_config_word(ptr noundef %20, i32 noundef %add18.i, i16 noundef zeroext %18) #10
  br label %amdgpu_restore_msix.exit

amdgpu_restore_msix.exit:                         ; preds = %if.end.i, %if.then.amdgpu_restore_msix.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #10
  br label %if.end

if.end:                                           ; preds = %amdgpu_restore_msix.exit, %entry.if.end_crit_edge
  %lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 2
  %irq.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94
  br label %for.body

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %if.end
  %i.054 = phi i32 [ 0, %if.end ], [ %inc31, %for.inc30.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 3, i32 %i.054
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %24, null
  br i1 %tobool5.not, label %for.body.for.inc30_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.inc30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30

for.body10:                                       ; preds = %cleanup.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %j.053 = phi i32 [ %inc28, %cleanup.for.body10_crit_edge ], [ 0, %for.body.for.body10_crit_edge ]
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %arrayidx15 = getelementptr ptr, ptr %26, i32 %j.053
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %28, null
  br i1 %tobool16.not, label %for.body10.cleanup_crit_edge, label %lor.lhs.false17

for.body10.cleanup_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false17:                                  ; preds = %for.body10
  %funcs = getelementptr inbounds %struct.amdgpu_irq_src, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs, align 4
  %tobool18.not = icmp eq ptr %30, null
  br i1 %tobool18.not, label %lor.lhs.false17.cleanup_crit_edge, label %lor.lhs.false19

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool21.not = icmp eq ptr %32, null
  br i1 %tobool21.not, label %lor.lhs.false19.cleanup_crit_edge, label %for.cond24.preheader

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond24.preheader:                             ; preds = %lor.lhs.false19
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp2550.not = icmp eq i32 %34, 0
  br i1 %cmp2550.not, label %for.cond24.preheader.cleanup_crit_edge, label %for.body26.lr.ph

for.cond24.preheader.cleanup_crit_edge:           ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %enabled_types.i.i = getelementptr inbounds %struct.amdgpu_irq_src, ptr %28, i32 0, i32 1
  br label %for.body26

for.body26:                                       ; preds = %amdgpu_irq_update.exit.for.body26_crit_edge, %for.body26.lr.ph
  %k.051 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc, %amdgpu_irq_update.exit.for.body26_crit_edge ]
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %35 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %irq.i.i, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %for.body26.amdgpu_irq_update.exit_crit_edge, label %if.end.i.i

for.body26.amdgpu_irq_update.exit_crit_edge:      ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

if.end.i.i:                                       ; preds = %for.body26
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %k.051)
  %cmp.not.i.i = icmp ugt i32 %38, %k.051
  br i1 %cmp.not.i.i, label %if.end2.i.i, label %if.end.i.i.amdgpu_irq_update.exit_crit_edge

if.end.i.i.amdgpu_irq_update.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

if.end2.i.i:                                      ; preds = %if.end.i.i
  %39 = ptrtoint ptr %enabled_types.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %enabled_types.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i.i, label %if.end2.i.i.amdgpu_irq_update.exit_crit_edge, label %lor.lhs.false.i.i

if.end2.i.i.amdgpu_irq_update.exit_crit_edge:     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

lor.lhs.false.i.i:                                ; preds = %if.end2.i.i
  %41 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %tobool4.not.i.i = icmp eq ptr %44, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge, label %amdgpu_irq_enabled.exit.i

lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

amdgpu_irq_enabled.exit.i:                        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.atomic_t, ptr %40, i32 %k.051
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #10
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool8.i.not.i = icmp ne i32 %46, 0
  %spec.select.i = zext i1 %tobool8.i.not.i to i32
  br label %amdgpu_irq_update.exit

amdgpu_irq_update.exit:                           ; preds = %amdgpu_irq_enabled.exit.i, %lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge, %if.end2.i.i.amdgpu_irq_update.exit_crit_edge, %if.end.i.i.amdgpu_irq_update.exit_crit_edge, %for.body26.amdgpu_irq_update.exit_crit_edge
  %47 = phi i32 [ 0, %for.body26.amdgpu_irq_update.exit_crit_edge ], [ 0, %if.end.i.i.amdgpu_irq_update.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge ], [ 0, %if.end2.i.i.amdgpu_irq_update.exit_crit_edge ], [ %spec.select.i, %amdgpu_irq_enabled.exit.i ]
  %48 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call6.i = call i32 %51(ptr noundef %adev, ptr noundef nonnull %28, i32 noundef %k.051, i32 noundef %47) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %inc = add nuw i32 %k.051, 1
  %52 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %28, align 4
  %cmp25 = icmp ult i32 %inc, %53
  br i1 %cmp25, label %amdgpu_irq_update.exit.for.body26_crit_edge, label %amdgpu_irq_update.exit.cleanup_crit_edge

amdgpu_irq_update.exit.cleanup_crit_edge:         ; preds = %amdgpu_irq_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

amdgpu_irq_update.exit.for.body26_crit_edge:      ; preds = %amdgpu_irq_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26

cleanup:                                          ; preds = %amdgpu_irq_update.exit.cleanup_crit_edge, %for.cond24.preheader.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %for.body10.cleanup_crit_edge
  %inc28 = add nuw nsw i32 %j.053, 1
  %exitcond.not = icmp eq i32 %inc28, 256
  br i1 %exitcond.not, label %cleanup.for.inc30_crit_edge, label %cleanup.for.body10_crit_edge

cleanup.for.body10_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

cleanup.for.inc30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30

for.inc30:                                        ; preds = %cleanup.for.inc30_crit_edge, %for.body.for.inc30_crit_edge
  %inc31 = add nuw nsw i32 %i.054, 1
  %exitcond55.not = icmp eq i32 %inc31, 32
  br i1 %exitcond55.not, label %for.end32, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end32:                                        ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_irq_get(ptr noundef %adev, ptr noundef %src, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp.not = icmp ugt i32 %3, %type
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.end
  %enabled_types = getelementptr inbounds %struct.amdgpu_irq_src, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %enabled_types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enabled_types, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end2.return_crit_edge, label %lor.lhs.false

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %if.end2
  %funcs = getelementptr inbounds %struct.amdgpu_irq_src, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.return_crit_edge, label %if.end6

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.atomic_t, ptr %5, i32 %type
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #10, !srcloc !137
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp8 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp8, label %if.then9, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then9:                                         ; preds = %if.end6
  %lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irq, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.then9.amdgpu_irq_update.exit_crit_edge, label %if.end.i.i

if.then9.amdgpu_irq_update.exit_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

if.end.i.i:                                       ; preds = %if.then9
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %type)
  %cmp.not.i.i = icmp ugt i32 %14, %type
  br i1 %cmp.not.i.i, label %if.end2.i.i, label %if.end.i.i.amdgpu_irq_update.exit_crit_edge

if.end.i.i.amdgpu_irq_update.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = ptrtoint ptr %enabled_types to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enabled_types, align 4
  %tobool3.not.i.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i.i, label %if.end2.i.i.amdgpu_irq_update.exit_crit_edge, label %lor.lhs.false.i.i

if.end2.i.i.amdgpu_irq_update.exit_crit_edge:     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

lor.lhs.false.i.i:                                ; preds = %if.end2.i.i
  %17 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge, label %amdgpu_irq_enabled.exit.i

lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

amdgpu_irq_enabled.exit.i:                        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.atomic_t, ptr %16, i32 %type
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.i.not.i = icmp ne i32 %22, 0
  %spec.select.i = zext i1 %tobool8.i.not.i to i32
  br label %amdgpu_irq_update.exit

amdgpu_irq_update.exit:                           ; preds = %amdgpu_irq_enabled.exit.i, %lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge, %if.end2.i.i.amdgpu_irq_update.exit_crit_edge, %if.end.i.i.amdgpu_irq_update.exit_crit_edge, %if.then9.amdgpu_irq_update.exit_crit_edge
  %23 = phi i32 [ 0, %if.then9.amdgpu_irq_update.exit_crit_edge ], [ 0, %if.end.i.i.amdgpu_irq_update.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge ], [ 0, %if.end2.i.i.amdgpu_irq_update.exit_crit_edge ], [ %spec.select.i, %amdgpu_irq_enabled.exit.i ]
  %24 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call6.i = tail call i32 %27(ptr noundef %adev, ptr noundef %src, i32 noundef %type, i32 noundef %23) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %return

return:                                           ; preds = %amdgpu_irq_update.exit, %if.end6.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6.i, %amdgpu_irq_update.exit ], [ -2, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end2.return_crit_edge ], [ 0, %if.end6.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %src, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp.not = icmp ugt i32 %3, %type
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.end
  %enabled_types = getelementptr inbounds %struct.amdgpu_irq_src, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %enabled_types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enabled_types, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end2.return_crit_edge, label %lor.lhs.false

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %if.end2
  %funcs = getelementptr inbounds %struct.amdgpu_irq_src, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.return_crit_edge, label %if.end6

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.atomic_t, ptr %5, i32 %type
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #10, !srcloc !140
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then8, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then8:                                         ; preds = %if.end6
  %lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irq, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.then8.amdgpu_irq_update.exit_crit_edge, label %if.end.i.i

if.then8.amdgpu_irq_update.exit_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

if.end.i.i:                                       ; preds = %if.then8
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %type)
  %cmp.not.i.i = icmp ugt i32 %14, %type
  br i1 %cmp.not.i.i, label %if.end2.i.i, label %if.end.i.i.amdgpu_irq_update.exit_crit_edge

if.end.i.i.amdgpu_irq_update.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = ptrtoint ptr %enabled_types to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enabled_types, align 4
  %tobool3.not.i.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i.i, label %if.end2.i.i.amdgpu_irq_update.exit_crit_edge, label %lor.lhs.false.i.i

if.end2.i.i.amdgpu_irq_update.exit_crit_edge:     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

lor.lhs.false.i.i:                                ; preds = %if.end2.i.i
  %17 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge, label %amdgpu_irq_enabled.exit.i

lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_irq_update.exit

amdgpu_irq_enabled.exit.i:                        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.atomic_t, ptr %16, i32 %type
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.i.not.i = icmp ne i32 %22, 0
  %spec.select.i = zext i1 %tobool8.i.not.i to i32
  br label %amdgpu_irq_update.exit

amdgpu_irq_update.exit:                           ; preds = %amdgpu_irq_enabled.exit.i, %lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge, %if.end2.i.i.amdgpu_irq_update.exit_crit_edge, %if.end.i.i.amdgpu_irq_update.exit_crit_edge, %if.then8.amdgpu_irq_update.exit_crit_edge
  %23 = phi i32 [ 0, %if.then8.amdgpu_irq_update.exit_crit_edge ], [ 0, %if.end.i.i.amdgpu_irq_update.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.amdgpu_irq_update.exit_crit_edge ], [ 0, %if.end2.i.i.amdgpu_irq_update.exit_crit_edge ], [ %spec.select.i, %amdgpu_irq_enabled.exit.i ]
  %24 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call6.i = tail call i32 %27(ptr noundef %adev, ptr noundef %src, i32 noundef %type, i32 noundef %23) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %return

return:                                           ; preds = %amdgpu_irq_update.exit, %if.end6.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6.i, %amdgpu_irq_update.exit ], [ -2, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end2.return_crit_edge ], [ 0, %if.end6.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_irq_add_domain(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef 256, i32 noundef 256, i32 noundef 0, ptr noundef nonnull @amdgpu_hw_irqdomain_ops, ptr noundef %adev) #10
  %domain = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 14
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i, ptr %domain, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52) #10
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_irq_remove_domain(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 14
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @irq_domain_remove(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %domain, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_irq_create_mapping(ptr nocapture noundef %adev, i32 noundef %src_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 14
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %1, i32 noundef %src_id, ptr noundef null) #10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 15, i32 %src_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %arrayidx, align 4
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_connector_hotplug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ih_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_iv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_irqdomain_map(ptr nocapture noundef readnone %d, i32 noundef %irq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %hwirq)
  %cmp = icmp ugt i32 %hwirq, 255
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @amdgpu_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amdgpu_irq_mask(ptr nocapture noundef %irqd) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amdgpu_irq_unmask(ptr nocapture noundef %irqd) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !74, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !113, !115}
!llvm.named.register.sp = !{!117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 69, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 70, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 71, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 72, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 73, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 74, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 75, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 76, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 77, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 78, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 79, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 80, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 81, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 82, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 83, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 84, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 85, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 86, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 87, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 88, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 89, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 90, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 91, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 92, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 93, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 94, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 95, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 96, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 97, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 98, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 99, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 100, i32 2}
!64 = !{ptr @soc15_ih_clientid_name, !65, !"soc15_ih_clientid_name", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 68, i32 13}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 167, i32 6}
!68 = !{ptr @amdgpu_irq_init.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 311, i32 2}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 329, i32 4}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @amdgpu_irq_init.__UNIQUE_ID_ddebug391, !72, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!77 = !{ptr @amdgpu_irq_init.__key.38, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 343, i32 3}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @amdgpu_irq_init.__key.40, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 347, i32 2}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @amdgpu_irq_init.__key.42, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 348, i32 2}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @amdgpu_irq_init.__key.44, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 349, i32 2}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 369, i32 2}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 504, i32 3}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 507, i32 3}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 514, i32 3}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 520, i32 4}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 525, i32 3}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 765, i32 3}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 76, i32 1}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!107 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @amdgpu_hw_irqdomain_ops, !112, !"amdgpu_hw_irqdomain_ops", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 745, i32 36}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 715, i32 10}
!115 = !{ptr @amdgpu_irq_chip, !116, !"amdgpu_irq_chip", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c", i32 714, i32 24}
!117 = !{!"sp"}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2148363508, i64 2148363513, i64 2148363526, i64 2148363570, i64 2148363604, i64 2148363625}
!128 = !{i8 0, i8 2}
!129 = !{!"auto-init"}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 2159410425}
!133 = !{i64 2159410618}
!134 = !{i64 2149957291}
!135 = !{i64 2149958327}
!136 = !{i64 2148624345}
!137 = !{i64 2148539630, i64 2148539662, i64 2148539691, i64 2148539725, i64 2148539756, i64 2148539779}
!138 = !{i64 2148624574}
!139 = !{i64 2148627386}
!140 = !{i64 2148542095, i64 2148542127, i64 2148542156, i64 2148542190, i64 2148542221, i64 2148542244}
!141 = !{i64 2148627615}
