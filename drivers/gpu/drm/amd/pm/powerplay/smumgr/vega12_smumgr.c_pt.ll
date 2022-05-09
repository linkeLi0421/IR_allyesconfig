; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/vega12_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cgs_firmware_info = type { i16, i16, i16, i32, i64, i32, ptr, i8 }
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
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.smu_table_entry = type { i32, i32, i64, ptr, ptr }
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
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }

@vega12_enable_smc_features._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vega12_enable_smc_features = private unnamed_addr constant [27 x i8] c"vega12_enable_smc_features\00", align 1
@vega12_enable_smc_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_smc_features, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c\00", [62 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._entry_ptr = internal global ptr @vega12_enable_smc_features._entry, section ".printk_index", align 4
@.str.3 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[EnableDisableSMCFeatures] Attempt to enable SMU features Low failed!\00", [58 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_smc_features, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._entry_ptr.6 = internal global ptr @vega12_enable_smc_features._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[EnableDisableSMCFeatures] Attempt to enable SMU features High failed!\00", [57 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_smc_features, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._entry_ptr.10 = internal global ptr @vega12_enable_smc_features._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[EnableDisableSMCFeatures] Attempt to disable SMU features Low failed!\00", [57 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_enable_smc_features, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_enable_smc_features._entry_ptr.14 = internal global ptr @vega12_enable_smc_features._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[EnableDisableSMCFeatures] Attempt to disable SMU features High failed!\00", [56 x i8] zeroinitializer }, align 32
@vega12_get_enabled_smc_features._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_get_enabled_smc_features = private unnamed_addr constant [32 x i8] c"vega12_get_enabled_smc_features\00", align 1
@vega12_get_enabled_smc_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_enabled_smc_features, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_enabled_smc_features._entry_ptr = internal global ptr @vega12_get_enabled_smc_features._entry, section ".printk_index", align 4
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[GetEnabledSMCFeatures] Attempt to get SMU features Low failed!\00", [32 x i8] zeroinitializer }, align 32
@vega12_get_enabled_smc_features._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_get_enabled_smc_features._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_get_enabled_smc_features, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_get_enabled_smc_features._entry_ptr.19 = internal global ptr @vega12_get_enabled_smc_features._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[GetEnabledSMCFeatures] Attempt to get SMU features High failed!\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vega12_smu\00", [21 x i8] zeroinitializer }, align 32
@vega12_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str.21, ptr @vega12_smu_init, ptr @vega12_smu_fini, ptr @vega12_start_smu, ptr null, ptr null, ptr null, ptr @smu9_get_argument, ptr @smu9_send_msg_to_smc, ptr @smu9_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vega12_is_dpm_running, ptr null, ptr null, ptr @vega12_smc_table_manager, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vega12_start_smu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_start_smu = private unnamed_addr constant [17 x i8] c"vega12_start_smu\00", align 1
@vega12_start_smu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_start_smu, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_start_smu._entry_ptr = internal global ptr @vega12_start_smu._entry, section ".printk_index", align 4
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SMC is not running!\00", [44 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_copy_table_from_smc = private unnamed_addr constant [27 x i8] c"vega12_copy_table_from_smc\00", align 1
@vega12_copy_table_from_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_from_smc, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry_ptr = internal global ptr @vega12_copy_table_from_smc._entry, section ".printk_index", align 4
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid SMU Table ID!\00", [42 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_from_smc, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry_ptr.26 = internal global ptr @vega12_copy_table_from_smc._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid SMU Table version!\00", [37 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_from_smc, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry_ptr.30 = internal global ptr @vega12_copy_table_from_smc._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid SMU Table Length!\00", [38 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_from_smc, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry_ptr.34 = internal global ptr @vega12_copy_table_from_smc._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[CopyTableFromSMC] Attempt to Set Dram Addr High Failed!\00", [39 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_from_smc, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry_ptr.38 = internal global ptr @vega12_copy_table_from_smc._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[CopyTableFromSMC] Attempt to Set Dram Addr Low Failed!\00", [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_from_smc, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_from_smc._entry_ptr.42 = internal global ptr @vega12_copy_table_from_smc._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[CopyTableFromSMC] Attempt to Transfer Table From SMU Failed!\00", [34 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega12_copy_table_to_smc = private unnamed_addr constant [25 x i8] c"vega12_copy_table_to_smc\00", align 1
@vega12_copy_table_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_to_smc, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry_ptr = internal global ptr @vega12_copy_table_to_smc._entry, section ".printk_index", align 4
@vega12_copy_table_to_smc._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_to_smc, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry_ptr.46 = internal global ptr @vega12_copy_table_to_smc._entry.45, section ".printk_index", align 4
@vega12_copy_table_to_smc._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_to_smc, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry_ptr.49 = internal global ptr @vega12_copy_table_to_smc._entry.48, section ".printk_index", align 4
@vega12_copy_table_to_smc._rs.50 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_to_smc, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry_ptr.52 = internal global ptr @vega12_copy_table_to_smc._entry.51, section ".printk_index", align 4
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[CopyTableToSMC] Attempt to Set Dram Addr High Failed!\00", [41 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._rs.54 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_to_smc, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry_ptr.56 = internal global ptr @vega12_copy_table_to_smc._entry.55, section ".printk_index", align 4
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[CopyTableToSMC] Attempt to Set Dram Addr Low Failed!\00", [42 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_copy_table_to_smc, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_copy_table_to_smc._entry_ptr.60 = internal global ptr @vega12_copy_table_to_smc._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[CopyTableToSMC] Attempt to Transfer Table To SMU Failed!\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 134, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 138, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 143, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 147, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 164, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 170, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 403, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"vega12_smu_funcs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 402, i32 29 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 380, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 47, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 49, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 51, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 53, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 58, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 64, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 91, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 93, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 95, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 103, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 109, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 115, i32 2 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @vega12_copy_table_from_smc._entry, ptr @vega12_copy_table_from_smc._entry.25, ptr @vega12_copy_table_from_smc._entry.29, ptr @vega12_copy_table_from_smc._entry.33, ptr @vega12_copy_table_from_smc._entry.37, ptr @vega12_copy_table_from_smc._entry.41, ptr @vega12_copy_table_from_smc._entry_ptr, ptr @vega12_copy_table_from_smc._entry_ptr.26, ptr @vega12_copy_table_from_smc._entry_ptr.30, ptr @vega12_copy_table_from_smc._entry_ptr.34, ptr @vega12_copy_table_from_smc._entry_ptr.38, ptr @vega12_copy_table_from_smc._entry_ptr.42, ptr @vega12_copy_table_to_smc._entry, ptr @vega12_copy_table_to_smc._entry.45, ptr @vega12_copy_table_to_smc._entry.48, ptr @vega12_copy_table_to_smc._entry.51, ptr @vega12_copy_table_to_smc._entry.55, ptr @vega12_copy_table_to_smc._entry.59, ptr @vega12_copy_table_to_smc._entry_ptr, ptr @vega12_copy_table_to_smc._entry_ptr.46, ptr @vega12_copy_table_to_smc._entry_ptr.49, ptr @vega12_copy_table_to_smc._entry_ptr.52, ptr @vega12_copy_table_to_smc._entry_ptr.56, ptr @vega12_copy_table_to_smc._entry_ptr.60, ptr @vega12_enable_smc_features._entry, ptr @vega12_enable_smc_features._entry.13, ptr @vega12_enable_smc_features._entry.5, ptr @vega12_enable_smc_features._entry.9, ptr @vega12_enable_smc_features._entry_ptr, ptr @vega12_enable_smc_features._entry_ptr.10, ptr @vega12_enable_smc_features._entry_ptr.14, ptr @vega12_enable_smc_features._entry_ptr.6, ptr @vega12_get_enabled_smc_features._entry, ptr @vega12_get_enabled_smc_features._entry.18, ptr @vega12_get_enabled_smc_features._entry_ptr, ptr @vega12_get_enabled_smc_features._entry_ptr.19, ptr @vega12_start_smu._entry, ptr @vega12_start_smu._entry_ptr, ptr @vega12_enable_smc_features._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vega12_enable_smc_features._rs.4, ptr @.str.7, ptr @vega12_enable_smc_features._rs.8, ptr @.str.11, ptr @vega12_enable_smc_features._rs.12, ptr @.str.15, ptr @vega12_get_enabled_smc_features._rs, ptr @.str.16, ptr @vega12_get_enabled_smc_features._rs.17, ptr @.str.20, ptr @.str.21, ptr @vega12_smu_funcs, ptr @vega12_start_smu._rs, ptr @.str.22, ptr @vega12_copy_table_from_smc._rs, ptr @.str.23, ptr @vega12_copy_table_from_smc._rs.24, ptr @.str.27, ptr @vega12_copy_table_from_smc._rs.28, ptr @.str.31, ptr @vega12_copy_table_from_smc._rs.32, ptr @.str.35, ptr @vega12_copy_table_from_smc._rs.36, ptr @.str.39, ptr @vega12_copy_table_from_smc._rs.40, ptr @.str.43, ptr @vega12_copy_table_to_smc._rs, ptr @vega12_copy_table_to_smc._rs.44, ptr @vega12_copy_table_to_smc._rs.47, ptr @vega12_copy_table_to_smc._rs.50, ptr @.str.53, ptr @vega12_copy_table_to_smc._rs.54, ptr @.str.57, ptr @vega12_copy_table_to_smc._rs.58, ptr @.str.61], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_smc_features._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_smc_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_smc_features._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_smc_features._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_smc_features._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_smc_features._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_smc_features._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_enable_smc_features._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_enabled_smc_features._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_enabled_smc_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_enabled_smc_features._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_get_enabled_smc_features._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_start_smu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_start_smu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_from_smc._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._rs.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._rs.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_copy_table_to_smc._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega12_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext %enable, i64 noundef %feature_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %feature_mask to i32
  %shr2 = lshr i64 %feature_mask, 32
  %conv3 = trunc i64 %shr2 to i32
  br i1 %enable, label %do.body, label %do.body31

do.body:                                          ; preds = %entry
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 8, i32 noundef %conv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body14, label %if.then5

if.then5:                                         ; preds = %do.body
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_smc_features._rs, ptr noundef nonnull @__func__.vega12_enable_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body14:                                        ; preds = %do.body
  %call15 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 9, i32 noundef %conv3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %do.body14.cleanup_crit_edge, label %if.then18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %do.body14
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_smc_features._rs.4, ptr noundef nonnull @__func__.vega12_enable_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body31:                                        ; preds = %entry
  %call32 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 10, i32 noundef %conv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %do.body48, label %if.then35

if.then35:                                        ; preds = %do.body31
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_smc_features._rs.8, ptr noundef nonnull @__func__.vega12_enable_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.cleanup_crit_edge, label %if.then35.cleanup.sink.split_crit_edge

if.then35.cleanup.sink.split_crit_edge:           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body48:                                        ; preds = %do.body31
  %call49 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 11, i32 noundef %conv3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %do.body48.cleanup_crit_edge, label %if.then52

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then52:                                        ; preds = %do.body48
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_enable_smc_features._rs.12, ptr noundef nonnull @__func__.vega12_enable_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.cleanup_crit_edge, label %if.then52.cleanup.sink.split_crit_edge

if.then52.cleanup.sink.split_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then52.cleanup.sink.split_crit_edge, %if.then35.cleanup.sink.split_crit_edge, %if.then18.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.3, %if.then5.cleanup.sink.split_crit_edge ], [ @.str.7, %if.then18.cleanup.sink.split_crit_edge ], [ @.str.11, %if.then35.cleanup.sink.split_crit_edge ], [ @.str.15, %if.then52.cleanup.sink.split_crit_edge ]
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.15.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then52.cleanup_crit_edge, %do.body48.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %do.body14.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ], [ -22, %if.then35.cleanup_crit_edge ], [ -22, %if.then52.cleanup_crit_edge ], [ 0, %do.body48.cleanup_crit_edge ], [ 0, %do.body14.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega12_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef writeonly %features_enabled) local_unnamed_addr #0 align 64 {
entry:
  %smc_features_low = alloca i32, align 4
  %smc_features_high = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_features_low) #5
  %0 = ptrtoint ptr %smc_features_low to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smc_features_low, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_features_high) #5
  %1 = ptrtoint ptr %smc_features_high to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %smc_features_high, align 4, !annotation !113
  %cmp = icmp eq ptr %features_enabled, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %call = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 12, ptr noundef nonnull %smc_features_low) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %do.body11, label %if.then2

