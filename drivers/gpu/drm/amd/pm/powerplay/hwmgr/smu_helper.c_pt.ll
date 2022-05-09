; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pp_atomctrl_voltage_table = type { i32, i32, i32, [32 x %struct.pp_atomctrl_voltage_table_entry] }
%struct.pp_atomctrl_voltage_table_entry = type { i16, i32 }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_clock_voltage_dependency_record = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i32 }
%struct.phm_ppt_v1_voltage_lookup_table = type { i32, [0 x %struct.phm_ppt_v1_voltage_lookup_record] }
%struct.phm_ppt_v1_voltage_lookup_record = type { i16, i16, i16, i16, i16 }
%struct.vi_dpm_table = type { i32, [0 x %struct.vi_dpm_level] }
%struct.vi_dpm_level = type { i8, i32, i32 }
%struct.phm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_clock_voltage_dependency_record] }
%struct.phm_clock_voltage_dependency_record = type { i32, i32 }
%struct.phm_ppt_v1_information = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16 }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.100, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.96] }
%struct.anon.96 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.100 = type { %struct.spinlock, i64, i64, i64, i32 }
%struct.amdgpu_mode_info = type { ptr, ptr, i8, [6 x ptr], [6 x ptr], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, %struct.amdgpu_audio, i32, i32, i32, i32, ptr, ptr }
%struct.amdgpu_audio = type { i8, [9 x %struct.amdgpu_audio_pin], i32 }
%struct.amdgpu_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.111, i32, i32, i32, i32 }
%union.anon.111 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }
%struct.dm_pp_wm_sets_with_clock_ranges_soc15 = type { i32, i32, [4 x %struct.dm_pp_clock_range_for_dmif_wm_set_soc15], [4 x %struct.dm_pp_clock_range_for_mcif_wm_set_soc15] }
%struct.dm_pp_clock_range_for_dmif_wm_set_soc15 = type { i32, i32, i32, i32, i32 }
%struct.dm_pp_clock_range_for_mcif_wm_set_soc15 = type { i32, i32, i32, i32, i32 }
%struct.watermark_row_generic_t = type { i16, i16, i16, i16, i8, [3 x i8] }

