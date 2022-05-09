; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/vega10_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.cgs_firmware_info = type { i16, i16, i16, i32, i64, i32, ptr, i8 }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.smu_table_entry = type { i32, i32, i32, i64, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.90, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.90 = type { ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vega10_smu\00", [21 x i8] zeroinitializer }, align 32
@vega10_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str, ptr @vega10_smu_init, ptr @vega10_smu_fini, ptr @vega10_start_smu, ptr null, ptr null, ptr null, ptr @smu9_get_argument, ptr @smu9_send_msg_to_smc, ptr @smu9_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vega10_is_dpm_running, ptr null, ptr null, ptr @vega10_smc_table_manager, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vega10_start_smu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vega10_start_smu = private unnamed_addr constant [17 x i8] c"vega10_start_smu\00", align 1
@vega10_start_smu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vega10_start_smu, ptr @.str.3, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c\00", [62 x i8] zeroinitializer }, align 32
@vega10_start_smu._entry_ptr = internal global ptr @vega10_start_smu._entry, section ".printk_index", align 4
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to verify SMC interface!\00", [32 x i8] zeroinitializer }, align 32
@vega10_verify_smc_interface._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_verify_smc_interface = private unnamed_addr constant [28 x i8] c"vega10_verify_smc_interface\00", align 1
@vega10_verify_smc_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vega10_verify_smc_interface, ptr @.str.3, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_verify_smc_interface._entry_ptr = internal global ptr @vega10_verify_smc_interface._entry, section ".printk_index", align 4
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Attempt to get SMC IF Version Number Failed!\00", [51 x i8] zeroinitializer }, align 32
@vega10_verify_smc_interface._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.vega10_verify_smc_interface, ptr @.str.3, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\013amdgpu: [powerplay] Your firmware(0x%x) doesn't match SMU9_DRIVER_IF_VERSION(0x%x). Please update your firmware!\0A\00", [44 x i8] zeroinitializer }, align 32
@vega10_verify_smc_interface._entry_ptr.8 = internal global ptr @vega10_verify_smc_interface._entry.6, section ".printk_index", align 4
@vega10_copy_table_from_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_copy_table_from_smc = private unnamed_addr constant [27 x i8] c"vega10_copy_table_from_smc\00", align 1
@vega10_copy_table_from_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vega10_copy_table_from_smc, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_copy_table_from_smc._entry_ptr = internal global ptr @vega10_copy_table_from_smc._entry, section ".printk_index", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid SMU Table ID!\00", [42 x i8] zeroinitializer }, align 32
@vega10_copy_table_from_smc._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_copy_table_from_smc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vega10_copy_table_from_smc, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_copy_table_from_smc._entry_ptr.12 = internal global ptr @vega10_copy_table_from_smc._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid SMU Table version!\00", [37 x i8] zeroinitializer }, align 32
@vega10_copy_table_from_smc._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_copy_table_from_smc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vega10_copy_table_from_smc, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_copy_table_from_smc._entry_ptr.16 = internal global ptr @vega10_copy_table_from_smc._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid SMU Table Length!\00", [38 x i8] zeroinitializer }, align 32
@vega10_copy_table_to_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_copy_table_to_smc = private unnamed_addr constant [25 x i8] c"vega10_copy_table_to_smc\00", align 1
@vega10_copy_table_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vega10_copy_table_to_smc, ptr @.str.3, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_copy_table_to_smc._entry_ptr = internal global ptr @vega10_copy_table_to_smc._entry, section ".printk_index", align 4
@vega10_copy_table_to_smc._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_copy_table_to_smc._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vega10_copy_table_to_smc, ptr @.str.3, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_copy_table_to_smc._entry_ptr.20 = internal global ptr @vega10_copy_table_to_smc._entry.19, section ".printk_index", align 4
@vega10_copy_table_to_smc._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_copy_table_to_smc._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vega10_copy_table_to_smc, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_copy_table_to_smc._entry_ptr.23 = internal global ptr @vega10_copy_table_to_smc._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 192, i64 193, i64 195]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 383, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"vega10_smu_funcs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 382, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 360, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 181, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 195, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 44, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 46, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 48, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 83, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 85, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 87, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @vega10_copy_table_from_smc._entry, ptr @vega10_copy_table_from_smc._entry.11, ptr @vega10_copy_table_from_smc._entry.15, ptr @vega10_copy_table_from_smc._entry_ptr, ptr @vega10_copy_table_from_smc._entry_ptr.12, ptr @vega10_copy_table_from_smc._entry_ptr.16, ptr @vega10_copy_table_to_smc._entry, ptr @vega10_copy_table_to_smc._entry.19, ptr @vega10_copy_table_to_smc._entry.22, ptr @vega10_copy_table_to_smc._entry_ptr, ptr @vega10_copy_table_to_smc._entry_ptr.20, ptr @vega10_copy_table_to_smc._entry_ptr.23, ptr @vega10_start_smu._entry, ptr @vega10_start_smu._entry_ptr, ptr @vega10_verify_smc_interface._entry, ptr @vega10_verify_smc_interface._entry.6, ptr @vega10_verify_smc_interface._entry_ptr, ptr @vega10_verify_smc_interface._entry_ptr.8, ptr @.str, ptr @vega10_smu_funcs, ptr @vega10_start_smu._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vega10_verify_smc_interface._rs, ptr @.str.5, ptr @.str.7, ptr @vega10_copy_table_from_smc._rs, ptr @.str.9, ptr @vega10_copy_table_from_smc._rs.10, ptr @.str.13, ptr @vega10_copy_table_from_smc._rs.14, ptr @.str.17, ptr @vega10_copy_table_to_smc._rs, ptr @vega10_copy_table_to_smc._rs.18, ptr @vega10_copy_table_to_smc._rs.21], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_start_smu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_start_smu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_verify_smc_interface._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_verify_smc_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_verify_smc_interface._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_from_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_from_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_from_smc._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_from_smc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_from_smc._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_from_smc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_to_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_to_smc._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_to_smc._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_to_smc._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_copy_table_to_smc._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext %enable, i32 noundef %feature_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %0 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %not_vf, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = select i1 %enable, i16 4, i16 5
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %conv, i32 noundef %feature_mask, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef writeonly %features_enabled) local_unnamed_addr #0 align 64 {
entry:
  %enabled_features = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled_features) #5
  %0 = ptrtoint ptr %enabled_features to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enabled_features, align 4, !annotation !62
  %cmp = icmp eq ptr %features_enabled, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 6, ptr noundef nonnull %enabled_features) #5
  %1 = ptrtoint ptr %enabled_features to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enabled_features, align 4
  %conv = zext i32 %2 to i64
  %3 = ptrtoint ptr %features_enabled to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %features_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled_features) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega10_smu_init(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  %info = alloca %struct.cgs_firmware_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #5
  %0 = call ptr @memset(ptr %info, i32 0, i32 40)
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %get_firmware_info = getelementptr inbounds %struct.cgs_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %get_firmware_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_firmware_info, align 4
  %call = call i32 %6(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %kptr = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 6
  %7 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kptr, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 160) #8
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %10 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %smu_backend, align 4
  %11 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwmgr, align 4
  %handle = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 5
  %mc_addr = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 3
  %table = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 4
  %call14 = call i32 @amdgpu_bo_create_kernel(ptr noundef %12, i32 noundef 800, i32 noundef 4096, i32 noundef 4, ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end6.free_backend_crit_edge

if.end6.free_backend_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_backend

if.end17:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call7.i.i, align 8
  %size = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 800, ptr %size, align 4
  %table_id = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %table_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %table_id, align 8
  %16 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwmgr, align 4
  %handle31 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 5
  %mc_addr35 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 3
  %table39 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 4
  %call40 = call i32 @amdgpu_bo_create_kernel(ptr noundef %17, i32 noundef 124, i32 noundef 4096, i32 noundef 4, ptr noundef %handle31, ptr noundef %mc_addr35, ptr noundef %table39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end17.err0_crit_edge

if.end17.err0_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err0

if.end43:                                         ; preds = %if.end17
  %arrayidx30 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %arrayidx30, align 8
  %size51 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %size51 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 124, ptr %size51, align 4
  %table_id55 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %table_id55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %table_id55, align 8
  %21 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwmgr, align 4
  %handle60 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 2, i32 5
  %mc_addr64 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 2, i32 3
  %table68 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 2, i32 4
  %call69 = call i32 @amdgpu_bo_create_kernel(ptr noundef %22, i32 noundef 160, i32 noundef 4096, i32 noundef 4, ptr noundef %handle60, ptr noundef %mc_addr64, ptr noundef %table68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end43.err1_crit_edge

if.end43.err1_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end72:                                         ; preds = %if.end43
  %arrayidx59 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx59, align 8
  %size80 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %size80 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 160, ptr %size80, align 4
  %table_id84 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %table_id84 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %table_id84, align 8
  %26 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwmgr, align 4
  %handle91 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 3, i32 5
  %mc_addr95 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 3, i32 3
  %table99 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 3, i32 4
  %call100 = call i32 @amdgpu_bo_create_kernel(ptr noundef %27, i32 noundef 102400, i32 noundef 4096, i32 noundef 4, ptr noundef %handle91, ptr noundef %mc_addr95, ptr noundef %table99) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end72.err2_crit_edge

if.end72.err2_crit_edge:                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end103:                                        ; preds = %if.end72
  %arrayidx90 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %arrayidx90, align 8
  %size111 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %size111 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 102400, ptr %size111, align 4
  %table_id115 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %table_id115 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %table_id115, align 8
  %31 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwmgr, align 4
  %handle121 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4, i32 5
  %mc_addr125 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4, i32 3
  %table129 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4, i32 4
  %call130 = call i32 @amdgpu_bo_create_kernel(ptr noundef %32, i32 noundef 128, i32 noundef 4096, i32 noundef 4, ptr noundef %handle121, ptr noundef %mc_addr125, ptr noundef %table129) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %err3

if.end133:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx120 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %arrayidx120, align 8
  %size141 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %size141 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 128, ptr %size141, align 4
  %table_id145 = getelementptr [5 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %table_id145 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %table_id145, align 8
  br label %cleanup

err3:                                             ; preds = %if.end103
  %36 = ptrtoint ptr %table99 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %table99, align 8
  %tobool150.not = icmp eq ptr %37, null
  br i1 %tobool150.not, label %err3.err2_crit_edge, label %if.then151

err3.err2_crit_edge:                              ; preds = %err3
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.then151:                                       ; preds = %err3
  call void @__sanitizer_cov_trace_pc() #7
  call void @amdgpu_bo_free_kernel(ptr noundef %handle91, ptr noundef %mc_addr95, ptr noundef %table99) #5
  br label %err2

err2:                                             ; preds = %if.then151, %err3.err2_crit_edge, %if.end72.err2_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle60, ptr noundef %mc_addr64, ptr noundef %table68) #5
  br label %err1

err1:                                             ; preds = %err2, %if.end43.err1_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle31, ptr noundef %mc_addr35, ptr noundef %table39) #5
  br label %err0

err0:                                             ; preds = %err1, %if.end17.err0_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  br label %free_backend

free_backend:                                     ; preds = %err0, %if.end6.free_backend_crit_edge
  %38 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smu_backend, align 4
  call void @kfree(ptr noundef %39) #5
  br label %cleanup

cleanup:                                          ; preds = %free_backend, %if.end133, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %free_backend ], [ 0, %if.end133 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega10_smu_fini(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end64_crit_edge, label %if.then

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then:                                          ; preds = %entry
  %handle = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 5
  %mc_addr = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 3
  %table = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  %handle11 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 5
  %mc_addr15 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 3
  %table19 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle11, ptr noundef %mc_addr15, ptr noundef %table19) #5
  %handle23 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 2, i32 5
  %mc_addr27 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 2, i32 3
  %table31 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 2, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle23, ptr noundef %mc_addr27, ptr noundef %table31) #5
  %table35 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %table35 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table35, align 8
  %tobool36.not = icmp eq ptr %3, null
  br i1 %tobool36.not, label %if.then.if.end_crit_edge, label %if.then37

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then37:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %handle41 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 3, i32 5
  %mc_addr45 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 3, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle41, ptr noundef %mc_addr45, ptr noundef %table35) #5
  br label %if.end

if.end:                                           ; preds = %if.then37, %if.then.if.end_crit_edge
  %handle53 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 4, i32 5
  %mc_addr57 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 4, i32 3
  %table61 = getelementptr [5 x %struct.smu_table_entry], ptr %1, i32 0, i32 4, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle53, ptr noundef %mc_addr57, ptr noundef %table61) #5
  %4 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu_backend, align 4
  tail call void @kfree(ptr noundef %5) #5
  %6 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %smu_backend, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end, %entry.if.end64_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega10_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  %smc_driver_if_version.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smu9_is_smc_ram_running(ptr noundef %hwmgr) #5
  br i1 %call, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_driver_if_version.i) #5
  %0 = ptrtoint ptr %smc_driver_if_version.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smc_driver_if_version.i, align 4, !annotation !62
  %1 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwmgr, align 4
  %call.i = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 3, ptr noundef nonnull %smc_driver_if_version.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end9.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  %call2.i = call i32 @___ratelimit(ptr noundef nonnull @vega10_verify_smc_interface._rs, ptr noundef nonnull @__func__.vega10_verify_smc_interface) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.then2_crit_edge, label %do.end.i