if.then2:                                         ; preds = %do.body
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_enabled_smc_features._rs, ptr noundef nonnull @__func__.vega12_get_enabled_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #8
  br label %cleanup

do.body11:                                        ; preds = %do.body
  %call12 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 13, ptr noundef nonnull %smc_features_high) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %do.end26, label %if.then14

if.then14:                                        ; preds = %do.body11
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @vega12_get_enabled_smc_features._rs.17, ptr noundef nonnull @__func__.vega12_get_enabled_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.cleanup_crit_edge, label %do.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #8
  br label %cleanup

do.end26:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %smc_features_low to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smc_features_low, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %smc_features_high to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smc_features_high, align 4
  %conv27 = zext i32 %5 to i64
  %shl28 = shl nuw i64 %conv27, 32
  %or = or i64 %shl28, %conv
  %6 = ptrtoint ptr %features_enabled to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %or, ptr %features_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end20, %if.then14.cleanup_crit_edge, %do.end, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end26 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ], [ -22, %do.end20 ], [ -22, %if.then14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_features_high) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_features_low) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_smu_init(ptr nocapture noundef %hwmgr) #0 align 64 {
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
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 240) #9
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
  %handle = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 4
  %mc_addr = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 2
  %table = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 3
  %call14 = call i32 @amdgpu_bo_create_kernel(ptr noundef %12, i32 noundef 980, i32 noundef 4096, i32 noundef 4, ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
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
  store i32 980, ptr %size, align 4
  %15 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwmgr, align 4
  %handle28 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 4
  %mc_addr32 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 2
  %table36 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 3
  %call37 = call i32 @amdgpu_bo_create_kernel(ptr noundef %16, i32 noundef 124, i32 noundef 4096, i32 noundef 4, ptr noundef %handle28, ptr noundef %mc_addr32, ptr noundef %table36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end17.err0_crit_edge

if.end17.err0_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err0

if.end40:                                         ; preds = %if.end17
  %arrayidx27 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx27, align 8
  %size48 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %size48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 124, ptr %size48, align 4
  %19 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwmgr, align 4
  %handle55 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5, i32 4
  %mc_addr59 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5, i32 2
  %table63 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5, i32 3
  %call64 = call i32 @amdgpu_bo_create_kernel(ptr noundef %20, i32 noundef 102400, i32 noundef 4096, i32 noundef 4, ptr noundef %handle55, ptr noundef %mc_addr59, ptr noundef %table63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end40.err1_crit_edge

if.end40.err1_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end67:                                         ; preds = %if.end40
  %arrayidx54 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx54, align 8
  %size75 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %size75 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 102400, ptr %size75, align 4
  %23 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hwmgr, align 4
  %handle81 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4, i32 4
  %mc_addr85 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4, i32 2
  %table89 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4, i32 3
  %call90 = call i32 @amdgpu_bo_create_kernel(ptr noundef %24, i32 noundef 136, i32 noundef 4096, i32 noundef 4, ptr noundef %handle81, ptr noundef %mc_addr85, ptr noundef %table89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end67.err2_crit_edge

if.end67.err2_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end93:                                         ; preds = %if.end67
  %arrayidx80 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx80, align 8
  %size101 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %size101 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 136, ptr %size101, align 4
  %27 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwmgr, align 4
  %handle106 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9, i32 4
  %mc_addr110 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9, i32 2
  %table114 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9, i32 3
  %call115 = call i32 @amdgpu_bo_create_kernel(ptr noundef %28, i32 noundef 28, i32 noundef 4096, i32 noundef 4, ptr noundef %handle106, ptr noundef %mc_addr110, ptr noundef %table114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end93.err3_crit_edge

if.end93.err3_crit_edge:                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %err3

if.end118:                                        ; preds = %if.end93
  %arrayidx105 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx105, align 8
  %size126 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %size126 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 28, ptr %size126, align 4
  %31 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwmgr, align 4
  %handle131 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6, i32 4
  %mc_addr135 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6, i32 2
  %table139 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6, i32 3
  %call140 = call i32 @amdgpu_bo_create_kernel(ptr noundef %32, i32 noundef 88, i32 noundef 4096, i32 noundef 4, ptr noundef %handle131, ptr noundef %mc_addr135, ptr noundef %table139) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %err4

if.end143:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx130 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %arrayidx130, align 8
  %size151 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %size151 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 88, ptr %size151, align 4
  br label %cleanup

err4:                                             ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  call void @amdgpu_bo_free_kernel(ptr noundef %handle106, ptr noundef %mc_addr110, ptr noundef %table114) #5
  br label %err3

err3:                                             ; preds = %err4, %if.end93.err3_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle81, ptr noundef %mc_addr85, ptr noundef %table89) #5
  br label %err2

err2:                                             ; preds = %err3, %if.end67.err2_crit_edge
  %35 = ptrtoint ptr %table63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %table63, align 8
  %tobool180.not = icmp eq ptr %36, null
  br i1 %tobool180.not, label %err2.err1_crit_edge, label %if.then181

err2.err1_crit_edge:                              ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.then181:                                       ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #7
  call void @amdgpu_bo_free_kernel(ptr noundef %handle55, ptr noundef %mc_addr59, ptr noundef %table63) #5
  br label %err1

err1:                                             ; preds = %if.then181, %err2.err1_crit_edge, %if.end40.err1_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle28, ptr noundef %mc_addr32, ptr noundef %table36) #5
  br label %err0

err0:                                             ; preds = %err1, %if.end17.err0_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  br label %free_backend

free_backend:                                     ; preds = %err0, %if.end6.free_backend_crit_edge
  %37 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smu_backend, align 4
  call void @kfree(ptr noundef %38) #5
  br label %cleanup

cleanup:                                          ; preds = %free_backend, %if.end143, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %free_backend ], [ 0, %if.end143 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_smu_fini(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end76_crit_edge, label %if.then

entry.if.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then:                                          ; preds = %entry
  %handle = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 4
  %mc_addr = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 2
  %table = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  %handle11 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 4
  %mc_addr15 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 2
  %table19 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle11, ptr noundef %mc_addr15, ptr noundef %table19) #5
  %table23 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %table23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table23, align 8
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.then.if.end_crit_edge, label %if.then25

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %handle29 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 5, i32 4
  %mc_addr33 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 5, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle29, ptr noundef %mc_addr33, ptr noundef %table23) #5
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.then.if.end_crit_edge
  %handle41 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 4, i32 4
  %mc_addr45 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 4, i32 2
  %table49 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 4, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle41, ptr noundef %mc_addr45, ptr noundef %table49) #5
  %handle53 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 9, i32 4
  %mc_addr57 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 9, i32 2
  %table61 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 9, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle53, ptr noundef %mc_addr57, ptr noundef %table61) #5
  %handle65 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 6, i32 4
  %mc_addr69 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 6, i32 2
  %table73 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 6, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle65, ptr noundef %mc_addr69, ptr noundef %table73) #5
  %4 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu_backend, align 4
  tail call void @kfree(ptr noundef %5) #5
  %6 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %smu_backend, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end, %entry.if.end76_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smu9_is_smc_ram_running(ptr noundef %hwmgr) #5
  br i1 %call, label %do.end6, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_start_smu._rs, ptr noundef nonnull @__func__.vega12_start_smu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #8
  br label %return

