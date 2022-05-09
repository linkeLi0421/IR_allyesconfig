; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/aldebaran.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/aldebaran.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_reset_handler = type { i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_reset_control = type { ptr, %struct.work_struct, %struct.mutex, %struct.list_head, %struct.atomic_t, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_reset_context = type { i32, ptr, ptr, ptr, i32 }
%struct.amdgpu_hive_info = type { %struct.kobject, i64, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.atomic_t, i32, ptr, %struct.task_barrier, i32 }
%struct.task_barrier = type { i32, %struct.atomic_t, %struct.semaphore, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.amdgpu_gfxhub_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@aldebaran_reset_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&reset_ctl->reset_work)\00", [54 x i8] zeroinitializer }, align 32
@aldebaran_mode2_handler = internal global { %struct.amdgpu_reset_handler, [60 x i8] } { %struct.amdgpu_reset_handler { i32 3, %struct.list_head zeroinitializer, ptr null, ptr @aldebaran_mode2_prepare_hwcontext, ptr @aldebaran_mode2_perform_reset, ptr @aldebaran_mode2_restore_hwcontext, ptr null, ptr @aldebaran_mode2_reset }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aldebaran_async_reset.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aldebaran_async_reset\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/aldebaran.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: Resetting device\0A\00", [38 x i8] zeroinitializer }, align 32
@aldebaran_get_reset_handler.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aldebaran_get_reset_handler\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Getting reset handler for method %d\0A\00", [51 x i8] zeroinitializer }, align 32
@aldebaran_get_reset_handler.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.7, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Reset handler not found!\0A\00", [62 x i8] zeroinitializer }, align 32
@aldebaran_mode2_prepare_hwcontext.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"aldebaran_mode2_prepare_hwcontext\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Aldebaran prepare hw context\0A\00", [58 x i8] zeroinitializer }, align 32
@aldebaran_mode2_suspend_ip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 85, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: suspend of IP block <%s> failed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aldebaran_mode2_suspend_ip\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aldebaran_mode2_suspend_ip._entry_ptr = internal global ptr @aldebaran_mode2_suspend_ip._entry, section ".printk_index", align 4
@aldebaran_mode2_perform_reset.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"aldebaran_mode2_perform_reset\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: aldebaran perform hw reset\0A\00", [60 x i8] zeroinitializer }, align 32
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@aldebaran_mode2_perform_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 170, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: ASIC reset failed with error, %d for drm dev, %s\00", [39 x i8] zeroinitializer }, align 32
@aldebaran_mode2_perform_reset._entry_ptr = internal global ptr @aldebaran_mode2_perform_reset._entry, section ".printk_index", align 4
@aldebaran_mode2_restore_hwcontext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 333, ptr @.str.19, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: GPU reset succeeded, trying to resume\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"aldebaran_mode2_restore_hwcontext\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aldebaran_mode2_restore_hwcontext._entry_ptr = internal global ptr @aldebaran_mode2_restore_hwcontext._entry, section ".printk_index", align 4
@aldebaran_mode2_restore_hwcontext._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.3, i32 359, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: ib ring test failed (%d).\0A\00", [61 x i8] zeroinitializer }, align 32
@aldebaran_mode2_restore_hwcontext._entry_ptr.22 = internal global ptr @aldebaran_mode2_restore_hwcontext._entry.20, section ".printk_index", align 4
@aldebaran_mode2_restore_ip.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aldebaran_mode2_restore_ip\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Reloading ucodes after reset\0A\00", [58 x i8] zeroinitializer }, align 32
@aldebaran_mode2_restore_ip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 237, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to get BIF handle\0A\00", [62 x i8] zeroinitializer }, align 32
@aldebaran_mode2_restore_ip._entry_ptr = internal global ptr @aldebaran_mode2_restore_ip._entry, section ".printk_index", align 4
@aldebaran_mode2_restore_ip._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.3, i32 248, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: GFXHUB gart reenable failed after reset\0A\00", [47 x i8] zeroinitializer }, align 32
@aldebaran_mode2_restore_ip._entry_ptr.28 = internal global ptr @aldebaran_mode2_restore_ip._entry.26, section ".printk_index", align 4
@aldebaran_mode2_restore_ip._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.3, i32 255, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: GFX ucode load failed after reset\0A\00", [53 x i8] zeroinitializer }, align 32
@aldebaran_mode2_restore_ip._entry_ptr.31 = internal global ptr @aldebaran_mode2_restore_ip._entry.29, section ".printk_index", align 4
@aldebaran_mode2_restore_ip._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.3, i32 266, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: Failed to get response from firmware after reset\0A\00", [38 x i8] zeroinitializer }, align 32
@aldebaran_mode2_restore_ip._entry_ptr.34 = internal global ptr @aldebaran_mode2_restore_ip._entry.32, section ".printk_index", align 4
@aldebaran_mode2_restore_ip._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.23, ptr @.str.3, i32 280, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: resume of IP block <%s> failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@aldebaran_mode2_restore_ip._entry_ptr.37 = internal global ptr @aldebaran_mode2_restore_ip._entry.35, section ".printk_index", align 4
@aldebaran_mode2_restore_ip._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.23, ptr @.str.3, i32 303, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: late_init of IP block <%s> failed %d after reset\0A\00", [38 x i8] zeroinitializer }, align 32
@aldebaran_mode2_restore_ip._entry_ptr.40 = internal global ptr @aldebaran_mode2_restore_ip._entry.38, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 11, i64 12, i64 17, i64 18, i64 19, i64 22]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 395, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"aldebaran_mode2_handler\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 371, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 120, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 42, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 61, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 102, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 83, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 143, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 168, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 332, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 358, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 206, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 237, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 248, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 255, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 265, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 278, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/aldebaran.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 300, i32 5 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @aldebaran_mode2_perform_reset._entry, ptr @aldebaran_mode2_perform_reset._entry_ptr, ptr @aldebaran_mode2_restore_hwcontext._entry, ptr @aldebaran_mode2_restore_hwcontext._entry.20, ptr @aldebaran_mode2_restore_hwcontext._entry_ptr, ptr @aldebaran_mode2_restore_hwcontext._entry_ptr.22, ptr @aldebaran_mode2_restore_ip._entry, ptr @aldebaran_mode2_restore_ip._entry.26, ptr @aldebaran_mode2_restore_ip._entry.29, ptr @aldebaran_mode2_restore_ip._entry.32, ptr @aldebaran_mode2_restore_ip._entry.35, ptr @aldebaran_mode2_restore_ip._entry.38, ptr @aldebaran_mode2_restore_ip._entry_ptr, ptr @aldebaran_mode2_restore_ip._entry_ptr.28, ptr @aldebaran_mode2_restore_ip._entry_ptr.31, ptr @aldebaran_mode2_restore_ip._entry_ptr.34, ptr @aldebaran_mode2_restore_ip._entry_ptr.37, ptr @aldebaran_mode2_restore_ip._entry_ptr.40, ptr @aldebaran_mode2_suspend_ip._entry, ptr @aldebaran_mode2_suspend_ip._entry_ptr, ptr @aldebaran_reset_init.__key, ptr @.str, ptr @aldebaran_mode2_handler, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_reset_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_handler to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_suspend_ip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_perform_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_restore_hwcontext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_restore_hwcontext._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_restore_ip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_restore_ip._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_restore_ip._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_restore_ip._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_restore_ip._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aldebaran_mode2_restore_ip._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aldebaran_reset_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 164) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adev, ptr %call7.i.i, align 8
  %async_reset = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %async_reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @aldebaran_async_reset, ptr %async_reset, align 8
  %active_reset = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %active_reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %active_reset, align 8
  %get_reset_handler = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %get_reset_handler to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @aldebaran_get_reset_handler, ptr %get_reset_handler, align 4
  %reset_handlers = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %reset_handlers to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %reset_handlers, ptr %reset_handlers, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reset_handlers, ptr %prev.i, align 8
  %reset_work = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #5
  %7 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %reset_work, align 4
  %lockdep_map = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @aldebaran_reset_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry4 = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry4, ptr %entry4, align 8
  %prev.i22 = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry4, ptr %prev.i22, align 4
  %10 = ptrtoint ptr %async_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %async_reset, align 8
  %func = getelementptr inbounds %struct.amdgpu_reset_control, ptr %call7.i.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %func, align 8
  %call7 = tail call i32 @amdgpu_reset_add_handler(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @aldebaran_mode2_handler) #5
  %reset_cntl = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 171
  %13 = ptrtoint ptr %reset_cntl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %reset_cntl, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aldebaran_async_reset(ptr noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %reset_handlers = getelementptr i8, ptr %work, i32 136
  %active_reset = getelementptr i8, ptr %work, i32 148
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %reset_handlers, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %reset_handlers
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %handler.0 = getelementptr i8, ptr %.pn, i32 -4
  %3 = ptrtoint ptr %handler.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handler.0, align 4
  %5 = ptrtoint ptr %active_reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_reset, align 4
  %cmp5 = icmp eq i32 %4, %6
  br i1 %cmp5, label %do.body, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aldebaran_async_reset.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aldebaran_async_reset, %if.then10)) #5
          to label %do.end [label %if.then10], !srcloc !84

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aldebaran_async_reset.__UNIQUE_ID_ddebug346, ptr noundef %8, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %do_reset = getelementptr i8, ptr %.pn, i32 28
  %9 = ptrtoint ptr %do_reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %do_reset, align 4
  %call11 = tail call i32 %10(ptr noundef %1) #5
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @aldebaran_get_reset_handler(ptr noundef readonly %reset_ctl, ptr nocapture noundef %reset_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reset_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_ctl, align 4
  %2 = ptrtoint ptr %reset_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reset_context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aldebaran_get_reset_handler.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aldebaran_get_reset_handler, %if.then3)) #5
          to label %do.end [label %if.then3], !srcloc !84

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %reset_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aldebaran_get_reset_handler.__UNIQUE_ID_ddebug343, ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %reset_handlers = getelementptr inbounds %struct.amdgpu_reset_control, ptr %reset_ctl, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn81.in = phi ptr [ %reset_handlers, %do.end ], [ %.pn81, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %.pn81.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn81 = load ptr, ptr %.pn81.in, align 4
  %cmp7.not = icmp eq ptr %.pn81, %reset_handlers
  br i1 %cmp7.not, label %for.cond.if.end19_crit_edge, label %for.body

for.cond.if.end19_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.body:                                         ; preds = %for.cond
  %handler.0 = getelementptr i8, ptr %.pn81, i32 -4
  %9 = ptrtoint ptr %handler.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handler.0, align 4
  %11 = ptrtoint ptr %reset_context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_context, align 4
  %cmp11 = icmp eq i32 %10, %12
  br i1 %cmp11, label %cleanup.loopexit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.end19:                                         ; preds = %for.cond.if.end19_crit_edge, %entry.if.end19_crit_edge
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 39, i32 8
  %13 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %connected_to_cpu, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool20.not = icmp eq i8 %14, 0
  br i1 %tobool20.not, label %if.end19.do.body47_crit_edge, label %if.then21

if.end19.do.body47_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body47

if.then21:                                        ; preds = %if.end19
  %reset_handlers23 = getelementptr inbounds %struct.amdgpu_reset_control, ptr %reset_ctl, i32 0, i32 3
  br label %for.cond27

for.cond27:                                       ; preds = %for.body33.for.cond27_crit_edge, %if.then21
  %.pn.in = phi ptr [ %reset_handlers23, %if.then21 ], [ %.pn, %for.body33.for.cond27_crit_edge ]
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp30.not = icmp eq ptr %.pn, %reset_handlers23
  br i1 %cmp30.not, label %for.cond27.do.body47_crit_edge, label %for.body33

for.cond27.do.body47_crit_edge:                   ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body47

for.body33:                                       ; preds = %for.cond27
  %handler.1 = getelementptr i8, ptr %.pn, i32 -4
  %16 = ptrtoint ptr %handler.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handler.1, align 4
  %cmp35 = icmp eq i32 %17, 3
  br i1 %cmp35, label %if.then36, label %for.body33.for.cond27_crit_edge

for.body33.for.cond27_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond27

if.then36:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #7
  %handler.1.le = getelementptr i8, ptr %.pn, i32 -4
  %18 = ptrtoint ptr %reset_context to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %reset_context, align 4
  br label %cleanup

do.body47:                                        ; preds = %for.cond27.do.body47_crit_edge, %if.end19.do.body47_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aldebaran_get_reset_handler.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aldebaran_get_reset_handler, %if.then59)) #5
          to label %cleanup [label %if.then59], !srcloc !84

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aldebaran_get_reset_handler.__UNIQUE_ID_ddebug344, ptr noundef %20, ptr noundef nonnull @.str.7) #5
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %handler.0.le = getelementptr i8, ptr %.pn81, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then59, %do.body47, %if.then36
  %retval.0 = phi ptr [ %handler.1.le, %if.then36 ], [ null, %if.then59 ], [ null, %do.body47 ], [ %handler.0.le, %cleanup.loopexit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_reset_add_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aldebaran_reset_fini(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_cntl = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 171
  %0 = ptrtoint ptr %reset_cntl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_cntl, align 8
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %reset_cntl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %reset_cntl, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_mode2_prepare_hwcontext(ptr nocapture noundef readonly %reset_ctl, ptr nocapture noundef readnone %reset_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reset_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_ctl, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aldebaran_mode2_prepare_hwcontext.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aldebaran_mode2_prepare_hwcontext, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aldebaran_mode2_prepare_hwcontext.__UNIQUE_ID_ddebug345, ptr noundef %3, ptr noundef nonnull @.str.9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %do.end
  %call.i = tail call i32 @amdgpu_device_set_pg_state(ptr noundef %1, i32 noundef 1) #5
  %call1.i = tail call i32 @amdgpu_device_set_cg_state(ptr noundef %1, i32 noundef 1) #5
  %num_ip_blocks.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 124
  %6 = ptrtoint ptr %num_ip_blocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ip_blocks.i, align 8
  %i.040.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.040.i)
  %cmp41.i = icmp sgt i32 %i.040.i, -1
  br i1 %cmp41.i, label %if.then4.for.body.i_crit_edge, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %i.043.i = phi i32 [ %i.0.i, %for.inc.i.for.body.i_crit_edge ], [ %i.040.i, %if.then4.for.body.i_crit_edge ]
  %r.042.i = phi i32 [ %r.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.then4.for.body.i_crit_edge ]
  %version.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 122, i32 %i.043.i, i32 1
  %8 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %version.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %switch.i = icmp eq i32 %12, 6
  br i1 %switch.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %9, i32 0, i32 4
  %13 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs.i, align 4
  %suspend.i = getelementptr inbounds %struct.amd_ip_funcs, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %suspend.i, align 4
  %call11.i = tail call i32 %16(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %19 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %version.i, align 4
  %funcs16.i = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %funcs16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs16.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.10, ptr noundef %24, i32 noundef %call11.i) #9
  br label %if.end6

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %hw.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 122, i32 %i.043.i, i32 0, i32 2
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %hw.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i, %for.body.i.for.inc.i_crit_edge
  %r.1.i = phi i32 [ 0, %if.end17.i ], [ %r.042.i, %for.body.i.for.inc.i_crit_edge ]
  %i.0.i = add i32 %i.043.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end6_crit_edge

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end6:                                          ; preds = %for.inc.i.if.end6_crit_edge, %do.end.i, %if.then4.if.end6_crit_edge, %do.end.if.end6_crit_edge
  %r.0 = phi i32 [ 0, %do.end.if.end6_crit_edge ], [ %call11.i, %do.end.i ], [ -1, %if.then4.if.end6_crit_edge ], [ %r.1.i, %for.inc.i.if.end6_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_mode2_perform_reset(ptr nocapture noundef readonly %reset_ctl, ptr nocapture noundef readonly %reset_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reset_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_ctl, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aldebaran_mode2_perform_reset.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aldebaran_mode2_perform_reset, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aldebaran_mode2_perform_reset.__UNIQUE_ID_ddebug347, ptr noundef %3, ptr noundef nonnull @.str.15) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hive = getelementptr inbounds %struct.amdgpu_reset_context, ptr %reset_context, i32 0, i32 3
  %4 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hive, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %device_list = getelementptr inbounds %struct.amdgpu_hive_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn178 = load ptr, ptr %device_list, align 8
  %7 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hive, align 4
  %device_list8179 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %8, i32 0, i32 2
  %cmp9.not180 = icmp eq ptr %.pn178, %device_list8179
  br i1 %cmp9.not180, label %if.end4.for.cond26.preheader_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.cond26.preheader_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond26.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %.pn181 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn178, %if.end4.for.body_crit_edge ]
  %reset_cntl = getelementptr i8, ptr %.pn181, i32 81472
  %9 = ptrtoint ptr %reset_cntl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_cntl, align 8
  %reset_lock = getelementptr inbounds %struct.amdgpu_reset_control, ptr %10, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %reset_lock, i32 noundef 0) #5
  %11 = ptrtoint ptr %reset_cntl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_cntl, align 8
  %active_reset = getelementptr inbounds %struct.amdgpu_reset_control, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %active_reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %active_reset, align 4
  %14 = ptrtoint ptr %.pn181 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn181, align 8
  %15 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hive, align 4
  %device_list8 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %16, i32 0, i32 2
  %cmp9.not = icmp eq ptr %.pn, %device_list8
  br i1 %cmp9.not, label %for.body.for.cond26.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.cond26.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.body.for.cond26.preheader_crit_edge, %if.end4.for.cond26.preheader_crit_edge
  %.pn166.in.ph = phi ptr [ %.pn178, %if.end4.for.cond26.preheader_crit_edge ], [ %.pn, %for.body.for.cond26.preheader_crit_edge ]
  br label %for.cond26

for.cond26:                                       ; preds = %if.end45.for.cond26_crit_edge, %for.cond26.preheader
  %.pn166.in = phi ptr [ %.pn166, %if.end45.for.cond26_crit_edge ], [ %.pn166.in.ph, %for.cond26.preheader ]
  %17 = ptrtoint ptr %.pn166.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn166 = load ptr, ptr %.pn166.in, align 8
  %tmp_adev.1 = getelementptr i8, ptr %.pn166, i32 -10208
  %18 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hive, align 4
  %device_list31 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %19, i32 0, i32 2
  %cmp32.not = icmp eq ptr %.pn166, %device_list31
  br i1 %cmp32.not, label %if.then64, label %for.body35

for.body35:                                       ; preds = %for.cond26
  %num_physical_nodes = getelementptr i8, ptr %.pn166, i32 -4
  %20 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp38 = icmp ugt i32 %21, 1
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %for.body35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %22 = load ptr, ptr @system_unbound_wq, align 4
  %reset_cntl40 = getelementptr i8, ptr %.pn166, i32 81472
  %23 = ptrtoint ptr %reset_cntl40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset_cntl40, align 8
  %reset_work = getelementptr inbounds %struct.amdgpu_reset_control, ptr %24, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %reset_work) #5
  br i1 %call.i, label %if.then39.if.end45_crit_edge, label %if.then39.for.end62_crit_edge

