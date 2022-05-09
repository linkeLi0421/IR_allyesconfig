; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.amdgpu_flip_work = type { %struct.delayed_work, %struct.work_struct, ptr, i32, i32, i64, ptr, ptr, i32, ptr, %struct.dma_fence_cb, i8 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.amdgpu_crtc = type { %struct.drm_crtc, i32, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, i32, i32, %struct.dm_irq_params, %struct.amdgpu_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, %struct.hrtimer, i32, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
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
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.96] }
%struct.anon.96 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.100, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.99], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.99 = type { i8, [7 x i8] }
%struct.amdgpu_xgmi = type { i64, i64, i64, i32, i32, %struct.list_head, i8, ptr, i8, i8, ptr }
%struct.amdgpu_gart = type { ptr, ptr, i32, i32, i32, i8, i64 }
%struct.amdgpu_vm_manager = type { [3 x %struct.amdgpu_vmid_mgr], i32, i8, i64, [28 x i32], i64, i32, i32, i32, i32, i64, ptr, [28 x ptr], i32, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.xarray }
%struct.amdgpu_vmid_mgr = type { %struct.mutex, i32, %struct.list_head, [16 x %struct.amdgpu_vmid], %struct.atomic_t }
%struct.amdgpu_vmid = type { %struct.list_head, %struct.amdgpu_sync, ptr, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.amdgpu_vmhub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_mman = type { %struct.ttm_device, i8, ptr, ptr, ptr, i8, %struct.mutex, %struct.drm_sched_entity, %struct.amdgpu_vram_mgr, %struct.amdgpu_gtt_mgr, %struct.amdgpu_preempt_mgr, i64, ptr, i64, ptr, i8, ptr, i64, i64, ptr, i32, ptr, i64, i64, ptr, ptr }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
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
%struct.anon.100 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.111, i32, i32, i32, i32 }
%union.anon.111 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_display_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_mode_set = type { ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.drm_connector_list_iter = type { ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i16, %struct.amdgpu_hpd, %struct.amdgpu_router, ptr, i32, i32, i32 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.amdgpu_router = type { i32, %struct.amdgpu_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_i2c_chan = type { %struct.i2c_adapter, ptr, %struct.i2c_algo_bit_data, %struct.amdgpu_i2c_bus_rec, %struct.drm_dp_aux, i8, %struct.mutex }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.amdgpu_framebuffer = type { %struct.drm_framebuffer, i64, i8, i64 }

@amdgpu_display_crtc_page_flip_target.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&work->flip_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@amdgpu_display_crtc_page_flip_target.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&work->flip_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_display_crtc_page_flip_target.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&work->unpin_work)\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to reserve new abo buffer before flip\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to pin new abo buffer before flip\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%p bind failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get fences for buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"flip queue: crtc already busy\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"crtc:%d[%p], pflip_stat:AMDGPU_FLIP_PENDING, work: %p,\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to reserve new abo in error path\0A\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] AMDGPU Display Connectors\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu_display_print_display_setup\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_display.c\00", [52 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr = internal global ptr @amdgpu_display_print_display_setup._entry, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.14, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016[drm] Connector %d:\0A\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.17 = internal global ptr @amdgpu_display_print_display_setup._entry.15, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.14, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016[drm]   %s\0A\00", [18 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.20 = internal global ptr @amdgpu_display_print_display_setup._entry.18, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.14, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.22 = internal global ptr @amdgpu_display_print_display_setup._entry.21, section ".printk_index", align 4
@hpd_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], [40 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.14, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm]   DDC: 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.25 = internal global ptr @amdgpu_display_print_display_setup._entry.23, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.14, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm]   DDC Router 0x%x/0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.28 = internal global ptr @amdgpu_display_print_display_setup._entry.26, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.14, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm]   Clock/Data Router 0x%x/0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.31 = internal global ptr @amdgpu_display_print_display_setup._entry.29, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.13, ptr @.str.14, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016[drm]   DDC: no ddc bus - possible BIOS bug - please report to xorg-driver-ati@lists.x.org\0A\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.34 = internal global ptr @amdgpu_display_print_display_setup._entry.32, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.13, ptr @.str.14, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016[drm]   Encoders:\0A\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.37 = internal global ptr @amdgpu_display_print_display_setup._entry.35, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.13, ptr @.str.14, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     CRT1: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.40 = internal global ptr @amdgpu_display_print_display_setup._entry.38, section ".printk_index", align 4
@encoder_names = internal constant { [41 x ptr], [60 x i8] } { [41 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143], [60 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.13, ptr @.str.14, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     CRT2: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.43 = internal global ptr @amdgpu_display_print_display_setup._entry.41, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.13, ptr @.str.14, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     LCD1: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.46 = internal global ptr @amdgpu_display_print_display_setup._entry.44, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.13, ptr @.str.14, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP1: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.49 = internal global ptr @amdgpu_display_print_display_setup._entry.47, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.13, ptr @.str.14, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP2: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.52 = internal global ptr @amdgpu_display_print_display_setup._entry.50, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.13, ptr @.str.14, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP3: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.55 = internal global ptr @amdgpu_display_print_display_setup._entry.53, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.13, ptr @.str.14, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP4: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.58 = internal global ptr @amdgpu_display_print_display_setup._entry.56, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.13, ptr @.str.14, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP5: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.61 = internal global ptr @amdgpu_display_print_display_setup._entry.59, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.13, ptr @.str.14, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP6: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.64 = internal global ptr @amdgpu_display_print_display_setup._entry.62, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.13, ptr @.str.14, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016[drm]     TV1: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.67 = internal global ptr @amdgpu_display_print_display_setup._entry.65, section ".printk_index", align 4
@amdgpu_display_print_display_setup._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.13, ptr @.str.14, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016[drm]     CV: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_display_print_display_setup._entry_ptr.70 = internal global ptr @amdgpu_display_print_display_setup._entry.68, section ".printk_index", align 4
@dcc_retile_formats = internal constant { [10 x %struct.drm_format_info], [48 x i8] } { [10 x %struct.drm_format_info] [%struct.drm_format_info { i32 875713112, i8 24, i8 3, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875709016, i8 24, i8 3, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875713089, i8 32, i8 3, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708993, i8 32, i8 3, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708738, i8 32, i8 3, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808669784, i8 30, i8 3, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808665688, i8 30, i8 3, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808669761, i8 30, i8 3, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808665665, i8 30, i8 3, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 909199186, i8 16, i8 3, %union.anon.83 { [4 x i8] c"\02\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@dcc_formats = internal constant { [10 x %struct.drm_format_info], [48 x i8] } { [10 x %struct.drm_format_info] [%struct.drm_format_info { i32 875713112, i8 24, i8 2, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875709016, i8 24, i8 2, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875713089, i8 32, i8 2, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708993, i8 32, i8 2, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 875708738, i8 32, i8 2, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808669784, i8 30, i8 2, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808665688, i8 30, i8 2, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808669761, i8 30, i8 2, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808665665, i8 30, i8 2, %union.anon.83 { [4 x i8] c"\04\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 909199186, i8 16, i8 2, %union.anon.83 { [4 x i8] c"\02\00\00\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@amdgpu_fb_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init gem fb: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unsupported pixel format %p4cc / modifier 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to verify and init gem fb: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Plane 0 and %d have different BOs: %u vs. %u\0A\00", [50 x i8] zeroinitializer }, align 32
@amdgpu_display_framebuffer_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.75 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s %s: GFX9+ requires FB check based on format modifier\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to convert tiling flags 0x%llX to a modifier\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"No GEM object associated to handle 0x%08X, can't create framebuffer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Cannot create framebuffer from imported dma_buf\0A\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_mode_funcs = dso_local constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @amdgpu_display_user_framebuffer_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"coherent\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"load detection\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"underscan\00", [22 x i8] zeroinitializer }, align 32
@amdgpu_underscan_enum_list = internal constant { [3 x %struct.drm_prop_enum_list], [40 x i8] } { [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.151 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.152 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.153 }], [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"underscan hborder\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"underscan vborder\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@amdgpu_audio_enum_list = internal constant { [3 x %struct.drm_prop_enum_list], [40 x i8] } { [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.151 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.152 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.153 }], [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dither\00", [25 x i8] zeroinitializer }, align 32
@amdgpu_dither_enum_list = internal constant { [2 x %struct.drm_prop_enum_list], [16 x i8] } { [2 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.151 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.152 }], [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abm level\00", [22 x i8] zeroinitializer }, align 32
@amdgpu_disp_priority = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_display_resume_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.14, i32 1629, ptr @.str.89, ptr @.str.90 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Failed to pin cursor BO (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu_display_resume_helper\00", [35 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_display_resume_helper._entry_ptr = internal global ptr @amdgpu_display_resume_helper._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.91 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"crtc:%d[%p], pflip_stat:AMDGPU_FLIP_SUBMITTED, work: %p,\0A\00", [38 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to reserve buffer after flip\0A\00", [59 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.95, i32 179, ptr @.str.89, ptr @.str.90 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD1\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD2\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD3\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD4\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD5\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD6\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INTERNAL_LVDS\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_TMDS1\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_TMDS2\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INTERNAL_DAC1\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INTERNAL_DAC2\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_SDVOA\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_SDVOB\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SI170B\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CH7303\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CH7301\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INTERNAL_DVO1\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXTERNAL_SDVOA\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXTERNAL_SDVOB\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TITFP513\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_LVTM1\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1623\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_SI1930\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDMI_INTERNAL\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INTERNAL_KLDSCP_TMDS1\00", [42 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTERNAL_KLDSCP_DVO1\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTERNAL_KLDSCP_DAC1\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTERNAL_KLDSCP_DAC2\00", [43 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SI178\00", [26 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MVPU_FPGA\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INTERNAL_DDI\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1625\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_SI1932\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DP_AN9801\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DP_DP501\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INTERNAL_UNIPHY\00", [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INTERNAL_KLDSCP_LVTMA\00", [42 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INTERNAL_UNIPHY1\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INTERNAL_UNIPHY2\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NUTMEG\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TRAVIS\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INTERNAL_VCE\00", [19 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INTERNAL_UNIPHY3\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_ANX9805\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_AMCLK\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VIRTUAL\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to reserve buffer: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Micro tile mode %llu not supported for scanout\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Swizzle mode with unknown block size: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pitch %d for plane %d is not a multiple of block pitch %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pitch %d for plane %d is less than minimum pitch %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"offset 0x%x for plane %d is not a multiple of block pitch 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"BO size 0x%zx is less than 0x%llx required for plane %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_display_framebuffer_init = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 8, i32 12, i32 16, i32 8, i32 16, i32 12, i32 16], [36 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_display_framebuffer_init.154 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 4, i32 8, i32 0, i32 8, i32 4, i32 8], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.155 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 22, i64 24, i64 32, i64 35]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.158 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 22, i64 24, i64 32, i64 35]
@__sancov_gen_cov_switch_values.159 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 11, i64 12]
@__sancov_gen_cov_switch_values.160 = internal global [11 x i64] [i64 9, i64 32, i64 808665665, i64 808665688, i64 808669761, i64 808669784, i64 875708738, i64 875708993, i64 875709016, i64 875713089, i64 875713112]
@__sancov_gen_cov_switch_values.161 = internal global [11 x i64] [i64 9, i64 32, i64 808665665, i64 808665688, i64 808669761, i64 808669784, i64 875708738, i64 875708993, i64 875709016, i64 875713089, i64 875713112]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 3]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.167 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.169 = internal global [8 x i64] [i64 6, i64 32, i64 13, i64 14, i64 22, i64 24, i64 32, i64 35]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.171 = internal global [6 x i64] [i64 4, i64 16, i64 480, i64 576, i64 720, i64 1080]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 163, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 164, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 184, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 192, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 199, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 206, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 221, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 231, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 241, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 371, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 374, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 375, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 377, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [10 x i8] c"hpd_names\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 351, i32 20 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 379, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 389, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 393, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 403, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 405, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 411, i32 6 }
@___asan_gen_.280 = private unnamed_addr constant [14 x i8] c"encoder_names\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 307, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 413, i32 6 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 415, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 417, i32 6 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 419, i32 6 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 421, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 423, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 425, i32 6 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 427, i32 6 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 429, i32 6 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 431, i32 6 }
@___asan_gen_.343 = private unnamed_addr constant [19 x i8] c"dcc_retile_formats\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 562, i32 37 }
@___asan_gen_.346 = private unnamed_addr constant [12 x i8] c"dcc_formats\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 534, i32 37 }
@___asan_gen_.349 = private unnamed_addr constant [16 x i8] c"amdgpu_fb_funcs\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 486, i32 43 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1079, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1096, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1114, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1133, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1145, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1156, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1187, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1196, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [18 x i8] c"amdgpu_mode_funcs\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1219, i32 36 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1247, i32 51 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1252, i32 51 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1261, i32 7 }
@___asan_gen_.388 = private unnamed_addr constant [27 x i8] c"amdgpu_underscan_enum_list\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1224, i32 40 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1266, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1272, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1279, i32 7 }
@___asan_gen_.400 = private unnamed_addr constant [23 x i8] c"amdgpu_audio_enum_list\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1230, i32 40 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1285, i32 7 }
@___asan_gen_.406 = private unnamed_addr constant [24 x i8] c"amdgpu_dither_enum_list\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1237, i32 40 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1291, i32 9 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1629, i32 6 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 116, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 136, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 179, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 352, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 353, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 354, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 355, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 356, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 357, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 308, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 309, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 310, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 311, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 312, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 313, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 314, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 315, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 316, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 317, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 318, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 319, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 320, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 321, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 322, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 323, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 324, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 325, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 326, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 327, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 328, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 329, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 330, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 331, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 332, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 333, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 334, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 335, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 336, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 337, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 338, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 339, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 340, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 341, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 342, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 343, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 344, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 345, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 346, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 347, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 348, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1044, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 851, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 982, i32 5 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 915, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 921, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 929, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 940, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1225, i32 20 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1226, i32 18 }
@___asan_gen_.613 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.614 = private constant [47 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 1227, i32 20 }
@___asan_gen_.616 = private unnamed_addr constant [45 x i8] c"switch.table.amdgpu_display_framebuffer_init\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [49 x i8] c"switch.table.amdgpu_display_framebuffer_init.154\00", align 1
@llvm.compiler.used = appending global [171 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_display_print_display_setup._entry, ptr @amdgpu_display_print_display_setup._entry.15, ptr @amdgpu_display_print_display_setup._entry.18, ptr @amdgpu_display_print_display_setup._entry.21, ptr @amdgpu_display_print_display_setup._entry.23, ptr @amdgpu_display_print_display_setup._entry.26, ptr @amdgpu_display_print_display_setup._entry.29, ptr @amdgpu_display_print_display_setup._entry.32, ptr @amdgpu_display_print_display_setup._entry.35, ptr @amdgpu_display_print_display_setup._entry.38, ptr @amdgpu_display_print_display_setup._entry.41, ptr @amdgpu_display_print_display_setup._entry.44, ptr @amdgpu_display_print_display_setup._entry.47, ptr @amdgpu_display_print_display_setup._entry.50, ptr @amdgpu_display_print_display_setup._entry.53, ptr @amdgpu_display_print_display_setup._entry.56, ptr @amdgpu_display_print_display_setup._entry.59, ptr @amdgpu_display_print_display_setup._entry.62, ptr @amdgpu_display_print_display_setup._entry.65, ptr @amdgpu_display_print_display_setup._entry.68, ptr @amdgpu_display_print_display_setup._entry_ptr, ptr @amdgpu_display_print_display_setup._entry_ptr.17, ptr @amdgpu_display_print_display_setup._entry_ptr.20, ptr @amdgpu_display_print_display_setup._entry_ptr.22, ptr @amdgpu_display_print_display_setup._entry_ptr.25, ptr @amdgpu_display_print_display_setup._entry_ptr.28, ptr @amdgpu_display_print_display_setup._entry_ptr.31, ptr @amdgpu_display_print_display_setup._entry_ptr.34, ptr @amdgpu_display_print_display_setup._entry_ptr.37, ptr @amdgpu_display_print_display_setup._entry_ptr.40, ptr @amdgpu_display_print_display_setup._entry_ptr.43, ptr @amdgpu_display_print_display_setup._entry_ptr.46, ptr @amdgpu_display_print_display_setup._entry_ptr.49, ptr @amdgpu_display_print_display_setup._entry_ptr.52, ptr @amdgpu_display_print_display_setup._entry_ptr.55, ptr @amdgpu_display_print_display_setup._entry_ptr.58, ptr @amdgpu_display_print_display_setup._entry_ptr.61, ptr @amdgpu_display_print_display_setup._entry_ptr.64, ptr @amdgpu_display_print_display_setup._entry_ptr.67, ptr @amdgpu_display_print_display_setup._entry_ptr.70, ptr @amdgpu_display_resume_helper._entry, ptr @amdgpu_display_resume_helper._entry_ptr, ptr @amdgpu_display_crtc_page_flip_target.__key, ptr @.str, ptr @amdgpu_display_crtc_page_flip_target.__key.1, ptr @.str.2, ptr @amdgpu_display_crtc_page_flip_target.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @hpd_names, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @encoder_names, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @dcc_retile_formats, ptr @dcc_formats, ptr @amdgpu_fb_funcs, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @amdgpu_mode_funcs, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @amdgpu_underscan_enum_list, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @amdgpu_audio_enum_list, ptr @.str.85, ptr @amdgpu_dither_enum_list, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @switch.table.amdgpu_display_framebuffer_init, ptr @switch.table.amdgpu_display_framebuffer_init.154], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_crtc_page_flip_target.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_crtc_page_flip_target.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_crtc_page_flip_target.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encoder_names to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_print_display_setup._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcc_retile_formats to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcc_formats to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_fb_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mode_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_underscan_enum_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_audio_enum_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dither_enum_list to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_display_resume_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_display_framebuffer_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_display_framebuffer_init.154 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_crtc_page_flip_target(ptr noundef %crtc, ptr noundef %fb, ptr noundef %event, i32 noundef %page_flip_flags, i32 noundef %target, ptr nocapture noundef readnone %ctx) local_unnamed_addr #0 align 64 {
entry:
  %tiling_flags = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tiling_flags) #10
  %2 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tiling_flags, align 8, !annotation !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 200) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup146_crit_edge, label %do.body3

entry.cleanup146_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup146

do.body3:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #10
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @amdgpu_display_crtc_page_flip_target.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry11 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @amdgpu_display_flip_work_func, ptr %func, align 4
  %timer = getelementptr inbounds %struct.delayed_work, ptr %call7.i.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @amdgpu_display_crtc_page_flip_target.__key.1) #10
  %unpin_work = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %unpin_work, i32 noundef 0) #10
  %8 = ptrtoint ptr %unpin_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %unpin_work, align 4
  %lockdep_map26 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map26, ptr noundef nonnull @.str.4, ptr noundef nonnull @amdgpu_display_crtc_page_flip_target.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry28 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry28, ptr %entry28, align 8
  %prev.i222 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i222 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry28, ptr %prev.i222, align 4
  %func30 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %func30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @amdgpu_display_unpin_work_func, ptr %func30, align 8
  %event33 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %event33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %event, ptr %event33, align 8
  %adev34 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %adev34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %adev34, align 8
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 1
  %14 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_id, align 8
  %crtc_id35 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %crtc_id35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %crtc_id35, align 4
  %async = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 11
  %17 = trunc i32 %page_flip_flags to i8
  %18 = lshr i8 %17, 1
  %19 = and i8 %18, 1
  %20 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %async, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %21 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %primary, align 4
  %fb37 = getelementptr inbounds %struct.drm_plane, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %fb37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fb37, align 4
  %obj38 = getelementptr inbounds %struct.drm_framebuffer, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %obj38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %obj38, align 4
  %add.ptr41 = getelementptr i8, ptr %26, i32 -72
  %old_abo = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %old_abo to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr41, ptr %old_abo, align 4
  %call43 = tail call ptr @amdgpu_bo_ref(ptr noundef %add.ptr41) #10
  %obj44 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %28 = ptrtoint ptr %obj44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj44, align 4
  %add.ptr48 = getelementptr i8, ptr %29, i32 -72
  %bdev.i = getelementptr i8, ptr %29, i32 352
  %30 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %29, i32 200
  %32 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %33, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %34 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end53
    i32 -512, label %do.body3.if.then52_crit_edge
  ], !prof !297

do.body3.if.then52_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

do.end.i:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 -17736
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.93, ptr noundef %add.ptr48) #14
  br label %if.then52

if.then52:                                        ; preds = %do.end.i, %do.body3.if.then52_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end53:                                         ; preds = %do.body3
  %enable_virtual_display = getelementptr i8, ptr %1, i32 21984
  %37 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %enable_virtual_display, align 8, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool54.not = icmp eq i8 %38, 0
  br i1 %tobool54.not, label %if.then55, label %if.end53.if.end68_crit_edge

if.end53.if.end68_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then55:                                        ; preds = %if.end53
  %flags56 = getelementptr i8, ptr %29, i32 432
  %39 = ptrtoint ptr %flags56 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %flags56, align 8
  %and.i = and i64 %40, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then55.amdgpu_display_supported_domains.exit_crit_edge, label %land.lhs.true.i

if.then55.amdgpu_display_supported_domains.exit_crit_edge: ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_supported_domains.exit

land.lhs.true.i:                                  ; preds = %if.then55
  %call.i = tail call zeroext i1 @amdgpu_bo_support_uswc(i64 noundef %40) #10
  br i1 %call.i, label %land.lhs.true1.i, label %land.lhs.true.i.amdgpu_display_supported_domains.exit_crit_edge

land.lhs.true.i.amdgpu_display_supported_domains.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_supported_domains.exit

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %asic_type.i = getelementptr i8, ptr %1, i32 2360
  %41 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %asic_type.i, align 8
  %call2.i = tail call zeroext i1 @amdgpu_device_asic_has_dc_support(i32 noundef %42) #10
  br i1 %call2.i, label %if.then.i, label %land.lhs.true1.i.amdgpu_display_supported_domains.exit_crit_edge

land.lhs.true1.i.amdgpu_display_supported_domains.exit_crit_edge: ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_supported_domains.exit

if.then.i:                                        ; preds = %land.lhs.true1.i
  %43 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %asic_type.i, align 8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %44, label %if.then.i.amdgpu_display_supported_domains.exit_crit_edge [
    i32 13, label %if.then.i.sw.bb.i_crit_edge
    i32 14, label %if.then.i.sw.bb.i_crit_edge241
    i32 22, label %sw.bb4.i
    i32 24, label %if.then.i.sw.bb12.i_crit_edge
    i32 32, label %if.then.i.sw.bb12.i_crit_edge242
    i32 35, label %if.then.i.sw.bb12.i_crit_edge243
  ]

if.then.i.sw.bb12.i_crit_edge243:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

if.then.i.sw.bb12.i_crit_edge242:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

if.then.i.sw.bb12.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12.i

if.then.i.sw.bb.i_crit_edge241:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.amdgpu_display_supported_domains.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_supported_domains.exit

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge241
  br label %amdgpu_display_supported_domains.exit

sw.bb4.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %apu_flags.i = getelementptr i8, ptr %1, i32 2380
  %46 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %apu_flags.i, align 4
  %48 = and i32 %47, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %49 = icmp eq i32 %48, 0
  %spec.select.i = select i1 %49, i32 4, i32 6
  br label %amdgpu_display_supported_domains.exit

sw.bb12.i:                                        ; preds = %if.then.i.sw.bb12.i_crit_edge, %if.then.i.sw.bb12.i_crit_edge242, %if.then.i.sw.bb12.i_crit_edge243
  br label %amdgpu_display_supported_domains.exit

amdgpu_display_supported_domains.exit:            ; preds = %sw.bb12.i, %sw.bb4.i, %sw.bb.i, %if.then.i.amdgpu_display_supported_domains.exit_crit_edge, %land.lhs.true1.i.amdgpu_display_supported_domains.exit_crit_edge, %land.lhs.true.i.amdgpu_display_supported_domains.exit_crit_edge, %if.then55.amdgpu_display_supported_domains.exit_crit_edge
  %domain.0.i = phi i32 [ 4, %if.then.i.amdgpu_display_supported_domains.exit_crit_edge ], [ 6, %sw.bb12.i ], [ 6, %sw.bb.i ], [ 4, %land.lhs.true1.i.amdgpu_display_supported_domains.exit_crit_edge ], [ 4, %land.lhs.true.i.amdgpu_display_supported_domains.exit_crit_edge ], [ 4, %if.then55.amdgpu_display_supported_domains.exit_crit_edge ], [ %spec.select.i, %sw.bb4.i ]
  %call58 = tail call i32 @amdgpu_bo_pin(ptr noundef %add.ptr48, i32 noundef %domain.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %amdgpu_display_supported_domains.exit.if.end68_crit_edge, label %if.then66, !prof !299

amdgpu_display_supported_domains.exit.if.end68_crit_edge: ; preds = %amdgpu_display_supported_domains.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then66:                                        ; preds = %amdgpu_display_supported_domains.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #10
  br label %unreserve

if.end68:                                         ; preds = %amdgpu_display_supported_domains.exit.if.end68_crit_edge, %if.end53.if.end68_crit_edge
  %call69 = tail call i32 @amdgpu_ttm_alloc_gart(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70.not = icmp eq i32 %call69, 0
  br i1 %cmp70.not, label %if.end78, label %if.then77, !prof !299

if.then77:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef %add.ptr48) #10
  br label %unpin

if.end78:                                         ; preds = %if.end68
  %50 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resv32.i.i, align 8
  %shared_count = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 8
  %shared = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 9
  %call80 = tail call i32 @dma_resv_get_fences(ptr noundef %51, ptr noundef null, ptr noundef %shared_count, ptr noundef %shared) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %if.end89, label %if.then88, !prof !299

if.then88:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #10
  br label %unpin

if.end89:                                         ; preds = %if.end78
  call void @amdgpu_bo_get_tiling_flags(ptr noundef %add.ptr48, ptr noundef nonnull %tiling_flags) #10
  %52 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %53, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr i8, ptr %29, i32 372
  %54 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %29, ptr noundef %55, ptr noundef null) #10
  %56 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %57, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %58 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %59) #10
  call void @ww_mutex_unlock(ptr noundef %59) #10
  %60 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %enable_virtual_display, align 8, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool91.not = icmp eq i8 %61, 0
  br i1 %tobool91.not, label %if.then92, label %if.end89.if.end95_crit_edge

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %call93 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %add.ptr48) #10
  %base94 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %base94 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %call93, ptr %base94, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end89.if.end95_crit_edge
  %call96 = call i64 @drm_crtc_vblank_count(ptr noundef %crtc) #10
  %conv = trunc i64 %call96 to i32
  %sub = sub i32 %target, %conv
  %call97 = call i32 @amdgpu_get_vblank_counter_kms(ptr noundef %crtc) #10
  %add = add i32 %sub, %call97
  %target_vblank = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %target_vblank to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add, ptr %target_vblank, align 8
  %64 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %65, i32 0, i32 28
  %call105 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %pflip_status = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 23
  %66 = ptrtoint ptr %pflip_status to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pflip_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp110.not = icmp eq i32 %67, 0
  br i1 %cmp110.not, label %if.end115, label %if.then112