do.end6:                                          ; preds = %entry
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend.i, align 4
  %mc_addr.i = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mc_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %do.end6.return_crit_edge, label %if.then.i

do.end6.return_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.i:                                        ; preds = %do.end6
  %shr.i = lshr i64 %3, 32
  %conv.i = trunc i64 %shr.i to i32
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %conv.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mc_addr.i, align 8
  %conv13.i = trunc i64 %5 to i32
  %call14.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 19, i32 noundef %conv13.i, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.then8.i, %if.then.i.return_crit_edge, %do.end6.return_crit_edge, %do.end, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.return_crit_edge ], [ 0, %do.end6.return_crit_edge ], [ 0, %if.then.i.return_crit_edge ], [ 0, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_get_argument(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_send_msg_to_smc(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu9_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vega12_is_dpm_running(ptr noundef %hwmgr) #0 align 64 {
entry:
  %features_enabled = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features_enabled) #5
  %0 = ptrtoint ptr %features_enabled to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %features_enabled, align 8
  %call = call i32 @vega12_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef nonnull %features_enabled)
  %1 = ptrtoint ptr %features_enabled to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %features_enabled, align 8
  %and = and i64 %2, 783
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features_enabled) #5
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_smc_table_manager(ptr noundef %hwmgr, ptr nocapture noundef %table, i16 noundef zeroext %table_id, i1 noundef zeroext %rw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %conv.i = sext i16 %table_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %table_id)
  %cmp.i = icmp slt i16 %table_id, 10
  br i1 %rw, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %do.body9.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_from_smc._rs, ptr noundef nonnull @__func__.vega12_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %do.end.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #8
  br label %if.end

