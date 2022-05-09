; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/smu8_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.smu8_smumgr = type { i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, %struct.smu8_buffer_entry, %struct.smu8_buffer_entry, %struct.smu8_buffer_entry, [8 x %struct.smu8_buffer_entry], [8 x %struct.smu8_buffer_entry], [11 x %struct.smu8_buffer_entry] }
%struct.smu8_buffer_entry = type { i32, i64, ptr, i32, ptr }
%struct.cgs_firmware_info = type { i16, i16, i16, i32, i64, i32, ptr, i8 }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.TOC = type { [32 x i8], [1 x %struct.SMU_Task] }
%struct.SMU_Task = type { i8, i8, i16, %struct.data_64_t, i32 }
%struct.data_64_t = type { i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smu8_smu\00", [23 x i8] zeroinitializer }, align 32
@smu8_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str, ptr @smu8_smu_init, ptr @smu8_smu_fini, ptr @smu8_start_smu, ptr @smu8_check_fw_load_finish, ptr null, ptr null, ptr @smu8_get_argument, ptr @smu8_send_msg_to_smc, ptr @smu8_send_msg_to_smc_with_parameter, ptr @smu8_download_pptable_settings, ptr @smu8_upload_pptable_settings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu8_is_dpm_running, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@smu8_smu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013amdgpu: Error when Populate Firmware Entry.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smu8_smu_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c\00", [32 x i8] zeroinitializer }, align 32
@smu8_smu_init._entry_ptr = internal global ptr @smu8_smu_init._entry, section ".printk_index", align 4
@smu8_smu_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu8_smu_init._entry_ptr.5 = internal global ptr @smu8_smu_init._entry.4, section ".printk_index", align 4
@smu8_smu_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu8_smu_init._entry_ptr.7 = internal global ptr @smu8_smu_init._entry.6, section ".printk_index", align 4
@smu8_smu_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu8_smu_init._entry_ptr.9 = internal global ptr @smu8_smu_init._entry.8, section ".printk_index", align 4
@smu8_smu_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu8_smu_init._entry_ptr.11 = internal global ptr @smu8_smu_init._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smu8_start_smu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016amdgpu: smu version %02d.%02d.%02d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smu8_start_smu\00", [17 x i8] zeroinitializer }, align 32
@smu8_start_smu._entry_ptr = internal global ptr @smu8_start_smu._entry, section ".printk_index", align 4
@smu8_request_smu_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013amdgpu: SMU firmware load failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smu8_request_smu_load_fw\00", [39 x i8] zeroinitializer }, align 32
@smu8_request_smu_load_fw._entry_ptr = internal global ptr @smu8_request_smu_load_fw._entry, section ".printk_index", align 4
@smu8_request_smu_load_fw._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013amdgpu: Mec Firmware load failed\0A\00", [60 x i8] zeroinitializer }, align 32
@smu8_request_smu_load_fw._entry_ptr.18 = internal global ptr @smu8_request_smu_load_fw._entry.16, section ".printk_index", align 4
@firmware_list = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8], [32 x i8] zeroinitializer }, align 32
@smu8_smu_populate_single_scratch_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013amdgpu: Invalid Firmware Type\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"smu8_smu_populate_single_scratch_task\00", [58 x i8] zeroinitializer }, align 32
@smu8_smu_populate_single_scratch_task._entry_ptr = internal global ptr @smu8_smu_populate_single_scratch_task._entry, section ".printk_index", align 4
@smu8_smu_populate_single_ucode_load_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"smu8_smu_populate_single_ucode_load_task\00", [55 x i8] zeroinitializer }, align 32
@smu8_smu_populate_single_ucode_load_task._entry_ptr = internal global ptr @smu8_smu_populate_single_ucode_load_task._entry, section ".printk_index", align 4
@smu8_set_smc_sram_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013amdgpu: SMC address must be 4 byte aligned\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smu8_set_smc_sram_address\00", [38 x i8] zeroinitializer }, align 32
@smu8_set_smc_sram_address._entry_ptr = internal global ptr @smu8_set_smc_sram_address._entry, section ".printk_index", align 4
@smu8_set_smc_sram_address._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013amdgpu: SMC address beyond the SMC RAM area\0A\00", [49 x i8] zeroinitializer }, align 32
@smu8_set_smc_sram_address._entry_ptr.26 = internal global ptr @smu8_set_smc_sram_address._entry.24, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@smu8_check_fw_load_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013amdgpu: SMU check loaded firmware failed.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smu8_check_fw_load_finish\00", [38 x i8] zeroinitializer }, align 32
@smu8_check_fw_load_finish._entry_ptr = internal global ptr @smu8_check_fw_load_finish._entry, section ".printk_index", align 4
@smu8_send_msg_to_smc_with_parameter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013amdgpu: %s(0x%04x) aborted; SMU still servicing msg (0x%04x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"smu8_send_msg_to_smc_with_parameter\00", [60 x i8] zeroinitializer }, align 32
@smu8_send_msg_to_smc_with_parameter._entry_ptr = internal global ptr @smu8_send_msg_to_smc_with_parameter._entry, section ".printk_index", align 4
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(0x%04x, %#x) timed out after %lld us\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 896, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"smu8_smu_funcs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 895, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 799, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 807, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 814, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 822, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 830, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 747, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 719, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 725, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"firmware_list\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 45, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 345, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 382, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 116, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 121, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 167, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 82, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 98, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @smu8_check_fw_load_finish._entry, ptr @smu8_check_fw_load_finish._entry_ptr, ptr @smu8_request_smu_load_fw._entry, ptr @smu8_request_smu_load_fw._entry.16, ptr @smu8_request_smu_load_fw._entry_ptr, ptr @smu8_request_smu_load_fw._entry_ptr.18, ptr @smu8_send_msg_to_smc_with_parameter._entry, ptr @smu8_send_msg_to_smc_with_parameter._entry_ptr, ptr @smu8_set_smc_sram_address._entry, ptr @smu8_set_smc_sram_address._entry.24, ptr @smu8_set_smc_sram_address._entry_ptr, ptr @smu8_set_smc_sram_address._entry_ptr.26, ptr @smu8_smu_init._entry, ptr @smu8_smu_init._entry.10, ptr @smu8_smu_init._entry.4, ptr @smu8_smu_init._entry.6, ptr @smu8_smu_init._entry.8, ptr @smu8_smu_init._entry_ptr, ptr @smu8_smu_init._entry_ptr.11, ptr @smu8_smu_init._entry_ptr.5, ptr @smu8_smu_init._entry_ptr.7, ptr @smu8_smu_init._entry_ptr.9, ptr @smu8_smu_populate_single_scratch_task._entry, ptr @smu8_smu_populate_single_scratch_task._entry_ptr, ptr @smu8_smu_populate_single_ucode_load_task._entry, ptr @smu8_smu_populate_single_ucode_load_task._entry_ptr, ptr @smu8_start_smu._entry, ptr @smu8_start_smu._entry_ptr, ptr @.str, ptr @smu8_smu_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @firmware_list, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_smu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_smu_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_smu_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_smu_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_smu_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_start_smu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_request_smu_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_request_smu_load_fw._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_smu_populate_single_scratch_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_smu_populate_single_ucode_load_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_set_smc_sram_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_set_smc_sram_address._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_check_fw_load_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu8_send_msg_to_smc_with_parameter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_smu_init(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 984) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %1 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %smu_backend, align 4
  %toc_buffer = getelementptr inbounds %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %toc_buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %toc_buffer, align 8
  %smu_buffer = getelementptr inbounds %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 11
  %3 = ptrtoint ptr %smu_buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 13280, ptr %smu_buffer, align 8
  %4 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr, align 4
  %handle = getelementptr inbounds %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 10, i32 4
  %mc_addr = getelementptr inbounds %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 10, i32 1
  %kaddr = getelementptr inbounds %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 10, i32 2
  %call7 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %5, i32 noundef 4096, i32 noundef 4096, i32 noundef 4, ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %kaddr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.err2_crit_edge

if.end.err2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err2

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmgr, align 4
  %8 = ptrtoint ptr %smu_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smu_buffer, align 8
  %handle14 = getelementptr inbounds %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 11, i32 4
  %mc_addr16 = getelementptr inbounds %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 11, i32 1
  %kaddr18 = getelementptr inbounds %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 11, i32 2
  %call19 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %7, i32 noundef %9, i32 noundef 4096, i32 noundef 4, ptr noundef %handle14, ptr noundef %mc_addr16, ptr noundef %kaddr18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %err1

if.end22:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %scratch_buffer_length = getelementptr inbounds %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %scratch_buffer_length to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scratch_buffer_length, align 1
  %inc = add i8 %11, 1
  store i8 %inc, ptr %scratch_buffer_length, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom
  %12 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smu_backend, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 132, ptr %arrayidx, align 8
  %kaddr.i = getelementptr inbounds %struct.smu8_smumgr, ptr %13, i32 0, i32 11, i32 2
  %15 = ptrtoint ptr %kaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kaddr.i, align 8
  %smu_buffer_used_bytes.i = getelementptr inbounds %struct.smu8_smumgr, ptr %13, i32 0, i32 9
  %17 = ptrtoint ptr %smu_buffer_used_bytes.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %smu_buffer_used_bytes.i, align 8
  %conv.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv.i
  %kaddr2.i = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom, i32 2
  %19 = ptrtoint ptr %kaddr2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %kaddr2.i, align 8
  %mc_addr.i = getelementptr inbounds %struct.smu8_smumgr, ptr %13, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %mc_addr.i, align 8
  %22 = load i16, ptr %smu_buffer_used_bytes.i, align 8
  %conv5.i = zext i16 %22 to i64
  %add6.i = add i64 %21, %conv5.i
  %mc_addr7.i = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom, i32 1
  %23 = ptrtoint ptr %mc_addr7.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add6.i, ptr %mc_addr7.i, align 8
  %firmware_ID.i = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom, i32 3
  %24 = ptrtoint ptr %firmware_ID.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 9, ptr %firmware_ID.i, align 4
  %25 = load i16, ptr %smu_buffer_used_bytes.i, align 8
  %conv11.i = add i16 %25, 160
  store i16 %conv11.i, ptr %smu_buffer_used_bytes.i, align 8
  %26 = load i8, ptr %scratch_buffer_length, align 1
  %inc30 = add i8 %26, 1
  store i8 %inc30, ptr %scratch_buffer_length, align 1
  %idxprom31 = zext i8 %26 to i32
  %arrayidx32 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom31
  %27 = load ptr, ptr %smu_backend, align 4
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8192, ptr %arrayidx32, align 8
  %kaddr.i134 = getelementptr inbounds %struct.smu8_smumgr, ptr %27, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %kaddr.i134 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %kaddr.i134, align 8
  %smu_buffer_used_bytes.i135 = getelementptr inbounds %struct.smu8_smumgr, ptr %27, i32 0, i32 9
  %31 = ptrtoint ptr %smu_buffer_used_bytes.i135 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %smu_buffer_used_bytes.i135, align 8
  %conv.i136 = zext i16 %32 to i32
  %add.ptr.i137 = getelementptr i8, ptr %30, i32 %conv.i136
  %kaddr2.i138 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom31, i32 2
  %33 = ptrtoint ptr %kaddr2.i138 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i137, ptr %kaddr2.i138, align 8
  %mc_addr.i139 = getelementptr inbounds %struct.smu8_smumgr, ptr %27, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %mc_addr.i139 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %mc_addr.i139, align 8
  %36 = load i16, ptr %smu_buffer_used_bytes.i135, align 8
  %conv5.i140 = zext i16 %36 to i64
  %add6.i141 = add i64 %35, %conv5.i140
  %mc_addr7.i142 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom31, i32 1
  %37 = ptrtoint ptr %mc_addr7.i142 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add6.i141, ptr %mc_addr7.i142, align 8
  %firmware_ID.i143 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom31, i32 3
  %38 = ptrtoint ptr %firmware_ID.i143 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %firmware_ID.i143, align 4
  %39 = load i16, ptr %smu_buffer_used_bytes.i135, align 8
  %conv11.i144 = add i16 %39, 8192
  store i16 %conv11.i144, ptr %smu_buffer_used_bytes.i135, align 8
  %40 = load i8, ptr %scratch_buffer_length, align 1
  %inc44 = add i8 %40, 1
  store i8 %inc44, ptr %scratch_buffer_length, align 1
  %idxprom45 = zext i8 %40 to i32
  %arrayidx46 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom45
  %41 = load ptr, ptr %smu_backend, align 4
  %42 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4096, ptr %arrayidx46, align 8
  %kaddr.i146 = getelementptr inbounds %struct.smu8_smumgr, ptr %41, i32 0, i32 11, i32 2
  %43 = ptrtoint ptr %kaddr.i146 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %kaddr.i146, align 8
  %smu_buffer_used_bytes.i147 = getelementptr inbounds %struct.smu8_smumgr, ptr %41, i32 0, i32 9
  %45 = ptrtoint ptr %smu_buffer_used_bytes.i147 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %smu_buffer_used_bytes.i147, align 8
  %conv.i148 = zext i16 %46 to i32
  %add.ptr.i149 = getelementptr i8, ptr %44, i32 %conv.i148
  %kaddr2.i150 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom45, i32 2
  %47 = ptrtoint ptr %kaddr2.i150 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i149, ptr %kaddr2.i150, align 8
  %mc_addr.i151 = getelementptr inbounds %struct.smu8_smumgr, ptr %41, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %mc_addr.i151 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %mc_addr.i151, align 8
  %50 = load i16, ptr %smu_buffer_used_bytes.i147, align 8
  %conv5.i152 = zext i16 %50 to i64
  %add6.i153 = add i64 %49, %conv5.i152
  %mc_addr7.i154 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom45, i32 1
  %51 = ptrtoint ptr %mc_addr7.i154 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add6.i153, ptr %mc_addr7.i154, align 8
  %firmware_ID.i155 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom45, i32 3
  %52 = ptrtoint ptr %firmware_ID.i155 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 11, ptr %firmware_ID.i155, align 4
  %53 = load i16, ptr %smu_buffer_used_bytes.i147, align 8
  %conv11.i156 = add i16 %53, 4096
  store i16 %conv11.i156, ptr %smu_buffer_used_bytes.i147, align 8
  %54 = load i8, ptr %scratch_buffer_length, align 1
  %inc58 = add i8 %54, 1
  store i8 %inc58, ptr %scratch_buffer_length, align 1
  %idxprom59 = zext i8 %54 to i32
  %arrayidx60 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom59
  %55 = load ptr, ptr %smu_backend, align 4
  %56 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 48, ptr %arrayidx60, align 8
  %kaddr.i158 = getelementptr inbounds %struct.smu8_smumgr, ptr %55, i32 0, i32 11, i32 2
  %57 = ptrtoint ptr %kaddr.i158 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %kaddr.i158, align 8
  %smu_buffer_used_bytes.i159 = getelementptr inbounds %struct.smu8_smumgr, ptr %55, i32 0, i32 9
  %59 = ptrtoint ptr %smu_buffer_used_bytes.i159 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %smu_buffer_used_bytes.i159, align 8
  %conv.i160 = zext i16 %60 to i32
  %add.ptr.i161 = getelementptr i8, ptr %58, i32 %conv.i160
  %kaddr2.i162 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom59, i32 2
  %61 = ptrtoint ptr %kaddr2.i162 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i161, ptr %kaddr2.i162, align 8
  %mc_addr.i163 = getelementptr inbounds %struct.smu8_smumgr, ptr %55, i32 0, i32 11, i32 1
  %62 = ptrtoint ptr %mc_addr.i163 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %mc_addr.i163, align 8
  %64 = load i16, ptr %smu_buffer_used_bytes.i159, align 8
  %conv5.i164 = zext i16 %64 to i64
  %add6.i165 = add i64 %63, %conv5.i164
  %mc_addr7.i166 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom59, i32 1
  %65 = ptrtoint ptr %mc_addr7.i166 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add6.i165, ptr %mc_addr7.i166, align 8
  %firmware_ID.i167 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom59, i32 3
  %66 = ptrtoint ptr %firmware_ID.i167 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 14, ptr %firmware_ID.i167, align 4
  %67 = load i16, ptr %smu_buffer_used_bytes.i159, align 8
  %conv11.i168 = add i16 %67, 64
  store i16 %conv11.i168, ptr %smu_buffer_used_bytes.i159, align 8
  %68 = load i8, ptr %scratch_buffer_length, align 1
  %inc72 = add i8 %68, 1
  store i8 %inc72, ptr %scratch_buffer_length, align 1
  %idxprom73 = zext i8 %68 to i32
  %arrayidx74 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom73
  %69 = load ptr, ptr %smu_backend, align 4
  %70 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 744, ptr %arrayidx74, align 8
  %kaddr.i170 = getelementptr inbounds %struct.smu8_smumgr, ptr %69, i32 0, i32 11, i32 2
  %71 = ptrtoint ptr %kaddr.i170 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %kaddr.i170, align 8
  %smu_buffer_used_bytes.i171 = getelementptr inbounds %struct.smu8_smumgr, ptr %69, i32 0, i32 9
  %73 = ptrtoint ptr %smu_buffer_used_bytes.i171 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %smu_buffer_used_bytes.i171, align 8
  %conv.i172 = zext i16 %74 to i32
  %add.ptr.i173 = getelementptr i8, ptr %72, i32 %conv.i172
  %kaddr2.i174 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom73, i32 2
  %75 = ptrtoint ptr %kaddr2.i174 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr.i173, ptr %kaddr2.i174, align 8
  %mc_addr.i175 = getelementptr inbounds %struct.smu8_smumgr, ptr %69, i32 0, i32 11, i32 1
  %76 = ptrtoint ptr %mc_addr.i175 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %mc_addr.i175, align 8
  %78 = load i16, ptr %smu_buffer_used_bytes.i171, align 8
  %conv5.i176 = zext i16 %78 to i64
  %add6.i177 = add i64 %77, %conv5.i176
  %mc_addr7.i178 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom73, i32 1
  %79 = ptrtoint ptr %mc_addr7.i178 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %add6.i177, ptr %mc_addr7.i178, align 8
  %firmware_ID.i179 = getelementptr %struct.smu8_smumgr, ptr %call7.i.i, i32 0, i32 15, i32 %idxprom73, i32 3
  %80 = ptrtoint ptr %firmware_ID.i179 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 21, ptr %firmware_ID.i179, align 4
  %81 = load i16, ptr %smu_buffer_used_bytes.i171, align 8
  %conv11.i180 = add i16 %81, 768
  store i16 %conv11.i180, ptr %smu_buffer_used_bytes.i171, align 8
  br label %cleanup

err1:                                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %kaddr) #6
  br label %err2

err2:                                             ; preds = %err1, %if.end.err2_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %err2 ], [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_smu_fini(ptr noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %handle = getelementptr inbounds %struct.smu8_smumgr, ptr %3, i32 0, i32 10, i32 4
  %mc_addr = getelementptr inbounds %struct.smu8_smumgr, ptr %3, i32 0, i32 10, i32 1
  %kaddr = getelementptr inbounds %struct.smu8_smumgr, ptr %3, i32 0, i32 10, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %kaddr) #6
  %handle5 = getelementptr inbounds %struct.smu8_smumgr, ptr %3, i32 0, i32 11, i32 4
  %mc_addr7 = getelementptr inbounds %struct.smu8_smumgr, ptr %3, i32 0, i32 11, i32 1
  %kaddr9 = getelementptr inbounds %struct.smu8_smumgr, ptr %3, i32 0, i32 11, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle5, ptr noundef %mc_addr7, ptr noundef %kaddr9) #6
  tail call void @kfree(ptr noundef nonnull %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  %info.i67.i = alloca %struct.cgs_firmware_info, align 8
  %info.i.i = alloca %struct.cgs_firmware_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  tail call void %7(ptr noundef nonnull %1, i32 noundef 384, i32 noundef 268566400) #6
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call = tail call i32 %13(ptr noundef %9, i32 noundef 385) #6
  %smu_version = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 3
  %14 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call, ptr %smu_version, align 4
  %shr = lshr i32 %call, 16
  %and = and i32 %shr, 255
  %shr10 = lshr i32 %call, 8
  %and11 = and i32 %shr10, 255
  %and13 = and i32 %call, 255
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %and, i32 noundef %and11, i32 noundef %and13) #10
  %15 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smu_version, align 4
  %shr16 = lshr i32 %16, 8
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 17
  %17 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr16, ptr %fw_version, align 4
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %18 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smu_backend.i, align 4
  %20 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwmgr, align 4
  %call.i = tail call i32 @amdgpu_ucode_init_bo(ptr noundef %21) #6
  %22 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smu_backend.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i.i) #6
  %24 = call ptr @memset(ptr %info.i.i, i32 0, i32 40)
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %23, align 8
  %chip_id7.i.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %mc_addr.i.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i.i, i32 0, i32 4
  %image_size.i.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end
  %i.031.i.i = phi i32 [ 0, %if.end ], [ %inc14.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x i32], ptr @firmware_list, i32 0, i32 %i.031.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %for.body.i.i.sw.bb.i.i.i_crit_edge [
    i32 21, label %for.body.i.i.sw.bb1.i1.i.i_crit_edge
    i32 1, label %smu8_translate_firmware_enum_to_arg.exit.i.i
    i32 2, label %sw.bb2.i2.i.i
    i32 3, label %sw.bb3.i3.i.i
    i32 4, label %sw.bb4.i4.i.i
    i32 5, label %for.body.i.i.sw.bb5.i5.i.i_crit_edge
    i32 6, label %sw.bb6.i.i.i
    i32 7, label %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge
    i32 8, label %sw.bb7.i.i.i
    i32 9, label %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge169
    i32 10, label %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge170
    i32 11, label %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge171
    i32 12, label %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge172
    i32 13, label %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge173
    i32 20, label %for.body.i.i.sw.bb1.i1.i.i_crit_edge174
    i32 15, label %for.body.i.i.sw.bb1.i1.i.i_crit_edge175
    i32 16, label %for.body.i.i.sw.bb1.i1.i.i_crit_edge176
    i32 17, label %for.body.i.i.sw.bb1.i1.i.i_crit_edge177
    i32 18, label %for.body.i.i.sw.bb1.i1.i.i_crit_edge178
    i32 19, label %for.body.i.i.sw.bb1.i1.i.i_crit_edge179
  ]

for.body.i.i.sw.bb1.i1.i.i_crit_edge179:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i1.i.i

for.body.i.i.sw.bb1.i1.i.i_crit_edge178:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i1.i.i

for.body.i.i.sw.bb1.i1.i.i_crit_edge177:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i1.i.i

for.body.i.i.sw.bb1.i1.i.i_crit_edge176:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i1.i.i

for.body.i.i.sw.bb1.i1.i.i_crit_edge175:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i1.i.i

for.body.i.i.sw.bb1.i1.i.i_crit_edge174:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i1.i.i

for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge173: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge172: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge171: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge170: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge169: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

for.body.i.i.sw.bb5.i5.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i5.i.i

for.body.i.i.sw.bb1.i1.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i1.i.i

for.body.i.i.sw.bb.i.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i.i

sw.bb6.i.i.i:                                     ; preds = %for.body.i.i
  %29 = ptrtoint ptr %chip_id7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip_id7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %30)
  %cmp8.i.i.i = icmp eq i32 %30, 14
  br i1 %cmp8.i.i.i, label %sw.bb6.i.i.i.sw.bb5.i5.i.i_crit_edge, label %sw.bb6.i.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge

sw.bb6.i.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge: ; preds = %sw.bb6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

sw.bb6.i.i.i.sw.bb5.i5.i.i_crit_edge:             ; preds = %sw.bb6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i5.i.i

smu8_translate_firmware_enum_to_arg.exit.i.i:     ; preds = %for.body.i.i
  %31 = ptrtoint ptr %chip_id7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip_id7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %32)
  %cmp.i.not.i.i = icmp eq i32 %32, 14
  br i1 %cmp.i.not.i.i, label %smu8_translate_firmware_enum_to_arg.exit.i.i.sw.bb.i.i.i_crit_edge, label %smu8_translate_firmware_enum_to_arg.exit.i.i.sw.bb1.i1.i.i_crit_edge

smu8_translate_firmware_enum_to_arg.exit.i.i.sw.bb1.i1.i.i_crit_edge: ; preds = %smu8_translate_firmware_enum_to_arg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i1.i.i

smu8_translate_firmware_enum_to_arg.exit.i.i.sw.bb.i.i.i_crit_edge: ; preds = %smu8_translate_firmware_enum_to_arg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i.i

sw.bb.i.i.i:                                      ; preds = %smu8_translate_firmware_enum_to_arg.exit.i.i.sw.bb.i.i.i_crit_edge, %for.body.i.i.sw.bb.i.i.i_crit_edge
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

sw.bb1.i1.i.i:                                    ; preds = %smu8_translate_firmware_enum_to_arg.exit.i.i.sw.bb1.i1.i.i_crit_edge, %for.body.i.i.sw.bb1.i1.i.i_crit_edge, %for.body.i.i.sw.bb1.i1.i.i_crit_edge174, %for.body.i.i.sw.bb1.i1.i.i_crit_edge175, %for.body.i.i.sw.bb1.i1.i.i_crit_edge176, %for.body.i.i.sw.bb1.i1.i.i_crit_edge177, %for.body.i.i.sw.bb1.i1.i.i_crit_edge178, %for.body.i.i.sw.bb1.i1.i.i_crit_edge179
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