@phm_wait_on_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013amdgpu: [powerplay] Invalid Hardware Manager!\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phm_wait_on_register\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c\00", [34 x i8] zeroinitializer }, align 32
@phm_wait_on_register._entry_ptr = internal global ptr @phm_wait_on_register._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@phm_wait_on_indirect_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phm_wait_on_indirect_register\00", [34 x i8] zeroinitializer }, align 32
@phm_wait_on_indirect_register._entry_ptr = internal global ptr @phm_wait_on_indirect_register._entry, section ".printk_index", align 4
@phm_trim_voltage_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.phm_trim_voltage_table = private unnamed_addr constant [23 x i8] c"phm_trim_voltage_table\00", align 1
@phm_trim_voltage_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_trim_voltage_table, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@phm_trim_voltage_table._entry_ptr = internal global ptr @phm_trim_voltage_table._entry, section ".printk_index", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Voltage Table empty.\00", [43 x i8] zeroinitializer }, align 32
@phm_get_svi2_mvdd_voltage_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.phm_get_svi2_mvdd_voltage_table = private unnamed_addr constant [32 x i8] c"phm_get_svi2_mvdd_voltage_table\00", align 1
@phm_get_svi2_mvdd_voltage_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_svi2_mvdd_voltage_table, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_svi2_mvdd_voltage_table._entry_ptr = internal global ptr @phm_get_svi2_mvdd_voltage_table._entry, section ".printk_index", align 4
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Voltage Dependency Table empty.\00", [32 x i8] zeroinitializer }, align 32
@phm_get_svi2_mvdd_voltage_table._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_svi2_mvdd_voltage_table._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_svi2_mvdd_voltage_table, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_svi2_mvdd_voltage_table._entry_ptr.10 = internal global ptr @phm_get_svi2_mvdd_voltage_table._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vol_table empty.\00", [47 x i8] zeroinitializer }, align 32
@phm_get_svi2_mvdd_voltage_table._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_svi2_mvdd_voltage_table._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_svi2_mvdd_voltage_table, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_svi2_mvdd_voltage_table._entry_ptr.14 = internal global ptr @phm_get_svi2_mvdd_voltage_table._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to trim MVDD table.\00", [37 x i8] zeroinitializer }, align 32
@phm_get_svi2_vddci_voltage_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.phm_get_svi2_vddci_voltage_table = private unnamed_addr constant [33 x i8] c"phm_get_svi2_vddci_voltage_table\00", align 1
@phm_get_svi2_vddci_voltage_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_svi2_vddci_voltage_table, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_svi2_vddci_voltage_table._entry_ptr = internal global ptr @phm_get_svi2_vddci_voltage_table._entry, section ".printk_index", align 4
@phm_get_svi2_vddci_voltage_table._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_svi2_vddci_voltage_table._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_svi2_vddci_voltage_table, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_svi2_vddci_voltage_table._entry_ptr.18 = internal global ptr @phm_get_svi2_vddci_voltage_table._entry.17, section ".printk_index", align 4
@phm_get_svi2_vddci_voltage_table._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_svi2_vddci_voltage_table._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_svi2_vddci_voltage_table, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_svi2_vddci_voltage_table._entry_ptr.21 = internal global ptr @phm_get_svi2_vddci_voltage_table._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to trim VDDCI table.\00", [36 x i8] zeroinitializer }, align 32
@phm_get_svi2_vdd_voltage_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.phm_get_svi2_vdd_voltage_table = private unnamed_addr constant [31 x i8] c"phm_get_svi2_vdd_voltage_table\00", align 1
@phm_get_svi2_vdd_voltage_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_svi2_vdd_voltage_table, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_svi2_vdd_voltage_table._entry_ptr = internal global ptr @phm_get_svi2_vdd_voltage_table._entry, section ".printk_index", align 4
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Voltage Lookup Table empty.\00", [36 x i8] zeroinitializer }, align 32
@phm_get_svi2_vdd_voltage_table._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_svi2_vdd_voltage_table._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_svi2_vdd_voltage_table, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_svi2_vdd_voltage_table._entry_ptr.26 = internal global ptr @phm_get_svi2_vdd_voltage_table._entry.25, section ".printk_index", align 4
@phm_get_voltage_index._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.phm_get_voltage_index = private unnamed_addr constant [22 x i8] c"phm_get_voltage_index\00", align 1
@phm_get_voltage_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_voltage_index, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_voltage_index._entry_ptr = internal global ptr @phm_get_voltage_index._entry, section ".printk_index", align 4
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Lookup Table empty.\00", [44 x i8] zeroinitializer }, align 32
@phm_get_voltage_index._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_voltage_index._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_voltage_index, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_voltage_index._entry_ptr.30 = internal global ptr @phm_get_voltage_index._entry.29, section ".printk_index", align 4
@phm_get_voltage_id._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.phm_get_voltage_id = private unnamed_addr constant [19 x i8] c"phm_get_voltage_id\00", align 1
@phm_get_voltage_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_voltage_id, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_voltage_id._entry_ptr = internal global ptr @phm_get_voltage_id._entry, section ".printk_index", align 4
@phm_get_voltage_id._rs.31 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@phm_get_voltage_id._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_voltage_id, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_voltage_id._entry_ptr.33 = internal global ptr @phm_get_voltage_id._entry.32, section ".printk_index", align 4
@phm_find_closest_vddci.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phm_find_closest_vddci\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"vddci is larger than max value in vddci_table\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"amdgpu: [powerplay] vddci is larger than max value in vddci_table\0A\00", [61 x i8] zeroinitializer }, align 32
@phm_get_sclk_for_voltage_evv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.phm_get_sclk_for_voltage_evv = private unnamed_addr constant [29 x i8] c"phm_get_sclk_for_voltage_evv\00", align 1
@phm_get_sclk_for_voltage_evv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.phm_get_sclk_for_voltage_evv, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@phm_get_sclk_for_voltage_evv._entry_ptr = internal global ptr @phm_get_sclk_for_voltage_evv._entry, section ".printk_index", align 4
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Lookup table is empty\00", [42 x i8] zeroinitializer }, align 32
@phm_get_sclk_for_voltage_evv.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @__func__.phm_get_sclk_for_voltage_evv, ptr @.str.2, ptr @.str.39, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Can't find requested voltage id in vdd_dep_on_sclk table\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"amdgpu: [powerplay] Can't find requested voltage id in vdd_dep_on_sclk table\0A\00", [50 x i8] zeroinitializer }, align 32
@phm_initializa_dynamic_state_adjustment_rule_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013amdgpu: [powerplay] Can not allocate space for vddc_dep_on_dal_pwrl! \0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"phm_initializa_dynamic_state_adjustment_rule_settings\00", [42 x i8] zeroinitializer }, align 32
@phm_initializa_dynamic_state_adjustment_rule_settings._entry_ptr = internal global ptr @phm_initializa_dynamic_state_adjustment_rule_settings._entry, section ".printk_index", align 4
@phm_apply_dal_min_voltage_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013amdgpu: [powerplay] DAL requested level can not found a available voltage in VDDC DPM Table \0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"phm_apply_dal_min_voltage_request\00", [62 x i8] zeroinitializer }, align 32
@phm_apply_dal_min_voltage_request._entry_ptr = internal global ptr @phm_apply_dal_min_voltage_request._entry, section ".printk_index", align 4
@phm_irq_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 611, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"amdgpu: ERROR: GPU over temperature range(SW CTF) detected!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phm_irq_process\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr = internal global ptr @phm_irq_process._entry, section ".printk_index", align 4
@phm_irq_process._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str.2, i32 616, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: ERROR: System is going to shutdown due to GPU SW CTF!\0A\00", [33 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr.51 = internal global ptr @phm_irq_process._entry.49, section ".printk_index", align 4
@phm_irq_process._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.46, ptr @.str.2, i32 619, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: ERROR: GPU under temperature range detected!\0A\00", [42 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr.54 = internal global ptr @phm_irq_process._entry.52, section ".printk_index", align 4
@phm_irq_process._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.46, ptr @.str.2, i32 621, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"amdgpu: ERROR: GPU HW Critical Temperature Fault(aka CTF) detected!\0A\00", [59 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr.57 = internal global ptr @phm_irq_process._entry.55, section ".printk_index", align 4
@phm_irq_process._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.46, ptr @.str.2, i32 625, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: ERROR: System is going to shutdown due to GPU HW CTF!\0A\00", [33 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr.60 = internal global ptr @phm_irq_process._entry.58, section ".printk_index", align 4
@phm_irq_process._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 630, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr.62 = internal global ptr @phm_irq_process._entry.61, section ".printk_index", align 4
@phm_irq_process._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str.2, i32 635, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr.64 = internal global ptr @phm_irq_process._entry.63, section ".printk_index", align 4
@phm_irq_process._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.46, ptr @.str.2, i32 638, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr.66 = internal global ptr @phm_irq_process._entry.65, section ".printk_index", align 4
@phm_irq_process._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.46, ptr @.str.2, i32 640, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr.68 = internal global ptr @phm_irq_process._entry.67, section ".printk_index", align 4
@phm_irq_process._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.46, ptr @.str.2, i32 644, ptr @.str.47, ptr @.str.48 }, [40 x i8] zeroinitializer }, align 32
@phm_irq_process._entry_ptr.70 = internal global ptr @phm_irq_process._entry.69, section ".printk_index", align 4
@smu9_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @phm_irq_process }, [24 x i8] zeroinitializer }, align 32
@smu_get_voltage_dependency_table_ppt_v1._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu_get_voltage_dependency_table_ppt_v1 = private unnamed_addr constant [40 x i8] c"smu_get_voltage_dependency_table_ppt_v1\00", align 1
@smu_get_voltage_dependency_table_ppt_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.smu_get_voltage_dependency_table_ppt_v1, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu_get_voltage_dependency_table_ppt_v1._entry_ptr = internal global ptr @smu_get_voltage_dependency_table_ppt_v1._entry, section ".printk_index", align 4
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Voltage Lookup Table empty\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 15, i64 22]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 83, i64 230, i64 231]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 117, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 147, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 211, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 254, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 257, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 270, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 282, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 285, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 298, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 309, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 312, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 395, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 397, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 415, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 417, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 439, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 469, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 479, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 503, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 578, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 611, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 616, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 619, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 621, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 625, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 630, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 635, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 638, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 640, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 644, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"smu9_irq_funcs\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 651, i32 42 }
@___asan_gen_.299 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 703, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @phm_apply_dal_min_voltage_request._entry, ptr @phm_apply_dal_min_voltage_request._entry_ptr, ptr @phm_get_sclk_for_voltage_evv._entry, ptr @phm_get_sclk_for_voltage_evv._entry_ptr, ptr @phm_get_svi2_mvdd_voltage_table._entry, ptr @phm_get_svi2_mvdd_voltage_table._entry.13, ptr @phm_get_svi2_mvdd_voltage_table._entry.9, ptr @phm_get_svi2_mvdd_voltage_table._entry_ptr, ptr @phm_get_svi2_mvdd_voltage_table._entry_ptr.10, ptr @phm_get_svi2_mvdd_voltage_table._entry_ptr.14, ptr @phm_get_svi2_vdd_voltage_table._entry, ptr @phm_get_svi2_vdd_voltage_table._entry.25, ptr @phm_get_svi2_vdd_voltage_table._entry_ptr, ptr @phm_get_svi2_vdd_voltage_table._entry_ptr.26, ptr @phm_get_svi2_vddci_voltage_table._entry, ptr @phm_get_svi2_vddci_voltage_table._entry.17, ptr @phm_get_svi2_vddci_voltage_table._entry.20, ptr @phm_get_svi2_vddci_voltage_table._entry_ptr, ptr @phm_get_svi2_vddci_voltage_table._entry_ptr.18, ptr @phm_get_svi2_vddci_voltage_table._entry_ptr.21, ptr @phm_get_voltage_id._entry, ptr @phm_get_voltage_id._entry.32, ptr @phm_get_voltage_id._entry_ptr, ptr @phm_get_voltage_id._entry_ptr.33, ptr @phm_get_voltage_index._entry, ptr @phm_get_voltage_index._entry.29, ptr @phm_get_voltage_index._entry_ptr, ptr @phm_get_voltage_index._entry_ptr.30, ptr @phm_initializa_dynamic_state_adjustment_rule_settings._entry, ptr @phm_initializa_dynamic_state_adjustment_rule_settings._entry_ptr, ptr @phm_irq_process._entry, ptr @phm_irq_process._entry.49, ptr @phm_irq_process._entry.52, ptr @phm_irq_process._entry.55, ptr @phm_irq_process._entry.58, ptr @phm_irq_process._entry.61, ptr @phm_irq_process._entry.63, ptr @phm_irq_process._entry.65, ptr @phm_irq_process._entry.67, ptr @phm_irq_process._entry.69, ptr @phm_irq_process._entry_ptr, ptr @phm_irq_process._entry_ptr.51, ptr @phm_irq_process._entry_ptr.54, ptr @phm_irq_process._entry_ptr.57, ptr @phm_irq_process._entry_ptr.60, ptr @phm_irq_process._entry_ptr.62, ptr @phm_irq_process._entry_ptr.64, ptr @phm_irq_process._entry_ptr.66, ptr @phm_irq_process._entry_ptr.68, ptr @phm_irq_process._entry_ptr.70, ptr @phm_trim_voltage_table._entry, ptr @phm_trim_voltage_table._entry_ptr, ptr @phm_wait_on_indirect_register._entry, ptr @phm_wait_on_indirect_register._entry_ptr, ptr @phm_wait_on_register._entry, ptr @phm_wait_on_register._entry_ptr, ptr @smu_get_voltage_dependency_table_ppt_v1._entry, ptr @smu_get_voltage_dependency_table_ppt_v1._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @phm_trim_voltage_table._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @phm_get_svi2_mvdd_voltage_table._rs, ptr @.str.7, ptr @phm_get_svi2_mvdd_voltage_table._rs.8, ptr @.str.11, ptr @phm_get_svi2_mvdd_voltage_table._rs.12, ptr @.str.15, ptr @phm_get_svi2_vddci_voltage_table._rs, ptr @phm_get_svi2_vddci_voltage_table._rs.16, ptr @phm_get_svi2_vddci_voltage_table._rs.19, ptr @.str.22, ptr @phm_get_svi2_vdd_voltage_table._rs, ptr @.str.23, ptr @phm_get_svi2_vdd_voltage_table._rs.24, ptr @phm_get_voltage_index._rs, ptr @.str.27, ptr @phm_get_voltage_index._rs.28, ptr @phm_get_voltage_id._rs, ptr @phm_get_voltage_id._rs.31, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @phm_get_sclk_for_voltage_evv._rs, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @smu9_irq_funcs, ptr @smu_get_voltage_dependency_table_ppt_v1._rs, ptr @.str.71], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_wait_on_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_wait_on_indirect_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_trim_voltage_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_trim_voltage_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_mvdd_voltage_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_mvdd_voltage_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_mvdd_voltage_table._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_mvdd_voltage_table._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_mvdd_voltage_table._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_mvdd_voltage_table._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vddci_voltage_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vddci_voltage_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vddci_voltage_table._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vddci_voltage_table._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vddci_voltage_table._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vddci_voltage_table._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vdd_voltage_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vdd_voltage_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vdd_voltage_table._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_svi2_vdd_voltage_table._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_voltage_index._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_voltage_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_voltage_index._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_voltage_index._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_voltage_id._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_voltage_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_voltage_id._rs.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_voltage_id._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_sclk_for_voltage_evv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_get_sclk_for_voltage_evv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_initializa_dynamic_state_adjustment_rule_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_apply_dal_min_voltage_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phm_irq_process._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu9_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_get_voltage_dependency_table_ppt_v1._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_get_voltage_dependency_table_ppt_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @convert_to_vid(i16 noundef zeroext %vddc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vddc to i32
  %mul.neg = mul nsw i32 %conv, -4
  %sub = add nsw i32 %mul.neg, 6200
  %div = sdiv i32 %sub, 25
  %conv1 = trunc i32 %div to i8
  ret i8 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @convert_to_vddc(i8 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %vid to i16
  %mul.neg = mul nsw i16 %conv, -25
  %sub = add nsw i16 %mul.neg, 6200
  %div2 = sdiv i16 %sub, 4
  ret i16 %div2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_copy_clock_limits_array(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef writeonly %pptable_info_array, ptr nocapture noundef readonly %pptable_array, i32 noundef %power_saving_clock_count) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %power_saving_clock_count, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #17
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_saving_clock_count)
  %cmp111.not = icmp eq i32 %power_saving_clock_count, 0
  br i1 %cmp111.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %pptable_array, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx2 = getelementptr i32, ptr %call9.i.i, i32 %i.012
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %power_saving_clock_count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %4 = ptrtoint ptr %pptable_info_array to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %pptable_info_array, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_copy_overdrive_settings_limits_array(ptr nocapture noundef readnone %hwmgr, ptr nocapture noundef writeonly %pptable_info_array, ptr nocapture noundef readonly %pptable_array, i32 noundef %od_setting_count) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %od_setting_count, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #17
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %od_setting_count)
  %cmp111.not = icmp eq i32 %od_setting_count, 0
  br i1 %cmp111.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %pptable_array, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx2 = getelementptr i32, ptr %call9.i.i, i32 %i.012
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %od_setting_count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %4 = ptrtoint ptr %pptable_info_array to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %pptable_info_array, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @phm_set_field_to_u32(i32 noundef %offset, i32 noundef %original_data, i32 noundef %field, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = shl i32 %offset, 3
  %shl = and i32 %rem, 24
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %entry.if.end5_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then3
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shl1 = shl nuw i32 255, %shl
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shl4 = shl i32 65535, %shl
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then, %entry.if.end5_crit_edge
  %mask.0 = phi i32 [ %shl1, %if.then ], [ %shl4, %if.then3 ], [ 0, %entry.if.end5_crit_edge ]
  %neg = xor i32 %mask.0, -1
  %and = and i32 %neg, %original_data
  %shl6 = shl i32 %field, %shl
  %or = or i32 %and, %shl6
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_wait_on_register(ptr noundef readonly %hwmgr, i32 noundef %index, i32 noundef %value, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.do.end_crit_edge, label %for.cond.preheader

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.cond.preheader:                               ; preds = %lor.lhs.false
  %usec_timeout = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 21
  %2 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp223.not = icmp eq i32 %3, 0
  br i1 %cmp223.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  br label %cleanup

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call5 = tail call i32 %9(ptr noundef %5, i32 noundef %index) #14
  %10 = xor i32 %call5, %value
  %11 = and i32 %10, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end9:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #14
  %inc = add nuw i32 %i.024, 1
  %13 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usec_timeout, align 4
  %cmp2 = icmp ult i32 %inc, %14
  br i1 %cmp2, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.024, %for.body.for.end_crit_edge ], [ %inc, %if.end9.for.end_crit_edge ]
  %15 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %16)
  %cmp11 = icmp eq i32 %i.0.lcssa, %16
  %. = sext i1 %cmp11 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_wait_on_indirect_register(ptr noundef readonly %hwmgr, i32 noundef %indirect_port, i32 noundef %index, i32 noundef %value, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.i

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  br label %return

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void %5(ptr noundef nonnull %1, i32 noundef %indirect_port, i32 noundef %index) #14
  %add = add i32 %indirect_port, 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %cmp1.i = icmp eq ptr %7, null
  br i1 %cmp1.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %usec_timeout.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 21
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp223.not.i = icmp eq i32 %9, 0
  br i1 %cmp223.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  br label %return

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %if.end9.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call5.i = tail call i32 %15(ptr noundef %11, i32 noundef %add) #14
  %16 = xor i32 %call5.i, %mask
  %17 = and i32 %16, %value
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.i = icmp eq i32 %17, 0
  br i1 %cmp7.i, label %for.body.i.for.end.i_crit_edge, label %if.end9.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end9.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #14
  %inc.i = add nuw i32 %i.024.i, 1
  %19 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usec_timeout.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %20
  br i1 %cmp2.i, label %if.end9.i.for.body.i_crit_edge, label %if.end9.i.for.end.i_crit_edge

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %if.end9.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %if.end9.i.for.end.i_crit_edge ], [ %i.024.i, %for.body.i.for.end.i_crit_edge ]
  %21 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %22)
  %cmp11.i = icmp eq i32 %i.0.lcssa.i, %22
  %..i = sext i1 %cmp11.i to i32
  br label %return