do.body9.i:                                       ; preds = %if.then
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend.i, align 4
  %arrayidx.i = getelementptr [10 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not.i = icmp eq i32 %5, 0
  br i1 %cmp11.not.i, label %if.then13.i, label %do.body26.i

if.then13.i:                                      ; preds = %do.body9.i
  %call14.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_from_smc._rs.24, ptr noundef nonnull @__func__.vega12_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.end_crit_edge, label %do.end19.i

if.then13.i.if.end_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end19.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #8
  br label %if.end

do.body26.i:                                      ; preds = %do.body9.i
  %size.i = getelementptr [10 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31.not.i = icmp eq i32 %7, 0
  br i1 %cmp31.not.i, label %if.then33.i, label %do.body46.i

if.then33.i:                                      ; preds = %do.body26.i
  %call34.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_from_smc._rs.28, ptr noundef nonnull @__func__.vega12_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.if.end_crit_edge, label %do.end39.i

if.then33.i.if.end_crit_edge:                     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end39.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31) #8
  br label %if.end

do.body46.i:                                      ; preds = %do.body26.i
  %mc_addr.i = getelementptr [10 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 2
  %8 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mc_addr.i, align 8
  %shr.i = lshr i64 %9, 32
  %conv52.i = trunc i64 %shr.i to i32
  %call53.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef %conv52.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp eq i32 %call53.i, 0
  br i1 %cmp54.i, label %do.body69.i, label %if.then56.i

if.then56.i:                                      ; preds = %do.body46.i
  %call57.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_from_smc._rs.32, ptr noundef nonnull @__func__.vega12_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then56.i.if.end_crit_edge, label %do.end62.i

if.then56.i.if.end_crit_edge:                     ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end62.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #7
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.35) #8
  br label %if.end

do.body69.i:                                      ; preds = %do.body46.i
  %10 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mc_addr.i, align 8
  %conv75.i = trunc i64 %11 to i32
  %call76.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 17, i32 noundef %conv75.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp eq i32 %call76.i, 0
  br i1 %cmp77.i, label %do.body92.i, label %if.then79.i

if.then79.i:                                      ; preds = %do.body69.i
  %call80.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_from_smc._rs.36, ptr noundef nonnull @__func__.vega12_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.then79.i.if.end_crit_edge, label %do.end85.i

if.then79.i.if.end_crit_edge:                     ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end85.i:                                       ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #7
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.39) #8
  br label %if.end