sw.bb2.i2.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

sw.bb3.i3.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

sw.bb4.i4.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

sw.bb5.i5.i.i:                                    ; preds = %sw.bb6.i.i.i.sw.bb5.i5.i.i_crit_edge, %for.body.i.i.sw.bb5.i5.i.i_crit_edge
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

sw.bb7.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_convert_fw_type_to_cgs.exit.i.i

smu8_convert_fw_type_to_cgs.exit.i.i:             ; preds = %sw.bb7.i.i.i, %sw.bb5.i5.i.i, %sw.bb4.i4.i.i, %sw.bb3.i3.i.i, %sw.bb2.i2.i.i, %sw.bb1.i1.i.i, %sw.bb.i.i.i, %sw.bb6.i.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge169, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge170, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge171, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge172, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge173
  %result.0.i.i.i = phi i32 [ 11, %sw.bb7.i.i.i ], [ 8, %sw.bb5.i5.i.i ], [ 6, %sw.bb4.i4.i.i ], [ 5, %sw.bb3.i3.i.i ], [ 4, %sw.bb2.i2.i.i ], [ 3, %sw.bb1.i1.i.i ], [ 2, %sw.bb.i.i.i ], [ 13, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge ], [ 13, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge169 ], [ 13, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge170 ], [ 13, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge171 ], [ 13, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge172 ], [ 13, %for.body.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge173 ], [ 9, %sw.bb6.i.i.i.smu8_convert_fw_type_to_cgs.exit.i.i_crit_edge ]
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %get_firmware_info.i.i = getelementptr inbounds %struct.cgs_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %get_firmware_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_firmware_info.i.i, align 4
  %call3.i.i = call i32 %38(ptr noundef %34, i32 noundef %result.0.i.i.i, ptr noundef nonnull %info.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.then.i.i, label %smu8_convert_fw_type_to_cgs.exit.i.i.for.inc.i.i_crit_edge

smu8_convert_fw_type_to_cgs.exit.i.i.for.inc.i.i_crit_edge: ; preds = %smu8_convert_fw_type_to_cgs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %smu8_convert_fw_type_to_cgs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %mc_addr.i.i, align 8
  %arrayidx6.i.i = getelementptr %struct.smu8_smumgr, ptr %23, i32 0, i32 13, i32 %i.031.i.i
  %mc_addr7.i.i = getelementptr %struct.smu8_smumgr, ptr %23, i32 0, i32 13, i32 %i.031.i.i, i32 1
  %41 = ptrtoint ptr %mc_addr7.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %mc_addr7.i.i, align 8
  %42 = ptrtoint ptr %image_size.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %image_size.i.i, align 8
  %44 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx6.i.i, align 8
  %firmware_ID.i.i = getelementptr %struct.smu8_smumgr, ptr %23, i32 0, i32 13, i32 %i.031.i.i, i32 3
  %45 = ptrtoint ptr %firmware_ID.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %27, ptr %firmware_ID.i.i, align 4
  %46 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %23, align 8
  %inc.i.i = add i8 %47, 1
  store i8 %inc.i.i, ptr %23, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %smu8_convert_fw_type_to_cgs.exit.i.i.for.inc.i.i_crit_edge
  %inc14.i.i = add nuw nsw i32 %i.031.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc14.i.i, 8
  br i1 %exitcond.not.i.i, label %smu8_smu_populate_firmware_entries.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

smu8_smu_populate_firmware_entries.exit.i:        ; preds = %for.inc.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i.i) #6
  %48 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %smu_backend.i, align 4
  %toc_entry_used_count.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %toc_entry_used_count.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %toc_entry_used_count.i.i, align 2
  %51 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %51, i32 0, i32 10, i32 2
  %52 = ptrtoint ptr %kaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %kaddr.i.i.i, align 8
  %54 = call ptr @memset(ptr %53, i32 255, i32 32)
  %55 = load ptr, ptr %smu_backend.i, align 4
  %toc_entry_used_count.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %toc_entry_used_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %toc_entry_used_count.i.i.i, align 2
  %toc_entry_aram.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %55, i32 0, i32 5
  %58 = ptrtoint ptr %toc_entry_aram.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %toc_entry_aram.i.i.i, align 8
  %59 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %59, i32 0, i32 10, i32 2
  %60 = ptrtoint ptr %kaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %kaddr.i.i.i.i, align 8
  %toc_entry_used_count.i.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %59, i32 0, i32 2
  %62 = ptrtoint ptr %toc_entry_used_count.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %toc_entry_used_count.i.i.i.i, align 2
  %inc.i.i.i.i = add i16 %63, 1
  store i16 %inc.i.i.i.i, ptr %toc_entry_used_count.i.i.i.i, align 2
  %idxprom.i.i.i.i = zext i16 %63 to i32
  %arrayidx.i.i.i.i = getelementptr %struct.TOC, ptr %61, i32 0, i32 1, i32 %idxprom.i.i.i.i
  %64 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %arrayidx.i.i.i.i, align 4
  %arg.i.i.i.i = getelementptr %struct.TOC, ptr %61, i32 0, i32 1, i32 %idxprom.i.i.i.i, i32 1
  %65 = ptrtoint ptr %arg.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 10, ptr %arg.i.i.i.i, align 1
  %next.i.i.i.i = getelementptr %struct.TOC, ptr %61, i32 0, i32 1, i32 %idxprom.i.i.i.i, i32 2
  %66 = ptrtoint ptr %next.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %next.i.i.i.i, align 2
  %scratch_buffer_length.i.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %59, i32 0, i32 1
  %67 = ptrtoint ptr %scratch_buffer_length.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %scratch_buffer_length.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp2.not.i.i.i.i = icmp eq i8 %68, 0
  br i1 %cmp2.not.i.i.i.i, label %smu8_smu_populate_firmware_entries.exit.i.do.end.i.i.i.i_crit_edge, label %for.body.preheader.i.i.i.i

smu8_smu_populate_firmware_entries.exit.i.do.end.i.i.i.i_crit_edge: ; preds = %smu8_smu_populate_firmware_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %smu8_smu_populate_firmware_entries.exit.i
  %wide.trip.count.i.i.i.i = zext i8 %68 to i32
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.do.end.i.i.i.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.do.end.i.i.i.i_crit_edge:        ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i32 [ 0, %for.body.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %firmware_ID.i.i.i.i = getelementptr %struct.smu8_smumgr, ptr %59, i32 0, i32 15, i32 %indvars.iv.i.i.i.i, i32 3
  %69 = ptrtoint ptr %firmware_ID.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %firmware_ID.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %70)
  %cmp9.i.i.i.i = icmp eq i32 %70, 10
  br i1 %cmp9.i.i.i.i, label %if.end19.i.i.i.i, label %for.cond.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %for.cond.i.i.i.i.do.end.i.i.i.i_crit_edge, %smu8_smu_populate_firmware_entries.exit.i.do.end.i.i.i.i_crit_edge
  %call18.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_construct_toc_for_rlc_aram_save.exit.i.i

if.end19.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i.i.i.i = getelementptr %struct.smu8_smumgr, ptr %59, i32 0, i32 15, i32 %indvars.iv.i.i.i.i
  %mc_addr.i.i.i.i = getelementptr %struct.smu8_smumgr, ptr %59, i32 0, i32 15, i32 %indvars.iv.i.i.i.i, i32 1
  %71 = ptrtoint ptr %mc_addr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %mc_addr.i.i.i.i, align 8
  %conv23.i.i.i.i = trunc i64 %72 to i32
  %addr.i.i.i.i = getelementptr %struct.TOC, ptr %61, i32 0, i32 1, i32 %idxprom.i.i.i.i, i32 3
  %low.i.i.i.i = getelementptr %struct.TOC, ptr %61, i32 0, i32 1, i32 %idxprom.i.i.i.i, i32 3, i32 1
  %73 = ptrtoint ptr %low.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv23.i.i.i.i, ptr %low.i.i.i.i, align 4
  %74 = load i64, ptr %mc_addr.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %74, 32
  %conv29.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %75 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv29.i.i.i.i, ptr %addr.i.i.i.i, align 4
  %76 = ptrtoint ptr %arrayidx22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx22.i.i.i.i, align 8
  %size_bytes.i.i.i.i = getelementptr %struct.TOC, ptr %61, i32 0, i32 1, i32 %idxprom.i.i.i.i, i32 4
  %78 = ptrtoint ptr %size_bytes.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %size_bytes.i.i.i.i, align 4
  br label %smu8_smu_construct_toc_for_rlc_aram_save.exit.i.i

smu8_smu_construct_toc_for_rlc_aram_save.exit.i.i: ; preds = %if.end19.i.i.i.i, %do.end.i.i.i.i
  %79 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i3.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %80, i32 0, i32 10, i32 2
  %81 = ptrtoint ptr %kaddr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %kaddr.i3.i.i, align 8
  %toc_entry_used_count.i4.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %toc_entry_used_count.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %toc_entry_used_count.i4.i.i, align 2
  %conv.i.i.i = trunc i16 %84 to i8
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv.i.i.i, ptr %82, align 4
  %86 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i.i5.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %86, i32 0, i32 10, i32 2
  %87 = ptrtoint ptr %kaddr.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %kaddr.i.i5.i.i, align 8
  %toc_entry_used_count.i.i6.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %86, i32 0, i32 2
  %89 = ptrtoint ptr %toc_entry_used_count.i.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %toc_entry_used_count.i.i6.i.i, align 2
  %inc.i.i7.i.i = add i16 %90, 1
  store i16 %inc.i.i7.i.i, ptr %toc_entry_used_count.i.i6.i.i, align 2
  %idxprom.i.i8.i.i = zext i16 %90 to i32
  %arrayidx.i.i9.i.i = getelementptr %struct.TOC, ptr %88, i32 0, i32 1, i32 %idxprom.i.i8.i.i
  %91 = ptrtoint ptr %arrayidx.i.i9.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 2, ptr %arrayidx.i.i9.i.i, align 4
  %arg.i.i10.i.i = getelementptr %struct.TOC, ptr %88, i32 0, i32 1, i32 %idxprom.i.i8.i.i, i32 1
  %92 = ptrtoint ptr %arg.i.i10.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 9, ptr %arg.i.i10.i.i, align 1
  %93 = load i16, ptr %toc_entry_used_count.i.i6.i.i, align 2
  %next.i.i11.i.i = getelementptr %struct.TOC, ptr %88, i32 0, i32 1, i32 %idxprom.i.i8.i.i, i32 2
  %94 = ptrtoint ptr %next.i.i11.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %next.i.i11.i.i, align 2
  %scratch_buffer_length.i.i12.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %86, i32 0, i32 1
  %95 = ptrtoint ptr %scratch_buffer_length.i.i12.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %scratch_buffer_length.i.i12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp2.not.i.i13.i.i = icmp eq i8 %96, 0
  br i1 %cmp2.not.i.i13.i.i, label %smu8_smu_construct_toc_for_rlc_aram_save.exit.i.i.do.end.i.i24.i.i_crit_edge, label %for.body.preheader.i.i15.i.i

smu8_smu_construct_toc_for_rlc_aram_save.exit.i.i.do.end.i.i24.i.i_crit_edge: ; preds = %smu8_smu_construct_toc_for_rlc_aram_save.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i24.i.i

for.body.preheader.i.i15.i.i:                     ; preds = %smu8_smu_construct_toc_for_rlc_aram_save.exit.i.i
  %wide.trip.count.i.i14.i.i = zext i8 %96 to i32
  br label %for.body.i.i22.i.i

for.cond.i.i18.i.i:                               ; preds = %for.body.i.i22.i.i
  %indvars.iv.next.i.i16.i.i = add nuw nsw i32 %indvars.iv.i.i19.i.i, 1
  %exitcond.not.i.i17.i.i = icmp eq i32 %indvars.iv.next.i.i16.i.i, %wide.trip.count.i.i14.i.i
  br i1 %exitcond.not.i.i17.i.i, label %for.cond.i.i18.i.i.do.end.i.i24.i.i_crit_edge, label %for.cond.i.i18.i.i.for.body.i.i22.i.i_crit_edge

for.cond.i.i18.i.i.for.body.i.i22.i.i_crit_edge:  ; preds = %for.cond.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i22.i.i

for.cond.i.i18.i.i.do.end.i.i24.i.i_crit_edge:    ; preds = %for.cond.i.i18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i24.i.i

for.body.i.i22.i.i:                               ; preds = %for.cond.i.i18.i.i.for.body.i.i22.i.i_crit_edge, %for.body.preheader.i.i15.i.i
  %indvars.iv.i.i19.i.i = phi i32 [ 0, %for.body.preheader.i.i15.i.i ], [ %indvars.iv.next.i.i16.i.i, %for.cond.i.i18.i.i.for.body.i.i22.i.i_crit_edge ]
  %firmware_ID.i.i20.i.i = getelementptr %struct.smu8_smumgr, ptr %86, i32 0, i32 15, i32 %indvars.iv.i.i19.i.i, i32 3
  %97 = ptrtoint ptr %firmware_ID.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %firmware_ID.i.i20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %98)
  %cmp9.i.i21.i.i = icmp eq i32 %98, 9
  br i1 %cmp9.i.i21.i.i, label %if.end19.i.i33.i.i, label %for.cond.i.i18.i.i

do.end.i.i24.i.i:                                 ; preds = %for.cond.i.i18.i.i.do.end.i.i24.i.i_crit_edge, %smu8_smu_construct_toc_for_rlc_aram_save.exit.i.i.do.end.i.i24.i.i_crit_edge
  %call18.i.i23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_scratch_task.exit.i.i.i

if.end19.i.i33.i.i:                               ; preds = %for.body.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i.i25.i.i = getelementptr %struct.smu8_smumgr, ptr %86, i32 0, i32 15, i32 %indvars.iv.i.i19.i.i
  %mc_addr.i.i26.i.i = getelementptr %struct.smu8_smumgr, ptr %86, i32 0, i32 15, i32 %indvars.iv.i.i19.i.i, i32 1
  %99 = ptrtoint ptr %mc_addr.i.i26.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %mc_addr.i.i26.i.i, align 8
  %conv23.i.i27.i.i = trunc i64 %100 to i32
  %addr.i.i28.i.i = getelementptr %struct.TOC, ptr %88, i32 0, i32 1, i32 %idxprom.i.i8.i.i, i32 3
  %low.i.i29.i.i = getelementptr %struct.TOC, ptr %88, i32 0, i32 1, i32 %idxprom.i.i8.i.i, i32 3, i32 1
  %101 = ptrtoint ptr %low.i.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv23.i.i27.i.i, ptr %low.i.i29.i.i, align 4
  %102 = load i64, ptr %mc_addr.i.i26.i.i, align 8
  %shr.i.i30.i.i = lshr i64 %102, 32
  %conv29.i.i31.i.i = trunc i64 %shr.i.i30.i.i to i32
  %103 = ptrtoint ptr %addr.i.i28.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv29.i.i31.i.i, ptr %addr.i.i28.i.i, align 4
  %104 = ptrtoint ptr %arrayidx22.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx22.i.i25.i.i, align 8
  %size_bytes.i.i32.i.i = getelementptr %struct.TOC, ptr %88, i32 0, i32 1, i32 %idxprom.i.i8.i.i, i32 4
  %106 = ptrtoint ptr %size_bytes.i.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %size_bytes.i.i32.i.i, align 4
  br label %smu8_smu_populate_single_scratch_task.exit.i.i.i

smu8_smu_populate_single_scratch_task.exit.i.i.i: ; preds = %if.end19.i.i33.i.i, %do.end.i.i24.i.i
  %107 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i2.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %108, i32 0, i32 10, i32 2
  %109 = ptrtoint ptr %kaddr.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %kaddr.i2.i.i.i, align 8
  %toc_entry_used_count.i3.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %108, i32 0, i32 2
  %111 = ptrtoint ptr %toc_entry_used_count.i3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %toc_entry_used_count.i3.i.i.i, align 2
  %inc.i4.i.i.i = add i16 %112, 1
  store i16 %inc.i4.i.i.i, ptr %toc_entry_used_count.i3.i.i.i, align 2
  %idxprom.i5.i.i.i = zext i16 %112 to i32
  %arrayidx.i6.i.i.i = getelementptr %struct.TOC, ptr %110, i32 0, i32 1, i32 %idxprom.i5.i.i.i
  %113 = ptrtoint ptr %arrayidx.i6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 2, ptr %arrayidx.i6.i.i.i, align 4
  %arg.i7.i.i.i = getelementptr %struct.TOC, ptr %110, i32 0, i32 1, i32 %idxprom.i5.i.i.i, i32 1
  %114 = ptrtoint ptr %arg.i7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 11, ptr %arg.i7.i.i.i, align 1
  %next.i8.i.i.i = getelementptr %struct.TOC, ptr %110, i32 0, i32 1, i32 %idxprom.i5.i.i.i, i32 2
  %115 = ptrtoint ptr %next.i8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -1, ptr %next.i8.i.i.i, align 2
  %scratch_buffer_length.i9.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %108, i32 0, i32 1
  %116 = ptrtoint ptr %scratch_buffer_length.i9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %scratch_buffer_length.i9.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp2.not.i10.i.i.i = icmp eq i8 %117, 0
  br i1 %cmp2.not.i10.i.i.i, label %smu8_smu_populate_single_scratch_task.exit.i.i.i.do.end.i21.i.i.i_crit_edge, label %for.body.preheader.i12.i.i.i

smu8_smu_populate_single_scratch_task.exit.i.i.i.do.end.i21.i.i.i_crit_edge: ; preds = %smu8_smu_populate_single_scratch_task.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i21.i.i.i

for.body.preheader.i12.i.i.i:                     ; preds = %smu8_smu_populate_single_scratch_task.exit.i.i.i
  %wide.trip.count.i11.i.i.i = zext i8 %117 to i32
  br label %for.body.i19.i.i.i

for.cond.i15.i.i.i:                               ; preds = %for.body.i19.i.i.i
  %indvars.iv.next.i13.i.i.i = add nuw nsw i32 %indvars.iv.i16.i.i.i, 1
  %exitcond.not.i14.i.i.i = icmp eq i32 %indvars.iv.next.i13.i.i.i, %wide.trip.count.i11.i.i.i
  br i1 %exitcond.not.i14.i.i.i, label %for.cond.i15.i.i.i.do.end.i21.i.i.i_crit_edge, label %for.cond.i15.i.i.i.for.body.i19.i.i.i_crit_edge

for.cond.i15.i.i.i.for.body.i19.i.i.i_crit_edge:  ; preds = %for.cond.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i19.i.i.i

for.cond.i15.i.i.i.do.end.i21.i.i.i_crit_edge:    ; preds = %for.cond.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i21.i.i.i

for.body.i19.i.i.i:                               ; preds = %for.cond.i15.i.i.i.for.body.i19.i.i.i_crit_edge, %for.body.preheader.i12.i.i.i
  %indvars.iv.i16.i.i.i = phi i32 [ 0, %for.body.preheader.i12.i.i.i ], [ %indvars.iv.next.i13.i.i.i, %for.cond.i15.i.i.i.for.body.i19.i.i.i_crit_edge ]
  %firmware_ID.i17.i.i.i = getelementptr %struct.smu8_smumgr, ptr %108, i32 0, i32 15, i32 %indvars.iv.i16.i.i.i, i32 3
  %118 = ptrtoint ptr %firmware_ID.i17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %firmware_ID.i17.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %119)
  %cmp9.i18.i.i.i = icmp eq i32 %119, 11
  br i1 %cmp9.i18.i.i.i, label %if.end19.i30.i.i.i, label %for.cond.i15.i.i.i

do.end.i21.i.i.i:                                 ; preds = %for.cond.i15.i.i.i.do.end.i21.i.i.i_crit_edge, %smu8_smu_populate_single_scratch_task.exit.i.i.i.do.end.i21.i.i.i_crit_edge
  %call18.i20.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_construct_toc_for_vddgfx_enter.exit.i.i

if.end19.i30.i.i.i:                               ; preds = %for.body.i19.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i22.i.i.i = getelementptr %struct.smu8_smumgr, ptr %108, i32 0, i32 15, i32 %indvars.iv.i16.i.i.i
  %mc_addr.i23.i.i.i = getelementptr %struct.smu8_smumgr, ptr %108, i32 0, i32 15, i32 %indvars.iv.i16.i.i.i, i32 1
  %120 = ptrtoint ptr %mc_addr.i23.i.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %mc_addr.i23.i.i.i, align 8
  %conv23.i24.i.i.i = trunc i64 %121 to i32
  %addr.i25.i.i.i = getelementptr %struct.TOC, ptr %110, i32 0, i32 1, i32 %idxprom.i5.i.i.i, i32 3
  %low.i26.i.i.i = getelementptr %struct.TOC, ptr %110, i32 0, i32 1, i32 %idxprom.i5.i.i.i, i32 3, i32 1
  %122 = ptrtoint ptr %low.i26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv23.i24.i.i.i, ptr %low.i26.i.i.i, align 4
  %123 = load i64, ptr %mc_addr.i23.i.i.i, align 8
  %shr.i27.i.i.i = lshr i64 %123, 32
  %conv29.i28.i.i.i = trunc i64 %shr.i27.i.i.i to i32
  %124 = ptrtoint ptr %addr.i25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv29.i28.i.i.i, ptr %addr.i25.i.i.i, align 4
  %125 = ptrtoint ptr %arrayidx22.i22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx22.i22.i.i.i, align 8
  %size_bytes.i29.i.i.i = getelementptr %struct.TOC, ptr %110, i32 0, i32 1, i32 %idxprom.i5.i.i.i, i32 4
  %127 = ptrtoint ptr %size_bytes.i29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %size_bytes.i29.i.i.i, align 4
  br label %smu8_smu_construct_toc_for_vddgfx_enter.exit.i.i

smu8_smu_construct_toc_for_vddgfx_enter.exit.i.i: ; preds = %if.end19.i30.i.i.i, %do.end.i21.i.i.i
  %128 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i35.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %129, i32 0, i32 10, i32 2
  %130 = ptrtoint ptr %kaddr.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %kaddr.i35.i.i, align 8
  %toc_entry_used_count.i36.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %129, i32 0, i32 2
  %132 = ptrtoint ptr %toc_entry_used_count.i36.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %toc_entry_used_count.i36.i.i, align 2
  %conv.i37.i.i = trunc i16 %133 to i8
  %arrayidx.i.i.i = getelementptr [32 x i8], ptr %131, i32 0, i32 1
  %134 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv.i37.i.i, ptr %arrayidx.i.i.i, align 1
  %135 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i.i38.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %135, i32 0, i32 10, i32 2
  %136 = ptrtoint ptr %kaddr.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %kaddr.i.i38.i.i, align 8
  %toc_entry_used_count.i.i39.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %135, i32 0, i32 2
  %138 = ptrtoint ptr %toc_entry_used_count.i.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %toc_entry_used_count.i.i39.i.i, align 2
  %inc.i.i40.i.i = add i16 %139, 1
  store i16 %inc.i.i40.i.i, ptr %toc_entry_used_count.i.i39.i.i, align 2
  %idxprom.i.i41.i.i = zext i16 %139 to i32
  %arrayidx.i.i42.i.i = getelementptr %struct.TOC, ptr %137, i32 0, i32 1, i32 %idxprom.i.i41.i.i
  %140 = ptrtoint ptr %arrayidx.i.i42.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %arrayidx.i.i42.i.i, align 4
  %arg.i.i43.i.i = getelementptr %struct.TOC, ptr %137, i32 0, i32 1, i32 %idxprom.i.i41.i.i, i32 1
  %141 = ptrtoint ptr %arg.i.i43.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 2, ptr %arg.i.i43.i.i, align 1
  %142 = load i16, ptr %toc_entry_used_count.i.i39.i.i, align 2
  %next.i.i44.i.i = getelementptr %struct.TOC, ptr %137, i32 0, i32 1, i32 %idxprom.i.i41.i.i, i32 2
  %143 = ptrtoint ptr %next.i.i44.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %next.i.i44.i.i, align 2
  %144 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %135, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp2.not.i.i45.i.i = icmp eq i8 %145, 0
  br i1 %cmp2.not.i.i45.i.i, label %smu8_smu_construct_toc_for_vddgfx_enter.exit.i.i.do.end.i.i54.i.i_crit_edge, label %for.body.preheader.i.i47.i.i

smu8_smu_construct_toc_for_vddgfx_enter.exit.i.i.do.end.i.i54.i.i_crit_edge: ; preds = %smu8_smu_construct_toc_for_vddgfx_enter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i54.i.i

for.body.preheader.i.i47.i.i:                     ; preds = %smu8_smu_construct_toc_for_vddgfx_enter.exit.i.i
  %wide.trip.count.i.i46.i.i = zext i8 %145 to i32
  br label %for.body.i.i53.i.i