if.then39.for.end62_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end62

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.else:                                          ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr i8, ptr %.pn166, i32 -10204
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_clear_master(ptr noundef %26) #5
  %call.i169 = tail call i32 @amdgpu_dpm_mode2_reset(ptr noundef %tmp_adev.1) #5
  %asic_reset_res.i = getelementptr i8, ptr %.pn166, i32 81156
  %27 = ptrtoint ptr %asic_reset_res.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i169, ptr %asic_reset_res.i, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then39.if.end45_crit_edge
  %r.1 = phi i32 [ %call.i169, %if.else ], [ 0, %if.then39.if.end45_crit_edge ]
  %tobool46.not = icmp eq i32 %r.1, 0
  br i1 %tobool46.not, label %if.end45.for.cond26_crit_edge, label %if.end45.for.end62_crit_edge

if.end45.for.end62_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end62

if.end45.for.cond26_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond26

for.end62:                                        ; preds = %if.end45.for.end62_crit_edge, %if.then39.for.end62_crit_edge
  %r.1173 = phi i32 [ %r.1, %if.end45.for.end62_crit_edge ], [ -114, %if.then39.for.end62_crit_edge ]
  %28 = ptrtoint ptr %tmp_adev.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tmp_adev.1, align 8
  %unique = getelementptr i8, ptr %.pn166, i32 -10096
  %30 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unique, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.16, i32 noundef %r.1173, ptr noundef %31) #9
  br label %if.end102