return:                                           ; preds = %for.end.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end.i ], [ %..i, %for.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_wait_for_register_unequal(ptr noundef readonly %hwmgr, i32 noundef %index, i32 noundef %value, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %usec_timeout = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 21
  %2 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp222.not = icmp eq i32 %3, 0
  br i1 %cmp222.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = tail call i32 %9(ptr noundef %5, i32 noundef %index) #14
  %10 = xor i32 %call, %value
  %11 = and i32 %10, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.not = icmp eq i32 %11, 0
  br i1 %cmp6.not, label %if.end8, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end8:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #14
  %inc = add nuw i32 %i.023, 1
  %13 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usec_timeout, align 4
  %cmp2 = icmp ult i32 %inc, %14
  br i1 %cmp2, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.023, %for.body.for.end_crit_edge ], [ %inc, %if.end8.for.end_crit_edge ]
  %15 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %16)
  %cmp10 = icmp eq i32 %i.0.lcssa, %16
  %. = select i1 %cmp10, i32 -62, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_wait_for_indirect_register_unequal(ptr noundef readonly %hwmgr, i32 noundef %indirect_port, i32 noundef %index, i32 noundef %value, i32 noundef %mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.i

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void %5(ptr noundef nonnull %1, i32 noundef %indirect_port, i32 noundef %index) #14
  %add = add i32 %indirect_port, 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %cmp1.i = icmp eq ptr %7, null
  br i1 %cmp1.i, label %lor.lhs.false.i.return_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %usec_timeout.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 21
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp222.not.i = icmp eq i32 %9, 0
  br i1 %cmp222.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i = tail call i32 %15(ptr noundef %11, i32 noundef %add) #14
  %16 = xor i32 %call.i, %value
  %17 = and i32 %16, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.not.i = icmp eq i32 %17, 0
  br i1 %cmp6.not.i, label %if.end8.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end8.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #14
  %inc.i = add nuw i32 %i.023.i, 1
  %19 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usec_timeout.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %20
  br i1 %cmp2.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.for.end.i_crit_edge

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %if.end8.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %if.end8.i.for.end.i_crit_edge ], [ %i.023.i, %for.body.i.for.end.i_crit_edge ]
  %21 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %22)
  %cmp10.i = icmp eq i32 %i.0.lcssa.i, %22
  %..i = select i1 %cmp10.i, i32 -62, i32 0
  br label %return

return:                                           ; preds = %for.end.i, %lor.lhs.false.i.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %lor.lhs.false.i.return_crit_edge ], [ %..i, %for.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @phm_cf_want_uvd_power_gating(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i = icmp ne i32 %and1.i, 0
  ret i1 %cmp.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @phm_cf_want_vce_power_gating(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i = icmp ne i32 %and1.i, 0
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_trim_voltage_table(ptr noundef %vol_table) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %vol_table, null
  br i1 %cmp.not, label %if.then, label %do.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @phm_trim_voltage_table._rs, ptr noundef nonnull @__func__.phm_trim_voltage_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #18
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #19
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %do.end6.cleanup_crit_edge, label %if.end10

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %do.end6
  %mask_low = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 1
  %1 = ptrtoint ptr %mask_low to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask_low, align 4
  %mask_low11 = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %mask_low11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mask_low11, align 4
  %phase_delay = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 2
  %4 = ptrtoint ptr %phase_delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phase_delay, align 4
  %phase_delay12 = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %phase_delay12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %phase_delay12, align 8
  %7 = ptrtoint ptr %vol_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vol_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1374.not = icmp eq i32 %8, 0
  br i1 %cmp1374.not, label %if.end10.for.end43_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end43_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.075 = phi i32 [ %inc42, %for.inc41.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.075
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1672.not = icmp eq i32 %12, 0
  br i1 %cmp1672.not, label %for.body.if.then27.critedge_crit_edge, label %for.body.for.body17_crit_edge

for.body.for.body17_crit_edge:                    ; preds = %for.body
  br label %for.body17

for.body.if.then27.critedge_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27.critedge

for.cond14:                                       ; preds = %for.body17
  %inc = add nuw i32 %j.073, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.cond14.if.then27.critedge_crit_edge, label %for.cond14.for.body17_crit_edge

for.cond14.for.body17_crit_edge:                  ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17

for.cond14.if.then27.critedge_crit_edge:          ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27.critedge

for.body17:                                       ; preds = %for.cond14.for.body17_crit_edge, %for.body.for.body17_crit_edge
  %j.073 = phi i32 [ %inc, %for.cond14.for.body17_crit_edge ], [ 0, %for.body.for.body17_crit_edge ]
  %arrayidx19 = getelementptr %struct.pp_atomctrl_voltage_table, ptr %call7.i.i, i32 0, i32 3, i32 %j.073
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %14)
  %cmp22 = icmp eq i16 %10, %14
  br i1 %cmp22, label %for.body17.for.inc41_crit_edge, label %for.cond14

for.body17.for.inc41_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc41

if.then27.critedge:                               ; preds = %for.cond14.if.then27.critedge_crit_edge, %for.body.if.then27.critedge_crit_edge
  %arrayidx30 = getelementptr %struct.pp_atomctrl_voltage_table, ptr %call7.i.i, i32 0, i32 3, i32 %12
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %10, ptr %arrayidx30, align 4
  %smio_low = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.075, i32 1
  %16 = ptrtoint ptr %smio_low to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smio_low, align 4
  %smio_low37 = getelementptr %struct.pp_atomctrl_voltage_table, ptr %call7.i.i, i32 0, i32 3, i32 %12, i32 1
  %18 = ptrtoint ptr %smio_low37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %smio_low37, align 8
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call7.i.i, align 8
  %inc39 = add i32 %20, 1
  store i32 %inc39, ptr %call7.i.i, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %if.then27.critedge, %for.body17.for.inc41_crit_edge
  %inc42 = add nuw i32 %i.075, 1
  %exitcond77.not = icmp eq i32 %inc42, %8
  br i1 %exitcond77.not, label %for.inc41.for.end43_crit_edge, label %for.inc41.for.body_crit_edge

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc41.for.end43_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43

for.end43:                                        ; preds = %for.inc41.for.end43_crit_edge, %if.end10.for.end43_crit_edge
  %21 = call ptr @memcpy(ptr %vol_table, ptr %call7.i.i, i32 268)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %do.end6.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end43 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %do.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_svi2_mvdd_voltage_table(ptr noundef %vol_table, ptr nocapture noundef readonly %dep_table) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dep_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dep_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_svi2_mvdd_voltage_table._rs, ptr noundef nonnull @__func__.phm_get_svi2_mvdd_voltage_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #18
  br label %cleanup

do.body7:                                         ; preds = %entry
  %cmp8.not = icmp eq ptr %vol_table, null
  br i1 %cmp8.not, label %if.then9, label %do.end21

if.then9:                                         ; preds = %do.body7
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_svi2_mvdd_voltage_table._rs.8, ptr noundef nonnull @__func__.phm_get_svi2_mvdd_voltage_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %do.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11) #18
  br label %cleanup

do.end21:                                         ; preds = %do.body7
  %mask_low = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 1
  %2 = ptrtoint ptr %mask_low to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mask_low, align 4
  %phase_delay = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 2
  %3 = ptrtoint ptr %phase_delay to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %phase_delay, align 4
  %4 = ptrtoint ptr %dep_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dep_table, align 4
  %6 = ptrtoint ptr %vol_table to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %vol_table, align 4
  %7 = load i32, ptr %dep_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2563.not = icmp eq i32 %7, 0
  br i1 %cmp2563.not, label %do.end21.do.end6.i_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  br label %for.body

do.end21.do.end6.i_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end21.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end21.for.body_crit_edge ]
  %mvdd = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.064, i32 8
  %8 = ptrtoint ptr %mvdd to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mvdd, align 4
  %arrayidx27 = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.064
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arrayidx27, align 4
  %smio_low = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.064, i32 1
  %11 = ptrtoint ptr %smio_low to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %smio_low, align 4
  %inc = add nuw i32 %i.064, 1
  %12 = ptrtoint ptr %dep_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dep_table, align 4
  %cmp25 = icmp ult i32 %inc, %13
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.do.end6.i_crit_edge

for.body.do.end6.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6.i

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end6.i:                                        ; preds = %for.body.do.end6.i_crit_edge, %do.end21.do.end6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 268) #19
  %cmp8.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp8.i, label %if.then33, label %if.end10.i