if.then112:                                       ; preds = %if.end95
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #10
  %68 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %crtc, align 8
  %event_lock114 = getelementptr inbounds %struct.drm_device, ptr %69, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock114, i32 noundef %call105) #10
  %70 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bdev.i, align 8
  %72 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i226 = call i32 @ww_mutex_lock_interruptible(ptr noundef %73, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i226)
  %cmp.i.i227 = icmp eq i32 %call.i.i.i226, -4
  %.ret.0.i.i228 = select i1 %cmp.i.i227, i32 -512, i32 %call.i.i.i226
  %74 = zext i32 %.ret.0.i.i228 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %.ret.0.i.i228, label %do.end.i229 [
    i32 0, label %if.then112.unpin_crit_edge
    i32 -512, label %if.then112.if.then133_crit_edge
  ], !prof !297

if.then112.if.then133_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then133

if.then112.unpin_crit_edge:                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %unpin

do.end.i229:                                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i224 = getelementptr i8, ptr %71, i32 -17736
  %75 = ptrtoint ptr %add.ptr.i.i224 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i.i224, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.93, ptr noundef %add.ptr48) #14
  br label %if.then133

if.end115:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %pflip_status to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %pflip_status, align 8
  %pflip_works = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 22
  %78 = ptrtoint ptr %pflip_works to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %pflip_works, align 4
  %79 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %crtc_id, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %80, ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #10
  %81 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %primary, align 4
  %fb119 = getelementptr inbounds %struct.drm_plane, ptr %82, i32 0, i32 12
  %83 = ptrtoint ptr %fb119 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %fb, ptr %fb119, align 4
  %84 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %crtc, align 8
  %event_lock121 = getelementptr inbounds %struct.drm_device, ptr %85, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock121, i32 noundef %call105) #10
  call void @amdgpu_display_flip_work_func(ptr noundef nonnull %call7.i.i)
  br label %cleanup146

if.then133:                                       ; preds = %do.end.i229, %if.then112.if.then133_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #10
  br label %cleanup

unpin:                                            ; preds = %if.then112.unpin_crit_edge, %if.then88, %if.then77
  %r.0 = phi i32 [ %call69, %if.then77 ], [ %call80, %if.then88 ], [ -16, %if.then112.unpin_crit_edge ]
  %86 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %enable_virtual_display, align 8, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool136.not = icmp eq i8 %87, 0
  br i1 %tobool136.not, label %if.then137, label %unpin.unreserve_crit_edge

unpin.unreserve_crit_edge:                        ; preds = %unpin
  call void @__sanitizer_cov_trace_pc() #12
  br label %unreserve

if.then137:                                       ; preds = %unpin
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_bo_unpin(ptr noundef %add.ptr48) #10
  br label %unreserve

unreserve:                                        ; preds = %if.then137, %unpin.unreserve_crit_edge, %if.then66
  %r.1 = phi i32 [ %r.0, %unpin.unreserve_crit_edge ], [ %r.0, %if.then137 ], [ %call58, %if.then66 ]
  %88 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i233 = getelementptr inbounds %struct.ttm_device, ptr %89, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i233) #10
  %resource.i.i.i234 = getelementptr i8, ptr %29, i32 372
  %90 = ptrtoint ptr %resource.i.i.i234 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %resource.i.i.i234, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %29, ptr noundef %91, ptr noundef null) #10
  %92 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i235 = getelementptr inbounds %struct.ttm_device, ptr %93, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i235) #10
  %94 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %95) #10
  call void @ww_mutex_unlock(ptr noundef %95) #10
  br label %cleanup

cleanup:                                          ; preds = %unreserve, %if.then133, %if.then52
  %r.2 = phi i32 [ %.ret.0.i.i, %if.then52 ], [ %r.1, %unreserve ], [ -16, %if.then133 ]
  call void @amdgpu_bo_unref(ptr noundef %old_abo) #10
  %shared_count140 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 8
  %96 = ptrtoint ptr %shared_count140 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %shared_count140, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp141239.not = icmp eq i32 %97, 0
  br i1 %cmp141239.not, label %cleanup.for.end_crit_edge, label %for.body.lr.ph

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %cleanup
  %shared143 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %dma_fence_put.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0240 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dma_fence_put.exit.for.body_crit_edge ]
  %98 = ptrtoint ptr %shared143 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %shared143, align 4
  %arrayidx144 = getelementptr ptr, ptr %99, i32 %i.0240
  %100 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx144, align 4
  %tobool.not.i237 = icmp eq ptr %101, null
  br i1 %tobool.not.i237, label %for.body.dma_fence_put.exit_crit_edge, label %if.then.i238

for.body.dma_fence_put.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i238:                                     ; preds = %for.body
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %101, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !300
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %102 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !301
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !299

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i238
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !302
  call void @dma_fence_release(ptr noundef %refcount.i) #10, !callees !303
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %for.body.dma_fence_put.exit_crit_edge
  %inc = add nuw i32 %i.0240, 1
  %103 = ptrtoint ptr %shared_count140 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %shared_count140, align 8
  %cmp141 = icmp ult i32 %inc, %104
  br i1 %cmp141, label %dma_fence_put.exit.for.body_crit_edge, label %dma_fence_put.exit.for.end_crit_edge

dma_fence_put.exit.for.end_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

dma_fence_put.exit.for.body_crit_edge:            ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %dma_fence_put.exit.for.end_crit_edge, %cleanup.for.end_crit_edge
  %shared145 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %call7.i.i, i32 0, i32 9
  %105 = ptrtoint ptr %shared145 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %shared145, align 4
  call void @kfree(ptr noundef %106) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup146

cleanup146:                                       ; preds = %for.end, %if.end115, %entry.cleanup146_crit_edge
  %retval.0 = phi i32 [ %r.2, %for.end ], [ 0, %if.end115 ], [ -12, %entry.cleanup146_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tiling_flags) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_display_flip_work_func(ptr noundef %__work) #0 align 64 {
entry:
  %vbl.i = alloca i32, align 4
  %position.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adev4 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %__work, i32 0, i32 2
  %0 = ptrtoint ptr %adev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev4, align 8
  %crtc_id = getelementptr inbounds %struct.amdgpu_flip_work, ptr %__work, i32 0, i32 3
  %2 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_id, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 79, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %shared_count = getelementptr inbounds %struct.amdgpu_flip_work, ptr %__work, i32 0, i32 8
  %6 = ptrtoint ptr %shared_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shared_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp69.not = icmp eq i32 %7, 0
  br i1 %cmp69.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shared = getelementptr inbounds %struct.amdgpu_flip_work, ptr %__work, i32 0, i32 9
  %cb.i = getelementptr inbounds %struct.amdgpu_flip_work, ptr %__work, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shared, align 4
  %arrayidx5 = getelementptr ptr, ptr %9, i32 %i.070
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  %cmp.i62 = icmp eq ptr %11, null
  br i1 %cmp.i62, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx5, align 4
  %call.i63 = tail call i32 @dma_fence_add_callback(ptr noundef nonnull %11, ptr noundef %cb.i, ptr noundef nonnull @amdgpu_display_flip_callback) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !301
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !299

if.end5.i.i.i.i.i.i.for.inc_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %for.inc

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void @dma_fence_release(ptr noundef %refcount.i.i) #10, !callees !303
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.070, 1
  %14 = ptrtoint ptr %shared_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shared_count, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %enabled = getelementptr inbounds %struct.amdgpu_crtc, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled, align 4, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %for.end.do.body17_crit_edge, label %land.lhs.true

for.end.do.body17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

land.lhs.true:                                    ; preds = %for.end
  %18 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbl.i) #10
  %20 = ptrtoint ptr %vbl.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %vbl.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %position.i) #10
  %21 = ptrtoint ptr %position.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %position.i, align 4
  %funcs.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 79, i32 24
  %22 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs.i, align 8
  %page_flip_get_scanoutpos.i = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %page_flip_get_scanoutpos.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page_flip_get_scanoutpos.i, align 4
  %call2.i = call i32 %25(ptr noundef %1, i32 noundef %19, ptr noundef nonnull %vbl.i, ptr noundef nonnull %position.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i64 = icmp eq i32 %call2.i, 0
  %spec.select.i65 = zext i1 %cmp.i64 to i32
  %26 = ptrtoint ptr %position.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %position.i, align 4
  %and.i = and i32 %27, 8191
  %28 = ptrtoint ptr %vbl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vbl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp10.not.i = icmp eq i32 %29, 0
  br i1 %cmp10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %or12.i = or i32 %spec.select.i65, 4
  %and13.i = and i32 %29, 8191
  %shr14.i = lshr i32 %29, 16
  %and15.i = and i32 %shr14.i, 8191
  br label %if.end16.i

if.else.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 13, i32 20
  %30 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv.i = zext i16 %31 to i32
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.then11.i
  %vbl_start.0.i = phi i32 [ %and13.i, %if.then11.i ], [ %conv.i, %if.else.i ]
  %vbl_end.0.i = phi i32 [ %and15.i, %if.then11.i ], [ 0, %if.else.i ]
  %ret.1.i = phi i32 [ %or12.i, %if.then11.i ], [ %spec.select.i65, %if.else.i ]
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 79, i32 3, i32 %19
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %lb_vblank_lead_lines.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %33, i32 0, i32 38
  %34 = ptrtoint ptr %lb_vblank_lead_lines.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lb_vblank_lead_lines.i, align 4
  %sub25.i = sub i32 %vbl_start.0.i, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %sub25.i)
  %cmp27.i = icmp sge i32 %and.i, %sub25.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %vbl_end.0.i)
  %cmp29.not.i = icmp ult i32 %and.i, %vbl_end.0.i
  %or.cond.i = select i1 %cmp27.i, i1 true, i1 %cmp29.not.i
  %or35.i = or i32 %ret.1.i, 2
  %spec.select93.i = select i1 %or.cond.i, i32 %or35.i, i32 %ret.1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %position.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbl.i) #10
  %and = and i32 %spec.select93.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp9 = icmp eq i32 %and, 3
  br i1 %cmp9, label %land.lhs.true10, label %if.end16.i.do.body17_crit_edge

if.end16.i.do.body17_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

land.lhs.true10:                                  ; preds = %if.end16.i
  %target_vblank = getelementptr inbounds %struct.amdgpu_flip_work, ptr %__work, i32 0, i32 4
  %36 = ptrtoint ptr %target_vblank to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %target_vblank, align 8
  %call11 = call i32 @amdgpu_get_vblank_counter_kms(ptr noundef %5) #10
  %sub = sub i32 %37, %call11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12 = icmp sgt i32 %sub, 0
  br i1 %cmp12, label %if.then13, label %land.lhs.true10.do.body17_crit_edge

land.lhs.true10.do.body17_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %__work, i32 noundef %spec.select.i) #10
  br label %cleanup

do.body17:                                        ; preds = %land.lhs.true10.do.body17_crit_edge, %if.end16.i.do.body17_crit_edge, %for.end.do.body17_crit_edge
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 28
  %call21 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79, i32 24
  %41 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs, align 8
  %page_flip = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %page_flip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %page_flip, align 4
  %45 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crtc_id, align 4
  %base26 = getelementptr inbounds %struct.amdgpu_flip_work, ptr %__work, i32 0, i32 5
  %47 = ptrtoint ptr %base26 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %base26, align 8
  %async = getelementptr inbounds %struct.amdgpu_flip_work, ptr %__work, i32 0, i32 11
  %49 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %async, align 4, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool27 = icmp ne i8 %50, 0
  call void %44(ptr noundef %1, i32 noundef %46, i64 noundef %48, i1 noundef zeroext %tobool27) #10
  %pflip_status = getelementptr inbounds %struct.amdgpu_crtc, ptr %5, i32 0, i32 23
  %51 = ptrtoint ptr %pflip_status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %pflip_status, align 8
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 8
  %event_lock29 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock29, i32 noundef %call21) #10
  %crtc_id30 = getelementptr inbounds %struct.amdgpu_crtc, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %crtc_id30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crtc_id30, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.91, i32 noundef %55, ptr noundef %5, ptr noundef %__work) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %if.then13, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_display_unpin_work_func(ptr noundef %__work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %old_abo = getelementptr i8, ptr %__work, i32 72
  %0 = ptrtoint ptr %old_abo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_abo, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv32.i.i, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i1.i.i
  %6 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.then
    i32 -512, label %entry.if.else_crit_edge
  ], !prof !297

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -17736
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.93, ptr noundef %1) #14
  br label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %old_abo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %old_abo, align 4
  tail call void @amdgpu_bo_unpin(ptr noundef %10) #10
  %11 = ptrtoint ptr %old_abo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %old_abo, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %12, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %12, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %14, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %12, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %16, ptr noundef null) #10
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %12, i32 0, i32 4, i32 0, i32 9
  %19 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %20) #10
  tail call void @ww_mutex_unlock(ptr noundef %20) #10
  br label %if.end

if.else:                                          ; preds = %do.end.i, %entry.if.else_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.92) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add.ptr = getelementptr i8, ptr %__work, i32 -100
  tail call void @amdgpu_bo_unref(ptr noundef %old_abo) #10
  %shared = getelementptr i8, ptr %__work, i32 80
  %21 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shared, align 4
  tail call void @kfree(ptr noundef %22) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_bo_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_pin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_supported_domains(ptr nocapture noundef readonly %adev, i64 noundef %bo_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %bo_flags, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @amdgpu_bo_support_uswc(i64 noundef %bo_flags) #10
  br i1 %call, label %land.lhs.true1, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true1:                                   ; preds = %land.lhs.true
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %call2 = tail call zeroext i1 @amdgpu_device_asic_has_dc_support(i32 noundef %1) #10
  br i1 %call2, label %if.then, label %land.lhs.true1.if.end14_crit_edge

land.lhs.true1.if.end14_crit_edge:                ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true1
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %3, label %if.then.if.end14_crit_edge [
    i32 13, label %if.then.sw.bb_crit_edge
    i32 14, label %if.then.sw.bb_crit_edge22
    i32 22, label %sw.bb4
    i32 24, label %if.then.sw.bb12_crit_edge
    i32 32, label %if.then.sw.bb12_crit_edge23
    i32 35, label %if.then.sw.bb12_crit_edge24
  ]

if.then.sw.bb12_crit_edge24:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.then.sw.bb12_crit_edge23:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.then.sw.bb12_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.then.sw.bb_crit_edge22:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge22
  br label %if.end14

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 10
  %5 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %apu_flags, align 4
  %7 = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %spec.select = select i1 %8, i32 4, i32 6
  br label %if.end14

sw.bb12:                                          ; preds = %if.then.sw.bb12_crit_edge, %if.then.sw.bb12_crit_edge23, %if.then.sw.bb12_crit_edge24
  br label %if.end14

if.end14:                                         ; preds = %sw.bb12, %sw.bb4, %sw.bb, %if.then.if.end14_crit_edge, %land.lhs.true1.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %domain.0 = phi i32 [ 4, %if.then.if.end14_crit_edge ], [ 6, %sw.bb12 ], [ 6, %sw.bb ], [ 4, %land.lhs.true1.if.end14_crit_edge ], [ 4, %land.lhs.true.if.end14_crit_edge ], [ 4, %entry.if.end14_crit_edge ], [ %spec.select, %sw.bb4 ]
  ret i32 %domain.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_alloc_gart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_get_fences(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_get_tiling_flags(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_vblank_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_get_vblank_counter_kms(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_crtc_set_config(ptr noundef %set, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %set, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc1 = getelementptr inbounds %struct.drm_mode_set, ptr %set, i32 0, i32 1
  %0 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @drm_crtc_helper_set_config(ptr noundef nonnull %set, ptr noundef %ctx) #10
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 20
  %6 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn63 = load ptr, ptr %crtc_list, align 4
  %cmp11.not64 = icmp eq ptr %.pn63, %crtc_list
  br i1 %cmp11.not64, label %land.lhs.true28.critedge.critedge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %.pn66 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn63, %if.end7.for.body_crit_edge ]
  %active.0.off065 = phi i1 [ %spec.select, %for.body.for.body_crit_edge ], [ false, %if.end7.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn66, i32 160
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 8, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp ne i8 %8, 0
  %spec.select = select i1 %tobool12.not, i1 true, i1 %active.0.off065
  %9 = ptrtoint ptr %.pn66 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn66, align 4
  %cmp11.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp11.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %call.i60 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i60, ptr %last_busy.i, align 8
  br i1 %spec.select, label %land.lhs.true, label %for.end.land.lhs.true28.critedge_crit_edge

for.end.land.lhs.true28.critedge_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true28.critedge

land.lhs.true:                                    ; preds = %for.end
  %have_disp_power_ref = getelementptr i8, ptr %3, i32 2784
  %13 = ptrtoint ptr %have_disp_power_ref to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %have_disp_power_ref, align 8, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %have_disp_power_ref to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %have_disp_power_ref, align 8
  br label %cleanup

land.lhs.true28.critedge.critedge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  %call.i60.c = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.c = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i.c to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i60.c, ptr %last_busy.i.c, align 8
  br label %land.lhs.true28.critedge

land.lhs.true28.critedge:                         ; preds = %land.lhs.true28.critedge.critedge, %for.end.land.lhs.true28.critedge_crit_edge
  %have_disp_power_ref29 = getelementptr i8, ptr %3, i32 2784
  %19 = ptrtoint ptr %have_disp_power_ref29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %have_disp_power_ref29, align 8, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not = icmp eq i8 %20, 0
  br i1 %tobool30.not, label %land.lhs.true28.critedge.out_crit_edge, label %if.then31

land.lhs.true28.critedge.out_crit_edge:           ; preds = %land.lhs.true28.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then31:                                        ; preds = %land.lhs.true28.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev5, align 4
  %call.i61 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #10
  %23 = ptrtoint ptr %have_disp_power_ref29 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %have_disp_power_ref29, align 8
  br label %out

out:                                              ; preds = %if.then31, %land.lhs.true28.critedge.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call8, %if.then31 ], [ %call8, %land.lhs.true28.critedge.out_crit_edge ], [ %call8, %land.lhs.true.out_crit_edge ]
  %24 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev5, align 4
  %call.i62 = tail call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then24, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call8, %if.then24 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_helper_set_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_display_print_display_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #10
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !296
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !296
  call void @drm_connector_list_iter_begin(ptr noundef %dev, ptr noundef nonnull %iter) #10
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #14
  %call1297 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #10
  %tobool.not298 = icmp eq ptr %call1297, null
  br i1 %tobool.not298, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %call1300 = phi ptr [ %call1297, %while.body.lr.ph ], [ %call1, %for.end.while.body_crit_edge ]
  %i.0299 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %for.end.while.body_crit_edge ]
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %i.0299) #14
  %name = getelementptr inbounds %struct.drm_connector, ptr %call1300, i32 0, i32 7
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %4) #14
  %hpd = getelementptr inbounds %struct.amdgpu_connector, ptr %call1300, i32 0, i32 11
  %5 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hpd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp.not = icmp eq i32 %6, 255
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %do.end16

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end16:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [6 x ptr], ptr @hpd_names, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %8) #14
  br label %if.end

