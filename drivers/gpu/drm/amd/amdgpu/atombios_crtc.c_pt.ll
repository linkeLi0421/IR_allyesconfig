; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/atombios_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/atombios_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._SET_CRTC_OVERSCAN_PARAMETERS = type { i16, i16, i16, i16, i8, [3 x i8] }
%struct.amdgpu_crtc = type { %struct.drm_crtc, i32, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, i32, i32, %struct.dm_irq_params, %struct.amdgpu_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, %struct.hrtimer, i32, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.dfixed = type { i32 }
%struct.dm_irq_params = type { i32, %struct.mod_vrr_params, ptr, i32, i8, %struct.mod_freesync_config, i32 }
%struct.mod_vrr_params = type { i8, i8, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_adjust, %struct.mod_vrr_params_fixed_refresh, %struct.mod_vrr_params_btr }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.mod_vrr_params_fixed_refresh = type { i8, i8, i8, i32, i32 }
%struct.mod_vrr_params_btr = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.mod_freesync_config = type { i32, i8, i8, i8, i32, i32, i32 }
%struct.amdgpu_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct._ENABLE_SCALER_PARAMETERS = type { i8, i8, i8, [1 x i8] }
%struct._ENABLE_CRTC_PARAMETERS = type { i8, i8, [2 x i8] }
%struct._BLANK_CRTC_PARAMETERS = type { i8, i8, i16, i16, i16 }
%struct._ENABLE_DISP_POWER_GATING_PS_ALLOCATION = type { i8, i8, [2 x i8], [4 x i32] }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.99, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS = type { i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_MODE_MISC_INFO_ACCESS, i8, i8, i8, [3 x i8] }
%union._ATOM_MODE_MISC_INFO_ACCESS = type { %struct._ATOM_MODE_MISC_INFO }
%struct._ATOM_MODE_MISC_INFO = type { i16 }
%union.set_pixel_clock = type { %struct._PIXEL_CLOCK_PARAMETERS_V5, [4 x i8] }
%struct._PIXEL_CLOCK_PARAMETERS_V5 = type { i8, %union.anon.114, i16, i16, i8, i8, i8, i8, i8, i8, i32 }
%union.anon.114 = type { i8 }
%union.set_dce_clock = type { %struct._SET_DCE_CLOCK_PS_ALLOCATION_V1_1 }
%struct._SET_DCE_CLOCK_PS_ALLOCATION_V1_1 = type { %struct._SET_DCE_CLOCK_PARAMETERS_V1_1, [2 x i32] }
%struct._SET_DCE_CLOCK_PARAMETERS_V1_1 = type { i32, i8, i8, i8, i8 }
%struct._PIXEL_CLOCK_PARAMETERS_V7 = type { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32 }
%union.adjust_pixel_clock = type { %struct._ADJUST_DISPLAY_PLL_PS_ALLOCATION_V3 }
%struct._ADJUST_DISPLAY_PLL_PS_ALLOCATION_V3 = type { %union.anon.117 }
%union.anon.117 = type { %struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3 }
%struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3 = type { i32, i8, i8, [2 x i8] }
%struct.amdgpu_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i16, %struct.amdgpu_hpd, %struct.amdgpu_router, ptr, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.amdgpu_router = type { i32, %struct.amdgpu_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_connector_atom_dig = type { [15 x i8], [16 x i8], i8, i32, i32, i8 }
%struct.amdgpu_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr }
%struct._ADJUST_DISPLAY_PLL_PARAMETERS = type { i16, i8, i8, %union.anon.116, [3 x i8] }
%union.anon.116 = type { i8 }
%struct._ADJUST_DISPLAY_PLL_INPUT_PARAMETERS_V3 = type { i16, i8, i8, i8, i8, [2 x i8] }
%union.atom_enable_ss = type { %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL }
%struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL = type { i16, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown table version %d %d\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_atombios_crtc_program_pll = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\00\02\00\00\00\03", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 255]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 255]
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [46 x i8] c"../drivers/gpu/drm/amd/amdgpu/atombios_crtc.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 510, i32 4 }
@___asan_gen_.14 = private unnamed_addr constant [46 x i8] c"switch.table.amdgpu_atombios_crtc_program_pll\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @switch.table.amdgpu_atombios_crtc_program_pll], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_atombios_crtc_program_pll to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_overscan_setup(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode, ptr nocapture noundef readonly %adjusted_mode) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._SET_CRTC_OVERSCAN_PARAMETERS, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #4
  %2 = getelementptr inbounds %struct._SET_CRTC_OVERSCAN_PARAMETERS, ptr %args, i32 0, i32 1
  %3 = getelementptr inbounds %struct._SET_CRTC_OVERSCAN_PARAMETERS, ptr %args, i32 0, i32 2
  %4 = getelementptr inbounds %struct._SET_CRTC_OVERSCAN_PARAMETERS, ptr %args, i32 0, i32 3
  %5 = getelementptr inbounds %struct._SET_CRTC_OVERSCAN_PARAMETERS, ptr %args, i32 0, i32 4
  %6 = call ptr @memset(ptr %args, i32 0, i32 12)
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %7 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crtc_id, align 8
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %5, align 2
  %rmx_type = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 15
  %10 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmx_type, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %13 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_vdisplay, align 2
  %conv2 = zext i16 %14 to i32
  %crtc_vdisplay3 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %15 = ptrtoint ptr %crtc_vdisplay3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %crtc_vdisplay3, align 2
  %conv4 = zext i16 %16 to i32
  %sub = sub nsw i32 %conv2, %conv4
  %div = sdiv i32 %sub, 2
  %conv5 = trunc i32 %div to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %4, align 2
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %3, align 2
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %20 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %crtc_hdisplay, align 4
  %conv13 = zext i16 %21 to i32
  %crtc_hdisplay14 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %22 = ptrtoint ptr %crtc_hdisplay14 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %crtc_hdisplay14, align 4
  %conv15 = zext i16 %23 to i32
  %sub16 = sub nsw i32 %conv13, %conv15
  %div17 = sdiv i32 %sub16, 2
  %conv18 = trunc i32 %div17 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %2, align 2
  %26 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %24, ptr %args, align 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %crtc_vdisplay27 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %27 = ptrtoint ptr %crtc_vdisplay27 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %crtc_vdisplay27, align 2
  %conv28 = zext i16 %28 to i32
  %crtc_hdisplay29 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %29 = ptrtoint ptr %crtc_hdisplay29 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %crtc_hdisplay29, align 4
  %conv30 = zext i16 %30 to i32
  %mul = mul nuw i32 %conv30, %conv28
  %crtc_vdisplay31 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %31 = ptrtoint ptr %crtc_vdisplay31 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %crtc_vdisplay31, align 2
  %conv32 = zext i16 %32 to i32
  %crtc_hdisplay33 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %33 = ptrtoint ptr %crtc_hdisplay33 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %crtc_hdisplay33, align 4
  %conv34 = zext i16 %34 to i32
  %mul35 = mul nuw i32 %conv34, %conv32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul35)
  %cmp = icmp sgt i32 %mul, %mul35
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  %div41 = sdiv i32 %mul35, %conv28
  %sub42 = sub i32 %conv30, %div41
  %div43 = sdiv i32 %sub42, 2
  %conv44 = trunc i32 %div43 to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv44)
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %2, align 2
  %37 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %35, ptr %args, align 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_cmp4(i32 %mul35, i32 %mul)
  %cmp55 = icmp sgt i32 %mul35, %mul
  br i1 %cmp55, label %if.then57, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %div62 = sdiv i32 %mul, %conv34
  %sub63 = sub i32 %conv32, %div62
  %div64 = sdiv i32 %sub63, 2
  %conv65 = trunc i32 %div64 to i16
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv65)
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %4, align 2
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %38, ptr %3, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %h_border = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 16
  %41 = ptrtoint ptr %h_border to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %h_border, align 4
  %conv78 = zext i8 %42 to i16
  %43 = shl nuw i16 %conv78, 8
  %44 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %args, align 2
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %43, ptr %2, align 2
  %v_border = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 17
  %46 = ptrtoint ptr %v_border to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %v_border, align 1
  %conv83 = zext i8 %47 to i16
  %48 = shl nuw i16 %conv83, 8
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %3, align 2
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %48, ptr %4, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then57, %if.else.sw.epilog_crit_edge, %if.then, %sw.bb
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %51 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mode_info, align 8
  %call88 = call i32 @amdgpu_atom_execute_table(ptr noundef %52, i32 noundef 40, ptr noundef nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_scaler_setup(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._ENABLE_SCALER_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #4
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %args, align 4
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %3 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %crtc_id, align 8
  %conv = trunc i32 %4 to i8
  store i8 %conv, ptr %args, align 4
  %rmx_type = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 15
  %5 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rmx_type, align 8
  %switch.tableidx = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 131330, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sink = select i1 %7, i8 %switch.masked, i8 0
  %8 = getelementptr inbounds %struct._ENABLE_SCALER_PARAMETERS, ptr %args, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %8, align 1
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %10 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info, align 8
  %call7 = call i32 @amdgpu_atom_execute_table(ptr noundef %11, i32 noundef 33, ptr noundef nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_lock(ptr nocapture noundef readonly %crtc, i32 noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #4
  %2 = getelementptr inbounds %struct._ENABLE_CRTC_PARAMETERS, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %args, align 4
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_id, align 8
  %conv = trunc i32 %5 to i8
  store i8 %conv, ptr %args, align 4
  %conv2 = trunc i32 %lock to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %2, align 1
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %call3 = call i32 @amdgpu_atom_execute_table(ptr noundef %8, i32 noundef 44, ptr noundef nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_enable(ptr nocapture noundef readonly %crtc, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #4
  %2 = getelementptr inbounds %struct._ENABLE_CRTC_PARAMETERS, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %args, align 4
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_id, align 8
  %conv = trunc i32 %5 to i8
  store i8 %conv, ptr %args, align 4
  %conv2 = trunc i32 %state to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %2, align 1
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %call3 = call i32 @amdgpu_atom_execute_table(ptr noundef %8, i32 noundef 35, ptr noundef nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_blank(ptr nocapture noundef readonly %crtc, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._BLANK_CRTC_PARAMETERS, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #4
  %2 = getelementptr inbounds %struct._BLANK_CRTC_PARAMETERS, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %args, align 8
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_id, align 8
  %conv = trunc i32 %5 to i8
  store i8 %conv, ptr %args, align 8
  %conv2 = trunc i32 %state to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %2, align 1
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %call3 = call i32 @amdgpu_atom_execute_table(ptr noundef %8, i32 noundef 34, ptr noundef nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_powergate(ptr nocapture noundef readonly %crtc, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._ENABLE_DISP_POWER_GATING_PS_ALLOCATION, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args) #4
  %2 = getelementptr inbounds %struct._ENABLE_DISP_POWER_GATING_PS_ALLOCATION, ptr %args, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %args, i32 2
  %4 = call ptr @memset(ptr %3, i32 0, i32 18)
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %5 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crtc_id, align 8
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %args, align 1
  %conv2 = trunc i32 %state to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %2, align 1
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %9 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info, align 8
  %call3 = call i32 @amdgpu_atom_execute_table(ptr noundef %10, i32 noundef 13, ptr noundef nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_powergate_init(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._ENABLE_DISP_POWER_GATING_PS_ALLOCATION, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args) #4
  %0 = getelementptr inbounds %struct._ENABLE_DISP_POWER_GATING_PS_ALLOCATION, ptr %args, i32 0, i32 1
  %1 = call ptr @memset(ptr %args, i32 0, i32 20)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 7, ptr %0, align 1
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %3 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %4, i32 noundef 13, ptr noundef nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_set_dtd_timing(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #4
  %2 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 1
  %3 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 2
  %4 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 3
  %5 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 4
  %6 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 5
  %7 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 6
  %8 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 7
  %9 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 8
  %10 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 9
  %11 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 10
  %12 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 11
  %13 = getelementptr inbounds i8, ptr %args, i32 20
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %13, align 2
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %15 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %crtc_hdisplay, align 4
  %h_border = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 16
  %17 = ptrtoint ptr %h_border to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h_border, align 4
  %conv2 = zext i8 %18 to i16
  %mul.neg = mul nsw i16 %conv2, -2
  %sub = add i16 %mul.neg, %16
  %19 = tail call i16 @llvm.bswap.i16(i16 %sub)
  %20 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %args, align 2
  %crtc_hblank_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 15
  %21 = ptrtoint ptr %crtc_hblank_end to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %crtc_hblank_end, align 4
  %sub7 = sub i16 %22, %16
  %mul10 = shl nuw nsw i16 %conv2, 1
  %add = add i16 %sub7, %mul10
  %23 = tail call i16 @llvm.bswap.i16(i16 %add)
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %2, align 2
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %25 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %crtc_vdisplay, align 2
  %v_border = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 17
  %27 = ptrtoint ptr %v_border to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %v_border, align 1
  %conv13 = zext i8 %28 to i16
  %mul14.neg = mul nsw i16 %conv13, -2
  %sub15 = add i16 %mul14.neg, %26
  %29 = tail call i16 @llvm.bswap.i16(i16 %sub15)
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %3, align 2
  %crtc_vblank_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 22
  %31 = ptrtoint ptr %crtc_vblank_end to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %crtc_vblank_end, align 2
  %sub20 = sub i16 %32, %26
  %mul23 = shl nuw nsw i16 %conv13, 1
  %add24 = add i16 %sub20, %mul23
  %33 = tail call i16 @llvm.bswap.i16(i16 %add24)
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %4, align 2
  %crtc_hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %35 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %crtc_hsync_start, align 2
  %sub29 = sub i16 %conv2, %16
  %add32 = add i16 %sub29, %36
  %37 = tail call i16 @llvm.bswap.i16(i16 %add32)
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %5, align 2
  %crtc_hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %39 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %crtc_hsync_end, align 4
  %sub37 = sub i16 %40, %36
  %41 = tail call i16 @llvm.bswap.i16(i16 %sub37)
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %6, align 2
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %43 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %crtc_vsync_start, align 4
  %sub42 = sub i16 %conv13, %26
  %add45 = add i16 %sub42, %44
  %45 = tail call i16 @llvm.bswap.i16(i16 %add45)
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %7, align 2
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %47 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %crtc_vsync_end, align 2
  %sub50 = sub i16 %48, %44
  %49 = tail call i16 @llvm.bswap.i16(i16 %sub50)
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %8, align 2
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %18, ptr %10, align 2
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %28, ptr %11, align 1
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %55 = trunc i32 %54 to i16
  %56 = lshr i16 %55, 1
  %57 = and i16 %56, 4
  %58 = shl i16 %55, 3
  %59 = and i16 %58, 128
  %60 = and i16 %58, 256
  %61 = and i16 %55, 66
  %62 = or i16 %61, %57
  %63 = or i16 %62, %59
  %64 = or i16 %63, %60
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %9, align 2
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %67 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %crtc_id, align 8
  %conv88 = trunc i32 %68 to i8
  %69 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv88, ptr %12, align 2
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %70 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mode_info, align 8
  %call89 = call i32 @amdgpu_atom_execute_table(ptr noundef %71, i32 noundef 49, ptr noundef nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_set_disp_eng_pll(ptr nocapture noundef readonly %adev, i32 noundef %dispclk) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %args = alloca %union.set_pixel_clock, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #4
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #4
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args) #4
  %2 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 2
  %3 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 6
  %4 = call ptr @memset(ptr %args, i32 0, i32 20)
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %6, i32 noundef 12, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cond = icmp eq i8 %8, 1
  br i1 %cond, label %sw.bb, label %sw.default23

sw.bb:                                            ; preds = %if.end
  %9 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %crev, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %10, label %sw.default [
    i8 5, label %sw.bb2
    i8 6, label %sw.bb4
  ]

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %args, align 4
  %conv3 = trunc i32 %dispclk to i16
  %13 = call i16 @llvm.bswap.i16(i16 %conv3)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %2, align 2
  br label %sw.epilog26

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %15 = call i32 @llvm.bswap.i32(i32 %dispclk)
  %16 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %args, align 4
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %17 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %switch = icmp ult i32 %18, 4
  %. = select i1 %switch, i8 2, i8 8
  br label %sw.epilog26

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv1 = zext i8 %10 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %conv1) #4
  br label %cleanup

sw.default23:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %8 to i32
  %19 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %crev, align 1
  %conv25 = zext i8 %20 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv25) #4
  br label %cleanup

sw.epilog26:                                      ; preds = %sw.bb4, %sw.bb2
  %.sink = phi i8 [ 2, %sw.bb2 ], [ %., %sw.bb4 ]
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %3, align 4
  %22 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mode_info, align 8
  %call29 = call i32 @amdgpu_atom_execute_table(ptr noundef %23, i32 noundef 12, ptr noundef nonnull %args) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog26, %sw.default23, %sw.default, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_crtc_set_dce_clock(ptr nocapture noundef readonly %adev, i32 noundef %freq, i8 noundef zeroext %clk_type, i8 noundef zeroext %clk_src) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %args = alloca %union.set_dce_clock, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #4
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #4
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #4
  %2 = getelementptr inbounds %struct._SET_DCE_CLOCK_PARAMETERS_V1_1, ptr %args, i32 0, i32 1
  %3 = getelementptr inbounds %struct._SET_DCE_CLOCK_PARAMETERS_V1_1, ptr %args, i32 0, i32 2
  %4 = getelementptr inbounds i8, ptr %args, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %7, i32 noundef 46, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cond = icmp eq i8 %9, 2
  br i1 %cond, label %sw.bb, label %sw.default12

sw.bb:                                            ; preds = %if.end
  %10 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cond20 = icmp eq i8 %11, 1
  br i1 %cond20, label %sw.bb2, label %sw.default

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %12 = call i32 @llvm.bswap.i32(i32 %freq)
  %13 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %args, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %clk_type, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %clk_src, ptr %3, align 1
  %16 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mode_info, align 8
  %call7 = call i32 @amdgpu_atom_execute_table(ptr noundef %17, i32 noundef 46, ptr noundef nonnull %args) #4
  %18 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %args, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %mul = mul i32 %20, 10
  br label %cleanup

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv1 = zext i8 %11 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef %conv1) #4
  br label %cleanup

sw.default12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %9 to i32
  %21 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %crev, align 1
  %conv14 = zext i8 %22 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv14) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.default12, %sw.default, %sw.bb2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %sw.bb2 ], [ 0, %sw.default ], [ 0, %sw.default12 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_program_pll(ptr nocapture noundef readonly %crtc, i32 noundef %crtc_id, i32 noundef %pll_id, i32 noundef %encoder_mode, i32 noundef %encoder_id, i32 noundef %clock, i32 noundef %ref_div, i32 noundef %fb_div, i32 noundef %frac_fb_div, i32 noundef %post_div, i32 noundef %bpc, i1 noundef zeroext %ss_enabled, ptr nocapture noundef readonly %ss) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %args = alloca %union.set_pixel_clock, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #4
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #4
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args) #4
  %4 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 2
  %5 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 3
  %6 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 4
  %7 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 5
  %8 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 6
  %9 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 7
  %10 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 8
  %11 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 9
  %12 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 10
  %13 = call ptr @memset(ptr %args, i32 0, i32 20)
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %14 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mode_info, align 8
  %call2 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %15, i32 noundef 12, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #4
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cond = icmp eq i8 %17, 1
  br i1 %cond, label %sw.bb, label %sw.default213

sw.bb:                                            ; preds = %if.end
  %18 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %crev, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %19, label %sw.default209 [
    i8 1, label %sw.bb4
    i8 2, label %sw.bb15
    i8 3, label %sw.bb32
    i8 5, label %sw.bb61
    i8 6, label %sw.bb112
    i8 7, label %sw.bb174
  ]

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %sw.bb4.cleanup_crit_edge, label %if.end7

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %div = udiv i32 %clock, 10
  %conv8 = trunc i32 %div to i16
  %21 = call i16 @llvm.bswap.i16(i16 %conv8)
  %22 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %args, align 4
  %conv9 = trunc i32 %ref_div to i16
  %23 = call i16 @llvm.bswap.i16(i16 %conv9)
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %4, align 2
  %conv10 = trunc i32 %fb_div to i16
  %25 = call i16 @llvm.bswap.i16(i16 %conv10)
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %5, align 4
  %conv11 = trunc i32 %frac_fb_div to i8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv11, ptr %7, align 1
  %conv12 = trunc i32 %post_div to i8
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv12, ptr %6, align 2
  %conv13 = trunc i32 %pll_id to i8
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv13, ptr %8, align 4
  %conv14 = trunc i32 %crtc_id to i8
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv14, ptr %10, align 2
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %9, align 1
  br label %sw.epilog216

sw.bb15:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %div16 = udiv i32 %clock, 10
  %conv17 = trunc i32 %div16 to i16
  %32 = call i16 @llvm.bswap.i16(i16 %conv17)
  %33 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %args, align 4
  %conv19 = trunc i32 %ref_div to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv19)
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %4, align 2
  %conv21 = trunc i32 %fb_div to i16
  %36 = call i16 @llvm.bswap.i16(i16 %conv21)
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %5, align 4
  %conv23 = trunc i32 %frac_fb_div to i8
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv23, ptr %7, align 1
  %conv25 = trunc i32 %post_div to i8
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv25, ptr %6, align 2
  %conv27 = trunc i32 %pll_id to i8
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv27, ptr %8, align 4
  %conv29 = trunc i32 %crtc_id to i8
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv29, ptr %10, align 2
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %9, align 1
  br label %sw.epilog216

sw.bb32:                                          ; preds = %sw.bb
  %div33 = udiv i32 %clock, 10
  %conv34 = trunc i32 %div33 to i16
  %43 = call i16 @llvm.bswap.i16(i16 %conv34)
  %44 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %args, align 4
  %conv36 = trunc i32 %ref_div to i16
  %45 = call i16 @llvm.bswap.i16(i16 %conv36)
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %4, align 2
  %conv38 = trunc i32 %fb_div to i16
  %47 = call i16 @llvm.bswap.i16(i16 %conv38)
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %5, align 4
  %conv40 = trunc i32 %frac_fb_div to i8
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv40, ptr %7, align 1
  %conv42 = trunc i32 %post_div to i8
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv42, ptr %6, align 2
  %conv44 = trunc i32 %pll_id to i8
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv44, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %crtc_id)
  %cmp46 = icmp eq i32 %crtc_id, 1
  %spec.select = select i1 %cmp46, i8 4, i8 0
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %spec.select, ptr %11, align 1
  br i1 %ss_enabled, label %land.lhs.true, label %sw.bb32.if.end58_crit_edge

sw.bb32.if.end58_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

land.lhs.true:                                    ; preds = %sw.bb32
  %type = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 2
  %53 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type, align 2
  %55 = and i8 %54, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool53.not = icmp eq i8 %55, 0
  br i1 %tobool53.not, label %land.lhs.true.if.end58_crit_edge, label %if.then54

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %11, align 1
  %58 = or i8 %57, 16
  store i8 %58, ptr %11, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %land.lhs.true.if.end58_crit_edge, %sw.bb32.if.end58_crit_edge
  %conv59 = trunc i32 %encoder_id to i8
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv59, ptr %9, align 1
  %conv60 = trunc i32 %encoder_mode to i8
  %60 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv60, ptr %10, align 2
  br label %sw.epilog216

sw.bb61:                                          ; preds = %sw.bb
  %conv62 = trunc i32 %crtc_id to i8
  %61 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv62, ptr %args, align 4
  %div64 = udiv i32 %clock, 10
  %conv65 = trunc i32 %div64 to i16
  %62 = call i16 @llvm.bswap.i16(i16 %conv65)
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %4, align 2
  %conv67 = trunc i32 %ref_div to i8
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv67, ptr %7, align 1
  %conv68 = trunc i32 %fb_div to i16
  %65 = call i16 @llvm.bswap.i16(i16 %conv68)
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %5, align 4
  %mul = mul i32 %frac_fb_div, 100000
  %67 = call i32 @llvm.bswap.i32(i32 %mul)
  %68 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %12, align 4
  %conv70 = trunc i32 %post_div to i8
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv70, ptr %6, align 2
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %11, align 1
  br i1 %ss_enabled, label %land.lhs.true75, label %sw.bb61.if.end88_crit_edge

sw.bb61.if.end88_crit_edge:                       ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

land.lhs.true75:                                  ; preds = %sw.bb61
  %type76 = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 2
  %71 = ptrtoint ptr %type76 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %type76, align 2
  %73 = and i8 %72, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool79.not = icmp ne i8 %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %pll_id)
  %cmp81 = icmp slt i32 %pll_id, 8
  %or.cond = and i1 %cmp81, %tobool79.not
  br i1 %or.cond, label %if.then83, label %land.lhs.true75.if.end88_crit_edge

land.lhs.true75.if.end88_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

if.then83:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 16, ptr %11, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %land.lhs.true75.if.end88_crit_edge, %sw.bb61.if.end88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %encoder_mode)
  %cmp89 = icmp eq i32 %encoder_mode, 3
  br i1 %cmp89, label %if.then91, label %if.end88.if.end107_crit_edge

if.end88.if.end107_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

if.then91:                                        ; preds = %if.end88
  %75 = zext i32 %bpc to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %bpc, label %if.then91.if.end107_crit_edge [
    i32 12, label %sw.bb102
    i32 10, label %if.then91.if.end107.sink.split_crit_edge
  ]

if.then91.if.end107.sink.split_crit_edge:         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107.sink.split

if.then91.if.end107_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

sw.bb102:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107.sink.split

if.end107.sink.split:                             ; preds = %sw.bb102, %if.then91.if.end107.sink.split_crit_edge
  %.sink283 = phi i8 [ 4, %sw.bb102 ], [ 8, %if.then91.if.end107.sink.split_crit_edge ]
  %76 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %11, align 1
  %78 = or i8 %77, %.sink283
  store i8 %78, ptr %11, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.end107.sink.split, %if.then91.if.end107_crit_edge, %if.end88.if.end107_crit_edge
  %conv108 = trunc i32 %encoder_id to i8
  %79 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv108, ptr %9, align 1
  %conv109 = trunc i32 %encoder_mode to i8
  %80 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv109, ptr %10, align 2
  %conv110 = trunc i32 %pll_id to i8
  %81 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv110, ptr %8, align 4
  br label %sw.epilog216

sw.bb112:                                         ; preds = %sw.bb
  %shl = shl i32 %crtc_id, 24
  %div113 = udiv i32 %clock, 10
  %or114 = or i32 %div113, %shl
  %82 = call i32 @llvm.bswap.i32(i32 %or114)
  %83 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %args, align 4
  %conv115 = trunc i32 %ref_div to i8
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv115, ptr %7, align 1
  %conv117 = trunc i32 %fb_div to i16
  %85 = call i16 @llvm.bswap.i16(i16 %conv117)
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %5, align 4
  %mul119 = mul i32 %frac_fb_div, 100000
  %87 = call i32 @llvm.bswap.i32(i32 %mul119)
  %88 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %12, align 4
  %conv121 = trunc i32 %post_div to i8
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv121, ptr %6, align 2
  %90 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %encoder_mode)
  %cmp142 = icmp eq i32 %encoder_mode, 3
  br i1 %cmp142, label %if.then144, label %sw.bb112.if.end167_crit_edge

sw.bb112.if.end167_crit_edge:                     ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

if.then144:                                       ; preds = %sw.bb112
  %91 = zext i32 %bpc to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %bpc, label %if.then144.if.end167_crit_edge [
    i32 16, label %sw.bb161
    i32 10, label %if.then144.if.end167.sink.split_crit_edge
    i32 12, label %sw.bb156
  ]

if.then144.if.end167.sink.split_crit_edge:        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167.sink.split

if.then144.if.end167_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

sw.bb156:                                         ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167.sink.split

sw.bb161:                                         ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167.sink.split

if.end167.sink.split:                             ; preds = %sw.bb161, %sw.bb156, %if.then144.if.end167.sink.split_crit_edge
  %.sink = phi i8 [ 8, %sw.bb156 ], [ 12, %sw.bb161 ], [ 4, %if.then144.if.end167.sink.split_crit_edge ]
  %92 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %.sink, ptr %11, align 1
  br label %if.end167

if.end167:                                        ; preds = %if.end167.sink.split, %if.then144.if.end167_crit_edge, %sw.bb112.if.end167_crit_edge
  %conv168 = trunc i32 %encoder_id to i8
  %93 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv168, ptr %9, align 1
  %conv170 = trunc i32 %encoder_mode to i8
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv170, ptr %10, align 2
  %conv172 = trunc i32 %pll_id to i8
  %95 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv172, ptr %8, align 4
  br label %sw.epilog216

sw.bb174:                                         ; preds = %sw.bb
  %mul175 = mul i32 %clock, 10
  %96 = call i32 @llvm.bswap.i32(i32 %mul175)
  %97 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %encoder_mode)
  %cmp177 = icmp eq i32 %encoder_mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %clock)
  %cmp180 = icmp ugt i32 %clock, 165000
  %or.cond281 = and i1 %cmp177, %cmp180
  %spec.store.select = select i1 %or.cond281, i8 8, i8 0
  %98 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %spec.store.select, ptr %7, align 1
  %conv188 = trunc i32 %crtc_id to i8
  %99 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv188, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %encoder_mode)
  %cmp190 = icmp eq i32 %encoder_mode, 3
  br i1 %cmp190, label %if.then192, label %sw.bb174.if.end202_crit_edge