if.end10.i:                                       ; preds = %do.end6.i
  %15 = ptrtoint ptr %mask_low to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask_low, align 4
  %mask_low11.i = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %mask_low11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mask_low11.i, align 4
  %18 = ptrtoint ptr %phase_delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phase_delay, align 4
  %phase_delay12.i = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %phase_delay12.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %phase_delay12.i, align 8
  %21 = ptrtoint ptr %vol_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vol_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1374.not.i = icmp eq i32 %22, 0
  br i1 %cmp1374.not.i, label %if.end10.i.phm_trim_voltage_table.exit.thread_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  br label %for.body.i

if.end10.i.phm_trim_voltage_table.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phm_trim_voltage_table.exit.thread

for.body.i:                                       ; preds = %for.inc41.i.for.body.i_crit_edge, %if.end10.i.for.body.i_crit_edge
  %i.075.i = phi i32 [ %inc42.i, %for.inc41.i.for.body.i_crit_edge ], [ 0, %if.end10.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.075.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1672.not.i = icmp eq i32 %26, 0
  br i1 %cmp1672.not.i, label %for.body.i.if.then27.critedge.i_crit_edge, label %for.body.i.for.body17.i_crit_edge

for.body.i.for.body17.i_crit_edge:                ; preds = %for.body.i
  br label %for.body17.i

for.body.i.if.then27.critedge.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27.critedge.i

for.cond14.i:                                     ; preds = %for.body17.i
  %inc.i = add nuw i32 %j.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.cond14.i.if.then27.critedge.i_crit_edge, label %for.cond14.i.for.body17.i_crit_edge

for.cond14.i.for.body17.i_crit_edge:              ; preds = %for.cond14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17.i

for.cond14.i.if.then27.critedge.i_crit_edge:      ; preds = %for.cond14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27.critedge.i

for.body17.i:                                     ; preds = %for.cond14.i.for.body17.i_crit_edge, %for.body.i.for.body17.i_crit_edge
  %j.073.i = phi i32 [ %inc.i, %for.cond14.i.for.body17.i_crit_edge ], [ 0, %for.body.i.for.body17.i_crit_edge ]
  %arrayidx19.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 3, i32 %j.073.i
  %27 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %28)
  %cmp22.i = icmp eq i16 %24, %28
  br i1 %cmp22.i, label %for.body17.i.for.inc41.i_crit_edge, label %for.cond14.i

for.body17.i.for.inc41.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc41.i

if.then27.critedge.i:                             ; preds = %for.cond14.i.if.then27.critedge.i_crit_edge, %for.body.i.if.then27.critedge.i_crit_edge
  %arrayidx30.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 3, i32 %26
  %29 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %24, ptr %arrayidx30.i, align 4
  %smio_low.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.075.i, i32 1
  %30 = ptrtoint ptr %smio_low.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %smio_low.i, align 4
  %smio_low37.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 3, i32 %26, i32 1
  %32 = ptrtoint ptr %smio_low37.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %smio_low37.i, align 8
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call7.i.i.i, align 8
  %inc39.i = add i32 %34, 1
  store i32 %inc39.i, ptr %call7.i.i.i, align 8
  br label %for.inc41.i

for.inc41.i:                                      ; preds = %if.then27.critedge.i, %for.body17.i.for.inc41.i_crit_edge
  %inc42.i = add nuw i32 %i.075.i, 1
  %exitcond77.not.i = icmp eq i32 %inc42.i, %22
  br i1 %exitcond77.not.i, label %for.inc41.i.phm_trim_voltage_table.exit.thread_crit_edge, label %for.inc41.i.for.body.i_crit_edge

for.inc41.i.for.body.i_crit_edge:                 ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc41.i.phm_trim_voltage_table.exit.thread_crit_edge: ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phm_trim_voltage_table.exit.thread

phm_trim_voltage_table.exit.thread:               ; preds = %for.inc41.i.phm_trim_voltage_table.exit.thread_crit_edge, %if.end10.i.phm_trim_voltage_table.exit.thread_crit_edge
  %35 = call ptr @memcpy(ptr %vol_table, ptr %call7.i.i.i, i32 268)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

if.then33:                                        ; preds = %do.end6.i
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_svi2_mvdd_voltage_table._rs.12, ptr noundef nonnull @__func__.phm_get_svi2_mvdd_voltage_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.cleanup_crit_edge, label %do.end39

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.15) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.then33.cleanup_crit_edge, %phm_trim_voltage_table.exit.thread, %do.end15, %if.then9.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %do.end15 ], [ -22, %if.then9.cleanup_crit_edge ], [ -22, %do.end39 ], [ -22, %if.then33.cleanup_crit_edge ], [ 0, %phm_trim_voltage_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_svi2_vddci_voltage_table(ptr noundef %vol_table, ptr nocapture noundef readonly %dep_table) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dep_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dep_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_svi2_vddci_voltage_table._rs, ptr noundef nonnull @__func__.phm_get_svi2_vddci_voltage_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #18
  br label %cleanup

do.body7:                                         ; preds = %entry
  %cmp8.not = icmp eq ptr %vol_table, null
  br i1 %cmp8.not, label %if.then9, label %do.end21

if.then9:                                         ; preds = %do.body7
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_svi2_vddci_voltage_table._rs.16, ptr noundef nonnull @__func__.phm_get_svi2_vddci_voltage_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %do.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11) #18
  br label %cleanup

do.end21:                                         ; preds = %do.body7
  %mask_low = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 1
  %2 = ptrtoint ptr %mask_low to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mask_low, align 4
  %phase_delay = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 2
  %3 = ptrtoint ptr %phase_delay to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %phase_delay, align 4
  %4 = ptrtoint ptr %dep_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dep_table, align 4
  %6 = ptrtoint ptr %vol_table to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %vol_table, align 4
  %7 = load i32, ptr %dep_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2563.not = icmp eq i32 %7, 0
  br i1 %cmp2563.not, label %do.end21.do.end6.i_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  br label %for.body

do.end21.do.end6.i_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end21.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end21.for.body_crit_edge ]
  %vddci = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %i.064, i32 7
  %8 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vddci, align 2
  %arrayidx27 = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.064
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arrayidx27, align 4
  %smio_low = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.064, i32 1
  %11 = ptrtoint ptr %smio_low to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %smio_low, align 4
  %inc = add nuw i32 %i.064, 1
  %12 = ptrtoint ptr %dep_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dep_table, align 4
  %cmp25 = icmp ult i32 %inc, %13
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.do.end6.i_crit_edge

for.body.do.end6.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6.i

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end6.i:                                        ; preds = %for.body.do.end6.i_crit_edge, %do.end21.do.end6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 268) #19
  %cmp8.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp8.i, label %if.then33, label %if.end10.i

if.end10.i:                                       ; preds = %do.end6.i
  %15 = ptrtoint ptr %mask_low to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask_low, align 4
  %mask_low11.i = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %mask_low11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mask_low11.i, align 4
  %18 = ptrtoint ptr %phase_delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phase_delay, align 4
  %phase_delay12.i = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %phase_delay12.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %phase_delay12.i, align 8
  %21 = ptrtoint ptr %vol_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vol_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1374.not.i = icmp eq i32 %22, 0
  br i1 %cmp1374.not.i, label %if.end10.i.phm_trim_voltage_table.exit.thread_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  br label %for.body.i

if.end10.i.phm_trim_voltage_table.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phm_trim_voltage_table.exit.thread

for.body.i:                                       ; preds = %for.inc41.i.for.body.i_crit_edge, %if.end10.i.for.body.i_crit_edge
  %i.075.i = phi i32 [ %inc42.i, %for.inc41.i.for.body.i_crit_edge ], [ 0, %if.end10.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.075.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1672.not.i = icmp eq i32 %26, 0
  br i1 %cmp1672.not.i, label %for.body.i.if.then27.critedge.i_crit_edge, label %for.body.i.for.body17.i_crit_edge

for.body.i.for.body17.i_crit_edge:                ; preds = %for.body.i
  br label %for.body17.i

for.body.i.if.then27.critedge.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27.critedge.i

for.cond14.i:                                     ; preds = %for.body17.i
  %inc.i = add nuw i32 %j.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.cond14.i.if.then27.critedge.i_crit_edge, label %for.cond14.i.for.body17.i_crit_edge

for.cond14.i.for.body17.i_crit_edge:              ; preds = %for.cond14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17.i

for.cond14.i.if.then27.critedge.i_crit_edge:      ; preds = %for.cond14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27.critedge.i

for.body17.i:                                     ; preds = %for.cond14.i.for.body17.i_crit_edge, %for.body.i.for.body17.i_crit_edge
  %j.073.i = phi i32 [ %inc.i, %for.cond14.i.for.body17.i_crit_edge ], [ 0, %for.body.i.for.body17.i_crit_edge ]
  %arrayidx19.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 3, i32 %j.073.i
  %27 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %28)
  %cmp22.i = icmp eq i16 %24, %28
  br i1 %cmp22.i, label %for.body17.i.for.inc41.i_crit_edge, label %for.cond14.i