if.end:                                           ; preds = %do.end16, %while.body.if.end_crit_edge
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %call1300, i32 0, i32 3
  %9 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddc_bus, align 8
  %tobool21.not = icmp eq ptr %10, null
  br i1 %tobool21.not, label %if.else, label %do.end25

do.end25:                                         ; preds = %if.end
  %mask_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %10, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask_clk_reg, align 4
  %mask_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %10, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask_data_reg, align 4
  %a_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %10, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %a_clk_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %a_clk_reg, align 4
  %a_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %10, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %a_data_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %a_data_reg, align 4
  %en_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %10, i32 0, i32 3, i32 9
  %19 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %en_clk_reg, align 4
  %en_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %10, i32 0, i32 3, i32 10
  %21 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %en_data_reg, align 4
  %y_clk_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %10, i32 0, i32 3, i32 11
  %23 = ptrtoint ptr %y_clk_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y_clk_reg, align 4
  %y_data_reg = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %10, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %y_data_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %y_data_reg, align 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #14
  %ddc_valid = getelementptr inbounds %struct.amdgpu_connector, ptr %call1300, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ddc_valid, align 1, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool43.not = icmp eq i8 %28, 0
  br i1 %tobool43.not, label %do.end25.if.end53_crit_edge, label %do.end47

do.end25.if.end53_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.end47:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %ddc_mux_control_pin = getelementptr inbounds %struct.amdgpu_connector, ptr %call1300, i32 0, i32 12, i32 5
  %29 = ptrtoint ptr %ddc_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ddc_mux_control_pin, align 1
  %conv = zext i8 %30 to i32
  %ddc_mux_state = getelementptr inbounds %struct.amdgpu_connector, ptr %call1300, i32 0, i32 12, i32 6
  %31 = ptrtoint ptr %ddc_mux_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ddc_mux_state, align 4
  %conv51 = zext i8 %32 to i32
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv51) #14
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %do.end25.if.end53_crit_edge
  %cd_valid = getelementptr inbounds %struct.amdgpu_connector, ptr %call1300, i32 0, i32 12, i32 7
  %33 = ptrtoint ptr %cd_valid to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cd_valid, align 1, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool55.not = icmp eq i8 %34, 0
  br i1 %tobool55.not, label %if.end53.do.end98_crit_edge, label %do.end59

if.end53.do.end98_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %cd_mux_control_pin = getelementptr inbounds %struct.amdgpu_connector, ptr %call1300, i32 0, i32 12, i32 9
  %35 = ptrtoint ptr %cd_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cd_mux_control_pin, align 1
  %conv62 = zext i8 %36 to i32
  %cd_mux_state = getelementptr inbounds %struct.amdgpu_connector, ptr %call1300, i32 0, i32 12, i32 10
  %37 = ptrtoint ptr %cd_mux_state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cd_mux_state, align 4
  %conv64 = zext i8 %38 to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv62, i32 noundef %conv64) #14
  br label %do.end98

if.else:                                          ; preds = %if.end
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call1300, i32 0, i32 10
  %39 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %connector_type, align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %40, label %if.else.do.end98_crit_edge [
    i32 1, label %if.else.do.end91_crit_edge
    i32 2, label %if.else.do.end91_crit_edge303
    i32 3, label %if.else.do.end91_crit_edge304
    i32 4, label %if.else.do.end91_crit_edge305
    i32 11, label %if.else.do.end91_crit_edge306
    i32 12, label %if.else.do.end91_crit_edge307
  ]

if.else.do.end91_crit_edge307:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

if.else.do.end91_crit_edge306:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

if.else.do.end91_crit_edge305:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

if.else.do.end91_crit_edge304:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

if.else.do.end91_crit_edge303:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

if.else.do.end91_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

if.else.do.end98_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

do.end91:                                         ; preds = %if.else.do.end91_crit_edge, %if.else.do.end91_crit_edge303, %if.else.do.end91_crit_edge304, %if.else.do.end91_crit_edge305, %if.else.do.end91_crit_edge306, %if.else.do.end91_crit_edge307
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #14
  br label %do.end98

do.end98:                                         ; preds = %do.end91, %if.else.do.end98_crit_edge, %do.end59, %if.end53.do.end98_crit_edge
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %42 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn294 = load ptr, ptr %encoder_list, align 4
  %cmp106.not295 = icmp eq ptr %.pn294, %encoder_list
  br i1 %cmp106.not295, label %do.end98.for.end_crit_edge, label %for.body.lr.ph

do.end98.for.end_crit_edge:                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end98
  %devices112 = getelementptr inbounds %struct.amdgpu_connector, ptr %call1300, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn296 = phi ptr [ %.pn294, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %devices111 = getelementptr i8, ptr %.pn296, i32 76
  %43 = ptrtoint ptr %devices111 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %devices111, align 4
  %45 = ptrtoint ptr %devices112 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %devices112, align 4
  %and = and i32 %46, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool113.not = icmp eq i32 %and, 0
  br i1 %tobool113.not, label %for.body.for.inc_crit_edge, label %if.then114

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then114:                                       ; preds = %for.body
  %and115 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.then114.if.end124_crit_edge, label %do.end120

if.then114.if.end124_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

do.end120:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id = getelementptr i8, ptr %.pn296, i32 72
  %47 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %encoder_id, align 4
  %arrayidx122 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx122, align 4
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %50) #14
  br label %if.end124

if.end124:                                        ; preds = %do.end120, %if.then114.if.end124_crit_edge
  %and125 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end135_crit_edge, label %do.end130

if.end124.if.end135_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

do.end130:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id132 = getelementptr i8, ptr %.pn296, i32 72
  %51 = ptrtoint ptr %encoder_id132 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %encoder_id132, align 4
  %arrayidx133 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx133, align 4
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %54) #14
  br label %if.end135

if.end135:                                        ; preds = %do.end130, %if.end124.if.end135_crit_edge
  %and136 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end146_crit_edge, label %do.end141

if.end135.if.end146_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id143 = getelementptr i8, ptr %.pn296, i32 72
  %55 = ptrtoint ptr %encoder_id143 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %encoder_id143, align 4
  %arrayidx144 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx144, align 4
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %58) #14
  br label %if.end146

if.end146:                                        ; preds = %do.end141, %if.end135.if.end146_crit_edge
  %and147 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end146.if.end157_crit_edge, label %do.end152

if.end146.if.end157_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

do.end152:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id154 = getelementptr i8, ptr %.pn296, i32 72
  %59 = ptrtoint ptr %encoder_id154 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %encoder_id154, align 4
  %arrayidx155 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx155, align 4
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %62) #14
  br label %if.end157

if.end157:                                        ; preds = %do.end152, %if.end146.if.end157_crit_edge
  %and158 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end157.if.end168_crit_edge, label %do.end163

if.end157.if.end168_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168

do.end163:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id165 = getelementptr i8, ptr %.pn296, i32 72
  %63 = ptrtoint ptr %encoder_id165 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %encoder_id165, align 4
  %arrayidx166 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx166, align 4
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %66) #14
  br label %if.end168

if.end168:                                        ; preds = %do.end163, %if.end157.if.end168_crit_edge
  %and169 = and i32 %and, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end168.if.end179_crit_edge, label %do.end174

if.end168.if.end179_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

do.end174:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id176 = getelementptr i8, ptr %.pn296, i32 72
  %67 = ptrtoint ptr %encoder_id176 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %encoder_id176, align 4
  %arrayidx177 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx177, align 4
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %70) #14
  br label %if.end179

if.end179:                                        ; preds = %do.end174, %if.end168.if.end179_crit_edge
  %and180 = and i32 %and, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end179.if.end190_crit_edge, label %do.end185

if.end179.if.end190_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

do.end185:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id187 = getelementptr i8, ptr %.pn296, i32 72
  %71 = ptrtoint ptr %encoder_id187 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %encoder_id187, align 4
  %arrayidx188 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx188, align 4
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %74) #14
  br label %if.end190

if.end190:                                        ; preds = %do.end185, %if.end179.if.end190_crit_edge
  %and191 = and i32 %and, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end190.if.end201_crit_edge, label %do.end196

if.end190.if.end201_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

do.end196:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id198 = getelementptr i8, ptr %.pn296, i32 72
  %75 = ptrtoint ptr %encoder_id198 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %encoder_id198, align 4
  %arrayidx199 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx199, align 4
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %78) #14
  br label %if.end201

if.end201:                                        ; preds = %do.end196, %if.end190.if.end201_crit_edge
  %and202 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %if.end201.if.end212_crit_edge, label %do.end207

if.end201.if.end212_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

do.end207:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id209 = getelementptr i8, ptr %.pn296, i32 72
  %79 = ptrtoint ptr %encoder_id209 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %encoder_id209, align 4
  %arrayidx210 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx210, align 4
  %call211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %82) #14
  br label %if.end212

if.end212:                                        ; preds = %do.end207, %if.end201.if.end212_crit_edge
  %and213 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.end212.if.end223_crit_edge, label %do.end218

if.end212.if.end223_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223

do.end218:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id220 = getelementptr i8, ptr %.pn296, i32 72
  %83 = ptrtoint ptr %encoder_id220 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %encoder_id220, align 4
  %arrayidx221 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx221, align 4
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %86) #14
  br label %if.end223

if.end223:                                        ; preds = %do.end218, %if.end212.if.end223_crit_edge
  %and224 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %if.end223.for.inc_crit_edge, label %do.end229

if.end223.for.inc_crit_edge:                      ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end229:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id231 = getelementptr i8, ptr %.pn296, i32 72
  %87 = ptrtoint ptr %encoder_id231 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %encoder_id231, align 4
  %arrayidx232 = getelementptr [41 x ptr], ptr @encoder_names, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx232, align 4
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %90) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end229, %if.end223.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %91 = ptrtoint ptr %.pn296 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn = load ptr, ptr %.pn296, align 4
  %cmp106.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp106.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end98.for.end_crit_edge
  %inc = add i32 %i.0299, 1
  %call1 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_display_ddc_probe(ptr noundef %amdgpu_connector, i1 noundef zeroext %use_aux) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca i8, align 1
  %buf = alloca [8 x i8], align 8
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %out) #10
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %out, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #10
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #10
  %2 = getelementptr inbounds i8, ptr %msgs, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 80, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %7 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %out, ptr %buf1, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 80, ptr %arrayinit.element, align 4
  %flags3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags3, align 2
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %10 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8, ptr %len4, align 4
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %11 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %buf5, align 4
  %ddc_valid = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 12, i32 3
  %12 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ddc_valid, align 1, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_i2c_router_select_ddc_port(ptr noundef %amdgpu_connector) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 3
  %14 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddc_bus, align 8
  %ddc = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %15, i32 0, i32 4, i32 1
  %.sink = select i1 %use_aux, ptr %ddc, ptr %15
  %call11 = call i32 @i2c_transfer(ptr noundef %.sink, ptr noundef nonnull %msgs, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 2
  br i1 %cmp.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 @drm_edid_header_is_valid(ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, 5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.cleanup_crit_edge ], [ %cmp17, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %out) #10
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_i2c_router_select_ddc_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_header_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_bo_support_uswc(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_asic_has_dc_support(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @amdgpu_lookup_format_info(i32 noundef %format, i64 noundef %modifier) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.mask = and i64 %modifier, -72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 144115188075855872, i64 %shr.mask)
  %cmp = icmp eq i64 %shr.mask, 144115188075855872
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %0 = and i64 %modifier, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %format, label %for.cond.8.i [
    i32 875713112, label %if.then2.return_crit_edge
    i32 875709016, label %return.fold.split
    i32 875713089, label %return.fold.split35
    i32 875708993, label %return.fold.split36
    i32 875708738, label %return.fold.split37
    i32 808669784, label %return.fold.split38
    i32 808665688, label %return.fold.split39
    i32 808669761, label %return.fold.split40
    i32 808665665, label %return.fold.split41
  ]

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

for.cond.8.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 909199186, i32 %format)
  %cmp2.9.i = icmp eq i32 %format, 909199186
  %spec.select.i = select i1 %cmp2.9.i, ptr getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_retile_formats, i32 0, i32 9), ptr null
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = and i64 %modifier, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool6.not = icmp eq i64 %2, 0
  br i1 %tobool6.not, label %if.end3.return_crit_edge, label %if.then7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then7:                                         ; preds = %if.end3
  %3 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %format, label %for.cond.8.i32 [
    i32 875713112, label %if.then7.return_crit_edge
    i32 875709016, label %return.fold.split42
    i32 875713089, label %return.fold.split43
    i32 875708993, label %return.fold.split44
    i32 875708738, label %return.fold.split45
    i32 808669784, label %return.fold.split46
    i32 808665688, label %return.fold.split47
    i32 808669761, label %return.fold.split48
    i32 808665665, label %return.fold.split49
  ]

if.then7.return_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

for.cond.8.i32:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 909199186, i32 %format)
  %cmp2.9.i30 = icmp eq i32 %format, 909199186
  %spec.select.i31 = select i1 %cmp2.9.i30, ptr getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_formats, i32 0, i32 9), ptr null
  br label %return

return.fold.split:                                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split35:                              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split36:                              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split37:                              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split38:                              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split39:                              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split40:                              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split41:                              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split42:                              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split43:                              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split44:                              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split45:                              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split46:                              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split47:                              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split48:                              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.fold.split49:                              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %return.fold.split49, %return.fold.split48, %return.fold.split47, %return.fold.split46, %return.fold.split45, %return.fold.split44, %return.fold.split43, %return.fold.split42, %return.fold.split41, %return.fold.split40, %return.fold.split39, %return.fold.split38, %return.fold.split37, %return.fold.split36, %return.fold.split35, %return.fold.split, %for.cond.8.i32, %if.then7.return_crit_edge, %if.end3.return_crit_edge, %for.cond.8.i, %if.then2.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %if.end3.return_crit_edge ], [ @dcc_retile_formats, %if.then2.return_crit_edge ], [ %spec.select.i, %for.cond.8.i ], [ @dcc_formats, %if.then7.return_crit_edge ], [ %spec.select.i31, %for.cond.8.i32 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_retile_formats, i32 0, i32 1), %return.fold.split ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_retile_formats, i32 0, i32 2), %return.fold.split35 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_retile_formats, i32 0, i32 3), %return.fold.split36 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_retile_formats, i32 0, i32 4), %return.fold.split37 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_retile_formats, i32 0, i32 5), %return.fold.split38 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_retile_formats, i32 0, i32 6), %return.fold.split39 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_retile_formats, i32 0, i32 7), %return.fold.split40 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_retile_formats, i32 0, i32 8), %return.fold.split41 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_formats, i32 0, i32 1), %return.fold.split42 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_formats, i32 0, i32 2), %return.fold.split43 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_formats, i32 0, i32 3), %return.fold.split44 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_formats, i32 0, i32 4), %return.fold.split45 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_formats, i32 0, i32 5), %return.fold.split46 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_formats, i32 0, i32 6), %return.fold.split47 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_formats, i32 0, i32 7), %return.fold.split48 ], [ getelementptr inbounds ([10 x %struct.drm_format_info], ptr @dcc_formats, i32 0, i32 8), %return.fold.split49 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_gem_fb_init(ptr noundef %dev, ptr noundef %rfb, ptr noundef %mode_cmd, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %obj1 = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 15
  %0 = ptrtoint ptr %obj1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %obj, ptr %obj1, align 4
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef %rfb, ptr noundef %mode_cmd) #10
  %call = tail call i32 @amdgpu_display_framebuffer_init(ptr noundef %dev, ptr noundef %rfb, ptr noundef %mode_cmd, ptr undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef %rfb, ptr noundef nonnull @amdgpu_fb_funcs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call, %entry.err_crit_edge ], [ %call4, %if.end.err_crit_edge ]
  %tobool8.not = icmp eq ptr %dev, null
  br i1 %tobool8.not, label %err.cond.end_crit_edge, label %cond.true

err.cond.end_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %err.cond.end_crit_edge
  %cond = phi ptr [ %2, %cond.true ], [ null, %err.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 4, ptr noundef nonnull @.str.71, i32 noundef %ret.0) #10
  %3 = ptrtoint ptr %obj1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %obj1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cond.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_framebuffer_init(ptr noundef readonly %dev, ptr noundef %rfb, ptr nocapture noundef readonly %mode_cmd, ptr nocapture readnone %obj) local_unnamed_addr #0 align 64 {
entry:
  %metadata.i.i = alloca [10 x i32], align 4
  %size.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp204 = icmp ugt i8 %3, 1
  br i1 %cmp204, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %handles = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5
  %4 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handles, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0205 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5, i32 %i.0205
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp4.not = icmp eq i32 %7, %5
  br i1 %cmp4.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ null, %if.then.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 4, ptr noundef nonnull @.str.74, i32 noundef %i.0205, i32 noundef %5, i32 noundef %7) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0205, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %tiling_flags = getelementptr inbounds %struct.amdgpu_framebuffer, ptr %rfb, i32 0, i32 1
  %tmz_surface = getelementptr inbounds %struct.amdgpu_framebuffer, ptr %rfb, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %rfb, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %tiling_flags, align 8
  %11 = ptrtoint ptr %tmz_surface to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tmz_surface, align 1
  br label %if.end14

if.end.i:                                         ; preds = %for.end
  %obj.i = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 15
  %12 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %obj.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %13, i32 -72
  %bdev.i.i = getelementptr i8, ptr %13, i32 352
  %14 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev.i.i, align 8
  %resv32.i.i.i = getelementptr i8, ptr %13, i32 200
  %16 = ptrtoint ptr %resv32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resv32.i.i.i, align 8
  %call.i.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %17, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i.i, -4
  %.ret.0.i.i.i = select i1 %cmp.i.i.i, i32 -512, i32 %call.i.i.i.i
  %18 = zext i32 %.ret.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %.ret.0.i.i.i, label %amdgpu_display_get_fb_info.exit [
    i32 0, label %if.end7.i
    i32 -512, label %if.end.i.cleanup_crit_edge
  ], !prof !297

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %tobool8.not.i = icmp eq ptr %tiling_flags, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end10.i_crit_edge, label %if.then9.i

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_bo_get_tiling_flags(ptr noundef %add.ptr.i155, ptr noundef nonnull %tiling_flags) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end10.i_crit_edge
  %tobool11.not.i = icmp eq ptr %tmz_surface, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then12.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i.i = getelementptr i8, ptr %13, i32 432
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %flags.i.i, align 8
  %and.i.i = lshr i64 %20, 10
  %21 = trunc i64 %and.i.i to i8
  %22 = and i8 %21, 1
  %23 = ptrtoint ptr %tmz_surface to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tmz_surface, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end14.i_crit_edge
  %24 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %25, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i.i) #10
  %resource.i.i.i.i = getelementptr i8, ptr %13, i32 372
  %26 = ptrtoint ptr %resource.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resource.i.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %13, ptr noundef %27, ptr noundef null) #10
  %28 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %29, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i.i) #10
  %30 = ptrtoint ptr %resv32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resv32.i.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %31) #10
  tail call void @ww_mutex_unlock(ptr noundef %31) #10
  br label %if.end14

amdgpu_display_get_fb_info.exit:                  ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 -17736
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.93, ptr noundef %add.ptr.i155) #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.144, i32 noundef %.ret.0.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool12.not = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool12.not, label %amdgpu_display_get_fb_info.exit.if.end14_crit_edge, label %amdgpu_display_get_fb_info.exit.cleanup_crit_edge

amdgpu_display_get_fb_info.exit.cleanup_crit_edge: ; preds = %amdgpu_display_get_fb_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

amdgpu_display_get_fb_info.exit.if.end14_crit_edge: ; preds = %amdgpu_display_get_fb_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %amdgpu_display_get_fb_info.exit.if.end14_crit_edge, %if.end14.i, %if.then.i
  %allow_fb_modifiers = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 97
  %34 = ptrtoint ptr %allow_fb_modifiers to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %allow_fb_modifiers, align 4, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool15.not = icmp eq i8 %35, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end14.land.lhs.true71_crit_edge

if.end14.land.lhs.true71_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true71