for.cond.i.i50.i.i:                               ; preds = %for.body.i.i53.i.i
  %indvars.iv.next.i.i48.i.i = add nuw nsw i32 %indvars.iv.i.i51.i.i, 1
  %exitcond.not.i.i49.i.i = icmp eq i32 %indvars.iv.next.i.i48.i.i, %wide.trip.count.i.i46.i.i
  br i1 %exitcond.not.i.i49.i.i, label %for.cond.i.i50.i.i.do.end.i.i54.i.i_crit_edge, label %for.cond.i.i50.i.i.for.body.i.i53.i.i_crit_edge

for.cond.i.i50.i.i.for.body.i.i53.i.i_crit_edge:  ; preds = %for.cond.i.i50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i53.i.i

for.cond.i.i50.i.i.do.end.i.i54.i.i_crit_edge:    ; preds = %for.cond.i.i50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i54.i.i

for.body.i.i53.i.i:                               ; preds = %for.cond.i.i50.i.i.for.body.i.i53.i.i_crit_edge, %for.body.preheader.i.i47.i.i
  %indvars.iv.i.i51.i.i = phi i32 [ 0, %for.body.preheader.i.i47.i.i ], [ %indvars.iv.next.i.i48.i.i, %for.cond.i.i50.i.i.for.body.i.i53.i.i_crit_edge ]
  %firmware_ID.i.i52.i.i = getelementptr %struct.smu8_smumgr, ptr %135, i32 0, i32 13, i32 %indvars.iv.i.i51.i.i, i32 3
  %146 = ptrtoint ptr %firmware_ID.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %firmware_ID.i.i52.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %147)
  %cmp8.i.i.i.i = icmp eq i32 %147, 2
  br i1 %cmp8.i.i.i.i, label %if.end18.i.i.i.i, label %for.cond.i.i50.i.i

do.end.i.i54.i.i:                                 ; preds = %for.cond.i.i50.i.i.do.end.i.i54.i.i_crit_edge, %smu8_smu_construct_toc_for_vddgfx_enter.exit.i.i.do.end.i.i54.i.i_crit_edge
  %call17.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit.i.i.i

if.end18.i.i.i.i:                                 ; preds = %for.body.i.i53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i.i.i.i = getelementptr %struct.smu8_smumgr, ptr %135, i32 0, i32 13, i32 %indvars.iv.i.i51.i.i
  %mc_addr.i.i55.i.i = getelementptr %struct.smu8_smumgr, ptr %135, i32 0, i32 13, i32 %indvars.iv.i.i51.i.i, i32 1
  %148 = ptrtoint ptr %mc_addr.i.i55.i.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %mc_addr.i.i55.i.i, align 8
  %conv22.i.i.i.i = trunc i64 %149 to i32
  %addr.i.i56.i.i = getelementptr %struct.TOC, ptr %137, i32 0, i32 1, i32 %idxprom.i.i41.i.i, i32 3
  %low.i.i57.i.i = getelementptr %struct.TOC, ptr %137, i32 0, i32 1, i32 %idxprom.i.i41.i.i, i32 3, i32 1
  %150 = ptrtoint ptr %low.i.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv22.i.i.i.i, ptr %low.i.i57.i.i, align 4
  %151 = load i64, ptr %mc_addr.i.i55.i.i, align 8
  %shr.i.i58.i.i = lshr i64 %151, 32
  %conv28.i.i.i.i = trunc i64 %shr.i.i58.i.i to i32
  %152 = ptrtoint ptr %addr.i.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv28.i.i.i.i, ptr %addr.i.i56.i.i, align 4
  %153 = ptrtoint ptr %arrayidx21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx21.i.i.i.i, align 8
  %size_bytes.i.i59.i.i = getelementptr %struct.TOC, ptr %137, i32 0, i32 1, i32 %idxprom.i.i41.i.i, i32 4
  %155 = ptrtoint ptr %size_bytes.i.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %size_bytes.i.i59.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit.i.i.i

smu8_smu_populate_single_ucode_load_task.exit.i.i.i: ; preds = %if.end18.i.i.i.i, %do.end.i.i54.i.i
  %156 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i2.i60.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %157, i32 0, i32 10, i32 2
  %158 = ptrtoint ptr %kaddr.i2.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %kaddr.i2.i60.i.i, align 8
  %toc_entry_used_count.i3.i61.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %157, i32 0, i32 2
  %160 = ptrtoint ptr %toc_entry_used_count.i3.i61.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %toc_entry_used_count.i3.i61.i.i, align 2
  %inc.i4.i62.i.i = add i16 %161, 1
  store i16 %inc.i4.i62.i.i, ptr %toc_entry_used_count.i3.i61.i.i, align 2
  %idxprom.i5.i63.i.i = zext i16 %161 to i32
  %arrayidx.i6.i64.i.i = getelementptr %struct.TOC, ptr %159, i32 0, i32 1, i32 %idxprom.i5.i63.i.i
  %162 = ptrtoint ptr %arrayidx.i6.i64.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %arrayidx.i6.i64.i.i, align 4
  %arg.i7.i65.i.i = getelementptr %struct.TOC, ptr %159, i32 0, i32 1, i32 %idxprom.i5.i63.i.i, i32 1
  %163 = ptrtoint ptr %arg.i7.i65.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 3, ptr %arg.i7.i65.i.i, align 1
  %164 = load i16, ptr %toc_entry_used_count.i3.i61.i.i, align 2
  %next.i8.i66.i.i = getelementptr %struct.TOC, ptr %159, i32 0, i32 1, i32 %idxprom.i5.i63.i.i, i32 2
  %165 = ptrtoint ptr %next.i8.i66.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %next.i8.i66.i.i, align 2
  %166 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %157, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %cmp2.not.i9.i.i.i = icmp eq i8 %167, 0
  br i1 %cmp2.not.i9.i.i.i, label %smu8_smu_populate_single_ucode_load_task.exit.i.i.i.do.end.i20.i.i.i_crit_edge, label %for.body.preheader.i11.i.i.i

smu8_smu_populate_single_ucode_load_task.exit.i.i.i.do.end.i20.i.i.i_crit_edge: ; preds = %smu8_smu_populate_single_ucode_load_task.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i20.i.i.i

for.body.preheader.i11.i.i.i:                     ; preds = %smu8_smu_populate_single_ucode_load_task.exit.i.i.i
  %wide.trip.count.i10.i.i.i = zext i8 %167 to i32
  br label %for.body.i18.i.i.i

for.cond.i14.i.i.i:                               ; preds = %for.body.i18.i.i.i
  %indvars.iv.next.i12.i.i.i = add nuw nsw i32 %indvars.iv.i15.i.i.i, 1
  %exitcond.not.i13.i.i.i = icmp eq i32 %indvars.iv.next.i12.i.i.i, %wide.trip.count.i10.i.i.i
  br i1 %exitcond.not.i13.i.i.i, label %for.cond.i14.i.i.i.do.end.i20.i.i.i_crit_edge, label %for.cond.i14.i.i.i.for.body.i18.i.i.i_crit_edge

for.cond.i14.i.i.i.for.body.i18.i.i.i_crit_edge:  ; preds = %for.cond.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i18.i.i.i

for.cond.i14.i.i.i.do.end.i20.i.i.i_crit_edge:    ; preds = %for.cond.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i20.i.i.i

for.body.i18.i.i.i:                               ; preds = %for.cond.i14.i.i.i.for.body.i18.i.i.i_crit_edge, %for.body.preheader.i11.i.i.i
  %indvars.iv.i15.i.i.i = phi i32 [ 0, %for.body.preheader.i11.i.i.i ], [ %indvars.iv.next.i12.i.i.i, %for.cond.i14.i.i.i.for.body.i18.i.i.i_crit_edge ]
  %firmware_ID.i16.i.i.i = getelementptr %struct.smu8_smumgr, ptr %157, i32 0, i32 13, i32 %indvars.iv.i15.i.i.i, i32 3
  %168 = ptrtoint ptr %firmware_ID.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %firmware_ID.i16.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %169)
  %cmp8.i17.i.i.i = icmp eq i32 %169, 3
  br i1 %cmp8.i17.i.i.i, label %if.end18.i29.i.i.i, label %for.cond.i14.i.i.i

do.end.i20.i.i.i:                                 ; preds = %for.cond.i14.i.i.i.do.end.i20.i.i.i_crit_edge, %smu8_smu_populate_single_ucode_load_task.exit.i.i.i.do.end.i20.i.i.i_crit_edge
  %call17.i19.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit30.i.i.i

if.end18.i29.i.i.i:                               ; preds = %for.body.i18.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i21.i.i.i = getelementptr %struct.smu8_smumgr, ptr %157, i32 0, i32 13, i32 %indvars.iv.i15.i.i.i
  %mc_addr.i22.i.i.i = getelementptr %struct.smu8_smumgr, ptr %157, i32 0, i32 13, i32 %indvars.iv.i15.i.i.i, i32 1
  %170 = ptrtoint ptr %mc_addr.i22.i.i.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %mc_addr.i22.i.i.i, align 8
  %conv22.i23.i.i.i = trunc i64 %171 to i32
  %addr.i24.i.i.i = getelementptr %struct.TOC, ptr %159, i32 0, i32 1, i32 %idxprom.i5.i63.i.i, i32 3
  %low.i25.i.i.i = getelementptr %struct.TOC, ptr %159, i32 0, i32 1, i32 %idxprom.i5.i63.i.i, i32 3, i32 1
  %172 = ptrtoint ptr %low.i25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv22.i23.i.i.i, ptr %low.i25.i.i.i, align 4
  %173 = load i64, ptr %mc_addr.i22.i.i.i, align 8
  %shr.i26.i.i.i = lshr i64 %173, 32
  %conv28.i27.i.i.i = trunc i64 %shr.i26.i.i.i to i32
  %174 = ptrtoint ptr %addr.i24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %conv28.i27.i.i.i, ptr %addr.i24.i.i.i, align 4
  %175 = ptrtoint ptr %arrayidx21.i21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx21.i21.i.i.i, align 8
  %size_bytes.i28.i.i.i = getelementptr %struct.TOC, ptr %159, i32 0, i32 1, i32 %idxprom.i5.i63.i.i, i32 4
  %177 = ptrtoint ptr %size_bytes.i28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %size_bytes.i28.i.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit30.i.i.i

smu8_smu_populate_single_ucode_load_task.exit30.i.i.i: ; preds = %if.end18.i29.i.i.i, %do.end.i20.i.i.i
  %178 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i32.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %179, i32 0, i32 10, i32 2
  %180 = ptrtoint ptr %kaddr.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %kaddr.i32.i.i.i, align 8
  %toc_entry_used_count.i33.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %179, i32 0, i32 2
  %182 = ptrtoint ptr %toc_entry_used_count.i33.i.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %toc_entry_used_count.i33.i.i.i, align 2
  %inc.i34.i.i.i = add i16 %183, 1
  store i16 %inc.i34.i.i.i, ptr %toc_entry_used_count.i33.i.i.i, align 2
  %idxprom.i35.i.i.i = zext i16 %183 to i32
  %arrayidx.i36.i.i.i = getelementptr %struct.TOC, ptr %181, i32 0, i32 1, i32 %idxprom.i35.i.i.i
  %184 = ptrtoint ptr %arrayidx.i36.i.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %arrayidx.i36.i.i.i, align 4
  %arg.i37.i.i.i = getelementptr %struct.TOC, ptr %181, i32 0, i32 1, i32 %idxprom.i35.i.i.i, i32 1
  %185 = ptrtoint ptr %arg.i37.i.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 4, ptr %arg.i37.i.i.i, align 1
  %186 = load i16, ptr %toc_entry_used_count.i33.i.i.i, align 2
  %next.i38.i.i.i = getelementptr %struct.TOC, ptr %181, i32 0, i32 1, i32 %idxprom.i35.i.i.i, i32 2
  %187 = ptrtoint ptr %next.i38.i.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %186, ptr %next.i38.i.i.i, align 2
  %188 = ptrtoint ptr %179 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %179, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp2.not.i39.i.i.i = icmp eq i8 %189, 0
  br i1 %cmp2.not.i39.i.i.i, label %smu8_smu_populate_single_ucode_load_task.exit30.i.i.i.do.end.i50.i.i.i_crit_edge, label %for.body.preheader.i41.i.i.i

smu8_smu_populate_single_ucode_load_task.exit30.i.i.i.do.end.i50.i.i.i_crit_edge: ; preds = %smu8_smu_populate_single_ucode_load_task.exit30.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i50.i.i.i

for.body.preheader.i41.i.i.i:                     ; preds = %smu8_smu_populate_single_ucode_load_task.exit30.i.i.i
  %wide.trip.count.i40.i.i.i = zext i8 %189 to i32
  br label %for.body.i48.i.i.i

for.cond.i44.i.i.i:                               ; preds = %for.body.i48.i.i.i
  %indvars.iv.next.i42.i.i.i = add nuw nsw i32 %indvars.iv.i45.i.i.i, 1
  %exitcond.not.i43.i.i.i = icmp eq i32 %indvars.iv.next.i42.i.i.i, %wide.trip.count.i40.i.i.i
  br i1 %exitcond.not.i43.i.i.i, label %for.cond.i44.i.i.i.do.end.i50.i.i.i_crit_edge, label %for.cond.i44.i.i.i.for.body.i48.i.i.i_crit_edge

for.cond.i44.i.i.i.for.body.i48.i.i.i_crit_edge:  ; preds = %for.cond.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i48.i.i.i

for.cond.i44.i.i.i.do.end.i50.i.i.i_crit_edge:    ; preds = %for.cond.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i50.i.i.i

for.body.i48.i.i.i:                               ; preds = %for.cond.i44.i.i.i.for.body.i48.i.i.i_crit_edge, %for.body.preheader.i41.i.i.i
  %indvars.iv.i45.i.i.i = phi i32 [ 0, %for.body.preheader.i41.i.i.i ], [ %indvars.iv.next.i42.i.i.i, %for.cond.i44.i.i.i.for.body.i48.i.i.i_crit_edge ]
  %firmware_ID.i46.i.i.i = getelementptr %struct.smu8_smumgr, ptr %179, i32 0, i32 13, i32 %indvars.iv.i45.i.i.i, i32 3
  %190 = ptrtoint ptr %firmware_ID.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %firmware_ID.i46.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %191)
  %cmp8.i47.i.i.i = icmp eq i32 %191, 4
  br i1 %cmp8.i47.i.i.i, label %if.end18.i59.i.i.i, label %for.cond.i44.i.i.i

do.end.i50.i.i.i:                                 ; preds = %for.cond.i44.i.i.i.do.end.i50.i.i.i_crit_edge, %smu8_smu_populate_single_ucode_load_task.exit30.i.i.i.do.end.i50.i.i.i_crit_edge
  %call17.i49.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit60.i.i.i

if.end18.i59.i.i.i:                               ; preds = %for.body.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i51.i.i.i = getelementptr %struct.smu8_smumgr, ptr %179, i32 0, i32 13, i32 %indvars.iv.i45.i.i.i
  %mc_addr.i52.i.i.i = getelementptr %struct.smu8_smumgr, ptr %179, i32 0, i32 13, i32 %indvars.iv.i45.i.i.i, i32 1
  %192 = ptrtoint ptr %mc_addr.i52.i.i.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %mc_addr.i52.i.i.i, align 8
  %conv22.i53.i.i.i = trunc i64 %193 to i32
  %addr.i54.i.i.i = getelementptr %struct.TOC, ptr %181, i32 0, i32 1, i32 %idxprom.i35.i.i.i, i32 3
  %low.i55.i.i.i = getelementptr %struct.TOC, ptr %181, i32 0, i32 1, i32 %idxprom.i35.i.i.i, i32 3, i32 1
  %194 = ptrtoint ptr %low.i55.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv22.i53.i.i.i, ptr %low.i55.i.i.i, align 4
  %195 = load i64, ptr %mc_addr.i52.i.i.i, align 8
  %shr.i56.i.i.i = lshr i64 %195, 32
  %conv28.i57.i.i.i = trunc i64 %shr.i56.i.i.i to i32
  %196 = ptrtoint ptr %addr.i54.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %conv28.i57.i.i.i, ptr %addr.i54.i.i.i, align 4
  %197 = ptrtoint ptr %arrayidx21.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx21.i51.i.i.i, align 8
  %size_bytes.i58.i.i.i = getelementptr %struct.TOC, ptr %181, i32 0, i32 1, i32 %idxprom.i35.i.i.i, i32 4
  %199 = ptrtoint ptr %size_bytes.i58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %size_bytes.i58.i.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit60.i.i.i

smu8_smu_populate_single_ucode_load_task.exit60.i.i.i: ; preds = %if.end18.i59.i.i.i, %do.end.i50.i.i.i
  %200 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i62.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %201, i32 0, i32 10, i32 2
  %202 = ptrtoint ptr %kaddr.i62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %kaddr.i62.i.i.i, align 8
  %toc_entry_used_count.i63.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %201, i32 0, i32 2
  %204 = ptrtoint ptr %toc_entry_used_count.i63.i.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %toc_entry_used_count.i63.i.i.i, align 2
  %inc.i64.i.i.i = add i16 %205, 1
  store i16 %inc.i64.i.i.i, ptr %toc_entry_used_count.i63.i.i.i, align 2
  %idxprom.i65.i.i.i = zext i16 %205 to i32
  %arrayidx.i66.i.i.i = getelementptr %struct.TOC, ptr %203, i32 0, i32 1, i32 %idxprom.i65.i.i.i
  %206 = ptrtoint ptr %arrayidx.i66.i.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %arrayidx.i66.i.i.i, align 4
  %arg.i67.i.i.i = getelementptr %struct.TOC, ptr %203, i32 0, i32 1, i32 %idxprom.i65.i.i.i, i32 1
  %207 = ptrtoint ptr %arg.i67.i.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 5, ptr %arg.i67.i.i.i, align 1
  %208 = load i16, ptr %toc_entry_used_count.i63.i.i.i, align 2
  %next.i68.i.i.i = getelementptr %struct.TOC, ptr %203, i32 0, i32 1, i32 %idxprom.i65.i.i.i, i32 2
  %209 = ptrtoint ptr %next.i68.i.i.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %208, ptr %next.i68.i.i.i, align 2
  %210 = ptrtoint ptr %201 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %201, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %cmp2.not.i69.i.i.i = icmp eq i8 %211, 0
  br i1 %cmp2.not.i69.i.i.i, label %smu8_smu_populate_single_ucode_load_task.exit60.i.i.i.do.end.i80.i.i.i_crit_edge, label %for.body.preheader.i71.i.i.i

smu8_smu_populate_single_ucode_load_task.exit60.i.i.i.do.end.i80.i.i.i_crit_edge: ; preds = %smu8_smu_populate_single_ucode_load_task.exit60.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i80.i.i.i

for.body.preheader.i71.i.i.i:                     ; preds = %smu8_smu_populate_single_ucode_load_task.exit60.i.i.i
  %wide.trip.count.i70.i.i.i = zext i8 %211 to i32
  br label %for.body.i78.i.i.i

for.cond.i74.i.i.i:                               ; preds = %for.body.i78.i.i.i
  %indvars.iv.next.i72.i.i.i = add nuw nsw i32 %indvars.iv.i75.i.i.i, 1
  %exitcond.not.i73.i.i.i = icmp eq i32 %indvars.iv.next.i72.i.i.i, %wide.trip.count.i70.i.i.i
  br i1 %exitcond.not.i73.i.i.i, label %for.cond.i74.i.i.i.do.end.i80.i.i.i_crit_edge, label %for.cond.i74.i.i.i.for.body.i78.i.i.i_crit_edge

for.cond.i74.i.i.i.for.body.i78.i.i.i_crit_edge:  ; preds = %for.cond.i74.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i78.i.i.i

for.cond.i74.i.i.i.do.end.i80.i.i.i_crit_edge:    ; preds = %for.cond.i74.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i80.i.i.i

for.body.i78.i.i.i:                               ; preds = %for.cond.i74.i.i.i.for.body.i78.i.i.i_crit_edge, %for.body.preheader.i71.i.i.i
  %indvars.iv.i75.i.i.i = phi i32 [ 0, %for.body.preheader.i71.i.i.i ], [ %indvars.iv.next.i72.i.i.i, %for.cond.i74.i.i.i.for.body.i78.i.i.i_crit_edge ]
  %firmware_ID.i76.i.i.i = getelementptr %struct.smu8_smumgr, ptr %201, i32 0, i32 13, i32 %indvars.iv.i75.i.i.i, i32 3
  %212 = ptrtoint ptr %firmware_ID.i76.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %firmware_ID.i76.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %213)
  %cmp8.i77.i.i.i = icmp eq i32 %213, 5
  br i1 %cmp8.i77.i.i.i, label %if.end18.i89.i.i.i, label %for.cond.i74.i.i.i

do.end.i80.i.i.i:                                 ; preds = %for.cond.i74.i.i.i.do.end.i80.i.i.i_crit_edge, %smu8_smu_populate_single_ucode_load_task.exit60.i.i.i.do.end.i80.i.i.i_crit_edge
  %call17.i79.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit90.i.i.i

if.end18.i89.i.i.i:                               ; preds = %for.body.i78.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i81.i.i.i = getelementptr %struct.smu8_smumgr, ptr %201, i32 0, i32 13, i32 %indvars.iv.i75.i.i.i
  %mc_addr.i82.i.i.i = getelementptr %struct.smu8_smumgr, ptr %201, i32 0, i32 13, i32 %indvars.iv.i75.i.i.i, i32 1
  %214 = ptrtoint ptr %mc_addr.i82.i.i.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %mc_addr.i82.i.i.i, align 8
  %conv22.i83.i.i.i = trunc i64 %215 to i32
  %addr.i84.i.i.i = getelementptr %struct.TOC, ptr %203, i32 0, i32 1, i32 %idxprom.i65.i.i.i, i32 3
  %low.i85.i.i.i = getelementptr %struct.TOC, ptr %203, i32 0, i32 1, i32 %idxprom.i65.i.i.i, i32 3, i32 1
  %216 = ptrtoint ptr %low.i85.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %conv22.i83.i.i.i, ptr %low.i85.i.i.i, align 4
  %217 = load i64, ptr %mc_addr.i82.i.i.i, align 8
  %shr.i86.i.i.i = lshr i64 %217, 32
  %conv28.i87.i.i.i = trunc i64 %shr.i86.i.i.i to i32
  %218 = ptrtoint ptr %addr.i84.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %conv28.i87.i.i.i, ptr %addr.i84.i.i.i, align 4
  %219 = ptrtoint ptr %arrayidx21.i81.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx21.i81.i.i.i, align 8
  %size_bytes.i88.i.i.i = getelementptr %struct.TOC, ptr %203, i32 0, i32 1, i32 %idxprom.i65.i.i.i, i32 4
  %221 = ptrtoint ptr %size_bytes.i88.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %size_bytes.i88.i.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit90.i.i.i

smu8_smu_populate_single_ucode_load_task.exit90.i.i.i: ; preds = %if.end18.i89.i.i.i, %do.end.i80.i.i.i
  %222 = ptrtoint ptr %chip_id7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %chip_id7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %223)
  %cmp.i.i.i = icmp eq i32 %223, 14
  %224 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i92.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %225, i32 0, i32 10, i32 2
  %226 = ptrtoint ptr %kaddr.i92.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %kaddr.i92.i.i.i, align 8
  %toc_entry_used_count.i93.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %225, i32 0, i32 2
  %228 = ptrtoint ptr %toc_entry_used_count.i93.i.i.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %toc_entry_used_count.i93.i.i.i, align 2
  %inc.i94.i.i.i = add i16 %229, 1
  store i16 %inc.i94.i.i.i, ptr %toc_entry_used_count.i93.i.i.i, align 2
  %idxprom.i95.i.i.i = zext i16 %229 to i32
  %arrayidx.i96.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i
  %230 = ptrtoint ptr %arrayidx.i96.i.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 1, ptr %arrayidx.i96.i.i.i, align 4
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %smu8_smu_populate_single_ucode_load_task.exit90.i.i.i
  %arg.i97.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 1
  %231 = ptrtoint ptr %arg.i97.i.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 5, ptr %arg.i97.i.i.i, align 1
  %232 = ptrtoint ptr %toc_entry_used_count.i93.i.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %toc_entry_used_count.i93.i.i.i, align 2
  %next.i98.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 2
  %234 = ptrtoint ptr %next.i98.i.i.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %233, ptr %next.i98.i.i.i, align 2
  %235 = ptrtoint ptr %225 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %225, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %cmp2.not.i99.i.i.i = icmp eq i8 %236, 0
  br i1 %cmp2.not.i99.i.i.i, label %if.then.i.i.i.do.end.i110.i.i.i_crit_edge, label %for.body.preheader.i101.i.i.i

if.then.i.i.i.do.end.i110.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i110.i.i.i

for.body.preheader.i101.i.i.i:                    ; preds = %if.then.i.i.i
  %wide.trip.count.i100.i.i.i = zext i8 %236 to i32
  br label %for.body.i108.i.i.i