sw.bb174.if.end202_crit_edge:                     ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end202

if.then192:                                       ; preds = %sw.bb174
  %switch.tableidx = add i32 %bpc, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %100 = icmp ult i32 %switch.tableidx, 7
  br i1 %100, label %switch.lookup, label %if.then192.if.end202.sink.split_crit_edge

if.then192.if.end202.sink.split_crit_edge:        ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end202.sink.split

switch.lookup:                                    ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.amdgpu_atombios_crtc_program_pll, i32 0, i32 %switch.tableidx
  %101 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %101)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end202.sink.split

if.end202.sink.split:                             ; preds = %switch.lookup, %if.then192.if.end202.sink.split_crit_edge
  %.sink284 = phi i8 [ 0, %if.then192.if.end202.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %102 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink284, ptr %9, align 1
  br label %if.end202

if.end202:                                        ; preds = %if.end202.sink.split, %sw.bb174.if.end202_crit_edge
  %conv203 = trunc i32 %encoder_id to i8
  %ucTransmitterID204 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V7, ptr %args, i32 0, i32 2
  %103 = ptrtoint ptr %ucTransmitterID204 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv203, ptr %ucTransmitterID204, align 1
  %conv205 = trunc i32 %encoder_mode to i8
  %104 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv205, ptr %6, align 2
  %conv207 = trunc i32 %pll_id to i8
  %105 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv207, ptr %5, align 4
  br label %sw.epilog216

sw.default209:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv3 = zext i8 %19 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %conv3) #4
  br label %cleanup