for.body17.i.for.inc41.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc41.i

if.then27.critedge.i:                             ; preds = %for.cond14.i.if.then27.critedge.i_crit_edge, %for.body.i.if.then27.critedge.i_crit_edge
  %arrayidx30.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 3, i32 %26
  %29 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %24, ptr %arrayidx30.i, align 4
  %smio_low.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.075.i, i32 1
  %30 = ptrtoint ptr %smio_low.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %smio_low.i, align 4
  %smio_low37.i = getelementptr %struct.pp_atomctrl_voltage_table, ptr %call7.i.i.i, i32 0, i32 3, i32 %26, i32 1
  %32 = ptrtoint ptr %smio_low37.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %smio_low37.i, align 8
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call7.i.i.i, align 8
  %inc39.i = add i32 %34, 1
  store i32 %inc39.i, ptr %call7.i.i.i, align 8
  br label %for.inc41.i

for.inc41.i:                                      ; preds = %if.then27.critedge.i, %for.body17.i.for.inc41.i_crit_edge
  %inc42.i = add nuw i32 %i.075.i, 1
  %exitcond77.not.i = icmp eq i32 %inc42.i, %22
  br i1 %exitcond77.not.i, label %for.inc41.i.phm_trim_voltage_table.exit.thread_crit_edge, label %for.inc41.i.for.body.i_crit_edge

for.inc41.i.for.body.i_crit_edge:                 ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc41.i.phm_trim_voltage_table.exit.thread_crit_edge: ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phm_trim_voltage_table.exit.thread

phm_trim_voltage_table.exit.thread:               ; preds = %for.inc41.i.phm_trim_voltage_table.exit.thread_crit_edge, %if.end10.i.phm_trim_voltage_table.exit.thread_crit_edge
  %35 = call ptr @memcpy(ptr %vol_table, ptr %call7.i.i.i, i32 268)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

if.then33:                                        ; preds = %do.end6.i
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_svi2_vddci_voltage_table._rs.19, ptr noundef nonnull @__func__.phm_get_svi2_vddci_voltage_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.cleanup_crit_edge, label %do.end39

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.then33.cleanup_crit_edge, %phm_trim_voltage_table.exit.thread, %do.end15, %if.then9.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %do.end15 ], [ -22, %if.then9.cleanup_crit_edge ], [ -22, %do.end39 ], [ -22, %if.then33.cleanup_crit_edge ], [ 0, %phm_trim_voltage_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_svi2_vdd_voltage_table(ptr noundef %vol_table, ptr nocapture noundef readonly %lookup_table) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lookup_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lookup_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_svi2_vdd_voltage_table._rs, ptr noundef nonnull @__func__.phm_get_svi2_vdd_voltage_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body7:                                         ; preds = %entry
  %cmp8.not = icmp eq ptr %vol_table, null
  br i1 %cmp8.not, label %if.then9, label %do.end21

if.then9:                                         ; preds = %do.body7
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_svi2_vdd_voltage_table._rs.24, ptr noundef nonnull @__func__.phm_get_svi2_vdd_voltage_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %if.then9.cleanup.sink.split_crit_edge

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end21:                                         ; preds = %do.body7
  %mask_low = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 1
  %2 = ptrtoint ptr %mask_low to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mask_low, align 4
  %phase_delay = getelementptr inbounds %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 2
  %3 = ptrtoint ptr %phase_delay to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %phase_delay, align 4
  %4 = ptrtoint ptr %lookup_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lookup_table, align 4
  %6 = ptrtoint ptr %vol_table to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %vol_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2542.not = icmp eq i32 %5, 0
  br i1 %cmp2542.not, label %do.end21.cleanup_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  br label %for.body

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end21.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end21.for.body_crit_edge ]
  %us_vdd = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %lookup_table, i32 0, i32 1, i32 %i.043, i32 1
  %7 = ptrtoint ptr %us_vdd to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %us_vdd, align 2
  %arrayidx27 = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.043
  %9 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx27, align 4
  %smio_low = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.043, i32 1
  %10 = ptrtoint ptr %smio_low to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %smio_low, align 4
  %inc = add nuw i32 %i.043, 1
  %11 = ptrtoint ptr %vol_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vol_table, align 4
  %cmp25 = icmp ult i32 %inc, %12
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then9.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.23, %if.then.cleanup.sink.split_crit_edge ], [ @.str.11, %if.then9.cleanup.sink.split_crit_edge ]
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.11.sink) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %do.end21.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ 0, %do.end21.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phm_trim_voltage_table_to_fit_state_table(i32 noundef %max_vol_steps, ptr nocapture noundef %vol_table) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vol_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vol_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %max_vol_steps)
  %cmp.not = icmp ugt i32 %1, %max_vol_steps
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %1, %max_vol_steps
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_vol_steps)
  %cmp217.not = icmp eq i32 %max_vol_steps, 0
  br i1 %cmp217.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %i.018
  %add = add i32 %sub, %i.018
  %arrayidx4 = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vol_table, i32 0, i32 3, i32 %add
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %arrayidx4, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %max_vol_steps
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %5 = ptrtoint ptr %vol_table to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %max_vol_steps, ptr %vol_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_reset_single_dpm_table(ptr nocapture noundef %table, i32 noundef %count, i32 noundef %max) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 %max)
  %1 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp310.not = icmp eq i32 %0, 0
  br i1 %cmp310.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vi_dpm_table, ptr %table, i32 0, i32 1, i32 %i.011
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.011, 1
  %3 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %table, align 4
  %cmp3 = icmp ult i32 %inc, %4
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @phm_setup_pcie_table_entry(ptr nocapture noundef writeonly %table, i32 noundef %index, i32 noundef %pcie_gen, i32 noundef %pcie_lanes) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vi_dpm_table, ptr %table, i32 0, i32 1, i32 %index
  %value = getelementptr %struct.vi_dpm_table, ptr %table, i32 0, i32 1, i32 %index, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %pcie_gen, ptr %value, align 4
  %param1 = getelementptr %struct.vi_dpm_table, ptr %table, i32 0, i32 1, i32 %index, i32 2
  %1 = ptrtoint ptr %param1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pcie_lanes, ptr %param1, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_dpm_level_enable_mask_value(ptr nocapture noundef readonly %table) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %mask.09 = phi i32 [ %mask.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.08 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %shl = shl i32 %mask.09, 1
  %sub = add nsw i32 %i.08, -1
  %arrayidx = getelementptr %struct.vi_dpm_table, ptr %table, i32 0, i32 1, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4, !range !158
  %4 = zext i8 %3 to i32
  %mask.1 = or i32 %shl, %4
  %cmp = icmp ugt i32 %i.08, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %mask.1, %for.body.for.end_crit_edge ]
  ret i32 %mask.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @phm_get_voltage_index(ptr noundef readonly %lookup_table, i16 noundef zeroext %voltage) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %lookup_table, null
  br i1 %cmp.not, label %if.then, label %do.body9

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_voltage_index._rs, ptr noundef nonnull @__func__.phm_get_voltage_index) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body9:                                         ; preds = %entry
  %0 = ptrtoint ptr %lookup_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lookup_table, align 4
  %conv10 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp11.not = icmp eq i32 %conv10, 0
  br i1 %cmp11.not, label %if.then13, label %do.body9.for.body_crit_edge

do.body9.for.body_crit_edge:                      ; preds = %do.body9
  br label %for.body

if.then13:                                        ; preds = %do.body9
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_voltage_index._rs.28, ptr noundef nonnull @__func__.phm_get_voltage_index) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.cleanup_crit_edge, label %if.then13.cleanup.sink.split_crit_edge

if.then13.cleanup.sink.split_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body9.for.body_crit_edge
  %conv2649 = phi i32 [ %conv26, %for.inc.for.body_crit_edge ], [ 0, %do.body9.for.body_crit_edge ]
  %i.048 = phi i8 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body9.for.body_crit_edge ]
  %us_vdd = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %lookup_table, i32 0, i32 1, i32 %conv2649, i32 1
  %2 = ptrtoint ptr %us_vdd to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %us_vdd, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %voltage)
  %cmp32.not = icmp ult i16 %3, %voltage
  br i1 %cmp32.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i8 %i.048, 1
  %conv26 = zext i8 %inc to i32
  %cmp28 = icmp ugt i32 %1, %conv26
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then13.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.27) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %i.048, %for.inc.cleanup_crit_edge ], [ %i.048, %for.body.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @phm_get_voltage_id(ptr noundef readonly %voltage_table, i32 noundef %voltage) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %voltage_table, null
  br i1 %cmp.not, label %if.then, label %do.body9

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_voltage_id._rs, ptr noundef nonnull @__func__.phm_get_voltage_id) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #18
  br label %cleanup

do.body9:                                         ; preds = %entry
  %0 = ptrtoint ptr %voltage_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %voltage_table, align 4
  %conv10 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp11.not = icmp eq i32 %conv10, 0
  br i1 %cmp11.not, label %if.then13, label %for.body.preheader

for.body.preheader:                               ; preds = %do.body9
  %2 = trunc i32 %1 to i8
  %3 = trunc i32 %1 to i8
  br label %for.body

