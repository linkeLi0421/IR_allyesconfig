; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/amd_powerplay.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amd_pm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_power_state = type { i32, %struct.PP_StateLinkedList, %struct.PP_StateLinkedList, %struct.PP_StateClassificationBlock, %struct.PP_StateValidationBlock, %struct.PP_StatePcieBlock, %struct.PP_StateDisplayBlock, %struct.PP_StateMemroyBlock, %struct.PP_TemperatureRange, %struct.PP_StateSoftwareAlgorithmBlock, %struct.PP_UVD_CLOCKS, %struct.pp_hw_power_state }
%struct.PP_StateLinkedList = type { ptr, ptr }
%struct.PP_StateClassificationBlock = type { i32, i32, i32, i8, i8 }
%struct.PP_StateValidationBlock = type { i8, i8, i8 }
%struct.PP_StatePcieBlock = type { i32 }
%struct.PP_StateDisplayBlock = type { i8, i8, i32, i32, i32, i8 }
%struct.PP_StateMemroyBlock = type { i8, i8, [3 x i8] }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PP_StateSoftwareAlgorithmBlock = type { i8, i8 }
%struct.PP_UVD_CLOCKS = type { i32, i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.pp_states_info = type { i32, [16 x i32] }
%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amd_pp_simple_clock_info = type { i32, i32, i32 }
%struct.pp_clock_info = type { i32, i32, i32, i32, i32, i32 }
%struct.amd_pp_clock_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pp_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @pp_early_init, ptr @pp_late_init, ptr @pp_sw_init, ptr @pp_sw_fini, ptr null, ptr @pp_hw_init, ptr @pp_hw_fini, ptr @pp_late_fini, ptr @pp_suspend, ptr @pp_resume, ptr @pp_is_idle, ptr @pp_wait_for_idle, ptr null, ptr null, ptr @pp_sw_reset, ptr null, ptr @pp_set_clockgating_state, ptr @pp_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@pp_smu_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 3, i32 1, i32 0, i32 0, ptr @pp_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerplay\00", [22 x i8] zeroinitializer }, align 32
@amd_powerplay_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&hwmgr->smu_lock\00", [47 x i8] zeroinitializer }, align 32
@amd_powerplay_create.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&hwmgr->msg_lock\00", [47 x i8] zeroinitializer }, align 32
@pp_dpm_funcs = internal constant { %struct.amd_pm_funcs, [80 x i8] } { %struct.amd_pm_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pp_dpm_set_fan_control_mode, ptr @pp_dpm_get_fan_control_mode, ptr @pp_dpm_set_fan_speed_pwm, ptr @pp_dpm_get_fan_speed_pwm, ptr @pp_dpm_force_clock_level, ptr @pp_dpm_print_clock_levels, ptr @pp_dpm_force_performance_level, ptr @pp_dpm_get_sclk_od, ptr @pp_dpm_set_sclk_od, ptr @pp_dpm_get_mclk_od, ptr @pp_dpm_set_mclk_od, ptr @pp_dpm_read_sensor, ptr @pp_dpm_get_performance_level, ptr @pp_dpm_get_current_power_state, ptr @pp_dpm_get_fan_speed_rpm, ptr @pp_dpm_set_fan_speed_rpm, ptr @pp_dpm_get_pp_num_states, ptr @pp_dpm_get_pp_table, ptr @pp_dpm_set_pp_table, ptr null, ptr @pp_dpm_switch_power_profile, ptr @pp_dpm_get_vce_clock_state, ptr @pp_dpm_dispatch_tasks, ptr @pp_dpm_load_fw, ptr @pp_dpm_fw_loading_complete, ptr @pp_set_powergating_by_smu, ptr @pp_set_clockgating_by_smu, ptr @pp_set_power_limit, ptr @pp_get_power_limit, ptr @pp_get_power_profile_mode, ptr @pp_set_power_profile_mode, ptr @pp_set_fine_grain_clk_vol, ptr @pp_odn_edit_dpm_table, ptr @pp_dpm_set_mp1_state, ptr @pp_smu_i2c_bus_access, ptr @pp_gfx_state_change_set, ptr @pp_dpm_get_sclk, ptr @pp_dpm_get_mclk, ptr @pp_display_configuration_change, ptr @pp_get_display_power_level, ptr @pp_get_current_clocks, ptr @pp_get_clock_by_type, ptr @pp_get_clock_by_type_with_latency, ptr @pp_get_clock_by_type_with_voltage, ptr @pp_set_watermarks_for_clocks_ranges, ptr @pp_display_clock_voltage_request, ptr @pp_get_display_mode_validation_clocks, ptr @pp_notify_smu_enable_pwe, ptr @pp_enable_mgpu_fan_boost, ptr @pp_set_active_display_count, ptr @pp_set_hard_min_dcefclk_by_freq, ptr @pp_set_hard_min_fclk_by_freq, ptr @pp_set_min_deep_sleep_dcefclk, ptr @pp_get_asic_baco_capability, ptr @pp_get_asic_baco_state, ptr @pp_set_asic_baco_state, ptr @pp_get_ppfeature_status, ptr @pp_set_ppfeature_status, ptr @pp_asic_reset_mode_2, ptr @pp_set_df_cstate, ptr @pp_set_xgmi_pstate, ptr @pp_get_gpu_metrics, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pp_get_prv_buffer_details }, [80 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pp_dpm_set_fan_control_mode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_set_fan_control_mode = private unnamed_addr constant [28 x i8] c"pp_dpm_set_fan_control_mode\00", align 1
@pp_dpm_set_fan_control_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_set_fan_control_mode, ptr @.str.6, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016amdgpu: %s was not implemented.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c\00", [37 x i8] zeroinitializer }, align 32
@pp_dpm_set_fan_control_mode._entry_ptr = internal global ptr @pp_dpm_set_fan_control_mode._entry, section ".printk_index", align 4
@pp_dpm_get_fan_control_mode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_get_fan_control_mode = private unnamed_addr constant [28 x i8] c"pp_dpm_get_fan_control_mode\00", align 1
@pp_dpm_get_fan_control_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_get_fan_control_mode, ptr @.str.6, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_get_fan_control_mode._entry_ptr = internal global ptr @pp_dpm_get_fan_control_mode._entry, section ".printk_index", align 4
@pp_dpm_set_fan_speed_pwm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_set_fan_speed_pwm = private unnamed_addr constant [25 x i8] c"pp_dpm_set_fan_speed_pwm\00", align 1
@pp_dpm_set_fan_speed_pwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_set_fan_speed_pwm, ptr @.str.6, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_set_fan_speed_pwm._entry_ptr = internal global ptr @pp_dpm_set_fan_speed_pwm._entry, section ".printk_index", align 4
@pp_dpm_get_fan_speed_pwm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_get_fan_speed_pwm = private unnamed_addr constant [25 x i8] c"pp_dpm_get_fan_speed_pwm\00", align 1
@pp_dpm_get_fan_speed_pwm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_get_fan_speed_pwm, ptr @.str.6, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_get_fan_speed_pwm._entry_ptr = internal global ptr @pp_dpm_get_fan_speed_pwm._entry, section ".printk_index", align 4
@pp_dpm_force_clock_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_force_clock_level = private unnamed_addr constant [25 x i8] c"pp_dpm_force_clock_level\00", align 1
@pp_dpm_force_clock_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_force_clock_level, ptr @.str.6, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_force_clock_level._entry_ptr = internal global ptr @pp_dpm_force_clock_level._entry, section ".printk_index", align 4
@pp_dpm_force_clock_level.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.pp_dpm_force_clock_level, ptr @.str.6, ptr @.str.8, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"force clock level is for dpm manual mode only.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: force clock level is for dpm manual mode only.\0A\00", [40 x i8] zeroinitializer }, align 32
@pp_dpm_print_clock_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_print_clock_levels = private unnamed_addr constant [26 x i8] c"pp_dpm_print_clock_levels\00", align 1
@pp_dpm_print_clock_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_print_clock_levels, ptr @.str.6, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_print_clock_levels._entry_ptr = internal global ptr @pp_dpm_print_clock_levels._entry, section ".printk_index", align 4
@pp_dpm_get_sclk_od._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_get_sclk_od = private unnamed_addr constant [19 x i8] c"pp_dpm_get_sclk_od\00", align 1
@pp_dpm_get_sclk_od._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_get_sclk_od, ptr @.str.6, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_get_sclk_od._entry_ptr = internal global ptr @pp_dpm_get_sclk_od._entry, section ".printk_index", align 4
@pp_dpm_set_sclk_od._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_set_sclk_od = private unnamed_addr constant [19 x i8] c"pp_dpm_set_sclk_od\00", align 1
@pp_dpm_set_sclk_od._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_set_sclk_od, ptr @.str.6, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_set_sclk_od._entry_ptr = internal global ptr @pp_dpm_set_sclk_od._entry, section ".printk_index", align 4
@pp_dpm_get_mclk_od._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_get_mclk_od = private unnamed_addr constant [19 x i8] c"pp_dpm_get_mclk_od\00", align 1
@pp_dpm_get_mclk_od._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_get_mclk_od, ptr @.str.6, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_get_mclk_od._entry_ptr = internal global ptr @pp_dpm_get_mclk_od._entry, section ".printk_index", align 4
@pp_dpm_set_mclk_od._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_set_mclk_od = private unnamed_addr constant [19 x i8] c"pp_dpm_set_mclk_od\00", align 1
@pp_dpm_set_mclk_od._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_set_mclk_od, ptr @.str.6, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_set_mclk_od._entry_ptr = internal global ptr @pp_dpm_set_mclk_od._entry, section ".printk_index", align 4
@pp_dpm_set_fan_speed_rpm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_set_fan_speed_rpm = private unnamed_addr constant [25 x i8] c"pp_dpm_set_fan_speed_rpm\00", align 1
@pp_dpm_set_fan_speed_rpm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_set_fan_speed_rpm, ptr @.str.6, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_set_fan_speed_rpm._entry_ptr = internal global ptr @pp_dpm_set_fan_speed_rpm._entry, section ".printk_index", align 4
@pp_dpm_switch_power_profile._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_switch_power_profile = private unnamed_addr constant [28 x i8] c"pp_dpm_switch_power_profile\00", align 1
@pp_dpm_switch_power_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_switch_power_profile, ptr @.str.6, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_switch_power_profile._entry_ptr = internal global ptr @pp_dpm_switch_power_profile._entry, section ".printk_index", align 4
@pp_dpm_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013amdgpu: fw load failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pp_dpm_load_fw\00", [17 x i8] zeroinitializer }, align 32
@pp_dpm_load_fw._entry_ptr = internal global ptr @pp_dpm_load_fw._entry, section ".printk_index", align 4
@pp_dpm_powergate_uvd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_powergate_uvd = private unnamed_addr constant [21 x i8] c"pp_dpm_powergate_uvd\00", align 1
@pp_dpm_powergate_uvd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_powergate_uvd, ptr @.str.6, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_powergate_uvd._entry_ptr = internal global ptr @pp_dpm_powergate_uvd._entry, section ".printk_index", align 4
@pp_dpm_powergate_vce._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_powergate_vce = private unnamed_addr constant [21 x i8] c"pp_dpm_powergate_vce\00", align 1
@pp_dpm_powergate_vce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_powergate_vce, ptr @.str.6, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_powergate_vce._entry_ptr = internal global ptr @pp_dpm_powergate_vce._entry, section ".printk_index", align 4
@pp_dpm_powergate_mmhub._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_powergate_mmhub = private unnamed_addr constant [23 x i8] c"pp_dpm_powergate_mmhub\00", align 1
@pp_dpm_powergate_mmhub._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_powergate_mmhub, ptr @.str.6, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_powergate_mmhub._entry_ptr = internal global ptr @pp_dpm_powergate_mmhub._entry, section ".printk_index", align 4
@pp_dpm_powergate_gfx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_powergate_gfx = private unnamed_addr constant [21 x i8] c"pp_dpm_powergate_gfx\00", align 1
@pp_dpm_powergate_gfx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_powergate_gfx, ptr @.str.6, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_powergate_gfx._entry_ptr = internal global ptr @pp_dpm_powergate_gfx._entry, section ".printk_index", align 4
@pp_dpm_powergate_acp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_powergate_acp = private unnamed_addr constant [21 x i8] c"pp_dpm_powergate_acp\00", align 1
@pp_dpm_powergate_acp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_powergate_acp, ptr @.str.6, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_powergate_acp._entry_ptr = internal global ptr @pp_dpm_powergate_acp._entry, section ".printk_index", align 4
@pp_dpm_powergate_sdma._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_powergate_sdma = private unnamed_addr constant [22 x i8] c"pp_dpm_powergate_sdma\00", align 1
@pp_dpm_powergate_sdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_powergate_sdma, ptr @.str.6, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_powergate_sdma._entry_ptr = internal global ptr @pp_dpm_powergate_sdma._entry, section ".printk_index", align 4
@pp_set_clockgating_by_smu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_set_clockgating_by_smu = private unnamed_addr constant [26 x i8] c"pp_set_clockgating_by_smu\00", align 1
@pp_set_clockgating_by_smu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_set_clockgating_by_smu, ptr @.str.6, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_set_clockgating_by_smu._entry_ptr = internal global ptr @pp_set_clockgating_by_smu._entry, section ".printk_index", align 4
@pp_set_power_limit._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_set_power_limit = private unnamed_addr constant [19 x i8] c"pp_set_power_limit\00", align 1
@pp_set_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_set_power_limit, ptr @.str.6, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_set_power_limit._entry_ptr = internal global ptr @pp_set_power_limit._entry, section ".printk_index", align 4
@pp_set_power_profile_mode.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.6, ptr @.str.13, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pp_set_power_profile_mode\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"power profile setting is for manual dpm mode only.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"amdgpu: power profile setting is for manual dpm mode only.\0A\00", [36 x i8] zeroinitializer }, align 32
@pp_odn_edit_dpm_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_odn_edit_dpm_table = private unnamed_addr constant [22 x i8] c"pp_odn_edit_dpm_table\00", align 1
@pp_odn_edit_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_odn_edit_dpm_table, ptr @.str.6, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_odn_edit_dpm_table._entry_ptr = internal global ptr @pp_odn_edit_dpm_table._entry, section ".printk_index", align 4
@pp_smu_i2c_bus_access._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_smu_i2c_bus_access = private unnamed_addr constant [22 x i8] c"pp_smu_i2c_bus_access\00", align 1
@pp_smu_i2c_bus_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_smu_i2c_bus_access, ptr @.str.6, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_smu_i2c_bus_access._entry_ptr = internal global ptr @pp_smu_i2c_bus_access._entry, section ".printk_index", align 4
@pp_gfx_state_change_set._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_gfx_state_change_set = private unnamed_addr constant [24 x i8] c"pp_gfx_state_change_set\00", align 1
@pp_gfx_state_change_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_gfx_state_change_set, ptr @.str.6, i32 1656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_gfx_state_change_set._entry_ptr = internal global ptr @pp_gfx_state_change_set._entry, section ".printk_index", align 4
@pp_dpm_get_sclk._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_get_sclk = private unnamed_addr constant [16 x i8] c"pp_dpm_get_sclk\00", align 1
@pp_dpm_get_sclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_get_sclk, ptr @.str.6, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_get_sclk._entry_ptr = internal global ptr @pp_dpm_get_sclk._entry, section ".printk_index", align 4
@pp_dpm_get_mclk._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_dpm_get_mclk = private unnamed_addr constant [16 x i8] c"pp_dpm_get_mclk\00", align 1
@pp_dpm_get_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_dpm_get_mclk, ptr @.str.6, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_dpm_get_mclk._entry_ptr = internal global ptr @pp_dpm_get_mclk._entry, section ".printk_index", align 4
@pp_get_current_clocks.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 1, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pp_get_current_clocks\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error in phm_get_clock_info \0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Error in phm_get_clock_info \0A\00", [58 x i8] zeroinitializer }, align 32
@pp_notify_smu_enable_pwe._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_notify_smu_enable_pwe = private unnamed_addr constant [25 x i8] c"pp_notify_smu_enable_pwe\00", align 1
@pp_notify_smu_enable_pwe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_notify_smu_enable_pwe, ptr @.str.6, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_notify_smu_enable_pwe._entry_ptr = internal global ptr @pp_notify_smu_enable_pwe._entry, section ".printk_index", align 4
@pp_set_hard_min_dcefclk_by_freq.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.18, ptr @.str.6, ptr @.str.19, i8 1, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pp_set_hard_min_dcefclk_by_freq\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s was not implemented.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: %s was not implemented.\0A\00", [63 x i8] zeroinitializer }, align 32
@pp_set_hard_min_fclk_by_freq.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.21, ptr @.str.6, ptr @.str.19, i8 1, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pp_set_hard_min_fclk_by_freq\00", [35 x i8] zeroinitializer }, align 32
@pp_set_min_deep_sleep_dcefclk.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.6, ptr @.str.19, i8 1, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pp_set_min_deep_sleep_dcefclk\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_dpm = external dso_local local_unnamed_addr global i32, align 4
@pp_get_ppfeature_status._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_get_ppfeature_status = private unnamed_addr constant [24 x i8] c"pp_get_ppfeature_status\00", align 1
@pp_get_ppfeature_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_get_ppfeature_status, ptr @.str.6, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_get_ppfeature_status._entry_ptr = internal global ptr @pp_get_ppfeature_status._entry, section ".printk_index", align 4
@pp_set_ppfeature_status._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_set_ppfeature_status = private unnamed_addr constant [24 x i8] c"pp_set_ppfeature_status\00", align 1
@pp_set_ppfeature_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_set_ppfeature_status, ptr @.str.6, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_set_ppfeature_status._entry_ptr = internal global ptr @pp_set_ppfeature_status._entry, section ".printk_index", align 4
@pp_asic_reset_mode_2._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_asic_reset_mode_2 = private unnamed_addr constant [21 x i8] c"pp_asic_reset_mode_2\00", align 1
@pp_asic_reset_mode_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.pp_asic_reset_mode_2, ptr @.str.6, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_asic_reset_mode_2._entry_ptr = internal global ptr @pp_asic_reset_mode_2._entry, section ".printk_index", align 4
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: failed to create smu prv buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: failed to notify SMU buffer address\0A\00", [51 x i8] zeroinitializer }, align 32
@pp_sw_init.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pp_sw_init\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"powerplay sw init %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: powerplay sw init %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"successfully\00", [19 x i8] zeroinitializer }, align 32
@pp_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.6, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013amdgpu: powerplay hw init failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pp_hw_init\00", [21 x i8] zeroinitializer }, align 32
@pp_hw_init._entry_ptr = internal global ptr @pp_hw_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 18, i64 19, i64 21, i64 22]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"pp_ip_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 245, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"pp_smu_ip_block\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 263, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 246, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 52, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 53, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"pp_dpm_funcs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1686, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 510, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 527, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 545, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 563, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 725, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 730, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 750, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 768, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 786, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 805, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 823, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 599, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 965, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 285, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 443, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 427, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1265, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1280, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1295, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1310, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 305, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1010, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 900, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 931, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1585, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1656, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 392, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 410, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1125, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1361, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1417, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1436, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1398, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1525, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1545, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1565, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 156, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 171, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 102, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 129, i32 3 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @pp_asic_reset_mode_2._entry, ptr @pp_asic_reset_mode_2._entry_ptr, ptr @pp_dpm_force_clock_level._entry, ptr @pp_dpm_force_clock_level._entry_ptr, ptr @pp_dpm_get_fan_control_mode._entry, ptr @pp_dpm_get_fan_control_mode._entry_ptr, ptr @pp_dpm_get_fan_speed_pwm._entry, ptr @pp_dpm_get_fan_speed_pwm._entry_ptr, ptr @pp_dpm_get_mclk._entry, ptr @pp_dpm_get_mclk._entry_ptr, ptr @pp_dpm_get_mclk_od._entry, ptr @pp_dpm_get_mclk_od._entry_ptr, ptr @pp_dpm_get_sclk._entry, ptr @pp_dpm_get_sclk._entry_ptr, ptr @pp_dpm_get_sclk_od._entry, ptr @pp_dpm_get_sclk_od._entry_ptr, ptr @pp_dpm_load_fw._entry, ptr @pp_dpm_load_fw._entry_ptr, ptr @pp_dpm_powergate_acp._entry, ptr @pp_dpm_powergate_acp._entry_ptr, ptr @pp_dpm_powergate_gfx._entry, ptr @pp_dpm_powergate_gfx._entry_ptr, ptr @pp_dpm_powergate_mmhub._entry, ptr @pp_dpm_powergate_mmhub._entry_ptr, ptr @pp_dpm_powergate_sdma._entry, ptr @pp_dpm_powergate_sdma._entry_ptr, ptr @pp_dpm_powergate_uvd._entry, ptr @pp_dpm_powergate_uvd._entry_ptr, ptr @pp_dpm_powergate_vce._entry, ptr @pp_dpm_powergate_vce._entry_ptr, ptr @pp_dpm_print_clock_levels._entry, ptr @pp_dpm_print_clock_levels._entry_ptr, ptr @pp_dpm_set_fan_control_mode._entry, ptr @pp_dpm_set_fan_control_mode._entry_ptr, ptr @pp_dpm_set_fan_speed_pwm._entry, ptr @pp_dpm_set_fan_speed_pwm._entry_ptr, ptr @pp_dpm_set_fan_speed_rpm._entry, ptr @pp_dpm_set_fan_speed_rpm._entry_ptr, ptr @pp_dpm_set_mclk_od._entry, ptr @pp_dpm_set_mclk_od._entry_ptr, ptr @pp_dpm_set_sclk_od._entry, ptr @pp_dpm_set_sclk_od._entry_ptr, ptr @pp_dpm_switch_power_profile._entry, ptr @pp_dpm_switch_power_profile._entry_ptr, ptr @pp_get_ppfeature_status._entry, ptr @pp_get_ppfeature_status._entry_ptr, ptr @pp_gfx_state_change_set._entry, ptr @pp_gfx_state_change_set._entry_ptr, ptr @pp_hw_init._entry, ptr @pp_hw_init._entry_ptr, ptr @pp_notify_smu_enable_pwe._entry, ptr @pp_notify_smu_enable_pwe._entry_ptr, ptr @pp_odn_edit_dpm_table._entry, ptr @pp_odn_edit_dpm_table._entry_ptr, ptr @pp_set_clockgating_by_smu._entry, ptr @pp_set_clockgating_by_smu._entry_ptr, ptr @pp_set_power_limit._entry, ptr @pp_set_power_limit._entry_ptr, ptr @pp_set_ppfeature_status._entry, ptr @pp_set_ppfeature_status._entry_ptr, ptr @pp_smu_i2c_bus_access._entry, ptr @pp_smu_i2c_bus_access._entry_ptr, ptr @pp_ip_funcs, ptr @pp_smu_ip_block, ptr @.str, ptr @amd_powerplay_create.__key, ptr @.str.1, ptr @amd_powerplay_create.__key.2, ptr @.str.3, ptr @pp_dpm_funcs, ptr @pp_dpm_set_fan_control_mode._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pp_dpm_get_fan_control_mode._rs, ptr @pp_dpm_set_fan_speed_pwm._rs, ptr @pp_dpm_get_fan_speed_pwm._rs, ptr @pp_dpm_force_clock_level._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pp_dpm_print_clock_levels._rs, ptr @pp_dpm_get_sclk_od._rs, ptr @pp_dpm_set_sclk_od._rs, ptr @pp_dpm_get_mclk_od._rs, ptr @pp_dpm_set_mclk_od._rs, ptr @pp_dpm_set_fan_speed_rpm._rs, ptr @pp_dpm_switch_power_profile._rs, ptr @.str.10, ptr @.str.11, ptr @pp_dpm_powergate_uvd._rs, ptr @pp_dpm_powergate_vce._rs, ptr @pp_dpm_powergate_mmhub._rs, ptr @pp_dpm_powergate_gfx._rs, ptr @pp_dpm_powergate_acp._rs, ptr @pp_dpm_powergate_sdma._rs, ptr @pp_set_clockgating_by_smu._rs, ptr @pp_set_power_limit._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @pp_odn_edit_dpm_table._rs, ptr @pp_smu_i2c_bus_access._rs, ptr @pp_gfx_state_change_set._rs, ptr @pp_dpm_get_sclk._rs, ptr @pp_dpm_get_mclk._rs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @pp_notify_smu_enable_pwe._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pp_get_ppfeature_status._rs, ptr @pp_set_ppfeature_status._rs, ptr @pp_asic_reset_mode_2._rs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_smu_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_powerplay_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_powerplay_create.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_funcs to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_fan_control_mode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_fan_control_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_fan_control_mode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_fan_control_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_fan_speed_pwm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_fan_speed_pwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_fan_speed_pwm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_fan_speed_pwm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_force_clock_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_force_clock_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_print_clock_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_print_clock_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_sclk_od._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_sclk_od._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_sclk_od._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_sclk_od._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_mclk_od._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_mclk_od._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_mclk_od._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_mclk_od._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_fan_speed_rpm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_set_fan_speed_rpm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_switch_power_profile._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_switch_power_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_uvd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_uvd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_vce._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_vce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_mmhub._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_mmhub._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_gfx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_gfx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_acp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_acp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_sdma._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_powergate_sdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_set_clockgating_by_smu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_set_clockgating_by_smu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_set_power_limit._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_set_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_odn_edit_dpm_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_odn_edit_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_smu_i2c_bus_access._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_smu_i2c_bus_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_gfx_state_change_set._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_gfx_state_change_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_sclk._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_sclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_mclk._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dpm_get_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_notify_smu_enable_pwe._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_notify_smu_enable_pwe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_get_ppfeature_status._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_get_ppfeature_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_set_ppfeature_status._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_set_ppfeature_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_asic_reset_mode_2._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_asic_reset_mode_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %handle, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 952) #11
  %cmp1.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %handle, ptr %call7.i.i.i, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %not_vf.i = getelementptr inbounds %struct.pp_hwmgr, ptr %call7.i.i.i, i32 0, i32 4
  %4 = trunc i32 %3 to i8
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 1
  %7 = xor i8 %6, 1
  %8 = ptrtoint ptr %not_vf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %not_vf.i, align 8
  %call5.i = tail call ptr @amdgpu_cgs_create_device(ptr noundef nonnull %handle) #8
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %call7.i.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i, ptr %device.i, align 8
  %smu_lock.i = getelementptr inbounds %struct.pp_hwmgr, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %smu_lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @amd_powerplay_create.__key) #8
  %msg_lock.i = getelementptr inbounds %struct.pp_hwmgr, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %msg_lock.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @amd_powerplay_create.__key.2) #8
  %family.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 6
  %10 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family.i, align 4
  %chip_family.i = getelementptr inbounds %struct.pp_hwmgr, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %chip_family.i, align 4
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %13 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_type.i, align 8
  %chip_id.i = getelementptr inbounds %struct.pp_hwmgr, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %chip_id.i, align 8
  %pp_feature.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 24
  %16 = ptrtoint ptr %pp_feature.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pp_feature.i, align 8
  %feature_mask.i = getelementptr inbounds %struct.pp_hwmgr, ptr %call7.i.i.i, i32 0, i32 46
  %18 = ptrtoint ptr %feature_mask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %feature_mask.i, align 4
  %pm_display_cfg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 20
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %call7.i.i.i, i32 0, i32 45
  %19 = ptrtoint ptr %display_config.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pm_display_cfg.i, ptr %display_config.i, align 8
  %powerplay.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %20 = ptrtoint ptr %powerplay.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %powerplay.i, align 8
  %pp_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95, i32 1
  %21 = ptrtoint ptr %pp_funcs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pp_dpm_funcs, ptr %pp_funcs.i, align 4
  %call1 = tail call i32 @hwmgr_early_init(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_late_init(ptr noundef %handle) #0 align 64 {
entry:
  %cpu_ptr.i = alloca ptr, align 4
  %gpu_addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @hwmgr_handle_task(ptr noundef nonnull %1, i32 noundef 3, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %smu_prv_buffer_size = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 21
  %4 = ptrtoint ptr %smu_prv_buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smu_prv_buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_ptr.i) #8
  %6 = ptrtoint ptr %cpu_ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cpu_ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gpu_addr.i) #8
  %7 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %gpu_addr.i, align 8, !annotation !219
  %8 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %powerplay, align 8
  %smu_prv_buffer.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 22
  %call.i = call i32 @amdgpu_bo_create_kernel(ptr noundef %handle, i32 noundef %5, i32 noundef 4096, i32 noundef 2, ptr noundef %smu_prv_buffer.i, ptr noundef nonnull %gpu_addr.i, ptr noundef nonnull %cpu_ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.cleanup.sink.split.i_crit_edge

if.then3.cleanup.sink.split.i_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then3
  %hwmgr_func.i = getelementptr inbounds %struct.pp_hwmgr, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %hwmgr_func.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwmgr_func.i, align 4
  %notify_cac_buffer_info.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %notify_cac_buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %notify_cac_buffer_info.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.end.i.if.then16.i_crit_edge, label %if.then3.i

if.end.i.if.then16.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.then3.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_ptr.i, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %gpu_addr.i, align 8
  %conv.i = trunc i64 %18 to i32
  %shr8.i = lshr i64 %18, 32
  %conv10.i = trunc i64 %shr8.i to i32
  %19 = ptrtoint ptr %smu_prv_buffer_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %smu_prv_buffer_size, align 4
  %call13.i = call i32 %13(ptr noundef %9, i32 noundef %16, i32 noundef 0, i32 noundef %conv.i, i32 noundef %conv10.i, i32 noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %phi.cmp.i = icmp eq i32 %call13.i, 0
  br i1 %phi.cmp.i, label %if.then3.i.pp_reserve_vram_for_smu.exit_crit_edge, label %if.then3.i.if.then16.i_crit_edge

if.then3.i.if.then16.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.then3.i.pp_reserve_vram_for_smu.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pp_reserve_vram_for_smu.exit

if.then16.i:                                      ; preds = %if.then3.i.if.then16.i_crit_edge, %if.end.i.if.then16.i_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %smu_prv_buffer.i, ptr noundef null, ptr noundef null) #8
  %21 = ptrtoint ptr %smu_prv_buffer.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %smu_prv_buffer.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then16.i, %if.then3.cleanup.sink.split.i_crit_edge
  %.str.24.sink.i = phi ptr [ @.str.24, %if.then16.i ], [ @.str.23, %if.then3.cleanup.sink.split.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.24.sink.i) #8
  br label %pp_reserve_vram_for_smu.exit

pp_reserve_vram_for_smu.exit:                     ; preds = %cleanup.sink.split.i, %if.then3.i.pp_reserve_vram_for_smu.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gpu_addr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_ptr.i) #8
  br label %if.end4