sw.default213:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %17 to i32
  %106 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %crev, align 1
  %conv215 = zext i8 %107 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv215) #4
  br label %cleanup

sw.epilog216:                                     ; preds = %if.end202, %if.end167, %if.end107, %if.end58, %sw.bb15, %if.end7
  %108 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mode_info, align 8
  %call219 = call i32 @amdgpu_atom_execute_table(ptr noundef %109, i32 noundef 12, ptr noundef nonnull %args) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog216, %sw.default213, %sw.default209, %sw.bb4.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_crtc_prepare_pll(ptr noundef %crtc, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %union.adjust_pixel_clock, align 8
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %encoder = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 33
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 8
  %call6 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %3) #4
  %bpc = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 29
  %4 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %bpc, align 8
  %ss_enabled = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 27
  %5 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ss_enabled, align 8
  %active_device = getelementptr inbounds %struct.amdgpu_encoder, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_device, align 4
  %and = and i32 %7, 3818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encoder, align 8
  %call8 = tail call zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8)
  %cmp.not = icmp eq i16 %call8, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enc_priv, align 4
  %12 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %encoder, align 8
  %call11 = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %13) #4
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %call11, i32 0, i32 7
  %14 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %con_priv, align 4
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  %pixelclock_for_modeset = getelementptr inbounds %struct.amdgpu_connector, ptr %call11, i32 0, i32 16
  %18 = ptrtoint ptr %pixelclock_for_modeset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixelclock_for_modeset, align 4
  %call15 = tail call i32 @amdgpu_connector_get_monitor_bpc(ptr noundef %call11) #4
  %19 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call15, ptr %bpc, align 8
  %20 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call6, label %if.then.if.end_crit_edge [
    i32 5, label %if.then.sw.bb_crit_edge
    i32 0, label %if.then.sw.bb_crit_edge69
    i32 1, label %sw.bb20
    i32 2, label %sw.bb27
    i32 3, label %sw.bb34
  ]