if.then13:                                        ; preds = %do.body9
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_voltage_id._rs.31, ptr noundef nonnull @__func__.phm_get_voltage_id) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.cleanup_crit_edge, label %do.end19

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %conv2648 = phi i32 [ %conv26, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.047 = phi i8 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.pp_atomctrl_voltage_table, ptr %voltage_table, i32 0, i32 3, i32 %conv2648
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %conv30 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30, i32 %voltage)
  %cmp31.not = icmp ult i32 %conv30, %voltage
  br i1 %cmp31.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i8 %i.047, 1
  %conv26 = zext i8 %inc to i32
  %cmp28 = icmp ult i8 %inc, %3
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo = add i8 %2, -1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %do.end19, %if.then13.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ %phi.bo, %for.end ], [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.end19 ], [ 0, %if.then13.cleanup_crit_edge ], [ %i.047, %for.body.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @phm_find_closest_vddci(ptr nocapture noundef readonly %vddci_table, i16 noundef zeroext %vddci) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vddci_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vddci_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23.not = icmp eq i32 %1, 0
  br i1 %cmp23.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vddci_table, i32 0, i32 3, i32 %i.024
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %vddci)
  %cmp2.not = icmp ult i16 %3, %vddci
  br i1 %cmp2.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %do.body.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo = add i32 %1, -1
  br label %do.body

do.body:                                          ; preds = %do.body.loopexit, %entry.do.body_crit_edge
  %i.0.lcssa = phi i32 [ -1, %entry.do.body_crit_edge ], [ %phi.bo, %do.body.loopexit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phm_find_closest_vddci.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phm_find_closest_vddci, %if.then9)) #14
          to label %do.end [label %if.then9], !srcloc !159

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phm_find_closest_vddci.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.37) #14
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %arrayidx12 = getelementptr %struct.pp_atomctrl_voltage_table, ptr %vddci_table, i32 0, i32 3, i32 %i.0.lcssa
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx12, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %do.end ], [ %3, %for.body.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_find_boot_level(ptr nocapture noundef readonly %table, i32 noundef %value, ptr nocapture noundef writeonly %boot_level) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %result.08 = phi i32 [ %result.1, %for.inc.for.body_crit_edge ], [ -22, %entry.for.body_crit_edge ]
  %value1 = getelementptr %struct.vi_dpm_table, ptr %table, i32 0, i32 1, i32 %i.09, i32 1
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %value)
  %cmp2 = icmp eq i32 %3, %value
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %boot_level to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.09, ptr %boot_level, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %result.1 = phi i32 [ 0, %if.then ], [ %result.08, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.09, 1
  %5 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %table, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %result.0.lcssa = phi i32 [ -22, %entry.for.end_crit_edge ], [ %result.1, %for.inc.for.end_crit_edge ]
  ret i32 %result.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_sclk_for_voltage_evv(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef readonly %lookup_table, i16 noundef zeroext %virtual_voltage_id, ptr nocapture noundef writeonly %sclk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lookup_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lookup_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %2 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pptable, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp854.not = icmp eq i32 %7, 0
  br i1 %cmp854.not, label %for.cond.preheader.do.body26_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body26_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body26

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @phm_get_sclk_for_voltage_evv._rs, ptr noundef nonnull @__func__.phm_get_sclk_for_voltage_evv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.38) #18
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i8 %entry_id.055, 1
  %conv = zext i8 %inc to i32
  %cmp8 = icmp ugt i32 %7, %conv
  br i1 %cmp8, label %for.cond.for.body_crit_edge, label %for.cond.do.body26_crit_edge

for.cond.do.body26_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body26

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv56 = phi i32 [ %conv, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %entry_id.055 = phi i8 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %vddInd = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv56, i32 1
  %8 = ptrtoint ptr %vddInd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vddInd, align 4
  %idxprom12 = zext i8 %9 to i32
  %us_vdd = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %lookup_table, i32 0, i32 1, i32 %idxprom12, i32 1
  %10 = ptrtoint ptr %us_vdd to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %us_vdd, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %virtual_voltage_id)
  %cmp16 = icmp eq i16 %11, %virtual_voltage_id
  br i1 %cmp16, label %if.end36, label %for.cond

do.body26:                                        ; preds = %for.cond.do.body26_crit_edge, %for.cond.preheader.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phm_get_sclk_for_voltage_evv.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phm_get_sclk_for_voltage_evv, %if.then32)) #14
          to label %cleanup [label %if.then32], !srcloc !159

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phm_get_sclk_for_voltage_evv.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end36:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx40 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv56
  %12 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx40, align 4
  %14 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then32, %do.body26, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then32 ], [ -22, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_initializa_dynamic_state_adjustment_rule_settings(ptr nocapture noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %0 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pptable, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #19
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #18
  br label %cleanup

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %call7.i.i, align 8
  %entries = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %entries, align 4
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %5 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id, align 4
  %7 = add i32 %6, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %8 = icmp ult i32 %7, 4
  %.sink89 = select i1 %8, i32 700, i32 0
  %.sink88 = select i1 %8, i32 740, i32 720
  %.sink = select i1 %8, i32 800, i32 810
  %9 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink89, ptr %9, align 8
  %11 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %11, align 4
  %13 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink88, ptr %13, align 8
  %15 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %15, align 4
  %17 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i, i32 6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %17, align 8
  %arrayidx48 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i, i32 7
  %19 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %arrayidx48, align 4
  %v52 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %call7.i.i, i32 8
  %20 = ptrtoint ptr %v52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 900, ptr %v52, align 8
  %cmp53.not = icmp eq ptr %1, null
  br i1 %cmp53.not, label %if.else.if.end55_crit_edge, label %if.then54

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %vddc_dep_on_dal_pwrl = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %vddc_dep_on_dal_pwrl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %vddc_dep_on_dal_pwrl, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.else.if.end55_crit_edge
  %vddc_dep_on_dal_pwrl56 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 4
  %22 = ptrtoint ptr %vddc_dep_on_dal_pwrl56 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %vddc_dep_on_dal_pwrl56, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end55 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_lowest_enabled_level(ptr nocapture noundef readnone %hwmgr, i32 noundef %mask) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %level.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %shl = shl nuw i32 1, %level.0
  %and = and i32 %shl, %mask
  %cmp = icmp eq i32 %and, 0
  %inc = add i32 %level.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 %level.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phm_apply_dal_min_voltage_request(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %0 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pptable, align 4
  %vddc_dep_on_dal_pwrl = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %vddc_dep_on_dal_pwrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vddc_dep_on_dal_pwrl, align 4
  %dal_power_level1 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 28
  %4 = ptrtoint ptr %dal_power_level1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dal_power_level1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp5 = icmp ugt i32 %5, 4
  %or.cond56 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond56, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %i.059
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp8 = icmp eq i32 %5, %9
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %v = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %3, i32 0, i32 1, i32 %i.059, i32 1
  %10 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then9
  %req_vddc.0 = phi i32 [ %11, %if.then9 ], [ 0, %for.inc.for.end_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1560.not = icmp eq i32 %15, 0
  br i1 %cmp1560.not, label %for.end.do.end_crit_edge, label %for.end.for.body16_crit_edge

for.end.for.body16_crit_edge:                     ; preds = %for.end
  br label %for.body16

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.cond13:                                       ; preds = %for.body16
  %inc28 = add nuw i32 %i.161, 1
  %exitcond64.not = icmp eq i32 %inc28, %15
  br i1 %exitcond64.not, label %for.cond13.do.end_crit_edge, label %for.cond13.for.body16_crit_edge

for.cond13.for.body16_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16

for.cond13.do.end_crit_edge:                      ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.body16:                                       ; preds = %for.cond13.for.body16_crit_edge, %for.end.for.body16_crit_edge
  %i.161 = phi i32 [ %inc28, %for.cond13.for.body16_crit_edge ], [ 0, %for.end.for.body16_crit_edge ]
  %vddc = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %13, i32 0, i32 1, i32 %i.161, i32 5
  %16 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vddc, align 2
  %conv = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %req_vddc.0, i32 %conv)
  %cmp19.not = icmp ugt i32 %req_vddc.0, %conv
  br i1 %cmp19.not, label %for.cond13, label %if.then21

if.then21:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16
  %conv.le = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %conv.le, 2
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 351, i32 noundef %mul, ptr noundef null) #14
  br label %cleanup

do.end:                                           ; preds = %for.cond13.do.end_crit_edge, %for.end.do.end_crit_edge
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then21, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_get_voltage_evv_on_sclk(ptr noundef %hwmgr, i8 noundef zeroext %voltage_type, i32 noundef %sclk, i16 noundef zeroext %id, ptr noundef %voltage) local_unnamed_addr #1 align 64 {
entry:
  %vol = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vol) #14
  %0 = ptrtoint ptr %vol to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vol, align 4, !annotation !160
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %1 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %2)
  %cmp = icmp ult i32 %2, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @atomctrl_get_voltage_evv(ptr noundef %hwmgr, i16 noundef zeroext %id, ptr noundef %voltage) #14
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %cmp2 = icmp ult i32 %2, 15
  br i1 %cmp2, label %if.then3, label %if.else11

if.then3:                                         ; preds = %if.else
  %call4 = tail call i32 @atomctrl_get_voltage_evv_on_sclk(ptr noundef %hwmgr, i8 noundef zeroext %voltage_type, i32 noundef %sclk, i16 noundef zeroext %id, ptr noundef %voltage) #14
  %3 = ptrtoint ptr %voltage to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %voltage, align 2
  %5 = add i16 %4, -2000
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1999, i16 %5)
  %6 = icmp ult i16 %5, -1999
  br i1 %6, label %if.then10, label %if.then3.if.end15_crit_edge