if.then64:                                        ; preds = %for.cond26
  %32 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hive, align 4
  %device_list67 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %device_list67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn167182 = load ptr, ptr %device_list67, align 8
  %cmp77.not184 = icmp eq ptr %.pn167182, %device_list67
  br i1 %cmp77.not184, label %if.then64.if.end102_crit_edge, label %if.then64.for.body80_crit_edge

if.then64.for.body80_crit_edge:                   ; preds = %if.then64
  br label %for.body80

if.then64.if.end102_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

for.body80:                                       ; preds = %for.inc93.for.body80_crit_edge, %if.then64.for.body80_crit_edge
  %.pn167185 = phi ptr [ %.pn167, %for.inc93.for.body80_crit_edge ], [ %.pn167182, %if.then64.for.body80_crit_edge ]
  %num_physical_nodes83 = getelementptr i8, ptr %.pn167185, i32 -4
  %35 = ptrtoint ptr %num_physical_nodes83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_physical_nodes83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp84 = icmp ugt i32 %36, 1
  br i1 %cmp84, label %if.then85, label %for.body80.for.inc93_crit_edge

for.body80.for.inc93_crit_edge:                   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc93

if.then85:                                        ; preds = %for.body80
  %reset_cntl86 = getelementptr i8, ptr %.pn167185, i32 81472
  %37 = ptrtoint ptr %reset_cntl86 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reset_cntl86, align 8
  %reset_work87 = getelementptr inbounds %struct.amdgpu_reset_control, ptr %38, i32 0, i32 1
  %call88 = tail call zeroext i1 @flush_work(ptr noundef %reset_work87) #5
  %asic_reset_res = getelementptr i8, ptr %.pn167185, i32 81156
  %39 = ptrtoint ptr %asic_reset_res to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %asic_reset_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool89.not = icmp eq i32 %40, 0
  br i1 %tobool89.not, label %if.then85.for.inc93_crit_edge, label %if.then85.if.end102_crit_edge