do.body92.i:                                      ; preds = %do.body69.i
  %call94.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 20, i32 noundef %conv.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %cmp95.i = icmp eq i32 %call94.i, 0
  br i1 %cmp95.i, label %do.end109.i, label %if.then97.i

if.then97.i:                                      ; preds = %do.body92.i
  %call98.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_from_smc._rs.40, ptr noundef nonnull @__func__.vega12_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.then97.i.if.end_crit_edge, label %do.end103.i

if.then97.i.if.end_crit_edge:                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end103.i:                                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #7
  %call105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43) #8
  br label %if.end

do.end109.i:                                      ; preds = %do.body92.i
  %asic_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs.i, align 4
  %invalidate_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %invalidate_hdp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %invalidate_hdp.i, align 4
  %tobool110.not.i = icmp eq ptr %15, null
  br i1 %tobool110.not.i, label %cond.false.i, label %do.end109.i.cond.end.i_crit_edge

do.end109.i.cond.end.i_crit_edge:                 ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 102, i32 1
  %16 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs.i, align 4
  %invalidate_hdp113.i = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %invalidate_hdp113.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %invalidate_hdp113.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %do.end109.i.cond.end.i_crit_edge
  %.sink.i = phi ptr [ %19, %cond.false.i ], [ %15, %do.end109.i.cond.end.i_crit_edge ]
  tail call void %.sink.i(ptr noundef %1, ptr noundef null) #5
  %table118.i = getelementptr [10 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 3
  %20 = ptrtoint ptr %table118.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %table118.i, align 8
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %24 = call ptr @memcpy(ptr %table, ptr %21, i32 %23)
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i, label %do.body9.i13, label %if.then.i9

if.then.i9:                                       ; preds = %if.else
  %call.i7 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_to_smc._rs, ptr noundef nonnull @__func__.vega12_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i8, label %if.then.i9.if.end_crit_edge, label %if.then.i9.cleanup.sink.split.i_crit_edge

if.then.i9.cleanup.sink.split.i_crit_edge:        ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then.i9.if.end_crit_edge:                      ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body9.i13:                                     ; preds = %if.else
  %smu_backend.i10 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %25 = ptrtoint ptr %smu_backend.i10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smu_backend.i10, align 4
  %arrayidx.i11 = getelementptr [10 x %struct.smu_table_entry], ptr %26, i32 0, i32 %conv.i
  %27 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp11.not.i12 = icmp eq i32 %28, 0
  br i1 %cmp11.not.i12, label %if.then13.i16, label %do.body26.i19

if.then13.i16:                                    ; preds = %do.body9.i13
  %call14.i14 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_to_smc._rs.44, ptr noundef nonnull @__func__.vega12_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i14)
  %tobool15.not.i15 = icmp eq i32 %call14.i14, 0
  br i1 %tobool15.not.i15, label %if.then13.i16.if.end_crit_edge, label %if.then13.i16.cleanup.sink.split.i_crit_edge