if.then3.if.end15_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1150, ptr %voltage, align 2
  br label %if.end15

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = call i32 @atomctrl_get_voltage_evv_on_sclk_ai(ptr noundef %hwmgr, i8 noundef zeroext %voltage_type, i32 noundef %sclk, i16 noundef zeroext %id, ptr noundef nonnull %vol) #14
  %8 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vol, align 4
  %div = udiv i32 %9, 100
  %conv13 = trunc i32 %div to i16
  %10 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv13, ptr %voltage, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then10, %if.then3.if.end15_crit_edge, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then10 ], [ %call12, %if.else11 ], [ %call4, %if.then3.if.end15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_voltage_evv(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_voltage_evv_on_sclk(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_voltage_evv_on_sclk_ai(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phm_irq_process(ptr nocapture noundef readonly %adev, ptr nocapture readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %client_id2 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %client_id2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id2, align 4
  %src_id3 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %src_id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_id3, align 8
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %1, label %entry.if.end61_crit_edge [
    i32 0, label %if.then
    i32 15, label %if.then31
    i32 22, label %do.end53
  ]

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then:                                          ; preds = %entry
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %3, label %if.then.if.end61_crit_edge [
    i32 230, label %do.end
    i32 231, label %do.end14
    i32 83, label %do.end21
  ]

if.then.if.end61_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %7, ptr noundef nonnull @.str.45) #18
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %9, ptr noundef nonnull @.str.50) #18
  tail call void @orderly_poweroff(i1 noundef zeroext true) #14
  br label %if.end61

do.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %11, ptr noundef nonnull @.str.53) #18
  br label %if.end61

do.end21:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %13, ptr noundef nonnull @.str.56) #18
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %15, ptr noundef nonnull @.str.59) #18
  tail call void @orderly_poweroff(i1 noundef zeroext true) #14
  br label %if.end61

if.then31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp32 = icmp eq i32 %3, 0
  %16 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev, align 8
  br i1 %cmp32, label %do.end36, label %do.end45

do.end36:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %17, ptr noundef nonnull @.str.45) #18
  %18 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %19, ptr noundef nonnull @.str.50) #18
  tail call void @orderly_poweroff(i1 noundef zeroext true) #14
  br label %if.end61

do.end45:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %17, ptr noundef nonnull @.str.53) #18
  br label %if.end61

do.end53:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %21, ptr noundef nonnull @.str.56) #18
  %22 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %23, ptr noundef nonnull @.str.59) #18
  tail call void @orderly_poweroff(i1 noundef zeroext true) #14
  br label %if.end61

if.end61:                                         ; preds = %do.end53, %do.end45, %do.end36, %do.end21, %do.end14, %do.end, %if.then.if.end61_crit_edge, %entry.if.end61_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu9_register_irq_handlers(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %funcs = getelementptr inbounds %struct.amdgpu_irq_src, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @smu9_irq_funcs, ptr %funcs, align 8
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %call1 = tail call i32 @amdgpu_irq_add_id(ptr noundef %3, i32 noundef 15, i32 noundef 0, ptr noundef nonnull %call7.i.i) #14
  %4 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr, align 4
  %call3 = tail call i32 @amdgpu_irq_add_id(ptr noundef %5, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %call7.i.i) #14
  %6 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr, align 4
  %call5 = tail call i32 @amdgpu_irq_add_id(ptr noundef %7, i32 noundef 22, i32 noundef 83, ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smu_atom_get_data_table(ptr nocapture noundef readonly %dev, i32 noundef %table, ptr noundef %size, ptr noundef %frev, ptr noundef %crev) local_unnamed_addr #1 align 64 {
entry:
  %data_start = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_start) #14
  %0 = ptrtoint ptr %data_start to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_start, align 2, !annotation !160
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %dev, i32 0, i32 79
  %1 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %2, i32 noundef %table, ptr noundef %size, ptr noundef %frev, ptr noundef %crev, ptr noundef nonnull %data_start) #14
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info, align 8
  %bios = getelementptr inbounds %struct.atom_context, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bios, align 4
  %7 = ptrtoint ptr %data_start to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data_start, align 2
  %conv = zext i16 %8 to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %conv
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.then ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_start) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_get_voltage_dependency_table_ppt_v1(ptr nocapture noundef readonly %allowed_dep_table, ptr nocapture noundef %dep_table) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %allowed_dep_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %allowed_dep_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.then, label %for.body.preheader

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smu_get_voltage_dependency_table_ppt_v1._rs, ptr noundef nonnull @__func__.smu_get_voltage_dependency_table_ppt_v1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.71) #18
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %dep_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dep_table, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %conv124 = phi i32 [ %conv, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0123 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx14 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx14, align 4
  %vddInd = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124, i32 1
  %6 = ptrtoint ptr %vddInd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vddInd, align 4
  %vddInd22 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124, i32 1
  %8 = ptrtoint ptr %vddInd22 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %vddInd22, align 4
  %vdd_offset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124, i32 4
  %9 = ptrtoint ptr %vdd_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vdd_offset, align 4
  %vdd_offset29 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124, i32 4
  %11 = ptrtoint ptr %vdd_offset29 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %vdd_offset29, align 4
  %vddc = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124, i32 5
  %12 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vddc, align 2
  %vddc36 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124, i32 5
  %14 = ptrtoint ptr %vddc36 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %vddc36, align 2
  %vddgfx = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124, i32 6
  %15 = ptrtoint ptr %vddgfx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vddgfx, align 4
  %vddgfx43 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124, i32 6
  %17 = ptrtoint ptr %vddgfx43 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vddgfx43, align 4
  %vddci = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124, i32 7
  %18 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vddci, align 2
  %vddci50 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124, i32 7
  %20 = ptrtoint ptr %vddci50 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %vddci50, align 2
  %mvdd = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124, i32 8
  %21 = ptrtoint ptr %mvdd to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mvdd, align 4
  %mvdd57 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124, i32 8
  %23 = ptrtoint ptr %mvdd57 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %mvdd57, align 4
  %phases = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124, i32 9
  %24 = ptrtoint ptr %phases to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phases, align 2
  %phases64 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124, i32 9
  %26 = ptrtoint ptr %phases64 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %phases64, align 2
  %cks_enable = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124, i32 10
  %27 = ptrtoint ptr %cks_enable to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cks_enable, align 1
  %cks_enable71 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124, i32 10
  %29 = ptrtoint ptr %cks_enable71 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %cks_enable71, align 1
  %cks_voffset = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %allowed_dep_table, i32 0, i32 1, i32 %conv124, i32 11
  %30 = ptrtoint ptr %cks_voffset to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cks_voffset, align 4
  %cks_voffset78 = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %dep_table, i32 0, i32 1, i32 %conv124, i32 11
  %32 = ptrtoint ptr %cks_voffset78 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %cks_voffset78, align 4
  %inc = add i8 %i.0123, 1
  %conv = zext i8 %inc to i32
  %cmp10 = icmp ugt i32 %1, %conv
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_set_watermarks_for_clocks_ranges(ptr noundef writeonly %wt_table, ptr noundef readonly %wm_with_clock_ranges) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wt_table, null
  %tobool1.not = icmp eq ptr %wm_with_clock_ranges, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %wm_with_clock_ranges to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wm_with_clock_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2:                                   ; preds = %if.end
  %num_wm_mcif_sets = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 1
  %2 = ptrtoint ptr %num_wm_mcif_sets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_wm_mcif_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp3 = icmp ugt i32 %3, 4
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false2
  %4 = ptrtoint ptr %wm_with_clock_ranges to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wm_with_clock_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7134.not = icmp eq i32 %5, 0
  br i1 %cmp7134.not, label %for.cond.preheader.for.cond37.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond37.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond37.preheader

for.cond37.preheaderthread-pre-split:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %num_wm_mcif_sets to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %num_wm_mcif_sets, align 4
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond37.preheaderthread-pre-split, %for.cond.preheader.for.cond37.preheader_crit_edge
  %7 = phi i32 [ %.pr, %for.cond37.preheaderthread-pre-split ], [ %3, %for.cond.preheader.for.cond37.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp39136.not = icmp eq i32 %7, 0
  br i1 %cmp39136.not, label %for.cond37.preheader.cleanup_crit_edge, label %for.cond37.preheader.for.body41_crit_edge

for.cond37.preheader.for.body41_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body41

for.cond37.preheader.cleanup_crit_edge:           ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 2, i32 %i.0135
  %wm_min_dcfclk_clk_in_khz = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 2, i32 %i.0135, i32 1
  %8 = ptrtoint ptr %wm_min_dcfclk_clk_in_khz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wm_min_dcfclk_clk_in_khz, align 4
  %div = udiv i32 %9, 1000
  %conv = trunc i32 %div to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %arrayidx9 = getelementptr [2 x [4 x %struct.watermark_row_generic_t]], ptr %wt_table, i32 0, i32 1, i32 %i.0135
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx9, align 4
  %wm_max_dcfclk_clk_in_khz = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 2, i32 %i.0135, i32 2
  %12 = ptrtoint ptr %wm_max_dcfclk_clk_in_khz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wm_max_dcfclk_clk_in_khz, align 4
  %div12 = udiv i32 %13, 1000
  %conv13 = trunc i32 %div12 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %MaxClock = getelementptr [2 x [4 x %struct.watermark_row_generic_t]], ptr %wt_table, i32 0, i32 1, i32 %i.0135, i32 1
  %15 = ptrtoint ptr %MaxClock to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %MaxClock, align 2
  %wm_min_mem_clk_in_khz = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 2, i32 %i.0135, i32 3
  %16 = ptrtoint ptr %wm_min_mem_clk_in_khz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wm_min_mem_clk_in_khz, align 4
  %div19 = udiv i32 %17, 1000
  %conv20 = trunc i32 %div19 to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %MinUclk = getelementptr [2 x [4 x %struct.watermark_row_generic_t]], ptr %wt_table, i32 0, i32 1, i32 %i.0135, i32 2
  %19 = ptrtoint ptr %MinUclk to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %MinUclk, align 4
  %wm_max_mem_clk_in_khz = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 2, i32 %i.0135, i32 4
  %20 = ptrtoint ptr %wm_max_mem_clk_in_khz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wm_max_mem_clk_in_khz, align 4
  %div26 = udiv i32 %21, 1000
  %conv27 = trunc i32 %div26 to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %MaxUclk = getelementptr [2 x [4 x %struct.watermark_row_generic_t]], ptr %wt_table, i32 0, i32 1, i32 %i.0135, i32 3
  %23 = ptrtoint ptr %MaxUclk to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %MaxUclk, align 2
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %conv33 = trunc i32 %25 to i8
  %WmSetting = getelementptr [2 x [4 x %struct.watermark_row_generic_t]], ptr %wt_table, i32 0, i32 1, i32 %i.0135, i32 4
  %26 = ptrtoint ptr %WmSetting to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv33, ptr %WmSetting, align 4
  %inc = add nuw i32 %i.0135, 1
  %27 = ptrtoint ptr %wm_with_clock_ranges to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wm_with_clock_ranges, align 4
  %cmp7 = icmp ult i32 %inc, %28
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.cond37.preheaderthread-pre-split

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.cond37.preheader.for.body41_crit_edge
  %i.1137 = phi i32 [ %inc84, %for.body41.for.body41_crit_edge ], [ 0, %for.cond37.preheader.for.body41_crit_edge ]
  %arrayidx42 = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 3, i32 %i.1137
  %wm_min_socclk_clk_in_khz = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 3, i32 %i.1137, i32 1
  %29 = ptrtoint ptr %wm_min_socclk_clk_in_khz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wm_min_socclk_clk_in_khz, align 4
  %div43 = udiv i32 %30, 1000
  %conv44 = trunc i32 %div43 to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv44)
  %arrayidx47 = getelementptr [4 x %struct.watermark_row_generic_t], ptr %wt_table, i32 0, i32 %i.1137
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx47, align 4
  %wm_max_socclk_clk_in_khz = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 3, i32 %i.1137, i32 2
  %33 = ptrtoint ptr %wm_max_socclk_clk_in_khz to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wm_max_socclk_clk_in_khz, align 4
  %div51 = udiv i32 %34, 1000
  %conv52 = trunc i32 %div51 to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv52)
  %MaxClock56 = getelementptr [4 x %struct.watermark_row_generic_t], ptr %wt_table, i32 0, i32 %i.1137, i32 1
  %36 = ptrtoint ptr %MaxClock56 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %MaxClock56, align 2
  %wm_min_mem_clk_in_khz59 = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 3, i32 %i.1137, i32 3
  %37 = ptrtoint ptr %wm_min_mem_clk_in_khz59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wm_min_mem_clk_in_khz59, align 4
  %div60 = udiv i32 %38, 1000
  %conv61 = trunc i32 %div60 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv61)
  %MinUclk65 = getelementptr [4 x %struct.watermark_row_generic_t], ptr %wt_table, i32 0, i32 %i.1137, i32 2
  %40 = ptrtoint ptr %MinUclk65 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %MinUclk65, align 4
  %wm_max_mem_clk_in_khz68 = getelementptr %struct.dm_pp_wm_sets_with_clock_ranges_soc15, ptr %wm_with_clock_ranges, i32 0, i32 3, i32 %i.1137, i32 4
  %41 = ptrtoint ptr %wm_max_mem_clk_in_khz68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wm_max_mem_clk_in_khz68, align 4
  %div69 = udiv i32 %42, 1000
  %conv70 = trunc i32 %div69 to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv70)
  %MaxUclk74 = getelementptr [4 x %struct.watermark_row_generic_t], ptr %wt_table, i32 0, i32 %i.1137, i32 3
  %44 = ptrtoint ptr %MaxUclk74 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %MaxUclk74, align 2
  %45 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx42, align 4
  %conv78 = trunc i32 %46 to i8
  %WmSetting82 = getelementptr [4 x %struct.watermark_row_generic_t], ptr %wt_table, i32 0, i32 %i.1137, i32 4
  %47 = ptrtoint ptr %WmSetting82 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv78, ptr %WmSetting82, align 4
  %inc84 = add nuw i32 %i.1137, 1
  %48 = ptrtoint ptr %num_wm_mcif_sets to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_wm_mcif_sets, align 4
  %cmp39 = icmp ult i32 %inc84, %49
  br i1 %cmp39, label %for.body41.for.body41_crit_edge, label %for.body41.cleanup_crit_edge