land.lhs.true:                                    ; preds = %if.end14
  %enable_virtual_display = getelementptr i8, ptr %dev, i32 21984
  %36 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %enable_virtual_display, align 8, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool16.not = icmp eq i8 %37, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then17:                                        ; preds = %land.lhs.true
  %family = getelementptr i8, ptr %dev, i32 2364
  %38 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %39)
  %cmp18 = icmp ugt i32 %39, 140
  br i1 %cmp18, label %land.rhs, label %if.then17.if.end54_crit_edge

if.then17.if.end54_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.rhs:                                         ; preds = %if.then17
  %.b154 = load i1, ptr @amdgpu_display_framebuffer_init.__already_done, align 1
  br i1 %.b154, label %land.rhs.if.end54_crit_edge, label %if.then28, !prof !299

land.rhs.if.end54_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then28:                                        ; preds = %land.rhs
  store i1 true, ptr @amdgpu_display_framebuffer_init.__already_done, align 1
  %dev38 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %40 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev38, align 4
  %call39 = tail call ptr @dev_driver_string(ptr noundef %41) #10
  %42 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev38, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i156 = icmp eq ptr %45, null
  br i1 %tobool.not.i156, label %if.end.i157, label %if.then28.dev_name.exit_crit_edge

if.then28.dev_name.exit_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i157:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i157, %if.then28.dev_name.exit_crit_edge
  %retval.0.i158 = phi ptr [ %47, %if.end.i157 ], [ %45, %if.then28.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1146, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %call39, ptr noundef %retval.0.i158) #10
  br label %if.end54

if.end54:                                         ; preds = %dev_name.exit, %land.rhs.if.end54_crit_edge, %if.then17.if.end54_crit_edge
  %48 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %tiling_flags, align 8
  %and.i = and i64 %49, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp.i = icmp eq i64 %and.i, 0
  br i1 %cmp.i, label %if.end54.if.end66_crit_edge, label %if.end.i159

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.end.i159:                                      ; preds = %if.end54
  %shr2.i = lshr i64 %49, 12
  %and3.i = and i64 %shr2.i, 7
  %trunc.i = trunc i64 %shr2.i to i3
  %50 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.163)
  switch i3 %trunc.i, label %sw.default.i [
    i3 0, label %if.end.i159.if.end66_crit_edge
    i3 3, label %if.end.i159.if.end66_crit_edge239
  ]

if.end.i159.if.end66_crit_edge239:                ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.end.i159.if.end66_crit_edge:                   ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

sw.default.i:                                     ; preds = %if.end.i159
  %51 = ptrtoint ptr %rfb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rfb, align 8
  %tobool.not.i160 = icmp eq ptr %52, null
  br i1 %tobool.not.i160, label %sw.default.i.check_tiling_flags_gfx6.exit_crit_edge, label %cond.true.i

sw.default.i.check_tiling_flags_gfx6.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_tiling_flags_gfx6.exit

cond.true.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev6.i = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev6.i, align 4
  br label %check_tiling_flags_gfx6.exit

check_tiling_flags_gfx6.exit:                     ; preds = %cond.true.i, %sw.default.i.check_tiling_flags_gfx6.exit_crit_edge
  %cond.i = phi ptr [ %54, %cond.true.i ], [ null, %sw.default.i.check_tiling_flags_gfx6.exit_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i, i32 noundef 4, ptr noundef nonnull @.str.145, i64 noundef %and3.i) #10
  br label %cleanup

if.end66:                                         ; preds = %if.end.i159.if.end66_crit_edge, %if.end.i159.if.end66_crit_edge239, %if.end54.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge
  %55 = ptrtoint ptr %allow_fb_modifiers to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr = load i8, ptr %allow_fb_modifiers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool69.not = icmp eq i8 %.pr, 0
  br i1 %tobool69.not, label %if.end66.if.end86_crit_edge, label %if.end66.land.lhs.true71_crit_edge

if.end66.land.lhs.true71_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true71

if.end66.if.end86_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true71:                                  ; preds = %if.end66.land.lhs.true71_crit_edge, %if.end14.land.lhs.true71_crit_edge
  %flags = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 11
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 8
  %and = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool73.not = icmp eq i32 %and, 0
  br i1 %tobool73.not, label %if.then74, label %land.lhs.true71.if.end86_crit_edge

land.lhs.true71.if.end86_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then74:                                        ; preds = %land.lhs.true71
  %58 = ptrtoint ptr %rfb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rfb, align 8
  %60 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tiling_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool.not.i163 = icmp eq i64 %61, 0
  br i1 %tobool.not.i163, label %if.then74.convert_tiling_flags_to_modifier.exit_crit_edge, label %lor.lhs.false.i

if.then74.convert_tiling_flags_to_modifier.exit_crit_edge: ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %convert_tiling_flags_to_modifier.exit

lor.lhs.false.i:                                  ; preds = %if.then74
  %and.i164 = and i64 %61, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i164)
  %tobool2.not.i = icmp eq i64 %and.i164, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.convert_tiling_flags_to_modifier.exit_crit_edge, label %if.else.i

lor.lhs.false.i.convert_tiling_flags_to_modifier.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %convert_tiling_flags_to_modifier.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %conv.i = trunc i64 %and.i164 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv.i)
  %cmp.i165 = icmp ugt i32 %conv.i, 15
  %num_pipes.i = getelementptr i8, ptr %59, i32 33230
  %62 = ptrtoint ptr %num_pipes.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_pipes.i, align 2
  %conv25.i = zext i8 %63 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i.i = icmp eq i8 %63, 0
  %64 = tail call i32 @llvm.ctlz.i32(i32 %conv25.i, i1 true) #10, !range !304
  %sub.i.op.i.i = xor i32 %64, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %65 = trunc i64 %61 to i32
  %66 = lshr i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %66)
  %.not231 = icmp eq i32 %66, 7
  br i1 %.not231, label %if.else.i.if.then77_crit_edge, label %switch.hole_check224

if.else.i.if.then77_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

switch.hole_check224:                             ; preds = %if.else.i
  %switch.maskindex226 = trunc i32 %66 to i8
  %switch.shifted227 = lshr i8 119, %switch.maskindex226
  %67 = and i8 %switch.shifted227, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %switch.lobit228.not = icmp eq i8 %67, 0
  br i1 %switch.lobit228.not, label %switch.hole_check224.if.then77_crit_edge, label %switch.lookup225

switch.hole_check224.if.then77_crit_edge:         ; preds = %switch.hole_check224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

switch.lookup225:                                 ; preds = %switch.hole_check224
  %switch.gep229 = getelementptr inbounds [7 x i32], ptr @switch.table.amdgpu_display_framebuffer_init.154, i32 0, i32 %66
  %68 = ptrtoint ptr %switch.gep229 to i32
  call void @__asan_load4_noabort(i32 %68)
  %switch.load230 = load i32, ptr %switch.gep229, align 4
  %asic_type.i = getelementptr i8, ptr %59, i32 2360
  %69 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %70)
  %cmp36.i = icmp ugt i32 %70, 29
  br i1 %cmp36.i, label %switch.lookup225.if.end44.i_crit_edge, label %if.else39.i

switch.lookup225.if.end44.i_crit_edge:            ; preds = %switch.lookup225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.else39.i:                                      ; preds = %switch.lookup225
  call void @__sanitizer_cov_trace_pc() #12
  %family.i = getelementptr i8, ptr %59, i32 2364
  %71 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %72)
  %cmp40.i = icmp eq i32 %72, 143
  %..i = select i1 %cmp40.i, i32 2, i32 1
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else39.i, %switch.lookup225.if.end44.i_crit_edge
  %version.0.i = phi i32 [ 3, %switch.lookup225.if.end44.i_crit_edge ], [ %..i, %if.else39.i ]
  %and45.i = and i32 %conv.i, 3
  %73 = zext i32 %and45.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %and45.i, label %if.end44.i.sw.epilog59.i_crit_edge [
    i32 0, label %if.end44.i.if.then77_crit_edge
    i32 1, label %sw.bb47.i
    i32 2, label %sw.bb51.i
  ]

if.end44.i.if.then77_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

if.end44.i.sw.epilog59.i_crit_edge:               ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog59.i

sw.bb47.i:                                        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select.i = select i1 %cmp.i165, i32 %version.0.i, i32 1
  br label %sw.epilog59.i

sw.bb51.i:                                        ; preds = %if.end44.i
  br i1 %cmp.i165, label %sw.bb51.i.if.then61.i_crit_edge, label %sw.epilog59.thread613.i

sw.bb51.i.if.then61.i_crit_edge:                  ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i

sw.epilog59.thread613.i:                          ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %format, align 8
  %76 = getelementptr inbounds %struct.drm_format_info, ptr %75, i32 0, i32 3
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %78)
  %cmp55.not.i = icmp eq i8 %78, 4
  %spec.select586.i = select i1 %cmp55.not.i, i32 %version.0.i, i32 1
  br label %if.end264.i

sw.epilog59.i:                                    ; preds = %sw.bb47.i, %if.end44.i.sw.epilog59.i_crit_edge
  %version.1.i = phi i32 [ %version.0.i, %if.end44.i.sw.epilog59.i_crit_edge ], [ %spec.select.i, %sw.bb47.i ]
  br i1 %cmp.i165, label %sw.epilog59.i.if.then61.i_crit_edge, label %sw.epilog59.i.if.end264.i_crit_edge

sw.epilog59.i.if.end264.i_crit_edge:              ; preds = %sw.epilog59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end264.i

sw.epilog59.i.if.then61.i_crit_edge:              ; preds = %sw.epilog59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61.i

if.then61.i:                                      ; preds = %sw.epilog59.i.if.then61.i_crit_edge, %sw.bb51.i.if.then61.i_crit_edge
  %version.1611.i = phi i32 [ %version.1.i, %sw.epilog59.i.if.then61.i_crit_edge ], [ %version.0.i, %sw.bb51.i.if.then61.i_crit_edge ]
  %79 = zext i32 %version.1611.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %version.1611.i, label %if.then61.i.if.end264.i_crit_edge [
    i32 3, label %sw.bb62.i
    i32 2, label %sw.bb110.i
    i32 1, label %sw.bb119.i
  ]

if.then61.i.if.end264.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end264.i

sw.bb62.i:                                        ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = tail call i32 @llvm.smin.i32(i32 %switch.load230, i32 %sub.i.i) #10
  %sub71.i = sub i32 %switch.load230, %80
  %num_pkrs.i = getelementptr i8, ptr %59, i32 33235
  %81 = ptrtoint ptr %num_pkrs.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_pkrs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i.i591.i = icmp eq i8 %82, 0
  %conv99.i = zext i8 %82 to i32
  %83 = tail call i32 @llvm.ctlz.i32(i32 %conv99.i, i1 true) #10, !range !304
  %sub.i.op.i592.i = xor i32 %83, 31
  %sub.i593.i = select i1 %tobool.not.i.i591.i, i32 -1, i32 %sub.i.op.i592.i
  %84 = tail call i32 @llvm.smin.i32(i32 %sub71.i, i32 %sub.i593.i) #10
  br label %if.end264.i

sw.bb110.i:                                       ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = tail call i32 @llvm.smin.i32(i32 %switch.load230, i32 %sub.i.i) #10
  br label %if.end264.i

sw.bb119.i:                                       ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_se.i = getelementptr i8, ptr %59, i32 33233
  %86 = ptrtoint ptr %num_se.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_se.i, align 1
  %conv147.i = zext i8 %87 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i594.i = icmp eq i8 %87, 0
  %88 = tail call i32 @llvm.ctlz.i32(i32 %conv147.i, i1 true) #10, !range !304
  %sub.i.op.i595.i = xor i32 %88, 31
  %sub.i596.i = select i1 %tobool.not.i.i594.i, i32 -1, i32 %sub.i.op.i595.i
  %num_rb_per_se.i = getelementptr i8, ptr %59, i32 33234
  %89 = ptrtoint ptr %num_rb_per_se.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %num_rb_per_se.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i.i597.i = icmp eq i8 %90, 0
  %conv178.i = zext i8 %90 to i32
  %91 = tail call i32 @llvm.ctlz.i32(i32 %conv178.i, i1 true) #10, !range !304
  %sub.i.op.i598.i = xor i32 %91, 31
  %sub.i599.i = select i1 %tobool.not.i.i597.i, i32 -1, i32 %sub.i.op.i598.i
  %add.i = add nsw i32 %sub.i599.i, %sub.i596.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i600.i = icmp eq i8 %87, 0
  %conv211.i = zext i8 %87 to i32
  %92 = tail call i32 @llvm.ctlz.i32(i32 %conv211.i, i1 true) #10, !range !304
  %sub.i.op.i601.i = xor i32 %92, 31
  %sub.i602.i = select i1 %tobool.not.i.i600.i, i32 -1, i32 %sub.i.op.i601.i
  %add215.i = add nsw i32 %sub.i602.i, %sub.i.i
  %93 = tail call i32 @llvm.smin.i32(i32 %switch.load230, i32 %add215.i) #10
  %sub224.i = sub i32 %switch.load230, %93
  %num_banks.i = getelementptr i8, ptr %59, i32 33232
  %94 = ptrtoint ptr %num_banks.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %num_banks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i.i603.i = icmp eq i8 %95, 0
  %conv252.i = zext i8 %95 to i32
  %96 = tail call i32 @llvm.ctlz.i32(i32 %conv252.i, i1 true) #10, !range !304
  %sub.i.op.i604.i = xor i32 %96, 31
  %sub.i605.i = select i1 %tobool.not.i.i603.i, i32 -1, i32 %sub.i.op.i604.i
  %97 = tail call i32 @llvm.smin.i32(i32 %sub224.i, i32 %sub.i605.i) #10
  br label %if.end264.i

if.end264.i:                                      ; preds = %sw.bb119.i, %sw.bb110.i, %sw.bb62.i, %if.then61.i.if.end264.i_crit_edge, %sw.epilog59.i.if.end264.i_crit_edge, %sw.epilog59.thread613.i
  %version.1612.i = phi i32 [ %version.1611.i, %if.then61.i.if.end264.i_crit_edge ], [ 1, %sw.bb119.i ], [ 2, %sw.bb110.i ], [ 3, %sw.bb62.i ], [ %version.1.i, %sw.epilog59.i.if.end264.i_crit_edge ], [ %spec.select586.i, %sw.epilog59.thread613.i ]
  %pipe_xor_bits.0.i = phi i32 [ 0, %if.then61.i.if.end264.i_crit_edge ], [ %93, %sw.bb119.i ], [ %85, %sw.bb110.i ], [ %80, %sw.bb62.i ], [ 0, %sw.epilog59.i.if.end264.i_crit_edge ], [ 0, %sw.epilog59.thread613.i ]
  %bank_xor_bits.0.i = phi i32 [ 0, %if.then61.i.if.end264.i_crit_edge ], [ %97, %sw.bb119.i ], [ 0, %sw.bb110.i ], [ 0, %sw.bb62.i ], [ 0, %sw.epilog59.i.if.end264.i_crit_edge ], [ 0, %sw.epilog59.thread613.i ]
  %packers.0.i = phi i32 [ 0, %if.then61.i.if.end264.i_crit_edge ], [ 0, %sw.bb119.i ], [ 0, %sw.bb110.i ], [ %84, %sw.bb62.i ], [ 0, %sw.epilog59.i.if.end264.i_crit_edge ], [ 0, %sw.epilog59.thread613.i ]
  %rb.0.i = phi i32 [ 0, %if.then61.i.if.end264.i_crit_edge ], [ %add.i, %sw.bb119.i ], [ 0, %sw.bb110.i ], [ 0, %sw.bb62.i ], [ 0, %sw.epilog59.i.if.end264.i_crit_edge ], [ 0, %sw.epilog59.thread613.i ]
  %and267.i = shl i64 %61, 8
  %shl.i = and i64 %and267.i, 7936
  %98 = zext i32 %version.1612.i to i64
  %conv271.i = sext i32 %pipe_xor_bits.0.i to i64
  %shl272.i = shl nsw i64 %conv271.i, 21
  %conv274.i = sext i32 %bank_xor_bits.0.i to i64
  %shl275.i = shl nsw i64 %conv274.i, 24
  %conv277.i = sext i32 %packers.0.i to i64
  %shl278.i = shl nsw i64 %conv277.i, 27
  %or.i = or i64 %shl.i, %98
  %or270.i = or i64 %or.i, %shl272.i
  %or273.i = or i64 %or270.i, %shl275.i
  %or276.i = or i64 %or273.i, %shl278.i
  %or279.i = or i64 %or276.i, 144115188075855872
  %99 = and i32 %65, 536870880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp280.not.i = icmp eq i32 %99, 0
  br i1 %cmp280.not.i, label %if.end264.i.convert_tiling_flags_to_modifier.exit_crit_edge, label %if.then282.i

if.end264.i.convert_tiling_flags_to_modifier.exit_crit_edge: ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %convert_tiling_flags_to_modifier.exit

if.then282.i:                                     ; preds = %if.end264.i
  %100 = and i64 %61, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %100)
  %cmp286.not.i = icmp eq i64 %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %version.1612.i)
  %cmp289.i = icmp ugt i32 %version.1612.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %70)
  %cmp293.i = icmp ugt i32 %70, 22
  br i1 %cmp293.i, label %if.then282.i.lor.end.i_crit_edge, label %lor.rhs.i

if.then282.i.lor.end.i_crit_edge:                 ; preds = %if.then282.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.then282.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %70)
  %cmp296.i = icmp eq i32 %70, 22
  br i1 %cmp296.i, label %land.rhs.i, label %lor.rhs.i.lor.end.i_crit_edge

lor.rhs.i.lor.end.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %external_rev_id.i = getelementptr i8, ptr %59, i32 2372
  %101 = ptrtoint ptr %external_rev_id.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %external_rev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %102)
  %cmp298.i = icmp ugt i32 %102, 128
  %phi.bo.i = select i1 %cmp298.i, i64 1056768, i64 8192
  br label %lor.end.i

lor.end.i:                                        ; preds = %land.rhs.i, %lor.rhs.i.lor.end.i_crit_edge, %if.then282.i.lor.end.i_crit_edge
  %103 = phi i64 [ 1056768, %if.then282.i.lor.end.i_crit_edge ], [ 8192, %lor.rhs.i.lor.end.i_crit_edge ], [ %phi.bo.i, %land.rhs.i ]
  %cond307.i = select i1 %cmp289.i, i32 262144, i32 524288
  %.lobit.i = lshr exact i64 %100, 27
  %shl320.i = select i1 %cmp289.i, i64 131072, i64 0
  %104 = zext i32 %cond307.i to i64
  %shl323.i = select i1 %cmp286.not.i, i64 %104, i64 0
  %or317.i = or i64 %shl320.i, %.lobit.i
  %or321.i = or i64 %or317.i, %shl323.i
  %or324.i = or i64 %or321.i, %or279.i
  %or325.i = or i64 %or324.i, %103
  %105 = shl i32 %65, 3
  %mul.i = and i32 %105, -256
  %offsets.i = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 7
  %106 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %offsets.i, align 8
  %add328.i = add i32 %107, %mul.i
  %arrayidx331.i = getelementptr %struct.drm_framebuffer, ptr %rfb, i32 0, i32 7, i32 1
  %108 = ptrtoint ptr %arrayidx331.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add328.i, ptr %arrayidx331.i, align 4
  %shr333.i = lshr i64 %61, 29
  %109 = trunc i64 %shr333.i to i32
  %110 = and i32 %109, 16383
  %conv336.i = add nuw nsw i32 %110, 1
  %arrayidx338.i = getelementptr %struct.drm_framebuffer, ptr %rfb, i32 0, i32 6, i32 1
  %111 = ptrtoint ptr %arrayidx338.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv336.i, ptr %arrayidx338.i, align 4
  %obj.i167 = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 15
  %112 = ptrtoint ptr %obj.i167 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %obj.i167, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %metadata.i.i) #10
  %114 = call ptr @memset(ptr %metadata.i.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i.i) #10
  %115 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %size.i.i, align 4, !annotation !296
  %add.ptr.i606.i = getelementptr i8, ptr %113, i32 -72
  %bdev.i.i.i = getelementptr i8, ptr %113, i32 352
  %116 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bdev.i.i.i, align 8
  %resv32.i.i.i.i = getelementptr i8, ptr %113, i32 200
  %118 = ptrtoint ptr %resv32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %resv32.i.i.i.i, align 8
  %call.i.i.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %119, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, -4
  %.ret.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 -512, i32 %call.i.i.i.i.i
  %120 = zext i32 %.ret.0.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %.ret.0.i.i.i.i, label %extract_render_dcc_offset.exit.i [
    i32 0, label %if.end4.i.i
    i32 -512, label %lor.end.i.extract_render_dcc_offset.exit.thread.i_crit_edge
  ], !prof !297

lor.end.i.extract_render_dcc_offset.exit.thread.i_crit_edge: ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %extract_render_dcc_offset.exit.thread.i

if.end4.i.i:                                      ; preds = %lor.end.i
  %call5.i.i = call i32 @amdgpu_bo_get_metadata(ptr noundef %add.ptr.i606.i, ptr noundef nonnull %metadata.i.i, i32 noundef 40, ptr noundef nonnull %size.i.i, ptr noundef null) #10
  %121 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %122, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i.i.i) #10
  %resource.i.i.i.i.i = getelementptr i8, ptr %113, i32 372
  %123 = ptrtoint ptr %resource.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %resource.i.i.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %113, ptr noundef %124, ptr noundef null) #10
  %125 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %126, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i.i.i) #10
  %127 = ptrtoint ptr %resv32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %resv32.i.i.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %128) #10
  call void @ww_mutex_unlock(ptr noundef %128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.extract_render_dcc_offset.exit.thread.i_crit_edge

if.end4.i.i.extract_render_dcc_offset.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %extract_render_dcc_offset.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %129 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %130)
  %cmp9.i.i = icmp ult i32 %130, 40
  br i1 %cmp9.i.i, label %if.end8.i.i.extract_render_dcc_offset.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end8.i.i.extract_render_dcc_offset.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %extract_render_dcc_offset.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end8.i.i
  %131 = ptrtoint ptr %metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %metadata.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp10.not.i.i = icmp eq i32 %132, 1
  br i1 %cmp10.not.i.i, label %if.end12.i.i, label %lor.lhs.false.i.i.extract_render_dcc_offset.exit.thread.i_crit_edge