if.then.sw.bb_crit_edge69:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge69
  %dp_clock17 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %dp_clock17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dp_clock17, align 4
  %div = sdiv i32 %22, 10
  %ss = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26
  %call18 = tail call zeroext i1 @amdgpu_atombios_get_asic_ss_info(ptr noundef %add.ptr.i, ptr noundef %ss, i32 noundef 7, i32 noundef %div) #4
  br label %if.end.sink.split

sw.bb20:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ss21 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26
  %lcd_ss_id = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %11, i32 0, i32 5
  %23 = ptrtoint ptr %lcd_ss_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lcd_ss_id, align 4
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  %div23 = sdiv i32 %26, 10
  %call24 = tail call zeroext i1 @amdgpu_atombios_get_asic_ss_info(ptr noundef %add.ptr.i, ptr noundef %ss21, i32 noundef %24, i32 noundef %div23) #4
  br label %if.end.sink.split

sw.bb27:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ss28 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 4
  %div30 = sdiv i32 %28, 10
  %call31 = tail call zeroext i1 @amdgpu_atombios_get_asic_ss_info(ptr noundef %add.ptr.i, ptr noundef %ss28, i32 noundef 4, i32 noundef %div30) #4
  br label %if.end.sink.split

sw.bb34:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ss35 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode, align 4
  %div37 = sdiv i32 %30, 10
  %call38 = tail call zeroext i1 @amdgpu_atombios_get_asic_ss_info(ptr noundef %add.ptr.i, ptr noundef %ss35, i32 noundef 5, i32 noundef %div37) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb34, %sw.bb27, %sw.bb20, %sw.bb
  %call18.sink = phi i1 [ %call18, %sw.bb ], [ %call24, %sw.bb20 ], [ %call31, %sw.bb27 ], [ %call38, %sw.bb34 ]
  %frombool = zext i1 %call18.sink to i8
  %31 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %ss_enabled, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %32 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc, align 8
  %34 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %encoder, align 8
  %call6.i = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %35) #4
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode, align 4
  %call7.i = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %35) #4
  %38 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode, align 4
  %40 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bpc, align 8
  %call13.i = tail call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %35, i32 noundef %39) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i) #4
  %42 = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3, ptr %args.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3, ptr %args.i, i32 0, i32 2
  %44 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %args.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #4
  %45 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %frev.i, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #4
  %46 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %crev.i, align 1, !annotation !11
  %pll_flags.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 32
  %47 = ptrtoint ptr %pll_flags.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1024, ptr %pll_flags.i, align 4
  %devices.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %35, i32 0, i32 3
  %48 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %devices.i, align 4
  %and.i = and i32 %49, 3818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %call14.i = tail call zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef %35) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call14.i)
  %cmp.not.i = icmp eq i16 %call14.i, 0
  %tobool16.not.i = icmp eq ptr %call6.i, null
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool16.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end22.i_crit_edge, label %lor.lhs.false.i.if.then17.i_crit_edge

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.i