if.then13.i16.cleanup.sink.split.i_crit_edge:     ; preds = %if.then13.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then13.i16.if.end_crit_edge:                   ; preds = %if.then13.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body26.i19:                                    ; preds = %do.body9.i13
  %size.i17 = getelementptr [10 x %struct.smu_table_entry], ptr %26, i32 0, i32 %conv.i, i32 1
  %29 = ptrtoint ptr %size.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp31.not.i18 = icmp eq i32 %30, 0
  br i1 %cmp31.not.i18, label %if.then33.i22, label %do.end45.i

if.then33.i22:                                    ; preds = %do.body26.i19
  %call34.i20 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_to_smc._rs.47, ptr noundef nonnull @__func__.vega12_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i20)
  %tobool35.not.i21 = icmp eq i32 %call34.i20, 0
  br i1 %tobool35.not.i21, label %if.then33.i22.if.end_crit_edge, label %if.then33.i22.cleanup.sink.split.i_crit_edge

if.then33.i22.cleanup.sink.split.i_crit_edge:     ; preds = %if.then33.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then33.i22.if.end_crit_edge:                   ; preds = %if.then33.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end45.i:                                       ; preds = %do.body26.i19
  %table50.i = getelementptr [10 x %struct.smu_table_entry], ptr %26, i32 0, i32 %conv.i, i32 3
  %31 = ptrtoint ptr %table50.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %table50.i, align 8
  %33 = call ptr @memcpy(ptr %32, ptr %table, i32 %30)
  %asic_funcs.i23 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %asic_funcs.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asic_funcs.i23, align 4
  %flush_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %flush_hdp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %flush_hdp.i, align 4
  %tobool56.not.i = icmp eq ptr %37, null
  br i1 %tobool56.not.i, label %cond.false.i25, label %do.end45.i.do.body60.i_crit_edge