lor.lhs.false.i.i.extract_render_dcc_offset.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %extract_render_dcc_offset.exit.thread.i

if.end12.i.i:                                     ; preds = %lor.lhs.false.i.i
  %family.i.i = getelementptr i8, ptr %59, i32 2364
  %133 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 142, i32 %134)
  %cmp13.i.i = icmp ugt i32 %134, 142
  %arrayidx15.i.i = getelementptr inbounds [10 x i32], ptr %metadata.i.i, i32 0, i32 9
  %135 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx15.i.i, align 4
  %conv.i.i = zext i32 %136 to i64
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 16
  %arrayidx16.i.i = getelementptr inbounds [10 x i32], ptr %metadata.i.i, i32 0, i32 8
  %137 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx16.i.i, align 4
  %and.i.i168 = lshr i32 %138, 16
  %shr.i.i = and i32 %and.i.i168, 65280
  %conv17.i.i = zext i32 %shr.i.i to i64
  %or.i.i = or i64 %shl.i.i, %conv17.i.i
  br label %land.lhs.true344.i

if.else.i.i:                                      ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl20.i.i = shl nuw nsw i64 %conv.i.i, 8
  %arrayidx21.i.i = getelementptr inbounds [10 x i32], ptr %metadata.i.i, i32 0, i32 7
  %139 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx21.i.i, align 4
  %and22.i.i = and i32 %140, 33423360
  %conv23.i.i = zext i32 %and22.i.i to i64
  %shl24.i.i = shl nuw nsw i64 %conv23.i.i, 23
  %or25.i.i = or i64 %shl24.i.i, %shl20.i.i
  br label %land.lhs.true344.i

extract_render_dcc_offset.exit.thread.i:          ; preds = %lor.lhs.false.i.i.extract_render_dcc_offset.exit.thread.i_crit_edge, %if.end8.i.i.extract_render_dcc_offset.exit.thread.i_crit_edge, %if.end4.i.i.extract_render_dcc_offset.exit.thread.i_crit_edge, %lor.end.i.extract_render_dcc_offset.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %metadata.i.i) #10
  br label %if.end445.i

extract_render_dcc_offset.exit.i:                 ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i.i = getelementptr i8, ptr %117, i32 -17736
  %141 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.93, ptr noundef %add.ptr.i606.i) #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.144, i32 noundef %.ret.0.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %metadata.i.i) #10
  br label %if.end445.i

land.lhs.true344.i:                               ; preds = %if.else.i.i, %if.then14.i.i
  %render_dcc_offset.0.ph.i = phi i64 [ %or.i.i, %if.then14.i.i ], [ %or25.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %metadata.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %render_dcc_offset.0.ph.i)
  %cmp345.not.i = icmp eq i64 %render_dcc_offset.0.ph.i, 0
  br i1 %cmp345.not.i, label %land.lhs.true344.i.if.end445.i_crit_edge, label %land.lhs.true347.i

land.lhs.true344.i.if.end445.i_crit_edge:         ; preds = %land.lhs.true344.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end445.i

land.lhs.true347.i:                               ; preds = %land.lhs.true344.i
  %143 = ptrtoint ptr %arrayidx331.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx331.i, align 4
  %conv351.i = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %render_dcc_offset.0.ph.i, i64 %conv351.i)
  %cmp352.not.i = icmp ne i64 %render_dcc_offset.0.ph.i, %conv351.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %render_dcc_offset.0.ph.i)
  %cmp355.i = icmp ult i64 %render_dcc_offset.0.ph.i, 4294967295
  %or.cond.i = and i1 %cmp355.i, %cmp352.not.i
  br i1 %or.cond.i, label %if.then357.i, label %land.lhs.true347.i.if.end445.i_crit_edge

land.lhs.true347.i.if.end445.i_crit_edge:         ; preds = %land.lhs.true347.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end445.i

if.then357.i:                                     ; preds = %land.lhs.true347.i
  %or358.i = or i64 %or325.i, 16384
  %conv359.i = trunc i64 %render_dcc_offset.0.ph.i to i32
  %arrayidx362.i = getelementptr %struct.drm_framebuffer, ptr %rfb, i32 0, i32 7, i32 2
  %145 = ptrtoint ptr %arrayidx362.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %conv359.i, ptr %arrayidx362.i, align 8
  %146 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 142, i32 %147)
  %cmp364.i = icmp ugt i32 %147, 142
  br i1 %cmp364.i, label %if.then366.i, label %if.else387.i

if.then366.i:                                     ; preds = %if.then357.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %149)
  %cmp368.i = icmp ugt i32 %149, 29
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %packers.0.i)
  %cmp371.i = icmp eq i32 %sub.i.i, %packers.0.i
  %or.cond589.i = select i1 %cmp368.i, i1 %cmp371.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp374.i = icmp sgt i32 %sub.i.i, 1
  %or.cond590.i = select i1 %or.cond589.i, i1 %cmp374.i, i1 false
  %extra_pipe.0.i = zext i1 %or.cond590.i to i32
  %add378.i = add nsw i32 %sub.i.i, 16
  %add379.i = add nsw i32 %add378.i, %extra_pipe.0.i
  br label %if.end402.i

if.else387.i:                                     ; preds = %if.then357.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv388.i = sext i32 %rb.0.i to i64
  %shl389.i = shl nsw i64 %conv388.i, 30
  %conv390584.i = zext i32 %sub.i.i to i64
  %shl391.i = shl i64 %conv390584.i, 33
  %or392.i = or i64 %shl389.i, %shl391.i
  %or393.i = or i64 %or392.i, %or358.i
  %add394.i = add i32 %rb.0.i, 18
  br label %if.end402.i

if.end402.i:                                      ; preds = %if.else387.i, %if.then366.i
  %add394.sink.i = phi i32 [ %add394.i, %if.else387.i ], [ %add379.i, %if.then366.i ]
  %modifier.0.i = phi i64 [ %or393.i, %if.else387.i ], [ %or358.i, %if.then366.i ]
  %150 = call i32 @llvm.smax.i32(i32 %add394.sink.i, i32 20) #10
  %151 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %format, align 8
  %153 = getelementptr inbounds %struct.drm_format_info, ptr %152, i32 0, i32 3
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %153, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i.i607.i = icmp eq i8 %155, 0
  %conv427.i = zext i8 %155 to i32
  %156 = call i32 @llvm.ctlz.i32(i32 %conv427.i, i1 true) #10, !range !304
  %sub.i.op.i608.neg.i = add nsw i32 %156, -31
  %sub.i609.neg.i = select i1 %tobool.not.i.i607.i, i32 1, i32 %sub.i.op.i608.neg.i
  %width.i = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 9
  %157 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %width.i, align 8
  %sub431.i = add nuw i32 %150, 1
  %add433.i = add i32 %sub431.i, %sub.i609.neg.i
  %div585.i = lshr i32 %add433.i, 1
  %notmask.i = shl nsw i32 -1, %div585.i
  %sub435.i = xor i32 %notmask.i, -1
  %add436.i = add i32 %158, %sub435.i
  %and441.i = and i32 %add436.i, %notmask.i
  %arrayidx444.i = getelementptr %struct.drm_framebuffer, ptr %rfb, i32 0, i32 6, i32 2
  %159 = ptrtoint ptr %arrayidx444.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %and441.i, ptr %arrayidx444.i, align 8
  br label %if.end445.i

if.end445.i:                                      ; preds = %if.end402.i, %land.lhs.true347.i.if.end445.i_crit_edge, %land.lhs.true344.i.if.end445.i_crit_edge, %extract_render_dcc_offset.exit.i, %extract_render_dcc_offset.exit.thread.i
  %modifier.1.i = phi i64 [ %modifier.0.i, %if.end402.i ], [ %or325.i, %land.lhs.true347.i.if.end445.i_crit_edge ], [ %or325.i, %land.lhs.true344.i.if.end445.i_crit_edge ], [ %or325.i, %extract_render_dcc_offset.exit.thread.i ], [ %or325.i, %extract_render_dcc_offset.exit.i ]
  %160 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %format, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  %call449.i = call ptr @amdgpu_lookup_format_info(i32 noundef %163, i64 noundef %modifier.1.i) #10
  %tobool450.not.i = icmp eq ptr %call449.i, null
  br i1 %tobool450.not.i, label %if.end445.i.if.then77_crit_edge, label %if.end452.i

if.end445.i.if.then77_crit_edge:                  ; preds = %if.end445.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then77

if.end452.i:                                      ; preds = %if.end445.i
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call449.i, ptr %format, align 8
  br label %convert_tiling_flags_to_modifier.exit

convert_tiling_flags_to_modifier.exit:            ; preds = %if.end452.i, %if.end264.i.convert_tiling_flags_to_modifier.exit_crit_edge, %lor.lhs.false.i.convert_tiling_flags_to_modifier.exit_crit_edge, %if.then74.convert_tiling_flags_to_modifier.exit_crit_edge
  %modifier.4.i = phi i64 [ 0, %lor.lhs.false.i.convert_tiling_flags_to_modifier.exit_crit_edge ], [ 0, %if.then74.convert_tiling_flags_to_modifier.exit_crit_edge ], [ %or279.i, %if.end264.i.convert_tiling_flags_to_modifier.exit_crit_edge ], [ %modifier.1.i, %if.end452.i ]
  %modifier475.i = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 8
  %165 = ptrtoint ptr %modifier475.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %modifier.4.i, ptr %modifier475.i, align 8
  %166 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %flags, align 8
  %or477.i = or i32 %167, 2
  store i32 %or477.i, ptr %flags, align 8
  br label %if.end86

if.then77:                                        ; preds = %if.end445.i.if.then77_crit_edge, %if.end44.i.if.then77_crit_edge, %switch.hole_check224.if.then77_crit_edge, %if.else.i.if.then77_crit_edge
  %tobool78.not = icmp eq ptr %dev, null
  br i1 %tobool78.not, label %if.then77.cond.end82_crit_edge, label %cond.true79

if.then77.cond.end82_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end82

cond.true79:                                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %dev80 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %168 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev80, align 4
  br label %cond.end82

cond.end82:                                       ; preds = %cond.true79, %if.then77.cond.end82_crit_edge
  %cond83 = phi ptr [ %169, %cond.true79 ], [ null, %if.then77.cond.end82_crit_edge ]
  %170 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %tiling_flags, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond83, i32 noundef 4, ptr noundef nonnull @.str.76, i64 noundef %171) #10
  br label %cleanup

if.end86:                                         ; preds = %convert_tiling_flags_to_modifier.exit, %land.lhs.true71.if.end86_crit_edge, %if.end66.if.end86_crit_edge
  %172 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %format, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  %call.i = call ptr @drm_format_info(i32 noundef %175) #10
  %modifier3.i = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 8
  %176 = ptrtoint ptr %modifier3.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %modifier3.i, align 8
  %178 = ptrtoint ptr %rfb to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rfb, align 8
  %allow_fb_modifiers.i = getelementptr inbounds %struct.drm_device, ptr %179, i32 0, i32 30, i32 97
  %180 = ptrtoint ptr %allow_fb_modifiers.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %allow_fb_modifiers.i, align 4, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i170 = icmp eq i8 %181, 0
  br i1 %tobool.not.i170, label %if.end86.amdgpu_display_verify_sizes.exit_crit_edge, label %for.cond.preheader.i

if.end86.amdgpu_display_verify_sizes.exit_crit_edge: ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_verify_sizes.exit

for.cond.preheader.i:                             ; preds = %if.end86
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %call.i, i32 0, i32 2
  %182 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp198.not.i = icmp eq i8 %183, 0
  br i1 %cmp198.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %177)
  %cmp6.i = icmp eq i64 %177, 0
  %184 = trunc i64 %177 to i32
  %and11.i = lshr i32 %184, 10
  %185 = and i32 %and11.i, 7
  %186 = getelementptr inbounds %struct.drm_format_info, ptr %call.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %185)
  %.not = icmp eq i32 %185, 7
  %switch.maskindex = trunc i32 %185 to i8
  %switch.shifted = lshr i8 119, %switch.maskindex
  %187 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %switch.lobit.not = icmp eq i8 %187, 0
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.amdgpu_display_framebuffer_init, i32 0, i32 %185
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0199.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i171

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [4 x i8], ptr %186, i32 0, i32 %i.0199.i
  %188 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx.i, align 1
  %div.rhs.trunc.i = zext i8 %189 to i16
  %div193.i = udiv i16 256, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div193.i to i32
  br label %if.end22.i

if.else.i171:                                     ; preds = %for.body.i
  %brmerge = select i1 %.not, i1 true, i1 %switch.lobit.not
  br i1 %brmerge, label %sw.default.i172, label %switch.lookup

sw.default.i172:                                  ; preds = %if.else.i171
  %190 = lshr i32 %184, 8
  %conv10.le.i = and i32 %190, 31
  %191 = ptrtoint ptr %rfb to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rfb, align 8
  %tobool16.not.i = icmp eq ptr %192, null
  br i1 %tobool16.not.i, label %sw.default.i172.cleanup.i_crit_edge, label %cond.true.i173

sw.default.i172.cleanup.i_crit_edge:              ; preds = %sw.default.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

cond.true.i173:                                   ; preds = %sw.default.i172
  call void @__sanitizer_cov_trace_pc() #12
  %dev19.i = getelementptr inbounds %struct.drm_device, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev19.i, align 4
  br label %cleanup.i

switch.lookup:                                    ; preds = %if.else.i171
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %195)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx20.i = getelementptr [4 x i8], ptr %186, i32 0, i32 %i.0199.i
  %196 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i.i.i.i = icmp eq i8 %197, 0
  %conv21.i = zext i8 %197 to i32
  %198 = call i32 @llvm.ctlz.i32(i32 %conv21.i, i1 true) #10, !range !304
  %sub.i.op.i.neg.i.i = add nsw i32 %198, -31
  %sub.i.neg.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.op.i.neg.i.i
  %sub5.i.i = add nsw i32 %sub.i.neg.i.i, %switch.load
  %add.i.i = add nsw i32 %sub5.i.i, 1
  %div13.i.i = lshr i32 %add.i.i, 1
  %sub6.i.i = sub i32 %sub5.i.i, %div13.i.i
  %shl.i.i175 = shl nuw i32 1, %div13.i.i
  %shl7.i.i = shl nuw nsw i32 1, %sub6.i.i
  br label %if.end22.i

cleanup.i:                                        ; preds = %cond.true.i173, %sw.default.i172.cleanup.i_crit_edge
  %cond.i176 = phi ptr [ %194, %cond.true.i173 ], [ null, %sw.default.i172.cleanup.i_crit_edge ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i176, i32 noundef 4, ptr noundef nonnull @.str.146, i32 noundef %conv10.le.i) #10
  br label %cleanup

if.end22.i:                                       ; preds = %switch.lookup, %if.then8.i
  %block_width.2.i = phi i32 [ %div.zext.i, %if.then8.i ], [ %shl.i.i175, %switch.lookup ]
  %block_height.2.i = phi i32 [ 1, %if.then8.i ], [ %shl7.i.i, %switch.lookup ]
  %block_size_log2.3.i = phi i32 [ 8, %if.then8.i ], [ %switch.load, %switch.lookup ]
  %call23.i = call fastcc i32 @amdgpu_display_verify_plane(ptr noundef %rfb, i32 noundef %i.0199.i, ptr noundef %call.i, i32 noundef %block_width.2.i, i32 noundef %block_height.2.i, i32 noundef %block_size_log2.3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %for.inc.i, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i:                                        ; preds = %if.end22.i
  %inc.i = add nuw nsw i32 %i.0199.i, 1
  %199 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %num_planes.i, align 1
  %conv.i177 = zext i8 %200 to i32
  %cmp.i178 = icmp ult i32 %inc.i, %conv.i177
  br i1 %cmp.i178, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %201 = and i64 %177, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %201)
  %tobool29.not.i = icmp eq i64 %201, 0
  br i1 %tobool29.not.i, label %for.end.i.amdgpu_display_verify_sizes.exit_crit_edge, label %if.then30.i

for.end.i.amdgpu_display_verify_sizes.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_verify_sizes.exit

if.then30.i:                                      ; preds = %for.end.i
  %202 = and i64 %177, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %202)
  %tobool33.not.i = icmp eq i64 %202, 0
  br i1 %tobool33.not.i, label %if.else45.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.then30.i
  %trunc.i.i = trunc i64 %177 to i8
  %switch.tableidx = add i8 %trunc.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %203 = icmp ult i8 %switch.tableidx, 3
  %spec.select = select i1 %203, i32 12, i32 0
  %add36.i = add nuw nsw i32 %spec.select, 8
  %204 = getelementptr inbounds %struct.drm_format_info, ptr %call.i, i32 0, i32 3
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %204, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool.not.i.i.i112.i = icmp eq i8 %206, 0
  %conv38.i = zext i8 %206 to i32
  %207 = call i32 @llvm.ctlz.i32(i32 %conv38.i, i1 true) #10, !range !304
  %sub.i.op.i.neg.i113.i = add nsw i32 %207, -31
  %sub.i.neg.i114.i = select i1 %tobool.not.i.i.i112.i, i32 1, i32 %sub.i.op.i.neg.i113.i
  %sub5.i117.i = add nsw i32 %add36.i, %sub.i.neg.i114.i
  %add.i118.i = add nsw i32 %sub5.i117.i, 1
  %div13.i119.i = lshr i32 %add.i118.i, 1
  %sub6.i120.i = sub i32 %sub5.i117.i, %div13.i119.i
  %shl.i121.i = shl nuw i32 1, %div13.i119.i
  %shl7.i122.i = shl nuw nsw i32 1, %sub6.i120.i
  %call39.i = call fastcc i32 @amdgpu_display_verify_plane(ptr noundef %rfb, i32 noundef %i.0.lcssa.i, ptr noundef %call.i, i32 noundef %shl.i121.i, i32 noundef %shl7.i122.i, i32 noundef %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.then34.i.cleanup_crit_edge

if.then34.i.cleanup_crit_edge:                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42.i:                                       ; preds = %if.then34.i
  %inc43.i = add i32 %i.0.lcssa.i, 1
  %208 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.167)
  switch i8 %trunc.i.i, label %if.end42.i.if.end51.i_crit_edge [
    i8 1, label %sw.bb.i127.i
    i8 2, label %if.end42.i.sw.bb11.i133.i_crit_edge
    i8 3, label %if.end42.i.sw.bb11.i133.i_crit_edge240
  ]

if.end42.i.sw.bb11.i133.i_crit_edge240:           ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11.i133.i

if.end42.i.sw.bb11.i133.i_crit_edge:              ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11.i133.i

if.end42.i.if.end51.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

sw.bb.i127.i:                                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr3.i125.i = lshr i64 %177, 30
  %209 = trunc i64 %shr3.i125.i to i32
  %conv5.i126.i = and i32 %209, 7
  %210 = call i32 @llvm.umax.i32(i32 %conv5.i126.i, i32 2) #10
  %211 = add nuw nsw i32 %210, 10
  br label %if.end51.i

sw.bb11.i133.i:                                   ; preds = %if.end42.i.sw.bb11.i133.i_crit_edge, %if.end42.i.sw.bb11.i133.i_crit_edge240
  %212 = trunc i64 %177 to i32
  %213 = lshr i32 %212, 21
  %conv14.i128.i = and i32 %213, 7
  %conv50.i129.i = and i64 %177, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %conv50.i129.i)
  %cmp15.i130.i = icmp eq i64 %conv50.i129.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv14.i128.i)
  %cmp17.i131.i = icmp ugt i32 %conv14.i128.i, 1
  %or.cond.i132.i = and i1 %cmp15.i130.i, %cmp17.i131.i
  br i1 %or.cond.i132.i, label %land.lhs.true19.i140.i, label %sw.bb11.i133.i.if.end.i142.i_crit_edge

sw.bb11.i133.i.if.end.i142.i_crit_edge:           ; preds = %sw.bb11.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i142.i

land.lhs.true19.i140.i:                           ; preds = %sw.bb11.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr20.i134.i = lshr i64 %177, 27
  %and21.i135.i = and i64 %shr20.i134.i, 7
  %conv22.i136.i = zext i32 %conv14.i128.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and21.i135.i, i64 %conv22.i136.i)
  %cmp23.i137.i = icmp eq i64 %and21.i135.i, %conv22.i136.i
  %inc.i138.i = zext i1 %cmp23.i137.i to i32
  %spec.select.i139.i = add nuw nsw i32 %conv14.i128.i, %inc.i138.i
  br label %if.end.i142.i

if.end.i142.i:                                    ; preds = %land.lhs.true19.i140.i, %sw.bb11.i133.i.if.end.i142.i_crit_edge
  %pipes_log2.0.i141.i = phi i32 [ %conv14.i128.i, %sw.bb11.i133.i.if.end.i142.i_crit_edge ], [ %spec.select.i139.i, %land.lhs.true19.i140.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %pipes_log2.0.i141.i)
  %cmp33.i.i = icmp ugt i32 %pipes_log2.0.i141.i, 4
  %add31.i.i = add nuw nsw i32 %pipes_log2.0.i141.i, 8
  %cond38.i.i = select i1 %cmp33.i.i, i32 %add31.i.i, i32 12
  br label %if.end51.i

if.else45.i:                                      ; preds = %if.then30.i
  %214 = and i64 %177, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %214)
  %tobool48.not.i = icmp eq i64 %214, 0
  %trunc.i145.i = trunc i64 %177 to i8
  %215 = zext i8 %trunc.i145.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.168)
  switch i8 %trunc.i145.i, label %if.else45.i.if.end51.i_crit_edge [
    i8 1, label %sw.bb.i148.i
    i8 2, label %if.else45.i.sw.bb11.i154.i_crit_edge
    i8 3, label %if.else45.i.sw.bb11.i154.i_crit_edge241
  ]

if.else45.i.sw.bb11.i154.i_crit_edge241:          ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11.i154.i

if.else45.i.sw.bb11.i154.i_crit_edge:             ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11.i154.i

if.else45.i.if.end51.i_crit_edge:                 ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