lor.lhs.false.i.if.end22.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.i

if.then.i:                                        ; preds = %if.end
  %tobool16.not.old.i = icmp eq ptr %call6.i, null
  br i1 %tobool16.not.old.i, label %if.then.i.if.end22.i_crit_edge, label %if.then.i.if.then17.i_crit_edge

if.then.i.if.then17.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.i

if.then.i.if.end22.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.i

if.then17.i:                                      ; preds = %if.then.i.if.then17.i_crit_edge, %lor.lhs.false.i.if.then17.i_crit_edge
  %con_priv.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call6.i, i32 0, i32 7
  %50 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %con_priv.i, align 4
  %dp_clock21.i = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %dp_clock21.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dp_clock21.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i, %if.then.i.if.end22.i_crit_edge, %lor.lhs.false.i.if.end22.i_crit_edge
  %dp_clock.0.i = phi i32 [ %53, %if.then17.i ], [ %39, %if.then.i.if.end22.i_crit_edge ], [ %39, %lor.lhs.false.i.if.end22.i_crit_edge ]
  %54 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %devices.i, align 4
  %and24.i = and i32 %55, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i.if.end39.i_crit_edge, label %if.then26.i

if.end22.i.if.end39.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i

if.then26.i:                                      ; preds = %if.end22.i
  %56 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ss_enabled, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool27.not.i = icmp eq i8 %57, 0
  br i1 %tobool27.not.i, label %if.then26.i.if.end39.i_crit_edge, label %if.then28.i

if.then26.i.if.end39.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i

if.then28.i:                                      ; preds = %if.then26.i
  %refdiv.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26, i32 6
  %58 = ptrtoint ptr %refdiv.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %refdiv.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool29.not.i = icmp eq i8 %59, 0
  br i1 %tobool29.not.i, label %if.then28.i.if.end39.i_crit_edge, label %if.then30.i

if.then28.i.if.end39.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i

if.then30.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %pll_flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pll_flags.i, align 4
  %conv34.i = zext i8 %59 to i32
  %pll_reference_div.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 30
  %62 = ptrtoint ptr %pll_reference_div.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv34.i, ptr %pll_reference_div.i, align 4
  %or36.i = or i32 %61, 1028
  store i32 %or36.i, ptr %pll_flags.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then30.i, %if.then28.i.if.end39.i_crit_edge, %if.then26.i.if.end39.i_crit_edge, %if.end22.i.if.end39.i_crit_edge
  %encoder_id.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %35, i32 0, i32 2
  %63 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %encoder_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %64)
  %cmp40.i = icmp eq i32 %64, 20
  br i1 %cmp40.i, label %if.then42.i, label %if.end39.i.if.end44.i_crit_edge

if.end39.i.if.end44.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mode, align 4
  %mul.i = shl i32 %66, 1
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %if.end39.i.if.end44.i_crit_edge
  %adjusted_clock.0.i = phi i32 [ %mul.i, %if.then42.i ], [ %37, %if.end39.i.if.end44.i_crit_edge ]
  %active_device.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %35, i32 0, i32 4
  %67 = ptrtoint ptr %active_device.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %active_device.i, align 4
  %and45.i = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end44.i.if.end50.i_crit_edge, label %if.then47.i

if.end44.i.if.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %pll_flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pll_flags.i, align 4
  %or49.i = or i32 %70, 2048
  store i32 %or49.i, ptr %pll_flags.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.end44.i.if.end50.i_crit_edge
  %71 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %devices.i, align 4
  %and52.i = and i32 %72, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end50.i.if.end57.i_crit_edge, label %if.then54.i

if.end50.i.if.end57.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %pll_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pll_flags.i, align 4
  %or56.i = or i32 %74, 8192
  store i32 %or56.i, ptr %pll_flags.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then54.i, %if.end50.i.if.end57.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call7.i)
  %cmp58.i = icmp eq i32 %call7.i, 3
  br i1 %cmp58.i, label %if.then60.i, label %if.end57.i.if.end68.i_crit_edge

if.end57.i.if.end68.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68.i

if.then60.i:                                      ; preds = %if.end57.i
  %75 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %41, label %if.then60.i.if.end68.i_crit_edge [
    i32 16, label %sw.bb66.i
    i32 10, label %sw.bb61.i
    i32 12, label %sw.bb63.i
  ]

if.then60.i.if.end68.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68.i

sw.bb61.i:                                        ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul62.i = mul i32 %39, 5
  %div266.i = lshr i32 %mul62.i, 2
  br label %if.end68.i

sw.bb63.i:                                        ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul64.i = mul i32 %39, 3
  %div65265.i = lshr i32 %mul64.i, 1
  br label %if.end68.i

sw.bb66.i:                                        ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul67.i = shl i32 %39, 1
  br label %if.end68.i

if.end68.i:                                       ; preds = %sw.bb66.i, %sw.bb63.i, %sw.bb61.i, %if.then60.i.if.end68.i_crit_edge, %if.end57.i.if.end68.i_crit_edge
  %clock9.0.i = phi i32 [ %39, %if.then60.i.if.end68.i_crit_edge ], [ %div65265.i, %sw.bb63.i ], [ %div266.i, %sw.bb61.i ], [ %mul67.i, %sw.bb66.i ], [ %39, %if.end57.i.if.end68.i_crit_edge ]
  %mode_info.i = getelementptr i8, ptr %33, i32 21992
  %76 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mode_info.i, align 8
  %call69.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %77, i32 noundef 17, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #4
  br i1 %call69.i, label %if.end71.i, label %if.end68.i.amdgpu_atombios_crtc_adjust_pll.exit_crit_edge

if.end68.i.amdgpu_atombios_crtc_adjust_pll.exit_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_crtc_adjust_pll.exit

if.end71.i:                                       ; preds = %if.end68.i
  %78 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %args.i, align 8
  %79 = ptrtoint ptr %frev.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %frev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %80)
  %cond.i = icmp eq i8 %80, 1
  br i1 %cond.i, label %sw.bb73.i, label %sw.default191.i