if.then.i.if.then2_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #9
  br label %if.then2

do.end9.i:                                        ; preds = %do.body
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26751, i16 %6)
  %cmp.i = icmp eq i16 %6, 26751
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end9.i.if.then20.i_crit_edge

do.end9.i.if.then20.i_crit_edge:                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i

land.lhs.true.i:                                  ; preds = %do.end9.i
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %revision.i, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %land.lhs.true.i.if.then20.i_crit_edge [
    i8 -64, label %land.lhs.true.i.do.end10_crit_edge
    i8 -63, label %land.lhs.true.i.do.end10_crit_edge19
    i8 -61, label %land.lhs.true.i.do.end10_crit_edge20
  ]

land.lhs.true.i.do.end10_crit_edge20:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true.i.do.end10_crit_edge19:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true.i.do.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true.i.if.then20.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.i

if.then20.i:                                      ; preds = %land.lhs.true.i.if.then20.i_crit_edge, %do.end9.i.if.then20.i_crit_edge
  %10 = ptrtoint ptr %smc_driver_if_version.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smc_driver_if_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %11)
  %cmp21.not.i = icmp eq i32 %11, 14
  br i1 %cmp21.not.i, label %if.then20.i.do.end10_crit_edge, label %do.end26.i

if.then20.i.do.end10_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end26.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef 14) #9
  br label %if.then2