for.body41.cleanup_crit_edge:                     ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body41

cleanup:                                          ; preds = %for.body41.cleanup_crit_edge, %for.cond37.preheader.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.cond37.preheader.cleanup_crit_edge ], [ 0, %for.body41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !145, !146, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 117, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @phm_wait_on_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @phm_wait_on_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 147, i32 3}
!8 = !{ptr @phm_wait_on_indirect_register._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @phm_wait_on_indirect_register._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 211, i32 2}
!12 = !{ptr @phm_trim_voltage_table._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.phm_trim_voltage_table, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @phm_trim_voltage_table._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @phm_trim_voltage_table._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @phm_get_svi2_mvdd_voltage_table._rs, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 254, i32 2}
!20 = !{ptr @__func__.phm_get_svi2_mvdd_voltage_table, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @phm_get_svi2_mvdd_voltage_table._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @phm_get_svi2_mvdd_voltage_table._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @phm_get_svi2_mvdd_voltage_table._rs.8, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 257, i32 2}
!26 = !{ptr @phm_get_svi2_mvdd_voltage_table._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @phm_get_svi2_mvdd_voltage_table._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @phm_get_svi2_mvdd_voltage_table._rs.12, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 270, i32 2}
!31 = !{ptr @phm_get_svi2_mvdd_voltage_table._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @phm_get_svi2_mvdd_voltage_table._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @phm_get_svi2_vddci_voltage_table._rs, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 282, i32 2}
!36 = !{ptr @__func__.phm_get_svi2_vddci_voltage_table, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @phm_get_svi2_vddci_voltage_table._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @phm_get_svi2_vddci_voltage_table._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @phm_get_svi2_vddci_voltage_table._rs.16, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 285, i32 2}
!41 = !{ptr @phm_get_svi2_vddci_voltage_table._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @phm_get_svi2_vddci_voltage_table._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @phm_get_svi2_vddci_voltage_table._rs.19, !44, !"_rs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 298, i32 2}
!45 = !{ptr @phm_get_svi2_vddci_voltage_table._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @phm_get_svi2_vddci_voltage_table._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @phm_get_svi2_vdd_voltage_table._rs, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 309, i32 2}
!50 = !{ptr @__func__.phm_get_svi2_vdd_voltage_table, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @phm_get_svi2_vdd_voltage_table._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @phm_get_svi2_vdd_voltage_table._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @phm_get_svi2_vdd_voltage_table._rs.24, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 312, i32 2}
!56 = !{ptr @phm_get_svi2_vdd_voltage_table._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @phm_get_svi2_vdd_voltage_table._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @phm_get_voltage_index._rs, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 395, i32 2}
!60 = !{ptr @__func__.phm_get_voltage_index, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @phm_get_voltage_index._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @phm_get_voltage_index._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @phm_get_voltage_index._rs.28, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 397, i32 2}
!66 = !{ptr @phm_get_voltage_index._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @phm_get_voltage_index._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @phm_get_voltage_id._rs, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 415, i32 2}
!70 = !{ptr @__func__.phm_get_voltage_id, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @phm_get_voltage_id._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @phm_get_voltage_id._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @phm_get_voltage_id._rs.31, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 417, i32 2}
!75 = !{ptr @phm_get_voltage_id._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @phm_get_voltage_id._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 439, i32 2}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @phm_find_closest_vddci.__UNIQUE_ID_ddebug343, !78, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!82 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @phm_get_sclk_for_voltage_evv._rs, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 469, i32 2}
!85 = !{ptr @__func__.phm_get_sclk_for_voltage_evv, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @phm_get_sclk_for_voltage_evv._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @phm_get_sclk_for_voltage_evv._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 479, i32 3}
!91 = !{ptr @phm_get_sclk_for_voltage_evv.__UNIQUE_ID_ddebug344, !90, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!92 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 503, i32 3}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @phm_initializa_dynamic_state_adjustment_rule_settings._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @phm_initializa_dynamic_state_adjustment_rule_settings._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 578, i32 2}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @phm_apply_dal_min_voltage_request._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @phm_apply_dal_min_voltage_request._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 611, i32 4}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @phm_irq_process._entry, !104, !"_entry", i1 false, i1 false}
!109 = !{ptr @phm_irq_process._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 616, i32 4}
!112 = !{ptr @phm_irq_process._entry.49, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @phm_irq_process._entry_ptr.51, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 619, i32 4}
!116 = !{ptr @phm_irq_process._entry.52, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @phm_irq_process._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 621, i32 4}
!120 = !{ptr @phm_irq_process._entry.55, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @phm_irq_process._entry_ptr.57, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 625, i32 4}
!124 = !{ptr @phm_irq_process._entry.58, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @phm_irq_process._entry_ptr.60, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @phm_irq_process._entry.61, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 630, i32 4}
!128 = !{ptr @phm_irq_process._entry_ptr.62, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @phm_irq_process._entry.63, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 635, i32 4}
!131 = !{ptr @phm_irq_process._entry_ptr.64, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @phm_irq_process._entry.65, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 638, i32 4}
!134 = !{ptr @phm_irq_process._entry_ptr.66, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @phm_irq_process._entry.67, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 640, i32 3}
!137 = !{ptr @phm_irq_process._entry_ptr.68, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @phm_irq_process._entry.69, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 644, i32 3}
!140 = !{ptr @phm_irq_process._entry_ptr.70, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @smu_get_voltage_dependency_table_ppt_v1._rs, !142, !"_rs", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 703, i32 2}
!143 = !{ptr @__func__.smu_get_voltage_dependency_table_ppt_v1, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @smu_get_voltage_dependency_table_ppt_v1._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @smu_get_voltage_dependency_table_ppt_v1._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @smu9_irq_funcs, !148, !"smu9_irq_funcs", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu_helper.c", i32 651, i32 42}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i8 0, i8 2}
!159 = !{i64 2148505270, i64 2148505275, i64 2148505288, i64 2148505332, i64 2148505366, i64 2148505387}
!160 = !{!"auto-init"}