sw.bb.i148.i:                                     ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr3.i146.i = lshr i64 %177, 30
  %216 = trunc i64 %shr3.i146.i to i32
  %conv5.i147.i = and i32 %216, 7
  %217 = call i32 @llvm.umax.i32(i32 %conv5.i147.i, i32 2) #10
  %218 = add nuw nsw i32 %217, 10
  br label %if.end51.i

sw.bb11.i154.i:                                   ; preds = %if.else45.i.sw.bb11.i154.i_crit_edge, %if.else45.i.sw.bb11.i154.i_crit_edge241
  %219 = trunc i64 %177 to i32
  %220 = lshr i32 %219, 21
  %conv14.i149.i = and i32 %220, 7
  %conv50.i150.i = and i64 %177, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %conv50.i150.i)
  %cmp15.i151.i = icmp eq i64 %conv50.i150.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv14.i149.i)
  %cmp17.i152.i = icmp ugt i32 %conv14.i149.i, 1
  %or.cond.i153.i = and i1 %cmp15.i151.i, %cmp17.i152.i
  br i1 %or.cond.i153.i, label %land.lhs.true19.i161.i, label %sw.bb11.i154.i.if.end.i166.i_crit_edge

sw.bb11.i154.i.if.end.i166.i_crit_edge:           ; preds = %sw.bb11.i154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i166.i

land.lhs.true19.i161.i:                           ; preds = %sw.bb11.i154.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr20.i155.i = lshr i64 %177, 27
  %and21.i156.i = and i64 %shr20.i155.i, 7
  %conv22.i157.i = zext i32 %conv14.i149.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and21.i156.i, i64 %conv22.i157.i)
  %cmp23.i158.i = icmp eq i64 %and21.i156.i, %conv22.i157.i
  %inc.i159.i = zext i1 %cmp23.i158.i to i32
  %spec.select.i160.i = add nuw nsw i32 %conv14.i149.i, %inc.i159.i
  br label %if.end.i166.i

if.end.i166.i:                                    ; preds = %land.lhs.true19.i161.i, %sw.bb11.i154.i.if.end.i166.i_crit_edge
  %pipes_log2.0.i162.i = phi i32 [ %conv14.i149.i, %sw.bb11.i154.i.if.end.i166.i_crit_edge ], [ %spec.select.i160.i, %land.lhs.true19.i161.i ]
  %spec.select51.i.i = select i1 %tobool48.not.i, i32 0, i32 %pipes_log2.0.i162.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select51.i.i)
  %cmp33.i163.i = icmp ugt i32 %spec.select51.i.i, 4
  %add31.i164.i = add nuw nsw i32 %spec.select51.i.i, 8
  %cond38.i165.i = select i1 %cmp33.i163.i, i32 %add31.i164.i, i32 12
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end.i166.i, %sw.bb.i148.i, %if.else45.i.if.end51.i_crit_edge, %if.end.i142.i, %sw.bb.i127.i, %if.end42.i.if.end51.i_crit_edge
  %i.1.i = phi i32 [ %inc43.i, %if.end42.i.if.end51.i_crit_edge ], [ %inc43.i, %sw.bb.i127.i ], [ %inc43.i, %if.end.i142.i ], [ %i.0.lcssa.i, %if.else45.i.if.end51.i_crit_edge ], [ %i.0.lcssa.i, %sw.bb.i148.i ], [ %i.0.lcssa.i, %if.end.i166.i ]
  %block_size_log2.4.i = phi i32 [ 0, %if.end42.i.if.end51.i_crit_edge ], [ %211, %sw.bb.i127.i ], [ %cond38.i.i, %if.end.i142.i ], [ 0, %if.else45.i.if.end51.i_crit_edge ], [ %218, %sw.bb.i148.i ], [ %cond38.i165.i, %if.end.i166.i ]
  %add52.i = add nuw nsw i32 %block_size_log2.4.i, 8
  %221 = getelementptr inbounds %struct.drm_format_info, ptr %call.i, i32 0, i32 3
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %221, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool.not.i.i.i173.i = icmp eq i8 %223, 0
  %conv54.i = zext i8 %223 to i32
  %224 = call i32 @llvm.ctlz.i32(i32 %conv54.i, i1 true) #10, !range !304
  %sub.i.op.i.neg.i174.i = add nsw i32 %224, -31
  %sub.i.neg.i175.i = select i1 %tobool.not.i.i.i173.i, i32 1, i32 %sub.i.op.i.neg.i174.i
  %sub5.i178.i = add nsw i32 %add52.i, %sub.i.neg.i175.i
  %add.i179.i = add nsw i32 %sub5.i178.i, 1
  %div13.i180.i = lshr i32 %add.i179.i, 1
  %sub6.i181.i = sub i32 %sub5.i178.i, %div13.i180.i
  %shl.i182.i = shl nuw i32 1, %div13.i180.i
  %shl7.i183.i = shl nuw nsw i32 1, %sub6.i181.i
  %call55.i = call fastcc i32 @amdgpu_display_verify_plane(ptr noundef %rfb, i32 noundef %i.1.i, ptr noundef %call.i, i32 noundef %shl.i182.i, i32 noundef %shl7.i183.i, i32 noundef %block_size_log2.4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end51.i.amdgpu_display_verify_sizes.exit_crit_edge, label %if.end51.i.cleanup_crit_edge

if.end51.i.cleanup_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51.i.amdgpu_display_verify_sizes.exit_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_verify_sizes.exit

amdgpu_display_verify_sizes.exit:                 ; preds = %if.end51.i.amdgpu_display_verify_sizes.exit_crit_edge, %for.end.i.amdgpu_display_verify_sizes.exit_crit_edge, %if.end86.amdgpu_display_verify_sizes.exit_crit_edge
  %225 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %format, align 8
  %num_planes94206 = getelementptr inbounds %struct.drm_format_info, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %num_planes94206 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %num_planes94206, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %cmp96208.not = icmp eq i8 %228, 0
  br i1 %cmp96208.not, label %amdgpu_display_verify_sizes.exit.cleanup_crit_edge, label %for.body98.lr.ph

amdgpu_display_verify_sizes.exit.cleanup_crit_edge: ; preds = %amdgpu_display_verify_sizes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body98.lr.ph:                                 ; preds = %amdgpu_display_verify_sizes.exit
  %obj100 = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 15
  br label %for.body98

for.body98:                                       ; preds = %drm_gem_object_get.exit.for.body98_crit_edge, %for.body98.lr.ph
  %i.1209 = phi i32 [ 0, %for.body98.lr.ph ], [ %inc109, %drm_gem_object_get.exit.for.body98_crit_edge ]
  %229 = ptrtoint ptr %obj100 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %obj100, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %230, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %230, i32 1, i32 3, i32 1) #10
  %231 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %230, ptr %230, i32 1, ptr elementtype(i32) %230) #10, !srcloc !305
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.body98.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !306

for.body98.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body98
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %232 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %232)
  %.not.i.i.i.i.i = icmp sgt i32 %232, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !299

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.body98.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.body98.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %230, i32 noundef %.sink.i.i.i.i.i) #10
  br label %drm_gem_object_get.exit

drm_gem_object_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge
  %233 = ptrtoint ptr %obj100 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %obj100, align 4
  %arrayidx107 = getelementptr %struct.drm_framebuffer, ptr %rfb, i32 0, i32 15, i32 %i.1209
  %235 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %234, ptr %arrayidx107, align 4
  %inc109 = add nuw nsw i32 %i.1209, 1
  %236 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %format, align 8
  %num_planes94 = getelementptr inbounds %struct.drm_format_info, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %num_planes94 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %num_planes94, align 1
  %conv95 = zext i8 %239 to i32
  %cmp96 = icmp ult i32 %inc109, %conv95
  br i1 %cmp96, label %drm_gem_object_get.exit.for.body98_crit_edge, label %drm_gem_object_get.exit.cleanup_crit_edge

drm_gem_object_get.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

drm_gem_object_get.exit.for.body98_crit_edge:     ; preds = %drm_gem_object_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body98

cleanup:                                          ; preds = %drm_gem_object_get.exit.cleanup_crit_edge, %amdgpu_display_verify_sizes.exit.cleanup_crit_edge, %if.end51.i.cleanup_crit_edge, %if.then34.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %cleanup.i, %cond.end82, %check_tiling_flags_gfx6.exit, %amdgpu_display_get_fb_info.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %cond.end
  %retval.0 = phi i32 [ -22, %cond.end ], [ -22, %cond.end82 ], [ %call.i.i.i.i, %amdgpu_display_get_fb_info.exit.cleanup_crit_edge ], [ -22, %check_tiling_flags_gfx6.exit ], [ %.ret.0.i.i.i, %if.end.i.cleanup_crit_edge ], [ %call55.i, %if.end51.i.cleanup_crit_edge ], [ %call39.i, %if.then34.i.cleanup_crit_edge ], [ -22, %cleanup.i ], [ 0, %amdgpu_display_verify_sizes.exit.cleanup_crit_edge ], [ 0, %drm_gem_object_get.exit.cleanup_crit_edge ], [ %call23.i, %if.end22.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_gem_fb_verify_and_init(ptr noundef %dev, ptr noundef %rfb, ptr nocapture readnone %file_priv, ptr noundef %mode_cmd, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %obj1 = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 15
  %0 = ptrtoint ptr %obj1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %obj, ptr %obj1, align 4
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef %rfb, ptr noundef %mode_cmd) #10
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %1 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pixel_format, align 4
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 8
  %3 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %modifier, align 8
  %call = tail call zeroext i1 @drm_any_plane_has_format(ptr noundef %dev, i32 noundef %2, i64 noundef %4) #10
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ null, %if.then.cond.end_crit_edge ]
  %7 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %modifier, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 4, ptr noundef nonnull @.str.72, ptr noundef %pixel_format, i64 noundef %8) #10
  br label %err

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @amdgpu_display_framebuffer_init(ptr noundef %dev, ptr noundef %rfb, ptr noundef %mode_cmd, ptr undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef %rfb, ptr noundef nonnull @amdgpu_fb_funcs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end11.err_crit_edge

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %if.end11.err_crit_edge, %if.end.err_crit_edge, %cond.end
  %ret.0 = phi i32 [ %call8, %if.end.err_crit_edge ], [ %call13, %if.end11.err_crit_edge ], [ -22, %cond.end ]
  %tobool17.not = icmp eq ptr %dev, null
  br i1 %tobool17.not, label %err.cond.end21_crit_edge, label %cond.true18

err.cond.end21_crit_edge:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end21

cond.true18:                                      ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev19, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true18, %err.cond.end21_crit_edge
  %cond22 = phi ptr [ %10, %cond.true18 ], [ null, %err.cond.end21_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond22, i32 noundef 4, ptr noundef nonnull @.str.73, i32 noundef %ret.0) #10
  %11 = ptrtoint ptr %obj1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %obj1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end21, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cond.end21 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_any_plane_has_format(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_display_user_framebuffer_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handles = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5
  %0 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handles, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %if.then.cond.end_crit_edge ]
  %4 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handles, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 4, ptr noundef nonnull @.str.77, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %call, i32 432
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags, align 8
  %and.i = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.amdgpu_display_supported_domains.exit_crit_edge, label %land.lhs.true.i

if.end.amdgpu_display_supported_domains.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_supported_domains.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call.i = tail call zeroext i1 @amdgpu_bo_support_uswc(i64 noundef %7) #10
  br i1 %call.i, label %land.lhs.true1.i, label %land.lhs.true.i.amdgpu_display_supported_domains.exit_crit_edge

land.lhs.true.i.amdgpu_display_supported_domains.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_supported_domains.exit

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %asic_type.i = getelementptr i8, ptr %dev, i32 2360
  %8 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_type.i, align 8
  %call2.i = tail call zeroext i1 @amdgpu_device_asic_has_dc_support(i32 noundef %9) #10
  br i1 %call2.i, label %if.then.i, label %land.lhs.true1.i.amdgpu_display_supported_domains.exit_crit_edge

land.lhs.true1.i.amdgpu_display_supported_domains.exit_crit_edge: ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_supported_domains.exit

if.then.i:                                        ; preds = %land.lhs.true1.i
  %10 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asic_type.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %11, label %if.then.i.amdgpu_display_supported_domains.exit_crit_edge [
    i32 13, label %if.then.i.if.end17_crit_edge
    i32 14, label %if.then.i.if.end17_crit_edge89
    i32 22, label %sw.bb4.i
    i32 24, label %if.then.i.if.end17_crit_edge90
    i32 32, label %if.then.i.if.end17_crit_edge91
    i32 35, label %if.then.i.if.end17_crit_edge92
  ]

if.then.i.if.end17_crit_edge92:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then.i.if.end17_crit_edge91:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then.i.if.end17_crit_edge90:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then.i.if.end17_crit_edge89:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then.i.if.end17_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then.i.amdgpu_display_supported_domains.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_display_supported_domains.exit

sw.bb4.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %apu_flags.i = getelementptr i8, ptr %dev, i32 2380
  %13 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %apu_flags.i, align 4
  %15 = and i32 %14, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br label %amdgpu_display_supported_domains.exit

amdgpu_display_supported_domains.exit:            ; preds = %sw.bb4.i, %if.then.i.amdgpu_display_supported_domains.exit_crit_edge, %land.lhs.true1.i.amdgpu_display_supported_domains.exit_crit_edge, %land.lhs.true.i.amdgpu_display_supported_domains.exit_crit_edge, %if.end.amdgpu_display_supported_domains.exit_crit_edge
  %domain.0.i = phi i1 [ true, %if.then.i.amdgpu_display_supported_domains.exit_crit_edge ], [ true, %land.lhs.true1.i.amdgpu_display_supported_domains.exit_crit_edge ], [ true, %land.lhs.true.i.amdgpu_display_supported_domains.exit_crit_edge ], [ true, %if.end.amdgpu_display_supported_domains.exit_crit_edge ], [ %16, %sw.bb4.i ]
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 8
  %17 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %import_attach, align 4
  %tobool7.not = icmp ne ptr %18, null
  %or.cond = select i1 %tobool7.not, i1 %domain.0.i, i1 false
  br i1 %or.cond, label %if.then9, label %amdgpu_display_supported_domains.exit.if.end17_crit_edge

amdgpu_display_supported_domains.exit.if.end17_crit_edge: ; preds = %amdgpu_display_supported_domains.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then9:                                         ; preds = %amdgpu_display_supported_domains.exit
  %tobool10.not = icmp eq ptr %dev, null
  br i1 %tobool10.not, label %if.then9.if.then.i52_crit_edge, label %cond.true11

if.then9.if.then.i52_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i52

cond.true11:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %19 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev12, align 4
  br label %if.then.i52

if.then.i52:                                      ; preds = %cond.true11, %if.then9.if.then.i52_crit_edge
  %cond15 = phi ptr [ %20, %cond.true11 ], [ null, %if.then9.if.then.i52_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond15, i32 noundef 4, ptr noundef nonnull @.str.78) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !301
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !299

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10, !callees !303
  br label %cleanup

if.end17:                                         ; preds = %amdgpu_display_supported_domains.exit.if.end17_crit_edge, %if.then.i.if.end17_crit_edge, %if.then.i.if.end17_crit_edge89, %if.then.i.if.end17_crit_edge90, %if.then.i.if.end17_crit_edge91, %if.then.i.if.end17_crit_edge92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 168) #13
  %cmp19 = icmp eq ptr %call7.i.i, null
  br i1 %cmp19, label %if.then.i57, label %if.end22

if.then.i57:                                      ; preds = %if.end17
  %call.i.i.i.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !301
  %asmresult.i.i.i.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i55)
  %cmp.i.i.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i55, 1
  br i1 %cmp.i.i.i.i.i.i56, label %if.then.i.i.i61, label %if.end5.i.i.i.i.i.i59

if.end5.i.i.i.i.i.i59:                            ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i55)
  %.not.i.i.i.i.i.i58 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i55, 0
  br i1 %.not.i.i.i.i.i.i58, label %if.end5.i.i.i.i.i.i59.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i60, !prof !299

if.end5.i.i.i.i.i.i59.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i60:                          ; preds = %if.end5.i.i.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i61:                                  ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10, !callees !303
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call23 = tail call i32 @amdgpu_display_gem_fb_verify_and_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr undef, ptr noundef %mode_cmd, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then.i77, label %if.then.i67

if.then.i67:                                      ; preds = %if.end22
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %call.i.i.i.i.i.i.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !301
  %asmresult.i.i.i.i.i.i.i.i.i65 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i65)
  %cmp.i.i.i.i.i.i66 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i65, 1
  br i1 %cmp.i.i.i.i.i.i66, label %if.then.i.i.i71, label %if.end5.i.i.i.i.i.i69

if.end5.i.i.i.i.i.i69:                            ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i65)
  %.not.i.i.i.i.i.i68 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i65, 0
  br i1 %.not.i.i.i.i.i.i68, label %if.end5.i.i.i.i.i.i69.drm_gem_object_put.exit72_crit_edge, label %if.then10.i.i.i.i.i.i70, !prof !299

if.end5.i.i.i.i.i.i69.drm_gem_object_put.exit72_crit_edge: ; preds = %if.end5.i.i.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit72

if.then10.i.i.i.i.i.i70:                          ; preds = %if.end5.i.i.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %drm_gem_object_put.exit72

if.then.i.i.i71:                                  ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10, !callees !303
  br label %drm_gem_object_put.exit72

drm_gem_object_put.exit72:                        ; preds = %if.then.i.i.i71, %if.then10.i.i.i.i.i.i70, %if.end5.i.i.i.i.i.i69.drm_gem_object_put.exit72_crit_edge
  %25 = inttoptr i32 %call23 to ptr
  br label %cleanup

if.then.i77:                                      ; preds = %if.end22
  %call.i.i.i.i.i.i.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !301
  %asmresult.i.i.i.i.i.i.i.i.i75 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i75)
  %cmp.i.i.i.i.i.i76 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i75, 1
  br i1 %cmp.i.i.i.i.i.i76, label %if.then.i.i.i81, label %if.end5.i.i.i.i.i.i79

if.end5.i.i.i.i.i.i79:                            ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i75)
  %.not.i.i.i.i.i.i78 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i75, 0
  br i1 %.not.i.i.i.i.i.i78, label %if.end5.i.i.i.i.i.i79.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i80, !prof !299