if.then2:                                         ; preds = %do.end26.i, %do.end.i, %if.then.i.if.then2_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_driver_if_version.i) #5
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @vega10_start_smu._rs, ptr noundef nonnull @__func__.vega10_start_smu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.return_crit_edge, label %do.end

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #9
  br label %return

do.end10:                                         ; preds = %if.then20.i.do.end10_crit_edge, %land.lhs.true.i.do.end10_crit_edge, %land.lhs.true.i.do.end10_crit_edge19, %land.lhs.true.i.do.end10_crit_edge20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_driver_if_version.i) #5
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %12 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smu_backend.i, align 4
  %mc_addr.i = getelementptr [5 x %struct.smu_table_entry], ptr %13, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mc_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.i14 = icmp eq i64 %15, 0
  br i1 %tobool.not.i14, label %do.end10.return_crit_edge, label %if.then.i16

do.end10.return_crit_edge:                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.i16:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i64 %15, 32
  %conv.i = trunc i64 %shr.i to i32
  %call.i15 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 11, i32 noundef %conv.i, ptr noundef null) #5
  %16 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mc_addr.i, align 8
  %conv11.i = trunc i64 %17 to i32
  %call12.i = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 12, i32 noundef %conv11.i, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.then.i16, %do.end10.return_crit_edge, %do.end, %if.then2.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.return_crit_edge ], [ 0, %do.end10.return_crit_edge ], [ 0, %if.then.i16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_get_argument(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_send_msg_to_smc(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vega10_is_dpm_running(ptr noundef %hwmgr) #0 align 64 {
entry:
  %enabled_features.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled_features.i) #5
  %0 = ptrtoint ptr %enabled_features.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enabled_features.i, align 4, !annotation !62
  %call.i = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 6, ptr noundef nonnull %enabled_features.i) #5
  %1 = ptrtoint ptr %enabled_features.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enabled_features.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled_features.i) #5
  %3 = and i32 %2, 783
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega10_smc_table_manager(ptr noundef %hwmgr, ptr nocapture noundef %table, i16 noundef zeroext %table_id, i1 noundef zeroext %rw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rw, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %table_id)
  %cmp.i = icmp slt i16 %table_id, 5
  br i1 %cmp.i, label %do.body9.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_copy_table_from_smc._rs, ptr noundef nonnull @__func__.vega10_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %do.end.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #9
  br label %if.end