for.cond.i104.i.i.i:                              ; preds = %for.body.i108.i.i.i
  %indvars.iv.next.i102.i.i.i = add nuw nsw i32 %indvars.iv.i105.i.i.i, 1
  %exitcond.not.i103.i.i.i = icmp eq i32 %indvars.iv.next.i102.i.i.i, %wide.trip.count.i100.i.i.i
  br i1 %exitcond.not.i103.i.i.i, label %for.cond.i104.i.i.i.do.end.i110.i.i.i_crit_edge, label %for.cond.i104.i.i.i.for.body.i108.i.i.i_crit_edge

for.cond.i104.i.i.i.for.body.i108.i.i.i_crit_edge: ; preds = %for.cond.i104.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i108.i.i.i

for.cond.i104.i.i.i.do.end.i110.i.i.i_crit_edge:  ; preds = %for.cond.i104.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i110.i.i.i

for.body.i108.i.i.i:                              ; preds = %for.cond.i104.i.i.i.for.body.i108.i.i.i_crit_edge, %for.body.preheader.i101.i.i.i
  %indvars.iv.i105.i.i.i = phi i32 [ 0, %for.body.preheader.i101.i.i.i ], [ %indvars.iv.next.i102.i.i.i, %for.cond.i104.i.i.i.for.body.i108.i.i.i_crit_edge ]
  %firmware_ID.i106.i.i.i = getelementptr %struct.smu8_smumgr, ptr %225, i32 0, i32 13, i32 %indvars.iv.i105.i.i.i, i32 3
  %237 = ptrtoint ptr %firmware_ID.i106.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %firmware_ID.i106.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %238)
  %cmp8.i107.i.i.i = icmp eq i32 %238, 5
  br i1 %cmp8.i107.i.i.i, label %if.end18.i119.i.i.i, label %for.cond.i104.i.i.i

do.end.i110.i.i.i:                                ; preds = %for.cond.i104.i.i.i.do.end.i110.i.i.i_crit_edge, %if.then.i.i.i.do.end.i110.i.i.i_crit_edge
  %call17.i109.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %if.end.i.i.i

if.end18.i119.i.i.i:                              ; preds = %for.body.i108.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i111.i.i.i = getelementptr %struct.smu8_smumgr, ptr %225, i32 0, i32 13, i32 %indvars.iv.i105.i.i.i
  %mc_addr.i112.i.i.i = getelementptr %struct.smu8_smumgr, ptr %225, i32 0, i32 13, i32 %indvars.iv.i105.i.i.i, i32 1
  %239 = ptrtoint ptr %mc_addr.i112.i.i.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %mc_addr.i112.i.i.i, align 8
  %conv22.i113.i.i.i = trunc i64 %240 to i32
  %addr.i114.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 3
  %low.i115.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 3, i32 1
  %241 = ptrtoint ptr %low.i115.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %conv22.i113.i.i.i, ptr %low.i115.i.i.i, align 4
  %242 = load i64, ptr %mc_addr.i112.i.i.i, align 8
  %shr.i116.i.i.i = lshr i64 %242, 32
  %conv28.i117.i.i.i = trunc i64 %shr.i116.i.i.i to i32
  %243 = ptrtoint ptr %addr.i114.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %conv28.i117.i.i.i, ptr %addr.i114.i.i.i, align 4
  %244 = ptrtoint ptr %arrayidx21.i111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx21.i111.i.i.i, align 8
  %size_bytes.i118.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 4
  %246 = ptrtoint ptr %size_bytes.i118.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %size_bytes.i118.i.i.i, align 4
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %smu8_smu_populate_single_ucode_load_task.exit90.i.i.i
  %247 = ptrtoint ptr %chip_id7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %chip_id7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %248)
  %cmp8.i.i.i.i.i = icmp eq i32 %248, 14
  %.23.i.i.i.i.i = select i1 %cmp8.i.i.i.i.i, i8 5, i8 6
  %arg.i127.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 1
  %249 = ptrtoint ptr %arg.i127.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %.23.i.i.i.i.i, ptr %arg.i127.i.i.i, align 1
  %250 = ptrtoint ptr %toc_entry_used_count.i93.i.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %toc_entry_used_count.i93.i.i.i, align 2
  %next.i128.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 2
  %252 = ptrtoint ptr %next.i128.i.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %251, ptr %next.i128.i.i.i, align 2
  %253 = ptrtoint ptr %225 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %225, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %cmp2.not.i129.i.i.i = icmp eq i8 %254, 0
  br i1 %cmp2.not.i129.i.i.i, label %if.else.i.i.i.do.end.i140.i.i.i_crit_edge, label %for.body.preheader.i131.i.i.i

if.else.i.i.i.do.end.i140.i.i.i_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i140.i.i.i

for.body.preheader.i131.i.i.i:                    ; preds = %if.else.i.i.i
  %wide.trip.count.i130.i.i.i = zext i8 %254 to i32
  br label %for.body.i138.i.i.i

for.cond.i134.i.i.i:                              ; preds = %for.body.i138.i.i.i
  %indvars.iv.next.i132.i.i.i = add nuw nsw i32 %indvars.iv.i135.i.i.i, 1
  %exitcond.not.i133.i.i.i = icmp eq i32 %indvars.iv.next.i132.i.i.i, %wide.trip.count.i130.i.i.i
  br i1 %exitcond.not.i133.i.i.i, label %for.cond.i134.i.i.i.do.end.i140.i.i.i_crit_edge, label %for.cond.i134.i.i.i.for.body.i138.i.i.i_crit_edge

for.cond.i134.i.i.i.for.body.i138.i.i.i_crit_edge: ; preds = %for.cond.i134.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i138.i.i.i

for.cond.i134.i.i.i.do.end.i140.i.i.i_crit_edge:  ; preds = %for.cond.i134.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i140.i.i.i

for.body.i138.i.i.i:                              ; preds = %for.cond.i134.i.i.i.for.body.i138.i.i.i_crit_edge, %for.body.preheader.i131.i.i.i
  %indvars.iv.i135.i.i.i = phi i32 [ 0, %for.body.preheader.i131.i.i.i ], [ %indvars.iv.next.i132.i.i.i, %for.cond.i134.i.i.i.for.body.i138.i.i.i_crit_edge ]
  %firmware_ID.i136.i.i.i = getelementptr %struct.smu8_smumgr, ptr %225, i32 0, i32 13, i32 %indvars.iv.i135.i.i.i, i32 3
  %255 = ptrtoint ptr %firmware_ID.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %firmware_ID.i136.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %256)
  %cmp8.i137.i.i.i = icmp eq i32 %256, 6
  br i1 %cmp8.i137.i.i.i, label %if.end18.i149.i.i.i, label %for.cond.i134.i.i.i

do.end.i140.i.i.i:                                ; preds = %for.cond.i134.i.i.i.do.end.i140.i.i.i_crit_edge, %if.else.i.i.i.do.end.i140.i.i.i_crit_edge
  %call17.i139.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %if.end.i.i.i

if.end18.i149.i.i.i:                              ; preds = %for.body.i138.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i141.i.i.i = getelementptr %struct.smu8_smumgr, ptr %225, i32 0, i32 13, i32 %indvars.iv.i135.i.i.i
  %mc_addr.i142.i.i.i = getelementptr %struct.smu8_smumgr, ptr %225, i32 0, i32 13, i32 %indvars.iv.i135.i.i.i, i32 1
  %257 = ptrtoint ptr %mc_addr.i142.i.i.i to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %mc_addr.i142.i.i.i, align 8
  %conv22.i143.i.i.i = trunc i64 %258 to i32
  %addr.i144.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 3
  %low.i145.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 3, i32 1
  %259 = ptrtoint ptr %low.i145.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %conv22.i143.i.i.i, ptr %low.i145.i.i.i, align 4
  %260 = load i64, ptr %mc_addr.i142.i.i.i, align 8
  %shr.i146.i.i.i = lshr i64 %260, 32
  %conv28.i147.i.i.i = trunc i64 %shr.i146.i.i.i to i32
  %261 = ptrtoint ptr %addr.i144.i.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %conv28.i147.i.i.i, ptr %addr.i144.i.i.i, align 4
  %262 = ptrtoint ptr %arrayidx21.i141.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx21.i141.i.i.i, align 8
  %size_bytes.i148.i.i.i = getelementptr %struct.TOC, ptr %227, i32 0, i32 1, i32 %idxprom.i95.i.i.i, i32 4
  %264 = ptrtoint ptr %size_bytes.i148.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %size_bytes.i148.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end18.i149.i.i.i, %do.end.i140.i.i.i, %if.end18.i119.i.i.i, %do.end.i110.i.i.i
  %265 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i152.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %266, i32 0, i32 10, i32 2
  %267 = ptrtoint ptr %kaddr.i152.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %kaddr.i152.i.i.i, align 8
  %toc_entry_used_count.i153.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %266, i32 0, i32 2
  %269 = ptrtoint ptr %toc_entry_used_count.i153.i.i.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %toc_entry_used_count.i153.i.i.i, align 2
  %inc.i154.i.i.i = add i16 %270, 1
  store i16 %inc.i154.i.i.i, ptr %toc_entry_used_count.i153.i.i.i, align 2
  %idxprom.i155.i.i.i = zext i16 %270 to i32
  %arrayidx.i156.i.i.i = getelementptr %struct.TOC, ptr %268, i32 0, i32 1, i32 %idxprom.i155.i.i.i
  %271 = ptrtoint ptr %arrayidx.i156.i.i.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 1, ptr %arrayidx.i156.i.i.i, align 4
  %arg.i157.i.i.i = getelementptr %struct.TOC, ptr %268, i32 0, i32 1, i32 %idxprom.i155.i.i.i, i32 1
  %272 = ptrtoint ptr %arg.i157.i.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 8, ptr %arg.i157.i.i.i, align 1
  %273 = load i16, ptr %toc_entry_used_count.i153.i.i.i, align 2
  %next.i158.i.i.i = getelementptr %struct.TOC, ptr %268, i32 0, i32 1, i32 %idxprom.i155.i.i.i, i32 2
  %274 = ptrtoint ptr %next.i158.i.i.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %273, ptr %next.i158.i.i.i, align 2
  %275 = ptrtoint ptr %266 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %266, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %cmp2.not.i159.i.i.i = icmp eq i8 %276, 0
  br i1 %cmp2.not.i159.i.i.i, label %if.end.i.i.i.do.end.i170.i.i.i_crit_edge, label %for.body.preheader.i161.i.i.i

if.end.i.i.i.do.end.i170.i.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i170.i.i.i

for.body.preheader.i161.i.i.i:                    ; preds = %if.end.i.i.i
  %wide.trip.count.i160.i.i.i = zext i8 %276 to i32
  br label %for.body.i168.i.i.i

for.cond.i164.i.i.i:                              ; preds = %for.body.i168.i.i.i
  %indvars.iv.next.i162.i.i.i = add nuw nsw i32 %indvars.iv.i165.i.i.i, 1
  %exitcond.not.i163.i.i.i = icmp eq i32 %indvars.iv.next.i162.i.i.i, %wide.trip.count.i160.i.i.i
  br i1 %exitcond.not.i163.i.i.i, label %for.cond.i164.i.i.i.do.end.i170.i.i.i_crit_edge, label %for.cond.i164.i.i.i.for.body.i168.i.i.i_crit_edge

for.cond.i164.i.i.i.for.body.i168.i.i.i_crit_edge: ; preds = %for.cond.i164.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i168.i.i.i

for.cond.i164.i.i.i.do.end.i170.i.i.i_crit_edge:  ; preds = %for.cond.i164.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i170.i.i.i

for.body.i168.i.i.i:                              ; preds = %for.cond.i164.i.i.i.for.body.i168.i.i.i_crit_edge, %for.body.preheader.i161.i.i.i
  %indvars.iv.i165.i.i.i = phi i32 [ 0, %for.body.preheader.i161.i.i.i ], [ %indvars.iv.next.i162.i.i.i, %for.cond.i164.i.i.i.for.body.i168.i.i.i_crit_edge ]
  %firmware_ID.i166.i.i.i = getelementptr %struct.smu8_smumgr, ptr %266, i32 0, i32 13, i32 %indvars.iv.i165.i.i.i, i32 3
  %277 = ptrtoint ptr %firmware_ID.i166.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %firmware_ID.i166.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %278)
  %cmp8.i167.i.i.i = icmp eq i32 %278, 8
  br i1 %cmp8.i167.i.i.i, label %if.end18.i179.i.i.i, label %for.cond.i164.i.i.i

do.end.i170.i.i.i:                                ; preds = %for.cond.i164.i.i.i.do.end.i170.i.i.i_crit_edge, %if.end.i.i.i.do.end.i170.i.i.i_crit_edge
  %call17.i169.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit180.i.i.i

if.end18.i179.i.i.i:                              ; preds = %for.body.i168.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i171.i.i.i = getelementptr %struct.smu8_smumgr, ptr %266, i32 0, i32 13, i32 %indvars.iv.i165.i.i.i
  %mc_addr.i172.i.i.i = getelementptr %struct.smu8_smumgr, ptr %266, i32 0, i32 13, i32 %indvars.iv.i165.i.i.i, i32 1
  %279 = ptrtoint ptr %mc_addr.i172.i.i.i to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %mc_addr.i172.i.i.i, align 8
  %conv22.i173.i.i.i = trunc i64 %280 to i32
  %addr.i174.i.i.i = getelementptr %struct.TOC, ptr %268, i32 0, i32 1, i32 %idxprom.i155.i.i.i, i32 3
  %low.i175.i.i.i = getelementptr %struct.TOC, ptr %268, i32 0, i32 1, i32 %idxprom.i155.i.i.i, i32 3, i32 1
  %281 = ptrtoint ptr %low.i175.i.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %conv22.i173.i.i.i, ptr %low.i175.i.i.i, align 4
  %282 = load i64, ptr %mc_addr.i172.i.i.i, align 8
  %shr.i176.i.i.i = lshr i64 %282, 32
  %conv28.i177.i.i.i = trunc i64 %shr.i176.i.i.i to i32
  %283 = ptrtoint ptr %addr.i174.i.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %conv28.i177.i.i.i, ptr %addr.i174.i.i.i, align 4
  %284 = ptrtoint ptr %arrayidx21.i171.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx21.i171.i.i.i, align 8
  %size_bytes.i178.i.i.i = getelementptr %struct.TOC, ptr %268, i32 0, i32 1, i32 %idxprom.i155.i.i.i, i32 4
  %286 = ptrtoint ptr %size_bytes.i178.i.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %size_bytes.i178.i.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit180.i.i.i

smu8_smu_populate_single_ucode_load_task.exit180.i.i.i: ; preds = %if.end18.i179.i.i.i, %do.end.i170.i.i.i
  %287 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i182.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %288, i32 0, i32 10, i32 2
  %289 = ptrtoint ptr %kaddr.i182.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %kaddr.i182.i.i.i, align 8
  %toc_entry_used_count.i183.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %288, i32 0, i32 2
  %291 = ptrtoint ptr %toc_entry_used_count.i183.i.i.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %toc_entry_used_count.i183.i.i.i, align 2
  %inc.i184.i.i.i = add i16 %292, 1
  store i16 %inc.i184.i.i.i, ptr %toc_entry_used_count.i183.i.i.i, align 2
  %idxprom.i185.i.i.i = zext i16 %292 to i32
  %arrayidx.i186.i.i.i = getelementptr %struct.TOC, ptr %290, i32 0, i32 1, i32 %idxprom.i185.i.i.i
  %293 = ptrtoint ptr %arrayidx.i186.i.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 1, ptr %arrayidx.i186.i.i.i, align 4
  %arg.i187.i.i.i = getelementptr %struct.TOC, ptr %290, i32 0, i32 1, i32 %idxprom.i185.i.i.i, i32 1
  %294 = ptrtoint ptr %arg.i187.i.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 9, ptr %arg.i187.i.i.i, align 1
  %295 = load i16, ptr %toc_entry_used_count.i183.i.i.i, align 2
  %next.i188.i.i.i = getelementptr %struct.TOC, ptr %290, i32 0, i32 1, i32 %idxprom.i185.i.i.i, i32 2
  %296 = ptrtoint ptr %next.i188.i.i.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %295, ptr %next.i188.i.i.i, align 2
  %scratch_buffer_length.i.i67.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %288, i32 0, i32 1
  %297 = ptrtoint ptr %scratch_buffer_length.i.i67.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %scratch_buffer_length.i.i67.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %cmp2.not.i189.i.i.i = icmp eq i8 %298, 0
  br i1 %cmp2.not.i189.i.i.i, label %smu8_smu_populate_single_ucode_load_task.exit180.i.i.i.do.end.i198.i.i.i_crit_edge, label %for.body.preheader.i191.i.i.i

smu8_smu_populate_single_ucode_load_task.exit180.i.i.i.do.end.i198.i.i.i_crit_edge: ; preds = %smu8_smu_populate_single_ucode_load_task.exit180.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i198.i.i.i

for.body.preheader.i191.i.i.i:                    ; preds = %smu8_smu_populate_single_ucode_load_task.exit180.i.i.i
  %wide.trip.count.i190.i.i.i = zext i8 %298 to i32
  br label %for.body.i197.i.i.i

for.cond.i194.i.i.i:                              ; preds = %for.body.i197.i.i.i
  %indvars.iv.next.i192.i.i.i = add nuw nsw i32 %indvars.iv.i195.i.i.i, 1
  %exitcond.not.i193.i.i.i = icmp eq i32 %indvars.iv.next.i192.i.i.i, %wide.trip.count.i190.i.i.i
  br i1 %exitcond.not.i193.i.i.i, label %for.cond.i194.i.i.i.do.end.i198.i.i.i_crit_edge, label %for.cond.i194.i.i.i.for.body.i197.i.i.i_crit_edge

for.cond.i194.i.i.i.for.body.i197.i.i.i_crit_edge: ; preds = %for.cond.i194.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i197.i.i.i

for.cond.i194.i.i.i.do.end.i198.i.i.i_crit_edge:  ; preds = %for.cond.i194.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i198.i.i.i

for.body.i197.i.i.i:                              ; preds = %for.cond.i194.i.i.i.for.body.i197.i.i.i_crit_edge, %for.body.preheader.i191.i.i.i
  %indvars.iv.i195.i.i.i = phi i32 [ 0, %for.body.preheader.i191.i.i.i ], [ %indvars.iv.next.i192.i.i.i, %for.cond.i194.i.i.i.for.body.i197.i.i.i_crit_edge ]
  %firmware_ID.i196.i.i.i = getelementptr %struct.smu8_smumgr, ptr %288, i32 0, i32 15, i32 %indvars.iv.i195.i.i.i, i32 3
  %299 = ptrtoint ptr %firmware_ID.i196.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %firmware_ID.i196.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %300)
  %cmp9.i.i68.i.i = icmp eq i32 %300, 9
  br i1 %cmp9.i.i68.i.i, label %if.end19.i.i73.i.i, label %for.cond.i194.i.i.i

do.end.i198.i.i.i:                                ; preds = %for.cond.i194.i.i.i.do.end.i198.i.i.i_crit_edge, %smu8_smu_populate_single_ucode_load_task.exit180.i.i.i.do.end.i198.i.i.i_crit_edge
  %call18.i.i69.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_scratch_task.exit.i74.i.i

if.end19.i.i73.i.i:                               ; preds = %for.body.i197.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i.i70.i.i = getelementptr %struct.smu8_smumgr, ptr %288, i32 0, i32 15, i32 %indvars.iv.i195.i.i.i
  %mc_addr.i199.i.i.i = getelementptr %struct.smu8_smumgr, ptr %288, i32 0, i32 15, i32 %indvars.iv.i195.i.i.i, i32 1
  %301 = ptrtoint ptr %mc_addr.i199.i.i.i to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %mc_addr.i199.i.i.i, align 8
  %conv23.i.i71.i.i = trunc i64 %302 to i32
  %addr.i200.i.i.i = getelementptr %struct.TOC, ptr %290, i32 0, i32 1, i32 %idxprom.i185.i.i.i, i32 3
  %low.i201.i.i.i = getelementptr %struct.TOC, ptr %290, i32 0, i32 1, i32 %idxprom.i185.i.i.i, i32 3, i32 1
  %303 = ptrtoint ptr %low.i201.i.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %conv23.i.i71.i.i, ptr %low.i201.i.i.i, align 4
  %304 = load i64, ptr %mc_addr.i199.i.i.i, align 8
  %shr.i202.i.i.i = lshr i64 %304, 32
  %conv29.i.i72.i.i = trunc i64 %shr.i202.i.i.i to i32
  %305 = ptrtoint ptr %addr.i200.i.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %conv29.i.i72.i.i, ptr %addr.i200.i.i.i, align 4
  %306 = ptrtoint ptr %arrayidx22.i.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx22.i.i70.i.i, align 8
  %size_bytes.i203.i.i.i = getelementptr %struct.TOC, ptr %290, i32 0, i32 1, i32 %idxprom.i185.i.i.i, i32 4
  %308 = ptrtoint ptr %size_bytes.i203.i.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %size_bytes.i203.i.i.i, align 4
  br label %smu8_smu_populate_single_scratch_task.exit.i74.i.i

smu8_smu_populate_single_scratch_task.exit.i74.i.i: ; preds = %if.end19.i.i73.i.i, %do.end.i198.i.i.i
  %309 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i205.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %310, i32 0, i32 10, i32 2
  %311 = ptrtoint ptr %kaddr.i205.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %kaddr.i205.i.i.i, align 8
  %toc_entry_used_count.i206.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %310, i32 0, i32 2
  %313 = ptrtoint ptr %toc_entry_used_count.i206.i.i.i to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %toc_entry_used_count.i206.i.i.i, align 2
  %inc.i207.i.i.i = add i16 %314, 1
  store i16 %inc.i207.i.i.i, ptr %toc_entry_used_count.i206.i.i.i, align 2
  %idxprom.i208.i.i.i = zext i16 %314 to i32
  %arrayidx.i209.i.i.i = getelementptr %struct.TOC, ptr %312, i32 0, i32 1, i32 %idxprom.i208.i.i.i
  %315 = ptrtoint ptr %arrayidx.i209.i.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 1, ptr %arrayidx.i209.i.i.i, align 4
  %arg.i210.i.i.i = getelementptr %struct.TOC, ptr %312, i32 0, i32 1, i32 %idxprom.i208.i.i.i, i32 1
  %316 = ptrtoint ptr %arg.i210.i.i.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 10, ptr %arg.i210.i.i.i, align 1
  %317 = load i16, ptr %toc_entry_used_count.i206.i.i.i, align 2
  %next.i211.i.i.i = getelementptr %struct.TOC, ptr %312, i32 0, i32 1, i32 %idxprom.i208.i.i.i, i32 2
  %318 = ptrtoint ptr %next.i211.i.i.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %317, ptr %next.i211.i.i.i, align 2
  %scratch_buffer_length.i212.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %310, i32 0, i32 1
  %319 = ptrtoint ptr %scratch_buffer_length.i212.i.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %scratch_buffer_length.i212.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %cmp2.not.i213.i.i.i = icmp eq i8 %320, 0
  br i1 %cmp2.not.i213.i.i.i, label %smu8_smu_populate_single_scratch_task.exit.i74.i.i.do.end.i224.i.i.i_crit_edge, label %for.body.preheader.i215.i.i.i

smu8_smu_populate_single_scratch_task.exit.i74.i.i.do.end.i224.i.i.i_crit_edge: ; preds = %smu8_smu_populate_single_scratch_task.exit.i74.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i224.i.i.i

for.body.preheader.i215.i.i.i:                    ; preds = %smu8_smu_populate_single_scratch_task.exit.i74.i.i
  %wide.trip.count.i214.i.i.i = zext i8 %320 to i32
  br label %for.body.i222.i.i.i

for.cond.i218.i.i.i:                              ; preds = %for.body.i222.i.i.i
  %indvars.iv.next.i216.i.i.i = add nuw nsw i32 %indvars.iv.i219.i.i.i, 1
  %exitcond.not.i217.i.i.i = icmp eq i32 %indvars.iv.next.i216.i.i.i, %wide.trip.count.i214.i.i.i
  br i1 %exitcond.not.i217.i.i.i, label %for.cond.i218.i.i.i.do.end.i224.i.i.i_crit_edge, label %for.cond.i218.i.i.i.for.body.i222.i.i.i_crit_edge

for.cond.i218.i.i.i.for.body.i222.i.i.i_crit_edge: ; preds = %for.cond.i218.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i222.i.i.i

for.cond.i218.i.i.i.do.end.i224.i.i.i_crit_edge:  ; preds = %for.cond.i218.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i224.i.i.i

for.body.i222.i.i.i:                              ; preds = %for.cond.i218.i.i.i.for.body.i222.i.i.i_crit_edge, %for.body.preheader.i215.i.i.i
  %indvars.iv.i219.i.i.i = phi i32 [ 0, %for.body.preheader.i215.i.i.i ], [ %indvars.iv.next.i216.i.i.i, %for.cond.i218.i.i.i.for.body.i222.i.i.i_crit_edge ]
  %firmware_ID.i220.i.i.i = getelementptr %struct.smu8_smumgr, ptr %310, i32 0, i32 15, i32 %indvars.iv.i219.i.i.i, i32 3
  %321 = ptrtoint ptr %firmware_ID.i220.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %firmware_ID.i220.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %322)
  %cmp9.i221.i.i.i = icmp eq i32 %322, 10
  br i1 %cmp9.i221.i.i.i, label %if.end19.i233.i.i.i, label %for.cond.i218.i.i.i