if.then85.if.end102_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then85.for.inc93_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc93

for.inc93:                                        ; preds = %if.then85.for.inc93_crit_edge, %for.body80.for.inc93_crit_edge
  %41 = ptrtoint ptr %.pn167185 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn167 = load ptr, ptr %.pn167185, align 8
  %42 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hive, align 4
  %device_list76 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %43, i32 0, i32 2
  %cmp77.not = icmp eq ptr %.pn167, %device_list76
  br i1 %cmp77.not, label %for.inc93.if.end102_crit_edge, label %for.inc93.for.body80_crit_edge

for.inc93.for.body80_crit_edge:                   ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body80

for.inc93.if.end102_crit_edge:                    ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.end102:                                        ; preds = %for.inc93.if.end102_crit_edge, %if.then85.if.end102_crit_edge, %if.then64.if.end102_crit_edge, %for.end62
  %r.5 = phi i32 [ %r.1173, %for.end62 ], [ 0, %if.then64.if.end102_crit_edge ], [ %40, %if.then85.if.end102_crit_edge ], [ 0, %for.inc93.if.end102_crit_edge ]
  %44 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hive, align 4
  %device_list105 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %device_list105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn168188 = load ptr, ptr %device_list105, align 8
  %cmp115.not190 = icmp eq ptr %.pn168188, %device_list105
  br i1 %cmp115.not190, label %if.end102.cleanup_crit_edge, label %if.end102.for.body118_crit_edge