do.body9.i:                                       ; preds = %if.then
  %conv.i = sext i16 %table_id to i32
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend.i, align 4
  %arrayidx.i = getelementptr [5 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not.i = icmp eq i32 %5, 0
  br i1 %cmp11.not.i, label %if.then13.i, label %do.body26.i

if.then13.i:                                      ; preds = %do.body9.i
  %call14.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_copy_table_from_smc._rs.10, ptr noundef nonnull @__func__.vega10_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.end_crit_edge, label %do.end19.i

if.then13.i.if.end_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end19.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13) #9
  br label %if.end

do.body26.i:                                      ; preds = %do.body9.i
  %size.i = getelementptr [5 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31.not.i = icmp eq i32 %7, 0
  br i1 %cmp31.not.i, label %if.then33.i, label %do.end45.i

if.then33.i:                                      ; preds = %do.body26.i
  %call34.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_copy_table_from_smc._rs.14, ptr noundef nonnull @__func__.vega10_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.if.end_crit_edge, label %do.end39.i

if.then33.i.if.end_crit_edge:                     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end39.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #9
  br label %if.end

do.end45.i:                                       ; preds = %do.body26.i
  %mc_addr.i = getelementptr [5 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 3
  %8 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mc_addr.i, align 8
  %shr.i = lshr i64 %9, 32
  %conv51.i = trunc i64 %shr.i to i32
  %call52.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 9, i32 noundef %conv51.i, ptr noundef null) #5
  %10 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mc_addr.i, align 8
  %conv58.i = trunc i64 %11 to i32
  %call59.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 10, i32 noundef %conv58.i, ptr noundef null) #5
  %table_id64.i = getelementptr [5 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 2
  %12 = ptrtoint ptr %table_id64.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %table_id64.i, align 8
  %call65.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 13, i32 noundef %13, ptr noundef null) #5
  %asic_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic_funcs.i, align 4
  %invalidate_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %invalidate_hdp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %invalidate_hdp.i, align 4
  %tobool66.not.i = icmp eq ptr %17, null
  br i1 %tobool66.not.i, label %cond.false.i, label %do.end45.i.cond.end.i_crit_edge