do.end.i224.i.i.i:                                ; preds = %for.cond.i218.i.i.i.do.end.i224.i.i.i_crit_edge, %smu8_smu_populate_single_scratch_task.exit.i74.i.i.do.end.i224.i.i.i_crit_edge
  %call18.i223.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_scratch_task.exit234.i.i.i

if.end19.i233.i.i.i:                              ; preds = %for.body.i222.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i225.i.i.i = getelementptr %struct.smu8_smumgr, ptr %310, i32 0, i32 15, i32 %indvars.iv.i219.i.i.i
  %mc_addr.i226.i.i.i = getelementptr %struct.smu8_smumgr, ptr %310, i32 0, i32 15, i32 %indvars.iv.i219.i.i.i, i32 1
  %323 = ptrtoint ptr %mc_addr.i226.i.i.i to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %mc_addr.i226.i.i.i, align 8
  %conv23.i227.i.i.i = trunc i64 %324 to i32
  %addr.i228.i.i.i = getelementptr %struct.TOC, ptr %312, i32 0, i32 1, i32 %idxprom.i208.i.i.i, i32 3
  %low.i229.i.i.i = getelementptr %struct.TOC, ptr %312, i32 0, i32 1, i32 %idxprom.i208.i.i.i, i32 3, i32 1
  %325 = ptrtoint ptr %low.i229.i.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %conv23.i227.i.i.i, ptr %low.i229.i.i.i, align 4
  %326 = load i64, ptr %mc_addr.i226.i.i.i, align 8
  %shr.i230.i.i.i = lshr i64 %326, 32
  %conv29.i231.i.i.i = trunc i64 %shr.i230.i.i.i to i32
  %327 = ptrtoint ptr %addr.i228.i.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %conv29.i231.i.i.i, ptr %addr.i228.i.i.i, align 4
  %328 = ptrtoint ptr %arrayidx22.i225.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx22.i225.i.i.i, align 8
  %size_bytes.i232.i.i.i = getelementptr %struct.TOC, ptr %312, i32 0, i32 1, i32 %idxprom.i208.i.i.i, i32 4
  %330 = ptrtoint ptr %size_bytes.i232.i.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %size_bytes.i232.i.i.i, align 4
  br label %smu8_smu_populate_single_scratch_task.exit234.i.i.i

smu8_smu_populate_single_scratch_task.exit234.i.i.i: ; preds = %if.end19.i233.i.i.i, %do.end.i224.i.i.i
  %331 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i236.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %332, i32 0, i32 10, i32 2
  %333 = ptrtoint ptr %kaddr.i236.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %kaddr.i236.i.i.i, align 8
  %toc_entry_used_count.i237.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %332, i32 0, i32 2
  %335 = ptrtoint ptr %toc_entry_used_count.i237.i.i.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %toc_entry_used_count.i237.i.i.i, align 2
  %inc.i238.i.i.i = add i16 %336, 1
  store i16 %inc.i238.i.i.i, ptr %toc_entry_used_count.i237.i.i.i, align 2
  %idxprom.i239.i.i.i = zext i16 %336 to i32
  %arrayidx.i240.i.i.i = getelementptr %struct.TOC, ptr %334, i32 0, i32 1, i32 %idxprom.i239.i.i.i
  %337 = ptrtoint ptr %arrayidx.i240.i.i.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 1, ptr %arrayidx.i240.i.i.i, align 4
  %arg.i241.i.i.i = getelementptr %struct.TOC, ptr %334, i32 0, i32 1, i32 %idxprom.i239.i.i.i, i32 1
  %338 = ptrtoint ptr %arg.i241.i.i.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 11, ptr %arg.i241.i.i.i, align 1
  %next.i242.i.i.i = getelementptr %struct.TOC, ptr %334, i32 0, i32 1, i32 %idxprom.i239.i.i.i, i32 2
  %339 = ptrtoint ptr %next.i242.i.i.i to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 -1, ptr %next.i242.i.i.i, align 2
  %scratch_buffer_length.i243.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %332, i32 0, i32 1
  %340 = ptrtoint ptr %scratch_buffer_length.i243.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %scratch_buffer_length.i243.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %cmp2.not.i244.i.i.i = icmp eq i8 %341, 0
  br i1 %cmp2.not.i244.i.i.i, label %smu8_smu_populate_single_scratch_task.exit234.i.i.i.do.end.i255.i.i.i_crit_edge, label %for.body.preheader.i246.i.i.i

smu8_smu_populate_single_scratch_task.exit234.i.i.i.do.end.i255.i.i.i_crit_edge: ; preds = %smu8_smu_populate_single_scratch_task.exit234.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i255.i.i.i

for.body.preheader.i246.i.i.i:                    ; preds = %smu8_smu_populate_single_scratch_task.exit234.i.i.i
  %wide.trip.count.i245.i.i.i = zext i8 %341 to i32
  br label %for.body.i253.i.i.i

for.cond.i249.i.i.i:                              ; preds = %for.body.i253.i.i.i
  %indvars.iv.next.i247.i.i.i = add nuw nsw i32 %indvars.iv.i250.i.i.i, 1
  %exitcond.not.i248.i.i.i = icmp eq i32 %indvars.iv.next.i247.i.i.i, %wide.trip.count.i245.i.i.i
  br i1 %exitcond.not.i248.i.i.i, label %for.cond.i249.i.i.i.do.end.i255.i.i.i_crit_edge, label %for.cond.i249.i.i.i.for.body.i253.i.i.i_crit_edge

for.cond.i249.i.i.i.for.body.i253.i.i.i_crit_edge: ; preds = %for.cond.i249.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i253.i.i.i

for.cond.i249.i.i.i.do.end.i255.i.i.i_crit_edge:  ; preds = %for.cond.i249.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i255.i.i.i

for.body.i253.i.i.i:                              ; preds = %for.cond.i249.i.i.i.for.body.i253.i.i.i_crit_edge, %for.body.preheader.i246.i.i.i
  %indvars.iv.i250.i.i.i = phi i32 [ 0, %for.body.preheader.i246.i.i.i ], [ %indvars.iv.next.i247.i.i.i, %for.cond.i249.i.i.i.for.body.i253.i.i.i_crit_edge ]
  %firmware_ID.i251.i.i.i = getelementptr %struct.smu8_smumgr, ptr %332, i32 0, i32 15, i32 %indvars.iv.i250.i.i.i, i32 3
  %342 = ptrtoint ptr %firmware_ID.i251.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %firmware_ID.i251.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %343)
  %cmp9.i252.i.i.i = icmp eq i32 %343, 11
  br i1 %cmp9.i252.i.i.i, label %if.end19.i264.i.i.i, label %for.cond.i249.i.i.i

do.end.i255.i.i.i:                                ; preds = %for.cond.i249.i.i.i.do.end.i255.i.i.i_crit_edge, %smu8_smu_populate_single_scratch_task.exit234.i.i.i.do.end.i255.i.i.i_crit_edge
  %call18.i254.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_construct_toc_for_vddgfx_exit.exit.i.i

if.end19.i264.i.i.i:                              ; preds = %for.body.i253.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i256.i.i.i = getelementptr %struct.smu8_smumgr, ptr %332, i32 0, i32 15, i32 %indvars.iv.i250.i.i.i
  %mc_addr.i257.i.i.i = getelementptr %struct.smu8_smumgr, ptr %332, i32 0, i32 15, i32 %indvars.iv.i250.i.i.i, i32 1
  %344 = ptrtoint ptr %mc_addr.i257.i.i.i to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %mc_addr.i257.i.i.i, align 8
  %conv23.i258.i.i.i = trunc i64 %345 to i32
  %addr.i259.i.i.i = getelementptr %struct.TOC, ptr %334, i32 0, i32 1, i32 %idxprom.i239.i.i.i, i32 3
  %low.i260.i.i.i = getelementptr %struct.TOC, ptr %334, i32 0, i32 1, i32 %idxprom.i239.i.i.i, i32 3, i32 1
  %346 = ptrtoint ptr %low.i260.i.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %conv23.i258.i.i.i, ptr %low.i260.i.i.i, align 4
  %347 = load i64, ptr %mc_addr.i257.i.i.i, align 8
  %shr.i261.i.i.i = lshr i64 %347, 32
  %conv29.i262.i.i.i = trunc i64 %shr.i261.i.i.i to i32
  %348 = ptrtoint ptr %addr.i259.i.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %conv29.i262.i.i.i, ptr %addr.i259.i.i.i, align 4
  %349 = ptrtoint ptr %arrayidx22.i256.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx22.i256.i.i.i, align 8
  %size_bytes.i263.i.i.i = getelementptr %struct.TOC, ptr %334, i32 0, i32 1, i32 %idxprom.i239.i.i.i, i32 4
  %351 = ptrtoint ptr %size_bytes.i263.i.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %350, ptr %size_bytes.i263.i.i.i, align 4
  br label %smu8_smu_construct_toc_for_vddgfx_exit.exit.i.i

smu8_smu_construct_toc_for_vddgfx_exit.exit.i.i:  ; preds = %if.end19.i264.i.i.i, %do.end.i255.i.i.i
  %352 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %smu_backend.i, align 4
  %toc_entry_used_count.i76.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %353, i32 0, i32 2
  %354 = ptrtoint ptr %toc_entry_used_count.i76.i.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %toc_entry_used_count.i76.i.i, align 2
  %toc_entry_power_profiling_index.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %353, i32 0, i32 4
  %356 = ptrtoint ptr %toc_entry_power_profiling_index.i.i.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 %355, ptr %toc_entry_power_profiling_index.i.i.i, align 2
  %357 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i.i77.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %357, i32 0, i32 10, i32 2
  %358 = ptrtoint ptr %kaddr.i.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %kaddr.i.i77.i.i, align 8
  %toc_entry_used_count.i.i78.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %357, i32 0, i32 2
  %360 = ptrtoint ptr %toc_entry_used_count.i.i78.i.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %toc_entry_used_count.i.i78.i.i, align 2
  %inc.i.i79.i.i = add i16 %361, 1
  store i16 %inc.i.i79.i.i, ptr %toc_entry_used_count.i.i78.i.i, align 2
  %idxprom.i.i80.i.i = zext i16 %361 to i32
  %arrayidx.i.i81.i.i = getelementptr %struct.TOC, ptr %359, i32 0, i32 1, i32 %idxprom.i.i80.i.i
  %362 = ptrtoint ptr %arrayidx.i.i81.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 5, ptr %arrayidx.i.i81.i.i, align 4
  %arg.i.i82.i.i = getelementptr %struct.TOC, ptr %359, i32 0, i32 1, i32 %idxprom.i.i80.i.i, i32 1
  %363 = ptrtoint ptr %arg.i.i82.i.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 0, ptr %arg.i.i82.i.i, align 1
  %next.i.i83.i.i = getelementptr %struct.TOC, ptr %359, i32 0, i32 1, i32 %idxprom.i.i80.i.i, i32 2
  %364 = ptrtoint ptr %next.i.i83.i.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 -1, ptr %next.i.i83.i.i, align 2
  %scratch_buffer_length.i.i84.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %357, i32 0, i32 1
  %365 = ptrtoint ptr %scratch_buffer_length.i.i84.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %scratch_buffer_length.i.i84.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %cmp2.not.i.i85.i.i = icmp eq i8 %366, 0
  br i1 %cmp2.not.i.i85.i.i, label %smu8_smu_construct_toc_for_vddgfx_exit.exit.i.i.do.end.i.i96.i.i_crit_edge, label %for.body.preheader.i.i87.i.i

smu8_smu_construct_toc_for_vddgfx_exit.exit.i.i.do.end.i.i96.i.i_crit_edge: ; preds = %smu8_smu_construct_toc_for_vddgfx_exit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i96.i.i

for.body.preheader.i.i87.i.i:                     ; preds = %smu8_smu_construct_toc_for_vddgfx_exit.exit.i.i
  %wide.trip.count.i.i86.i.i = zext i8 %366 to i32
  br label %for.body.i.i94.i.i

for.cond.i.i90.i.i:                               ; preds = %for.body.i.i94.i.i
  %indvars.iv.next.i.i88.i.i = add nuw nsw i32 %indvars.iv.i.i91.i.i, 1
  %exitcond.not.i.i89.i.i = icmp eq i32 %indvars.iv.next.i.i88.i.i, %wide.trip.count.i.i86.i.i
  br i1 %exitcond.not.i.i89.i.i, label %for.cond.i.i90.i.i.do.end.i.i96.i.i_crit_edge, label %for.cond.i.i90.i.i.for.body.i.i94.i.i_crit_edge

for.cond.i.i90.i.i.for.body.i.i94.i.i_crit_edge:  ; preds = %for.cond.i.i90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i94.i.i

for.cond.i.i90.i.i.do.end.i.i96.i.i_crit_edge:    ; preds = %for.cond.i.i90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i96.i.i

for.body.i.i94.i.i:                               ; preds = %for.cond.i.i90.i.i.for.body.i.i94.i.i_crit_edge, %for.body.preheader.i.i87.i.i
  %indvars.iv.i.i91.i.i = phi i32 [ 0, %for.body.preheader.i.i87.i.i ], [ %indvars.iv.next.i.i88.i.i, %for.cond.i.i90.i.i.for.body.i.i94.i.i_crit_edge ]
  %firmware_ID.i.i92.i.i = getelementptr %struct.smu8_smumgr, ptr %357, i32 0, i32 15, i32 %indvars.iv.i.i91.i.i, i32 3
  %367 = ptrtoint ptr %firmware_ID.i.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %firmware_ID.i.i92.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %368)
  %cmp9.i.i93.i.i = icmp eq i32 %368, 14
  br i1 %cmp9.i.i93.i.i, label %if.end19.i.i105.i.i, label %for.cond.i.i90.i.i

do.end.i.i96.i.i:                                 ; preds = %for.cond.i.i90.i.i.do.end.i.i96.i.i_crit_edge, %smu8_smu_construct_toc_for_vddgfx_exit.exit.i.i.do.end.i.i96.i.i_crit_edge
  %call18.i.i95.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_construct_toc_for_power_profiling.exit.i.i

if.end19.i.i105.i.i:                              ; preds = %for.body.i.i94.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i.i97.i.i = getelementptr %struct.smu8_smumgr, ptr %357, i32 0, i32 15, i32 %indvars.iv.i.i91.i.i
  %mc_addr.i.i98.i.i = getelementptr %struct.smu8_smumgr, ptr %357, i32 0, i32 15, i32 %indvars.iv.i.i91.i.i, i32 1
  %369 = ptrtoint ptr %mc_addr.i.i98.i.i to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %mc_addr.i.i98.i.i, align 8
  %conv23.i.i99.i.i = trunc i64 %370 to i32
  %addr.i.i100.i.i = getelementptr %struct.TOC, ptr %359, i32 0, i32 1, i32 %idxprom.i.i80.i.i, i32 3
  %low.i.i101.i.i = getelementptr %struct.TOC, ptr %359, i32 0, i32 1, i32 %idxprom.i.i80.i.i, i32 3, i32 1
  %371 = ptrtoint ptr %low.i.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %conv23.i.i99.i.i, ptr %low.i.i101.i.i, align 4
  %372 = load i64, ptr %mc_addr.i.i98.i.i, align 8
  %shr.i.i102.i.i = lshr i64 %372, 32
  %conv29.i.i103.i.i = trunc i64 %shr.i.i102.i.i to i32
  %373 = ptrtoint ptr %addr.i.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %conv29.i.i103.i.i, ptr %addr.i.i100.i.i, align 4
  %374 = ptrtoint ptr %arrayidx22.i.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx22.i.i97.i.i, align 8
  %size_bytes.i.i104.i.i = getelementptr %struct.TOC, ptr %359, i32 0, i32 1, i32 %idxprom.i.i80.i.i, i32 4
  %376 = ptrtoint ptr %size_bytes.i.i104.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %375, ptr %size_bytes.i.i104.i.i, align 4
  br label %smu8_smu_construct_toc_for_power_profiling.exit.i.i

smu8_smu_construct_toc_for_power_profiling.exit.i.i: ; preds = %if.end19.i.i105.i.i, %do.end.i.i96.i.i
  %377 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %smu_backend.i, align 4
  %toc_entry_used_count.i108.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %378, i32 0, i32 2
  %379 = ptrtoint ptr %toc_entry_used_count.i108.i.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %toc_entry_used_count.i108.i.i, align 2
  %toc_entry_initialize_index.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %378, i32 0, i32 3
  %381 = ptrtoint ptr %toc_entry_initialize_index.i.i.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %380, ptr %toc_entry_initialize_index.i.i.i, align 4
  %382 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i.i109.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %382, i32 0, i32 10, i32 2
  %383 = ptrtoint ptr %kaddr.i.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %kaddr.i.i109.i.i, align 8
  %toc_entry_used_count.i.i110.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %382, i32 0, i32 2
  %385 = ptrtoint ptr %toc_entry_used_count.i.i110.i.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %toc_entry_used_count.i.i110.i.i, align 2
  %inc.i.i111.i.i = add i16 %386, 1
  store i16 %inc.i.i111.i.i, ptr %toc_entry_used_count.i.i110.i.i, align 2
  %idxprom.i.i112.i.i = zext i16 %386 to i32
  %arrayidx.i.i113.i.i = getelementptr %struct.TOC, ptr %384, i32 0, i32 1, i32 %idxprom.i.i112.i.i
  %387 = ptrtoint ptr %arrayidx.i.i113.i.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 1, ptr %arrayidx.i.i113.i.i, align 4
  %arg.i.i114.i.i = getelementptr %struct.TOC, ptr %384, i32 0, i32 1, i32 %idxprom.i.i112.i.i, i32 1
  %388 = ptrtoint ptr %arg.i.i114.i.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 0, ptr %arg.i.i114.i.i, align 1
  %389 = load i16, ptr %toc_entry_used_count.i.i110.i.i, align 2
  %next.i.i115.i.i = getelementptr %struct.TOC, ptr %384, i32 0, i32 1, i32 %idxprom.i.i112.i.i, i32 2
  %390 = ptrtoint ptr %next.i.i115.i.i to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %389, ptr %next.i.i115.i.i, align 2
  %391 = ptrtoint ptr %382 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %382, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %cmp2.not.i.i116.i.i = icmp eq i8 %392, 0
  br i1 %cmp2.not.i.i116.i.i, label %smu8_smu_construct_toc_for_power_profiling.exit.i.i.do.end.i.i127.i.i_crit_edge, label %for.body.preheader.i.i118.i.i

smu8_smu_construct_toc_for_power_profiling.exit.i.i.do.end.i.i127.i.i_crit_edge: ; preds = %smu8_smu_construct_toc_for_power_profiling.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i127.i.i

for.body.preheader.i.i118.i.i:                    ; preds = %smu8_smu_construct_toc_for_power_profiling.exit.i.i
  %wide.trip.count.i.i117.i.i = zext i8 %392 to i32
  br label %for.body.i.i125.i.i

for.cond.i.i121.i.i:                              ; preds = %for.body.i.i125.i.i
  %indvars.iv.next.i.i119.i.i = add nuw nsw i32 %indvars.iv.i.i122.i.i, 1
  %exitcond.not.i.i120.i.i = icmp eq i32 %indvars.iv.next.i.i119.i.i, %wide.trip.count.i.i117.i.i
  br i1 %exitcond.not.i.i120.i.i, label %for.cond.i.i121.i.i.do.end.i.i127.i.i_crit_edge, label %for.cond.i.i121.i.i.for.body.i.i125.i.i_crit_edge

for.cond.i.i121.i.i.for.body.i.i125.i.i_crit_edge: ; preds = %for.cond.i.i121.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i125.i.i

for.cond.i.i121.i.i.do.end.i.i127.i.i_crit_edge:  ; preds = %for.cond.i.i121.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i127.i.i

for.body.i.i125.i.i:                              ; preds = %for.cond.i.i121.i.i.for.body.i.i125.i.i_crit_edge, %for.body.preheader.i.i118.i.i
  %indvars.iv.i.i122.i.i = phi i32 [ 0, %for.body.preheader.i.i118.i.i ], [ %indvars.iv.next.i.i119.i.i, %for.cond.i.i121.i.i.for.body.i.i125.i.i_crit_edge ]
  %firmware_ID.i.i123.i.i = getelementptr %struct.smu8_smumgr, ptr %382, i32 0, i32 13, i32 %indvars.iv.i.i122.i.i, i32 3
  %393 = ptrtoint ptr %firmware_ID.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %firmware_ID.i.i123.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %cmp8.i.i124.i.i = icmp eq i32 %394, 0
  br i1 %cmp8.i.i124.i.i, label %if.end18.i.i136.i.i, label %for.cond.i.i121.i.i

do.end.i.i127.i.i:                                ; preds = %for.cond.i.i121.i.i.do.end.i.i127.i.i_crit_edge, %smu8_smu_construct_toc_for_power_profiling.exit.i.i.do.end.i.i127.i.i_crit_edge
  %call17.i.i126.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit.i138.i.i

if.end18.i.i136.i.i:                              ; preds = %for.body.i.i125.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i.i128.i.i = getelementptr %struct.smu8_smumgr, ptr %382, i32 0, i32 13, i32 %indvars.iv.i.i122.i.i
  %mc_addr.i.i129.i.i = getelementptr %struct.smu8_smumgr, ptr %382, i32 0, i32 13, i32 %indvars.iv.i.i122.i.i, i32 1
  %395 = ptrtoint ptr %mc_addr.i.i129.i.i to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %mc_addr.i.i129.i.i, align 8
  %conv22.i.i130.i.i = trunc i64 %396 to i32
  %addr.i.i131.i.i = getelementptr %struct.TOC, ptr %384, i32 0, i32 1, i32 %idxprom.i.i112.i.i, i32 3
  %low.i.i132.i.i = getelementptr %struct.TOC, ptr %384, i32 0, i32 1, i32 %idxprom.i.i112.i.i, i32 3, i32 1
  %397 = ptrtoint ptr %low.i.i132.i.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %conv22.i.i130.i.i, ptr %low.i.i132.i.i, align 4
  %398 = load i64, ptr %mc_addr.i.i129.i.i, align 8
  %shr.i.i133.i.i = lshr i64 %398, 32
  %conv28.i.i134.i.i = trunc i64 %shr.i.i133.i.i to i32
  %399 = ptrtoint ptr %addr.i.i131.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %conv28.i.i134.i.i, ptr %addr.i.i131.i.i, align 4
  %400 = ptrtoint ptr %arrayidx21.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx21.i.i128.i.i, align 8
  %size_bytes.i.i135.i.i = getelementptr %struct.TOC, ptr %384, i32 0, i32 1, i32 %idxprom.i.i112.i.i, i32 4
  %402 = ptrtoint ptr %size_bytes.i.i135.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %401, ptr %size_bytes.i.i135.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit.i138.i.i

smu8_smu_populate_single_ucode_load_task.exit.i138.i.i: ; preds = %if.end18.i.i136.i.i, %do.end.i.i127.i.i
  %403 = ptrtoint ptr %chip_id7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %chip_id7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %404)
  %cmp.not.i.i.i = icmp eq i32 %404, 14
  br i1 %cmp.not.i.i.i, label %smu8_smu_populate_single_ucode_load_task.exit.i138.i.i.if.end.i176.i.i_crit_edge, label %if.then.i147.i.i

smu8_smu_populate_single_ucode_load_task.exit.i138.i.i.if.end.i176.i.i_crit_edge: ; preds = %smu8_smu_populate_single_ucode_load_task.exit.i138.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i176.i.i

if.then.i147.i.i:                                 ; preds = %smu8_smu_populate_single_ucode_load_task.exit.i138.i.i
  %405 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i2.i139.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %406, i32 0, i32 10, i32 2
  %407 = ptrtoint ptr %kaddr.i2.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %kaddr.i2.i139.i.i, align 8
  %toc_entry_used_count.i3.i140.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %406, i32 0, i32 2
  %409 = ptrtoint ptr %toc_entry_used_count.i3.i140.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %toc_entry_used_count.i3.i140.i.i, align 2
  %inc.i4.i141.i.i = add i16 %410, 1
  store i16 %inc.i4.i141.i.i, ptr %toc_entry_used_count.i3.i140.i.i, align 2
  %idxprom.i5.i142.i.i = zext i16 %410 to i32
  %arrayidx.i6.i143.i.i = getelementptr %struct.TOC, ptr %408, i32 0, i32 1, i32 %idxprom.i5.i142.i.i
  %411 = ptrtoint ptr %arrayidx.i6.i143.i.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 1, ptr %arrayidx.i6.i143.i.i, align 4
  %412 = ptrtoint ptr %chip_id7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %chip_id7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %413)
  %cmp.i.i.i.i.i = icmp ne i32 %413, 14
  %..i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i8
  %arg.i7.i144.i.i = getelementptr %struct.TOC, ptr %408, i32 0, i32 1, i32 %idxprom.i5.i142.i.i, i32 1
  %414 = ptrtoint ptr %arg.i7.i144.i.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 %..i.i.i.i.i, ptr %arg.i7.i144.i.i, align 1
  %415 = ptrtoint ptr %toc_entry_used_count.i3.i140.i.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %toc_entry_used_count.i3.i140.i.i, align 2
  %next.i8.i145.i.i = getelementptr %struct.TOC, ptr %408, i32 0, i32 1, i32 %idxprom.i5.i142.i.i, i32 2
  %417 = ptrtoint ptr %next.i8.i145.i.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 %416, ptr %next.i8.i145.i.i, align 2
  %418 = ptrtoint ptr %406 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %406, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %cmp2.not.i9.i146.i.i = icmp eq i8 %419, 0
  br i1 %cmp2.not.i9.i146.i.i, label %if.then.i147.i.i.do.end.i20.i158.i.i_crit_edge, label %for.body.preheader.i11.i149.i.i