sw.bb73.i:                                        ; preds = %if.end71.i
  %81 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %crev.i, align 1
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %82, label %sw.default187.i [
    i8 1, label %sw.bb73.i.sw.bb75.i_crit_edge
    i8 2, label %sw.bb73.i.sw.bb75.i_crit_edge70
    i8 3, label %sw.bb98.i
  ]

sw.bb73.i.sw.bb75.i_crit_edge70:                  ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb75.i

sw.bb73.i.sw.bb75.i_crit_edge:                    ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb75.i

sw.bb75.i:                                        ; preds = %sw.bb73.i.sw.bb75.i_crit_edge, %sw.bb73.i.sw.bb75.i_crit_edge70
  %div76.i = udiv i32 %clock9.0.i, 10
  %conv77.i = trunc i32 %div76.i to i16
  %84 = call i16 @llvm.bswap.i16(i16 %conv77.i) #4
  %85 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %args.i, align 8
  %86 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %encoder_id.i, align 4
  %conv79.i = trunc i32 %87 to i8
  %ucTransmitterID.i = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_PARAMETERS, ptr %args.i, i32 0, i32 1
  %88 = ptrtoint ptr %ucTransmitterID.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv79.i, ptr %ucTransmitterID.i, align 2
  %conv80.i = trunc i32 %call7.i to i8
  %ucEncodeMode.i = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_PARAMETERS, ptr %args.i, i32 0, i32 2
  %89 = ptrtoint ptr %ucEncodeMode.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv80.i, ptr %ucEncodeMode.i, align 1
  %90 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ss_enabled, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool82.not.i = icmp eq i8 %91, 0
  br i1 %tobool82.not.i, label %sw.bb75.i.if.end91.i_crit_edge, label %land.lhs.true.i

sw.bb75.i.if.end91.i_crit_edge:                   ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91.i

land.lhs.true.i:                                  ; preds = %sw.bb75.i
  %ss84.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26
  %92 = ptrtoint ptr %ss84.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %ss84.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool86.not.i = icmp eq i16 %93, 0
  br i1 %tobool86.not.i, label %land.lhs.true.i.if.end91.i_crit_edge, label %if.then87.i

land.lhs.true.i.if.end91.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91.i

if.then87.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %42, align 4
  %96 = or i8 %95, 16
  store i8 %96, ptr %42, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then87.i, %land.lhs.true.i.if.end91.i_crit_edge, %sw.bb75.i.if.end91.i_crit_edge
  %97 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mode_info.i, align 8
  %call94.i = call i32 @amdgpu_atom_execute_table(ptr noundef %98, i32 noundef 17, ptr noundef nonnull %args.i) #4
  %99 = ptrtoint ptr %args.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %args.i, align 8
  %101 = call i16 @llvm.bswap.i16(i16 %100) #4
  %conv96.i = zext i16 %101 to i32
  br label %sw.epilog194.i

sw.bb98.i:                                        ; preds = %sw.bb73.i
  %div99.i = udiv i32 %clock9.0.i, 10
  %conv100.i = trunc i32 %div99.i to i16
  %102 = call i16 @llvm.bswap.i16(i16 %conv100.i) #4
  %103 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %args.i, align 8
  %104 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %encoder_id.i, align 4
  %conv103.i = trunc i32 %105 to i8
  %ucTransmitterID104.i = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_INPUT_PARAMETERS_V3, ptr %args.i, i32 0, i32 1
  %106 = ptrtoint ptr %ucTransmitterID104.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv103.i, ptr %ucTransmitterID104.i, align 2
  %conv105.i = trunc i32 %call7.i to i8
  %ucEncodeMode106.i = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_INPUT_PARAMETERS_V3, ptr %args.i, i32 0, i32 2
  %107 = ptrtoint ptr %ucEncodeMode106.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv105.i, ptr %ucEncodeMode106.i, align 1
  %108 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %42, align 4
  %109 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %ss_enabled, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool108.not.i = icmp eq i8 %110, 0
  br i1 %tobool108.not.i, label %sw.bb98.i.if.end120.i_crit_edge, label %land.lhs.true110.i

sw.bb98.i.if.end120.i_crit_edge:                  ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end120.i

land.lhs.true110.i:                               ; preds = %sw.bb98.i
  %ss111.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26
  %111 = ptrtoint ptr %ss111.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %ss111.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool114.not.i = icmp eq i16 %112, 0
  br i1 %tobool114.not.i, label %land.lhs.true110.i.if.end120.i_crit_edge, label %if.then115.i

land.lhs.true110.i.if.end120.i_crit_edge:         ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end120.i

if.then115.i:                                     ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #6
  %113 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 16, ptr %42, align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then115.i, %land.lhs.true110.i.if.end120.i_crit_edge, %sw.bb98.i.if.end120.i_crit_edge
  %114 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call7.i, label %if.else.i [
    i32 0, label %if.end120.i.if.then126.i_crit_edge
    i32 5, label %if.end120.i.if.then126.i_crit_edge71
  ]

if.end120.i.if.then126.i_crit_edge71:             ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then126.i

if.end120.i.if.then126.i_crit_edge:               ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then126.i

if.then126.i:                                     ; preds = %if.end120.i.if.then126.i_crit_edge, %if.end120.i.if.then126.i_crit_edge71
  %115 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %42, align 4
  %117 = or i8 %116, 32
  store i8 %117, ptr %42, align 4
  %div131.i = udiv i32 %dp_clock.0.i, 10
  %conv132.i = trunc i32 %div131.i to i16
  %118 = call i16 @llvm.bswap.i16(i16 %conv132.i) #4
  %119 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %args.i, align 8
  br label %if.end153.i

if.else.i:                                        ; preds = %if.end120.i
  %120 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %devices.i, align 4
  %and135.i = and i32 %121, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %if.else.i.if.end153.i_crit_edge, label %if.then137.i

if.else.i.if.end153.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153.i

if.then137.i:                                     ; preds = %if.else.i
  %enc_priv.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %35, i32 0, i32 12
  %122 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %enc_priv.i, align 4
  %coherent_mode.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %coherent_mode.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %coherent_mode.i, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool138.not.i = icmp eq i8 %125, 0
  br i1 %tobool138.not.i, label %if.then137.i.if.end144.i_crit_edge, label %if.then139.i

if.then137.i.if.end144.i_crit_edge:               ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end144.i

if.then139.i:                                     ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #6
  %126 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %42, align 4
  %128 = or i8 %127, 32
  store i8 %128, ptr %42, align 4
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then139.i, %if.then137.i.if.end144.i_crit_edge
  br i1 %call13.i, label %if.then146.i, label %if.end144.i.if.end153.i_crit_edge

if.end144.i.if.end153.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153.i

if.then146.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #6
  %129 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %42, align 4
  %131 = or i8 %130, 64
  store i8 %131, ptr %42, align 4
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then146.i, %if.end144.i.if.end153.i_crit_edge, %if.else.i.if.end153.i_crit_edge, %if.then126.i
  %call154.i = call zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef %35) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call154.i)
  %cmp156.not.i = icmp eq i16 %call154.i, 0
  br i1 %cmp156.not.i, label %if.end153.i.if.end163.i_crit_edge, label %if.then158.i

if.end153.i.if.end163.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end163.i

if.then158.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #6
  %call159.i = call zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef %35) #4
  %conv160.i = trunc i16 %call159.i to i8
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then158.i, %if.end153.i.if.end163.i_crit_edge
  %conv160.sink.i = phi i8 [ %conv160.i, %if.then158.i ], [ 0, %if.end153.i.if.end163.i_crit_edge ]
  %132 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv160.sink.i, ptr %43, align 1
  %133 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mode_info.i, align 8
  %call166.i = call i32 @amdgpu_atom_execute_table(ptr noundef %134, i32 noundef 17, ptr noundef nonnull %args.i) #4
  %135 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %args.i, align 8
  %137 = call i32 @llvm.bswap.i32(i32 %136) #4
  %138 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool168.not.i = icmp eq i8 %139, 0
  br i1 %tobool168.not.i, label %if.end163.i.if.end177.i_crit_edge, label %if.then169.i

if.end163.i.if.end177.i_crit_edge:                ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end177.i