do.end45.i.cond.end.i_crit_edge:                  ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 102, i32 1
  %18 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs.i, align 4
  %invalidate_hdp69.i = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %invalidate_hdp69.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %invalidate_hdp69.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %do.end45.i.cond.end.i_crit_edge
  %.sink.i = phi ptr [ %21, %cond.false.i ], [ %17, %do.end45.i.cond.end.i_crit_edge ]
  tail call void %.sink.i(ptr noundef %1, ptr noundef null) #5
  %table74.i = getelementptr [5 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 4
  %22 = ptrtoint ptr %table74.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %table74.i, align 8
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %26 = call ptr @memcpy(ptr %table, ptr %23, i32 %25)
  br label %if.end

if.else:                                          ; preds = %entry
  %smu_backend.i5 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %27 = ptrtoint ptr %smu_backend.i5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smu_backend.i5, align 4
  %29 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hwmgr, align 4
  %not_vf.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %31 = ptrtoint ptr %not_vf.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %not_vf.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i6 = icmp eq i8 %32, 0
  br i1 %tobool.not.i6, label %if.else.if.end_crit_edge, label %do.body.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %table_id)
  %cmp.i7 = icmp slt i16 %table_id, 5
  br i1 %cmp.i7, label %do.body12.i, label %if.then3.i