do.end45.i.do.body60.i_crit_edge:                 ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60.i

cond.false.i25:                                   ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %funcs.i24 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 102, i32 1
  %38 = ptrtoint ptr %funcs.i24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs.i24, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  br label %do.body60.i

do.body60.i:                                      ; preds = %cond.false.i25, %do.end45.i.do.body60.i_crit_edge
  %.sink.i26 = phi ptr [ %41, %cond.false.i25 ], [ %37, %do.end45.i.do.body60.i_crit_edge ]
  tail call void %.sink.i26(ptr noundef %1, ptr noundef null) #5
  %mc_addr.i27 = getelementptr [10 x %struct.smu_table_entry], ptr %26, i32 0, i32 %conv.i, i32 2
  %42 = ptrtoint ptr %mc_addr.i27 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %mc_addr.i27, align 8
  %shr.i28 = lshr i64 %43, 32
  %conv66.i = trunc i64 %shr.i28 to i32
  %call67.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef %conv66.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %cmp68.i = icmp eq i32 %call67.i, 0
  br i1 %cmp68.i, label %do.body83.i, label %if.then70.i

if.then70.i:                                      ; preds = %do.body60.i
  %call71.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_to_smc._rs.50, ptr noundef nonnull @__func__.vega12_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.then70.i.if.end_crit_edge, label %if.then70.i.cleanup.sink.split.i_crit_edge

if.then70.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then70.i.if.end_crit_edge:                     ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body83.i:                                      ; preds = %do.body60.i
  %44 = ptrtoint ptr %mc_addr.i27 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %mc_addr.i27, align 8
  %conv89.i = trunc i64 %45 to i32
  %call90.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 17, i32 noundef %conv89.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.i = icmp eq i32 %call90.i, 0
  br i1 %cmp91.i, label %do.body106.i, label %if.then93.i

if.then93.i:                                      ; preds = %do.body83.i
  %call94.i29 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_to_smc._rs.54, ptr noundef nonnull @__func__.vega12_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i29)
  %tobool95.not.i = icmp eq i32 %call94.i29, 0
  br i1 %tobool95.not.i, label %if.then93.i.if.end_crit_edge, label %if.then93.i.cleanup.sink.split.i_crit_edge

if.then93.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then93.i.if.end_crit_edge:                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body106.i:                                     ; preds = %do.body83.i
  %call108.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 21, i32 noundef %conv.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %cmp109.i = icmp eq i32 %call108.i, 0
  br i1 %cmp109.i, label %do.body106.i.if.end_crit_edge, label %if.then111.i

do.body106.i.if.end_crit_edge:                    ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then111.i:                                     ; preds = %do.body106.i
  %call112.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_copy_table_to_smc._rs.58, ptr noundef nonnull @__func__.vega12_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.then111.i.if.end_crit_edge, label %if.then111.i.cleanup.sink.split.i_crit_edge