if.end102.for.body118_crit_edge:                  ; preds = %if.end102
  br label %for.body118

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body118:                                      ; preds = %for.body118.for.body118_crit_edge, %if.end102.for.body118_crit_edge
  %.pn168191 = phi ptr [ %.pn168, %for.body118.for.body118_crit_edge ], [ %.pn168188, %if.end102.for.body118_crit_edge ]
  %reset_cntl119 = getelementptr i8, ptr %.pn168191, i32 81472
  %47 = ptrtoint ptr %reset_cntl119 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reset_cntl119, align 8
  %reset_lock120 = getelementptr inbounds %struct.amdgpu_reset_control, ptr %48, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %reset_lock120) #5
  %49 = ptrtoint ptr %reset_cntl119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reset_cntl119, align 8
  %active_reset122 = getelementptr inbounds %struct.amdgpu_reset_control, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %active_reset122 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %active_reset122, align 4
  %52 = ptrtoint ptr %.pn168191 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn168 = load ptr, ptr %.pn168191, align 8
  %53 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hive, align 4
  %device_list114 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %54, i32 0, i32 2
  %cmp115.not = icmp eq ptr %.pn168, %device_list114
  br i1 %cmp115.not, label %for.body118.cleanup_crit_edge, label %for.body118.for.body118_crit_edge

for.body118.for.body118_crit_edge:                ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body118