if.then3.i:                                       ; preds = %do.body.i
  %call.i8 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_copy_table_to_smc._rs, ptr noundef nonnull @__func__.vega10_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool4.not.i = icmp eq i32 %call.i8, 0
  br i1 %tobool4.not.i, label %if.then3.i.if.end_crit_edge, label %do.end.i9

if.then3.i.if.end_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i9:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #9
  br label %if.end

do.body12.i:                                      ; preds = %do.body.i
  %conv.i10 = sext i16 %table_id to i32
  %arrayidx.i11 = getelementptr [5 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i10
  %33 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp14.not.i = icmp eq i32 %34, 0
  br i1 %cmp14.not.i, label %if.then16.i, label %do.body29.i

if.then16.i:                                      ; preds = %do.body12.i
  %call17.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_copy_table_to_smc._rs.18, ptr noundef nonnull @__func__.vega10_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.end_crit_edge, label %do.end22.i

if.then16.i.if.end_crit_edge:                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end22.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13) #9
  br label %if.end

do.body29.i:                                      ; preds = %do.body12.i
  %size.i12 = getelementptr [5 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i10, i32 1
  %35 = ptrtoint ptr %size.i12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp34.not.i = icmp eq i32 %36, 0
  br i1 %cmp34.not.i, label %if.then36.i, label %do.end48.i

if.then36.i:                                      ; preds = %do.body29.i
  %call37.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_copy_table_to_smc._rs.21, ptr noundef nonnull @__func__.vega10_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then36.i.if.end_crit_edge, label %do.end42.i

if.then36.i.if.end_crit_edge:                     ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end42.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #9
  br label %if.end

do.end48.i:                                       ; preds = %do.body29.i
  %table53.i = getelementptr [5 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i10, i32 4
  %37 = ptrtoint ptr %table53.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %table53.i, align 8
  %39 = call ptr @memcpy(ptr %38, ptr %table, i32 %36)
  %asic_funcs.i13 = getelementptr inbounds %struct.amdgpu_device, ptr %30, i32 0, i32 12
  %40 = ptrtoint ptr %asic_funcs.i13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asic_funcs.i13, align 4
  %flush_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %flush_hdp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %flush_hdp.i, align 4
  %tobool59.not.i = icmp eq ptr %43, null
  br i1 %tobool59.not.i, label %cond.false.i15, label %do.end48.i.cond.end.i19_crit_edge

do.end48.i.cond.end.i19_crit_edge:                ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i19

cond.false.i15:                                   ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  %funcs.i14 = getelementptr inbounds %struct.amdgpu_device, ptr %30, i32 0, i32 102, i32 1
  %44 = ptrtoint ptr %funcs.i14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs.i14, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  br label %cond.end.i19

cond.end.i19:                                     ; preds = %cond.false.i15, %do.end48.i.cond.end.i19_crit_edge
  %.sink.i16 = phi ptr [ %47, %cond.false.i15 ], [ %43, %do.end48.i.cond.end.i19_crit_edge ]
  tail call void %.sink.i16(ptr noundef %30, ptr noundef null) #5
  %mc_addr.i17 = getelementptr [5 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i10, i32 3
  %48 = ptrtoint ptr %mc_addr.i17 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %mc_addr.i17, align 8
  %shr.i18 = lshr i64 %49, 32
  %conv68.i = trunc i64 %shr.i18 to i32
  %call69.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 9, i32 noundef %conv68.i, ptr noundef null) #5
  %50 = ptrtoint ptr %mc_addr.i17 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %mc_addr.i17, align 8
  %conv75.i = trunc i64 %51 to i32
  %call76.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 10, i32 noundef %conv75.i, ptr noundef null) #5
  %table_id81.i = getelementptr [5 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i10, i32 2
  %52 = ptrtoint ptr %table_id81.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %table_id81.i, align 8
  %call82.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 14, i32 noundef %53, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %cond.end.i19, %do.end42.i, %if.then36.i.if.end_crit_edge, %do.end22.i, %if.then16.i.if.end_crit_edge, %do.end.i9, %if.then3.i.if.end_crit_edge, %if.else.if.end_crit_edge, %cond.end.i, %do.end39.i, %if.then33.i.if.end_crit_edge, %do.end19.i, %if.then13.i.if.end_crit_edge, %do.end.i, %if.then.i.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %cond.end.i ], [ -22, %do.end.i ], [ -22, %if.then.i.if.end_crit_edge ], [ -22, %do.end19.i ], [ -22, %if.then13.i.if.end_crit_edge ], [ -22, %do.end39.i ], [ -22, %if.then33.i.if.end_crit_edge ], [ 0, %cond.end.i19 ], [ 0, %if.else.if.end_crit_edge ], [ -22, %do.end.i9 ], [ -22, %if.then3.i.if.end_crit_edge ], [ -22, %do.end22.i ], [ -22, %if.then16.i.if.end_crit_edge ], [ -22, %do.end42.i ], [ -22, %if.then36.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu9_is_smc_ram_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 383, i32 10}
!2 = !{ptr @vega10_smu_funcs, !3, !"vega10_smu_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 382, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 360, i32 2}
!6 = !{ptr @vega10_start_smu._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.vega10_start_smu, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vega10_start_smu._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @vega10_start_smu._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vega10_verify_smc_interface._rs, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 181, i32 2}
!15 = !{ptr @__func__.vega10_verify_smc_interface, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vega10_verify_smc_interface._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @vega10_verify_smc_interface._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 195, i32 4}
!21 = !{ptr @vega10_verify_smc_interface._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @vega10_verify_smc_interface._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @vega10_copy_table_from_smc._rs, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 44, i32 2}
!25 = !{ptr @__func__.vega10_copy_table_from_smc, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vega10_copy_table_from_smc._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @vega10_copy_table_from_smc._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vega10_copy_table_from_smc._rs.10, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 46, i32 2}
!31 = !{ptr @vega10_copy_table_from_smc._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vega10_copy_table_from_smc._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vega10_copy_table_from_smc._rs.14, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 48, i32 2}
!36 = !{ptr @vega10_copy_table_from_smc._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vega10_copy_table_from_smc._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vega10_copy_table_to_smc._rs, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 83, i32 2}
!41 = !{ptr @__func__.vega10_copy_table_to_smc, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vega10_copy_table_to_smc._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @vega10_copy_table_to_smc._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @vega10_copy_table_to_smc._rs.18, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 85, i32 2}
!46 = !{ptr @vega10_copy_table_to_smc._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vega10_copy_table_to_smc._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @vega10_copy_table_to_smc._rs.21, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega10_smumgr.c", i32 87, i32 2}
!50 = !{ptr @vega10_copy_table_to_smc._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vega10_copy_table_to_smc._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{!"auto-init"}