if.then.i147.i.i.do.end.i20.i158.i.i_crit_edge:   ; preds = %if.then.i147.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i20.i158.i.i

for.body.preheader.i11.i149.i.i:                  ; preds = %if.then.i147.i.i
  %wide.trip.count.i10.i148.i.i = zext i8 %419 to i32
  br label %for.body.i18.i156.i.i

for.cond.i14.i152.i.i:                            ; preds = %for.body.i18.i156.i.i
  %indvars.iv.next.i12.i150.i.i = add nuw nsw i32 %indvars.iv.i15.i153.i.i, 1
  %exitcond.not.i13.i151.i.i = icmp eq i32 %indvars.iv.next.i12.i150.i.i, %wide.trip.count.i10.i148.i.i
  br i1 %exitcond.not.i13.i151.i.i, label %for.cond.i14.i152.i.i.do.end.i20.i158.i.i_crit_edge, label %for.cond.i14.i152.i.i.for.body.i18.i156.i.i_crit_edge

for.cond.i14.i152.i.i.for.body.i18.i156.i.i_crit_edge: ; preds = %for.cond.i14.i152.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i18.i156.i.i

for.cond.i14.i152.i.i.do.end.i20.i158.i.i_crit_edge: ; preds = %for.cond.i14.i152.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i20.i158.i.i

for.body.i18.i156.i.i:                            ; preds = %for.cond.i14.i152.i.i.for.body.i18.i156.i.i_crit_edge, %for.body.preheader.i11.i149.i.i
  %indvars.iv.i15.i153.i.i = phi i32 [ 0, %for.body.preheader.i11.i149.i.i ], [ %indvars.iv.next.i12.i150.i.i, %for.cond.i14.i152.i.i.for.body.i18.i156.i.i_crit_edge ]
  %firmware_ID.i16.i154.i.i = getelementptr %struct.smu8_smumgr, ptr %406, i32 0, i32 13, i32 %indvars.iv.i15.i153.i.i, i32 3
  %420 = ptrtoint ptr %firmware_ID.i16.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %firmware_ID.i16.i154.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %421)
  %cmp8.i17.i155.i.i = icmp eq i32 %421, 1
  br i1 %cmp8.i17.i155.i.i, label %if.end18.i29.i167.i.i, label %for.cond.i14.i152.i.i

do.end.i20.i158.i.i:                              ; preds = %for.cond.i14.i152.i.i.do.end.i20.i158.i.i_crit_edge, %if.then.i147.i.i.do.end.i20.i158.i.i_crit_edge
  %call17.i19.i157.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %if.end.i176.i.i

if.end18.i29.i167.i.i:                            ; preds = %for.body.i18.i156.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i21.i159.i.i = getelementptr %struct.smu8_smumgr, ptr %406, i32 0, i32 13, i32 %indvars.iv.i15.i153.i.i
  %mc_addr.i22.i160.i.i = getelementptr %struct.smu8_smumgr, ptr %406, i32 0, i32 13, i32 %indvars.iv.i15.i153.i.i, i32 1
  %422 = ptrtoint ptr %mc_addr.i22.i160.i.i to i32
  call void @__asan_load8_noabort(i32 %422)
  %423 = load i64, ptr %mc_addr.i22.i160.i.i, align 8
  %conv22.i23.i161.i.i = trunc i64 %423 to i32
  %addr.i24.i162.i.i = getelementptr %struct.TOC, ptr %408, i32 0, i32 1, i32 %idxprom.i5.i142.i.i, i32 3
  %low.i25.i163.i.i = getelementptr %struct.TOC, ptr %408, i32 0, i32 1, i32 %idxprom.i5.i142.i.i, i32 3, i32 1
  %424 = ptrtoint ptr %low.i25.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %conv22.i23.i161.i.i, ptr %low.i25.i163.i.i, align 4
  %425 = load i64, ptr %mc_addr.i22.i160.i.i, align 8
  %shr.i26.i164.i.i = lshr i64 %425, 32
  %conv28.i27.i165.i.i = trunc i64 %shr.i26.i164.i.i to i32
  %426 = ptrtoint ptr %addr.i24.i162.i.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %conv28.i27.i165.i.i, ptr %addr.i24.i162.i.i, align 4
  %427 = ptrtoint ptr %arrayidx21.i21.i159.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %arrayidx21.i21.i159.i.i, align 8
  %size_bytes.i28.i166.i.i = getelementptr %struct.TOC, ptr %408, i32 0, i32 1, i32 %idxprom.i5.i142.i.i, i32 4
  %429 = ptrtoint ptr %size_bytes.i28.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %428, ptr %size_bytes.i28.i166.i.i, align 4
  br label %if.end.i176.i.i

if.end.i176.i.i:                                  ; preds = %if.end18.i29.i167.i.i, %do.end.i20.i158.i.i, %smu8_smu_populate_single_ucode_load_task.exit.i138.i.i.if.end.i176.i.i_crit_edge
  %430 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i32.i168.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %431, i32 0, i32 10, i32 2
  %432 = ptrtoint ptr %kaddr.i32.i168.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %kaddr.i32.i168.i.i, align 8
  %toc_entry_used_count.i33.i169.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %431, i32 0, i32 2
  %434 = ptrtoint ptr %toc_entry_used_count.i33.i169.i.i to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %toc_entry_used_count.i33.i169.i.i, align 2
  %inc.i34.i170.i.i = add i16 %435, 1
  store i16 %inc.i34.i170.i.i, ptr %toc_entry_used_count.i33.i169.i.i, align 2
  %idxprom.i35.i171.i.i = zext i16 %435 to i32
  %arrayidx.i36.i172.i.i = getelementptr %struct.TOC, ptr %433, i32 0, i32 1, i32 %idxprom.i35.i171.i.i
  %436 = ptrtoint ptr %arrayidx.i36.i172.i.i to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 1, ptr %arrayidx.i36.i172.i.i, align 4
  %arg.i37.i173.i.i = getelementptr %struct.TOC, ptr %433, i32 0, i32 1, i32 %idxprom.i35.i171.i.i, i32 1
  %437 = ptrtoint ptr %arg.i37.i173.i.i to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 2, ptr %arg.i37.i173.i.i, align 1
  %438 = load i16, ptr %toc_entry_used_count.i33.i169.i.i, align 2
  %next.i38.i174.i.i = getelementptr %struct.TOC, ptr %433, i32 0, i32 1, i32 %idxprom.i35.i171.i.i, i32 2
  %439 = ptrtoint ptr %next.i38.i174.i.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 %438, ptr %next.i38.i174.i.i, align 2
  %440 = ptrtoint ptr %431 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %431, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %cmp2.not.i39.i175.i.i = icmp eq i8 %441, 0
  br i1 %cmp2.not.i39.i175.i.i, label %if.end.i176.i.i.do.end.i50.i187.i.i_crit_edge, label %for.body.preheader.i41.i178.i.i

if.end.i176.i.i.do.end.i50.i187.i.i_crit_edge:    ; preds = %if.end.i176.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i50.i187.i.i

for.body.preheader.i41.i178.i.i:                  ; preds = %if.end.i176.i.i
  %wide.trip.count.i40.i177.i.i = zext i8 %441 to i32
  br label %for.body.i48.i185.i.i

for.cond.i44.i181.i.i:                            ; preds = %for.body.i48.i185.i.i
  %indvars.iv.next.i42.i179.i.i = add nuw nsw i32 %indvars.iv.i45.i182.i.i, 1
  %exitcond.not.i43.i180.i.i = icmp eq i32 %indvars.iv.next.i42.i179.i.i, %wide.trip.count.i40.i177.i.i
  br i1 %exitcond.not.i43.i180.i.i, label %for.cond.i44.i181.i.i.do.end.i50.i187.i.i_crit_edge, label %for.cond.i44.i181.i.i.for.body.i48.i185.i.i_crit_edge

for.cond.i44.i181.i.i.for.body.i48.i185.i.i_crit_edge: ; preds = %for.cond.i44.i181.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i48.i185.i.i

for.cond.i44.i181.i.i.do.end.i50.i187.i.i_crit_edge: ; preds = %for.cond.i44.i181.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i50.i187.i.i

for.body.i48.i185.i.i:                            ; preds = %for.cond.i44.i181.i.i.for.body.i48.i185.i.i_crit_edge, %for.body.preheader.i41.i178.i.i
  %indvars.iv.i45.i182.i.i = phi i32 [ 0, %for.body.preheader.i41.i178.i.i ], [ %indvars.iv.next.i42.i179.i.i, %for.cond.i44.i181.i.i.for.body.i48.i185.i.i_crit_edge ]
  %firmware_ID.i46.i183.i.i = getelementptr %struct.smu8_smumgr, ptr %431, i32 0, i32 13, i32 %indvars.iv.i45.i182.i.i, i32 3
  %442 = ptrtoint ptr %firmware_ID.i46.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %firmware_ID.i46.i183.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %443)
  %cmp8.i47.i184.i.i = icmp eq i32 %443, 2
  br i1 %cmp8.i47.i184.i.i, label %if.end18.i59.i196.i.i, label %for.cond.i44.i181.i.i

do.end.i50.i187.i.i:                              ; preds = %for.cond.i44.i181.i.i.do.end.i50.i187.i.i_crit_edge, %if.end.i176.i.i.do.end.i50.i187.i.i_crit_edge
  %call17.i49.i186.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit60.i205.i.i

if.end18.i59.i196.i.i:                            ; preds = %for.body.i48.i185.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i51.i188.i.i = getelementptr %struct.smu8_smumgr, ptr %431, i32 0, i32 13, i32 %indvars.iv.i45.i182.i.i
  %mc_addr.i52.i189.i.i = getelementptr %struct.smu8_smumgr, ptr %431, i32 0, i32 13, i32 %indvars.iv.i45.i182.i.i, i32 1
  %444 = ptrtoint ptr %mc_addr.i52.i189.i.i to i32
  call void @__asan_load8_noabort(i32 %444)
  %445 = load i64, ptr %mc_addr.i52.i189.i.i, align 8
  %conv22.i53.i190.i.i = trunc i64 %445 to i32
  %addr.i54.i191.i.i = getelementptr %struct.TOC, ptr %433, i32 0, i32 1, i32 %idxprom.i35.i171.i.i, i32 3
  %low.i55.i192.i.i = getelementptr %struct.TOC, ptr %433, i32 0, i32 1, i32 %idxprom.i35.i171.i.i, i32 3, i32 1
  %446 = ptrtoint ptr %low.i55.i192.i.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %conv22.i53.i190.i.i, ptr %low.i55.i192.i.i, align 4
  %447 = load i64, ptr %mc_addr.i52.i189.i.i, align 8
  %shr.i56.i193.i.i = lshr i64 %447, 32
  %conv28.i57.i194.i.i = trunc i64 %shr.i56.i193.i.i to i32
  %448 = ptrtoint ptr %addr.i54.i191.i.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %conv28.i57.i194.i.i, ptr %addr.i54.i191.i.i, align 4
  %449 = ptrtoint ptr %arrayidx21.i51.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %arrayidx21.i51.i188.i.i, align 8
  %size_bytes.i58.i195.i.i = getelementptr %struct.TOC, ptr %433, i32 0, i32 1, i32 %idxprom.i35.i171.i.i, i32 4
  %451 = ptrtoint ptr %size_bytes.i58.i195.i.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %450, ptr %size_bytes.i58.i195.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit60.i205.i.i

smu8_smu_populate_single_ucode_load_task.exit60.i205.i.i: ; preds = %if.end18.i59.i196.i.i, %do.end.i50.i187.i.i
  %452 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i62.i197.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %453, i32 0, i32 10, i32 2
  %454 = ptrtoint ptr %kaddr.i62.i197.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %kaddr.i62.i197.i.i, align 8
  %toc_entry_used_count.i63.i198.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %453, i32 0, i32 2
  %456 = ptrtoint ptr %toc_entry_used_count.i63.i198.i.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %toc_entry_used_count.i63.i198.i.i, align 2
  %inc.i64.i199.i.i = add i16 %457, 1
  store i16 %inc.i64.i199.i.i, ptr %toc_entry_used_count.i63.i198.i.i, align 2
  %idxprom.i65.i200.i.i = zext i16 %457 to i32
  %arrayidx.i66.i201.i.i = getelementptr %struct.TOC, ptr %455, i32 0, i32 1, i32 %idxprom.i65.i200.i.i
  %458 = ptrtoint ptr %arrayidx.i66.i201.i.i to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 1, ptr %arrayidx.i66.i201.i.i, align 4
  %arg.i67.i202.i.i = getelementptr %struct.TOC, ptr %455, i32 0, i32 1, i32 %idxprom.i65.i200.i.i, i32 1
  %459 = ptrtoint ptr %arg.i67.i202.i.i to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 3, ptr %arg.i67.i202.i.i, align 1
  %460 = load i16, ptr %toc_entry_used_count.i63.i198.i.i, align 2
  %next.i68.i203.i.i = getelementptr %struct.TOC, ptr %455, i32 0, i32 1, i32 %idxprom.i65.i200.i.i, i32 2
  %461 = ptrtoint ptr %next.i68.i203.i.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 %460, ptr %next.i68.i203.i.i, align 2
  %462 = ptrtoint ptr %453 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %453, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %463)
  %cmp2.not.i69.i204.i.i = icmp eq i8 %463, 0
  br i1 %cmp2.not.i69.i204.i.i, label %smu8_smu_populate_single_ucode_load_task.exit60.i205.i.i.do.end.i80.i216.i.i_crit_edge, label %for.body.preheader.i71.i207.i.i

smu8_smu_populate_single_ucode_load_task.exit60.i205.i.i.do.end.i80.i216.i.i_crit_edge: ; preds = %smu8_smu_populate_single_ucode_load_task.exit60.i205.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i80.i216.i.i

for.body.preheader.i71.i207.i.i:                  ; preds = %smu8_smu_populate_single_ucode_load_task.exit60.i205.i.i
  %wide.trip.count.i70.i206.i.i = zext i8 %463 to i32
  br label %for.body.i78.i214.i.i

for.cond.i74.i210.i.i:                            ; preds = %for.body.i78.i214.i.i
  %indvars.iv.next.i72.i208.i.i = add nuw nsw i32 %indvars.iv.i75.i211.i.i, 1
  %exitcond.not.i73.i209.i.i = icmp eq i32 %indvars.iv.next.i72.i208.i.i, %wide.trip.count.i70.i206.i.i
  br i1 %exitcond.not.i73.i209.i.i, label %for.cond.i74.i210.i.i.do.end.i80.i216.i.i_crit_edge, label %for.cond.i74.i210.i.i.for.body.i78.i214.i.i_crit_edge

for.cond.i74.i210.i.i.for.body.i78.i214.i.i_crit_edge: ; preds = %for.cond.i74.i210.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i78.i214.i.i

for.cond.i74.i210.i.i.do.end.i80.i216.i.i_crit_edge: ; preds = %for.cond.i74.i210.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i80.i216.i.i

for.body.i78.i214.i.i:                            ; preds = %for.cond.i74.i210.i.i.for.body.i78.i214.i.i_crit_edge, %for.body.preheader.i71.i207.i.i
  %indvars.iv.i75.i211.i.i = phi i32 [ 0, %for.body.preheader.i71.i207.i.i ], [ %indvars.iv.next.i72.i208.i.i, %for.cond.i74.i210.i.i.for.body.i78.i214.i.i_crit_edge ]
  %firmware_ID.i76.i212.i.i = getelementptr %struct.smu8_smumgr, ptr %453, i32 0, i32 13, i32 %indvars.iv.i75.i211.i.i, i32 3
  %464 = ptrtoint ptr %firmware_ID.i76.i212.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %firmware_ID.i76.i212.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %465)
  %cmp8.i77.i213.i.i = icmp eq i32 %465, 3
  br i1 %cmp8.i77.i213.i.i, label %if.end18.i89.i225.i.i, label %for.cond.i74.i210.i.i

do.end.i80.i216.i.i:                              ; preds = %for.cond.i74.i210.i.i.do.end.i80.i216.i.i_crit_edge, %smu8_smu_populate_single_ucode_load_task.exit60.i205.i.i.do.end.i80.i216.i.i_crit_edge
  %call17.i79.i215.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit90.i234.i.i

if.end18.i89.i225.i.i:                            ; preds = %for.body.i78.i214.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i81.i217.i.i = getelementptr %struct.smu8_smumgr, ptr %453, i32 0, i32 13, i32 %indvars.iv.i75.i211.i.i
  %mc_addr.i82.i218.i.i = getelementptr %struct.smu8_smumgr, ptr %453, i32 0, i32 13, i32 %indvars.iv.i75.i211.i.i, i32 1
  %466 = ptrtoint ptr %mc_addr.i82.i218.i.i to i32
  call void @__asan_load8_noabort(i32 %466)
  %467 = load i64, ptr %mc_addr.i82.i218.i.i, align 8
  %conv22.i83.i219.i.i = trunc i64 %467 to i32
  %addr.i84.i220.i.i = getelementptr %struct.TOC, ptr %455, i32 0, i32 1, i32 %idxprom.i65.i200.i.i, i32 3
  %low.i85.i221.i.i = getelementptr %struct.TOC, ptr %455, i32 0, i32 1, i32 %idxprom.i65.i200.i.i, i32 3, i32 1
  %468 = ptrtoint ptr %low.i85.i221.i.i to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 %conv22.i83.i219.i.i, ptr %low.i85.i221.i.i, align 4
  %469 = load i64, ptr %mc_addr.i82.i218.i.i, align 8
  %shr.i86.i222.i.i = lshr i64 %469, 32
  %conv28.i87.i223.i.i = trunc i64 %shr.i86.i222.i.i to i32
  %470 = ptrtoint ptr %addr.i84.i220.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %conv28.i87.i223.i.i, ptr %addr.i84.i220.i.i, align 4
  %471 = ptrtoint ptr %arrayidx21.i81.i217.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %arrayidx21.i81.i217.i.i, align 8
  %size_bytes.i88.i224.i.i = getelementptr %struct.TOC, ptr %455, i32 0, i32 1, i32 %idxprom.i65.i200.i.i, i32 4
  %473 = ptrtoint ptr %size_bytes.i88.i224.i.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 %472, ptr %size_bytes.i88.i224.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit90.i234.i.i

smu8_smu_populate_single_ucode_load_task.exit90.i234.i.i: ; preds = %if.end18.i89.i225.i.i, %do.end.i80.i216.i.i
  %474 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i92.i226.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %475, i32 0, i32 10, i32 2
  %476 = ptrtoint ptr %kaddr.i92.i226.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %kaddr.i92.i226.i.i, align 8
  %toc_entry_used_count.i93.i227.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %475, i32 0, i32 2
  %478 = ptrtoint ptr %toc_entry_used_count.i93.i227.i.i to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %toc_entry_used_count.i93.i227.i.i, align 2
  %inc.i94.i228.i.i = add i16 %479, 1
  store i16 %inc.i94.i228.i.i, ptr %toc_entry_used_count.i93.i227.i.i, align 2
  %idxprom.i95.i229.i.i = zext i16 %479 to i32
  %arrayidx.i96.i230.i.i = getelementptr %struct.TOC, ptr %477, i32 0, i32 1, i32 %idxprom.i95.i229.i.i
  %480 = ptrtoint ptr %arrayidx.i96.i230.i.i to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 1, ptr %arrayidx.i96.i230.i.i, align 4
  %arg.i97.i231.i.i = getelementptr %struct.TOC, ptr %477, i32 0, i32 1, i32 %idxprom.i95.i229.i.i, i32 1
  %481 = ptrtoint ptr %arg.i97.i231.i.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 4, ptr %arg.i97.i231.i.i, align 1
  %482 = load i16, ptr %toc_entry_used_count.i93.i227.i.i, align 2
  %next.i98.i232.i.i = getelementptr %struct.TOC, ptr %477, i32 0, i32 1, i32 %idxprom.i95.i229.i.i, i32 2
  %483 = ptrtoint ptr %next.i98.i232.i.i to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 %482, ptr %next.i98.i232.i.i, align 2
  %484 = ptrtoint ptr %475 to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %475, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %485)
  %cmp2.not.i99.i233.i.i = icmp eq i8 %485, 0
  br i1 %cmp2.not.i99.i233.i.i, label %smu8_smu_populate_single_ucode_load_task.exit90.i234.i.i.do.end.i110.i245.i.i_crit_edge, label %for.body.preheader.i101.i236.i.i

smu8_smu_populate_single_ucode_load_task.exit90.i234.i.i.do.end.i110.i245.i.i_crit_edge: ; preds = %smu8_smu_populate_single_ucode_load_task.exit90.i234.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i110.i245.i.i

for.body.preheader.i101.i236.i.i:                 ; preds = %smu8_smu_populate_single_ucode_load_task.exit90.i234.i.i
  %wide.trip.count.i100.i235.i.i = zext i8 %485 to i32
  br label %for.body.i108.i243.i.i

for.cond.i104.i239.i.i:                           ; preds = %for.body.i108.i243.i.i
  %indvars.iv.next.i102.i237.i.i = add nuw nsw i32 %indvars.iv.i105.i240.i.i, 1
  %exitcond.not.i103.i238.i.i = icmp eq i32 %indvars.iv.next.i102.i237.i.i, %wide.trip.count.i100.i235.i.i
  br i1 %exitcond.not.i103.i238.i.i, label %for.cond.i104.i239.i.i.do.end.i110.i245.i.i_crit_edge, label %for.cond.i104.i239.i.i.for.body.i108.i243.i.i_crit_edge

for.cond.i104.i239.i.i.for.body.i108.i243.i.i_crit_edge: ; preds = %for.cond.i104.i239.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i108.i243.i.i

for.cond.i104.i239.i.i.do.end.i110.i245.i.i_crit_edge: ; preds = %for.cond.i104.i239.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i110.i245.i.i

for.body.i108.i243.i.i:                           ; preds = %for.cond.i104.i239.i.i.for.body.i108.i243.i.i_crit_edge, %for.body.preheader.i101.i236.i.i
  %indvars.iv.i105.i240.i.i = phi i32 [ 0, %for.body.preheader.i101.i236.i.i ], [ %indvars.iv.next.i102.i237.i.i, %for.cond.i104.i239.i.i.for.body.i108.i243.i.i_crit_edge ]
  %firmware_ID.i106.i241.i.i = getelementptr %struct.smu8_smumgr, ptr %475, i32 0, i32 13, i32 %indvars.iv.i105.i240.i.i, i32 3
  %486 = ptrtoint ptr %firmware_ID.i106.i241.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %firmware_ID.i106.i241.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %487)
  %cmp8.i107.i242.i.i = icmp eq i32 %487, 4
  br i1 %cmp8.i107.i242.i.i, label %if.end18.i119.i254.i.i, label %for.cond.i104.i239.i.i

do.end.i110.i245.i.i:                             ; preds = %for.cond.i104.i239.i.i.do.end.i110.i245.i.i_crit_edge, %smu8_smu_populate_single_ucode_load_task.exit90.i234.i.i.do.end.i110.i245.i.i_crit_edge
  %call17.i109.i244.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit120.i.i.i

if.end18.i119.i254.i.i:                           ; preds = %for.body.i108.i243.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i111.i246.i.i = getelementptr %struct.smu8_smumgr, ptr %475, i32 0, i32 13, i32 %indvars.iv.i105.i240.i.i
  %mc_addr.i112.i247.i.i = getelementptr %struct.smu8_smumgr, ptr %475, i32 0, i32 13, i32 %indvars.iv.i105.i240.i.i, i32 1
  %488 = ptrtoint ptr %mc_addr.i112.i247.i.i to i32
  call void @__asan_load8_noabort(i32 %488)
  %489 = load i64, ptr %mc_addr.i112.i247.i.i, align 8
  %conv22.i113.i248.i.i = trunc i64 %489 to i32
  %addr.i114.i249.i.i = getelementptr %struct.TOC, ptr %477, i32 0, i32 1, i32 %idxprom.i95.i229.i.i, i32 3
  %low.i115.i250.i.i = getelementptr %struct.TOC, ptr %477, i32 0, i32 1, i32 %idxprom.i95.i229.i.i, i32 3, i32 1
  %490 = ptrtoint ptr %low.i115.i250.i.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 %conv22.i113.i248.i.i, ptr %low.i115.i250.i.i, align 4
  %491 = load i64, ptr %mc_addr.i112.i247.i.i, align 8
  %shr.i116.i251.i.i = lshr i64 %491, 32
  %conv28.i117.i252.i.i = trunc i64 %shr.i116.i251.i.i to i32
  %492 = ptrtoint ptr %addr.i114.i249.i.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 %conv28.i117.i252.i.i, ptr %addr.i114.i249.i.i, align 4
  %493 = ptrtoint ptr %arrayidx21.i111.i246.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %arrayidx21.i111.i246.i.i, align 8
  %size_bytes.i118.i253.i.i = getelementptr %struct.TOC, ptr %477, i32 0, i32 1, i32 %idxprom.i95.i229.i.i, i32 4
  %495 = ptrtoint ptr %size_bytes.i118.i253.i.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %494, ptr %size_bytes.i118.i253.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit120.i.i.i