if.then169.i:                                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #6
  %140 = ptrtoint ptr %pll_flags.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pll_flags.i, align 4
  %or173.i = or i32 %141, 1028
  store i32 %or173.i, ptr %pll_flags.i, align 4
  %conv175.i = zext i8 %139 to i32
  %pll_reference_div176.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 30
  %142 = ptrtoint ptr %pll_reference_div176.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv175.i, ptr %pll_reference_div176.i, align 4
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.then169.i, %if.end163.i.if.end177.i_crit_edge
  %143 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool178.not.i = icmp eq i8 %144, 0
  br i1 %tobool178.not.i, label %if.end177.i.sw.epilog194.i_crit_edge, label %if.then179.i

if.end177.i.sw.epilog194.i_crit_edge:             ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog194.i

if.then179.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #6
  %145 = ptrtoint ptr %pll_flags.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %pll_flags.i, align 4
  %or183.i = or i32 %146, 5120
  store i32 %or183.i, ptr %pll_flags.i, align 4
  %conv185.i = zext i8 %144 to i32
  %pll_post_div.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 31
  %147 = ptrtoint ptr %pll_post_div.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv185.i, ptr %pll_post_div.i, align 8
  br label %sw.epilog194.i

sw.default187.i:                                  ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv74.i = zext i8 %82 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %conv74.i) #4
  br label %amdgpu_atombios_crtc_adjust_pll.exit

sw.default191.i:                                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv72.i = zext i8 %80 to i32
  %148 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %crev.i, align 1
  %conv193.i = zext i8 %149 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %conv72.i, i32 noundef %conv193.i) #4
  br label %amdgpu_atombios_crtc_adjust_pll.exit

sw.epilog194.i:                                   ; preds = %if.then179.i, %if.end177.i.sw.epilog194.i_crit_edge, %if.end91.i
  %adjusted_clock.1.in.i = phi i32 [ %137, %if.then179.i ], [ %137, %if.end177.i.sw.epilog194.i_crit_edge ], [ %conv96.i, %if.end91.i ]
  %adjusted_clock.1.i = mul i32 %adjusted_clock.1.in.i, 10
  br label %amdgpu_atombios_crtc_adjust_pll.exit

amdgpu_atombios_crtc_adjust_pll.exit:             ; preds = %sw.epilog194.i, %sw.default191.i, %sw.default187.i, %if.end68.i.amdgpu_atombios_crtc_adjust_pll.exit_crit_edge
  %retval.0.i = phi i32 [ %adjusted_clock.0.i, %sw.default187.i ], [ %adjusted_clock.1.i, %sw.epilog194.i ], [ %adjusted_clock.0.i, %sw.default191.i ], [ %adjusted_clock.0.i, %if.end68.i.amdgpu_atombios_crtc_adjust_pll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i) #4
  %adjusted_clock = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 28
  %150 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %retval.0.i, ptr %adjusted_clock, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_get_connector_for_encoder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_connector_get_monitor_bpc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atombios_get_asic_ss_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_crtc_set_pll(ptr nocapture noundef %crtc, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  %args.i122 = alloca %union.atom_enable_ss, align 8
  %args.i = alloca %union.atom_enable_ss, align 8
  %pll_clock = alloca i32, align 4
  %ref_div = alloca i32, align 4
  %fb_div = alloca i32, align 4
  %frac_fb_div = alloca i32, align 4
  %post_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %encoder = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 33
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_clock) #4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %6 = ptrtoint ptr %pll_clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pll_clock, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_div) #4
  %7 = ptrtoint ptr %ref_div to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ref_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb_div) #4
  %8 = ptrtoint ptr %fb_div to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fb_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frac_fb_div) #4
  %9 = ptrtoint ptr %frac_fb_div to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %frac_fb_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %post_div) #4
  %10 = ptrtoint ptr %post_div to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %post_div, align 4
  %call8 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call8)
  %cmp = icmp eq i32 %call8, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bpc = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 29
  %11 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bpc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp9 = icmp sgt i32 %12, 8
  br i1 %cmp9, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %adjusted_clock = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 28
  %13 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %adjusted_clock, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clock5.0 = phi i32 [ %14, %if.then ], [ %5, %land.lhs.true.if.end_crit_edge ], [ %5, %entry.if.end_crit_edge ]
  %pll_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 21
  %15 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %switch.selectcmp = icmp eq i32 %16, 1
  %switch.select = select i1 %switch.selectcmp, i32 3404, i32 3484
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %switch.selectcmp136 = icmp eq i32 %16, 0
  %switch.select137 = select i1 %switch.selectcmp136, i32 3324, i32 %switch.select
  %arrayidx18 = getelementptr i8, ptr %1, i32 %switch.select137
  %pll_flags = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 32
  %17 = ptrtoint ptr %pll_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pll_flags, align 4
  %flags = getelementptr inbounds %struct.amdgpu_pll, ptr %arrayidx18, i32 0, i32 18
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %flags, align 4
  %pll_reference_div = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 30
  %20 = ptrtoint ptr %pll_reference_div to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pll_reference_div, align 4
  %reference_div = getelementptr inbounds %struct.amdgpu_pll, ptr %arrayidx18, i32 0, i32 1
  %22 = ptrtoint ptr %reference_div to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %reference_div, align 4
  %pll_post_div = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 31
  %23 = ptrtoint ptr %pll_post_div to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pll_post_div, align 8
  %post_div19 = getelementptr inbounds %struct.amdgpu_pll, ptr %arrayidx18, i32 0, i32 2
  %25 = ptrtoint ptr %post_div19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %post_div19, align 4
  %adjusted_clock20 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 28
  %26 = ptrtoint ptr %adjusted_clock20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %adjusted_clock20, align 4
  call void @amdgpu_pll_compute(ptr noundef %add.ptr.i, ptr noundef %arrayidx18, i32 noundef %27, ptr noundef nonnull %pll_clock, ptr noundef nonnull %fb_div, ptr noundef nonnull %frac_fb_div, ptr noundef nonnull %ref_div, ptr noundef nonnull %post_div) #4
  %28 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pll_id, align 8
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %30 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_id, align 8
  %ss = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i) #4
  %32 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %args.i, i32 0, i32 1
  %33 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %args.i, i32 0, i32 3
  %34 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %args.i, i32 0, i32 5
  %num_crtc.i = getelementptr i8, ptr %1, i32 22400
  %35 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp766.not.i = icmp eq i32 %36, 0
  br i1 %cmp766.not.i, label %if.end.if.end28.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end28.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 79, i32 3, i32 %i.067.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %38, null
  br i1 %tobool10.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %enabled.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %enabled.i, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool14.not.i = icmp eq i8 %40, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.067.i, i32 %31)
  %cmp17.not.i = icmp eq i32 %i.067.i, %31
  %or.cond.i = select i1 %tobool14.not.i, i1 true, i1 %cmp17.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true19.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %pll_id23.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %38, i32 0, i32 21
  %41 = ptrtoint ptr %pll_id23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pll_id23.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %29)
  %cmp24.i = icmp eq i32 %42, %29
  br i1 %cmp24.i, label %land.lhs.true19.i.amdgpu_atombios_crtc_program_ss.exit_crit_edge, label %land.lhs.true19.i.for.inc.i_crit_edge

land.lhs.true19.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true19.i.amdgpu_atombios_crtc_program_ss.exit_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_crtc_program_ss.exit

for.inc.i:                                        ; preds = %land.lhs.true19.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %36
  br i1 %exitcond.not.i, label %for.inc.i.if.end28.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.end28.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i

if.end28.i:                                       ; preds = %for.inc.i.if.end28.i_crit_edge, %if.end.if.end28.i_crit_edge
  %43 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %args.i, align 8
  %type29.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26, i32 2
  %44 = ptrtoint ptr %type29.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type29.i, align 2
  %46 = and i8 %45, 1
  %47 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %32, align 2
  %48 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %29, label %if.end28.i.sw.epilog.i_crit_edge [
    i32 255, label %if.end28.i.amdgpu_atombios_crtc_program_ss.exit_crit_edge
    i32 1, label %if.end28.i.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb41.i
  ]

if.end28.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

if.end28.i.amdgpu_atombios_crtc_program_ss.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_crtc_program_ss.exit