if.end4:                                          ; preds = %pp_reserve_vram_for_smu.exit, %if.end.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_sw_init(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 @hwmgr_sw_init(ptr noundef %1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_sw_init.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_sw_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !220

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool4.not, ptr @.str.29, ptr @.str.28
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_sw_init.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_sw_fini(ptr nocapture noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 @hwmgr_sw_fini(ptr noundef %1) #8
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 16
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 8
  tail call void @release_firmware(ptr noundef %3) #8
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fw, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_hw_init(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 @hwmgr_hw_init(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_hw_fini(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 @hwmgr_hw_fini(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_late_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_prv_buffer = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 22
  %0 = ptrtoint ptr %smu_prv_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_prv_buffer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_bo_free_kernel(ptr noundef %smu_prv_buffer, ptr noundef null, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %powerplay.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %2 = ptrtoint ptr %powerplay.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay.i, align 8
  %msg_lock.i = getelementptr inbounds %struct.pp_hwmgr, ptr %3, i32 0, i32 8
  tail call void @mutex_destroy(ptr noundef %msg_lock.i) #8
  %hardcode_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %hardcode_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hardcode_pp_table.i, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %hardcode_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hardcode_pp_table.i, align 4
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_suspend(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 @hwmgr_suspend(ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_resume(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 @hwmgr_resume(ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pp_is_idle(ptr nocapture noundef readnone %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pp_wait_for_idle(ptr nocapture noundef readnone %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pp_sw_reset(ptr nocapture noundef readnone %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pp_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pp_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmgr_early_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_cgs_create_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_dpm_set_fan_control_mode(ptr noundef %handle, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_fan_control_mode = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %set_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_fan_control_mode, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_set_fan_control_mode._rs, ptr noundef nonnull @__func__.pp_dpm_set_fan_control_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_set_fan_control_mode) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_fan_control_mode9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %set_fan_control_mode9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_fan_control_mode9, align 4
  tail call void %9(ptr noundef nonnull %handle, i32 noundef %mode) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_fan_control_mode(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_fan_control_mode = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %get_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_fan_control_mode, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_get_fan_control_mode._rs, ptr noundef nonnull @__func__.pp_dpm_get_fan_control_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_get_fan_control_mode) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_fan_control_mode9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %get_fan_control_mode9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_fan_control_mode9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_set_fan_speed_pwm(ptr noundef %handle, i32 noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_fan_speed_pwm = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %set_fan_speed_pwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_fan_speed_pwm, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_set_fan_speed_pwm._rs, ptr noundef nonnull @__func__.pp_dpm_set_fan_speed_pwm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_set_fan_speed_pwm) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_fan_speed_pwm9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 30
  %8 = ptrtoint ptr %set_fan_speed_pwm9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_fan_speed_pwm9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %speed) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_fan_speed_pwm(ptr noundef %handle, ptr noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_fan_speed_pwm = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %get_fan_speed_pwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_fan_speed_pwm, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_get_fan_speed_pwm._rs, ptr noundef nonnull @__func__.pp_dpm_get_fan_speed_pwm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_get_fan_speed_pwm) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_fan_speed_pwm9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %get_fan_speed_pwm9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_fan_speed_pwm9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle, ptr noundef %speed) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_force_clock_level(ptr noundef %handle, i32 noundef %type, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %force_clock_level = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %force_clock_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %force_clock_level, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_force_clock_level._rs, ptr noundef nonnull @__func__.pp_dpm_force_clock_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_force_clock_level) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 18
  %6 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp8.not = icmp eq i32 %7, 2
  br i1 %cmp8.not, label %if.end20, label %do.body10

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_dpm_force_clock_level.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_dpm_force_clock_level, %if.then16)) #8
          to label %cleanup [label %if.then16], !srcloc !220

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_dpm_force_clock_level.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %8 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwmgr_func, align 4
  %force_clock_level22 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %9, i32 0, i32 51
  %10 = ptrtoint ptr %force_clock_level22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %force_clock_level22, align 4
  %call23 = tail call i32 %11(ptr noundef nonnull %handle, i32 noundef %type, i32 noundef %mask) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then16, %do.body10, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end20 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ], [ -22, %if.then16 ], [ -22, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_print_clock_levels(ptr noundef %handle, i32 noundef %type, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %print_clock_levels = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %print_clock_levels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %print_clock_levels, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_print_clock_levels._rs, ptr noundef nonnull @__func__.pp_dpm_print_clock_levels) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_print_clock_levels) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %print_clock_levels9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 52
  %8 = ptrtoint ptr %print_clock_levels9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %print_clock_levels9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %type, ptr noundef %buf) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_force_performance_level(ptr noundef %handle, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 18
  %2 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %level)
  %cmp = icmp eq i32 %3, %level
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpm_level, align 4
  %and.i = and i32 %5, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %level, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  br i1 %tobool2.not.i, label %if.then.i.pp_dpm_en_umd_pstate.exit_crit_edge, label %if.then3.i

if.then.i.pp_dpm_en_umd_pstate.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pp_dpm_en_umd_pstate.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %saved_dpm_level.i = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 19
  %6 = ptrtoint ptr %saved_dpm_level.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %saved_dpm_level.i, align 4
  %en_umd_pstate.i = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 48
  %7 = ptrtoint ptr %en_umd_pstate.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %en_umd_pstate.i, align 1
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle, align 4
  %call.i = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %9, i32 noundef 6, i32 noundef 1) #8
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 4
  %call6.i = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %11, i32 noundef 6, i32 noundef 1) #8
  br label %pp_dpm_en_umd_pstate.exit

if.else.i:                                        ; preds = %if.end3
  br i1 %tobool2.not.i, label %if.then9.i, label %if.else.i.pp_dpm_en_umd_pstate.exit_crit_edge

if.else.i.pp_dpm_en_umd_pstate.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pp_dpm_en_umd_pstate.exit

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %level)
  %cmp.i = icmp eq i32 %level, 256
  br i1 %cmp.i, label %if.then10.i, label %if.then9.i.if.end12.i_crit_edge

if.then9.i.if.end12.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %saved_dpm_level11.i = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 19
  %12 = ptrtoint ptr %saved_dpm_level11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %saved_dpm_level11.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then9.i.if.end12.i_crit_edge
  %level.addr.0 = phi i32 [ %13, %if.then10.i ], [ %level, %if.then9.i.if.end12.i_crit_edge ]
  %en_umd_pstate13.i = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 48
  %14 = ptrtoint ptr %en_umd_pstate13.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %en_umd_pstate13.i, align 1
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %call15.i = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %16, i32 noundef 6, i32 noundef 0) #8
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handle, align 4
  %call17.i = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %18, i32 noundef 6, i32 noundef 0) #8
  br label %pp_dpm_en_umd_pstate.exit

pp_dpm_en_umd_pstate.exit:                        ; preds = %if.end12.i, %if.else.i.pp_dpm_en_umd_pstate.exit_crit_edge, %if.then3.i, %if.then.i.pp_dpm_en_umd_pstate.exit_crit_edge
  %level.addr.1 = phi i32 [ %level, %if.then.i.pp_dpm_en_umd_pstate.exit_crit_edge ], [ %level, %if.then3.i ], [ %level.addr.0, %if.end12.i ], [ %level, %if.else.i.pp_dpm_en_umd_pstate.exit_crit_edge ]
  %request_dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 20
  %19 = ptrtoint ptr %request_dpm_level to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %level.addr.1, ptr %request_dpm_level, align 4
  %call = tail call i32 @hwmgr_handle_task(ptr noundef nonnull %handle, i32 noundef 2, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pp_dpm_en_umd_pstate.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pp_dpm_en_umd_pstate.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_sclk_od(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_sclk_od = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %get_sclk_od to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_sclk_od, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_get_sclk_od._rs, ptr noundef nonnull @__func__.pp_dpm_get_sclk_od) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_get_sclk_od) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_sclk_od9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %get_sclk_od9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_sclk_od9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_set_sclk_od(ptr noundef %handle, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_sclk_od = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 55
  %4 = ptrtoint ptr %set_sclk_od to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_sclk_od, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_set_sclk_od._rs, ptr noundef nonnull @__func__.pp_dpm_set_sclk_od) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_set_sclk_od) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_sclk_od9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 55
  %8 = ptrtoint ptr %set_sclk_od9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_sclk_od9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %value) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_mclk_od(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_mclk_od = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 56
  %4 = ptrtoint ptr %get_mclk_od to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_mclk_od, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_get_mclk_od._rs, ptr noundef nonnull @__func__.pp_dpm_get_mclk_od) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_get_mclk_od) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_mclk_od9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 56
  %8 = ptrtoint ptr %get_mclk_od9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_mclk_od9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_set_mclk_od(ptr noundef %handle, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_mclk_od = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %set_mclk_od to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_mclk_od, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_set_mclk_od._rs, ptr noundef nonnull @__func__.pp_dpm_set_mclk_od) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_set_mclk_od) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_mclk_od9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 57
  %8 = ptrtoint ptr %set_mclk_od9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_mclk_od9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %value) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_read_sensor(ptr noundef %handle, i32 noundef %idx, ptr noundef %value, ptr noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %tobool3.not = icmp eq ptr %value, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %idx, label %sw.default [
    i32 18, label %sw.bb
    i32 19, label %sw.bb4
    i32 21, label %sw.bb5
    i32 22, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pstate_sclk = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 51
  %3 = ptrtoint ptr %pstate_sclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pstate_sclk, align 4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %value, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pstate_mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 52
  %6 = ptrtoint ptr %pstate_mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pstate_mclk, align 4
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ulMinRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 34, i32 4, i32 2
  %9 = ptrtoint ptr %ulMinRPM to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ulMinRPM, align 4
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ulMaxRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 34, i32 4, i32 3
  %12 = ptrtoint ptr %ulMaxRPM to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ulMaxRPM, align 4
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %value, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %15 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwmgr_func, align 4
  %read_sensor = getelementptr inbounds %struct.pp_hwmgr_func, ptr %16, i32 0, i32 58
  %17 = ptrtoint ptr %read_sensor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_sensor, align 4
  %call = tail call i32 %18(ptr noundef nonnull %handle, i32 noundef %idx, ptr noundef nonnull %value, ptr noundef %size) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.default ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_performance_level(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 18
  %2 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dpm_level, align 4
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_current_power_state(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %current_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 41
  %2 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ps, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_ps, align 4
  %classification = getelementptr inbounds %struct.pp_power_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %classification to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %classification, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %7, label %sw.default [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 3, label %sw.bb5
    i32 5, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.pp_power_state, ptr %5, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %. = select i1 %tobool8.not, i32 0, i32 10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %if.end.sw.epilog_crit_edge
  %pm_type.0 = phi i32 [ 4, %sw.bb6 ], [ 3, %sw.bb5 ], [ 2, %if.end.sw.epilog_crit_edge ], [ %., %sw.default ]
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %pm_type.0, %sw.epilog ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_fan_speed_rpm(ptr noundef %handle, ptr noundef %rpm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_fan_speed_rpm = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %get_fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_fan_speed_rpm, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_fan_speed_rpm5 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %get_fan_speed_rpm5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_fan_speed_rpm5, align 4
  %call = tail call i32 %9(ptr noundef nonnull %handle, ptr noundef %rpm) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_set_fan_speed_rpm(ptr noundef %handle, i32 noundef %rpm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_fan_speed_rpm = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %set_fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_fan_speed_rpm, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_set_fan_speed_rpm._rs, ptr noundef nonnull @__func__.pp_dpm_set_fan_speed_rpm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_set_fan_speed_rpm) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_fan_speed_rpm9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %set_fan_speed_rpm9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_fan_speed_rpm9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %rpm) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_pp_num_states(ptr noundef %handle, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %data, i32 0, i32 68)
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %1 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ps = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 32
  %3 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ps, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %num_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 33
  %5 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ps, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  %8 = load i32, ptr %num_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp44.not = icmp eq i32 %8, 0
  br i1 %cmp44.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ps_size = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %9 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = ptrtoint ptr %ps_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ps_size, align 4
  %mul = mul i32 %13, %i.045
  %add = add i32 %mul, %11
  %14 = inttoptr i32 %add to ptr
  %classification = getelementptr inbounds %struct.pp_power_state, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %classification to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %classification, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb6
    i32 5, label %sw.bb9
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.pp_states_info, ptr %data, i32 0, i32 1, i32 %i.045
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr %struct.pp_states_info, ptr %data, i32 0, i32 1, i32 %i.045
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %arrayidx8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11 = getelementptr %struct.pp_states_info, ptr %data, i32 0, i32 1, i32 %i.045
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %arrayidx11, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %flags = getelementptr inbounds %struct.pp_power_state, ptr %14, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %arrayidx18 = getelementptr %struct.pp_states_info, ptr %data, i32 0, i32 1, i32 %i.045
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %arrayidx18, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx18, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then14, %sw.bb9, %sw.bb6, %sw.bb
  %inc = add nuw i32 %i.045, 1
  %25 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ps, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_pp_table(ptr noundef %handle, ptr nocapture noundef writeonly %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %soft_pp_table = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 12
  %2 = ptrtoint ptr %soft_pp_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_pp_table, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %soft_pp_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soft_pp_table, align 4
  %6 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %table, align 4
  %soft_pp_table_size = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 13
  %7 = ptrtoint ptr %soft_pp_table_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %soft_pp_table_size, align 4
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_set_pp_table(ptr noundef %handle, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %hardcode_pp_table = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 14
  %2 = ptrtoint ptr %hardcode_pp_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hardcode_pp_table, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %soft_pp_table = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 12
  %4 = ptrtoint ptr %soft_pp_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soft_pp_table, align 4
  %soft_pp_table_size = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 13
  %6 = ptrtoint ptr %soft_pp_table_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %soft_pp_table_size, align 4
  %call = tail call ptr @kmemdup(ptr noundef %5, i32 noundef %7, i32 noundef 3264) #8
  %8 = ptrtoint ptr %hardcode_pp_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %hardcode_pp_table, align 4
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.then3.err_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3.err_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %9 = ptrtoint ptr %hardcode_pp_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hardcode_pp_table, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %buf, i32 %size)
  %12 = load ptr, ptr %hardcode_pp_table, align 4
  %soft_pp_table12 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 12
  %13 = ptrtoint ptr %soft_pp_table12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %soft_pp_table12, align 4
  %call.i = tail call i32 @hwmgr_hw_fini(ptr noundef nonnull %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.err_crit_edge

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @hwmgr_hw_init(ptr noundef nonnull %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %amd_powerplay_reset.exit, label %if.end.i.err_crit_edge

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

amd_powerplay_reset.exit:                         ; preds = %if.end.i
  %call5.i = tail call i32 @hwmgr_handle_task(ptr noundef nonnull %handle, i32 noundef 3, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool14.not = icmp eq i32 %call5.i, 0
  br i1 %tobool14.not, label %if.end16, label %amd_powerplay_reset.exit.err_crit_edge

amd_powerplay_reset.exit.err_crit_edge:           ; preds = %amd_powerplay_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end16:                                         ; preds = %amd_powerplay_reset.exit
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %14 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwmgr_func, align 4
  %avfs_control = getelementptr inbounds %struct.pp_hwmgr_func, ptr %15, i32 0, i32 59
  %16 = ptrtoint ptr %avfs_control to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %avfs_control, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.end16.cleanup.sink.split_crit_edge, label %if.then18

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then18:                                        ; preds = %if.end16
  %call21 = tail call i32 %17(ptr noundef nonnull %handle, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then18.cleanup.sink.split_crit_edge, label %if.then18.err_crit_edge

if.then18.err_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

err:                                              ; preds = %if.then18.err_crit_edge, %amd_powerplay_reset.exit.err_crit_edge, %if.end.i.err_crit_edge, %if.end9.err_crit_edge, %if.then3.err_crit_edge
  %ret.0 = phi i32 [ %call5.i, %amd_powerplay_reset.exit.err_crit_edge ], [ %call21, %if.then18.err_crit_edge ], [ -12, %if.then3.err_crit_edge ], [ %call1.i, %if.end.i.err_crit_edge ], [ %call.i, %if.end9.err_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %if.then18.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %err ], [ 0, %if.then18.cleanup.sink.split_crit_edge ], [ 0, %if.end16.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_switch_power_profile(ptr noundef %handle, i32 noundef %type, i1 noundef zeroext %en) #0 align 64 {
entry:
  %workload = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %workload) #8
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_power_profile_mode = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %set_power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power_profile_mode, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_switch_power_profile._rs, ptr noundef nonnull @__func__.pp_dpm_switch_power_profile) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_switch_power_profile) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp8 = icmp ult i32 %type, 6
  br i1 %cmp8, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %arrayidx19 = getelementptr %struct.pp_hwmgr, ptr %handle, i32 0, i32 57, i32 %type
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx19, align 4
  %shl20 = shl nuw i32 1, %7
  br i1 %en, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl20, -1
  %workload_mask = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 56
  %8 = ptrtoint ptr %workload_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %workload_mask, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %workload_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %and, i1 true) #8, !range !221
  %sub.i.op = xor i32 %10, 31
  %11 = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %12 = icmp ult i32 %11, 6
  %cond = select i1 %12, i32 %11, i32 0
  br label %if.end32

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %workload_mask21 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 56
  %13 = ptrtoint ptr %workload_mask21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %workload_mask21, align 4
  %or = or i32 %14, %shl20
  store i32 %or, ptr %workload_mask21, align 4
  %15 = tail call i32 @llvm.ctlz.i32(i32 %or, i1 true) #8, !range !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %or)
  %cmp24 = icmp ult i32 %or, 64
  %sub26 = xor i32 %15, 31
  %spec.select = select i1 %cmp24, i32 %sub26, i32 0
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then12
  %cond.pn = phi i32 [ %cond, %if.then12 ], [ %spec.select, %if.else ]
  %storemerge.in = getelementptr %struct.pp_hwmgr, ptr %handle, i32 0, i32 58, i32 %cond.pn
  %16 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %17 = ptrtoint ptr %workload to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %workload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp33 = icmp eq i32 %type, 5
  br i1 %cmp33, label %land.lhs.true34, label %if.end32.if.end46_crit_edge

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true34:                                  ; preds = %if.end32
  %18 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwmgr_func, align 4
  %disable_power_features_for_compute_performance = getelementptr inbounds %struct.pp_hwmgr_func, ptr %19, i32 0, i32 90
  %20 = ptrtoint ptr %disable_power_features_for_compute_performance to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disable_power_features_for_compute_performance, align 4
  %tobool36.not = icmp eq ptr %21, null
  br i1 %tobool36.not, label %land.lhs.true34.if.end46_crit_edge, label %if.then37

land.lhs.true34.if.end46_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then37:                                        ; preds = %land.lhs.true34
  %call41 = tail call i32 %21(ptr noundef nonnull %handle, i1 noundef zeroext %en) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then37.if.end46_crit_edge, label %if.then43

if.then37.if.end46_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

if.end46:                                         ; preds = %if.then37.if.end46_crit_edge, %land.lhs.true34.if.end46_crit_edge, %if.end32.if.end46_crit_edge
  %dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 18
  %22 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp47.not = icmp eq i32 %23, 2
  br i1 %cmp47.not, label %if.end46.if.end52_crit_edge, label %if.then48

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwmgr_func, align 4
  %set_power_profile_mode50 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %set_power_profile_mode50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_power_profile_mode50, align 4
  %call51 = call i32 %27(ptr noundef nonnull %handle, ptr noundef nonnull %workload, i32 noundef 0) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end46.if.end52_crit_edge
  call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then43, %if.end7.cleanup_crit_edge, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then43 ], [ 0, %if.end52 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %workload) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pp_dpm_get_vce_clock_state(ptr noundef readonly %handle, i32 noundef %idx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %num_vce_state_tables = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 17
  %2 = ptrtoint ptr %num_vce_state_tables to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vce_state_tables, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idx)
  %cmp = icmp ugt i32 %3, %idx
  %arrayidx = getelementptr %struct.pp_hwmgr, ptr %handle, i32 0, i32 16, i32 %idx
  %spec.select = select i1 %cmp, ptr %arrayidx, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_dispatch_tasks(ptr noundef %handle, i32 noundef %task_id, ptr noundef %user_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @hwmgr_handle_task(ptr noundef nonnull %handle, i32 noundef %task_id, ptr noundef %user_state) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_load_fw(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %start_smu = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %start_smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start_smu, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i32 %3(ptr noundef nonnull %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pp_dpm_fw_loading_complete(ptr nocapture noundef readnone %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_powergating_by_smu(ptr noundef %handle, i32 noundef %block_type, i1 noundef zeroext %gate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %block_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %block_type, label %entry.sw.epilog_crit_edge [
    i32 8, label %entry.sw.bb_crit_edge
    i32 11, label %entry.sw.bb_crit_edge82
    i32 9, label %sw.bb1
    i32 1, label %sw.bb3
    i32 6, label %sw.bb5
    i32 10, label %sw.bb8
    i32 7, label %sw.bb10
  ]

entry.sw.bb_crit_edge82:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge82
  %tobool.not.i = icmp eq ptr %handle, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %lor.lhs.false.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb
  %pm_en.i = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %1 = ptrtoint ptr %pm_en.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pm_en.i, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not.i = icmp eq i8 %2, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %if.end.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  %hwmgr_func.i = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %3 = ptrtoint ptr %hwmgr_func.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr_func.i, align 4
  %powergate_uvd.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %powergate_uvd.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %powergate_uvd.i, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_powergate_uvd._rs, ptr noundef nonnull @__func__.pp_dpm_powergate_uvd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then2.i.sw.epilog_crit_edge, label %do.end.i

if.then2.i.sw.epilog_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_powergate_uvd) #12
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock.i = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock.i, i32 noundef 0) #8
  %7 = ptrtoint ptr %hwmgr_func.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwmgr_func.i, align 4
  %powergate_uvd9.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %powergate_uvd9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %powergate_uvd9.i, align 4
  tail call void %10(ptr noundef nonnull %handle, i1 noundef zeroext %gate) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock.i) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %tobool.not.i22 = icmp eq ptr %handle, null
  br i1 %tobool.not.i22, label %sw.bb1.sw.epilog_crit_edge, label %lor.lhs.false.i25

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i25:                                ; preds = %sw.bb1
  %pm_en.i23 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %11 = ptrtoint ptr %pm_en.i23 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_en.i23, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i24 = icmp eq i8 %12, 0
  br i1 %tobool1.not.i24, label %lor.lhs.false.i25.sw.epilog_crit_edge, label %if.end.i28

lor.lhs.false.i25.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i28:                                       ; preds = %lor.lhs.false.i25
  %hwmgr_func.i26 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %13 = ptrtoint ptr %hwmgr_func.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwmgr_func.i26, align 4
  %powergate_vce.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %powergate_vce.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %powergate_vce.i, align 4
  %cmp.i27 = icmp eq ptr %16, null
  br i1 %cmp.i27, label %if.then2.i31, label %if.end7.i35

if.then2.i31:                                     ; preds = %if.end.i28
  %call.i29 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_powergate_vce._rs, ptr noundef nonnull @__func__.pp_dpm_powergate_vce) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool3.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool3.not.i30, label %if.then2.i31.sw.epilog_crit_edge, label %do.end.i33

if.then2.i31.sw.epilog_crit_edge:                 ; preds = %if.then2.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i33:                                       ; preds = %if.then2.i31
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_powergate_vce) #12
  br label %sw.epilog

if.end7.i35:                                      ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock.i34 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock.i34, i32 noundef 0) #8
  %17 = ptrtoint ptr %hwmgr_func.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwmgr_func.i26, align 4
  %powergate_vce9.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %powergate_vce9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %powergate_vce9.i, align 4
  tail call void %20(ptr noundef nonnull %handle, i1 noundef zeroext %gate) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock.i34) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %tobool.not.i36 = icmp ne ptr %handle, null
  %21 = and i1 %tobool.not.i36, %gate
  br i1 %21, label %lor.lhs.false.i39, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i39:                                ; preds = %sw.bb3
  %pm_en.i37 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %22 = ptrtoint ptr %pm_en.i37 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pm_en.i37, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i38 = icmp eq i8 %23, 0
  br i1 %tobool1.not.i38, label %lor.lhs.false.i39.sw.epilog_crit_edge, label %if.end.i42

lor.lhs.false.i39.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i42:                                       ; preds = %lor.lhs.false.i39
  %hwmgr_func.i40 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %24 = ptrtoint ptr %hwmgr_func.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwmgr_func.i40, align 4
  %powergate_mmhub.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %25, i32 0, i32 72
  %26 = ptrtoint ptr %powergate_mmhub.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %powergate_mmhub.i, align 4
  %cmp.i41 = icmp eq ptr %27, null
  br i1 %cmp.i41, label %if.then2.i45, label %if.end7.i48

if.then2.i45:                                     ; preds = %if.end.i42
  %call.i43 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_powergate_mmhub._rs, ptr noundef nonnull @__func__.pp_dpm_powergate_mmhub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool3.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool3.not.i44, label %if.then2.i45.sw.epilog_crit_edge, label %do.end.i47

if.then2.i45.sw.epilog_crit_edge:                 ; preds = %if.then2.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i47:                                       ; preds = %if.then2.i45
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_powergate_mmhub) #12
  br label %sw.epilog

if.end7.i48:                                      ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = tail call i32 %27(ptr noundef nonnull %handle) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %tobool.not.i49 = icmp eq ptr %handle, null
  br i1 %tobool.not.i49, label %sw.bb5.sw.epilog_crit_edge, label %lor.lhs.false.i52

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i52:                                ; preds = %sw.bb5
  %pm_en.i50 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %28 = ptrtoint ptr %pm_en.i50 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pm_en.i50, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool1.not.i51 = icmp eq i8 %29, 0
  br i1 %tobool1.not.i51, label %lor.lhs.false.i52.sw.epilog_crit_edge, label %if.end.i55

lor.lhs.false.i52.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i55:                                       ; preds = %lor.lhs.false.i52
  %hwmgr_func.i53 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %30 = ptrtoint ptr %hwmgr_func.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwmgr_func.i53, align 4
  %powergate_gfx.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %31, i32 0, i32 53
  %32 = ptrtoint ptr %powergate_gfx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %powergate_gfx.i, align 4
  %cmp.i54 = icmp eq ptr %33, null
  br i1 %cmp.i54, label %if.then2.i58, label %if.end7.i61

if.then2.i58:                                     ; preds = %if.end.i55
  %call.i56 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_powergate_gfx._rs, ptr noundef nonnull @__func__.pp_dpm_powergate_gfx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool3.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool3.not.i57, label %if.then2.i58.sw.epilog_crit_edge, label %do.end.i60

if.then2.i58.sw.epilog_crit_edge:                 ; preds = %if.then2.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i60:                                       ; preds = %if.then2.i58
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_powergate_gfx) #12
  br label %sw.epilog

if.end7.i61:                                      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 %33(ptr noundef nonnull %handle, i1 noundef zeroext %gate) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %tobool.not.i62 = icmp eq ptr %handle, null
  br i1 %tobool.not.i62, label %sw.bb8.sw.epilog_crit_edge, label %lor.lhs.false.i65

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i65:                                ; preds = %sw.bb8
  %pm_en.i63 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %34 = ptrtoint ptr %pm_en.i63 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pm_en.i63, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool1.not.i64 = icmp eq i8 %35, 0
  br i1 %tobool1.not.i64, label %lor.lhs.false.i65.sw.epilog_crit_edge, label %if.end.i68

lor.lhs.false.i65.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i68:                                       ; preds = %lor.lhs.false.i65
  %hwmgr_func.i66 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %36 = ptrtoint ptr %hwmgr_func.i66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwmgr_func.i66, align 4
  %powergate_acp.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %powergate_acp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %powergate_acp.i, align 4
  %cmp.i67 = icmp eq ptr %39, null
  br i1 %cmp.i67, label %if.then2.i71, label %if.end7.i74

if.then2.i71:                                     ; preds = %if.end.i68
  %call.i69 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_powergate_acp._rs, ptr noundef nonnull @__func__.pp_dpm_powergate_acp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool3.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool3.not.i70, label %if.then2.i71.sw.epilog_crit_edge, label %do.end.i73

if.then2.i71.sw.epilog_crit_edge:                 ; preds = %if.then2.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i73:                                       ; preds = %if.then2.i71
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_powergate_acp) #12
  br label %sw.epilog

if.end7.i74:                                      ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %39(ptr noundef nonnull %handle, i1 noundef zeroext %gate) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %tobool.not.i75 = icmp eq ptr %handle, null
  br i1 %tobool.not.i75, label %sw.bb10.sw.epilog_crit_edge, label %if.end.i78

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i78:                                       ; preds = %sw.bb10
  %hwmgr_func.i76 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %40 = ptrtoint ptr %hwmgr_func.i76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hwmgr_func.i76, align 4
  %powergate_sdma.i = getelementptr inbounds %struct.pp_hwmgr_func, ptr %41, i32 0, i32 74
  %42 = ptrtoint ptr %powergate_sdma.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %powergate_sdma.i, align 4
  %cmp.i77 = icmp eq ptr %43, null
  br i1 %cmp.i77, label %if.then1.i, label %if.end6.i

if.then1.i:                                       ; preds = %if.end.i78
  %call.i79 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_powergate_sdma._rs, ptr noundef nonnull @__func__.pp_dpm_powergate_sdma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool2.not.i = icmp eq i32 %call.i79, 0
  br i1 %tobool2.not.i, label %if.then1.i.sw.epilog_crit_edge, label %do.end.i80

if.then1.i.sw.epilog_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i80:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_powergate_sdma) #12
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i81 = tail call i32 %43(ptr noundef nonnull %handle, i1 noundef zeroext %gate) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end6.i, %do.end.i80, %if.then1.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %if.end7.i74, %do.end.i73, %if.then2.i71.sw.epilog_crit_edge, %lor.lhs.false.i65.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %if.end7.i61, %do.end.i60, %if.then2.i58.sw.epilog_crit_edge, %lor.lhs.false.i52.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %if.end7.i48, %do.end.i47, %if.then2.i45.sw.epilog_crit_edge, %lor.lhs.false.i39.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %if.end7.i35, %do.end.i33, %if.then2.i31.sw.epilog_crit_edge, %lor.lhs.false.i25.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.end7.i, %do.end.i, %if.then2.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %lor.lhs.false.i.sw.epilog_crit_edge ], [ 0, %if.then2.i.sw.epilog_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end7.i ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %lor.lhs.false.i25.sw.epilog_crit_edge ], [ 0, %if.then2.i31.sw.epilog_crit_edge ], [ 0, %do.end.i33 ], [ 0, %if.end7.i35 ], [ 0, %lor.lhs.false.i39.sw.epilog_crit_edge ], [ 0, %if.then2.i45.sw.epilog_crit_edge ], [ 0, %do.end.i47 ], [ 0, %if.end7.i48 ], [ %call11.i, %if.end7.i61 ], [ 0, %lor.lhs.false.i52.sw.epilog_crit_edge ], [ 0, %sw.bb5.sw.epilog_crit_edge ], [ 0, %do.end.i60 ], [ 0, %if.then2.i58.sw.epilog_crit_edge ], [ 0, %sw.bb8.sw.epilog_crit_edge ], [ 0, %lor.lhs.false.i65.sw.epilog_crit_edge ], [ 0, %if.then2.i71.sw.epilog_crit_edge ], [ 0, %do.end.i73 ], [ 0, %if.end7.i74 ], [ 0, %sw.bb10.sw.epilog_crit_edge ], [ 0, %if.then1.i.sw.epilog_crit_edge ], [ 0, %do.end.i80 ], [ 0, %if.end6.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_clockgating_by_smu(ptr noundef %handle, i32 noundef %msg_id) #0 align 64 {
entry:
  %msg_id.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg_id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %msg_id, ptr %msg_id.addr, align 4
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %1 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %3 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr_func, align 4
  %update_clock_gatings = getelementptr inbounds %struct.pp_hwmgr_func, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %update_clock_gatings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %update_clock_gatings, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_set_clockgating_by_smu._rs, ptr noundef nonnull @__func__.pp_set_clockgating_by_smu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_set_clockgating_by_smu) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = call i32 %6(ptr noundef nonnull %handle, ptr noundef nonnull %msg_id.addr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_power_limit(ptr noundef %handle, i32 noundef %limit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_power_limit = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 71
  %4 = ptrtoint ptr %set_power_limit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power_limit, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_set_power_limit._rs, ptr noundef nonnull @__func__.pp_set_power_limit) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_set_power_limit) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit)
  %cmp8 = icmp eq i32 %limit, 0
  br i1 %cmp8, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %default_power_limit = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 55
  %6 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_power_limit, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %limit.addr.0 = phi i32 [ %7, %if.then9 ], [ %limit, %if.end7.if.end10_crit_edge ]
  %default_power_limit11 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 55
  %8 = ptrtoint ptr %default_power_limit11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %default_power_limit11, align 4
  %od_enabled = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 53
  %10 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %od_enabled, align 4, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %TDPODLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 23, i32 16
  %12 = ptrtoint ptr %TDPODLimit to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %TDPODLimit, align 4
  %conv = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv, 100
  %mul = mul i32 %add, %9
  %div = udiv i32 %mul, 100
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %max_power_limit.0 = phi i32 [ %div, %if.then13 ], [ %9, %if.end10.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %limit.addr.0, i32 %max_power_limit.0)
  %cmp15 = icmp ugt i32 %limit.addr.0, %max_power_limit.0
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %14 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwmgr_func, align 4
  %set_power_limit20 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %15, i32 0, i32 71
  %16 = ptrtoint ptr %set_power_limit20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_power_limit20, align 4
  %call21 = tail call i32 %17(ptr noundef nonnull %handle, i32 noundef %limit.addr.0) #8
  %power_limit = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 54
  %18 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %limit.addr.0, ptr %power_limit, align 4
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_power_limit(ptr noundef %handle, ptr noundef writeonly %limit, i32 noundef %pp_limit_level, i32 noundef %power_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %tobool3.not = icmp eq ptr %limit, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_type)
  %cmp.not = icmp eq i32 %power_type, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %2 = zext i32 %pp_limit_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %pp_limit_level, label %if.end5.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %power_limit = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 54
  %3 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %power_limit, align 4
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %default_power_limit = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 55
  %5 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %default_power_limit, align 4
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end5
  %default_power_limit8 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 55
  %7 = ptrtoint ptr %default_power_limit8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %default_power_limit8, align 4
  %9 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %limit, align 4
  %od_enabled = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 53
  %10 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %od_enabled, align 4, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %sw.bb7.sw.epilog_crit_edge, label %if.then10

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %TDPODLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 23, i32 16
  %12 = ptrtoint ptr %TDPODLimit to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %TDPODLimit, align 4
  %conv = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv, 100
  %mul = mul i32 %add, %8
  %div = udiv i32 %mul, 100
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then10, %sw.bb6, %sw.bb
  %div.sink = phi i32 [ %div, %if.then10 ], [ %6, %sw.bb6 ], [ %4, %sw.bb ]
  %14 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.sink, ptr %limit, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb7.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb7.sw.epilog_crit_edge ], [ -95, %if.end5.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_power_profile_mode(ptr noundef %handle, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_power_profile_mode = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 67
  %4 = ptrtoint ptr %get_power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_power_profile_mode, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %tobool4.not = icmp eq ptr %buf, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_power_profile_mode8 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 67
  %8 = ptrtoint ptr %get_power_profile_mode8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_power_profile_mode8, align 4
  %call = tail call i32 %9(ptr noundef nonnull %handle, ptr noundef nonnull %buf) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end6 ], [ -95, %lor.lhs.false2.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_power_profile_mode(ptr noundef %handle, ptr noundef %input, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_power_profile_mode = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %set_power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power_profile_mode, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 18
  %6 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_set_power_profile_mode.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_set_power_profile_mode, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !220

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_set_power_profile_mode.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %8 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwmgr_func, align 4
  %set_power_profile_mode12 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %set_power_profile_mode12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_power_profile_mode12, align 4
  %call13 = tail call i32 %11(ptr noundef nonnull %handle, ptr noundef %input, i32 noundef %size) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %do.body, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -95, %lor.lhs.false2.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.then8 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_fine_grain_clk_vol(ptr noundef %handle, i32 noundef %type, ptr noundef %input, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_fine_grain_clk_vol = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 70
  %4 = ptrtoint ptr %set_fine_grain_clk_vol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_fine_grain_clk_vol, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %5(ptr noundef nonnull %handle, i32 noundef %type, ptr noundef %input, i32 noundef %size) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_odn_edit_dpm_table(ptr noundef %handle, i32 noundef %type, ptr noundef %input, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %odn_edit_dpm_table = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 69
  %4 = ptrtoint ptr %odn_edit_dpm_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %odn_edit_dpm_table, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_odn_edit_dpm_table._rs, ptr noundef nonnull @__func__.pp_odn_edit_dpm_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_odn_edit_dpm_table) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 %5(ptr noundef nonnull %handle, i32 noundef %type, ptr noundef %input, i32 noundef %size) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_set_mp1_state(ptr noundef %handle, i32 noundef %mp1_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_mp1_state = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 85
  %4 = ptrtoint ptr %set_mp1_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_mp1_state, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %5(ptr noundef nonnull %handle, i32 noundef %mp1_state) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then5 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_smu_i2c_bus_access(ptr noundef %handle, i1 noundef zeroext %acquire) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %smu_i2c_bus_access = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 87
  %4 = ptrtoint ptr %smu_i2c_bus_access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu_i2c_bus_access, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_smu_i2c_bus_access._rs, ptr noundef nonnull @__func__.pp_smu_i2c_bus_access) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_smu_i2c_bus_access) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %smu_i2c_bus_access9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 87
  %8 = ptrtoint ptr %smu_i2c_bus_access9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smu_i2c_bus_access9, align 4
  %call11 = tail call i32 %9(ptr noundef nonnull %handle, i1 noundef zeroext %acquire) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_gfx_state_change_set(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %gfx_state_change = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 92
  %4 = ptrtoint ptr %gfx_state_change to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gfx_state_change, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_gfx_state_change_set._rs, ptr noundef nonnull @__func__.pp_gfx_state_change_set) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_gfx_state_change_set) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %gfx_state_change9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 92
  %8 = ptrtoint ptr %gfx_state_change9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gfx_state_change9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %state) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_sclk(ptr noundef %handle, i1 noundef zeroext %low) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_sclk = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %get_sclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_sclk, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_get_sclk._rs, ptr noundef nonnull @__func__.pp_dpm_get_sclk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_get_sclk) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_sclk9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %get_sclk9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_sclk9, align 4
  %call11 = tail call i32 %9(ptr noundef nonnull %handle, i1 noundef zeroext %low) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_dpm_get_mclk(ptr noundef %handle, i1 noundef zeroext %low) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_mclk = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %get_mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_mclk, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_dpm_get_mclk._rs, ptr noundef nonnull @__func__.pp_dpm_get_mclk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_dpm_get_mclk) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_mclk9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %get_mclk9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_mclk9, align 4
  %call11 = tail call i32 %9(ptr noundef nonnull %handle, i1 noundef zeroext %low) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_display_configuration_change(ptr noundef %handle, ptr noundef %display_config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @phm_store_dal_configuration_data(ptr noundef nonnull %handle, ptr noundef %display_config) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_display_power_level(ptr noundef %handle, ptr noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %tobool3.not = icmp eq ptr %output, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @phm_get_dal_power_level(ptr noundef nonnull %handle, ptr noundef nonnull %output) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_current_clocks(ptr noundef %handle, ptr nocapture noundef writeonly %clocks) #0 align 64 {
entry:
  %simple_clocks = alloca %struct.amd_pp_simple_clock_info, align 4
  %hw_clocks = alloca %struct.pp_clock_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %simple_clocks) #8
  %0 = call ptr @memset(ptr %simple_clocks, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hw_clocks) #8
  %1 = getelementptr inbounds %struct.pp_clock_info, ptr %hw_clocks, i32 0, i32 1
  %2 = getelementptr inbounds %struct.pp_clock_info, ptr %hw_clocks, i32 0, i32 2
  %3 = getelementptr inbounds %struct.pp_clock_info, ptr %hw_clocks, i32 0, i32 3
  %4 = getelementptr inbounds %struct.pp_clock_info, ptr %hw_clocks, i32 0, i32 4
  %5 = getelementptr inbounds %struct.pp_clock_info, ptr %hw_clocks, i32 0, i32 5
  %tobool.not = icmp eq ptr %handle, null
  %6 = call ptr @memset(ptr %hw_clocks, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %7 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = call i32 @phm_get_dal_power_level(ptr noundef nonnull %handle, ptr noundef nonnull %simple_clocks) #8
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %handle, i32 0, i32 23, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %current_ps5 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 41
  %11 = ptrtoint ptr %current_ps5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %current_ps5, align 4
  %hardware6 = getelementptr inbounds %struct.pp_power_state, ptr %12, i32 0, i32 11
  %and1.i = lshr i32 %10, 12
  %and1.i.lobit = and i32 %and1.i, 1
  %call7 = call i32 @phm_get_clock_info(ptr noundef nonnull %handle, ptr noundef %hardware6, ptr noundef nonnull %hw_clocks, i32 noundef %and1.i.lobit) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end18, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_get_current_clocks.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_get_current_clocks, %if.then15)) #8
          to label %cleanup.sink.split [label %if.then15], !srcloc !220

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_get_current_clocks.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.17) #8
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 4
  %15 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %clocks, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %max_engine_clock = getelementptr inbounds %struct.amd_pp_clock_info, ptr %clocks, i32 0, i32 1
  %18 = ptrtoint ptr %max_engine_clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_engine_clock, align 4
  %19 = ptrtoint ptr %hw_clocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_clocks, align 4
  %min_memory_clock = getelementptr inbounds %struct.amd_pp_clock_info, ptr %clocks, i32 0, i32 2
  %21 = ptrtoint ptr %min_memory_clock to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %min_memory_clock, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %max_memory_clock = getelementptr inbounds %struct.amd_pp_clock_info, ptr %clocks, i32 0, i32 3
  %24 = ptrtoint ptr %max_memory_clock to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max_memory_clock, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 4
  %min_bus_bandwidth19 = getelementptr inbounds %struct.amd_pp_clock_info, ptr %clocks, i32 0, i32 4
  %27 = ptrtoint ptr %min_bus_bandwidth19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %min_bus_bandwidth19, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  %max_bus_bandwidth20 = getelementptr inbounds %struct.amd_pp_clock_info, ptr %clocks, i32 0, i32 5
  %30 = ptrtoint ptr %max_bus_bandwidth20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %max_bus_bandwidth20, align 4
  %max_engine_clock_in_sr = getelementptr inbounds %struct.amd_pp_clock_info, ptr %clocks, i32 0, i32 6
  %31 = ptrtoint ptr %max_engine_clock_in_sr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %17, ptr %max_engine_clock_in_sr, align 4
  %min_engine_clock_in_sr = getelementptr inbounds %struct.amd_pp_clock_info, ptr %clocks, i32 0, i32 7
  %32 = ptrtoint ptr %min_engine_clock_in_sr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %14, ptr %min_engine_clock_in_sr, align 4
  %level = getelementptr inbounds %struct.amd_pp_simple_clock_info, ptr %simple_clocks, i32 0, i32 2
  %33 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp eq i32 %34, 0
  %spec.select = select i1 %cmp, i32 8, i32 %34
  %35 = getelementptr inbounds %struct.amd_pp_clock_info, ptr %clocks, i32 0, i32 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select, ptr %35, align 4
  %current_ps28 = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 41
  %37 = ptrtoint ptr %current_ps28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %current_ps28, align 4
  %hardware29 = getelementptr inbounds %struct.pp_power_state, ptr %38, i32 0, i32 11
  %call30 = call i32 @phm_get_current_shallow_sleep_clocks(ptr noundef nonnull %handle, ptr noundef %hardware29, ptr noundef nonnull %hw_clocks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then32:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  %41 = ptrtoint ptr %max_engine_clock_in_sr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_engine_clock_in_sr, align 4
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %2, align 4
  %44 = ptrtoint ptr %min_engine_clock_in_sr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %min_engine_clock_in_sr, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then32, %if.end18.cleanup.sink.split_crit_edge, %if.then15, %do.body
  %retval.0.ph = phi i32 [ -22, %do.body ], [ -22, %if.then15 ], [ 0, %if.then32 ], [ 0, %if.end18.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hw_clocks) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %simple_clocks) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_clock_by_type(ptr noundef %handle, i32 noundef %type, ptr noundef %clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %cmp = icmp eq ptr %clocks, null
  %or.cond = or i1 %cmp, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @phm_get_clock_by_type(ptr noundef nonnull %handle, i32 noundef %type, ptr noundef nonnull %clocks) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_clock_by_type_with_latency(ptr noundef %handle, i32 noundef %type, ptr noundef %clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %tobool3.not = icmp eq ptr %clocks, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @phm_get_clock_by_type_with_latency(ptr noundef nonnull %handle, i32 noundef %type, ptr noundef nonnull %clocks) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_clock_by_type_with_voltage(ptr noundef %handle, i32 noundef %type, ptr noundef %clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %tobool3.not = icmp eq ptr %clocks, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @phm_get_clock_by_type_with_voltage(ptr noundef nonnull %handle, i32 noundef %type, ptr noundef nonnull %clocks) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_watermarks_for_clocks_ranges(ptr noundef %handle, ptr noundef %clock_ranges) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %tobool3.not = icmp eq ptr %clock_ranges, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @phm_set_watermarks_for_clocks_ranges(ptr noundef nonnull %handle, ptr noundef nonnull %clock_ranges) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_display_clock_voltage_request(ptr noundef %handle, ptr noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %tobool3.not = icmp eq ptr %clock, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @phm_display_clock_voltage_request(ptr noundef nonnull %handle, ptr noundef nonnull %clock) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_display_mode_validation_clocks(ptr noundef %handle, ptr noundef %clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %tobool3.not = icmp eq ptr %clocks, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %level = getelementptr inbounds %struct.amd_pp_simple_clock_info, ptr %clocks, i32 0, i32 2
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %level, align 4
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %handle, i32 0, i32 23, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @phm_get_max_high_clocks(ptr noundef nonnull %handle, ptr noundef nonnull %clocks) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then4 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_notify_smu_enable_pwe(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %smus_notify_pwe = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 73
  %4 = ptrtoint ptr %smus_notify_pwe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smus_notify_pwe, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_notify_smu_enable_pwe._rs, ptr noundef nonnull @__func__.pp_notify_smu_enable_pwe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_notify_smu_enable_pwe) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %smus_notify_pwe9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 73
  %8 = ptrtoint ptr %smus_notify_pwe9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smus_notify_pwe9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_enable_mgpu_fan_boost(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %enable_mgpu_fan_boost = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %enable_mgpu_fan_boost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_mgpu_fan_boost, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %enable_mgpu_fan_boost5 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 75
  %8 = ptrtoint ptr %enable_mgpu_fan_boost5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_mgpu_fan_boost5, align 4
  %call = tail call i32 %9(ptr noundef nonnull %handle) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_active_display_count(ptr noundef %handle, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %call = tail call i32 @phm_set_active_display_count(ptr noundef nonnull %handle, i32 noundef %count) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_hard_min_dcefclk_by_freq(ptr noundef %handle, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_hard_min_dcefclk_by_freq = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 76
  %4 = ptrtoint ptr %set_hard_min_dcefclk_by_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_hard_min_dcefclk_by_freq, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_set_hard_min_dcefclk_by_freq.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_set_hard_min_dcefclk_by_freq, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !220

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_set_hard_min_dcefclk_by_freq.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_hard_min_dcefclk_by_freq10 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 76
  %8 = ptrtoint ptr %set_hard_min_dcefclk_by_freq10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_hard_min_dcefclk_by_freq10, align 4
  %call11 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %clock) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_hard_min_fclk_by_freq(ptr noundef %handle, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_hard_min_fclk_by_freq = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 77
  %4 = ptrtoint ptr %set_hard_min_fclk_by_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_hard_min_fclk_by_freq, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_set_hard_min_fclk_by_freq.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_set_hard_min_fclk_by_freq, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !220

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_set_hard_min_fclk_by_freq.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_hard_min_fclk_by_freq10 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 77
  %8 = ptrtoint ptr %set_hard_min_fclk_by_freq10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_hard_min_fclk_by_freq10, align 4
  %call11 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %clock) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_min_deep_sleep_dcefclk(ptr noundef %handle, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_min_deep_sleep_dcefclk = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 62
  %4 = ptrtoint ptr %set_min_deep_sleep_dcefclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_min_deep_sleep_dcefclk, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_set_min_deep_sleep_dcefclk.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_set_min_deep_sleep_dcefclk, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !220

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pp_set_min_deep_sleep_dcefclk.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_min_deep_sleep_dcefclk10 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 62
  %8 = ptrtoint ptr %set_min_deep_sleep_dcefclk10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_min_deep_sleep_dcefclk10, align 4
  %call11 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %clock) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_asic_baco_capability(ptr noundef %handle, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cap, align 1
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 4
  %1 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %not_vf, align 4, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_dpm to i32))
  %3 = load i32, ptr @amdgpu_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %4 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr_func, align 4
  %get_asic_baco_capability = getelementptr inbounds %struct.pp_hwmgr_func, ptr %5, i32 0, i32 80
  %6 = ptrtoint ptr %get_asic_baco_capability to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_asic_baco_capability, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %8 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwmgr_func, align 4
  %get_asic_baco_capability7 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %9, i32 0, i32 80
  %10 = ptrtoint ptr %get_asic_baco_capability7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_asic_baco_capability7, align 4
  %call = tail call i32 %11(ptr noundef nonnull %handle, ptr noundef %cap) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_asic_baco_state(ptr noundef %handle, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_asic_baco_state = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 81
  %4 = ptrtoint ptr %get_asic_baco_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_asic_baco_state, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_asic_baco_state6 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 81
  %8 = ptrtoint ptr %get_asic_baco_state6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_asic_baco_state6, align 4
  %call = tail call i32 %9(ptr noundef nonnull %handle, ptr noundef %state) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_asic_baco_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 4
  %0 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %not_vf, align 4, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_dpm to i32))
  %2 = load i32, ptr @amdgpu_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %3 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr_func, align 4
  %set_asic_baco_state = getelementptr inbounds %struct.pp_hwmgr_func, ptr %4, i32 0, i32 82
  %5 = ptrtoint ptr %set_asic_baco_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_asic_baco_state, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwmgr_func, align 4
  %set_asic_baco_state7 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %8, i32 0, i32 82
  %9 = ptrtoint ptr %set_asic_baco_state7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_asic_baco_state7, align 4
  %call = tail call i32 %10(ptr noundef nonnull %handle, i32 noundef %state) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_ppfeature_status(ptr noundef %handle, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %tobool3.not = icmp eq ptr %buf, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_ppfeature_status = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %get_ppfeature_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_ppfeature_status, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_get_ppfeature_status._rs, ptr noundef nonnull @__func__.pp_get_ppfeature_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_get_ppfeature_status) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_ppfeature_status11 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 83
  %8 = ptrtoint ptr %get_ppfeature_status11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_ppfeature_status11, align 4
  %call12 = tail call i32 %9(ptr noundef nonnull %handle, ptr noundef nonnull %buf) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %if.then4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_ppfeature_status(ptr noundef %handle, i64 noundef %ppfeature_masks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_ppfeature_status = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 84
  %4 = ptrtoint ptr %set_ppfeature_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_ppfeature_status, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_set_ppfeature_status._rs, ptr noundef nonnull @__func__.pp_set_ppfeature_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_set_ppfeature_status) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_ppfeature_status9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 84
  %8 = ptrtoint ptr %set_ppfeature_status9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_ppfeature_status9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle, i64 noundef %ppfeature_masks) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_asic_reset_mode_2(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %asic_reset = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_reset, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @pp_asic_reset_mode_2._rs, ptr noundef nonnull @__func__.pp_asic_reset_mode_2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.pp_asic_reset_mode_2) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %asic_reset9 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 86
  %8 = ptrtoint ptr %asic_reset9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_reset9, align 4
  %call10 = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef 2) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %if.then2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_df_cstate(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_df_cstate = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 88
  %4 = ptrtoint ptr %set_df_cstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_df_cstate, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_df_cstate6 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 88
  %8 = ptrtoint ptr %set_df_cstate6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_df_cstate6, align 4
  %call = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %state) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_set_xgmi_pstate(ptr noundef %handle, i32 noundef %pstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %set_xgmi_pstate = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %set_xgmi_pstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_xgmi_pstate, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %set_xgmi_pstate6 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 89
  %8 = ptrtoint ptr %set_xgmi_pstate6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_xgmi_pstate6, align 4
  %call = tail call i32 %9(ptr noundef nonnull %handle, i32 noundef %pstate) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_gpu_metrics(ptr noundef %handle, ptr noundef %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_en = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %pm_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_en, align 1, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 30
  %2 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr_func, align 4
  %get_gpu_metrics = getelementptr inbounds %struct.pp_hwmgr_func, ptr %3, i32 0, i32 91
  %4 = ptrtoint ptr %get_gpu_metrics to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_gpu_metrics, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr_func, align 4
  %get_gpu_metrics6 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %7, i32 0, i32 91
  %8 = ptrtoint ptr %get_gpu_metrics6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_gpu_metrics6, align 4
  %call = tail call i32 %9(ptr noundef nonnull %handle, ptr noundef %table) #8
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_get_prv_buffer_details(ptr noundef %handle, ptr noundef %addr, ptr noundef writeonly %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %tobool.not = icmp eq ptr %addr, null
  %tobool2.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %addr, align 4
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %size, align 4
  %smu_lock = getelementptr inbounds %struct.pp_hwmgr, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %smu_lock, i32 noundef 0) #8
  %smu_prv_buffer = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 22
  %4 = ptrtoint ptr %smu_prv_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu_prv_buffer, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @amdgpu_bo_kmap(ptr noundef nonnull %5, ptr noundef nonnull %addr) #8
  %smu_prv_buffer_size = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 21
  %6 = ptrtoint ptr %smu_prv_buffer_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smu_prv_buffer_size, align 4
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %size, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %smu_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmgr_handle_task(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmgr_hw_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmgr_hw_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_store_dal_configuration_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_dal_power_level(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_clock_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_current_shallow_sleep_clocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_clock_by_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_clock_by_type_with_latency(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_clock_by_type_with_voltage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_set_watermarks_for_clocks_ranges(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_display_clock_voltage_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_max_high_clocks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_set_active_display_count(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmgr_sw_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmgr_sw_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmgr_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmgr_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193, !195, !197, !199, !200, !201, !202, !203, !204, !206, !207, !208}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @pp_smu_ip_block, !1, !"pp_smu_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 263, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 246, i32 10}
!4 = !{ptr @pp_ip_funcs, !5, !"pp_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 245, i32 34}
!6 = !{ptr @amd_powerplay_create.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 52, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @amd_powerplay_create.__key.2, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 53, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @pp_dpm_funcs, !13, !"pp_dpm_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1686, i32 34}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 510, i32 3}
!16 = !{ptr @pp_dpm_set_fan_control_mode._rs, !15, !"_rs", i1 false, i1 false}
!17 = !{ptr @__func__.pp_dpm_set_fan_control_mode, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pp_dpm_set_fan_control_mode._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pp_dpm_set_fan_control_mode._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @pp_dpm_get_fan_control_mode._rs, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 527, i32 3}
!24 = !{ptr @__func__.pp_dpm_get_fan_control_mode, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pp_dpm_get_fan_control_mode._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @pp_dpm_get_fan_control_mode._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @pp_dpm_set_fan_speed_pwm._rs, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 545, i32 3}
!29 = !{ptr @__func__.pp_dpm_set_fan_speed_pwm, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pp_dpm_set_fan_speed_pwm._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @pp_dpm_set_fan_speed_pwm._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @pp_dpm_get_fan_speed_pwm._rs, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 563, i32 3}
!34 = !{ptr @__func__.pp_dpm_get_fan_speed_pwm, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pp_dpm_get_fan_speed_pwm._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @pp_dpm_get_fan_speed_pwm._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @pp_dpm_force_clock_level._rs, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 725, i32 3}
!39 = !{ptr @__func__.pp_dpm_force_clock_level, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pp_dpm_force_clock_level._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pp_dpm_force_clock_level._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 730, i32 3}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pp_dpm_force_clock_level.__UNIQUE_ID_ddebug344, !43, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!46 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pp_dpm_print_clock_levels._rs, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 750, i32 3}
!49 = !{ptr @__func__.pp_dpm_print_clock_levels, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pp_dpm_print_clock_levels._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pp_dpm_print_clock_levels._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @pp_dpm_get_sclk_od._rs, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 768, i32 3}
!54 = !{ptr @__func__.pp_dpm_get_sclk_od, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pp_dpm_get_sclk_od._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @pp_dpm_get_sclk_od._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @pp_dpm_set_sclk_od._rs, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 786, i32 3}
!59 = !{ptr @__func__.pp_dpm_set_sclk_od, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pp_dpm_set_sclk_od._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @pp_dpm_set_sclk_od._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @pp_dpm_get_mclk_od._rs, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 805, i32 3}
!64 = !{ptr @__func__.pp_dpm_get_mclk_od, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @pp_dpm_get_mclk_od._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @pp_dpm_get_mclk_od._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @pp_dpm_set_mclk_od._rs, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 823, i32 3}
!69 = !{ptr @__func__.pp_dpm_set_mclk_od, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pp_dpm_set_mclk_od._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @pp_dpm_set_mclk_od._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @pp_dpm_set_fan_speed_rpm._rs, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 599, i32 3}
!74 = !{ptr @__func__.pp_dpm_set_fan_speed_rpm, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pp_dpm_set_fan_speed_rpm._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @pp_dpm_set_fan_speed_rpm._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @pp_dpm_switch_power_profile._rs, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 965, i32 3}
!79 = !{ptr @__func__.pp_dpm_switch_power_profile, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pp_dpm_switch_power_profile._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @pp_dpm_switch_power_profile._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.10, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 285, i32 3}
!84 = !{ptr @.str.11, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @pp_dpm_load_fw._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @pp_dpm_load_fw._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @pp_dpm_powergate_uvd._rs, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 443, i32 3}
!89 = !{ptr @__func__.pp_dpm_powergate_uvd, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @pp_dpm_powergate_uvd._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @pp_dpm_powergate_uvd._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @pp_dpm_powergate_vce._rs, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 427, i32 3}
!94 = !{ptr @__func__.pp_dpm_powergate_vce, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @pp_dpm_powergate_vce._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @pp_dpm_powergate_vce._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @pp_dpm_powergate_mmhub._rs, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1265, i32 3}
!99 = !{ptr @__func__.pp_dpm_powergate_mmhub, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @pp_dpm_powergate_mmhub._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @pp_dpm_powergate_mmhub._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @pp_dpm_powergate_gfx._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1280, i32 3}
!104 = !{ptr @__func__.pp_dpm_powergate_gfx, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @pp_dpm_powergate_gfx._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @pp_dpm_powergate_gfx._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @pp_dpm_powergate_acp._rs, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1295, i32 3}
!109 = !{ptr @__func__.pp_dpm_powergate_acp, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @pp_dpm_powergate_acp._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @pp_dpm_powergate_acp._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @pp_dpm_powergate_sdma._rs, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1310, i32 3}
!114 = !{ptr @__func__.pp_dpm_powergate_sdma, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @pp_dpm_powergate_sdma._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @pp_dpm_powergate_sdma._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @pp_set_clockgating_by_smu._rs, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 305, i32 3}
!119 = !{ptr @__func__.pp_set_clockgating_by_smu, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @pp_set_clockgating_by_smu._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @pp_set_clockgating_by_smu._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @pp_set_power_limit._rs, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1010, i32 3}
!124 = !{ptr @__func__.pp_set_power_limit, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @pp_set_power_limit._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @pp_set_power_limit._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.12, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 900, i32 3}
!129 = !{ptr @.str.13, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @pp_set_power_profile_mode.__UNIQUE_ID_ddebug345, !128, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!131 = !{ptr @.str.14, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @pp_odn_edit_dpm_table._rs, !133, !"_rs", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 931, i32 3}
!134 = !{ptr @__func__.pp_odn_edit_dpm_table, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @pp_odn_edit_dpm_table._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @pp_odn_edit_dpm_table._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @pp_smu_i2c_bus_access._rs, !138, !"_rs", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1585, i32 3}
!139 = !{ptr @__func__.pp_smu_i2c_bus_access, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @pp_smu_i2c_bus_access._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @pp_smu_i2c_bus_access._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @pp_gfx_state_change_set._rs, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1656, i32 3}
!144 = !{ptr @__func__.pp_gfx_state_change_set, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @pp_gfx_state_change_set._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @pp_gfx_state_change_set._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @pp_dpm_get_sclk._rs, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 392, i32 3}
!149 = !{ptr @__func__.pp_dpm_get_sclk, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @pp_dpm_get_sclk._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @pp_dpm_get_sclk._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @pp_dpm_get_mclk._rs, !153, !"_rs", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 410, i32 3}
!154 = !{ptr @__func__.pp_dpm_get_mclk, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @pp_dpm_get_mclk._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @pp_dpm_get_mclk._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.15, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1125, i32 3}
!159 = !{ptr @.str.16, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @pp_get_current_clocks.__UNIQUE_ID_ddebug346, !158, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!161 = !{ptr @.str.17, !158, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @pp_notify_smu_enable_pwe._rs, !163, !"_rs", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1361, i32 3}
!164 = !{ptr @__func__.pp_notify_smu_enable_pwe, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @pp_notify_smu_enable_pwe._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @pp_notify_smu_enable_pwe._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.18, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1417, i32 3}
!169 = !{ptr @.str.19, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @pp_set_hard_min_dcefclk_by_freq.__UNIQUE_ID_ddebug348, !168, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!171 = !{ptr @.str.20, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.21, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1436, i32 3}
!174 = !{ptr @pp_set_hard_min_fclk_by_freq.__UNIQUE_ID_ddebug349, !173, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!175 = !{ptr @.str.22, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1398, i32 3}
!177 = !{ptr @pp_set_min_deep_sleep_dcefclk.__UNIQUE_ID_ddebug347, !176, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!178 = !{ptr @pp_get_ppfeature_status._rs, !179, !"_rs", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1525, i32 3}
!180 = !{ptr @__func__.pp_get_ppfeature_status, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @pp_get_ppfeature_status._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @pp_get_ppfeature_status._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @pp_set_ppfeature_status._rs, !184, !"_rs", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1545, i32 3}
!185 = !{ptr @__func__.pp_set_ppfeature_status, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @pp_set_ppfeature_status._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @pp_set_ppfeature_status._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @pp_asic_reset_mode_2._rs, !189, !"_rs", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 1565, i32 3}
!190 = !{ptr @__func__.pp_asic_reset_mode_2, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @pp_asic_reset_mode_2._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @pp_asic_reset_mode_2._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.23, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 156, i32 3}
!195 = !{ptr @.str.24, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 171, i32 3}
!197 = !{ptr @.str.25, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 102, i32 2}
!199 = !{ptr @.str.26, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @pp_sw_init.__UNIQUE_ID_ddebug343, !198, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!201 = !{ptr @.str.27, !198, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.28, !198, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.29, !198, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.30, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/amd_powerplay.c", i32 129, i32 3}
!206 = !{ptr @.str.31, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @pp_hw_init._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @pp_hw_init._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{i8 0, i8 2}
!219 = !{!"auto-init"}
!220 = !{i64 2148733901, i64 2148733906, i64 2148733919, i64 2148733963, i64 2148733997, i64 2148734018}
!221 = !{i32 0, i32 33}