smu8_smu_populate_single_ucode_load_task.exit120.i.i.i: ; preds = %if.end18.i119.i254.i.i, %do.end.i110.i245.i.i
  %496 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i122.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %497, i32 0, i32 10, i32 2
  %498 = ptrtoint ptr %kaddr.i122.i.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %kaddr.i122.i.i.i, align 8
  %toc_entry_used_count.i123.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %497, i32 0, i32 2
  %500 = ptrtoint ptr %toc_entry_used_count.i123.i.i.i to i32
  call void @__asan_load2_noabort(i32 %500)
  %501 = load i16, ptr %toc_entry_used_count.i123.i.i.i, align 2
  %inc.i124.i.i.i = add i16 %501, 1
  store i16 %inc.i124.i.i.i, ptr %toc_entry_used_count.i123.i.i.i, align 2
  %idxprom.i125.i.i.i = zext i16 %501 to i32
  %arrayidx.i126.i.i.i = getelementptr %struct.TOC, ptr %499, i32 0, i32 1, i32 %idxprom.i125.i.i.i
  %502 = ptrtoint ptr %arrayidx.i126.i.i.i to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 1, ptr %arrayidx.i126.i.i.i, align 4
  %arg.i127.i255.i.i = getelementptr %struct.TOC, ptr %499, i32 0, i32 1, i32 %idxprom.i125.i.i.i, i32 1
  %503 = ptrtoint ptr %arg.i127.i255.i.i to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 5, ptr %arg.i127.i255.i.i, align 1
  %504 = load i16, ptr %toc_entry_used_count.i123.i.i.i, align 2
  %next.i128.i256.i.i = getelementptr %struct.TOC, ptr %499, i32 0, i32 1, i32 %idxprom.i125.i.i.i, i32 2
  %505 = ptrtoint ptr %next.i128.i256.i.i to i32
  call void @__asan_store2_noabort(i32 %505)
  store i16 %504, ptr %next.i128.i256.i.i, align 2
  %506 = ptrtoint ptr %497 to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %497, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %507)
  %cmp2.not.i129.i257.i.i = icmp eq i8 %507, 0
  br i1 %cmp2.not.i129.i257.i.i, label %smu8_smu_populate_single_ucode_load_task.exit120.i.i.i.do.end.i140.i268.i.i_crit_edge, label %for.body.preheader.i131.i259.i.i

smu8_smu_populate_single_ucode_load_task.exit120.i.i.i.do.end.i140.i268.i.i_crit_edge: ; preds = %smu8_smu_populate_single_ucode_load_task.exit120.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i140.i268.i.i

for.body.preheader.i131.i259.i.i:                 ; preds = %smu8_smu_populate_single_ucode_load_task.exit120.i.i.i
  %wide.trip.count.i130.i258.i.i = zext i8 %507 to i32
  br label %for.body.i138.i266.i.i

for.cond.i134.i262.i.i:                           ; preds = %for.body.i138.i266.i.i
  %indvars.iv.next.i132.i260.i.i = add nuw nsw i32 %indvars.iv.i135.i263.i.i, 1
  %exitcond.not.i133.i261.i.i = icmp eq i32 %indvars.iv.next.i132.i260.i.i, %wide.trip.count.i130.i258.i.i
  br i1 %exitcond.not.i133.i261.i.i, label %for.cond.i134.i262.i.i.do.end.i140.i268.i.i_crit_edge, label %for.cond.i134.i262.i.i.for.body.i138.i266.i.i_crit_edge

for.cond.i134.i262.i.i.for.body.i138.i266.i.i_crit_edge: ; preds = %for.cond.i134.i262.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i138.i266.i.i

for.cond.i134.i262.i.i.do.end.i140.i268.i.i_crit_edge: ; preds = %for.cond.i134.i262.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i140.i268.i.i

for.body.i138.i266.i.i:                           ; preds = %for.cond.i134.i262.i.i.for.body.i138.i266.i.i_crit_edge, %for.body.preheader.i131.i259.i.i
  %indvars.iv.i135.i263.i.i = phi i32 [ 0, %for.body.preheader.i131.i259.i.i ], [ %indvars.iv.next.i132.i260.i.i, %for.cond.i134.i262.i.i.for.body.i138.i266.i.i_crit_edge ]
  %firmware_ID.i136.i264.i.i = getelementptr %struct.smu8_smumgr, ptr %497, i32 0, i32 13, i32 %indvars.iv.i135.i263.i.i, i32 3
  %508 = ptrtoint ptr %firmware_ID.i136.i264.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %firmware_ID.i136.i264.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %509)
  %cmp8.i137.i265.i.i = icmp eq i32 %509, 5
  br i1 %cmp8.i137.i265.i.i, label %if.end18.i149.i277.i.i, label %for.cond.i134.i262.i.i

do.end.i140.i268.i.i:                             ; preds = %for.cond.i134.i262.i.i.do.end.i140.i268.i.i_crit_edge, %smu8_smu_populate_single_ucode_load_task.exit120.i.i.i.do.end.i140.i268.i.i_crit_edge
  %call17.i139.i267.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_populate_single_ucode_load_task.exit150.i.i.i

if.end18.i149.i277.i.i:                           ; preds = %for.body.i138.i266.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i141.i269.i.i = getelementptr %struct.smu8_smumgr, ptr %497, i32 0, i32 13, i32 %indvars.iv.i135.i263.i.i
  %mc_addr.i142.i270.i.i = getelementptr %struct.smu8_smumgr, ptr %497, i32 0, i32 13, i32 %indvars.iv.i135.i263.i.i, i32 1
  %510 = ptrtoint ptr %mc_addr.i142.i270.i.i to i32
  call void @__asan_load8_noabort(i32 %510)
  %511 = load i64, ptr %mc_addr.i142.i270.i.i, align 8
  %conv22.i143.i271.i.i = trunc i64 %511 to i32
  %addr.i144.i272.i.i = getelementptr %struct.TOC, ptr %499, i32 0, i32 1, i32 %idxprom.i125.i.i.i, i32 3
  %low.i145.i273.i.i = getelementptr %struct.TOC, ptr %499, i32 0, i32 1, i32 %idxprom.i125.i.i.i, i32 3, i32 1
  %512 = ptrtoint ptr %low.i145.i273.i.i to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 %conv22.i143.i271.i.i, ptr %low.i145.i273.i.i, align 4
  %513 = load i64, ptr %mc_addr.i142.i270.i.i, align 8
  %shr.i146.i274.i.i = lshr i64 %513, 32
  %conv28.i147.i275.i.i = trunc i64 %shr.i146.i274.i.i to i32
  %514 = ptrtoint ptr %addr.i144.i272.i.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 %conv28.i147.i275.i.i, ptr %addr.i144.i272.i.i, align 4
  %515 = ptrtoint ptr %arrayidx21.i141.i269.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %arrayidx21.i141.i269.i.i, align 8
  %size_bytes.i148.i276.i.i = getelementptr %struct.TOC, ptr %499, i32 0, i32 1, i32 %idxprom.i125.i.i.i, i32 4
  %517 = ptrtoint ptr %size_bytes.i148.i276.i.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %516, ptr %size_bytes.i148.i276.i.i, align 4
  br label %smu8_smu_populate_single_ucode_load_task.exit150.i.i.i

smu8_smu_populate_single_ucode_load_task.exit150.i.i.i: ; preds = %if.end18.i149.i277.i.i, %do.end.i140.i268.i.i
  %518 = ptrtoint ptr %chip_id7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %chip_id7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %519)
  %cmp7.not.i.i.i = icmp eq i32 %519, 14
  br i1 %cmp7.not.i.i.i, label %smu8_smu_populate_single_ucode_load_task.exit150.i.i.i.if.end10.i.i.i_crit_edge, label %if.then8.i.i.i

smu8_smu_populate_single_ucode_load_task.exit150.i.i.i.if.end10.i.i.i_crit_edge: ; preds = %smu8_smu_populate_single_ucode_load_task.exit150.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i.i.i

if.then8.i.i.i:                                   ; preds = %smu8_smu_populate_single_ucode_load_task.exit150.i.i.i
  %520 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i152.i278.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %521, i32 0, i32 10, i32 2
  %522 = ptrtoint ptr %kaddr.i152.i278.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %kaddr.i152.i278.i.i, align 8
  %toc_entry_used_count.i153.i279.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %521, i32 0, i32 2
  %524 = ptrtoint ptr %toc_entry_used_count.i153.i279.i.i to i32
  call void @__asan_load2_noabort(i32 %524)
  %525 = load i16, ptr %toc_entry_used_count.i153.i279.i.i, align 2
  %inc.i154.i280.i.i = add i16 %525, 1
  store i16 %inc.i154.i280.i.i, ptr %toc_entry_used_count.i153.i279.i.i, align 2
  %idxprom.i155.i281.i.i = zext i16 %525 to i32
  %arrayidx.i156.i282.i.i = getelementptr %struct.TOC, ptr %523, i32 0, i32 1, i32 %idxprom.i155.i281.i.i
  %526 = ptrtoint ptr %arrayidx.i156.i282.i.i to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 1, ptr %arrayidx.i156.i282.i.i, align 4
  %527 = ptrtoint ptr %chip_id7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %chip_id7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %528)
  %cmp8.i.i.i283.i.i = icmp eq i32 %528, 14
  %.23.i.i.i284.i.i = select i1 %cmp8.i.i.i283.i.i, i8 5, i8 6
  %arg.i157.i285.i.i = getelementptr %struct.TOC, ptr %523, i32 0, i32 1, i32 %idxprom.i155.i281.i.i, i32 1
  %529 = ptrtoint ptr %arg.i157.i285.i.i to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %.23.i.i.i284.i.i, ptr %arg.i157.i285.i.i, align 1
  %530 = ptrtoint ptr %toc_entry_used_count.i153.i279.i.i to i32
  call void @__asan_load2_noabort(i32 %530)
  %531 = load i16, ptr %toc_entry_used_count.i153.i279.i.i, align 2
  %next.i158.i286.i.i = getelementptr %struct.TOC, ptr %523, i32 0, i32 1, i32 %idxprom.i155.i281.i.i, i32 2
  %532 = ptrtoint ptr %next.i158.i286.i.i to i32
  call void @__asan_store2_noabort(i32 %532)
  store i16 %531, ptr %next.i158.i286.i.i, align 2
  %533 = ptrtoint ptr %521 to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %521, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %534)
  %cmp2.not.i159.i287.i.i = icmp eq i8 %534, 0
  br i1 %cmp2.not.i159.i287.i.i, label %if.then8.i.i.i.do.end.i170.i298.i.i_crit_edge, label %for.body.preheader.i161.i289.i.i

if.then8.i.i.i.do.end.i170.i298.i.i_crit_edge:    ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i170.i298.i.i

for.body.preheader.i161.i289.i.i:                 ; preds = %if.then8.i.i.i
  %wide.trip.count.i160.i288.i.i = zext i8 %534 to i32
  br label %for.body.i168.i296.i.i

for.cond.i164.i292.i.i:                           ; preds = %for.body.i168.i296.i.i
  %indvars.iv.next.i162.i290.i.i = add nuw nsw i32 %indvars.iv.i165.i293.i.i, 1
  %exitcond.not.i163.i291.i.i = icmp eq i32 %indvars.iv.next.i162.i290.i.i, %wide.trip.count.i160.i288.i.i
  br i1 %exitcond.not.i163.i291.i.i, label %for.cond.i164.i292.i.i.do.end.i170.i298.i.i_crit_edge, label %for.cond.i164.i292.i.i.for.body.i168.i296.i.i_crit_edge

for.cond.i164.i292.i.i.for.body.i168.i296.i.i_crit_edge: ; preds = %for.cond.i164.i292.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i168.i296.i.i

for.cond.i164.i292.i.i.do.end.i170.i298.i.i_crit_edge: ; preds = %for.cond.i164.i292.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i170.i298.i.i

for.body.i168.i296.i.i:                           ; preds = %for.cond.i164.i292.i.i.for.body.i168.i296.i.i_crit_edge, %for.body.preheader.i161.i289.i.i
  %indvars.iv.i165.i293.i.i = phi i32 [ 0, %for.body.preheader.i161.i289.i.i ], [ %indvars.iv.next.i162.i290.i.i, %for.cond.i164.i292.i.i.for.body.i168.i296.i.i_crit_edge ]
  %firmware_ID.i166.i294.i.i = getelementptr %struct.smu8_smumgr, ptr %521, i32 0, i32 13, i32 %indvars.iv.i165.i293.i.i, i32 3
  %535 = ptrtoint ptr %firmware_ID.i166.i294.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %firmware_ID.i166.i294.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %536)
  %cmp8.i167.i295.i.i = icmp eq i32 %536, 6
  br i1 %cmp8.i167.i295.i.i, label %if.end18.i179.i307.i.i, label %for.cond.i164.i292.i.i

do.end.i170.i298.i.i:                             ; preds = %for.cond.i164.i292.i.i.do.end.i170.i298.i.i_crit_edge, %if.then8.i.i.i.do.end.i170.i298.i.i_crit_edge
  %call17.i169.i297.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %if.end10.i.i.i

if.end18.i179.i307.i.i:                           ; preds = %for.body.i168.i296.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i171.i299.i.i = getelementptr %struct.smu8_smumgr, ptr %521, i32 0, i32 13, i32 %indvars.iv.i165.i293.i.i
  %mc_addr.i172.i300.i.i = getelementptr %struct.smu8_smumgr, ptr %521, i32 0, i32 13, i32 %indvars.iv.i165.i293.i.i, i32 1
  %537 = ptrtoint ptr %mc_addr.i172.i300.i.i to i32
  call void @__asan_load8_noabort(i32 %537)
  %538 = load i64, ptr %mc_addr.i172.i300.i.i, align 8
  %conv22.i173.i301.i.i = trunc i64 %538 to i32
  %addr.i174.i302.i.i = getelementptr %struct.TOC, ptr %523, i32 0, i32 1, i32 %idxprom.i155.i281.i.i, i32 3
  %low.i175.i303.i.i = getelementptr %struct.TOC, ptr %523, i32 0, i32 1, i32 %idxprom.i155.i281.i.i, i32 3, i32 1
  %539 = ptrtoint ptr %low.i175.i303.i.i to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 %conv22.i173.i301.i.i, ptr %low.i175.i303.i.i, align 4
  %540 = load i64, ptr %mc_addr.i172.i300.i.i, align 8
  %shr.i176.i304.i.i = lshr i64 %540, 32
  %conv28.i177.i305.i.i = trunc i64 %shr.i176.i304.i.i to i32
  %541 = ptrtoint ptr %addr.i174.i302.i.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %conv28.i177.i305.i.i, ptr %addr.i174.i302.i.i, align 4
  %542 = ptrtoint ptr %arrayidx21.i171.i299.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %arrayidx21.i171.i299.i.i, align 8
  %size_bytes.i178.i306.i.i = getelementptr %struct.TOC, ptr %523, i32 0, i32 1, i32 %idxprom.i155.i281.i.i, i32 4
  %544 = ptrtoint ptr %size_bytes.i178.i306.i.i to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %543, ptr %size_bytes.i178.i306.i.i, align 4
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.end18.i179.i307.i.i, %do.end.i170.i298.i.i, %smu8_smu_populate_single_ucode_load_task.exit150.i.i.i.if.end10.i.i.i_crit_edge
  %545 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i182.i308.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %546, i32 0, i32 10, i32 2
  %547 = ptrtoint ptr %kaddr.i182.i308.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %kaddr.i182.i308.i.i, align 8
  %toc_entry_used_count.i183.i309.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %546, i32 0, i32 2
  %549 = ptrtoint ptr %toc_entry_used_count.i183.i309.i.i to i32
  call void @__asan_load2_noabort(i32 %549)
  %550 = load i16, ptr %toc_entry_used_count.i183.i309.i.i, align 2
  %inc.i184.i310.i.i = add i16 %550, 1
  store i16 %inc.i184.i310.i.i, ptr %toc_entry_used_count.i183.i309.i.i, align 2
  %idxprom.i185.i311.i.i = zext i16 %550 to i32
  %arrayidx.i186.i312.i.i = getelementptr %struct.TOC, ptr %548, i32 0, i32 1, i32 %idxprom.i185.i311.i.i
  %551 = ptrtoint ptr %arrayidx.i186.i312.i.i to i32
  call void @__asan_store1_noabort(i32 %551)
  store i8 1, ptr %arrayidx.i186.i312.i.i, align 4
  %arg.i187.i313.i.i = getelementptr %struct.TOC, ptr %548, i32 0, i32 1, i32 %idxprom.i185.i311.i.i, i32 1
  %552 = ptrtoint ptr %arg.i187.i313.i.i to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 8, ptr %arg.i187.i313.i.i, align 1
  %next.i188.i314.i.i = getelementptr %struct.TOC, ptr %548, i32 0, i32 1, i32 %idxprom.i185.i311.i.i, i32 2
  %553 = ptrtoint ptr %next.i188.i314.i.i to i32
  call void @__asan_store2_noabort(i32 %553)
  store i16 -1, ptr %next.i188.i314.i.i, align 2
  %554 = ptrtoint ptr %546 to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %546, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %555)
  %cmp2.not.i189.i315.i.i = icmp eq i8 %555, 0
  br i1 %cmp2.not.i189.i315.i.i, label %if.end10.i.i.i.do.end.i200.i.i.i_crit_edge, label %for.body.preheader.i191.i317.i.i

if.end10.i.i.i.do.end.i200.i.i.i_crit_edge:       ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i200.i.i.i

for.body.preheader.i191.i317.i.i:                 ; preds = %if.end10.i.i.i
  %wide.trip.count.i190.i316.i.i = zext i8 %555 to i32
  br label %for.body.i198.i.i.i

for.cond.i194.i320.i.i:                           ; preds = %for.body.i198.i.i.i
  %indvars.iv.next.i192.i318.i.i = add nuw nsw i32 %indvars.iv.i195.i321.i.i, 1
  %exitcond.not.i193.i319.i.i = icmp eq i32 %indvars.iv.next.i192.i318.i.i, %wide.trip.count.i190.i316.i.i
  br i1 %exitcond.not.i193.i319.i.i, label %for.cond.i194.i320.i.i.do.end.i200.i.i.i_crit_edge, label %for.cond.i194.i320.i.i.for.body.i198.i.i.i_crit_edge

for.cond.i194.i320.i.i.for.body.i198.i.i.i_crit_edge: ; preds = %for.cond.i194.i320.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i198.i.i.i

for.cond.i194.i320.i.i.do.end.i200.i.i.i_crit_edge: ; preds = %for.cond.i194.i320.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i200.i.i.i

for.body.i198.i.i.i:                              ; preds = %for.cond.i194.i320.i.i.for.body.i198.i.i.i_crit_edge, %for.body.preheader.i191.i317.i.i
  %indvars.iv.i195.i321.i.i = phi i32 [ 0, %for.body.preheader.i191.i317.i.i ], [ %indvars.iv.next.i192.i318.i.i, %for.cond.i194.i320.i.i.for.body.i198.i.i.i_crit_edge ]
  %firmware_ID.i196.i322.i.i = getelementptr %struct.smu8_smumgr, ptr %546, i32 0, i32 13, i32 %indvars.iv.i195.i321.i.i, i32 3
  %556 = ptrtoint ptr %firmware_ID.i196.i322.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %firmware_ID.i196.i322.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %557)
  %cmp8.i197.i.i.i = icmp eq i32 %557, 8
  br i1 %cmp8.i197.i.i.i, label %if.end18.i209.i.i.i, label %for.cond.i194.i320.i.i

do.end.i200.i.i.i:                                ; preds = %for.cond.i194.i320.i.i.do.end.i200.i.i.i_crit_edge, %if.end10.i.i.i.do.end.i200.i.i.i_crit_edge
  %call17.i199.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %smu8_smu_construct_toc_for_bootup.exit.i.i

if.end18.i209.i.i.i:                              ; preds = %for.body.i198.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i201.i.i.i = getelementptr %struct.smu8_smumgr, ptr %546, i32 0, i32 13, i32 %indvars.iv.i195.i321.i.i
  %mc_addr.i202.i.i.i = getelementptr %struct.smu8_smumgr, ptr %546, i32 0, i32 13, i32 %indvars.iv.i195.i321.i.i, i32 1
  %558 = ptrtoint ptr %mc_addr.i202.i.i.i to i32
  call void @__asan_load8_noabort(i32 %558)
  %559 = load i64, ptr %mc_addr.i202.i.i.i, align 8
  %conv22.i203.i.i.i = trunc i64 %559 to i32
  %addr.i204.i.i.i = getelementptr %struct.TOC, ptr %548, i32 0, i32 1, i32 %idxprom.i185.i311.i.i, i32 3
  %low.i205.i.i.i = getelementptr %struct.TOC, ptr %548, i32 0, i32 1, i32 %idxprom.i185.i311.i.i, i32 3, i32 1
  %560 = ptrtoint ptr %low.i205.i.i.i to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 %conv22.i203.i.i.i, ptr %low.i205.i.i.i, align 4
  %561 = load i64, ptr %mc_addr.i202.i.i.i, align 8
  %shr.i206.i.i.i = lshr i64 %561, 32
  %conv28.i207.i.i.i = trunc i64 %shr.i206.i.i.i to i32
  %562 = ptrtoint ptr %addr.i204.i.i.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %conv28.i207.i.i.i, ptr %addr.i204.i.i.i, align 4
  %563 = ptrtoint ptr %arrayidx21.i201.i.i.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %arrayidx21.i201.i.i.i, align 8
  %size_bytes.i208.i.i.i = getelementptr %struct.TOC, ptr %548, i32 0, i32 1, i32 %idxprom.i185.i311.i.i, i32 4
  %565 = ptrtoint ptr %size_bytes.i208.i.i.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %564, ptr %size_bytes.i208.i.i.i, align 4
  br label %smu8_smu_construct_toc_for_bootup.exit.i.i

smu8_smu_construct_toc_for_bootup.exit.i.i:       ; preds = %if.end18.i209.i.i.i, %do.end.i200.i.i.i
  %566 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %smu_backend.i, align 4
  %toc_entry_used_count.i324.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %567, i32 0, i32 2
  %568 = ptrtoint ptr %toc_entry_used_count.i324.i.i to i32
  call void @__asan_load2_noabort(i32 %568)
  %569 = load i16, ptr %toc_entry_used_count.i324.i.i, align 2
  %toc_entry_clock_table.i.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %567, i32 0, i32 7
  %570 = ptrtoint ptr %toc_entry_clock_table.i.i.i to i32
  call void @__asan_store2_noabort(i32 %570)
  store i16 %569, ptr %toc_entry_clock_table.i.i.i, align 4
  %571 = load ptr, ptr %smu_backend.i, align 4
  %kaddr.i.i325.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %571, i32 0, i32 10, i32 2
  %572 = ptrtoint ptr %kaddr.i.i325.i.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %kaddr.i.i325.i.i, align 8
  %toc_entry_used_count.i.i326.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %571, i32 0, i32 2
  %574 = ptrtoint ptr %toc_entry_used_count.i.i326.i.i to i32
  call void @__asan_load2_noabort(i32 %574)
  %575 = load i16, ptr %toc_entry_used_count.i.i326.i.i, align 2
  %inc.i.i327.i.i = add i16 %575, 1
  store i16 %inc.i.i327.i.i, ptr %toc_entry_used_count.i.i326.i.i, align 2
  %idxprom.i.i328.i.i = zext i16 %575 to i32
  %arrayidx.i.i329.i.i = getelementptr %struct.TOC, ptr %573, i32 0, i32 1, i32 %idxprom.i.i328.i.i
  %576 = ptrtoint ptr %arrayidx.i.i329.i.i to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 5, ptr %arrayidx.i.i329.i.i, align 4
  %arg.i.i330.i.i = getelementptr %struct.TOC, ptr %573, i32 0, i32 1, i32 %idxprom.i.i328.i.i, i32 1
  %577 = ptrtoint ptr %arg.i.i330.i.i to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 1, ptr %arg.i.i330.i.i, align 1
  %next.i.i331.i.i = getelementptr %struct.TOC, ptr %573, i32 0, i32 1, i32 %idxprom.i.i328.i.i, i32 2
  %578 = ptrtoint ptr %next.i.i331.i.i to i32
  call void @__asan_store2_noabort(i32 %578)
  store i16 -1, ptr %next.i.i331.i.i, align 2
  %scratch_buffer_length.i.i332.i.i = getelementptr inbounds %struct.smu8_smumgr, ptr %571, i32 0, i32 1
  %579 = ptrtoint ptr %scratch_buffer_length.i.i332.i.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %scratch_buffer_length.i.i332.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %580)
  %cmp2.not.i.i333.i.i = icmp eq i8 %580, 0
  br i1 %cmp2.not.i.i333.i.i, label %smu8_smu_construct_toc_for_bootup.exit.i.i.do.end.i.i344.i.i_crit_edge, label %for.body.preheader.i.i335.i.i