for.body118.cleanup_crit_edge:                    ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body118.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %r.5, %if.end102.cleanup_crit_edge ], [ %r.5, %for.body118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_mode2_restore_hwcontext(ptr nocapture noundef readnone %reset_ctl, ptr nocapture noundef readonly %reset_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hive = getelementptr inbounds %struct.amdgpu_reset_context, ptr %reset_context, i32 0, i32 3
  %0 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hive, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_list = getelementptr inbounds %struct.amdgpu_hive_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn60 = load ptr, ptr %device_list, align 8
  %3 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hive, align 4
  %device_list362 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %4, i32 0, i32 2
  %cmp4.not63 = icmp eq ptr %.pn60, %device_list362
  br i1 %cmp4.not63, label %if.end.cleanup_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  br label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end.do.end_crit_edge
  %.pn64 = phi ptr [ %.pn, %for.inc.do.end_crit_edge ], [ %.pn60, %if.end.do.end_crit_edge ]
  %tmp_adev.065 = getelementptr i8, ptr %.pn64, i32 -10208
  %5 = ptrtoint ptr %tmp_adev.065 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmp_adev.065, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.17) #9
  %call = tail call fastcc i32 @aldebaran_mode2_restore_ip(ptr noundef %tmp_adev.065)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %do.end
  tail call void @amdgpu_register_gpu_instance(ptr noundef %tmp_adev.065) #5
  tail call void @amdgpu_ras_resume(ptr noundef %tmp_adev.065) #5
  %7 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hive, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end6.if.then17_crit_edge, label %land.lhs.true

if.end6.if.then17_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

land.lhs.true:                                    ; preds = %if.end6
  %num_physical_nodes = getelementptr i8, ptr %.pn64, i32 -4
  %9 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp11 = icmp ugt i32 %10, 1
  br i1 %cmp11, label %if.end15, label %land.lhs.true.if.then17_crit_edge

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.end15:                                         ; preds = %land.lhs.true
  %call14 = tail call i32 @amdgpu_xgmi_update_topology(ptr noundef nonnull %8, ptr noundef %tmp_adev.065) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end15.if.then17_crit_edge, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then17:                                        ; preds = %if.end15.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge, %if.end6.if.then17_crit_edge
  tail call void @amdgpu_irq_gpu_reset_resume_helper(ptr noundef %tmp_adev.065) #5
  %call18 = tail call i32 @amdgpu_ib_ring_tests(ptr noundef %tmp_adev.065) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.for.inc_crit_edge, label %do.end23

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %tmp_adev.065 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tmp_adev.065, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef %call18) #9
  %asic_reset_res = getelementptr i8, ptr %.pn64, i32 81156
  %13 = ptrtoint ptr %asic_reset_res to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -11, ptr %asic_reset_res, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.then17.for.inc_crit_edge, %if.end15.for.inc_crit_edge
  %r.2 = phi i32 [ %call14, %if.end15.for.inc_crit_edge ], [ 0, %if.then17.for.inc_crit_edge ]
  %14 = ptrtoint ptr %.pn64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn64, align 8
  %15 = ptrtoint ptr %hive to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hive, align 4
  %device_list3 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %16, i32 0, i32 2
  %cmp4.not = icmp eq ptr %.pn, %device_list3
  br i1 %cmp4.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end23, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -11, %do.end23 ], [ -1, %if.end.cleanup_crit_edge ], [ %r.2, %for.inc.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aldebaran_mode2_reset(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  tail call void @pci_clear_master(ptr noundef %1) #5
  %call = tail call i32 @amdgpu_dpm_mode2_reset(ptr noundef %adev) #5
  %asic_reset_res = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 146
  %2 = ptrtoint ptr %asic_reset_res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %asic_reset_res, align 4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_set_pg_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_set_cg_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aldebaran_mode2_restore_ip(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  %ucode_list = alloca [35 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %ucode_list) #5
  %0 = call ptr @memset(ptr %ucode_list, i32 255, i32 140)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aldebaran_mode2_restore_ip.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aldebaran_mode2_restore_ip, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aldebaran_mode2_restore_ip.__UNIQUE_ID_ddebug348, ptr noundef %2, ptr noundef nonnull @.str.24) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %max_ucodes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 4
  %3 = ptrtoint ptr %max_ucodes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_ucodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp233.not = icmp eq i32 %4, 0
  br i1 %cmp233.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %firmware = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0235 = phi i32 [ 0, %for.body.lr.ph ], [ %inc9, %for.inc.for.body_crit_edge ]
  %ucode_count.0234 = phi i32 [ 0, %for.body.lr.ph ], [ %ucode_count.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.0235
  %fw = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.0235, i32 1
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end7.for.inc_crit_edge [
    i32 0, label %if.end7.sw.bb_crit_edge
    i32 1, label %if.end7.sw.bb_crit_edge254
    i32 2, label %if.end7.sw.bb_crit_edge255
    i32 3, label %if.end7.sw.bb_crit_edge256
    i32 4, label %if.end7.sw.bb_crit_edge257
    i32 5, label %if.end7.sw.bb_crit_edge258
    i32 6, label %if.end7.sw.bb_crit_edge259
    i32 7, label %if.end7.sw.bb_crit_edge260
    i32 11, label %if.end7.sw.bb_crit_edge261
    i32 12, label %if.end7.sw.bb_crit_edge262
    i32 17, label %if.end7.sw.bb_crit_edge263
    i32 18, label %if.end7.sw.bb_crit_edge264
    i32 19, label %if.end7.sw.bb_crit_edge265
    i32 22, label %if.end7.sw.bb_crit_edge266
  ]

if.end7.sw.bb_crit_edge266:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge265:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge264:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge263:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge262:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge261:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge260:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge259:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge258:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge257:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge256:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge255:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge254:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge254, %if.end7.sw.bb_crit_edge255, %if.end7.sw.bb_crit_edge256, %if.end7.sw.bb_crit_edge257, %if.end7.sw.bb_crit_edge258, %if.end7.sw.bb_crit_edge259, %if.end7.sw.bb_crit_edge260, %if.end7.sw.bb_crit_edge261, %if.end7.sw.bb_crit_edge262, %if.end7.sw.bb_crit_edge263, %if.end7.sw.bb_crit_edge264, %if.end7.sw.bb_crit_edge265, %if.end7.sw.bb_crit_edge266
  %inc = add i32 %ucode_count.0234, 1
  %arrayidx8 = getelementptr [35 x ptr], ptr %ucode_list, i32 0, i32 %ucode_count.0234
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ucode_count.1 = phi i32 [ %ucode_count.0234, %if.end7.for.inc_crit_edge ], [ %inc, %sw.bb ], [ %ucode_count.0234, %for.body.for.inc_crit_edge ]
  %inc9 = add nuw i32 %i.0235, 1
  %exitcond.not = icmp eq i32 %inc9, %4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %ucode_count.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %ucode_count.1, %for.inc.for.end_crit_edge ]
  %call10 = tail call ptr @amdgpu_device_ip_get_ip_block(ptr noundef %adev, i32 noundef 0) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end23, label %if.end25, !prof !86

do.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end25:                                         ; preds = %for.end
  %version = getelementptr inbounds %struct.amdgpu_ip_block, ptr %call10, i32 0, i32 1
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %version, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs, align 4
  %resume = getelementptr inbounds %struct.amd_ip_funcs, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resume, align 4
  %call26 = tail call i32 %18(ptr noundef %adev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %gfxhub = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 105
  %19 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gfxhub, align 4
  %init = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init, align 4
  tail call void %22(ptr noundef %adev) #5
  %23 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gfxhub, align 4
  %gart_enable = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %gart_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gart_enable, align 4
  %call33 = tail call i32 %26(ptr noundef %adev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call41 = call i32 @psp_load_fw_list(ptr noundef %psp, ptr noundef nonnull %ucode_list, i32 noundef %ucode_count.0.lcssa) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %funcs49 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %31 = ptrtoint ptr %funcs49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs49, align 4
  %resume50 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %resume50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resume50, align 4
  %call51 = call i32 %34(ptr noundef %adev) #5
  %call52 = call i32 @smu_wait_for_event(ptr noundef %adev, i32 noundef 0, i64 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.cond60.preheader, label %do.end57

for.cond60.preheader:                             ; preds = %if.end48
  %num_ip_blocks = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 124
  %35 = ptrtoint ptr %num_ip_blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_ip_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp61236 = icmp sgt i32 %36, 0
  br i1 %cmp61236, label %for.cond60.preheader.for.body62_crit_edge, label %for.cond60.preheader.for.end148_crit_edge

for.cond60.preheader.for.end148_crit_edge:        ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end148

for.cond60.preheader.for.body62_crit_edge:        ; preds = %for.cond60.preheader
  br label %for.body62

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.33) #9
  br label %cleanup

for.cond95.preheader:                             ; preds = %for.inc92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp97240 = icmp sgt i32 %58, 0
  br i1 %cmp97240, label %for.cond95.preheader.for.body98_crit_edge, label %for.cond95.preheader.for.end148_crit_edge

for.cond95.preheader.for.end148_crit_edge:        ; preds = %for.cond95.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end148

for.cond95.preheader.for.body98_crit_edge:        ; preds = %for.cond95.preheader
  br label %for.body98

for.body62:                                       ; preds = %for.inc92.for.body62_crit_edge, %for.cond60.preheader.for.body62_crit_edge
  %i.1237 = phi i32 [ %inc93, %for.inc92.for.body62_crit_edge ], [ 0, %for.cond60.preheader.for.body62_crit_edge ]
  %version64 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 122, i32 %i.1237, i32 1
  %39 = ptrtoint ptr %version64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %version64, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = and i32 %42, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %43)
  %switch = icmp eq i32 %43, 6
  br i1 %switch, label %if.end72, label %for.body62.for.inc92_crit_edge

for.body62.for.inc92_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc92

if.end72:                                         ; preds = %for.body62
  %funcs76 = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %40, i32 0, i32 4
  %44 = ptrtoint ptr %funcs76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs76, align 4
  %resume77 = getelementptr inbounds %struct.amd_ip_funcs, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %resume77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %resume77, align 4
  %call78 = call i32 %47(ptr noundef %adev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end89, label %do.end83

do.end83:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adev, align 8
  %50 = ptrtoint ptr %version64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %version64, align 4
  %funcs88 = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %funcs88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs88, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.36, ptr noundef %55, i32 noundef %call78) #9
  br label %cleanup

if.end89:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 122, i32 %i.1237, i32 0, i32 2
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %hw, align 2
  br label %for.inc92

for.inc92:                                        ; preds = %if.end89, %for.body62.for.inc92_crit_edge
  %inc93 = add nuw nsw i32 %i.1237, 1
  %57 = ptrtoint ptr %num_ip_blocks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_ip_blocks, align 8
  %cmp61 = icmp slt i32 %inc93, %58
  br i1 %cmp61, label %for.inc92.for.body62_crit_edge, label %for.cond95.preheader

for.inc92.for.body62_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body62

for.body98:                                       ; preds = %for.inc146.for.body98_crit_edge, %for.cond95.preheader.for.body98_crit_edge
  %i.2241 = phi i32 [ %inc147, %for.inc146.for.body98_crit_edge ], [ 0, %for.cond95.preheader.for.body98_crit_edge ]
  %version101 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 122, i32 %i.2241, i32 1
  %59 = ptrtoint ptr %version101 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %version101, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %62, label %for.body98.for.inc146_crit_edge [
    i32 6, label %for.body98.if.end117_crit_edge
    i32 7, label %for.body98.if.end117_crit_edge267
    i32 0, label %for.body98.if.end117_crit_edge268
  ]

for.body98.if.end117_crit_edge268:                ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

for.body98.if.end117_crit_edge267:                ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

for.body98.if.end117_crit_edge:                   ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

for.body98.for.inc146_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc146

if.end117:                                        ; preds = %for.body98.if.end117_crit_edge, %for.body98.if.end117_crit_edge267, %for.body98.if.end117_crit_edge268
  %funcs121 = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %60, i32 0, i32 4
  %64 = ptrtoint ptr %funcs121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %funcs121, align 4
  %late_init = getelementptr inbounds %struct.amd_ip_funcs, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %late_init to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %late_init, align 4
  %tobool122.not = icmp eq ptr %67, null
  br i1 %tobool122.not, label %if.end117.if.end142_crit_edge, label %if.then123

if.end117.if.end142_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then123:                                       ; preds = %if.end117
  %call129 = call i32 %67(ptr noundef %adev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then123.if.end142_crit_edge, label %do.end134

if.then123.if.end142_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

do.end134:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adev, align 8
  %70 = ptrtoint ptr %version101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %version101, align 4
  %funcs139 = getelementptr inbounds %struct.amdgpu_ip_block_version, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %funcs139 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %funcs139, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.39, ptr noundef %75, i32 noundef %call129) #9
  br label %cleanup

if.end142:                                        ; preds = %if.then123.if.end142_crit_edge, %if.end117.if.end142_crit_edge
  %late_initialized = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 122, i32 %i.2241, i32 0, i32 3
  %76 = ptrtoint ptr %late_initialized to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %late_initialized, align 1
  br label %for.inc146

for.inc146:                                       ; preds = %if.end142, %for.body98.for.inc146_crit_edge
  %inc147 = add nuw nsw i32 %i.2241, 1
  %77 = ptrtoint ptr %num_ip_blocks to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_ip_blocks, align 8
  %cmp97 = icmp slt i32 %inc147, %78
  br i1 %cmp97, label %for.inc146.for.body98_crit_edge, label %for.inc146.for.end148_crit_edge

for.inc146.for.end148_crit_edge:                  ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end148

for.inc146.for.body98_crit_edge:                  ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body98

for.end148:                                       ; preds = %for.inc146.for.end148_crit_edge, %for.cond95.preheader.for.end148_crit_edge, %for.cond60.preheader.for.end148_crit_edge
  call void @amdgpu_ras_set_error_query_ready(ptr noundef %adev, i1 noundef zeroext true) #5
  %call149 = call i32 @amdgpu_device_set_cg_state(ptr noundef %adev, i32 noundef 0) #5
  %call150 = call i32 @amdgpu_device_set_pg_state(ptr noundef %adev, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end148, %do.end134, %do.end83, %do.end57, %do.end46, %do.end38, %if.end25.cleanup_crit_edge, %do.end23
  %retval.0 = phi i32 [ -22, %do.end23 ], [ %call33, %do.end38 ], [ %call41, %do.end46 ], [ %call52, %do.end57 ], [ %call78, %do.end83 ], [ %call129, %do.end134 ], [ 0, %for.end148 ], [ %call26, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %ucode_list) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_register_gpu_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ras_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_xgmi_update_topology(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_irq_gpu_reset_resume_helper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_ring_tests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_device_ip_get_ip_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_load_fw_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_wait_for_event(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ras_set_error_query_ready(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_mode2_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !18, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @aldebaran_reset_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 395, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 120, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @aldebaran_async_reset.__UNIQUE_ID_ddebug346, !4, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 42, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @aldebaran_get_reset_handler.__UNIQUE_ID_ddebug343, !10, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 61, i32 2}
!15 = !{ptr @aldebaran_get_reset_handler.__UNIQUE_ID_ddebug344, !14, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!16 = !{ptr @aldebaran_mode2_handler, !17, !"aldebaran_mode2_handler", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 371, i32 36}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 102, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @aldebaran_mode2_prepare_hwcontext.__UNIQUE_ID_ddebug345, !19, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 83, i32 4}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @aldebaran_mode2_suspend_ip._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @aldebaran_mode2_suspend_ip._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 143, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @aldebaran_mode2_perform_reset.__UNIQUE_ID_ddebug347, !30, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 168, i32 4}
!35 = !{ptr @aldebaran_mode2_perform_reset._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @aldebaran_mode2_perform_reset._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 332, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @aldebaran_mode2_restore_hwcontext._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @aldebaran_mode2_restore_hwcontext._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 358, i32 5}
!45 = !{ptr @aldebaran_mode2_restore_hwcontext._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @aldebaran_mode2_restore_hwcontext._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 206, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @aldebaran_mode2_restore_ip.__UNIQUE_ID_ddebug348, !48, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 237, i32 3}
!53 = !{ptr @aldebaran_mode2_restore_ip._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @aldebaran_mode2_restore_ip._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 248, i32 3}
!57 = !{ptr @aldebaran_mode2_restore_ip._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @aldebaran_mode2_restore_ip._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 255, i32 3}
!61 = !{ptr @aldebaran_mode2_restore_ip._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @aldebaran_mode2_restore_ip._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 265, i32 3}
!65 = !{ptr @aldebaran_mode2_restore_ip._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @aldebaran_mode2_restore_ip._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 278, i32 4}
!69 = !{ptr @aldebaran_mode2_restore_ip._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @aldebaran_mode2_restore_ip._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/aldebaran.c", i32 300, i32 5}
!73 = !{ptr @aldebaran_mode2_restore_ip._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @aldebaran_mode2_restore_ip._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148938391, i64 2148938396, i64 2148938409, i64 2148938453, i64 2148938487, i64 2148938508}
!85 = !{i8 0, i8 2}
!86 = !{!"branch_weights", i32 1, i32 2000}