if.end5.i.i.i.i.i.i79.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i80:                          ; preds = %if.end5.i.i.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i81:                                  ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10, !callees !303
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i81, %if.then10.i.i.i.i.i.i80, %if.end5.i.i.i.i.i.i79.cleanup_crit_edge, %drm_gem_object_put.exit72, %if.then.i.i.i61, %if.then10.i.i.i.i.i.i60, %if.end5.i.i.i.i.i.i59.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %cond.end
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %cond.end ], [ %25, %drm_gem_object_put.exit72 ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i.i ], [ inttoptr (i32 -12 to ptr), %if.end5.i.i.i.i.i.i59.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then10.i.i.i.i.i.i60 ], [ inttoptr (i32 -12 to ptr), %if.then.i.i.i61 ], [ %call7.i.i, %if.end5.i.i.i.i.i.i79.cleanup_crit_edge ], [ %call7.i.i, %if.then10.i.i.i.i.i.i80 ], [ %call7.i.i, %if.then.i.i.i81 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_modeset_create_props(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call1 = tail call ptr @drm_property_create_range(ptr noundef %ddev.i, i32 noundef 0, ptr noundef nonnull @.str.79, i64 noundef 0, i64 noundef 1) #10
  %coherent_mode_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 6
  %0 = ptrtoint ptr %coherent_mode_property to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %coherent_mode_property, align 8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @drm_property_create_range(ptr noundef %ddev.i, i32 noundef 0, ptr noundef nonnull @.str.80, i64 noundef 0, i64 noundef 1) #10
  %load_detect_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 7
  %1 = ptrtoint ptr %load_detect_property to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5, ptr %load_detect_property, align 4
  %tobool9.not = icmp eq ptr %call5, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @drm_mode_create_scaling_mode_property(ptr noundef %ddev.i) #10
  %call15 = tail call ptr @drm_property_create_enum(ptr noundef %ddev.i, i32 noundef 0, ptr noundef nonnull @.str.81, ptr noundef nonnull @amdgpu_underscan_enum_list, i32 noundef 3) #10
  %underscan_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 8
  %2 = ptrtoint ptr %underscan_property to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call15, ptr %underscan_property, align 8
  %call18 = tail call ptr @drm_property_create_range(ptr noundef %ddev.i, i32 noundef 0, ptr noundef nonnull @.str.82, i64 noundef 0, i64 noundef 128) #10
  %underscan_hborder_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 9
  %3 = ptrtoint ptr %underscan_hborder_property to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call18, ptr %underscan_hborder_property, align 4
  %tobool22.not = icmp eq ptr %call18, null
  br i1 %tobool22.not, label %if.end11.cleanup_crit_edge, label %if.end24

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  %call26 = tail call ptr @drm_property_create_range(ptr noundef %ddev.i, i32 noundef 0, ptr noundef nonnull @.str.83, i64 noundef 0, i64 noundef 128) #10
  %underscan_vborder_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 10
  %4 = ptrtoint ptr %underscan_vborder_property to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call26, ptr %underscan_vborder_property, align 8
  %tobool30.not = icmp eq ptr %call26, null
  br i1 %tobool30.not, label %if.end24.cleanup_crit_edge, label %if.end32

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %call34 = tail call ptr @drm_property_create_enum(ptr noundef %ddev.i, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @amdgpu_audio_enum_list, i32 noundef 3) #10
  %audio_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 11
  %5 = ptrtoint ptr %audio_property to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call34, ptr %audio_property, align 4
  %call37 = tail call ptr @drm_property_create_enum(ptr noundef %ddev.i, i32 noundef 0, ptr noundef nonnull @.str.85, ptr noundef nonnull @amdgpu_dither_enum_list, i32 noundef 2) #10
  %dither_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 12
  %6 = ptrtoint ptr %dither_property to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call37, ptr %dither_property, align 8
  %call39 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #10
  br i1 %call39, label %if.then40, label %if.end32.if.end49_crit_edge

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then40:                                        ; preds = %if.end32
  %call42 = tail call ptr @drm_property_create_range(ptr noundef %ddev.i, i32 noundef 0, ptr noundef nonnull @.str.86, i64 noundef 0, i64 noundef 4) #10
  %abm_level_property = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 13
  %7 = ptrtoint ptr %abm_level_property to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call42, ptr %abm_level_property, align 4
  %tobool46.not = icmp eq ptr %call42, null
  br i1 %tobool46.not, label %if.then40.cleanup_crit_edge, label %if.then40.if.end49_crit_edge

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %if.then40.if.end49_crit_edge, %if.end32.if.end49_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then40.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ], [ -12, %if.then40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_scaling_mode_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_has_dc_support(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_display_update_priority(ptr nocapture noundef writeonly %adev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_disp_priority to i32))
  %0 = load i32, ptr @amdgpu_disp_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp1 = icmp sgt i32 %0, 2
  %or.cond = or i1 %cmp, %cmp1
  %spec.select = select i1 %or.cond, i32 0, i32 %0
  %1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 23
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_display_crtc_scaling_mode_fixup(ptr noundef %crtc, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adjusted_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %h_border = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 16
  %2 = ptrtoint ptr %h_border to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %h_border, align 4
  %v_border = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 17
  %3 = ptrtoint ptr %v_border to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %v_border, align 1
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %4 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn307 = load ptr, ptr %encoder_list, align 4
  %cmp.not309 = icmp eq ptr %.pn307, %encoder_list
  br i1 %cmp.not309, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %rmx_type29 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 15
  %native_mode32 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 20
  %vdisplay35 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %vdisplay38 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 20, i32 6
  %hdisplay41 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %hdisplay44 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 20, i32 1
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn314 = phi ptr [ %.pn307, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %src_v.0313 = phi i32 [ 1, %for.body.lr.ph ], [ %src_v.1, %for.inc.for.body_crit_edge ]
  %dst_v.0312 = phi i32 [ 1, %for.body.lr.ph ], [ %dst_v.1, %for.inc.for.body_crit_edge ]
  %src_h.0311 = phi i32 [ 1, %for.body.lr.ph ], [ %src_h.1, %for.inc.for.body_crit_edge ]
  %dst_h.0310 = phi i32 [ 1, %for.body.lr.ph ], [ %dst_h.1, %for.inc.for.body_crit_edge ]
  %crtc7 = getelementptr i8, ptr %.pn314, i32 48
  %5 = ptrtoint ptr %crtc7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crtc7, align 4
  %cmp8.not = icmp eq ptr %6, %crtc
  br i1 %cmp8.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %encoder.0315 = getelementptr i8, ptr %.pn314, i32 -4
  %call = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder.0315) #10
  %rmx_type = getelementptr i8, ptr %.pn314, i32 92
  %7 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12 = icmp eq i32 %8, 0
  br i1 %cmp12, label %if.end.if.end31_crit_edge, label %if.else

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.else:                                          ; preds = %if.end
  %9 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hdisplay, align 4
  %hdisplay15 = getelementptr i8, ptr %.pn314, i32 112
  %11 = ptrtoint ptr %hdisplay15 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay15, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp17 = icmp ult i16 %10, %12
  br i1 %cmp17, label %if.else.if.end31_crit_edge, label %lor.lhs.false

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay, align 2
  %vdisplay21 = getelementptr i8, ptr %.pn314, i32 122
  %15 = ptrtoint ptr %vdisplay21 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay21, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp23 = icmp ult i16 %14, %16
  %spec.select = select i1 %cmp23, i32 %8, i32 0
  br label %if.end31

if.end31:                                         ; preds = %lor.lhs.false, %if.else.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %.sink = phi i32 [ 0, %if.end.if.end31_crit_edge ], [ %8, %if.else.if.end31_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %17 = ptrtoint ptr %rmx_type29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %rmx_type29, align 8
  %native_mode33 = getelementptr i8, ptr %.pn314, i32 108
  %18 = call ptr @memcpy(ptr %native_mode32, ptr %native_mode33, i32 112)
  %19 = ptrtoint ptr %vdisplay35 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vdisplay35, align 2
  %conv36 = zext i16 %20 to i32
  %21 = ptrtoint ptr %vdisplay38 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vdisplay38, align 2
  %conv39 = zext i16 %22 to i32
  %23 = ptrtoint ptr %hdisplay41 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hdisplay41, align 4
  %conv42 = zext i16 %24 to i32
  %25 = ptrtoint ptr %hdisplay44 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hdisplay44, align 4
  %conv45 = zext i16 %26 to i32
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end31
  %underscan_type = getelementptr i8, ptr %.pn314, i32 96
  %29 = ptrtoint ptr %underscan_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %underscan_type, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %30, label %land.lhs.true.for.inc_crit_edge [
    i32 1, label %land.lhs.true.if.then58_crit_edge
    i32 2, label %land.lhs.true52
  ]

land.lhs.true.if.then58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true52:                                  ; preds = %land.lhs.true
  %is_hdmi = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 20, i32 11
  %32 = ptrtoint ptr %is_hdmi to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_hdmi, align 1, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool53.not = icmp eq i8 %33, 0
  br i1 %tobool53.not, label %land.lhs.true52.for.inc_crit_edge, label %land.lhs.true55

land.lhs.true52.for.inc_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %34 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vdisplay, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.171)
  switch i16 %35, label %land.lhs.true55.for.inc_crit_edge [
    i16 480, label %land.lhs.true.i
    i16 576, label %land.lhs.true55.if.then58_crit_edge
    i16 720, label %land.lhs.true55.if.then58_crit_edge320
    i16 1080, label %land.lhs.true55.if.then58_crit_edge321
  ]

land.lhs.true55.if.then58_crit_edge321:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

land.lhs.true55.if.then58_crit_edge320:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

land.lhs.true55.if.then58_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

land.lhs.true55.for.inc_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i:                                  ; preds = %land.lhs.true55
  %37 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %38)
  %cmp3.i = icmp eq i16 %38, 720
  br i1 %cmp3.i, label %land.lhs.true.i.if.then58_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i.if.then58_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

if.then58:                                        ; preds = %land.lhs.true.i.if.then58_crit_edge, %land.lhs.true55.if.then58_crit_edge, %land.lhs.true55.if.then58_crit_edge320, %land.lhs.true55.if.then58_crit_edge321, %land.lhs.true.if.then58_crit_edge
  %underscan_hborder = getelementptr i8, ptr %.pn314, i32 100
  %39 = ptrtoint ptr %underscan_hborder to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %underscan_hborder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp59.not = icmp eq i32 %40, 0
  br i1 %cmp59.not, label %if.else65, label %if.then61

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %conv63 = trunc i32 %40 to i8
  br label %if.end70

if.else65:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hdisplay, align 4
  %43 = lshr i16 %42, 5
  %44 = trunc i16 %43 to i8
  %conv68 = add i8 %44, 16
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.then61
  %storemerge = phi i8 [ %conv68, %if.else65 ], [ %conv63, %if.then61 ]
  %45 = ptrtoint ptr %h_border to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %storemerge, ptr %h_border, align 4
  %underscan_vborder = getelementptr i8, ptr %.pn314, i32 104
  %46 = ptrtoint ptr %underscan_vborder to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %underscan_vborder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp71.not = icmp eq i32 %47, 0
  br i1 %cmp71.not, label %if.else77, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %conv75 = trunc i32 %47 to i8
  br label %if.end84

if.else77:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vdisplay, align 2
  %50 = lshr i16 %49, 5
  %51 = trunc i16 %50 to i8
  %conv82 = add i8 %51, 16
  br label %if.end84

if.end84:                                         ; preds = %if.else77, %if.then73
  %storemerge184 = phi i8 [ %conv82, %if.else77 ], [ %conv75, %if.then73 ]
  %52 = ptrtoint ptr %v_border to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %storemerge184, ptr %v_border, align 1
  %53 = ptrtoint ptr %rmx_type29 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %rmx_type29, align 8
  %conv93 = zext i8 %storemerge184 to i32
  %mul.neg = mul nsw i32 %conv93, -2
  %sub = add nsw i32 %mul.neg, %conv36
  %conv101 = zext i8 %storemerge to i32
  %mul102.neg = mul nsw i32 %conv101, -2
  %sub103 = add nsw i32 %mul102.neg, %conv42
  br label %for.inc

for.inc:                                          ; preds = %if.end84, %land.lhs.true.i.for.inc_crit_edge, %land.lhs.true55.for.inc_crit_edge, %land.lhs.true52.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dst_h.1 = phi i32 [ %dst_h.0310, %for.body.for.inc_crit_edge ], [ %conv45, %if.end31.for.inc_crit_edge ], [ %sub103, %if.end84 ], [ %conv45, %land.lhs.true52.for.inc_crit_edge ], [ %conv45, %land.lhs.true.for.inc_crit_edge ], [ %conv45, %land.lhs.true55.for.inc_crit_edge ], [ %conv45, %land.lhs.true.i.for.inc_crit_edge ]
  %src_h.1 = phi i32 [ %src_h.0311, %for.body.for.inc_crit_edge ], [ %conv42, %if.end31.for.inc_crit_edge ], [ %conv42, %if.end84 ], [ %conv42, %land.lhs.true52.for.inc_crit_edge ], [ %conv42, %land.lhs.true.for.inc_crit_edge ], [ %conv42, %land.lhs.true55.for.inc_crit_edge ], [ %conv42, %land.lhs.true.i.for.inc_crit_edge ]
  %dst_v.1 = phi i32 [ %dst_v.0312, %for.body.for.inc_crit_edge ], [ %conv39, %if.end31.for.inc_crit_edge ], [ %sub, %if.end84 ], [ %conv39, %land.lhs.true52.for.inc_crit_edge ], [ %conv39, %land.lhs.true.for.inc_crit_edge ], [ %conv39, %land.lhs.true55.for.inc_crit_edge ], [ %conv39, %land.lhs.true.i.for.inc_crit_edge ]
  %src_v.1 = phi i32 [ %src_v.0313, %for.body.for.inc_crit_edge ], [ %conv36, %if.end31.for.inc_crit_edge ], [ %conv36, %if.end84 ], [ %conv36, %land.lhs.true52.for.inc_crit_edge ], [ %conv36, %land.lhs.true.for.inc_crit_edge ], [ %conv36, %land.lhs.true55.for.inc_crit_edge ], [ %conv36, %land.lhs.true.i.for.inc_crit_edge ]
  %54 = ptrtoint ptr %.pn314 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn314, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dst_h.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %dst_h.1, %for.inc.for.end_crit_edge ]
  %src_h.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %src_h.1, %for.inc.for.end_crit_edge ]
  %dst_v.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %dst_v.1, %for.inc.for.end_crit_edge ]
  %src_v.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %src_v.1, %for.inc.for.end_crit_edge ]
  %rmx_type110 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 15
  %55 = ptrtoint ptr %rmx_type110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rmx_type110, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp111.not = icmp eq i32 %56, 0
  br i1 %cmp111.not, label %if.else122, label %if.then113

if.then113:                                       ; preds = %for.end
  %shl = shl i32 %src_v.0.lcssa, 12
  %shl114 = shl i32 %dst_v.0.lcssa, 12
  %conv.i = zext i32 %shl to i64
  %shl.i = shl nuw nsw i64 %conv.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shl)
  %cmp169.i = icmp ult i32 %shl, 524288
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !299

if.then173.i:                                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  %conv174.i = trunc i64 %shl.i to i32
  %div177.i = udiv i32 %conv174.i, %shl114
  %conv178.i = zext i32 %div177.i to i64
  br label %dfixed_div.exit

if.else179.i:                                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  %57 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl114, i64 %shl.i) #15, !srcloc !307
  %asmresult1.i.i = extractvalue { i64, i64 } %57, 1
  br label %dfixed_div.exit

dfixed_div.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %tmp.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %tmp.0.i, 1
  %div186268.i = lshr i64 %add185.i, 1
  %conv188.i = trunc i64 %div186268.i to i32
  %vsc = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 18
  %58 = ptrtoint ptr %vsc to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv188.i, ptr %vsc, align 8
  %shl117 = shl i32 %src_h.0.lcssa, 12
  %shl118 = shl i32 %dst_h.0.lcssa, 12
  %conv.i185 = zext i32 %shl117 to i64
  %shl.i186 = shl nuw nsw i64 %conv.i185, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shl117)
  %cmp169.i293 = icmp ult i32 %shl117, 524288
  br i1 %cmp169.i293, label %if.then173.i298, label %if.else179.i300, !prof !299

if.then173.i298:                                  ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv174.i295 = trunc i64 %shl.i186 to i32
  %div177.i296 = udiv i32 %conv174.i295, %shl118
  %conv178.i297 = zext i32 %div177.i296 to i64
  br label %dfixed_div.exit305

if.else179.i300:                                  ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl118, i64 %shl.i186) #15, !srcloc !307
  %asmresult1.i.i299 = extractvalue { i64, i64 } %59, 1
  br label %dfixed_div.exit305

dfixed_div.exit305:                               ; preds = %if.else179.i300, %if.then173.i298
  %tmp.0.i301 = phi i64 [ %conv178.i297, %if.then173.i298 ], [ %asmresult1.i.i299, %if.else179.i300 ]
  %add185.i302 = add i64 %tmp.0.i301, 1
  %div186268.i303 = lshr i64 %add185.i302, 1
  %conv188.i304 = trunc i64 %div186268.i303 to i32
  br label %if.end125

if.else122:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %vsc123 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 18
  %60 = ptrtoint ptr %vsc123 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4096, ptr %vsc123, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.else122, %dfixed_div.exit305
  %.sink319 = phi i32 [ 4096, %if.else122 ], [ %conv188.i304, %dfixed_div.exit305 ]
  %hsc124 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 19
  %61 = ptrtoint ptr %hsc124 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink319, ptr %hsc124, align 4
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_get_connector_for_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_get_crtc_scanoutpos(ptr noundef %dev, i32 noundef %pipe, i32 noundef %flags, ptr nocapture noundef %vpos, ptr nocapture noundef writeonly %hpos, ptr noundef writeonly %stime, ptr noundef writeonly %etime, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  %vbl = alloca i32, align 4
  %position = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbl) #10
  %0 = ptrtoint ptr %vbl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vbl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %position) #10
  %1 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %position, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %tobool.not = icmp eq ptr %stime, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i64 @ktime_get() #10
  %2 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call1, ptr %stime, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %funcs = getelementptr i8, ptr %dev, i32 22416
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 8
  %page_flip_get_scanoutpos = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %page_flip_get_scanoutpos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page_flip_get_scanoutpos, align 4
  %call2 = call i32 %6(ptr noundef %add.ptr.i, i32 noundef %pipe, ptr noundef nonnull %vbl, ptr noundef nonnull %position) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  %spec.select = zext i1 %cmp to i32
  %tobool5.not = icmp eq ptr %etime, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i64 @ktime_get() #10
  %7 = ptrtoint ptr %etime to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call7, ptr %etime, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %8 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %position, align 4
  %and = and i32 %9, 8191
  %10 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %vpos, align 4
  %shr = lshr i32 %9, 16
  %and9 = and i32 %shr, 8191
  %11 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and9, ptr %hpos, align 4
  %12 = ptrtoint ptr %vbl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vbl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10.not = icmp eq i32 %13, 0
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %or12 = or i32 %spec.select, 4
  %and13 = and i32 %13, 8191
  %shr14 = lshr i32 %13, 16
  %and15 = and i32 %shr14, 8191
  br label %if.end16

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %14 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %crtc_vdisplay, align 2
  %conv = zext i16 %15 to i32
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %vbl_start.0 = phi i32 [ %and13, %if.then11 ], [ %conv, %if.else ]
  %vbl_end.0 = phi i32 [ %and15, %if.then11 ], [ 0, %if.else ]
  %ret.1 = phi i32 [ %or12, %if.then11 ], [ %spec.select, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %flags)
  %tobool18.not = icmp sgt i32 %flags, -1
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vpos, align 4
  %sub = sub i32 %17, %vbl_start.0
  %18 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %hpos, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %and21 = and i32 %flags, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 79, i32 3, i32 %pipe
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %lb_vblank_lead_lines = getelementptr inbounds %struct.amdgpu_crtc, ptr %20, i32 0, i32 38
  %21 = ptrtoint ptr %lb_vblank_lead_lines to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lb_vblank_lead_lines, align 4
  %sub25 = sub i32 %vbl_start.0, %22
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %vbl_start.1 = phi i32 [ %vbl_start.0, %if.end20.if.end26_crit_edge ], [ %sub25, %if.then23 ]
  %23 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vpos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %vbl_start.1)
  %cmp27 = icmp sge i32 %24, %vbl_start.1
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %vbl_end.0)
  %cmp29.not = icmp slt i32 %24, %vbl_end.0
  %or.cond = select i1 %cmp27, i1 true, i1 %cmp29.not
  br i1 %tobool18.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %sub40 = sub i32 %24, %vbl_start.1
  br label %cleanup

if.end41:                                         ; preds = %if.end26
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %vbl_start.1)
  %cmp45.not = icmp slt i32 %24, %vbl_start.1
  %or.cond96 = select i1 %or.cond.not, i1 true, i1 %cmp45.not
  br i1 %or.cond96, label %if.end41.if.end52_crit_edge, label %if.then47

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %25 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %crtc_vtotal, align 4
  %conv48 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv48)
  %cmp49 = icmp slt i32 %24, %conv48
  %sub51 = sub i32 %24, %conv48
  %spec.select94 = select i1 %cmp49, i32 %sub51, i32 0
  %27 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select94, ptr %vpos, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end41.if.end52_crit_edge
  %28 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vpos, align 4
  %sub53 = sub i32 %29, %vbl_end.0
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then39
  %storemerge = phi i32 [ %sub53, %if.end52 ], [ %sub40, %if.then39 ]
  %or35 = or i32 %ret.1, 2
  %spec.select93 = select i1 %or.cond, i32 %or35, i32 %ret.1
  %30 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge, ptr %vpos, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %position) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbl) #10
  ret i32 %spec.select93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(ptr nocapture noundef readonly %adev, i32 noundef %crtc) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtc)
  %cmp = icmp slt i32 %crtc, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %crtc)
  %cmp1.not = icmp sgt i32 %1, %crtc
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %crtc)
  %2 = icmp ult i32 %crtc, 6
  %crtc. = select i1 %2, i32 %crtc, i32 255
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 255, %lor.lhs.false.return_crit_edge ], [ 255, %entry.return_crit_edge ], [ %crtc., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_crtc_get_scanout_position(ptr nocapture noundef readonly %crtc, i1 noundef zeroext %in_vblank_irq, ptr nocapture noundef %vpos, ptr nocapture noundef writeonly %hpos, ptr noundef %stime, ptr noundef %etime, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call = tail call i32 @amdgpu_display_get_crtc_scanoutpos(ptr noundef %1, i32 noundef %3, i32 noundef 0, ptr noundef %vpos, ptr noundef %hpos, ptr noundef %stime, ptr noundef %etime, ptr noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_suspend_helper(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #10
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !296
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !296
  tail call void @drm_modeset_lock_all(ptr noundef %ddev.i) #10
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i, ptr noundef nonnull %iter) #10
  %call176 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #10
  %tobool.not77 = icmp eq ptr %call176, null
  br i1 %tobool.not77, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call178 = phi ptr [ %call1, %while.body.while.body_crit_edge ], [ %call176, %entry.while.body_crit_edge ]
  %call2 = call i32 @drm_helper_connector_dpms(ptr noundef nonnull %call178, i32 noundef 3) #10
  %call1 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #10
  call void @drm_modeset_unlock_all(ptr noundef %ddev.i) #10
  %crtc_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 20
  %3 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn79 = load ptr, ptr %crtc_list, align 4
  %cmp.not80 = icmp eq ptr %.pn79, %crtc_list
  br i1 %cmp.not80, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %enable_virtual_display = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn81 = phi ptr [ %.pn79, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %primary = getelementptr i8, ptr %.pn81, i32 140
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  %fb8 = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %fb8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb8, align 4
  %cursor_bo = getelementptr i8, ptr %.pn81, i32 996
  %8 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cursor_bo, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %for.body.if.end18_crit_edge, label %land.lhs.true

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable_virtual_display, align 8, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.then, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %add.ptr14 = getelementptr i8, ptr %9, i32 -72
  %bdev.i = getelementptr i8, ptr %9, i32 352
  %12 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %9, i32 200
  %14 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resv32.i.i, align 8
  %call.i1.i.i = call i32 @ww_mutex_lock(ptr noundef %15, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i1.i.i
  %16 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.then17
    i32 -512, label %if.then.if.end18_crit_edge
  ], !prof !297

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -17736
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.93, ptr noundef %add.ptr14) #14
  br label %if.end18

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_bo_unpin(ptr noundef %add.ptr14) #10
  %19 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr i8, ptr %9, i32 372
  %21 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %9, ptr noundef %22, ptr noundef null) #10
  %23 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %25 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %26) #10
  call void @ww_mutex_unlock(ptr noundef %26) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.end.i, %if.then.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %for.body.if.end18_crit_edge
  %cmp19 = icmp eq ptr %7, null
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %lor.lhs.false

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end18
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 15
  %27 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %obj, align 4
  %cmp20 = icmp eq ptr %28, null
  br i1 %cmp20, label %lor.lhs.false.cleanup_crit_edge, label %if.end22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %add.ptr27 = getelementptr i8, ptr %28, i32 -72
  %bdev.i62 = getelementptr i8, ptr %28, i32 352
  %29 = ptrtoint ptr %bdev.i62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev.i62, align 8
  %resv32.i.i64 = getelementptr i8, ptr %28, i32 200
  %31 = ptrtoint ptr %resv32.i.i64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resv32.i.i64, align 8
  %call.i1.i.i65 = call i32 @ww_mutex_lock(ptr noundef %32, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i65)
  %cmp.i.i66 = icmp eq i32 %call.i1.i.i65, -4
  %.ret.0.i.i67 = select i1 %cmp.i.i66, i32 -512, i32 %call.i1.i.i65
  %33 = zext i32 %.ret.0.i.i67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %.ret.0.i.i67, label %do.end.i68 [
    i32 0, label %if.then30
    i32 -512, label %if.end22.cleanup_crit_edge
  ], !prof !297

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i68:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i63 = getelementptr i8, ptr %30, i32 -17736
  %34 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i63, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.93, ptr noundef %add.ptr27) #14
  br label %cleanup

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_bo_unpin(ptr noundef %add.ptr27) #10
  %36 = ptrtoint ptr %bdev.i62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdev.i62, align 8
  %lru_lock.i.i.i72 = getelementptr inbounds %struct.ttm_device, ptr %37, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i72) #10
  %resource.i.i.i73 = getelementptr i8, ptr %28, i32 372
  %38 = ptrtoint ptr %resource.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resource.i.i.i73, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %28, ptr noundef %39, ptr noundef null) #10
  %40 = ptrtoint ptr %bdev.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bdev.i62, align 8
  %lru_lock2.i.i.i74 = getelementptr inbounds %struct.ttm_device, ptr %41, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i74) #10
  %42 = ptrtoint ptr %resv32.i.i64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resv32.i.i64, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %43) #10
  call void @ww_mutex_unlock(ptr noundef %43) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.end.i68, %if.end22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %44 = ptrtoint ptr %.pn81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn = load ptr, ptr %.pn81, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %while.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_connector_dpms(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_display_resume_helper(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #10
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !296
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !296
  %crtc_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 20
  %3 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn45 = load ptr, ptr %crtc_list, align 4
  %cmp.not46 = icmp eq ptr %.pn45, %crtc_list
  br i1 %cmp.not46, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %enable_virtual_display = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.body.lr.ph
  %.pn47 = phi ptr [ %.pn45, %for.body.lr.ph ], [ %.pn, %if.end20.for.body_crit_edge ]
  %cursor_bo = getelementptr i8, ptr %.pn47, i32 996
  %4 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cursor_bo, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end20_crit_edge, label %land.lhs.true

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_virtual_display, align 8, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.then, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %land.lhs.true
  %add.ptr10 = getelementptr i8, ptr %5, i32 -72
  %bdev.i = getelementptr i8, ptr %5, i32 352
  %8 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr i8, ptr %5, i32 200
  %10 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv32.i.i, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %11, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i1.i.i
  %12 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.then13
    i32 -512, label %if.then.if.end20_crit_edge
  ], !prof !297

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -17736
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.93, ptr noundef %add.ptr10) #14
  br label %if.end20