smu8_smu_construct_toc_for_bootup.exit.i.i.do.end.i.i344.i.i_crit_edge: ; preds = %smu8_smu_construct_toc_for_bootup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i344.i.i

for.body.preheader.i.i335.i.i:                    ; preds = %smu8_smu_construct_toc_for_bootup.exit.i.i
  %wide.trip.count.i.i334.i.i = zext i8 %580 to i32
  br label %for.body.i.i342.i.i

for.cond.i.i338.i.i:                              ; preds = %for.body.i.i342.i.i
  %indvars.iv.next.i.i336.i.i = add nuw nsw i32 %indvars.iv.i.i339.i.i, 1
  %exitcond.not.i.i337.i.i = icmp eq i32 %indvars.iv.next.i.i336.i.i, %wide.trip.count.i.i334.i.i
  br i1 %exitcond.not.i.i337.i.i, label %for.cond.i.i338.i.i.do.end.i.i344.i.i_crit_edge, label %for.cond.i.i338.i.i.for.body.i.i342.i.i_crit_edge

for.cond.i.i338.i.i.for.body.i.i342.i.i_crit_edge: ; preds = %for.cond.i.i338.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i342.i.i

for.cond.i.i338.i.i.do.end.i.i344.i.i_crit_edge:  ; preds = %for.cond.i.i338.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i344.i.i

for.body.i.i342.i.i:                              ; preds = %for.cond.i.i338.i.i.for.body.i.i342.i.i_crit_edge, %for.body.preheader.i.i335.i.i
  %indvars.iv.i.i339.i.i = phi i32 [ 0, %for.body.preheader.i.i335.i.i ], [ %indvars.iv.next.i.i336.i.i, %for.cond.i.i338.i.i.for.body.i.i342.i.i_crit_edge ]
  %firmware_ID.i.i340.i.i = getelementptr %struct.smu8_smumgr, ptr %571, i32 0, i32 15, i32 %indvars.iv.i.i339.i.i, i32 3
  %581 = ptrtoint ptr %firmware_ID.i.i340.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %firmware_ID.i.i340.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %582)
  %cmp9.i.i341.i.i = icmp eq i32 %582, 21
  br i1 %cmp9.i.i341.i.i, label %if.end19.i.i353.i.i, label %for.cond.i.i338.i.i

do.end.i.i344.i.i:                                ; preds = %for.cond.i.i338.i.i.do.end.i.i344.i.i_crit_edge, %smu8_smu_construct_toc_for_bootup.exit.i.i.do.end.i.i344.i.i_crit_edge
  %call18.i.i343.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %lor.lhs.false.i.i

if.end19.i.i353.i.i:                              ; preds = %for.body.i.i342.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i.i345.i.i = getelementptr %struct.smu8_smumgr, ptr %571, i32 0, i32 15, i32 %indvars.iv.i.i339.i.i
  %mc_addr.i.i346.i.i = getelementptr %struct.smu8_smumgr, ptr %571, i32 0, i32 15, i32 %indvars.iv.i.i339.i.i, i32 1
  %583 = ptrtoint ptr %mc_addr.i.i346.i.i to i32
  call void @__asan_load8_noabort(i32 %583)
  %584 = load i64, ptr %mc_addr.i.i346.i.i, align 8
  %conv23.i.i347.i.i = trunc i64 %584 to i32
  %addr.i.i348.i.i = getelementptr %struct.TOC, ptr %573, i32 0, i32 1, i32 %idxprom.i.i328.i.i, i32 3
  %low.i.i349.i.i = getelementptr %struct.TOC, ptr %573, i32 0, i32 1, i32 %idxprom.i.i328.i.i, i32 3, i32 1
  %585 = ptrtoint ptr %low.i.i349.i.i to i32
  call void @__asan_store4_noabort(i32 %585)
  store i32 %conv23.i.i347.i.i, ptr %low.i.i349.i.i, align 4
  %586 = load i64, ptr %mc_addr.i.i346.i.i, align 8
  %shr.i.i350.i.i = lshr i64 %586, 32
  %conv29.i.i351.i.i = trunc i64 %shr.i.i350.i.i to i32
  %587 = ptrtoint ptr %addr.i.i348.i.i to i32
  call void @__asan_store4_noabort(i32 %587)
  store i32 %conv29.i.i351.i.i, ptr %addr.i.i348.i.i, align 4
  %588 = ptrtoint ptr %arrayidx22.i.i345.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %arrayidx22.i.i345.i.i, align 8
  %size_bytes.i.i352.i.i = getelementptr %struct.TOC, ptr %573, i32 0, i32 1, i32 %idxprom.i.i328.i.i, i32 4
  %590 = ptrtoint ptr %size_bytes.i.i352.i.i to i32
  call void @__asan_store4_noabort(i32 %590)
  store i32 %589, ptr %size_bytes.i.i352.i.i, align 4
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end19.i.i353.i.i, %do.end.i.i344.i.i
  %591 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %device, align 4
  %cmp1.i.i = icmp eq ptr %592, null
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.lor.lhs.false.i62.i_crit_edge, label %if.then2.i.i

lor.lhs.false.i.i.lor.lhs.false.i62.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i62.i

if.then2.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %593 = ptrtoint ptr %592 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %592, align 4
  %write_register.i.i.i = getelementptr inbounds %struct.cgs_ops, ptr %594, i32 0, i32 1
  %595 = ptrtoint ptr %write_register.i.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %write_register.i.i.i, align 4
  call void %596(ptr noundef nonnull %592, i32 noundef 384, i32 noundef 268566424) #6
  %597 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %device, align 4
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %598, align 4
  %write_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %600, i32 0, i32 1
  %601 = ptrtoint ptr %write_register.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %write_register.i.i, align 4
  call void %602(ptr noundef %598, i32 noundef 385, i32 noundef 0) #6
  br label %lor.lhs.false.i62.i

lor.lhs.false.i62.i:                              ; preds = %if.then2.i.i, %lor.lhs.false.i.i.lor.lhs.false.i62.i_crit_edge
  %mc_addr.i = getelementptr inbounds %struct.smu8_smumgr, ptr %19, i32 0, i32 10, i32 1
  %603 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %603)
  %604 = load i64, ptr %mc_addr.i, align 8
  %shr.i = lshr i64 %604, 32
  %conv.i = trunc i64 %shr.i to i32
  %call5.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef nonnull %hwmgr, i16 noundef zeroext 51, i32 noundef %conv.i, ptr noundef null) #6
  %605 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %605)
  %606 = load i64, ptr %mc_addr.i, align 8
  %conv8.i = trunc i64 %606 to i32
  %call9.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef nonnull %hwmgr, i16 noundef zeroext 52, i32 noundef %conv8.i, ptr noundef null) #6
  %call10.i = call i32 @smum_send_msg_to_smc(ptr noundef nonnull %hwmgr, i16 noundef zeroext 594, ptr noundef null) #6
  %toc_entry_aram.i = getelementptr inbounds %struct.smu8_smumgr, ptr %19, i32 0, i32 5
  %607 = ptrtoint ptr %toc_entry_aram.i to i32
  call void @__asan_load2_noabort(i32 %607)
  %608 = load i16, ptr %toc_entry_aram.i, align 8
  %conv11.i = zext i16 %608 to i32
  %call12.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef nonnull %hwmgr, i16 noundef zeroext 596, i32 noundef %conv11.i, ptr noundef null) #6
  %toc_entry_power_profiling_index.i = getelementptr inbounds %struct.smu8_smumgr, ptr %19, i32 0, i32 4
  %609 = ptrtoint ptr %toc_entry_power_profiling_index.i to i32
  call void @__asan_load2_noabort(i32 %609)
  %610 = load i16, ptr %toc_entry_power_profiling_index.i, align 2
  %conv13.i = zext i16 %610 to i32
  %call14.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef nonnull %hwmgr, i16 noundef zeroext 596, i32 noundef %conv13.i, ptr noundef null) #6
  %toc_entry_initialize_index.i = getelementptr inbounds %struct.smu8_smumgr, ptr %19, i32 0, i32 3
  %611 = ptrtoint ptr %toc_entry_initialize_index.i to i32
  call void @__asan_load2_noabort(i32 %611)
  %612 = load i16, ptr %toc_entry_initialize_index.i, align 4
  %conv15.i = zext i16 %612 to i32
  %call16.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef nonnull %hwmgr, i16 noundef zeroext 596, i32 noundef %conv15.i, ptr noundef null) #6
  %613 = ptrtoint ptr %chip_id7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %chip_id7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %614)
  %cmp.i = icmp eq i32 %614, 14
  %spec.select.i = select i1 %cmp.i, i32 317, i32 383
  %615 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %device, align 4
  %cmp1.i61.i = icmp eq ptr %616, null
  br i1 %cmp1.i61.i, label %lor.lhs.false.i62.i.do.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i62.i.do.end.i_crit_edge:           ; preds = %lor.lhs.false.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i62.i
  %617 = ptrtoint ptr %616 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %616, align 4
  %write_register.i63.i = getelementptr inbounds %struct.cgs_ops, ptr %618, i32 0, i32 1
  %619 = ptrtoint ptr %write_register.i63.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %write_register.i63.i, align 4
  call void %620(ptr noundef nonnull %616, i32 noundef 384, i32 noundef 268566424) #6
  %usec_timeout.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 21
  %621 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %622)
  %cmp427.not.i.i = icmp eq i32 %622, 0
  br i1 %cmp427.not.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %if.end.i.i.for.body.i64.i_crit_edge

if.end.i.i.for.body.i64.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i64.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

for.body.i64.i:                                   ; preds = %if.end10.i.i.for.body.i64.i_crit_edge, %if.end.i.i.for.body.i64.i_crit_edge
  %i.028.i.i = phi i32 [ %inc.i65.i, %if.end10.i.i.for.body.i64.i_crit_edge ], [ 0, %if.end.i.i.for.body.i64.i_crit_edge ]
  %623 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %device, align 4
  %625 = ptrtoint ptr %624 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %624, align 4
  %627 = ptrtoint ptr %626 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %626, align 4
  %call.i.i = call i32 %628(ptr noundef %624, i32 noundef 385) #6
  %and.i.i = and i32 %call.i.i, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %spec.select.i)
  %cmp8.i.i = icmp eq i32 %and.i.i, %spec.select.i
  br i1 %cmp8.i.i, label %for.body.i64.i.for.end.i.i_crit_edge, label %if.end10.i.i

for.body.i64.i.for.end.i.i_crit_edge:             ; preds = %for.body.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end10.i.i:                                     ; preds = %for.body.i64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %629 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %629(i32 noundef 214748) #6
  %inc.i65.i = add nuw i32 %i.028.i.i, 1
  %630 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp4.i66.i = icmp ult i32 %inc.i65.i, %631
  br i1 %cmp4.i66.i, label %if.end10.i.i.for.body.i64.i_crit_edge, label %if.end10.i.i.for.end.i.i_crit_edge

if.end10.i.i.for.end.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end10.i.i.for.body.i64.i_crit_edge:            ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i64.i

for.end.i.i:                                      ; preds = %if.end10.i.i.for.end.i.i_crit_edge, %for.body.i64.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %i.028.i.i, %for.body.i64.i.for.end.i.i_crit_edge ], [ %inc.i65.i, %if.end10.i.i.for.end.i.i_crit_edge ]
  %632 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %633)
  %cmp12.not.i.i = icmp ult i32 %i.0.lcssa.i.i, %633
  br i1 %cmp12.not.i.i, label %lor.lhs.false.i71.i, label %for.end.i.i.do.end.i.i_crit_edge

for.end.i.i.do.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.end.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.i, %lor.lhs.false.i62.i.do.end.i_crit_edge
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %cleanup

lor.lhs.false.i71.i:                              ; preds = %for.end.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i67.i) #6
  %634 = call ptr @memset(ptr %info.i67.i, i32 0, i32 40)
  %635 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %device, align 4
  %cmp1.i70.i = icmp eq ptr %636, null
  br i1 %cmp1.i70.i, label %lor.lhs.false.i71.i.do.end28.i_crit_edge, label %if.end.i74.i

lor.lhs.false.i71.i.do.end28.i_crit_edge:         ; preds = %lor.lhs.false.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

if.end.i74.i:                                     ; preds = %lor.lhs.false.i71.i
  %637 = ptrtoint ptr %636 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %636, align 4
  %get_firmware_info.i72.i = getelementptr inbounds %struct.cgs_ops, ptr %638, i32 0, i32 4
  %639 = ptrtoint ptr %get_firmware_info.i72.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %get_firmware_info.i72.i, align 4
  %call.i73.i = call i32 %640(ptr noundef nonnull %636, i32 noundef 7, ptr noundef nonnull %info.i67.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool.not.i.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool.not.i.i, label %smu8_load_mec_firmware.exit.i, label %if.end.i74.i.do.end28.i_crit_edge

if.end.i74.i.do.end28.i_crit_edge:                ; preds = %if.end.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

smu8_load_mec_firmware.exit.i:                    ; preds = %if.end.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  %641 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %device, align 4
  %643 = ptrtoint ptr %642 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %642, align 4
  %645 = ptrtoint ptr %644 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %644, align 4
  %call9.i.i = call i32 %646(ptr noundef %642, i32 noundef 8333) #6
  %or11.i.i = or i32 %call9.i.i, 1342177280
  %647 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %device, align 4
  %649 = ptrtoint ptr %648 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %648, align 4
  %write_register.i75.i = getelementptr inbounds %struct.cgs_ops, ptr %650, i32 0, i32 1
  %651 = ptrtoint ptr %write_register.i75.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %write_register.i75.i, align 4
  call void %652(ptr noundef %648, i32 noundef 8333, i32 noundef %or11.i.i) #6
  %653 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %device, align 4
  %655 = ptrtoint ptr %654 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %654, align 4
  %657 = ptrtoint ptr %656 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %656, align 4
  %call19.i.i = call i32 %658(ptr noundef %654, i32 noundef 12475) #6
  %and26.i.i = and i32 %call19.i.i, -427819024
  %or27.i.i = or i32 %and26.i.i, 134217728
  %659 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %device, align 4
  %661 = ptrtoint ptr %660 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %660, align 4
  %write_register30.i.i = getelementptr inbounds %struct.cgs_ops, ptr %662, i32 0, i32 1
  %663 = ptrtoint ptr %write_register30.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %write_register30.i.i, align 4
  call void %664(ptr noundef %660, i32 noundef 12475, i32 noundef %or27.i.i) #6
  %mc_addr.i76.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i67.i, i32 0, i32 4
  %665 = ptrtoint ptr %mc_addr.i76.i to i32
  call void @__asan_load8_noabort(i32 %665)
  %666 = load i64, ptr %mc_addr.i76.i, align 8
  %conv.i.i = trunc i64 %666 to i32
  %and33.i.i = and i32 %conv.i.i, -4096
  %667 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %device, align 4
  %669 = ptrtoint ptr %668 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %668, align 4
  %write_register36.i.i = getelementptr inbounds %struct.cgs_ops, ptr %670, i32 0, i32 1
  %671 = ptrtoint ptr %write_register36.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %write_register36.i.i, align 4
  call void %672(ptr noundef %668, i32 noundef 12473, i32 noundef %and33.i.i) #6
  %673 = ptrtoint ptr %mc_addr.i76.i to i32
  call void @__asan_load8_noabort(i32 %673)
  %674 = load i64, ptr %mc_addr.i76.i, align 8
  %shr.i.i = lshr i64 %674, 32
  %conv40.i.i = trunc i64 %shr.i.i to i32
  %and41.i.i = and i32 %conv40.i.i, 65535
  %675 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %device, align 4
  %677 = ptrtoint ptr %676 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %676, align 4
  %write_register44.i.i = getelementptr inbounds %struct.cgs_ops, ptr %678, i32 0, i32 1
  %679 = ptrtoint ptr %write_register44.i.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %write_register44.i.i, align 4
  call void %680(ptr noundef %676, i32 noundef 12474, i32 noundef %and41.i.i) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i67.i) #6
  br label %cleanup

do.end28.i:                                       ; preds = %if.end.i74.i.do.end28.i_crit_edge, %lor.lhs.false.i71.i.do.end28.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i67.i) #6
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end28.i, %smu8_load_mec_firmware.exit.i, %do.end.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end28.i ], [ 0, %smu8_load_mec_firmware.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_check_fw_load_finish(ptr noundef readonly %hwmgr, i32 noundef %firmware) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void %5(ptr noundef nonnull %1, i32 noundef 384, i32 noundef 268566424) #6
  %usec_timeout = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 21
  %6 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp427.not = icmp eq i32 %7, 0
  br i1 %cmp427.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call = tail call i32 %13(ptr noundef %9, i32 noundef 385) #6
  %and = and i32 %call, %firmware
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %firmware)
  %cmp8 = icmp eq i32 %and, %firmware
  br i1 %cmp8, label %for.body.for.end_crit_edge, label %if.end10

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end10:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #6
  %inc = add nuw i32 %i.028, 1
  %15 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usec_timeout, align 4
  %cmp4 = icmp ult i32 %inc, %16
  br i1 %cmp4, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %i.028, %for.body.for.end_crit_edge ], [ %inc, %if.end10.for.end_crit_edge ]
  %17 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %18)
  %cmp12.not = icmp ult i32 %i.0.lcssa, %18
  br i1 %cmp12.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_get_argument(ptr noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1, i32 noundef 480) #6
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu8_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %msg, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %msg, i32 noundef %parameter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @phm_wait_for_register_unequal(ptr noundef nonnull %hwmgr, i32 noundef 464, i32 noundef 0, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call6 = tail call i32 %7(ptr noundef %3, i32 noundef 448) #6
  %conv = zext i16 %msg to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %call6) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i64 @ktime_get() #6
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void %13(ptr noundef %9, i32 noundef 480, i32 noundef %parameter) #6
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write_register15 = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_register15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register15, align 4
  tail call void %19(ptr noundef %15, i32 noundef 464, i32 noundef 0) #6
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write_register19 = getelementptr inbounds %struct.cgs_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_register19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_register19, align 4
  %conv21 = zext i16 %msg to i32
  tail call void %25(ptr noundef %21, i32 noundef 448, i32 noundef %conv21) #6
  %call22 = tail call i32 @phm_wait_for_register_unequal(ptr noundef nonnull %hwmgr, i32 noundef 464, i32 noundef 0, i32 noundef -1) #6
  %call23 = tail call i64 @ktime_get() #6
  %sub.i = sub i64 %call23, %call9
  %26 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #6
  %27 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %26, i32 0) #11, !srcloc !77
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %27, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %27, 1
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %26, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %do.end36, !prof !79

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end36:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %28, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 99, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %conv21, i32 noundef %parameter, i64 noundef %cond213.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end8.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call22, %do.end36 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_download_pptable_settings(ptr noundef %hwmgr, ptr nocapture noundef writeonly %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %scratch_buffer_length = getelementptr inbounds %struct.smu8_smumgr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %scratch_buffer_length to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scratch_buffer_length, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp32.not = icmp eq i8 %3, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %firmware_ID = getelementptr %struct.smu8_smumgr, ptr %1, i32 0, i32 15, i32 %i.033, i32 3
  %4 = ptrtoint ptr %firmware_ID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %firmware_ID, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %5)
  %cmp2 = icmp eq i32 %5, 21
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.033, %for.body.for.end_crit_edge ], [ %conv, %for.inc.for.end_crit_edge ]
  %kaddr = getelementptr %struct.smu8_smumgr, ptr %1, i32 0, i32 15, i32 %i.0.lcssa, i32 2
  %6 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kaddr, align 8
  %8 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %table, align 4
  %mc_addr = getelementptr %struct.smu8_smumgr, ptr %1, i32 0, i32 15, i32 %i.0.lcssa, i32 1
  %9 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mc_addr, align 8
  %shr = lshr i64 %10, 32
  %conv9 = trunc i64 %shr to i32
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 73, i32 noundef %conv9, ptr noundef null) #6
  %11 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mc_addr, align 8
  %conv13 = trunc i64 %12 to i32
  %call14 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 74, i32 noundef %conv13, ptr noundef null) #6
  %toc_entry_clock_table = getelementptr inbounds %struct.smu8_smumgr, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %toc_entry_clock_table to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %toc_entry_clock_table, align 4
  %conv15 = zext i16 %14 to i32
  %call16 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 596, i32 noundef %conv15, ptr noundef null) #6
  %call17 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 615, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu8_upload_pptable_settings(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %scratch_buffer_length = getelementptr inbounds %struct.smu8_smumgr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %scratch_buffer_length to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scratch_buffer_length, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp28.not = icmp eq i8 %3, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %firmware_ID = getelementptr %struct.smu8_smumgr, ptr %1, i32 0, i32 15, i32 %i.029, i32 3
  %4 = ptrtoint ptr %firmware_ID to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %firmware_ID, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %5)
  %cmp2 = icmp eq i32 %5, 21
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.029, %for.body.for.end_crit_edge ], [ %conv, %for.inc.for.end_crit_edge ]
  %mc_addr = getelementptr %struct.smu8_smumgr, ptr %1, i32 0, i32 15, i32 %i.0.lcssa, i32 1
  %6 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mc_addr, align 8
  %shr = lshr i64 %7, 32
  %conv7 = trunc i64 %shr to i32
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 73, i32 noundef %conv7, ptr noundef null) #6
  %8 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mc_addr, align 8
  %conv11 = trunc i64 %9 to i32
  %call12 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 74, i32 noundef %conv11, ptr noundef null) #6
  %toc_entry_clock_table = getelementptr inbounds %struct.smu8_smumgr, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %toc_entry_clock_table to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %toc_entry_clock_table, align 4
  %conv13 = zext i16 %11 to i32
  %call14 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 596, i32 noundef %conv13, ptr noundef null) #6
  %call15 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 616, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @smu8_is_dpm_running(ptr noundef %hwmgr) #0 align 64 {
entry:
  %features.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %features.i) #6
  %0 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %features.i, align 4, !annotation !80
  %call.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %features.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end2.i_crit_edge

entry.if.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.then.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %features.i, align 4
  %and.i = and i32 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.smu8_dpm_check_smu_features.exit_crit_edge

if.then.i.smu8_dpm_check_smu_features.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu8_dpm_check_smu_features.exit

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %entry.if.end2.i_crit_edge
  br label %smu8_dpm_check_smu_features.exit

smu8_dpm_check_smu_features.exit:                 ; preds = %if.end2.i, %if.then.i.smu8_dpm_check_smu_features.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.end2.i ], [ true, %if.then.i.smu8_dpm_check_smu_features.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %features.i) #6
  ret i1 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_init_bo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_for_register_unequal(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 896, i32 10}
!2 = !{ptr @smu8_smu_funcs, !3, !"smu8_smu_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 895, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 799, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @smu8_smu_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @smu8_smu_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @smu8_smu_init._entry.4, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 807, i32 3}
!12 = !{ptr @smu8_smu_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @smu8_smu_init._entry.6, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 814, i32 3}
!15 = !{ptr @smu8_smu_init._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @smu8_smu_init._entry.8, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 822, i32 3}
!18 = !{ptr @smu8_smu_init._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @smu8_smu_init._entry.10, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 830, i32 3}
!21 = !{ptr @smu8_smu_init._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 747, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @smu8_start_smu._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @smu8_start_smu._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 719, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @smu8_request_smu_load_fw._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @smu8_request_smu_load_fw._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 725, i32 3}
!34 = !{ptr @smu8_request_smu_load_fw._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @smu8_request_smu_load_fw._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @firmware_list, !37, !"firmware_list", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 45, i32 38}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 345, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @smu8_smu_populate_single_scratch_task._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @smu8_smu_populate_single_scratch_task._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 382, i32 3}
!45 = !{ptr @smu8_smu_populate_single_ucode_load_task._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @smu8_smu_populate_single_ucode_load_task._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 116, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @smu8_set_smc_sram_address._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @smu8_set_smc_sram_address._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 121, i32 3}
!54 = !{ptr @smu8_set_smc_sram_address._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @smu8_set_smc_sram_address._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 167, i32 3}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @smu8_check_fw_load_finish._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @smu8_check_fw_load_finish._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 82, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @smu8_send_msg_to_smc_with_parameter._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @smu8_send_msg_to_smc_with_parameter._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu8_smumgr.c", i32 98, i32 2}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 498468, i64 498495, i64 498517, i64 498545}
!78 = !{i64 498876, i64 498903, i64 498936, i64 498957, i64 498984, i64 499010}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{!"auto-init"}