if.end28.i.sw.epilog.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb41.i, %if.end28.i.sw.epilog.sink.split.i_crit_edge
  %.sink69.i = phi i8 [ 8, %sw.bb41.i ], [ 4, %if.end28.i.sw.epilog.sink.split.i_crit_edge ]
  %49 = or i8 %.sink69.i, %46
  %50 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %32, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end28.i.sw.epilog.i_crit_edge
  %amount.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26, i32 8
  %51 = ptrtoint ptr %amount.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %amount.i, align 2
  %53 = call i16 @llvm.bswap.i16(i16 %52) #4
  %54 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %33, align 4
  %step.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26, i32 3
  %55 = ptrtoint ptr %step.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %step.i, align 2
  %57 = call i16 @llvm.bswap.i16(i16 %56) #4
  %58 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %34, align 2
  %mode_info48.i = getelementptr i8, ptr %1, i32 21992
  %59 = ptrtoint ptr %mode_info48.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mode_info48.i, align 8
  %call.i = call i32 @amdgpu_atom_execute_table(ptr noundef %60, i32 noundef 65, ptr noundef nonnull %args.i) #4
  br label %amdgpu_atombios_crtc_program_ss.exit

amdgpu_atombios_crtc_program_ss.exit:             ; preds = %sw.epilog.i, %if.end28.i.amdgpu_atombios_crtc_program_ss.exit_crit_edge, %land.lhs.true19.i.amdgpu_atombios_crtc_program_ss.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i) #4
  %61 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %crtc_id, align 8
  %63 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pll_id, align 8
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %3, i32 0, i32 2
  %65 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %encoder_id, align 4
  %67 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ref_div, align 4
  %69 = ptrtoint ptr %fb_div to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fb_div, align 4
  %71 = ptrtoint ptr %frac_fb_div to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %frac_fb_div, align 4
  %73 = ptrtoint ptr %post_div to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %post_div, align 4
  %bpc24 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 29
  %75 = ptrtoint ptr %bpc24 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bpc24, align 8
  %ss_enabled = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 27
  %77 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ss_enabled, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool = icmp ne i8 %78, 0
  call void @amdgpu_atombios_crtc_program_pll(ptr noundef %crtc, i32 noundef %62, i32 noundef %64, i32 noundef %call8, i32 noundef %66, i32 noundef %clock5.0, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i1 noundef zeroext %tobool, ptr noundef %ss)
  %79 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ss_enabled, align 8, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool27.not = icmp eq i8 %80, 0
  br i1 %tobool27.not, label %amdgpu_atombios_crtc_program_ss.exit.if.end75_crit_edge, label %if.then28

amdgpu_atombios_crtc_program_ss.exit.if.end75_crit_edge: ; preds = %amdgpu_atombios_crtc_program_ss.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.then28:                                        ; preds = %amdgpu_atombios_crtc_program_ss.exit
  %81 = ptrtoint ptr %fb_div to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fb_div, align 4
  %mul = mul i32 %82, 10
  %83 = ptrtoint ptr %frac_fb_div to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %frac_fb_div, align 4
  %add = add i32 %mul, %84
  %85 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ss, align 8
  %conv = zext i16 %86 to i32
  %mul30 = mul i32 %add, %conv
  %percentage_divider = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26, i32 1
  %87 = ptrtoint ptr %percentage_divider to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %percentage_divider, align 2
  %conv32 = zext i16 %88 to i32
  %mul33 = mul nuw nsw i32 %conv32, 100
  %div = udiv i32 %mul30, %mul33
  %div34 = udiv i32 %div, 10
  %conv35 = and i32 %div34, 255
  %amount37 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26, i32 8
  %sub = sub i32 %div, %div34
  %shl = shl i32 %sub, 8
  %and39 = and i32 %shl, 3840
  %or = or i32 %and39, %conv35
  %conv43 = trunc i32 %or to i16
  %89 = ptrtoint ptr %amount37 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv43, ptr %amount37, align 2
  %type = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26, i32 2
  %90 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %type, align 4
  %92 = and i8 %91, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool47.not = icmp eq i8 %92, 0
  %93 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ref_div, align 4
  %rate61 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26, i32 7
  %95 = ptrtoint ptr %rate61 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %rate61, align 4
  %conv62 = zext i16 %96 to i32
  %. = select i1 %tobool47.not, i32 12, i32 13
  %mul58 = shl i32 %div, %.
  %mul59 = mul i32 %mul58, %94
  %mul64 = mul i32 %mul59, %conv62
  %97 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx18, align 4
  %mul66 = mul i32 %98, 3125
  %div67 = udiv i32 %mul66, 100
  %div68 = udiv i32 %mul64, %div67
  %conv70 = trunc i32 %div68 to i16
  %step = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 26, i32 3
  %99 = ptrtoint ptr %step to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv70, ptr %step, align 2
  %100 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pll_id, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i122) #4
  %102 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %args.i122, i32 0, i32 1
  %103 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %args.i122, i32 0, i32 3
  %104 = getelementptr inbounds %struct._ENABLE_SPREAD_SPECTRUM_ON_PPLL, ptr %args.i122, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp.i = icmp eq i16 %86, 0
  br i1 %cmp.i, label %if.then28.amdgpu_atombios_crtc_program_ss.exit133_crit_edge, label %if.end.i

if.then28.amdgpu_atombios_crtc_program_ss.exit133_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_crtc_program_ss.exit133

if.end.i:                                         ; preds = %if.then28
  %105 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %type, align 2
  %107 = and i8 %106, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool4.not.i = icmp eq i8 %107, 0
  br i1 %tobool4.not.i, label %if.end28.i124, label %if.end.i.amdgpu_atombios_crtc_program_ss.exit133_crit_edge

if.end.i.amdgpu_atombios_crtc_program_ss.exit133_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_crtc_program_ss.exit133

if.end28.i124:                                    ; preds = %if.end.i
  %108 = ptrtoint ptr %args.i122 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 4294967296, ptr %args.i122, align 8
  %109 = and i8 %106, 1
  %110 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %102, align 2
  %111 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %101, label %if.end28.i124.sw.epilog.i132_crit_edge [
    i32 255, label %if.end28.i124.amdgpu_atombios_crtc_program_ss.exit133_crit_edge
    i32 1, label %if.end28.i124.sw.epilog.sink.split.i127_crit_edge
    i32 2, label %sw.bb41.i125
  ]

if.end28.i124.sw.epilog.sink.split.i127_crit_edge: ; preds = %if.end28.i124
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i127

if.end28.i124.amdgpu_atombios_crtc_program_ss.exit133_crit_edge: ; preds = %if.end28.i124
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_crtc_program_ss.exit133

if.end28.i124.sw.epilog.i132_crit_edge:           ; preds = %if.end28.i124
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i132

sw.bb41.i125:                                     ; preds = %if.end28.i124
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i127

sw.epilog.sink.split.i127:                        ; preds = %sw.bb41.i125, %if.end28.i124.sw.epilog.sink.split.i127_crit_edge
  %.sink69.i126 = phi i8 [ 8, %sw.bb41.i125 ], [ 4, %if.end28.i124.sw.epilog.sink.split.i127_crit_edge ]
  %112 = or i8 %.sink69.i126, %109
  %113 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %102, align 2
  br label %sw.epilog.i132

sw.epilog.i132:                                   ; preds = %sw.epilog.sink.split.i127, %if.end28.i124.sw.epilog.i132_crit_edge
  %114 = ptrtoint ptr %amount37 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %amount37, align 2
  %116 = call i16 @llvm.bswap.i16(i16 %115) #4
  %117 = ptrtoint ptr %103 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %103, align 4
  %118 = ptrtoint ptr %step to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %step, align 2
  %120 = call i16 @llvm.bswap.i16(i16 %119) #4
  %121 = ptrtoint ptr %104 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %104, align 2
  %mode_info48.i130 = getelementptr i8, ptr %1, i32 21992
  %122 = ptrtoint ptr %mode_info48.i130 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mode_info48.i130, align 8
  %call.i131 = call i32 @amdgpu_atom_execute_table(ptr noundef %123, i32 noundef 65, ptr noundef nonnull %args.i122) #4
  br label %amdgpu_atombios_crtc_program_ss.exit133

amdgpu_atombios_crtc_program_ss.exit133:          ; preds = %sw.epilog.i132, %if.end28.i124.amdgpu_atombios_crtc_program_ss.exit133_crit_edge, %if.end.i.amdgpu_atombios_crtc_program_ss.exit133_crit_edge, %if.then28.amdgpu_atombios_crtc_program_ss.exit133_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i122) #4
  br label %if.end75

if.end75:                                         ; preds = %amdgpu_atombios_crtc_program_ss.exit133, %amdgpu_atombios_crtc_program_ss.exit.if.end75_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %post_div) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frac_fb_div) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb_div) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_div) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_clock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_pll_compute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_crtc.c", i32 510, i32 4}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