if.then13:                                        ; preds = %if.then
  %call14 = tail call i32 @amdgpu_bo_pin(ptr noundef %add.ptr10, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.then13.if.end_crit_edge, label %do.end

if.then13.if.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.87, i32 noundef %call14) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then13.if.end_crit_edge
  %call18 = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %add.ptr10) #10
  %cursor_addr = getelementptr i8, ptr %.pn47, i32 1000
  %17 = ptrtoint ptr %cursor_addr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call18, ptr %cursor_addr, align 8
  %18 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr i8, ptr %5, i32 372
  %20 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %5, ptr noundef %21, ptr noundef null) #10
  %22 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %24 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %25) #10
  tail call void @ww_mutex_unlock(ptr noundef %25) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end, %do.end.i, %if.then.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %for.body.if.end20_crit_edge
  %26 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @drm_helper_resume_force_mode(ptr noundef %ddev.i) #10
  tail call void @drm_modeset_lock_all(ptr noundef %ddev.i) #10
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i, ptr noundef nonnull %iter) #10
  %call2648 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #10
  %tobool27.not49 = icmp eq ptr %call2648, null
  br i1 %tobool27.not49, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %call2650 = phi ptr [ %call26, %while.body.while.body_crit_edge ], [ %call2648, %for.end.while.body_crit_edge ]
  %call28 = call i32 @drm_helper_connector_dpms(ptr noundef nonnull %call2650, i32 noundef 0) #10
  %call26 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #10
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #10
  call void @drm_modeset_unlock_all(ptr noundef %ddev.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_resume_force_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_display_flip_callback(ptr noundef %f, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %entry.dma_fence_put.exit_crit_edge, label %if.then.i

entry.dma_fence_put.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !301
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !299

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !302
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10, !callees !303
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %entry.dma_fence_put.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %cb, i32 -184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_get_metadata(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_display_verify_plane(ptr nocapture noundef readonly %rfb, i32 noundef %plane, ptr nocapture noundef readonly %format, i32 noundef %block_width, i32 noundef %block_height, i32 noundef %block_size_log2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %width1 = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 9
  %0 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plane)
  %tobool.not = icmp eq i32 %plane, 0
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %format, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %plane)
  %cmp = icmp sgt i32 %conv, %plane
  br i1 %cmp, label %cond.true, label %land.lhs.true.land.lhs.true7_crit_edge

land.lhs.true.land.lhs.true7_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true7

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %format, i32 0, i32 6
  %4 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hsub, align 2
  %conv3 = zext i8 %5 to i32
  br label %land.lhs.true7

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %height5 = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 10
  %6 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height5, align 4
  br label %cond.end15

land.lhs.true7:                                   ; preds = %cond.true, %land.lhs.true.land.lhs.true7_crit_edge
  %cond.ph = phi i32 [ 1, %land.lhs.true.land.lhs.true7_crit_edge ], [ %conv3, %cond.true ]
  %height5186 = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 10
  %8 = ptrtoint ptr %height5186 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height5186, align 4
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_planes, align 1
  %conv9 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %plane)
  %cmp10 = icmp sgt i32 %conv9, %plane
  br i1 %cmp10, label %cond.true12, label %land.lhs.true7.cond.end15_crit_edge

land.lhs.true7.cond.end15_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end15

cond.true12:                                      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %format, i32 0, i32 7
  %12 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vsub, align 1
  %conv13 = zext i8 %13 to i32
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true12, %land.lhs.true7.cond.end15_crit_edge, %cond.end
  %14 = phi i32 [ %9, %cond.true12 ], [ %9, %land.lhs.true7.cond.end15_crit_edge ], [ %7, %cond.end ]
  %cond.ph.pn = phi i32 [ %cond.ph, %cond.true12 ], [ %cond.ph, %land.lhs.true7.cond.end15_crit_edge ], [ 1, %cond.end ]
  %cond16 = phi i32 [ %conv13, %cond.true12 ], [ 1, %land.lhs.true7.cond.end15_crit_edge ], [ 1, %cond.end ]
  %div188 = udiv i32 %1, %cond.ph.pn
  %div17 = udiv i32 %14, %cond16
  %num_planes18 = getelementptr inbounds %struct.drm_format_info, ptr %format, i32 0, i32 2
  %15 = ptrtoint ptr %num_planes18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_planes18, align 1
  %conv19 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %plane)
  %cmp20 = icmp sgt i32 %conv19, %plane
  br i1 %cmp20, label %cond.true22, label %cond.end15.cond.end25_crit_edge

cond.end15.cond.end25_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end25

cond.true22:                                      ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #12
  %17 = getelementptr inbounds %struct.drm_format_info, ptr %format, i32 0, i32 3
  %arrayidx = getelementptr [4 x i8], ptr %17, i32 0, i32 %plane
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv23 = zext i8 %19 to i32
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true22, %cond.end15.cond.end25_crit_edge
  %cond26 = phi i32 [ %conv23, %cond.true22 ], [ 1, %cond.end15.cond.end25_crit_edge ]
  %mul = mul i32 %cond26, %block_width
  %mul27 = mul i32 %cond26, %div188
  %sub = add i32 %mul, -1
  %add = add i32 %sub, %mul27
  %neg = sub i32 0, %mul
  %and = and i32 %add, %neg
  %shl = shl nuw i32 1, %block_size_log2
  %arrayidx30 = getelementptr %struct.drm_framebuffer, ptr %rfb, i32 0, i32 6, i32 %plane
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx30, align 4
  %.frozen = freeze i32 %21
  %mul.frozen = freeze i32 %mul
  %22 = udiv i32 %.frozen, %mul.frozen
  %23 = mul i32 %22, %mul.frozen
  %rem.decomposed = sub i32 %.frozen, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool31.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool31.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end25
  %24 = ptrtoint ptr %rfb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rfb, align 8
  %tobool33.not = icmp eq ptr %25, null
  br i1 %tobool33.not, label %if.then.cond.end39_crit_edge, label %cond.true34

if.then.cond.end39_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end39

cond.true34:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev37 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev37, align 4
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true34, %if.then.cond.end39_crit_edge
  %cond40 = phi ptr [ %27, %cond.true34 ], [ null, %if.then.cond.end39_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond40, i32 noundef 4, ptr noundef nonnull @.str.147, i32 noundef %21, i32 noundef %plane, i32 noundef %mul) #10
  br label %cleanup

if.end:                                           ; preds = %cond.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and)
  %cmp47 = icmp ult i32 %21, %and
  br i1 %cmp47, label %if.then49, label %if.end63

if.then49:                                        ; preds = %if.end
  %28 = ptrtoint ptr %rfb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rfb, align 8
  %tobool52.not = icmp eq ptr %29, null
  br i1 %tobool52.not, label %if.then49.cond.end58_crit_edge, label %cond.true53

if.then49.cond.end58_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end58

cond.true53:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %dev56 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev56, align 4
  br label %cond.end58

cond.end58:                                       ; preds = %cond.true53, %if.then49.cond.end58_crit_edge
  %cond59 = phi ptr [ %31, %cond.true53 ], [ null, %if.then49.cond.end58_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond59, i32 noundef 4, ptr noundef nonnull @.str.148, i32 noundef %21, i32 noundef %plane, i32 noundef %and) #10
  br label %cleanup

if.end63:                                         ; preds = %if.end
  %arrayidx65 = getelementptr %struct.drm_framebuffer, ptr %rfb, i32 0, i32 7, i32 %plane
  %32 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx65, align 4
  %34 = add i32 %shl, -1
  %rem66 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem66)
  %tobool67.not = icmp eq i32 %rem66, 0
  br i1 %tobool67.not, label %if.end82, label %if.then68

if.then68:                                        ; preds = %if.end63
  %35 = ptrtoint ptr %rfb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rfb, align 8
  %tobool71.not = icmp eq ptr %36, null
  br i1 %tobool71.not, label %if.then68.cond.end77_crit_edge, label %cond.true72

if.then68.cond.end77_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end77

cond.true72:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %dev75 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev75, align 4
  br label %cond.end77

cond.end77:                                       ; preds = %cond.true72, %if.then68.cond.end77_crit_edge
  %cond78 = phi ptr [ %38, %cond.true72 ], [ null, %if.then68.cond.end77_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond78, i32 noundef 4, ptr noundef nonnull @.str.149, i32 noundef %33, i32 noundef %plane, i32 noundef %shl) #10
  br label %cleanup

if.end82:                                         ; preds = %if.end63
  %conv86 = zext i32 %33 to i64
  %div92 = zext i32 %22 to i64
  %conv93 = zext i32 %shl to i64
  %mul94 = mul nuw i64 %div92, %conv93
  %add95 = add i32 %block_height, -1
  %sub96 = add i32 %add95, %div17
  %div97 = udiv i32 %sub96, %block_height
  %conv98 = zext i32 %div97 to i64
  %mul99 = mul i64 %mul94, %conv98
  %add100 = add i64 %mul99, %conv86
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %rfb, i32 0, i32 15
  %39 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %obj, align 4
  %size103 = getelementptr inbounds %struct.drm_gem_object, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %size103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size103, align 8
  %conv104 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add100, i64 %conv104)
  %cmp105 = icmp ugt i64 %add100, %conv104
  br i1 %cmp105, label %if.then107, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then107:                                       ; preds = %if.end82
  %43 = ptrtoint ptr %rfb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rfb, align 8
  %tobool110.not = icmp eq ptr %44, null
  br i1 %tobool110.not, label %if.then107.cond.end116_crit_edge, label %cond.true111

if.then107.cond.end116_crit_edge:                 ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end116

cond.true111:                                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  %dev114 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev114, align 4
  br label %cond.end116

cond.end116:                                      ; preds = %cond.true111, %if.then107.cond.end116_crit_edge
  %cond117 = phi ptr [ %46, %cond.true111 ], [ null, %if.then107.cond.end116_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond117, i32 noundef 4, ptr noundef nonnull @.str.150, i32 noundef %42, i64 noundef %add100, i32 noundef %plane) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end116, %if.end82.cleanup_crit_edge, %cond.end77, %cond.end58, %cond.end39
  %retval.0 = phi i32 [ -22, %cond.end39 ], [ -22, %cond.end58 ], [ -22, %cond.end77 ], [ -22, %cond.end116 ], [ 0, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !144, !145, !147, !149, !151, !152, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285}
!llvm.module.flags = !{!287, !288, !289, !290, !291, !292, !293, !294}
!llvm.ident = !{!295}

!0 = !{ptr @amdgpu_display_crtc_page_flip_target.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 163, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @amdgpu_display_crtc_page_flip_target.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @amdgpu_display_crtc_page_flip_target.__key.3, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 164, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 184, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 192, i32 4}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 199, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 206, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 221, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 231, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 241, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 371, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @amdgpu_display_print_display_setup._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @amdgpu_display_print_display_setup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 374, i32 3}
!30 = !{ptr @amdgpu_display_print_display_setup._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 375, i32 3}
!34 = !{ptr @amdgpu_display_print_display_setup._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @amdgpu_display_print_display_setup._entry.21, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 377, i32 4}
!38 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 379, i32 4}
!41 = !{ptr @amdgpu_display_print_display_setup._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 389, i32 5}
!45 = !{ptr @amdgpu_display_print_display_setup._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 393, i32 5}
!49 = !{ptr @amdgpu_display_print_display_setup._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 403, i32 5}
!53 = !{ptr @amdgpu_display_print_display_setup._entry.32, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 405, i32 3}
!57 = !{ptr @amdgpu_display_print_display_setup._entry.35, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.37, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.39, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 411, i32 6}
!61 = !{ptr @amdgpu_display_print_display_setup._entry.38, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.40, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.42, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 413, i32 6}
!65 = !{ptr @amdgpu_display_print_display_setup._entry.41, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.43, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.45, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 415, i32 6}
!69 = !{ptr @amdgpu_display_print_display_setup._entry.44, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.46, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.48, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 417, i32 6}
!73 = !{ptr @amdgpu_display_print_display_setup._entry.47, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.49, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.51, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 419, i32 6}
!77 = !{ptr @amdgpu_display_print_display_setup._entry.50, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.52, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.54, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 421, i32 6}
!81 = !{ptr @amdgpu_display_print_display_setup._entry.53, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.55, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.57, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 423, i32 6}
!85 = !{ptr @amdgpu_display_print_display_setup._entry.56, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.58, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.60, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 425, i32 6}
!89 = !{ptr @amdgpu_display_print_display_setup._entry.59, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.61, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.63, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 427, i32 6}
!93 = !{ptr @amdgpu_display_print_display_setup._entry.62, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.64, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.66, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 429, i32 6}
!97 = !{ptr @amdgpu_display_print_display_setup._entry.65, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.67, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.69, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 431, i32 6}
!101 = !{ptr @amdgpu_display_print_display_setup._entry.68, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @amdgpu_display_print_display_setup._entry_ptr.70, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.71, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1079, i32 2}
!105 = !{ptr @.str.72, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1096, i32 3}
!107 = !{ptr @.str.73, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1114, i32 2}
!109 = !{ptr @.str.74, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1133, i32 4}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1145, i32 3}
!113 = !{ptr @.str.75, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.76, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1156, i32 4}
!116 = !{ptr @.str.77, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1187, i32 3}
!118 = !{ptr @.str.78, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1196, i32 3}
!120 = !{ptr @amdgpu_mode_funcs, !121, !"amdgpu_mode_funcs", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1219, i32 36}
!122 = !{ptr @.str.79, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1247, i32 51}
!124 = !{ptr @.str.80, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1252, i32 51}
!126 = !{ptr @.str.81, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1261, i32 7}
!128 = !{ptr @.str.82, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1266, i32 8}
!130 = !{ptr @.str.83, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1272, i32 8}
!132 = !{ptr @.str.84, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1279, i32 7}
!134 = !{ptr @.str.85, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1285, i32 7}
!136 = !{ptr @.str.86, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1291, i32 9}
!138 = !{ptr @.str.87, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1629, i32 6}
!140 = !{ptr @.str.88, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.89, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.90, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @amdgpu_display_resume_helper._entry, !139, !"_entry", i1 false, i1 false}
!144 = !{ptr @amdgpu_display_resume_helper._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.91, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 116, i32 2}
!147 = !{ptr @.str.92, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 136, i32 3}
!149 = !{ptr @.str.93, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!151 = !{ptr @.str.94, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.95, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @amdgpu_bo_reserve._entry, !150, !"_entry", i1 false, i1 false}
!154 = !{ptr @amdgpu_bo_reserve._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!155 = distinct !{null, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!157 = !{ptr @.str.97, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 352, i32 2}
!159 = !{ptr @.str.98, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 353, i32 2}
!161 = !{ptr @.str.99, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 354, i32 2}
!163 = !{ptr @.str.100, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 355, i32 2}
!165 = !{ptr @.str.101, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 356, i32 2}
!167 = !{ptr @.str.102, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 357, i32 2}
!169 = !{ptr @hpd_names, !170, !"hpd_names", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 351, i32 20}
!171 = !{ptr @.str.103, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 308, i32 2}
!173 = !{ptr @.str.104, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 309, i32 2}
!175 = !{ptr @.str.105, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 310, i32 2}
!177 = !{ptr @.str.106, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 311, i32 2}
!179 = !{ptr @.str.107, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 312, i32 2}
!181 = !{ptr @.str.108, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 313, i32 2}
!183 = !{ptr @.str.109, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 314, i32 2}
!185 = !{ptr @.str.110, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 315, i32 2}
!187 = !{ptr @.str.111, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 316, i32 2}
!189 = !{ptr @.str.112, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 317, i32 2}
!191 = !{ptr @.str.113, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 318, i32 2}
!193 = !{ptr @.str.114, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 319, i32 2}
!195 = !{ptr @.str.115, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 320, i32 2}
!197 = !{ptr @.str.116, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 321, i32 2}
!199 = !{ptr @.str.117, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 322, i32 2}
!201 = !{ptr @.str.118, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 323, i32 2}
!203 = !{ptr @.str.119, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 324, i32 2}
!205 = !{ptr @.str.120, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 325, i32 2}
!207 = !{ptr @.str.121, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 326, i32 2}
!209 = !{ptr @.str.122, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 327, i32 2}
!211 = !{ptr @.str.123, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 328, i32 2}
!213 = !{ptr @.str.124, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 329, i32 2}
!215 = !{ptr @.str.125, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 330, i32 2}
!217 = !{ptr @.str.126, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 331, i32 2}
!219 = !{ptr @.str.127, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 332, i32 2}
!221 = !{ptr @.str.128, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 333, i32 2}
!223 = !{ptr @.str.129, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 334, i32 2}
!225 = !{ptr @.str.130, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 335, i32 2}
!227 = !{ptr @.str.131, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 336, i32 2}
!229 = !{ptr @.str.132, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 337, i32 2}
!231 = !{ptr @.str.133, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 338, i32 2}
!233 = !{ptr @.str.134, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 339, i32 2}
!235 = !{ptr @.str.135, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 340, i32 2}
!237 = !{ptr @.str.136, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 341, i32 2}
!239 = !{ptr @.str.137, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 342, i32 2}
!241 = !{ptr @.str.138, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 343, i32 2}
!243 = !{ptr @.str.139, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 344, i32 2}
!245 = !{ptr @.str.140, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 345, i32 2}
!247 = !{ptr @.str.141, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 346, i32 2}
!249 = !{ptr @.str.142, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 347, i32 2}
!251 = !{ptr @.str.143, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 348, i32 2}
!253 = !{ptr @encoder_names, !254, !"encoder_names", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 307, i32 20}
!255 = !{ptr @dcc_retile_formats, !256, !"dcc_retile_formats", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 562, i32 37}
!257 = !{ptr @dcc_formats, !258, !"dcc_formats", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 534, i32 37}
!259 = !{ptr @amdgpu_fb_funcs, !260, !"amdgpu_fb_funcs", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 486, i32 43}
!261 = !{ptr @.str.144, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1044, i32 4}
!263 = !{ptr @.str.145, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 851, i32 3}
!265 = !{ptr @.str.146, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 982, i32 5}
!267 = !{ptr @.str.147, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 915, i32 3}
!269 = !{ptr @.str.148, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 921, i32 3}
!271 = !{ptr @.str.149, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 929, i32 3}
!273 = !{ptr @.str.150, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 940, i32 3}
!275 = !{ptr @.str.151, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1225, i32 20}
!277 = !{ptr @.str.152, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1226, i32 18}
!279 = !{ptr @.str.153, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1227, i32 20}
!281 = !{ptr @amdgpu_underscan_enum_list, !282, !"amdgpu_underscan_enum_list", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1224, i32 40}
!283 = !{ptr @amdgpu_audio_enum_list, !284, !"amdgpu_audio_enum_list", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1230, i32 40}
!285 = !{ptr @amdgpu_dither_enum_list, !286, !"amdgpu_dither_enum_list", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_display.c", i32 1237, i32 40}
!287 = !{i32 1, !"wchar_size", i32 2}
!288 = !{i32 1, !"min_enum_size", i32 4}
!289 = !{i32 8, !"branch-target-enforcement", i32 0}
!290 = !{i32 8, !"sign-return-address", i32 0}
!291 = !{i32 8, !"sign-return-address-all", i32 0}
!292 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!293 = !{i32 7, !"uwtable", i32 1}
!294 = !{i32 7, !"frame-pointer", i32 2}
!295 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!296 = !{!"auto-init"}
!297 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!298 = !{i8 0, i8 2}
!299 = !{!"branch_weights", i32 2000, i32 1}
!300 = !{i64 2148490184}
!301 = !{i64 2148404648, i64 2148404680, i64 2148404709, i64 2148404743, i64 2148404774, i64 2148404797}
!302 = !{i64 2149573809}
!303 = !{ptr @dma_fence_release, ptr @drm_gem_object_free}
!304 = !{i32 0, i32 33}
!305 = !{i64 2148402183, i64 2148402215, i64 2148402244, i64 2148402278, i64 2148402309, i64 2148402332}
!306 = !{!"branch_weights", i32 1, i32 2000}
!307 = !{i64 2149001444, i64 2149001724, i64 2149002058, i64 2149002392}