if.then111.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then111.i.if.end_crit_edge:                    ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.sink.split.i:                             ; preds = %if.then111.i.cleanup.sink.split.i_crit_edge, %if.then93.i.cleanup.sink.split.i_crit_edge, %if.then70.i.cleanup.sink.split.i_crit_edge, %if.then33.i22.cleanup.sink.split.i_crit_edge, %if.then13.i16.cleanup.sink.split.i_crit_edge, %if.then.i9.cleanup.sink.split.i_crit_edge
  %.str.61.sink.i = phi ptr [ @.str.23, %if.then.i9.cleanup.sink.split.i_crit_edge ], [ @.str.27, %if.then13.i16.cleanup.sink.split.i_crit_edge ], [ @.str.31, %if.then33.i22.cleanup.sink.split.i_crit_edge ], [ @.str.53, %if.then70.i.cleanup.sink.split.i_crit_edge ], [ @.str.57, %if.then93.i.cleanup.sink.split.i_crit_edge ], [ @.str.61, %if.then111.i.cleanup.sink.split.i_crit_edge ]
  %call119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.61.sink.i) #8
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %if.then111.i.if.end_crit_edge, %do.body106.i.if.end_crit_edge, %if.then93.i.if.end_crit_edge, %if.then70.i.if.end_crit_edge, %if.then33.i22.if.end_crit_edge, %if.then13.i16.if.end_crit_edge, %if.then.i9.if.end_crit_edge, %cond.end.i, %do.end103.i, %if.then97.i.if.end_crit_edge, %do.end85.i, %if.then79.i.if.end_crit_edge, %do.end62.i, %if.then56.i.if.end_crit_edge, %do.end39.i, %if.then33.i.if.end_crit_edge, %do.end19.i, %if.then13.i.if.end_crit_edge, %do.end.i, %if.then.i.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %cond.end.i ], [ -22, %do.end.i ], [ -22, %if.then.i.if.end_crit_edge ], [ -22, %do.end19.i ], [ -22, %if.then13.i.if.end_crit_edge ], [ -22, %do.end39.i ], [ -22, %if.then33.i.if.end_crit_edge ], [ -22, %do.end62.i ], [ -22, %if.then56.i.if.end_crit_edge ], [ -22, %do.end85.i ], [ -22, %if.then79.i.if.end_crit_edge ], [ -22, %do.end103.i ], [ -22, %if.then97.i.if.end_crit_edge ], [ -22, %if.then.i9.if.end_crit_edge ], [ -22, %if.then13.i16.if.end_crit_edge ], [ -22, %if.then33.i22.if.end_crit_edge ], [ -22, %if.then70.i.if.end_crit_edge ], [ -22, %if.then93.i.if.end_crit_edge ], [ -22, %if.then111.i.if.end_crit_edge ], [ 0, %do.body106.i.if.end_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu9_is_smc_ram_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 134, i32 3}
!2 = !{ptr @vega12_enable_smc_features._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.vega12_enable_smc_features, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vega12_enable_smc_features._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vega12_enable_smc_features._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vega12_enable_smc_features._rs.4, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 138, i32 3}
!11 = !{ptr @vega12_enable_smc_features._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @vega12_enable_smc_features._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vega12_enable_smc_features._rs.8, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 143, i32 3}
!16 = !{ptr @vega12_enable_smc_features._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vega12_enable_smc_features._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vega12_enable_smc_features._rs.12, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 147, i32 3}
!21 = !{ptr @vega12_enable_smc_features._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @vega12_enable_smc_features._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vega12_get_enabled_smc_features._rs, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 164, i32 2}
!26 = !{ptr @__func__.vega12_get_enabled_smc_features, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vega12_get_enabled_smc_features._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @vega12_get_enabled_smc_features._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vega12_get_enabled_smc_features._rs.17, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 170, i32 2}
!32 = !{ptr @vega12_get_enabled_smc_features._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vega12_get_enabled_smc_features._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 403, i32 10}
!37 = !{ptr @vega12_smu_funcs, !38, !"vega12_smu_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 402, i32 29}
!39 = !{ptr @vega12_start_smu._rs, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 380, i32 2}
!41 = !{ptr @__func__.vega12_start_smu, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vega12_start_smu._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @vega12_start_smu._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vega12_copy_table_from_smc._rs, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 47, i32 2}
!47 = !{ptr @__func__.vega12_copy_table_from_smc, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @vega12_copy_table_from_smc._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @vega12_copy_table_from_smc._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @vega12_copy_table_from_smc._rs.24, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 49, i32 2}
!53 = !{ptr @vega12_copy_table_from_smc._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @vega12_copy_table_from_smc._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vega12_copy_table_from_smc._rs.28, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 51, i32 2}
!58 = !{ptr @vega12_copy_table_from_smc._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @vega12_copy_table_from_smc._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vega12_copy_table_from_smc._rs.32, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 53, i32 2}
!63 = !{ptr @vega12_copy_table_from_smc._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @vega12_copy_table_from_smc._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vega12_copy_table_from_smc._rs.36, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 58, i32 2}
!68 = !{ptr @vega12_copy_table_from_smc._entry.37, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @vega12_copy_table_from_smc._entry_ptr.38, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vega12_copy_table_from_smc._rs.40, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 64, i32 2}
!73 = !{ptr @vega12_copy_table_from_smc._entry.41, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @vega12_copy_table_from_smc._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vega12_copy_table_to_smc._rs, !77, !"_rs", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 91, i32 2}
!78 = !{ptr @__func__.vega12_copy_table_to_smc, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vega12_copy_table_to_smc._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @vega12_copy_table_to_smc._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @vega12_copy_table_to_smc._rs.44, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 93, i32 2}
!83 = !{ptr @vega12_copy_table_to_smc._entry.45, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @vega12_copy_table_to_smc._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @vega12_copy_table_to_smc._rs.47, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 95, i32 2}
!87 = !{ptr @vega12_copy_table_to_smc._entry.48, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @vega12_copy_table_to_smc._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @vega12_copy_table_to_smc._rs.50, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 103, i32 2}
!91 = !{ptr @vega12_copy_table_to_smc._entry.51, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @vega12_copy_table_to_smc._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @vega12_copy_table_to_smc._rs.54, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 109, i32 2}
!96 = !{ptr @vega12_copy_table_to_smc._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @vega12_copy_table_to_smc._entry_ptr.56, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @vega12_copy_table_to_smc._rs.58, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega12_smumgr.c", i32 115, i32 2}
!101 = !{ptr @vega12_copy_table_to_smc._entry.59, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @vega12_copy_table_to_smc._entry_ptr.60, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.61, !100, !"<string literal>", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
