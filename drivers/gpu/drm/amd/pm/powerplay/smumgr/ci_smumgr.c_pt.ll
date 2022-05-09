; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/ci_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ci_pt_defaults = type { i8, i8, i8, i8, i8, i8, i32, i32, [15 x i16], [15 x i16] }
%struct.atomic_t = type { i32 }
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
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.99, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ci_smumgr = type { i32, i32, i32, i32, i32, i32, %struct.SMU7_Discrete_DpmTable, %struct.SMU7_Discrete_PmFuses, ptr, %struct.SMU7_Discrete_MCRegisters, %struct.ci_mc_reg_table }
%struct.SMU7_Discrete_DpmTable = type { %struct.SMU7_PIDController, %struct.SMU7_PIDController, %struct.SMU7_PIDController, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.SMU7_Discrete_VoltageLevel], [4 x %struct.SMU7_Discrete_VoltageLevel], [4 x %struct.SMU7_Discrete_VoltageLevel], i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], [8 x %struct.SMU7_Discrete_GraphicsLevel], %struct.SMU7_Discrete_MemoryLevel, [6 x %struct.SMU7_Discrete_MemoryLevel], [8 x %struct.SMU7_Discrete_LinkLevel], %struct.SMU7_Discrete_ACPILevel, [8 x %struct.SMU7_Discrete_UvdLevel], [8 x %struct.SMU7_Discrete_ExtClkLevel], [8 x %struct.SMU7_Discrete_ExtClkLevel], [8 x %struct.SMU7_Discrete_ExtClkLevel], %struct.SMU7_Discrete_Ulv, i32, [32 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [5 x [3 x [1 x i16]]], [5 x [3 x [1 x i16]]], i8, i8, i8, i8, i16, i16, i16, i16, i32, i32 }
%struct.SMU7_PIDController = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMU7_Discrete_VoltageLevel = type { i16, i16, i16, i8, i8 }
%struct.SMU7_Discrete_GraphicsLevel = type { i32, i32, i32, i32, [2 x i8], i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.SMU7_Discrete_MemoryLevel = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMU7_Discrete_LinkLevel = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.SMU7_Discrete_ACPILevel = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SMU7_Discrete_UvdLevel = type { i32, i32, i16, i8, i8, i8, [3 x i8] }
%struct.SMU7_Discrete_ExtClkLevel = type { i32, i16, i8, i8 }
%struct.SMU7_Discrete_Ulv = type { i32, i32, i16, i8, i8, i32 }
%struct.SMU7_Discrete_PmFuses = type { [8 x i8], [8 x i8], [8 x i8], i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i16, i16, i16, [16 x i8], i8, i8, [2 x i8], i16, i16 }
%struct.SMU7_Discrete_MCRegisters = type { i8, [3 x i8], [16 x %struct.SMU7_Discrete_MCRegisterAddress], [6 x %struct.SMU7_Discrete_MCRegisterSet] }
%struct.SMU7_Discrete_MCRegisterAddress = type { i16, i16 }
%struct.SMU7_Discrete_MCRegisterSet = type { [16 x i32] }
%struct.ci_mc_reg_table = type { i8, i8, i16, [16 x %struct.ci_mc_reg_entry], [16 x %struct.SMU7_Discrete_MCRegisterAddress] }
%struct.ci_mc_reg_entry = type { i32, [16 x i32] }
%struct.smu7_hwmgr = type { %struct.smu7_dpm_table, %struct.smu7_dpm_table, %struct.smu7_odn_dpm_table, %struct.smu7_mclk_latency_table, [8 x i32], i32, i32, i32, i32, i32, i32, %struct.smu7_clock_registers, i8, i16, i8, i16, i16, i32, i32, i32, %struct.smu7_leakage_voltage, %struct.smu7_leakage_voltage, %struct.smu7_leakage_voltage, i32, i32, i32, i16, i16, i16, i16, i8, %struct.smu7_vbios_boot_state, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table, %struct.pp_atomctrl_voltage_table, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, %struct.smu7_display_timing, %struct.smu7_thermal_temperature_setting, %struct.smu7_dpmlevel_enable_mask, i32, i32, i32, i32, i32, %struct.smu7_pcie_perf_range, %struct.smu7_pcie_perf_range, %struct.smu7_pcie_perf_range, %struct.smu7_pcie_perf_range, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i8, i32, i32, i16, i16, i32, %struct.profile_mode_setting, i32, i32, i8, %struct._AtomCtrl_HiLoLeakageOffsetTable, %struct._AtomCtrl_EDCLeakgeTable }
%struct.smu7_dpm_table = type { %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table }
%struct.smu7_single_dpm_table = type { i32, [8 x %struct.smu7_dpm_level] }
%struct.smu7_dpm_level = type { i8, i32, i32 }
%struct.smu7_odn_dpm_table = type { %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels, %struct.smu7_odn_clock_voltage_dependency_table, %struct.smu7_odn_clock_voltage_dependency_table, i32, i32, i32 }
%struct.phm_odn_clock_levels = type { i32, i32, i32, i32, [8 x %struct.phm_odn_performance_level] }
%struct.phm_odn_performance_level = type { i32, i32, i8 }
%struct.smu7_odn_clock_voltage_dependency_table = type { i32, [8 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_clock_voltage_dependency_record = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i32 }
%struct.smu7_mclk_latency_table = type { i32, [8 x %struct.smu7_mclk_latency_entries] }
%struct.smu7_mclk_latency_entries = type { i32, i32 }
%struct.smu7_clock_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu7_leakage_voltage = type { i16, [8 x i16], [8 x i16] }
%struct.smu7_vbios_boot_state = type { i16, i16, i16, i16, i32, i32, i16, i16 }
%struct.pp_atomctrl_voltage_table = type { i32, i32, i32, [32 x %struct.pp_atomctrl_voltage_table_entry] }
%struct.pp_atomctrl_voltage_table_entry = type { i16, i32 }
%struct.smu7_display_timing = type { i32, i32, i32 }
%struct.smu7_thermal_temperature_setting = type { i32, i32, i32 }
%struct.smu7_dpmlevel_enable_mask = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.smu7_pcie_perf_range = type { i16, i16 }
%struct.profile_mode_setting = type { i8, i8, i8, i16, i8, i8, i8, i16 }
%struct._AtomCtrl_HiLoLeakageOffsetTable = type { i16, i16, i16 }
%struct._AtomCtrl_EDCLeakgeTable = type { [24 x i32] }
%struct.phm_uvd_clock_voltage_dependency_table = type { i8, [0 x %struct.phm_uvd_clock_voltage_dependency_record] }
%struct.phm_uvd_clock_voltage_dependency_record = type { i32, i32, i32 }
%struct.phm_vce_clock_voltage_dependency_table = type { i8, [0 x %struct.phm_vce_clock_voltage_dependency_record] }
%struct.phm_vce_clock_voltage_dependency_record = type { i32, i32, i32 }
%struct.cgs_firmware_info = type { i16, i16, i16, i32, i64, i32, ptr, i8 }
%struct.SMU7_Discrete_FanTable = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i8, i8 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_atomctrl_clock_dividers_vi = type { i32, i32, %union.pp_atomctrl_tcipll_fb_divider, i8, i8, i8 }
%union.pp_atomctrl_tcipll_fb_divider = type { %struct.anon.115 }
%struct.anon.115 = type { i32 }
%struct.pp_atomctrl_gpio_pin_assignment = type { i16, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }
%struct.phm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_clock_voltage_dependency_record] }
%struct.phm_clock_voltage_dependency_record = type { i32, i32 }
%struct.pp_atomctrl_internal_ss_info = type { i32, i32, i32 }
%struct.phm_phase_shedding_limits_table = type { i32, [0 x %struct.phm_phase_shedding_limits_record] }
%struct.phm_phase_shedding_limits_record = type { i32, i32, i32 }
%struct.pp_atomctrl_memory_clock_param = type { %union.pp_atomctrl_s_mpll_fb_divider, i32, i32, i32, i32, i32, i32, i32 }
%union.pp_atomctrl_s_mpll_fb_divider = type { %struct.anon.116 }
%struct.anon.116 = type { i32 }
%struct.pp_atomctrl_mc_reg_table = type { i8, i8, [20 x %struct.pp_atomctrl_mc_reg_entry], [32 x %struct.pp_atomctrl_mc_register_address] }
%struct.pp_atomctrl_mc_reg_entry = type { i32, [32 x i32] }
%struct.pp_atomctrl_mc_register_address = type { i16, i8 }
%struct.SMU7_Discrete_MCArbDramTimingTable = type { [8 x [6 x %struct.SMU7_Discrete_MCArbDramTimingTableEntry]] }
%struct.SMU7_Discrete_MCArbDramTimingTableEntry = type { i32, i32, i8, [3 x i8] }
%struct.phm_acp_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_acp_clock_voltage_dependency_record] }
%struct.phm_acp_clock_voltage_dependency_record = type { i32, i32 }
%struct.phm_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.phm_ppm_table = type { i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phm_cac_leakage_table = type { i32, [0 x %union.phm_cac_leakage_record] }
%union.phm_cac_leakage_record = type { %struct.anon }
%struct.anon = type { i16, i32 }
%struct.anon.1 = type { i16, i16, i16 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ci_smu\00", [25 x i8] zeroinitializer }, align 32
@ci_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str, ptr @ci_smu_init, ptr @ci_smu_fini, ptr @ci_start_smu, ptr null, ptr null, ptr null, ptr @smu7_get_argument, ptr @ci_send_msg_to_smc, ptr @ci_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr @ci_update_smc_table, ptr @ci_process_firmware_header, ptr @ci_update_sclk_threshold, ptr @ci_thermal_setup_fan_table, ptr null, ptr @ci_init_smc_table, ptr @ci_populate_all_graphic_levels, ptr @ci_populate_all_memory_levels, ptr @ci_initialize_mc_reg_table, ptr @ci_get_offsetof, ptr @ci_get_mac_definition, ptr @ci_is_dpm_running, ptr null, ptr @ci_update_dpm_settings, ptr null, ptr @ci_stop_smc }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ci_send_msg_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016amdgpu: [powerplay] \0A failed to send message %x ret is %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ci_send_msg_to_smc\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c\00", [34 x i8] zeroinitializer }, align 32
@ci_send_msg_to_smc._entry_ptr = internal global ptr @ci_send_msg_to_smc._entry, section ".printk_index", align 4
@ci_upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 2353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016amdgpu: [powerplay] smc is running, no need to load smc firmware\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ci_upload_firmware\00", [45 x i8] zeroinitializer }, align 32
@ci_upload_firmware._entry_ptr = internal global ptr @ci_upload_firmware._entry, section ".printk_index", align 4
@ci_load_smc_ucode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 2328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013amdgpu: [powerplay] SMC address is beyond the SMC RAM area.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ci_load_smc_ucode\00", [46 x i8] zeroinitializer }, align 32
@ci_load_smc_ucode._entry_ptr = internal global ptr @ci_load_smc_ucode._entry, section ".printk_index", align 4
@ci_load_smc_ucode._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 2343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013amdgpu: [powerplay] SMC size must be divisible by 4\0A\00", [41 x i8] zeroinitializer }, align 32
@ci_load_smc_ucode._entry_ptr.10 = internal global ptr @ci_load_smc_ucode._entry.8, section ".printk_index", align 4
@ci_set_smc_sram_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013amdgpu: [powerplay] smc_addr invalid \0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ci_set_smc_sram_address\00", [40 x i8] zeroinitializer }, align 32
@ci_set_smc_sram_address._entry_ptr = internal global ptr @ci_set_smc_sram_address._entry, section ".printk_index", align 4
@ci_update_sclk_threshold._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ci_update_sclk_threshold = private unnamed_addr constant [25 x i8] c"ci_update_sclk_threshold\00", align 1
@ci_update_sclk_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_update_sclk_threshold, ptr @.str.3, i32 2238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@ci_update_sclk_threshold._entry_ptr = internal global ptr @ci_update_sclk_threshold._entry, section ".printk_index", align 4
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to upload MC reg table!\00", [33 x i8] zeroinitializer }, align 32
@ci_update_sclk_threshold._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_update_sclk_threshold._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_update_sclk_threshold, ptr @.str.3, i32 2243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_update_sclk_threshold._entry_ptr.18 = internal global ptr @ci_update_sclk_threshold._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to program memory timing parameters!\00", [52 x i8] zeroinitializer }, align 32
@ci_copy_bytes_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013amdgpu: [powerplay] smc_start_address invalid \0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ci_copy_bytes_to_smc\00", [43 x i8] zeroinitializer }, align 32
@ci_copy_bytes_to_smc._entry_ptr = internal global ptr @ci_copy_bytes_to_smc._entry, section ".printk_index", align 4
@ci_populate_memory_timing_parameters._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_memory_timing_parameters = private unnamed_addr constant [37 x i8] c"ci_populate_memory_timing_parameters\00", align 1
@ci_populate_memory_timing_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_memory_timing_parameters, ptr @.str.3, i32 1636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_memory_timing_parameters._entry_ptr = internal global ptr @ci_populate_memory_timing_parameters._entry, section ".printk_index", align 4
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error calling VBIOS to set DRAM_TIMING.\00", [56 x i8] zeroinitializer }, align 32
@ci_init_smc_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_init_smc_table = private unnamed_addr constant [18 x i8] c"ci_init_smc_table\00", align 1
@ci_init_smc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 1971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr = internal global ptr @ci_init_smc_table._entry, section ".printk_index", align 4
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize ULV state!\00", [32 x i8] zeroinitializer }, align 32
@ci_init_smc_table._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.26 = internal global ptr @ci_init_smc_table._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialize Graphics Level!\00", [59 x i8] zeroinitializer }, align 32
@ci_init_smc_table._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 1983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.30 = internal global ptr @ci_init_smc_table._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize Memory Level!\00", [61 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 1987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.34 = internal global ptr @ci_init_smc_table._entry.33, section ".printk_index", align 4
@ci_init_smc_table._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 1991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.38 = internal global ptr @ci_init_smc_table._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize ACPI Level!\00", [63 x i8] zeroinitializer }, align 32
@ci_init_smc_table._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 1995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.42 = internal global ptr @ci_init_smc_table._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize VCE Level!\00", [32 x i8] zeroinitializer }, align 32
@ci_init_smc_table._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 1999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.46 = internal global ptr @ci_init_smc_table._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize ACP Level!\00", [32 x i8] zeroinitializer }, align 32
@ci_init_smc_table._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.50 = internal global ptr @ci_init_smc_table._entry.49, section ".printk_index", align 4
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to Write ARB settings for the initial state.\00", [44 x i8] zeroinitializer }, align 32
@ci_init_smc_table._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.54 = internal global ptr @ci_init_smc_table._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize UVD Level!\00", [32 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.58 = internal global ptr @ci_init_smc_table._entry.57, section ".printk_index", align 4
@ci_init_smc_table._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.62 = internal global ptr @ci_init_smc_table._entry.61, section ".printk_index", align 4
@ci_init_smc_table._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.66 = internal global ptr @ci_init_smc_table._entry.65, section ".printk_index", align 4
@ci_init_smc_table._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.70 = internal global ptr @ci_init_smc_table._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"There must be 1 or more PCIE levels defined in PPTable.\00", [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.74 = internal global ptr @ci_init_smc_table._entry.73, section ".printk_index", align 4
@ci_init_smc_table._rs.76 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.78 = internal global ptr @ci_init_smc_table._entry.77, section ".printk_index", align 4
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to upload dpm data to SMC memory!\00", [55 x i8] zeroinitializer }, align 32
@ci_init_smc_table._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.82 = internal global ptr @ci_init_smc_table._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to populate initialize MC Reg table!\00", [52 x i8] zeroinitializer }, align 32
@ci_init_smc_table._rs.84 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_init_smc_table, ptr @.str.3, i32 2117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_init_smc_table._entry_ptr.86 = internal global ptr @ci_init_smc_table._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to  populate PM fuses to SMC memory!\00", [52 x i8] zeroinitializer }, align 32
@defaults_hawaii_pro = internal constant { %struct.ci_pt_defaults, [52 x i8] } { %struct.ci_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 20, i32 0, i32 413794, [15 x i16] [i16 46, i16 0, i16 0, i16 136, i16 0, i16 0, i16 114, i16 96, i16 81, i16 167, i16 121, i16 107, i16 144, i16 189, i16 121], [15 x i16] [i16 535, i16 535, i16 535, i16 578, i16 578, i16 578, i16 617, i16 617, i16 617, i16 673, i16 673, i16 673, i16 713, i16 713, i16 713] }, [52 x i8] zeroinitializer }, align 32
@defaults_hawaii_xt = internal constant { %struct.ci_pt_defaults, [52 x i8] } { %struct.ci_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 20, i32 0, i32 720896, [15 x i16] [i16 46, i16 0, i16 0, i16 136, i16 0, i16 0, i16 114, i16 96, i16 81, i16 167, i16 121, i16 107, i16 144, i16 189, i16 121], [15 x i16] [i16 535, i16 535, i16 535, i16 578, i16 578, i16 578, i16 617, i16 617, i16 617, i16 673, i16 673, i16 673, i16 713, i16 713, i16 713] }, [52 x i8] zeroinitializer }, align 32
@defaults_saturn_xt = internal constant { %struct.ci_pt_defaults, [52 x i8] } { %struct.ci_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 55, i32 0, i32 458752, [15 x i16] [i16 140, i16 583, i16 585, i16 166, i16 128, i16 129, i16 139, i16 137, i16 134, i16 201, i16 202, i16 201, i16 77, i16 77, i16 77], [15 x i16] [i16 391, i16 391, i16 391, i16 455, i16 455, i16 455, i16 528, i16 528, i16 528, i16 614, i16 614, i16 614, i16 713, i16 713, i16 713] }, [52 x i8] zeroinitializer }, align 32
@defaults_bonaire_xt = internal constant { %struct.ci_pt_defaults, [52 x i8] } { %struct.ci_pt_defaults { i8 1, i8 15, i8 -3, i8 25, i8 5, i8 45, i32 0, i32 720896, [15 x i16] [i16 121, i16 595, i16 605, i16 174, i16 114, i16 128, i16 131, i16 134, i16 111, i16 200, i16 201, i16 201, i16 47, i16 77, i16 97], [15 x i16] [i16 380, i16 370, i16 384, i16 444, i16 435, i16 445, i16 518, i16 512, i16 515, i16 605, i16 602, i16 597, i16 707, i16 709, i16 692] }, [52 x i8] zeroinitializer }, align 32
@__func__.ci_populate_smc_voltage_tables = private unnamed_addr constant [31 x i8] c"ci_populate_smc_voltage_tables\00", align 1
@ci_populate_smc_voltage_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_voltage_tables, ptr @.str.3, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_voltage_tables._entry_ptr = internal global ptr @ci_populate_smc_voltage_tables._entry, section ".printk_index", align 4
@ci_populate_smc_voltage_tables._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_voltage_tables, ptr @.str.3, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_voltage_tables._entry_ptr.91 = internal global ptr @ci_populate_smc_voltage_tables._entry.90, section ".printk_index", align 4
@ci_populate_smc_voltage_tables._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_voltage_tables, ptr @.str.3, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_voltage_tables._entry_ptr.95 = internal global ptr @ci_populate_smc_voltage_tables._entry.94, section ".printk_index", align 4
@__func__.ci_populate_smc_vddc_table = private unnamed_addr constant [27 x i8] c"ci_populate_smc_vddc_table\00", align 1
@ci_populate_smc_vddc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_vddc_table, ptr @.str.3, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_vddc_table._entry_ptr = internal global ptr @ci_populate_smc_vddc_table._entry, section ".printk_index", align 4
@ci_get_std_voltage_value_sidd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_get_std_voltage_value_sidd = private unnamed_addr constant [30 x i8] c"ci_get_std_voltage_value_sidd\00", align 1
@ci_get_std_voltage_value_sidd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_get_std_voltage_value_sidd, ptr @.str.3, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_get_std_voltage_value_sidd._entry_ptr = internal global ptr @ci_get_std_voltage_value_sidd._entry, section ".printk_index", align 4
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"The SCLK/VDDC Dependency Table does not exist.\0A\00", [48 x i8] zeroinitializer }, align 32
@ci_get_std_voltage_value_sidd._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @__func__.ci_get_std_voltage_value_sidd, ptr @.str.3, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014amdgpu: [powerplay] CAC Leakage Table does not exist, using vddc.\0A\00", [59 x i8] zeroinitializer }, align 32
@ci_get_std_voltage_value_sidd._entry_ptr.101 = internal global ptr @ci_get_std_voltage_value_sidd._entry.99, section ".printk_index", align 4
@ci_get_std_voltage_value_sidd._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @__func__.ci_get_std_voltage_value_sidd, ptr @.str.3, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\014amdgpu: [powerplay] Index from SCLK/VDDC Dependency Table exceeds the CAC Leakage Table index, using maximum index from CAC table.\0A\00", [58 x i8] zeroinitializer }, align 32
@ci_get_std_voltage_value_sidd._entry_ptr.104 = internal global ptr @ci_get_std_voltage_value_sidd._entry.102, section ".printk_index", align 4
@ci_get_std_voltage_value_sidd._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @__func__.ci_get_std_voltage_value_sidd, ptr @.str.3, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"\014amdgpu: [powerplay] Index from SCLK/VDDC Dependency Table exceeds the CAC Leakage Table index in second look up, using maximum index from CAC table.\00", [41 x i8] zeroinitializer }, align 32
@ci_get_std_voltage_value_sidd._entry_ptr.107 = internal global ptr @ci_get_std_voltage_value_sidd._entry.105, section ".printk_index", align 4
@ci_get_std_voltage_value_sidd._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @__func__.ci_get_std_voltage_value_sidd, ptr @.str.3, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014amdgpu: [powerplay] Unable to get std_vddc from SCLK/VDDC Dependency Table, using vddc.\0A\00", [37 x i8] zeroinitializer }, align 32
@ci_get_std_voltage_value_sidd._entry_ptr.110 = internal global ptr @ci_get_std_voltage_value_sidd._entry.108, section ".printk_index", align 4
@__func__.ci_populate_smc_vdd_ci_table = private unnamed_addr constant [29 x i8] c"ci_populate_smc_vdd_ci_table\00", align 1
@ci_populate_smc_vdd_ci_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_vdd_ci_table, ptr @.str.3, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_vdd_ci_table._entry_ptr = internal global ptr @ci_populate_smc_vdd_ci_table._entry, section ".printk_index", align 4
@__func__.ci_populate_smc_mvdd_table = private unnamed_addr constant [27 x i8] c"ci_populate_smc_mvdd_table\00", align 1
@ci_populate_smc_mvdd_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_mvdd_table, ptr @.str.3, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_mvdd_table._entry_ptr = internal global ptr @ci_populate_smc_mvdd_table._entry, section ".printk_index", align 4
@ci_populate_ulv_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_ulv_level = private unnamed_addr constant [22 x i8] c"ci_populate_ulv_level\00", align 1
@ci_populate_ulv_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_ulv_level, ptr @.str.3, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_ulv_level._entry_ptr = internal global ptr @ci_populate_ulv_level._entry, section ".printk_index", align 4
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can not get ULV voltage value\00", [34 x i8] zeroinitializer }, align 32
@ci_populate_smc_acpi_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_smc_acpi_level = private unnamed_addr constant [27 x i8] c"ci_populate_smc_acpi_level\00", align 1
@ci_populate_smc_acpi_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_acpi_level, ptr @.str.3, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_acpi_level._entry_ptr = internal global ptr @ci_populate_smc_acpi_level._entry, section ".printk_index", align 4
@.str.114 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error retrieving Engine Clock dividers from VBIOS.\00", [45 x i8] zeroinitializer }, align 32
@ci_populate_mvdd_value._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_mvdd_value = private unnamed_addr constant [23 x i8] c"ci_populate_mvdd_value\00", align 1
@ci_populate_mvdd_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_mvdd_value, ptr @.str.3, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_mvdd_value._entry_ptr = internal global ptr @ci_populate_mvdd_value._entry, section ".printk_index", align 4
@.str.115 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MVDD Voltage is outside the supported range.\00", [51 x i8] zeroinitializer }, align 32
@ci_populate_smc_vce_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_smc_vce_level = private unnamed_addr constant [26 x i8] c"ci_populate_smc_vce_level\00", align 1
@ci_populate_smc_vce_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_vce_level, ptr @.str.3, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_vce_level._entry_ptr = internal global ptr @ci_populate_smc_vce_level._entry, section ".printk_index", align 4
@.str.116 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can not find divide id for VCE engine clock\00", [52 x i8] zeroinitializer }, align 32
@ci_populate_smc_acp_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_smc_acp_level = private unnamed_addr constant [26 x i8] c"ci_populate_smc_acp_level\00", align 1
@ci_populate_smc_acp_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_acp_level, ptr @.str.3, i32 1610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_acp_level._entry_ptr = internal global ptr @ci_populate_smc_acp_level._entry, section ".printk_index", align 4
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can not find divide id for engine clock\00", [56 x i8] zeroinitializer }, align 32
@ci_populate_smc_uvd_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_smc_uvd_level = private unnamed_addr constant [26 x i8] c"ci_populate_smc_uvd_level\00", align 1
@ci_populate_smc_uvd_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_uvd_level, ptr @.str.3, i32 1540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_uvd_level._entry_ptr = internal global ptr @ci_populate_smc_uvd_level._entry, section ".printk_index", align 4
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Vclk clock\00", [58 x i8] zeroinitializer }, align 32
@ci_populate_smc_uvd_level._rs.119 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_populate_smc_uvd_level._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_smc_uvd_level, ptr @.str.3, i32 1547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_smc_uvd_level._entry_ptr.121 = internal global ptr @ci_populate_smc_uvd_level._entry.120, section ".printk_index", align 4
@.str.122 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can not find divide id for Dclk clock\00", [58 x i8] zeroinitializer }, align 32
@ci_populate_smc_boot_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\013amdgpu: [powerplay] VBIOS did not find boot engine clock value in dependency table. Using Graphics DPM level 0!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ci_populate_smc_boot_level\00", [37 x i8] zeroinitializer }, align 32
@ci_populate_smc_boot_level._entry_ptr = internal global ptr @ci_populate_smc_boot_level._entry, section ".printk_index", align 4
@ci_populate_smc_boot_level._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.3, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"\013amdgpu: [powerplay] VBIOS did not find boot engine clock value in dependency table. Using Memory DPM level 0!\0A\00", [47 x i8] zeroinitializer }, align 32
@ci_populate_smc_boot_level._entry_ptr.127 = internal global ptr @ci_populate_smc_boot_level._entry.125, section ".printk_index", align 4
@ci_populate_vr_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 1922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016amdgpu: [powerplay] VDDCshould be on SVI2 controller!\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ci_populate_vr_config\00", [42 x i8] zeroinitializer }, align 32
@ci_populate_vr_config._entry_ptr = internal global ptr @ci_populate_vr_config._entry, section ".printk_index", align 4
@ci_populate_initial_mc_reg_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_initial_mc_reg_table = private unnamed_addr constant [33 x i8] c"ci_populate_initial_mc_reg_table\00", align 1
@ci_populate_initial_mc_reg_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_initial_mc_reg_table, ptr @.str.3, i32 1843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_initial_mc_reg_table._entry_ptr = internal global ptr @ci_populate_initial_mc_reg_table._entry, section ".printk_index", align 4
@.str.130 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Failed to initialize MCRegTable for the MC register addresses!\00", [33 x i8] zeroinitializer }, align 32
@ci_populate_initial_mc_reg_table._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_initial_mc_reg_table, ptr @.str.3, i32 1847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_initial_mc_reg_table._entry_ptr.133 = internal global ptr @ci_populate_initial_mc_reg_table._entry.132, section ".printk_index", align 4
@ci_populate_mc_reg_address._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_mc_reg_address = private unnamed_addr constant [27 x i8] c"ci_populate_mc_reg_address\00", align 1
@ci_populate_mc_reg_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_mc_reg_address, ptr @.str.3, i32 1732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_mc_reg_address._entry_ptr = internal global ptr @ci_populate_mc_reg_address._entry, section ".printk_index", align 4
@.str.135 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Index of mc_reg_table->address[] array out of boundary\00", [41 x i8] zeroinitializer }, align 32
@ci_populate_pm_fuses._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.3, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013amdgpu: [powerplay] Attempt to get pm_fuse_table_offset Failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ci_populate_pm_fuses\00", [43 x i8] zeroinitializer }, align 32
@ci_populate_pm_fuses._entry_ptr = internal global ptr @ci_populate_pm_fuses._entry, section ".printk_index", align 4
@ci_populate_bapm_vddc_vid_sidd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_bapm_vddc_vid_sidd = private unnamed_addr constant [31 x i8] c"ci_populate_bapm_vddc_vid_sidd\00", align 1
@ci_populate_bapm_vddc_vid_sidd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_bapm_vddc_vid_sidd, ptr @.str.3, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_bapm_vddc_vid_sidd._entry_ptr = internal global ptr @ci_populate_bapm_vddc_vid_sidd._entry, section ".printk_index", align 4
@.str.138 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"The CAC Leakage table does not exist!\00", [58 x i8] zeroinitializer }, align 32
@ci_populate_bapm_vddc_vid_sidd._rs.139 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_populate_bapm_vddc_vid_sidd._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_bapm_vddc_vid_sidd, ptr @.str.3, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_bapm_vddc_vid_sidd._entry_ptr.141 = internal global ptr @ci_populate_bapm_vddc_vid_sidd._entry.140, section ".printk_index", align 4
@.str.142 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"There should never be more than 8 entries for BapmVddcVid!!!\00", [35 x i8] zeroinitializer }, align 32
@ci_populate_bapm_vddc_vid_sidd._rs.143 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_populate_bapm_vddc_vid_sidd._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_bapm_vddc_vid_sidd, ptr @.str.3, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_bapm_vddc_vid_sidd._entry_ptr.145 = internal global ptr @ci_populate_bapm_vddc_vid_sidd._entry.144, section ".printk_index", align 4
@.str.146 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"CACLeakageTable->count and VddcDependencyOnSCLk->count not equal\00", [63 x i8] zeroinitializer }, align 32
@ci_populate_vddc_vid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_vddc_vid = private unnamed_addr constant [21 x i8] c"ci_populate_vddc_vid\00", align 1
@ci_populate_vddc_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_vddc_vid, ptr @.str.3, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_vddc_vid._entry_ptr = internal global ptr @ci_populate_vddc_vid._entry, section ".printk_index", align 4
@.str.147 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"There should never be more than 8 entries for VddcVid!!!\00", [39 x i8] zeroinitializer }, align 32
@ci_populate_dw8._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_dw8 = private unnamed_addr constant [16 x i8] c"ci_populate_dw8\00", align 1
@ci_populate_dw8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_dw8, ptr @.str.3, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_dw8._entry_ptr = internal global ptr @ci_populate_dw8._entry, section ".printk_index", align 4
@.str.148 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Attempt to read PmFuses.DW6 (SviLoadLineEn) from SMC Failed!\00", [35 x i8] zeroinitializer }, align 32
@ci_program_jump_on_start.data = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\E0\00\80@", [28 x i8] zeroinitializer }, align 32
@ci_populate_single_graphic_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.3, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013amdgpu: [powerplay] vdd_dep_on_sclk table is NULL\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ci_populate_single_graphic_level\00", [63 x i8] zeroinitializer }, align 32
@ci_populate_single_graphic_level._entry_ptr = internal global ptr @ci_populate_single_graphic_level._entry, section ".printk_index", align 4
@ci_calculate_sclk_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_calculate_sclk_params = private unnamed_addr constant [25 x i8] c"ci_calculate_sclk_params\00", align 1
@ci_calculate_sclk_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_calculate_sclk_params, ptr @.str.3, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_calculate_sclk_params._entry_ptr = internal global ptr @ci_calculate_sclk_params._entry, section ".printk_index", align 4
@ci_get_sleep_divider_id_from_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016amdgpu: [powerplay] Engine clock can't satisfy stutter requirement!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ci_get_sleep_divider_id_from_clock\00", [61 x i8] zeroinitializer }, align 32
@ci_get_sleep_divider_id_from_clock._entry_ptr = internal global ptr @ci_get_sleep_divider_id_from_clock._entry, section ".printk_index", align 4
@ci_populate_all_memory_levels._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_all_memory_levels = private unnamed_addr constant [30 x i8] c"ci_populate_all_memory_levels\00", align 1
@ci_populate_all_memory_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_all_memory_levels, ptr @.str.3, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_all_memory_levels._entry_ptr = internal global ptr @ci_populate_all_memory_levels._entry, section ".printk_index", align 4
@.str.153 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"can not populate memory level as memory clock is zero\00", [42 x i8] zeroinitializer }, align 32
@ci_populate_single_memory_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_populate_single_memory_level = private unnamed_addr constant [32 x i8] c"ci_populate_single_memory_level\00", align 1
@ci_populate_single_memory_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_single_memory_level, ptr @.str.3, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_single_memory_level._entry_ptr = internal global ptr @ci_populate_single_memory_level._entry, section ".printk_index", align 4
@.str.154 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"can not find MinVddc voltage value from memory VDDC voltage dependency table\00", [51 x i8] zeroinitializer }, align 32
@ci_populate_single_memory_level._rs.155 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_populate_single_memory_level._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_single_memory_level, ptr @.str.3, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_single_memory_level._entry_ptr.157 = internal global ptr @ci_populate_single_memory_level._entry.156, section ".printk_index", align 4
@.str.158 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"can not find MinVddci voltage value from memory VDDCI voltage dependency table\00", [49 x i8] zeroinitializer }, align 32
@ci_populate_single_memory_level._rs.159 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_populate_single_memory_level._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_populate_single_memory_level, ptr @.str.3, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_populate_single_memory_level._entry_ptr.161 = internal global ptr @ci_populate_single_memory_level._entry.160, section ".printk_index", align 4
@.str.162 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"can not find MinVddci voltage value from memory MVDD voltage dependency table\00", [50 x i8] zeroinitializer }, align 32
@ci_calculate_mclk_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_calculate_mclk_params = private unnamed_addr constant [25 x i8] c"ci_calculate_mclk_params\00", align 1
@ci_calculate_mclk_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_calculate_mclk_params, ptr @.str.3, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_calculate_mclk_params._entry_ptr = internal global ptr @ci_calculate_mclk_params._entry, section ".printk_index", align 4
@.str.163 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Error retrieving Memory Clock Parameters from VBIOS.\00", [43 x i8] zeroinitializer }, align 32
@ci_copy_vbios_smc_reg_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_copy_vbios_smc_reg_table = private unnamed_addr constant [28 x i8] c"ci_copy_vbios_smc_reg_table\00", align 1
@ci_copy_vbios_smc_reg_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_copy_vbios_smc_reg_table, ptr @.str.3, i32 2558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_copy_vbios_smc_reg_table._entry_ptr = internal global ptr @ci_copy_vbios_smc_reg_table._entry, section ".printk_index", align 4
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid VramInfo table.\00", [40 x i8] zeroinitializer }, align 32
@ci_copy_vbios_smc_reg_table._rs.165 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_copy_vbios_smc_reg_table._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_copy_vbios_smc_reg_table, ptr @.str.3, i32 2560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_copy_vbios_smc_reg_table._entry_ptr.167 = internal global ptr @ci_copy_vbios_smc_reg_table._entry.166, section ".printk_index", align 4
@ci_set_mc_special_registers._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ci_set_mc_special_registers = private unnamed_addr constant [28 x i8] c"ci_set_mc_special_registers\00", align 1
@ci_set_mc_special_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_set_mc_special_registers, ptr @.str.3, i32 2590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_set_mc_special_registers._entry_ptr = internal global ptr @ci_set_mc_special_registers._entry, section ".printk_index", align 4
@ci_set_mc_special_registers._rs.168 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_set_mc_special_registers._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_set_mc_special_registers, ptr @.str.3, i32 2606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_set_mc_special_registers._entry_ptr.170 = internal global ptr @ci_set_mc_special_registers._entry.169, section ".printk_index", align 4
@ci_set_mc_special_registers._rs.171 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ci_set_mc_special_registers._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ci_set_mc_special_registers, ptr @.str.3, i32 2622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_set_mc_special_registers._entry_ptr.173 = internal global ptr @ci_set_mc_special_registers._entry.172, section ".printk_index", align 4
@ci_get_offsetof.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.174, ptr @.str.175, ptr @.str.3, ptr @.str.176, i8 2, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ci_get_offsetof\00", [16 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"can't get the offset of type %x member %x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: [powerplay] can't get the offset of type %x member %x\0A\00", [33 x i8] zeroinitializer }, align 32
@ci_get_mac_definition.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.174, ptr @.str.178, ptr @.str.3, ptr @.str.179, i8 2, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ci_get_mac_definition\00", [42 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't get the mac of %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: [powerplay] can't get the mac of %x\0A\00", [51 x i8] zeroinitializer }, align 32
@switch.table.ci_get_offsetof = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 48, i32 44, i32 60, i32 64, i32 12, i32 16, i32 48, i32 48, i32 48, i32 48, i32 80, i32 84, i32 88, i32 92, i32 96], [36 x i8] zeroinitializer }, align 32
@switch.table.ci_get_mac_definition = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 6, i32 8, i32 32, i32 8, i32 8, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.181 = internal global [10 x i64] [i64 8, i64 16, i64 26176, i64 26177, i64 26182, i64 26183, i64 26288, i64 26545, i64 26552, i64 26554]
@__sancov_gen_cov_switch_values.182 = internal global [22 x i64] [i64 20, i64 16, i64 2600, i64 2601, i64 2602, i64 2603, i64 2604, i64 2605, i64 2606, i64 2607, i64 2608, i64 2691, i64 2731, i64 2769, i64 2773, i64 2775, i64 3457, i64 3459, i64 3461, i64 3466, i64 3468, i64 3470]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 16, i64 2689, i64 2690]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2963, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"ci_smu_funcs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2962, i32 29 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 221, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2353, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2328, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2343, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 100, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2238, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2241, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 120, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1635, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1970, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1978, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1982, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1986, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1990, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1994, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1998, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2004, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2008, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2020, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2024, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2027, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2053, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2061, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2108, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2112, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2116, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c"defaults_hawaii_pro\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 75, i32 36 }
@___asan_gen_.405 = private unnamed_addr constant [19 x i8] c"defaults_hawaii_xt\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 69, i32 36 }
@___asan_gen_.408 = private unnamed_addr constant [19 x i8] c"defaults_saturn_xt\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 88, i32 36 }
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c"defaults_bonaire_xt\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 81, i32 36 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 932, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 936, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 940, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 852, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 772, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 777, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 788, i32 5 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 804, i32 6 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 813, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 882, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 910, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 957, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1406, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1366, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1578, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1609, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1539, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1546, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1701, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1711, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1922, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1842, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1846, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1731, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 684, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 584, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 586, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 588, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 612, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 551, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 180, i32 29 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 421, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 314, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 395, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1316, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1189, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1198, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1207, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 1046, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2557, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2559, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2589, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2605, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2621, i32 5 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2284, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.751 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 2307, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [29 x i8] c"switch.table.ci_get_offsetof\00", align 1
@___asan_gen_.754 = private unnamed_addr constant [35 x i8] c"switch.table.ci_get_mac_definition\00", align 1
@llvm.compiler.used = appending global [260 x ptr] [ptr @ci_calculate_mclk_params._entry, ptr @ci_calculate_mclk_params._entry_ptr, ptr @ci_calculate_sclk_params._entry, ptr @ci_calculate_sclk_params._entry_ptr, ptr @ci_copy_bytes_to_smc._entry, ptr @ci_copy_bytes_to_smc._entry_ptr, ptr @ci_copy_vbios_smc_reg_table._entry, ptr @ci_copy_vbios_smc_reg_table._entry.166, ptr @ci_copy_vbios_smc_reg_table._entry_ptr, ptr @ci_copy_vbios_smc_reg_table._entry_ptr.167, ptr @ci_get_sleep_divider_id_from_clock._entry, ptr @ci_get_sleep_divider_id_from_clock._entry_ptr, ptr @ci_get_std_voltage_value_sidd._entry, ptr @ci_get_std_voltage_value_sidd._entry.102, ptr @ci_get_std_voltage_value_sidd._entry.105, ptr @ci_get_std_voltage_value_sidd._entry.108, ptr @ci_get_std_voltage_value_sidd._entry.99, ptr @ci_get_std_voltage_value_sidd._entry_ptr, ptr @ci_get_std_voltage_value_sidd._entry_ptr.101, ptr @ci_get_std_voltage_value_sidd._entry_ptr.104, ptr @ci_get_std_voltage_value_sidd._entry_ptr.107, ptr @ci_get_std_voltage_value_sidd._entry_ptr.110, ptr @ci_init_smc_table._entry, ptr @ci_init_smc_table._entry.25, ptr @ci_init_smc_table._entry.29, ptr @ci_init_smc_table._entry.33, ptr @ci_init_smc_table._entry.37, ptr @ci_init_smc_table._entry.41, ptr @ci_init_smc_table._entry.45, ptr @ci_init_smc_table._entry.49, ptr @ci_init_smc_table._entry.53, ptr @ci_init_smc_table._entry.57, ptr @ci_init_smc_table._entry.61, ptr @ci_init_smc_table._entry.65, ptr @ci_init_smc_table._entry.69, ptr @ci_init_smc_table._entry.73, ptr @ci_init_smc_table._entry.77, ptr @ci_init_smc_table._entry.81, ptr @ci_init_smc_table._entry.85, ptr @ci_init_smc_table._entry_ptr, ptr @ci_init_smc_table._entry_ptr.26, ptr @ci_init_smc_table._entry_ptr.30, ptr @ci_init_smc_table._entry_ptr.34, ptr @ci_init_smc_table._entry_ptr.38, ptr @ci_init_smc_table._entry_ptr.42, ptr @ci_init_smc_table._entry_ptr.46, ptr @ci_init_smc_table._entry_ptr.50, ptr @ci_init_smc_table._entry_ptr.54, ptr @ci_init_smc_table._entry_ptr.58, ptr @ci_init_smc_table._entry_ptr.62, ptr @ci_init_smc_table._entry_ptr.66, ptr @ci_init_smc_table._entry_ptr.70, ptr @ci_init_smc_table._entry_ptr.74, ptr @ci_init_smc_table._entry_ptr.78, ptr @ci_init_smc_table._entry_ptr.82, ptr @ci_init_smc_table._entry_ptr.86, ptr @ci_load_smc_ucode._entry, ptr @ci_load_smc_ucode._entry.8, ptr @ci_load_smc_ucode._entry_ptr, ptr @ci_load_smc_ucode._entry_ptr.10, ptr @ci_populate_all_memory_levels._entry, ptr @ci_populate_all_memory_levels._entry_ptr, ptr @ci_populate_bapm_vddc_vid_sidd._entry, ptr @ci_populate_bapm_vddc_vid_sidd._entry.140, ptr @ci_populate_bapm_vddc_vid_sidd._entry.144, ptr @ci_populate_bapm_vddc_vid_sidd._entry_ptr, ptr @ci_populate_bapm_vddc_vid_sidd._entry_ptr.141, ptr @ci_populate_bapm_vddc_vid_sidd._entry_ptr.145, ptr @ci_populate_dw8._entry, ptr @ci_populate_dw8._entry_ptr, ptr @ci_populate_initial_mc_reg_table._entry, ptr @ci_populate_initial_mc_reg_table._entry.132, ptr @ci_populate_initial_mc_reg_table._entry_ptr, ptr @ci_populate_initial_mc_reg_table._entry_ptr.133, ptr @ci_populate_mc_reg_address._entry, ptr @ci_populate_mc_reg_address._entry_ptr, ptr @ci_populate_memory_timing_parameters._entry, ptr @ci_populate_memory_timing_parameters._entry_ptr, ptr @ci_populate_mvdd_value._entry, ptr @ci_populate_mvdd_value._entry_ptr, ptr @ci_populate_pm_fuses._entry, ptr @ci_populate_pm_fuses._entry_ptr, ptr @ci_populate_single_graphic_level._entry, ptr @ci_populate_single_graphic_level._entry_ptr, ptr @ci_populate_single_memory_level._entry, ptr @ci_populate_single_memory_level._entry.156, ptr @ci_populate_single_memory_level._entry.160, ptr @ci_populate_single_memory_level._entry_ptr, ptr @ci_populate_single_memory_level._entry_ptr.157, ptr @ci_populate_single_memory_level._entry_ptr.161, ptr @ci_populate_smc_acp_level._entry, ptr @ci_populate_smc_acp_level._entry_ptr, ptr @ci_populate_smc_acpi_level._entry, ptr @ci_populate_smc_acpi_level._entry_ptr, ptr @ci_populate_smc_boot_level._entry, ptr @ci_populate_smc_boot_level._entry.125, ptr @ci_populate_smc_boot_level._entry_ptr, ptr @ci_populate_smc_boot_level._entry_ptr.127, ptr @ci_populate_smc_mvdd_table._entry, ptr @ci_populate_smc_mvdd_table._entry_ptr, ptr @ci_populate_smc_uvd_level._entry, ptr @ci_populate_smc_uvd_level._entry.120, ptr @ci_populate_smc_uvd_level._entry_ptr, ptr @ci_populate_smc_uvd_level._entry_ptr.121, ptr @ci_populate_smc_vce_level._entry, ptr @ci_populate_smc_vce_level._entry_ptr, ptr @ci_populate_smc_vdd_ci_table._entry, ptr @ci_populate_smc_vdd_ci_table._entry_ptr, ptr @ci_populate_smc_vddc_table._entry, ptr @ci_populate_smc_vddc_table._entry_ptr, ptr @ci_populate_smc_voltage_tables._entry, ptr @ci_populate_smc_voltage_tables._entry.90, ptr @ci_populate_smc_voltage_tables._entry.94, ptr @ci_populate_smc_voltage_tables._entry_ptr, ptr @ci_populate_smc_voltage_tables._entry_ptr.91, ptr @ci_populate_smc_voltage_tables._entry_ptr.95, ptr @ci_populate_ulv_level._entry, ptr @ci_populate_ulv_level._entry_ptr, ptr @ci_populate_vddc_vid._entry, ptr @ci_populate_vddc_vid._entry_ptr, ptr @ci_populate_vr_config._entry, ptr @ci_populate_vr_config._entry_ptr, ptr @ci_send_msg_to_smc._entry, ptr @ci_send_msg_to_smc._entry_ptr, ptr @ci_set_mc_special_registers._entry, ptr @ci_set_mc_special_registers._entry.169, ptr @ci_set_mc_special_registers._entry.172, ptr @ci_set_mc_special_registers._entry_ptr, ptr @ci_set_mc_special_registers._entry_ptr.170, ptr @ci_set_mc_special_registers._entry_ptr.173, ptr @ci_set_smc_sram_address._entry, ptr @ci_set_smc_sram_address._entry_ptr, ptr @ci_update_sclk_threshold._entry, ptr @ci_update_sclk_threshold._entry.17, ptr @ci_update_sclk_threshold._entry_ptr, ptr @ci_update_sclk_threshold._entry_ptr.18, ptr @ci_upload_firmware._entry, ptr @ci_upload_firmware._entry_ptr, ptr @.str, ptr @ci_smu_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @ci_update_sclk_threshold._rs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ci_update_sclk_threshold._rs.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ci_populate_memory_timing_parameters._rs, ptr @.str.22, ptr @ci_init_smc_table._rs, ptr @.str.23, ptr @ci_init_smc_table._rs.24, ptr @.str.27, ptr @ci_init_smc_table._rs.28, ptr @.str.31, ptr @ci_init_smc_table._rs.36, ptr @.str.39, ptr @ci_init_smc_table._rs.40, ptr @.str.43, ptr @ci_init_smc_table._rs.44, ptr @.str.47, ptr @ci_init_smc_table._rs.48, ptr @.str.51, ptr @ci_init_smc_table._rs.52, ptr @.str.55, ptr @ci_init_smc_table._rs.68, ptr @.str.71, ptr @ci_init_smc_table._rs.76, ptr @.str.79, ptr @ci_init_smc_table._rs.80, ptr @.str.83, ptr @ci_init_smc_table._rs.84, ptr @.str.87, ptr @defaults_hawaii_pro, ptr @defaults_hawaii_xt, ptr @defaults_saturn_xt, ptr @defaults_bonaire_xt, ptr @ci_get_std_voltage_value_sidd._rs, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @ci_populate_ulv_level._rs, ptr @.str.113, ptr @ci_populate_smc_acpi_level._rs, ptr @.str.114, ptr @ci_populate_mvdd_value._rs, ptr @.str.115, ptr @ci_populate_smc_vce_level._rs, ptr @.str.116, ptr @ci_populate_smc_acp_level._rs, ptr @.str.117, ptr @ci_populate_smc_uvd_level._rs, ptr @.str.118, ptr @ci_populate_smc_uvd_level._rs.119, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @ci_populate_initial_mc_reg_table._rs, ptr @.str.130, ptr @ci_populate_mc_reg_address._rs, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @ci_populate_bapm_vddc_vid_sidd._rs, ptr @.str.138, ptr @ci_populate_bapm_vddc_vid_sidd._rs.139, ptr @.str.142, ptr @ci_populate_bapm_vddc_vid_sidd._rs.143, ptr @.str.146, ptr @ci_populate_vddc_vid._rs, ptr @.str.147, ptr @ci_populate_dw8._rs, ptr @.str.148, ptr @ci_program_jump_on_start.data, ptr @.str.149, ptr @.str.150, ptr @ci_calculate_sclk_params._rs, ptr @.str.151, ptr @.str.152, ptr @ci_populate_all_memory_levels._rs, ptr @.str.153, ptr @ci_populate_single_memory_level._rs, ptr @.str.154, ptr @ci_populate_single_memory_level._rs.155, ptr @.str.158, ptr @ci_populate_single_memory_level._rs.159, ptr @.str.162, ptr @ci_calculate_mclk_params._rs, ptr @.str.163, ptr @ci_copy_vbios_smc_reg_table._rs, ptr @.str.164, ptr @ci_copy_vbios_smc_reg_table._rs.165, ptr @ci_set_mc_special_registers._rs, ptr @ci_set_mc_special_registers._rs.168, ptr @ci_set_mc_special_registers._rs.171, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @switch.table.ci_get_offsetof, ptr @switch.table.ci_get_mac_definition], section "llvm.metadata"
@0 = internal global [191 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_send_msg_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_load_smc_ucode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_load_smc_ucode._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_set_smc_sram_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_update_sclk_threshold._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_update_sclk_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_update_sclk_threshold._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_update_sclk_threshold._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_copy_bytes_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_memory_timing_parameters._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_memory_timing_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._rs.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_init_smc_table._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaults_hawaii_pro to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaults_hawaii_xt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaults_saturn_xt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaults_bonaire_xt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_voltage_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_voltage_tables._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_voltage_tables._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_vddc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_std_voltage_value_sidd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_std_voltage_value_sidd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_std_voltage_value_sidd._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_std_voltage_value_sidd._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_std_voltage_value_sidd._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_std_voltage_value_sidd._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_vdd_ci_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_mvdd_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_ulv_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_ulv_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_acpi_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_acpi_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_mvdd_value._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_mvdd_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_vce_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_vce_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_acp_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_acp_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_uvd_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_uvd_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_uvd_level._rs.119 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_uvd_level._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_boot_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_smc_boot_level._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_vr_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_initial_mc_reg_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_initial_mc_reg_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_initial_mc_reg_table._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_mc_reg_address._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_mc_reg_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_pm_fuses._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_bapm_vddc_vid_sidd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_bapm_vddc_vid_sidd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_bapm_vddc_vid_sidd._rs.139 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_bapm_vddc_vid_sidd._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_bapm_vddc_vid_sidd._rs.143 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_bapm_vddc_vid_sidd._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_vddc_vid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_vddc_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_dw8._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_dw8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_program_jump_on_start.data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_single_graphic_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_calculate_sclk_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_calculate_sclk_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_get_sleep_divider_id_from_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_all_memory_levels._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_all_memory_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_single_memory_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_single_memory_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_single_memory_level._rs.155 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_single_memory_level._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_single_memory_level._rs.159 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_populate_single_memory_level._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_calculate_mclk_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_calculate_mclk_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_copy_vbios_smc_reg_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_copy_vbios_smc_reg_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_copy_vbios_smc_reg_table._rs.165 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_copy_vbios_smc_reg_table._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_set_mc_special_registers._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_set_mc_special_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_set_mc_special_registers._rs.168 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_set_mc_special_registers._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_set_mc_special_registers._rs.171 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_set_mc_special_registers._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ci_get_offsetof to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ci_get_mac_definition to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_smu_init(ptr nocapture noundef writeonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3736) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %1 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %smu_backend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_smu_fini(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %smu_backend, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ci_start_smu(ptr nocapture noundef readnone %hwmgr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_get_argument(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void %5(ptr noundef %1, i32 noundef 149, i32 noundef 0) #8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write_register4 = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_register4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register4, align 4
  %conv = zext i16 %msg to i32
  tail call void %11(ptr noundef %7, i32 noundef 148, i32 noundef %conv) #8
  %call = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef 149, i32 noundef 0, i32 noundef 65535) #8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call9 = tail call i32 %17(ptr noundef %13, i32 noundef 149) #8
  %and = and i32 %call9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %and) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %msg, i32 noundef %parameter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void %5(ptr noundef %1, i32 noundef 164, i32 noundef %parameter) #8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write_register.i = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register.i, align 4
  tail call void %11(ptr noundef %7, i32 noundef 149, i32 noundef 0) #8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write_register4.i = getelementptr inbounds %struct.cgs_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_register4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register4.i, align 4
  %conv.i = zext i16 %msg to i32
  tail call void %17(ptr noundef %13, i32 noundef 148, i32 noundef %conv.i) #8
  %call.i = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef 149, i32 noundef 0, i32 noundef 65535) #8
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call9.i = tail call i32 %23(ptr noundef %19, i32 noundef 149) #8
  %and.i = and i32 %call9.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i, label %entry.ci_send_msg_to_smc.exit_crit_edge, label %do.end.i

entry.ci_send_msg_to_smc.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_send_msg_to_smc.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv.i, i32 noundef %and.i) #12
  br label %ci_send_msg_to_smc.exit

ci_send_msg_to_smc.exit:                          ; preds = %do.end.i, %entry.ci_send_msg_to_smc.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_update_smc_table(ptr noundef %hwmgr, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwmgr, align 4
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %3 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %backend.i, align 4
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %5 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu_backend.i, align 4
  %uvd_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 16
  %7 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uvd_clock_voltage_dependency_table.i, align 4
  %ac_power.i = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 98, i32 23
  %9 = ptrtoint ptr %ac_power.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ac_power.i, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %vddc.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8, i32 3
  %vddc4.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 3
  %cond.in.in.i = select i1 %tobool.not.i, ptr %vddc4.i, ptr %vddc.i
  %11 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %cond.in.i = load i16, ptr %cond.in.in.i, align 4
  %cond.i = zext i16 %cond.in.i to i32
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  %sub.i = add i8 %15, -1
  %spec.select.i = select i1 %cmp.i, i8 0, i8 %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i, %sw.bb.if.end.i_crit_edge
  %sub.sink.i = phi i8 [ 0, %sw.bb.if.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %UvdBootLevel13.i = getelementptr inbounds %struct.ci_smumgr, ptr %6, i32 0, i32 6, i32 36
  %16 = ptrtoint ptr %UvdBootLevel13.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %sub.sink.i, ptr %UvdBootLevel13.i, align 4
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ind_register.i, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_ind_register.i, align 4
  %call18.i = tail call i32 %24(ptr noundef %18, i32 noundef 1, i32 noundef 259944) #8
  %and.i = and i32 %call18.i, 16777215
  %25 = ptrtoint ptr %UvdBootLevel13.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %UvdBootLevel13.i, align 4
  %conv21.i = zext i8 %26 to i32
  %shl.i = shl nuw i32 %conv21.i, 24
  %or.i = or i32 %shl.i, %and.i
  tail call void %22(ptr noundef %18, i32 noundef 1, i32 noundef 259944, i32 noundef %or.i) #8
  %dpm_level_enable_mask.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %4, i32 0, i32 70
  %27 = ptrtoint ptr %dpm_level_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dpm_level_enable_mask.i, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 4
  %conv24.i = zext i8 %29 to i32
  %dpm_level.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false38.i.for.cond.i_crit_edge, %if.end.i
  %i.0.in.i = phi i32 [ %conv24.i, %if.end.i ], [ %i.0.i, %lor.lhs.false38.i.for.cond.i_crit_edge ]
  %i.0.i = add nsw i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i)
  %cmp26.i = icmp sgt i32 %i.0.in.i, 0
  br i1 %cmp26.i, label %for.body.i, label %for.cond.i.sw.epilog.sink.split_crit_edge

for.cond.i.sw.epilog.sink.split_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

for.body.i:                                       ; preds = %for.cond.i
  %v.i = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %8, i32 0, i32 1, i32 %i.0.i, i32 2
  %30 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %v.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %cond.i)
  %cmp28.not.i = icmp ugt i32 %31, %cond.i
  br i1 %cmp28.not.i, label %for.body.i.if.end35.i_crit_edge, label %if.then30.i

for.body.i.if.end35.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then30.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl31.i = shl nuw i32 1, %i.0.i
  %32 = ptrtoint ptr %dpm_level_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dpm_level_enable_mask.i, align 4
  %or34.i = or i32 %33, %shl31.i
  store i32 %or34.i, ptr %dpm_level_enable_mask.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %for.body.i.if.end35.i_crit_edge
  %34 = ptrtoint ptr %dpm_level.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dpm_level.i, align 4
  %and36.i = and i32 %35, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %lor.lhs.false38.i, label %if.end35.i.sw.epilog.sink.split_crit_edge

if.end35.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false38.i:                                ; preds = %if.end35.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i2.i = and i32 %37, 1
  %cmp.i3.not.i = icmp eq i32 %and1.i2.i, 0
  br i1 %cmp.i3.not.i, label %lor.lhs.false38.i.sw.epilog.sink.split_crit_edge, label %lor.lhs.false38.i.for.cond.i_crit_edge

lor.lhs.false38.i.for.cond.i_crit_edge:           ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

lor.lhs.false38.i.sw.epilog.sink.split_crit_edge: ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %38 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hwmgr, align 4
  %backend.i4 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %40 = ptrtoint ptr %backend.i4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %backend.i4, align 4
  %vce_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 15
  %42 = ptrtoint ptr %vce_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vce_clock_voltage_dependency_table.i, align 4
  %ac_power.i5 = getelementptr inbounds %struct.amdgpu_device, ptr %39, i32 0, i32 98, i32 23
  %44 = ptrtoint ptr %ac_power.i5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ac_power.i5, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i6 = icmp eq i8 %45, 0
  %vddc.i7 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 8, i32 3
  %vddc4.i8 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 3
  %cond.in.in.i9 = select i1 %tobool.not.i6, ptr %vddc4.i8, ptr %vddc.i7
  %46 = ptrtoint ptr %cond.in.in.i9 to i32
  call void @__asan_load2_noabort(i32 %46)
  %cond.in.i10 = load i16, ptr %cond.in.in.i9, align 4
  %cond.i11 = zext i16 %cond.in.i10 to i32
  %device.i12 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %47 = ptrtoint ptr %device.i12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i12, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %write_ind_register.i13 = getelementptr inbounds %struct.cgs_ops, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %write_ind_register.i13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_ind_register.i13, align 4
  %read_ind_register.i14 = getelementptr inbounds %struct.cgs_ops, ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %read_ind_register.i14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_ind_register.i14, align 4
  %call.i = tail call i32 %54(ptr noundef %48, i32 noundef 1, i32 noundef 259944) #8
  %and.i15 = and i32 %call.i, -16711681
  tail call void %52(ptr noundef %48, i32 noundef 1, i32 noundef 259944, i32 noundef %and.i15) #8
  %vce_dpm_enable_mask.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %41, i32 0, i32 70, i32 1
  %55 = ptrtoint ptr %vce_dpm_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %vce_dpm_enable_mask.i, align 4
  %56 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %43, align 4
  %conv10.i = zext i8 %57 to i32
  %arrayidx.i.i16 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %dpm_level.i17 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  br label %for.cond.i21

for.cond.i21:                                     ; preds = %lor.lhs.false.i28.for.cond.i21_crit_edge, %sw.bb1
  %i.0.in.i18 = phi i32 [ %conv10.i, %sw.bb1 ], [ %i.0.i19, %lor.lhs.false.i28.for.cond.i21_crit_edge ]
  %i.0.i19 = add nsw i32 %i.0.in.i18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i18)
  %cmp.i20 = icmp sgt i32 %i.0.in.i18, 0
  br i1 %cmp.i20, label %for.body.i23, label %for.cond.i21.sw.epilog.sink.split_crit_edge

for.cond.i21.sw.epilog.sink.split_crit_edge:      ; preds = %for.cond.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

for.body.i23:                                     ; preds = %for.cond.i21
  %v.i22 = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %43, i32 0, i32 1, i32 %i.0.i19, i32 2
  %58 = ptrtoint ptr %v.i22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %v.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %cond.i11)
  %cmp12.not.i = icmp ugt i32 %59, %cond.i11
  br i1 %cmp12.not.i, label %for.body.i23.if.end.i25_crit_edge, label %if.then.i

for.body.i23.if.end.i25_crit_edge:                ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i25

if.then.i:                                        ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i24 = shl nuw i32 1, %i.0.i19
  %60 = ptrtoint ptr %vce_dpm_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vce_dpm_enable_mask.i, align 4
  %or16.i = or i32 %61, %shl.i24
  store i32 %or16.i, ptr %vce_dpm_enable_mask.i, align 4
  br label %if.end.i25

if.end.i25:                                       ; preds = %if.then.i, %for.body.i23.if.end.i25_crit_edge
  %62 = ptrtoint ptr %dpm_level.i17 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dpm_level.i17, align 4
  %and17.i = and i32 %63, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i28, label %if.end.i25.sw.epilog.sink.split_crit_edge

if.end.i25.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false.i28:                                ; preds = %if.end.i25
  %64 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i16, align 4
  %and1.i.i26 = and i32 %65, 2
  %cmp.i.not.i27 = icmp eq i32 %and1.i.i26, 0
  br i1 %cmp.i.not.i27, label %lor.lhs.false.i28.sw.epilog.sink.split_crit_edge, label %lor.lhs.false.i28.for.cond.i21_crit_edge

lor.lhs.false.i28.for.cond.i21_crit_edge:         ; preds = %lor.lhs.false.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i21

lor.lhs.false.i28.sw.epilog.sink.split_crit_edge: ; preds = %lor.lhs.false.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %lor.lhs.false.i28.sw.epilog.sink.split_crit_edge, %if.end.i25.sw.epilog.sink.split_crit_edge, %for.cond.i21.sw.epilog.sink.split_crit_edge, %lor.lhs.false38.i.sw.epilog.sink.split_crit_edge, %if.end35.i.sw.epilog.sink.split_crit_edge, %for.cond.i.sw.epilog.sink.split_crit_edge
  %vce_dpm_enable_mask.i.sink = phi ptr [ %dpm_level_enable_mask.i, %for.cond.i.sw.epilog.sink.split_crit_edge ], [ %dpm_level_enable_mask.i, %if.end35.i.sw.epilog.sink.split_crit_edge ], [ %dpm_level_enable_mask.i, %lor.lhs.false38.i.sw.epilog.sink.split_crit_edge ], [ %vce_dpm_enable_mask.i, %for.cond.i21.sw.epilog.sink.split_crit_edge ], [ %vce_dpm_enable_mask.i, %if.end.i25.sw.epilog.sink.split_crit_edge ], [ %vce_dpm_enable_mask.i, %lor.lhs.false.i28.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i16 [ 301, %for.cond.i.sw.epilog.sink.split_crit_edge ], [ 301, %if.end35.i.sw.epilog.sink.split_crit_edge ], [ 301, %lor.lhs.false38.i.sw.epilog.sink.split_crit_edge ], [ 302, %for.cond.i21.sw.epilog.sink.split_crit_edge ], [ 302, %if.end.i25.sw.epilog.sink.split_crit_edge ], [ 302, %lor.lhs.false.i28.sw.epilog.sink.split_crit_edge ]
  %66 = ptrtoint ptr %vce_dpm_enable_mask.i.sink to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vce_dpm_enable_mask.i.sink, align 4
  %call24.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %.sink, i32 noundef %67, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_process_firmware_header(ptr noundef %hwmgr) #0 align 64 {
entry:
  %info.i.i = alloca %struct.cgs_firmware_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %device.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %4 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read_ind_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read_ind_register.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_ind_register.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5, i32 noundef 1, i32 noundef -2147483644) #8
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %ci_is_smc_ram_running.exit.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

ci_is_smc_ram_running.exit.i:                     ; preds = %entry
  %10 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read_ind_register4.i.i = getelementptr inbounds %struct.cgs_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read_ind_register4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_ind_register4.i.i, align 4
  %call6.i.i = tail call i32 %15(ptr noundef %11, i32 noundef 1, i32 noundef -2147482768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131327, i32 %call6.i.i)
  %cmp7.i.i = icmp ugt i32 %call6.i.i, 131327
  br i1 %cmp7.i.i, label %ci_upload_firmware.exit.thread, label %ci_is_smc_ram_running.exit.i.if.end.i_crit_edge

ci_is_smc_ram_running.exit.i.if.end.i_crit_edge:  ; preds = %ci_is_smc_ram_running.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

ci_upload_firmware.exit.thread:                   ; preds = %ci_is_smc_ram_running.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %if.end54

if.end.i:                                         ; preds = %ci_is_smc_ram_running.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call2.i = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 128, i32 noundef -1073741820, i32 noundef 128, i32 noundef 128) #8
  %16 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_ind_register.i, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_ind_register.i, align 4
  %call7.i = tail call i32 %23(ptr noundef %17, i32 noundef 1, i32 noundef -2147483632) #8
  %or.i = or i32 %call7.i, 1
  tail call void %21(ptr noundef %17, i32 noundef 1, i32 noundef -2147483632, i32 noundef %or.i) #8
  %24 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write_ind_register10.i = getelementptr inbounds %struct.cgs_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %write_ind_register10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_ind_register10.i, align 4
  %read_ind_register14.i = getelementptr inbounds %struct.cgs_ops, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %read_ind_register14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_ind_register14.i, align 4
  %call16.i = tail call i32 %31(ptr noundef %25, i32 noundef 1, i32 noundef -2147483644) #8
  %or18.i = or i32 %call16.i, 1
  tail call void %29(ptr noundef %25, i32 noundef 1, i32 noundef -2147483644, i32 noundef %or18.i) #8
  %32 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %write_ind_register21.i = getelementptr inbounds %struct.cgs_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %write_ind_register21.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_ind_register21.i, align 4
  %read_ind_register25.i = getelementptr inbounds %struct.cgs_ops, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %read_ind_register25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_ind_register25.i, align 4
  %call27.i = tail call i32 %39(ptr noundef %33, i32 noundef 1, i32 noundef -2147483648) #8
  %or29.i = or i32 %call27.i, 1
  tail call void %37(ptr noundef %33, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or29.i) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i.i) #8
  %40 = call ptr @memset(ptr %info.i.i, i32 0, i32 40)
  %41 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %get_firmware_info.i.i = getelementptr inbounds %struct.cgs_ops, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %get_firmware_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_firmware_info.i.i, align 4
  %call.i46.i = call i32 %46(ptr noundef %42, i32 noundef 0, ptr noundef nonnull %info.i.i) #8
  %is_kicker.i.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %is_kicker.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_kicker.i.i, align 8, !range !396
  %is_kicker2.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 27
  %49 = ptrtoint ptr %is_kicker2.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %is_kicker2.i.i, align 4
  %50 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %info.i.i, align 8
  %conv.i.i = zext i16 %51 to i32
  %smu_version.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 3
  %52 = ptrtoint ptr %smu_version.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv.i.i, ptr %smu_version.i.i, align 4
  %image_size.i.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %image_size.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %image_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %54)
  %cmp.i47.i = icmp ugt i32 %54, 262144
  br i1 %cmp.i47.i, label %if.end.i.ci_upload_firmware.exit_crit_edge, label %if.end.i.i

if.end.i.ci_upload_firmware.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_upload_firmware.exit

if.end.i.i:                                       ; preds = %if.end.i
  %ucode_start_address.i.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %ucode_start_address.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ucode_start_address.i.i, align 8
  %kptr.i.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %kptr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %kptr.i.i, align 4
  %59 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %write_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write_register.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_register.i.i, align 4
  call void %64(ptr noundef %60, i32 noundef 128, i32 noundef %56) #8
  %65 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %write_register10.i.i = getelementptr inbounds %struct.cgs_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_register10.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_register10.i.i, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  %call15.i.i = call i32 %72(ptr noundef %66, i32 noundef 144) #8
  %or.i.i = or i32 %call15.i.i, 1
  call void %70(ptr noundef %66, i32 noundef 144, i32 noundef %or.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp1680.i.i = icmp ugt i32 %54, 3
  br i1 %cmp1680.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.for.end.i.i_crit_edge

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %byte_count.082.i.i = phi i32 [ %sub.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %54, %if.end.i.i.for.body.i.i_crit_edge ]
  %src.081.i.i = phi ptr [ %add.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %58, %if.end.i.i.for.body.i.i_crit_edge ]
  %73 = ptrtoint ptr %src.081.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %src.081.i.i, align 1
  %conv18.i.i = zext i8 %74 to i32
  %shl.i.i = shl nuw i32 %conv18.i.i, 24
  %arrayidx19.i.i = getelementptr i8, ptr %src.081.i.i, i32 1
  %75 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx19.i.i, align 1
  %conv20.i.i = zext i8 %76 to i32
  %shl21.i.i = shl nuw nsw i32 %conv20.i.i, 16
  %or22.i.i = or i32 %shl21.i.i, %shl.i.i
  %arrayidx23.i.i = getelementptr i8, ptr %src.081.i.i, i32 2
  %77 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx23.i.i, align 1
  %conv24.i.i = zext i8 %78 to i32
  %shl25.i.i = shl nuw nsw i32 %conv24.i.i, 8
  %or26.i.i = or i32 %or22.i.i, %shl25.i.i
  %arrayidx27.i.i = getelementptr i8, ptr %src.081.i.i, i32 3
  %79 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx27.i.i, align 1
  %conv28.i.i = zext i8 %80 to i32
  %or29.i.i = or i32 %or26.i.i, %conv28.i.i
  %81 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %write_register32.i.i = getelementptr inbounds %struct.cgs_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write_register32.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_register32.i.i, align 4
  call void %86(ptr noundef %82, i32 noundef 129, i32 noundef %or29.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %src.081.i.i, i32 4
  %sub.i.i = add i32 %byte_count.082.i.i, -4
  %cmp16.i.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp16.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %byte_count.0.lcssa.i.i = phi i32 [ %54, %if.end.i.i.for.end.i.i_crit_edge ], [ %sub.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %87 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %write_register36.i.i = getelementptr inbounds %struct.cgs_ops, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %write_register36.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_register36.i.i, align 4
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %90, align 4
  %call42.i.i = call i32 %94(ptr noundef %88, i32 noundef 144) #8
  %and43.i.i = and i32 %call42.i.i, -2
  call void %92(ptr noundef %88, i32 noundef 144, i32 noundef %and43.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.0.lcssa.i.i)
  %cmp45.not.i.i = icmp eq i32 %byte_count.0.lcssa.i.i, 0
  br i1 %cmp45.not.i.i, label %ci_upload_firmware.exit.thread152, label %for.end.i.i.ci_upload_firmware.exit_crit_edge

for.end.i.i.ci_upload_firmware.exit_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_upload_firmware.exit

ci_upload_firmware.exit.thread152:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i.i) #8
  br label %if.end54

ci_upload_firmware.exit:                          ; preds = %for.end.i.i.ci_upload_firmware.exit_crit_edge, %if.end.i.ci_upload_firmware.exit_crit_edge
  %.str.9.sink.i.i = phi ptr [ @.str.6, %if.end.i.ci_upload_firmware.exit_crit_edge ], [ @.str.9, %for.end.i.i.ci_upload_firmware.exit_crit_edge ]
  %call52.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink.i.i) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i.i) #8
  br label %cleanup

if.end54:                                         ; preds = %ci_upload_firmware.exit.thread152, %ci_upload_firmware.exit.thread
  %95 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %device.i.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %write_register.i.i101 = getelementptr inbounds %struct.cgs_ops, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %write_register.i.i101 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_register.i.i101, align 4
  call void %100(ptr noundef %96, i32 noundef 128, i32 noundef 131124) #8
  %101 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %write_register5.i.i = getelementptr inbounds %struct.cgs_ops, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %write_register5.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write_register5.i.i, align 4
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %104, align 4
  %call10.i.i = call i32 %108(ptr noundef %102, i32 noundef 144) #8
  %and11.i.i = and i32 %call10.i.i, -2
  call void %106(ptr noundef %102, i32 noundef 144, i32 noundef %and11.i.i) #8
  %109 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %call2.i102 = call i32 %114(ptr noundef %110, i32 noundef 129) #8
  %dpm_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 1
  %115 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call2.i102, ptr %dpm_table_start, align 4
  %116 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device.i.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %write_register.i.i106 = getelementptr inbounds %struct.cgs_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %write_register.i.i106 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write_register.i.i106, align 4
  call void %121(ptr noundef %117, i32 noundef 128, i32 noundef 131120) #8
  %122 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %write_register5.i.i107 = getelementptr inbounds %struct.cgs_ops, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %write_register5.i.i107 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write_register5.i.i107, align 4
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %125, align 4
  %call10.i.i108 = call i32 %129(ptr noundef %123, i32 noundef 144) #8
  %and11.i.i109 = and i32 %call10.i.i108, -2
  call void %127(ptr noundef %123, i32 noundef 144, i32 noundef %and11.i.i109) #8
  %130 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device.i.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %call2.i110 = call i32 %135(ptr noundef %131, i32 noundef 129) #8
  %soft_regs_start = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 39
  %136 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call2.i110, ptr %soft_regs_start, align 4
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call2.i110, ptr %3, align 4
  %138 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %device.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %write_register.i.i114 = getelementptr inbounds %struct.cgs_ops, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %write_register.i.i114 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write_register.i.i114, align 4
  call void %143(ptr noundef %139, i32 noundef 128, i32 noundef 131140) #8
  %144 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %device.i.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %write_register5.i.i115 = getelementptr inbounds %struct.cgs_ops, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %write_register5.i.i115 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write_register5.i.i115, align 4
  %150 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %147, align 4
  %call10.i.i116 = call i32 %151(ptr noundef %145, i32 noundef 144) #8
  %and11.i.i117 = and i32 %call10.i.i116, -2
  call void %149(ptr noundef %145, i32 noundef 144, i32 noundef %and11.i.i117) #8
  %152 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %device.i.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %call2.i118 = call i32 %157(ptr noundef %153, i32 noundef 129) #8
  %mc_reg_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 2
  %158 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %call2.i118, ptr %mc_reg_table_start, align 4
  %159 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %device.i.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %write_register.i.i122 = getelementptr inbounds %struct.cgs_ops, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %write_register.i.i122 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write_register.i.i122, align 4
  call void %164(ptr noundef %160, i32 noundef 128, i32 noundef 131128) #8
  %165 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %device.i.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %write_register5.i.i123 = getelementptr inbounds %struct.cgs_ops, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %write_register5.i.i123 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write_register5.i.i123, align 4
  %171 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %168, align 4
  %call10.i.i124 = call i32 %172(ptr noundef %166, i32 noundef 144) #8
  %and11.i.i125 = and i32 %call10.i.i124, -2
  call void %170(ptr noundef %166, i32 noundef 144, i32 noundef %and11.i.i125) #8
  %173 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %device.i.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %call2.i126 = call i32 %178(ptr noundef %174, i32 noundef 129) #8
  %fan_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 3
  %179 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %call2.i126, ptr %fan_table_start, align 4
  %180 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %device.i.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %write_register.i.i130 = getelementptr inbounds %struct.cgs_ops, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %write_register.i.i130 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write_register.i.i130, align 4
  call void %185(ptr noundef %181, i32 noundef 128, i32 noundef 131144) #8
  %186 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %device.i.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %write_register5.i.i131 = getelementptr inbounds %struct.cgs_ops, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %write_register5.i.i131 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write_register5.i.i131, align 4
  %192 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %189, align 4
  %call10.i.i132 = call i32 %193(ptr noundef %187, i32 noundef 144) #8
  %and11.i.i133 = and i32 %call10.i.i132, -2
  call void %191(ptr noundef %187, i32 noundef 144, i32 noundef %and11.i.i133) #8
  %194 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %device.i.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %call2.i134 = call i32 %199(ptr noundef %195, i32 noundef 129) #8
  %arb_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 4
  %200 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %call2.i134, ptr %arb_table_start, align 4
  %201 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %device.i.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 4
  %write_register.i.i138 = getelementptr inbounds %struct.cgs_ops, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %write_register.i.i138 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write_register.i.i138, align 4
  call void %206(ptr noundef %202, i32 noundef 128, i32 noundef 131092) #8
  %207 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %device.i.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %write_register5.i.i139 = getelementptr inbounds %struct.cgs_ops, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %write_register5.i.i139 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %write_register5.i.i139, align 4
  %213 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %210, align 4
  %call10.i.i140 = call i32 %214(ptr noundef %208, i32 noundef 144) #8
  %and11.i.i141 = and i32 %call10.i.i140, -2
  call void %212(ptr noundef %208, i32 noundef 144, i32 noundef %and11.i.i141) #8
  %215 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %device.i.i, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 4
  %call2.i142 = call i32 %220(ptr noundef %216, i32 noundef 129) #8
  %microcode_version_info = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 39
  %221 = ptrtoint ptr %microcode_version_info to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %call2.i142, ptr %microcode_version_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %ci_upload_firmware.exit
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -22, %ci_upload_firmware.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_update_sclk_threshold(ptr noundef %hwmgr) #0 align 64 {
entry:
  %low_sclk_interrupt_threshold = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #8
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %low_sclk_interrupt_threshold1 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 83
  %6 = ptrtoint ptr %low_sclk_interrupt_threshold1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %low_sclk_interrupt_threshold1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %low_sclk_interrupt_threshold to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %low_sclk_interrupt_threshold, align 4
  %dpm_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %10, 2020
  %call3 = call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef nonnull %low_sclk_interrupt_threshold, i32 noundef 4, i32 noundef 262144)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smu_backend, align 4
  %13 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %backend, align 4
  %need_update_smu7_dpm_table.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %14, i32 0, i32 71
  %15 = ptrtoint ptr %need_update_smu7_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %need_update_smu7_dpm_table.i, align 4
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i43 = icmp eq i32 %and.i, 0
  br i1 %cmp.i43, label %if.end.do.end14_crit_edge, label %if.end.i

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.end.i:                                         ; preds = %if.end
  %mc_regs.i = getelementptr inbounds %struct.ci_smumgr, ptr %12, i32 0, i32 9
  %17 = call ptr @memset(ptr %mc_regs.i, i32 0, i32 452)
  %18 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %backend, align 4
  %mclk_table.i.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %mclk_table.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mclk_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp1.not.i.i, label %if.end.i.ci_update_and_upload_mc_reg_table.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.ci_update_and_upload_mc_reg_table.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_update_and_upload_mc_reg_table.exit

for.body.i.i:                                     ; preds = %ci_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %ci_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %value.i.i = getelementptr %struct.smu7_dpm_table, ptr %19, i32 0, i32 1, i32 1, i32 %i.02.i.i, i32 1
  %22 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.ci_smumgr, ptr %12, i32 0, i32 9, i32 3, i32 %i.02.i.i
  %24 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smu_backend, align 4
  %num_entries.i.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %25, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_entries.i.i.i, align 1
  %conv.i.i.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp1.not.i.i.i = icmp eq i8 %27, 0
  br i1 %cmp1.not.i.i.i, label %for.body.i.i.for.end.thread.i.i.i_crit_edge, label %for.body.i.i.for.body.i.i.i_crit_edge

for.body.i.i.for.body.i.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body.i.i.i

for.body.i.i.for.end.thread.i.i.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.for.body.i.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.ci_smumgr, ptr %25, i32 0, i32 10, i32 3, i32 %i.02.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %23)
  %cmp3.not.i.i.i = icmp ult i32 %29, %23
  br i1 %cmp3.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %for.body.i.i.i.for.end.i.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ %conv.i.i.i, %for.inc.i.i.i.for.end.i.i.i_crit_edge ], [ %i.02.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i, i32 %conv.i.i.i)
  %cmp8.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i.i)
  %cmp10.not.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i, 0
  %dec.i.i.i = add nsw i32 %i.0.lcssa.i.i.i, -1
  br i1 %cmp10.not.i.i.i, label %for.end.i.i.i.for.end.thread.i.i.i_crit_edge, label %for.end.i.i.i._crit_edge

for.end.i.i.i._crit_edge:                         ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %30

for.end.i.i.i.for.end.thread.i.i.i_crit_edge:     ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i.i.i

for.end.thread.i.i.i:                             ; preds = %for.end.i.i.i.for.end.thread.i.i.i_crit_edge, %for.body.i.i.for.end.thread.i.i.i_crit_edge
  %cmp813.i.i.i = phi i1 [ %cmp8.i.i.i, %for.end.i.i.i.for.end.thread.i.i.i_crit_edge ], [ true, %for.body.i.i.for.end.thread.i.i.i_crit_edge ]
  br label %30

30:                                               ; preds = %for.end.thread.i.i.i, %for.end.i.i.i._crit_edge
  %cmp812.i.i.i = phi i1 [ %cmp813.i.i.i, %for.end.thread.i.i.i ], [ %cmp8.i.i.i, %for.end.i.i.i._crit_edge ]
  %i.0.lcssa10.i.i.i = phi i32 [ 0, %for.end.thread.i.i.i ], [ %i.0.lcssa.i.i.i, %for.end.i.i.i._crit_edge ]
  %31 = phi i32 [ 0, %for.end.thread.i.i.i ], [ %dec.i.i.i, %for.end.i.i.i._crit_edge ]
  %i.1.i.i.i = select i1 %cmp812.i.i.i, i32 %31, i32 %i.0.lcssa10.i.i.i
  %mc_reg_table.i.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %25, i32 0, i32 10
  %32 = ptrtoint ptr %mc_reg_table.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mc_reg_table.i.i.i, align 4
  %conv18.i.i.i = zext i8 %33 to i32
  %validflag.i.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %25, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %validflag.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %validflag.i.i.i, align 2
  %conv20.i.i.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp8.not.i.i.i.i = icmp eq i8 %33, 0
  br i1 %cmp8.not.i.i.i.i, label %.ci_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge, label %.for.body.i.i.i.i_crit_edge

.for.body.i.i.i.i_crit_edge:                      ; preds = %30
  br label %for.body.i.i.i.i

.ci_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge: ; preds = %30
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_convert_mc_reg_table_entry_to_smc.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %.for.body.i.i.i.i_crit_edge
  %j.010.i.i.i.i = phi i32 [ %inc3.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i.i_crit_edge ]
  %i.09.i.i.i.i = phi i32 [ %i.1.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i.i_crit_edge ]
  %shl.i.i.i.i = shl nuw i32 1, %j.010.i.i.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, %conv20.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i.i = getelementptr %struct.ci_smumgr, ptr %25, i32 0, i32 10, i32 3, i32 %i.1.i.i.i, i32 1, i32 %j.010.i.i.i.i
  %36 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %arrayidx2.i.i.i.i = getelementptr [16 x i32], ptr %arrayidx4.i.i, i32 0, i32 %i.09.i.i.i.i
  %38 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %arrayidx2.i.i.i.i, align 1
  %inc.i.i.i.i = add i32 %i.09.i.i.i.i, 1
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %i.1.i.i.i.i = phi i32 [ %inc.i.i.i.i, %if.then.i.i.i.i ], [ %i.09.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %inc3.i.i.i.i = add nuw nsw i32 %j.010.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc3.i.i.i.i, %conv18.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.ci_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.ci_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_convert_mc_reg_table_entry_to_smc.exit.i.i

ci_convert_mc_reg_table_entry_to_smc.exit.i.i:    ; preds = %for.inc.i.i.i.i.ci_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge, %.ci_convert_mc_reg_table_entry_to_smc.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %39 = ptrtoint ptr %mclk_table.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mclk_table.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %40
  br i1 %cmp.i.i, label %ci_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge, label %ci_convert_mc_reg_table_entry_to_smc.exit.i.i.ci_update_and_upload_mc_reg_table.exit_crit_edge

ci_convert_mc_reg_table_entry_to_smc.exit.i.i.ci_update_and_upload_mc_reg_table.exit_crit_edge: ; preds = %ci_convert_mc_reg_table_entry_to_smc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_update_and_upload_mc_reg_table.exit

ci_convert_mc_reg_table_entry_to_smc.exit.i.i.for.body.i.i_crit_edge: ; preds = %ci_convert_mc_reg_table_entry_to_smc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

ci_update_and_upload_mc_reg_table.exit:           ; preds = %ci_convert_mc_reg_table_entry_to_smc.exit.i.i.ci_update_and_upload_mc_reg_table.exit_crit_edge, %if.end.i.ci_update_and_upload_mc_reg_table.exit_crit_edge
  %mc_reg_table_start.i = getelementptr inbounds %struct.ci_smumgr, ptr %12, i32 0, i32 2
  %41 = ptrtoint ptr %mc_reg_table_start.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mc_reg_table_start.i, align 4
  %add.i = add i32 %42, 68
  %data6.i = getelementptr inbounds %struct.ci_smumgr, ptr %12, i32 0, i32 9, i32 3
  %mclk_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %14, i32 0, i32 1
  %43 = ptrtoint ptr %mclk_table.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mclk_table.i, align 4
  %mul.i = shl i32 %44, 6
  %call7.i = tail call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add.i, ptr noundef %data6.i, i32 noundef %mul.i, i32 noundef 262144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp5 = icmp eq i32 %call7.i, 0
  br i1 %cmp5, label %ci_update_and_upload_mc_reg_table.exit.do.end14_crit_edge, label %if.then6

ci_update_and_upload_mc_reg_table.exit.do.end14_crit_edge: ; preds = %ci_update_and_upload_mc_reg_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then6:                                         ; preds = %ci_update_and_upload_mc_reg_table.exit
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @ci_update_sclk_threshold._rs, ptr noundef nonnull @__func__.ci_update_sclk_threshold) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then6.cleanup_crit_edge, label %if.then6.cleanup.sink.split_crit_edge

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %ci_update_and_upload_mc_reg_table.exit.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %45 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %backend, align 4
  %need_update_smu7_dpm_table.i45 = getelementptr inbounds %struct.smu7_hwmgr, ptr %46, i32 0, i32 71
  %47 = ptrtoint ptr %need_update_smu7_dpm_table.i45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %need_update_smu7_dpm_table.i45, align 4
  %and.i46 = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i, label %do.end14.cleanup_crit_edge, label %ci_program_mem_timing_parameters.exit

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ci_program_mem_timing_parameters.exit:            ; preds = %do.end14
  %call.i = tail call fastcc i32 @ci_program_memory_timing_parameters(ptr noundef %hwmgr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp eq i32 %call.i, 0
  br i1 %cmp17, label %ci_program_mem_timing_parameters.exit.cleanup_crit_edge, label %if.then18

ci_program_mem_timing_parameters.exit.cleanup_crit_edge: ; preds = %ci_program_mem_timing_parameters.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %ci_program_mem_timing_parameters.exit
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @ci_update_sclk_threshold._rs.16, ptr noundef nonnull @__func__.ci_update_sclk_threshold) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then18.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.15, %if.then6.cleanup.sink.split_crit_edge ], [ @.str.19, %if.then18.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call7.i, %if.then6.cleanup.sink.split_crit_edge ], [ %call.i, %if.then18.cleanup.sink.split_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %.str.19.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then18.cleanup_crit_edge, %ci_program_mem_timing_parameters.exit.cleanup_crit_edge, %do.end14.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i, %if.then6.cleanup_crit_edge ], [ %call.i, %if.then18.cleanup_crit_edge ], [ 0, %ci_program_mem_timing_parameters.exit.cleanup_crit_edge ], [ 0, %do.end14.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_threshold) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_thermal_setup_fan_table(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  %fan_table = alloca %struct.SMU7_Discrete_FanTable, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fan_table) #8
  %2 = call ptr @memset(ptr %fan_table, i32 0, i32 36)
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %5 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fanInfo, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end5, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i418 = and i32 %4, -1073741825
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and1.i418, ptr %arrayidx.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fan_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fan_table_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i420 = and i32 %4, -1073741825
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and1.i420, ptr %arrayidx.i, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_ind_register, align 4
  %call12 = tail call i32 %16(ptr noundef %12, i32 noundef 1, i32 noundef -1070595992) #8
  %and = and i32 %call12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and1.i422 = and i32 %18, -1073741825
  store i32 %and1.i422, ptr %arrayidx.i, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %advanceFanControlParameters = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5
  %usPWMMin = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %19 = ptrtoint ptr %usPWMMin to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %usPWMMin, align 2
  %conv = zext i16 %20 to i32
  %mul = mul nuw nsw i32 %and, %conv
  %conv20 = zext i32 %mul to i64
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3777893186295716171, i64 %conv20) #13, !srcloc !397
  %22 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3777893186295716171, i64 %conv20, i64 %21) #13, !srcloc !398
  %div188416 = lshr i64 %22, 11
  %conv210 = trunc i64 %div188416 to i16
  %usTMed = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 1
  %23 = ptrtoint ptr %usTMed to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %usTMed, align 2
  %conv213 = zext i16 %24 to i32
  %25 = ptrtoint ptr %advanceFanControlParameters to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %advanceFanControlParameters, align 4
  %conv216 = zext i16 %26 to i32
  %sub217 = sub nsw i32 %conv213, %conv216
  %usTHigh = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 2
  %27 = ptrtoint ptr %usTHigh to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %usTHigh, align 4
  %conv220 = zext i16 %28 to i32
  %sub225 = sub nsw i32 %conv220, %conv213
  %usPWMMed = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 4
  %29 = ptrtoint ptr %usPWMMed to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %usPWMMed, align 4
  %conv228 = zext i16 %30 to i32
  %sub233 = sub nsw i32 %conv228, %conv
  %usPWMHigh = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 5
  %31 = ptrtoint ptr %usPWMHigh to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %usPWMHigh, align 2
  %conv236 = zext i16 %32 to i32
  %sub241 = sub nsw i32 %conv236, %conv228
  %mul242 = shl nuw nsw i32 %and, 4
  %mul243 = mul nsw i32 %sub233, %mul242
  %div244 = udiv i32 %mul243, %sub217
  %add245 = add i32 %div244, 50
  %div246 = udiv i32 %add245, 100
  %conv247 = trunc i32 %div246 to i16
  %mul249 = mul nsw i32 %sub241, %mul242
  %div250 = udiv i32 %mul249, %sub225
  %add251 = add i32 %div250, 50
  %div252 = udiv i32 %add251, 100
  %conv253 = trunc i32 %div252 to i16
  %add258 = add nuw nsw i32 %conv216, 50
  %div259 = udiv i32 %add258, 100
  %conv260 = trunc i32 %div259 to i16
  %TempMin = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 1
  %33 = ptrtoint ptr %TempMin to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv260, ptr %TempMin, align 1
  %add265 = add nuw nsw i32 %conv213, 50
  %div266 = udiv i32 %add265, 100
  %conv267 = trunc i32 %div266 to i16
  %TempMed = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 2
  %34 = ptrtoint ptr %TempMed to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %conv267, ptr %TempMed, align 1
  %usTMax = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %35 = ptrtoint ptr %usTMax to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %usTMax, align 4
  %conv270 = zext i16 %36 to i32
  %add271 = add nuw nsw i32 %conv270, 50
  %div272 = udiv i32 %add271, 100
  %conv273 = trunc i32 %div272 to i16
  %TempMax = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 3
  %37 = ptrtoint ptr %TempMax to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %conv273, ptr %TempMax, align 1
  %Slope1 = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 4
  %38 = ptrtoint ptr %Slope1 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %conv247, ptr %Slope1, align 1
  %Slope2 = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 5
  %39 = ptrtoint ptr %Slope2 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %conv253, ptr %Slope2, align 1
  %FdoMin = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 6
  %40 = ptrtoint ptr %FdoMin to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %conv210, ptr %FdoMin, align 1
  %ucTHyst = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 6
  %41 = ptrtoint ptr %ucTHyst to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ucTHyst, align 4
  %conv276 = zext i8 %42 to i16
  %HystDown = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 8
  %43 = ptrtoint ptr %HystDown to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %conv276, ptr %HystDown, align 1
  %HystUp = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 7
  %44 = ptrtoint ptr %HystUp to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 1, ptr %HystUp, align 1
  %HystSlope = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 9
  %45 = ptrtoint ptr %HystSlope to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 1, ptr %HystSlope, align 1
  %TempRespLim = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 10
  %46 = ptrtoint ptr %TempRespLim to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 5, ptr %TempRespLim, align 1
  %47 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hwmgr, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %asic_funcs, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_xclk, align 4
  %call278 = tail call i32 %52(ptr noundef %48) #8
  %ulCycleDelay = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 7
  %53 = ptrtoint ptr %ulCycleDelay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ulCycleDelay, align 4
  %mul281 = mul i32 %54, %call278
  %div282 = udiv i32 %mul281, 1600
  %RefreshPeriod = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 14
  %55 = ptrtoint ptr %RefreshPeriod to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %div282, ptr %RefreshPeriod, align 1
  %conv283 = trunc i32 %and to i16
  %FdoMax = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 15
  %56 = ptrtoint ptr %FdoMax to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %conv283, ptr %FdoMax, align 1
  %57 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %read_ind_register286 = getelementptr inbounds %struct.cgs_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %read_ind_register286 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_ind_register286, align 4
  %call288 = tail call i32 %62(ptr noundef %58, i32 noundef 1, i32 noundef -1070596080) #8
  %and289 = lshr i32 %call288, 20
  %conv291 = trunc i32 %and289 to i8
  %TempSrc = getelementptr inbounds %struct.SMU7_Discrete_FanTable, ptr %fan_table, i32 0, i32 16
  %63 = ptrtoint ptr %TempSrc to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv291, ptr %TempSrc, align 1
  %64 = ptrtoint ptr %fan_table_start to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fan_table_start, align 4
  %call293 = call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %65, ptr noundef nonnull %fan_table, i32 noundef 36, i32 noundef 262144)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then14, %if.then6, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then6 ], [ 0, %if.then14 ], [ %call293, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fan_table) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_init_smc_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  %dividers.i522 = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %dividers.i = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %voltage_response_time.i.i = alloca i32, align 4
  %ulv_voltage.i.i = alloca i32, align 4
  %gpio_pin = alloca %struct.pp_atomctrl_gpio_pin_assignment, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %smc_state_table = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_pin) #8
  %4 = ptrtoint ptr %gpio_pin to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %gpio_pin, align 4, !annotation !399
  %5 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmgr, align 4
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device.i, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.181)
  switch i16 %10, label %sw.default.i [
    i16 26554, label %entry.ci_initialize_power_tune_defaults.exit_crit_edge
    i16 26545, label %entry.ci_initialize_power_tune_defaults.exit_crit_edge542
    i16 26552, label %entry.sw.bb2.i_crit_edge
    i16 26288, label %entry.sw.bb2.i_crit_edge543
    i16 26176, label %entry.sw.bb4.i_crit_edge
    i16 26177, label %entry.sw.bb4.i_crit_edge544
    i16 26182, label %entry.sw.bb4.i_crit_edge545
    i16 26183, label %entry.sw.bb4.i_crit_edge546
  ]

entry.sw.bb4.i_crit_edge546:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge545:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge544:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

entry.sw.bb2.i_crit_edge543:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

entry.ci_initialize_power_tune_defaults.exit_crit_edge542: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_initialize_power_tune_defaults.exit

entry.ci_initialize_power_tune_defaults.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_initialize_power_tune_defaults.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge543
  br label %ci_initialize_power_tune_defaults.exit

sw.bb4.i:                                         ; preds = %entry.sw.bb4.i_crit_edge, %entry.sw.bb4.i_crit_edge544, %entry.sw.bb4.i_crit_edge545, %entry.sw.bb4.i_crit_edge546
  br label %ci_initialize_power_tune_defaults.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_initialize_power_tune_defaults.exit

ci_initialize_power_tune_defaults.exit:           ; preds = %sw.default.i, %sw.bb4.i, %sw.bb2.i, %entry.ci_initialize_power_tune_defaults.exit_crit_edge, %entry.ci_initialize_power_tune_defaults.exit_crit_edge542
  %defaults_bonaire_xt.sink.i = phi ptr [ @defaults_bonaire_xt, %sw.default.i ], [ @defaults_saturn_xt, %sw.bb4.i ], [ @defaults_hawaii_xt, %sw.bb2.i ], [ @defaults_hawaii_pro, %entry.ci_initialize_power_tune_defaults.exit_crit_edge ], [ @defaults_hawaii_pro, %entry.ci_initialize_power_tune_defaults.exit_crit_edge542 ]
  %power_tune_defaults7.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %power_tune_defaults7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %defaults_bonaire_xt.sink.i, ptr %power_tune_defaults7.i, align 4
  %13 = call ptr @memset(ptr %smc_state_table, i32 0, i32 2024)
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %ci_initialize_power_tune_defaults.exit.if.end_crit_edge, label %if.then

ci_initialize_power_tune_defaults.exit.if.end_crit_edge: ; preds = %ci_initialize_power_tune_defaults.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %ci_initialize_power_tune_defaults.exit
  %16 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %backend, align 4
  %vddc_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %17, i32 0, i32 41
  %18 = ptrtoint ptr %vddc_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vddc_voltage_table.i.i, align 4
  %VddcLevelCount.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 8
  %20 = ptrtoint ptr %VddcLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %VddcLevelCount.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp1.not.i.i, label %if.then.ci_populate_smc_vddc_table.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.ci_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_smc_vddc_table.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then
  %voltage_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %17, i32 0, i32 7
  %SmioMaskVddcVid.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %count.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.smu7_hwmgr, ptr %17, i32 0, i32 41, i32 3, i32 %count.02.i.i
  %arrayidx4.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 11, i32 %count.02.i.i
  tail call fastcc void @ci_populate_smc_voltage_table(ptr noundef %hwmgr, ptr noundef %arrayidx.i.i, ptr noundef %arrayidx4.i.i) #8
  %21 = ptrtoint ptr %voltage_control.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %voltage_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp13.i.i = icmp eq i32 %22, 1
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i32 %count.02.i.i to i8
  %Smio.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 11, i32 %count.02.i.i, i32 3
  %23 = ptrtoint ptr %Smio.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i.i, ptr %Smio.i.i, align 1
  %smio_low.i.i = getelementptr %struct.smu7_hwmgr, ptr %17, i32 0, i32 41, i32 3, i32 %count.02.i.i, i32 1
  %24 = ptrtoint ptr %smio_low.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smio_low.i.i, align 4
  %arrayidx21.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 35, i32 %count.02.i.i
  %26 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx21.i.i, align 1
  %or.i.i = or i32 %27, %25
  store i32 %or.i.i, ptr %arrayidx21.i.i, align 1
  %28 = load i32, ptr %smio_low.i.i, align 4
  %29 = ptrtoint ptr %SmioMaskVddcVid.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %SmioMaskVddcVid.i.i, align 1
  %or26.i.i = or i32 %30, %28
  store i32 %or26.i.i, ptr %SmioMaskVddcVid.i.i, align 1
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %Smio29.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 11, i32 %count.02.i.i, i32 3
  %31 = ptrtoint ptr %Smio29.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %Smio29.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then14.i.i
  %inc.i.i = add nuw i32 %count.02.i.i, 1
  %32 = ptrtoint ptr %VddcLevelCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %VddcLevelCount.i.i, align 1
  %cmp.i.i = icmp ult i32 %inc.i.i, %33
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ci_populate_smc_vddc_table.exit.i_crit_edge

for.inc.i.i.ci_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_smc_vddc_table.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

ci_populate_smc_vddc_table.exit.i:                ; preds = %for.inc.i.i.ci_populate_smc_vddc_table.exit.i_crit_edge, %if.then.ci_populate_smc_vddc_table.exit.i_crit_edge
  %34 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %backend, align 4
  %vddci_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %35, i32 0, i32 42
  %36 = ptrtoint ptr %vddci_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vddci_voltage_table.i.i, align 4
  %VddciLevelCount.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 9
  %38 = ptrtoint ptr %VddciLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %VddciLevelCount.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1.not.i2.i = icmp eq i32 %37, 0
  br i1 %cmp1.not.i2.i, label %ci_populate_smc_vddc_table.exit.i.ci_populate_smc_vdd_ci_table.exit.i_crit_edge, label %for.body.lr.ph.i3.i

ci_populate_smc_vddc_table.exit.i.ci_populate_smc_vdd_ci_table.exit.i_crit_edge: ; preds = %ci_populate_smc_vddc_table.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_smc_vdd_ci_table.exit.i

for.body.lr.ph.i3.i:                              ; preds = %ci_populate_smc_vddc_table.exit.i
  %vddci_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %35, i32 0, i32 40
  %SmioMaskVddciVid.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 6
  br label %for.body.i8.i

for.body.i8.i:                                    ; preds = %for.inc.i20.i.for.body.i8.i_crit_edge, %for.body.lr.ph.i3.i
  %count.02.i4.i = phi i32 [ 0, %for.body.lr.ph.i3.i ], [ %inc.i18.i, %for.inc.i20.i.for.body.i8.i_crit_edge ]
  %arrayidx.i5.i = getelementptr %struct.smu7_hwmgr, ptr %35, i32 0, i32 42, i32 3, i32 %count.02.i4.i
  %arrayidx4.i6.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 12, i32 %count.02.i4.i
  tail call fastcc void @ci_populate_smc_voltage_table(ptr noundef %hwmgr, ptr noundef %arrayidx.i5.i, ptr noundef %arrayidx4.i6.i) #8
  %39 = ptrtoint ptr %vddci_control.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vddci_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp13.i7.i = icmp eq i32 %40, 1
  br i1 %cmp13.i7.i, label %if.then14.i15.i, label %if.else.i17.i

if.then14.i15.i:                                  ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i9.i = trunc i32 %count.02.i4.i to i8
  %Smio.i10.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 12, i32 %count.02.i4.i, i32 3
  %41 = ptrtoint ptr %Smio.i10.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i9.i, ptr %Smio.i10.i, align 1
  %smio_low.i11.i = getelementptr %struct.smu7_hwmgr, ptr %35, i32 0, i32 42, i32 3, i32 %count.02.i4.i, i32 1
  %42 = ptrtoint ptr %smio_low.i11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %smio_low.i11.i, align 4
  %arrayidx21.i12.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 35, i32 %count.02.i4.i
  %44 = ptrtoint ptr %arrayidx21.i12.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx21.i12.i, align 1
  %or.i13.i = or i32 %45, %43
  store i32 %or.i13.i, ptr %arrayidx21.i12.i, align 1
  %46 = load i32, ptr %smio_low.i11.i, align 4
  %47 = ptrtoint ptr %SmioMaskVddciVid.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %SmioMaskVddciVid.i.i, align 1
  %or26.i14.i = or i32 %48, %46
  store i32 %or26.i14.i, ptr %SmioMaskVddciVid.i.i, align 1
  br label %for.inc.i20.i

if.else.i17.i:                                    ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #10
  %Smio29.i16.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 12, i32 %count.02.i4.i, i32 3
  %49 = ptrtoint ptr %Smio29.i16.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %Smio29.i16.i, align 1
  br label %for.inc.i20.i

for.inc.i20.i:                                    ; preds = %if.else.i17.i, %if.then14.i15.i
  %inc.i18.i = add nuw i32 %count.02.i4.i, 1
  %50 = ptrtoint ptr %VddciLevelCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %VddciLevelCount.i.i, align 1
  %cmp.i19.i = icmp ult i32 %inc.i18.i, %51
  br i1 %cmp.i19.i, label %for.inc.i20.i.for.body.i8.i_crit_edge, label %for.inc.i20.i.ci_populate_smc_vdd_ci_table.exit.i_crit_edge

for.inc.i20.i.ci_populate_smc_vdd_ci_table.exit.i_crit_edge: ; preds = %for.inc.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_smc_vdd_ci_table.exit.i

for.inc.i20.i.for.body.i8.i_crit_edge:            ; preds = %for.inc.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i8.i

ci_populate_smc_vdd_ci_table.exit.i:              ; preds = %for.inc.i20.i.ci_populate_smc_vdd_ci_table.exit.i_crit_edge, %ci_populate_smc_vddc_table.exit.i.ci_populate_smc_vdd_ci_table.exit.i_crit_edge
  %52 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %backend, align 4
  %mvdd_voltage_table.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %53, i32 0, i32 43
  %54 = ptrtoint ptr %mvdd_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mvdd_voltage_table.i.i, align 4
  %MvddLevelCount.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 10
  %56 = ptrtoint ptr %MvddLevelCount.i.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %MvddLevelCount.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1.not.i22.i = icmp eq i32 %55, 0
  br i1 %cmp1.not.i22.i, label %ci_populate_smc_vdd_ci_table.exit.i.if.end_crit_edge, label %for.body.lr.ph.i23.i

ci_populate_smc_vdd_ci_table.exit.i.if.end_crit_edge: ; preds = %ci_populate_smc_vdd_ci_table.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i23.i:                             ; preds = %ci_populate_smc_vdd_ci_table.exit.i
  %mvdd_control.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %53, i32 0, i32 23
  %SmioMaskMvddVid.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 7
  br label %for.body.i28.i

for.body.i28.i:                                   ; preds = %for.inc.i40.i.for.body.i28.i_crit_edge, %for.body.lr.ph.i23.i
  %count.02.i24.i = phi i32 [ 0, %for.body.lr.ph.i23.i ], [ %inc.i38.i, %for.inc.i40.i.for.body.i28.i_crit_edge ]
  %arrayidx.i25.i = getelementptr %struct.smu7_hwmgr, ptr %53, i32 0, i32 43, i32 3, i32 %count.02.i24.i
  %arrayidx4.i26.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 13, i32 %count.02.i24.i
  tail call fastcc void @ci_populate_smc_voltage_table(ptr noundef %hwmgr, ptr noundef %arrayidx.i25.i, ptr noundef %arrayidx4.i26.i) #8
  %57 = ptrtoint ptr %mvdd_control.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mvdd_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp13.i27.i = icmp eq i32 %58, 1
  br i1 %cmp13.i27.i, label %if.then14.i35.i, label %if.else.i37.i

if.then14.i35.i:                                  ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i29.i = trunc i32 %count.02.i24.i to i8
  %Smio.i30.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 13, i32 %count.02.i24.i, i32 3
  %59 = ptrtoint ptr %Smio.i30.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i29.i, ptr %Smio.i30.i, align 1
  %smio_low.i31.i = getelementptr %struct.smu7_hwmgr, ptr %53, i32 0, i32 43, i32 3, i32 %count.02.i24.i, i32 1
  %60 = ptrtoint ptr %smio_low.i31.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %smio_low.i31.i, align 4
  %arrayidx21.i32.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 35, i32 %count.02.i24.i
  %62 = ptrtoint ptr %arrayidx21.i32.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %arrayidx21.i32.i, align 1
  %or.i33.i = or i32 %63, %61
  store i32 %or.i33.i, ptr %arrayidx21.i32.i, align 1
  %64 = load i32, ptr %smio_low.i31.i, align 4
  %65 = ptrtoint ptr %SmioMaskMvddVid.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %SmioMaskMvddVid.i.i, align 1
  %or26.i34.i = or i32 %66, %64
  store i32 %or26.i34.i, ptr %SmioMaskMvddVid.i.i, align 1
  br label %for.inc.i40.i

if.else.i37.i:                                    ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  %Smio29.i36.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 13, i32 %count.02.i24.i, i32 3
  %67 = ptrtoint ptr %Smio29.i36.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %Smio29.i36.i, align 1
  br label %for.inc.i40.i

for.inc.i40.i:                                    ; preds = %if.else.i37.i, %if.then14.i35.i
  %inc.i38.i = add nuw i32 %count.02.i24.i, 1
  %68 = ptrtoint ptr %MvddLevelCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %MvddLevelCount.i.i, align 1
  %cmp.i39.i = icmp ult i32 %inc.i38.i, %69
  br i1 %cmp.i39.i, label %for.inc.i40.i.for.body.i28.i_crit_edge, label %for.inc.i40.i.if.end_crit_edge

for.inc.i40.i.if.end_crit_edge:                   ; preds = %for.inc.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.i40.i.for.body.i28.i_crit_edge:           ; preds = %for.inc.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i

if.end:                                           ; preds = %for.inc.i40.i.if.end_crit_edge, %ci_populate_smc_vdd_ci_table.exit.i.if.end_crit_edge, %ci_initialize_power_tune_defaults.exit.if.end_crit_edge
  %platform_descriptor = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %70 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %platform_descriptor, align 4
  %and1.i = and i32 %71, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %SystemFlags = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 3
  %72 = ptrtoint ptr %SystemFlags to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %SystemFlags, align 1
  %or = or i32 %73, 1
  store i32 %or, ptr %SystemFlags, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %74 = ptrtoint ptr %platform_descriptor to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %platform_descriptor, align 4
  %and1.i502 = and i32 %75, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i502)
  %cmp.i503.not = icmp eq i32 %and1.i502, 0
  br i1 %cmp.i503.not, label %if.end4.if.end12_crit_edge, label %if.then9

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %SystemFlags10 = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 3
  %76 = ptrtoint ptr %SystemFlags10 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %SystemFlags10, align 1
  %or11 = or i32 %77, 2
  store i32 %or11, ptr %SystemFlags10, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end4.if.end12_crit_edge
  %is_memory_gddr5 = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 12
  %78 = ptrtoint ptr %is_memory_gddr5 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %is_memory_gddr5, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not = icmp eq i8 %79, 0
  br i1 %tobool.not, label %if.end12.if.end16_crit_edge, label %if.then13

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %SystemFlags14 = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %SystemFlags14 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %SystemFlags14, align 1
  %or15 = or i32 %81, 4
  store i32 %or15, ptr %SystemFlags14, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end12.if.end16_crit_edge
  %ulv_supported = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 55
  %82 = ptrtoint ptr %ulv_supported to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ulv_supported, align 2, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool17.not = icmp eq i8 %83, 0
  br i1 %tobool17.not, label %if.end16.if.end32_crit_edge, label %if.then18

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then18:                                        ; preds = %if.end16
  %Ulv = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %voltage_response_time.i.i) #8
  %84 = ptrtoint ptr %voltage_response_time.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %voltage_response_time.i.i, align 4, !annotation !399
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ulv_voltage.i.i) #8
  %85 = ptrtoint ptr %ulv_voltage.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %ulv_voltage.i.i, align 4, !annotation !399
  %86 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %backend, align 4
  %88 = ptrtoint ptr %Ulv to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 0, ptr %Ulv, align 1
  %CcPwrDynRm1.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 33, i32 1
  %89 = ptrtoint ptr %CcPwrDynRm1.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i.i, align 1
  %call.i.i = call i32 @pp_tables_get_response_times(ptr noundef %hwmgr, ptr noundef nonnull %voltage_response_time.i.i, ptr noundef nonnull %ulv_voltage.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i505 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i505, label %do.end7.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then18
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_ulv_level._rs, ptr noundef nonnull @__func__.ci_populate_ulv_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.then21_crit_edge, label %do.end.i.i

if.then.i.i.if.then21_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.113) #12
  br label %if.then21

do.end7.i.i:                                      ; preds = %if.then18
  %90 = ptrtoint ptr %ulv_voltage.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ulv_voltage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp8.i.i = icmp eq i32 %91, 0
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ulv_supported.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %87, i32 0, i32 55
  %92 = ptrtoint ptr %ulv_supported.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %ulv_supported.i.i, align 2
  br label %do.end30

if.end10.i.i:                                     ; preds = %do.end7.i.i
  %voltage_control.i.i506 = getelementptr inbounds %struct.smu7_hwmgr, ptr %87, i32 0, i32 7
  %93 = ptrtoint ptr %voltage_control.i.i506 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %voltage_control.i.i506, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp11.not.i.i = icmp eq i32 %94, 2
  %dyn_state23.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %95 = ptrtoint ptr %dyn_state23.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dyn_state23.i.i, align 4
  %v27.i.i = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, ptr %96, i32 2
  %97 = ptrtoint ptr %v27.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %v27.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %91)
  %cmp28.i.i = icmp ult i32 %98, %91
  br i1 %cmp11.not.i.i, label %if.else22.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  br i1 %cmp28.i.i, label %if.then14.i.i507, label %if.else.i.i509

if.then14.i.i507:                                 ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %VddcOffset.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 33, i32 2
  %99 = ptrtoint ptr %VddcOffset.i.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 0, ptr %VddcOffset.i.i, align 1
  br label %if.end41.i.i

if.else.i.i509:                                   ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %98, %91
  %conv.i.i508 = trunc i32 %sub.i.i to i16
  %VddcOffset20.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 33, i32 2
  %100 = ptrtoint ptr %VddcOffset20.i.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %conv.i.i508, ptr %VddcOffset20.i.i, align 1
  br label %if.end41.i.i

if.else22.i.i:                                    ; preds = %if.end10.i.i
  br i1 %cmp28.i.i, label %if.then30.i.i, label %if.else31.i.i

if.then30.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %VddcOffsetVid.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 33, i32 3
  %101 = ptrtoint ptr %VddcOffsetVid.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %VddcOffsetVid.i.i, align 1
  br label %if.end41.i.i

if.else31.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub37.i.i = sub i32 %98, %91
  %mul.i.i = mul i32 %sub37.i.i, 100
  %div.i.i = udiv i32 %mul.i.i, 625
  %conv38.i.i = trunc i32 %div.i.i to i8
  %VddcOffsetVid39.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 33, i32 3
  %102 = ptrtoint ptr %VddcOffsetVid39.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv38.i.i, ptr %VddcOffsetVid39.i.i, align 1
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.else31.i.i, %if.then30.i.i, %if.else.i.i509, %if.then14.i.i507
  %VddcPhase.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 33, i32 4
  %103 = ptrtoint ptr %VddcPhase.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %VddcPhase.i.i, align 1
  br label %do.end30

if.then21:                                        ; preds = %do.end.i.i, %if.then.i.i.if.then21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ulv_voltage.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %voltage_response_time.i.i) #8
  %call22 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %do.end

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.23) #12
  br label %cleanup

do.end30:                                         ; preds = %if.end41.i.i, %if.then9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ulv_voltage.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %voltage_response_time.i.i) #8
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %104 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write_ind_register, align 4
  call void %109(ptr noundef %105, i32 noundef 1, i32 noundef -1071644324, i32 noundef 262197) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end16.if.end32_crit_edge
  %call33 = call i32 @ci_populate_all_graphic_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp35 = icmp eq i32 %call33, 0
  br i1 %cmp35, label %do.end48, label %if.then36

if.then36:                                        ; preds = %if.end32
  %call37 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.24, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.cleanup_crit_edge, label %do.end42

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.27) #12
  br label %cleanup

do.end48:                                         ; preds = %if.end32
  %call49 = call i32 @ci_populate_all_memory_levels(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp51 = icmp eq i32 %call49, 0
  br i1 %cmp51, label %do.end64, label %if.then52

if.then52:                                        ; preds = %do.end48
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.28, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.cleanup_crit_edge, label %do.end58

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.31) #12
  br label %cleanup

do.end64:                                         ; preds = %do.end48
  %110 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %backend, align 4
  %112 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %smu_backend, align 4
  %pcie_speed_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %111, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end64
  %i.01.i = phi i32 [ 0, %do.end64 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %value.i = getelementptr %struct.smu7_dpm_table, ptr %111, i32 0, i32 2, i32 1, i32 %i.01.i, i32 1
  %114 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %value.i, align 4
  %conv.i = trunc i32 %115 to i8
  %arrayidx3.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 27, i32 %i.01.i
  %116 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %param1.i = getelementptr %struct.smu7_dpm_table, ptr %111, i32 0, i32 2, i32 1, i32 %i.01.i, i32 2
  %117 = ptrtoint ptr %param1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %param1.i, align 4
  %call.i = call zeroext i8 @encode_pcie_lane_width(i32 noundef %118) #8
  %PcieLaneCount.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 27, i32 %i.01.i, i32 1
  %119 = ptrtoint ptr %PcieLaneCount.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %call.i, ptr %PcieLaneCount.i, align 1
  %EnabledForActivity.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 27, i32 %i.01.i, i32 2
  %120 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %EnabledForActivity.i, align 1
  %DownT.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 27, i32 %i.01.i, i32 4
  %121 = ptrtoint ptr %DownT.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 5, ptr %DownT.i, align 1
  %UpT.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 27, i32 %i.01.i, i32 5
  %122 = ptrtoint ptr %UpT.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 30, ptr %UpT.i, align 1
  %inc.i = add i32 %i.01.i, 1
  %123 = ptrtoint ptr %pcie_speed_table.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pcie_speed_table.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %124
  br i1 %cmp.not.i, label %ci_populate_smc_link_level.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ci_populate_smc_link_level.exit:                  ; preds = %for.body.i
  %conv17.i = trunc i32 %124 to i8
  %LinkLevelCount.i = getelementptr inbounds %struct.ci_smumgr, ptr %113, i32 0, i32 6, i32 16
  %125 = ptrtoint ptr %LinkLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv17.i, ptr %LinkLevelCount.i, align 2
  %call19.i = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %pcie_speed_table.i) #8
  %pcie_dpm_enable_mask.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %111, i32 0, i32 70, i32 6
  %126 = ptrtoint ptr %pcie_dpm_enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call19.i, ptr %pcie_dpm_enable_mask.i, align 4
  %127 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %backend, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i) #8
  %129 = call ptr @memset(ptr %dividers.i, i32 255, i32 16)
  %clock_registers.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11
  %130 = ptrtoint ptr %clock_registers.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %clock_registers.i, align 4
  %vCG_SPLL_FUNC_CNTL_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 1
  %132 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %vCG_SPLL_FUNC_CNTL_2.i, align 4
  %vDLL_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 6
  %134 = ptrtoint ptr %vDLL_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vDLL_CNTL.i, align 4
  %vMCLK_PWRMGT_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 7
  %136 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %vMCLK_PWRMGT_CNTL.i, align 4
  %ACPILevel.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28
  %138 = ptrtoint ptr %ACPILevel.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %ACPILevel.i, align 1
  %and.i = and i32 %139, -2
  store i32 %and.i, ptr %ACPILevel.i, align 1
  %acpi_vddc.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 13
  %140 = ptrtoint ptr %acpi_vddc.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %acpi_vddc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %tobool.not.i = icmp eq i16 %141, 0
  br i1 %tobool.not.i, label %if.else.i, label %ci_populate_smc_link_level.exit.if.end.i_crit_edge

ci_populate_smc_link_level.exit.if.end.i_crit_edge: ; preds = %ci_populate_smc_link_level.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %ci_populate_smc_link_level.exit
  call void @__sanitizer_cov_trace_pc() #10
  %min_vddc_in_pptable.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 27
  %142 = ptrtoint ptr %min_vddc_in_pptable.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %min_vddc_in_pptable.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %ci_populate_smc_link_level.exit.if.end.i_crit_edge
  %mul.sink.in.in.i = phi i16 [ %143, %if.else.i ], [ %141, %ci_populate_smc_link_level.exit.if.end.i_crit_edge ]
  %mul.sink.in.i = zext i16 %mul.sink.in.in.i to i32
  %mul.sink.i = shl nuw nsw i32 %mul.sink.in.i, 2
  %144 = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 1
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %mul.sink.i, ptr %144, align 1
  %vddc_phase_shed_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 67
  %146 = ptrtoint ptr %vddc_phase_shed_control.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %vddc_phase_shed_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool11.not.i = icmp eq i8 %147, 0
  %cond.i = zext i1 %tobool11.not.i to i32
  %MinVddcPhases.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 2
  %148 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_storeN_noabort(i32 %148, i32 4)
  store i32 %cond.i, ptr %MinVddcPhases.i, align 1
  %call.i512 = call i32 @atomctrl_get_reference_clock(ptr noundef %hwmgr) #8
  %SclkFrequency.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 3
  %149 = ptrtoint ptr %SclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %call.i512, ptr %SclkFrequency.i, align 1
  %call16.i = call i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %call.i512, ptr noundef nonnull %dividers.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i513 = icmp eq i32 %call16.i, 0
  br i1 %cmp.i513, label %do.end27.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i
  %call19.i514 = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_smc_acpi_level._rs, ptr noundef nonnull @__func__.ci_populate_smc_acpi_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i514)
  %tobool20.not.i = icmp eq i32 %call19.i514, 0
  br i1 %tobool20.not.i, label %if.then18.i.if.then84_crit_edge, label %do.end.i

if.then18.i.if.then84_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then84

do.end.i:                                         ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.114) #12
  br label %if.then84

do.end27.i:                                       ; preds = %if.end.i
  %150 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dividers.i, align 4
  %conv28.i = trunc i32 %151 to i8
  %SclkDid.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 4
  %152 = ptrtoint ptr %SclkDid.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv28.i, ptr %SclkDid.i, align 1
  %DisplayWatermark.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 5
  %153 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %DeepSleepDivId.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 6
  %154 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %DeepSleepDivId.i, align 1
  %and33.i = and i32 %131, -4
  %or34.i = or i32 %and33.i, 1
  %and35.i = and i32 %133, -512
  %or36.i = or i32 %and35.i, 4
  %CgSpllFuncCntl.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 8
  %155 = ptrtoint ptr %CgSpllFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store i32 %or34.i, ptr %CgSpllFuncCntl.i, align 1
  %CgSpllFuncCntl2.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 9
  %156 = ptrtoint ptr %CgSpllFuncCntl2.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 %or36.i, ptr %CgSpllFuncCntl2.i, align 1
  %vCG_SPLL_FUNC_CNTL_3.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 2
  %157 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %vCG_SPLL_FUNC_CNTL_3.i, align 4
  %CgSpllFuncCntl3.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 10
  %159 = ptrtoint ptr %CgSpllFuncCntl3.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 4)
  store i32 %158, ptr %CgSpllFuncCntl3.i, align 1
  %vCG_SPLL_FUNC_CNTL_4.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 3
  %160 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vCG_SPLL_FUNC_CNTL_4.i, align 4
  %CgSpllFuncCntl4.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 11
  %162 = ptrtoint ptr %CgSpllFuncCntl4.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %161, ptr %CgSpllFuncCntl4.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 4
  %163 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM.i, align 4
  %SpllSpreadSpectrum.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 12
  %165 = ptrtoint ptr %SpllSpreadSpectrum.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %164, ptr %SpllSpreadSpectrum.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 5
  %166 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i, align 4
  %SpllSpreadSpectrum2.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 13
  %168 = ptrtoint ptr %SpllSpreadSpectrum2.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 %167, ptr %SpllSpreadSpectrum2.i, align 1
  %CcPwrDynRm.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 14
  %169 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 28, i32 15
  %170 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %171 = ptrtoint ptr %144 to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %144, align 1
  %MemoryACPILevel.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25
  %173 = ptrtoint ptr %MemoryACPILevel.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 %172, ptr %MemoryACPILevel.i, align 1
  %174 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %MinVddcPhases.i, align 1
  %MinVddcPhases95.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 1
  %176 = ptrtoint ptr %MinVddcPhases95.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 %175, ptr %MinVddcPhases95.i, align 1
  %vddci_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 40
  %177 = ptrtoint ptr %vddci_control.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %vddci_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp96.i = icmp eq i32 %178, 0
  br i1 %cmp96.i, label %do.end27.i.if.end118.i_crit_edge, label %if.else102.i

do.end27.i.if.end118.i_crit_edge:                 ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.else102.i:                                     ; preds = %do.end27.i
  %acpi_vddci.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 50
  %179 = ptrtoint ptr %acpi_vddci.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %acpi_vddci.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %cmp104.not.i = icmp eq i16 %180, 0
  br i1 %cmp104.not.i, label %if.else112.i, label %if.then106.i

if.then106.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv103.i = zext i16 %180 to i32
  %mul109.i = shl nuw nsw i32 %conv103.i, 2
  br label %if.end118.i

if.else112.i:                                     ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #10
  %min_vddci_in_pptable.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 29
  %181 = ptrtoint ptr %min_vddci_in_pptable.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %min_vddci_in_pptable.i, align 2
  %conv113.i = zext i16 %182 to i32
  %mul114.i = shl nuw nsw i32 %conv113.i, 2
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.else112.i, %if.then106.i, %do.end27.i.if.end118.i_crit_edge
  %mul109.sink.i = phi i32 [ %mul109.i, %if.then106.i ], [ %mul114.i, %if.else112.i ], [ %172, %do.end27.i.if.end118.i_crit_edge ]
  %MinVddci111.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 2
  %183 = ptrtoint ptr %MinVddci111.i to i32
  call void @__asan_storeN_noabort(i32 %183, i32 4)
  store i32 %mul109.sink.i, ptr %MinVddci111.i, align 1
  %184 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %backend, align 4
  %mvdd_control.i.i515 = getelementptr inbounds %struct.smu7_hwmgr, ptr %185, i32 0, i32 23
  %186 = ptrtoint ptr %mvdd_control.i.i515 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mvdd_control.i.i515, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp.not.i.i = icmp eq i32 %187, 0
  br i1 %cmp.not.i.i, label %if.end118.i.do.end96_crit_edge, label %for.cond.i.i

if.end118.i.do.end96_crit_edge:                   ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end96

for.cond.i.i:                                     ; preds = %if.end118.i
  %mvdd_dependency_on_mclk.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 3
  %188 = ptrtoint ptr %mvdd_dependency_on_mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mvdd_dependency_on_mclk.i.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp1.not.i.i516 = icmp eq i32 %191, 0
  br i1 %cmp1.not.i.i516, label %if.then12.i.i519, label %if.then122.i

if.then12.i.i519:                                 ; preds = %for.cond.i.i
  %call.i.i517 = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_mvdd_value._rs, ptr noundef nonnull @__func__.ci_populate_mvdd_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i517)
  %tobool.not.i.i518 = icmp eq i32 %call.i.i517, 0
  br i1 %tobool.not.i.i518, label %if.then12.i.i519.do.end96_crit_edge, label %do.end.i.i520

if.then12.i.i519.do.end96_crit_edge:              ; preds = %if.then12.i.i519
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end96

do.end.i.i520:                                    ; preds = %if.then12.i.i519
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.115) #12
  br label %do.end96

if.then122.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i.i = getelementptr %struct.smu7_hwmgr, ptr %185, i32 0, i32 43, i32 3, i32 0
  %192 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx7.i.i, align 4
  %conv123.i = zext i16 %193 to i32
  %mul124.i = shl nuw nsw i32 %conv123.i, 2
  br label %do.end96

if.then84:                                        ; preds = %do.end.i, %if.then18.i.if.then84_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #8
  %call85 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.36, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then84.cleanup_crit_edge, label %do.end90

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end90:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.39) #12
  br label %cleanup

do.end96:                                         ; preds = %if.then122.i, %do.end.i.i520, %if.then12.i.i519.do.end96_crit_edge, %if.end118.i.do.end96_crit_edge
  %.sink.i = phi i32 [ %mul124.i, %if.then122.i ], [ 0, %do.end.i.i520 ], [ 0, %if.then12.i.i519.do.end96_crit_edge ], [ 0, %if.end118.i.do.end96_crit_edge ]
  %MinMvdd128.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 3
  %194 = ptrtoint ptr %MinMvdd128.i to i32
  call void @__asan_storeN_noabort(i32 %194, i32 4)
  store i32 %.sink.i, ptr %MinMvdd128.i, align 1
  %or133.i = and i32 %137, -197377
  %and134.i = or i32 %or133.i, 196608
  %and140.i = and i32 %135, -50331649
  %DllCntl.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 26
  %195 = ptrtoint ptr %DllCntl.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 4)
  store i32 %and140.i, ptr %DllCntl.i, align 1
  %MclkPwrmgtCntl.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 25
  %196 = ptrtoint ptr %MclkPwrmgtCntl.i to i32
  call void @__asan_storeN_noabort(i32 %196, i32 4)
  store i32 %and134.i, ptr %MclkPwrmgtCntl.i, align 1
  %vMPLL_AD_FUNC_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 8
  %197 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %vMPLL_AD_FUNC_CNTL.i, align 4
  %MpllAdFuncCntl.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 23
  %199 = ptrtoint ptr %MpllAdFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %198, ptr %MpllAdFuncCntl.i, align 1
  %vMPLL_DQ_FUNC_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 9
  %200 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %vMPLL_DQ_FUNC_CNTL.i, align 4
  %MpllDqFuncCntl.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 24
  %202 = ptrtoint ptr %MpllDqFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %201, ptr %MpllDqFuncCntl.i, align 1
  %vMPLL_FUNC_CNTL.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 10
  %203 = ptrtoint ptr %vMPLL_FUNC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %vMPLL_FUNC_CNTL.i, align 4
  %MpllFuncCntl.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 20
  %205 = ptrtoint ptr %MpllFuncCntl.i to i32
  call void @__asan_storeN_noabort(i32 %205, i32 4)
  store i32 %204, ptr %MpllFuncCntl.i, align 1
  %vMPLL_FUNC_CNTL_1.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 11
  %206 = ptrtoint ptr %vMPLL_FUNC_CNTL_1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %vMPLL_FUNC_CNTL_1.i, align 4
  %MpllFuncCntl_1.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 21
  %208 = ptrtoint ptr %MpllFuncCntl_1.i to i32
  call void @__asan_storeN_noabort(i32 %208, i32 4)
  store i32 %207, ptr %MpllFuncCntl_1.i, align 1
  %vMPLL_FUNC_CNTL_2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 12
  %209 = ptrtoint ptr %vMPLL_FUNC_CNTL_2.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %vMPLL_FUNC_CNTL_2.i, align 4
  %MpllFuncCntl_2.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 22
  %211 = ptrtoint ptr %MpllFuncCntl_2.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 %210, ptr %MpllFuncCntl_2.i, align 1
  %vMPLL_SS1.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 13
  %212 = ptrtoint ptr %vMPLL_SS1.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %vMPLL_SS1.i, align 4
  %MpllSs1.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 27
  %214 = ptrtoint ptr %MpllSs1.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %213, ptr %MpllSs1.i, align 1
  %vMPLL_SS2.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 11, i32 14
  %215 = ptrtoint ptr %vMPLL_SS2.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %vMPLL_SS2.i, align 4
  %MpllSs2.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 28
  %217 = ptrtoint ptr %MpllSs2.i to i32
  call void @__asan_storeN_noabort(i32 %217, i32 4)
  store i32 %216, ptr %MpllSs2.i, align 1
  %EnabledForThrottle.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 11
  %218 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i521 = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 12
  %219 = ptrtoint ptr %EnabledForActivity.i521 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %EnabledForActivity.i521, align 1
  %UpH.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 13
  %220 = ptrtoint ptr %UpH.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %UpH.i, align 1
  %DownH.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 14
  %221 = ptrtoint ptr %DownH.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 100, ptr %DownH.i, align 1
  %VoltageDownH.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 15
  %222 = ptrtoint ptr %VoltageDownH.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %VoltageDownH.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %128, i32 0, i32 102, i32 7
  %223 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 17
  %225 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %225, i32 2)
  store i16 %224, ptr %ActivityLevel.i, align 1
  %EdcReadEnable.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 25, i32 5
  %226 = call ptr @memset(ptr %EdcReadEnable.i, i32 0, i32 5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i522) #8
  %227 = call ptr @memset(ptr %dividers.i522, i32 255, i32 16)
  %vce_clock_voltage_dependency_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 15
  %228 = ptrtoint ptr %vce_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %vce_clock_voltage_dependency_table.i, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %229, align 4
  %VceLevelCount.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 18
  %232 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %VceLevelCount.i, align 1
  %VceBootLevel.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 37
  %233 = ptrtoint ptr %VceBootLevel.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 0, ptr %VceBootLevel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %cmp82.not.i = icmp eq i8 %231, 0
  br i1 %cmp82.not.i, label %do.end96.if.then100_crit_edge, label %do.end96.for.body.i524_crit_edge

do.end96.for.body.i524_crit_edge:                 ; preds = %do.end96
  br label %for.body.i524

do.end96.if.then100_crit_edge:                    ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100

for.body.i524:                                    ; preds = %do.end29.i.for.body.i524_crit_edge, %do.end96.for.body.i524_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %do.end29.i.for.body.i524_crit_edge ], [ 0, %do.end96.for.body.i524_crit_edge ]
  %evclk.i = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %229, i32 0, i32 1, i32 %indvars.iv.i, i32 1
  %234 = ptrtoint ptr %evclk.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %evclk.i, align 4
  %arrayidx6.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 30, i32 %indvars.iv.i
  %236 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %236, i32 4)
  store i32 %235, ptr %arrayidx6.i, align 1
  %v.i = getelementptr %struct.phm_vce_clock_voltage_dependency_table, ptr %229, i32 0, i32 1, i32 %indvars.iv.i, i32 2
  %237 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %v.i, align 4
  %.tr.i = trunc i32 %238 to i16
  %conv10.i = shl i16 %.tr.i, 2
  %MinVoltage.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 30, i32 %indvars.iv.i, i32 1
  %239 = ptrtoint ptr %MinVoltage.i to i32
  call void @__asan_storeN_noabort(i32 %239, i32 2)
  store i16 %conv10.i, ptr %MinVoltage.i, align 1
  %MinPhases.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 30, i32 %indvars.iv.i, i32 2
  %240 = ptrtoint ptr %MinPhases.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 1, ptr %MinPhases.i, align 1
  %call.i523 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %235, ptr noundef nonnull %dividers.i522) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i523)
  %cmp21.i = icmp eq i32 %call.i523, 0
  br i1 %cmp21.i, label %do.end29.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i524
  %call23.i525 = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_smc_vce_level._rs, ptr noundef nonnull @__func__.ci_populate_smc_vce_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i525)
  %tobool.not.i526 = icmp eq i32 %call23.i525, 0
  br i1 %tobool.not.i526, label %if.then.i.if.then100_crit_edge, label %do.end.i527

if.then.i.if.then100_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100

do.end.i527:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.116) #12
  br label %if.then100

do.end29.i:                                       ; preds = %for.body.i524
  %241 = ptrtoint ptr %dividers.i522 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %dividers.i522, align 4
  %conv30.i = trunc i32 %242 to i8
  %Divider.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 30, i32 %indvars.iv.i, i32 3
  %243 = ptrtoint ptr %Divider.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv30.i, ptr %Divider.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %244 = ptrtoint ptr %VceLevelCount.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %VceLevelCount.i, align 1
  %246 = zext i8 %245 to i32
  %cmp.i528 = icmp ult i32 %indvars.iv.next.i, %246
  br i1 %cmp.i528, label %do.end29.i.for.body.i524_crit_edge, label %do.end112

do.end29.i.for.body.i524_crit_edge:               ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i524

if.then100:                                       ; preds = %do.end.i527, %if.then.i.if.then100_crit_edge, %do.end96.if.then100_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %do.end96.if.then100_crit_edge ], [ %call.i523, %if.then.i.if.then100_crit_edge ], [ %call.i523, %do.end.i527 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i522) #8
  %call101 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.40, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then100.cleanup_crit_edge, label %do.end106

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end106:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.43) #12
  br label %cleanup

do.end112:                                        ; preds = %do.end29.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i522) #8
  %call113 = call fastcc i32 @ci_populate_smc_acp_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp115 = icmp eq i32 %call113, 0
  br i1 %cmp115, label %do.end128, label %if.then116

if.then116:                                       ; preds = %do.end112
  %call117 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.44, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then116.cleanup_crit_edge, label %do.end122

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end122:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.47) #12
  br label %cleanup

do.end128:                                        ; preds = %do.end112
  %call129 = call fastcc i32 @ci_program_memory_timing_parameters(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp131 = icmp eq i32 %call129, 0
  br i1 %cmp131, label %do.end144, label %if.then132

if.then132:                                       ; preds = %do.end128
  %call133 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.48, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then132.cleanup_crit_edge, label %do.end138

if.then132.cleanup_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end138:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.51) #12
  br label %cleanup

do.end144:                                        ; preds = %do.end128
  %call145 = call fastcc i32 @ci_populate_smc_uvd_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp147 = icmp eq i32 %call145, 0
  br i1 %cmp147, label %do.end160, label %if.then148

if.then148:                                       ; preds = %do.end144
  %call149 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.52, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then148.cleanup_crit_edge, label %do.end154

if.then148.cleanup_crit_edge:                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end154:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.55) #12
  br label %cleanup

do.end160:                                        ; preds = %do.end144
  %UvdBootLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 36
  %GraphicsBootLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 44
  %247 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %GraphicsBootLevel, align 1
  %MemoryBootLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 52
  %248 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %MemoryBootLevel, align 1
  %249 = ptrtoint ptr %UvdBootLevel to i32
  call void @__asan_storeN_noabort(i32 %249, i32 4)
  store i32 0, ptr %UvdBootLevel, align 1
  call fastcc void @ci_populate_smc_boot_level(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  call fastcc void @ci_populate_smc_initial_state(ptr noundef %hwmgr)
  call fastcc void @ci_populate_bapm_parameters_in_dpm_table(ptr noundef %hwmgr)
  %UVDInterval = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 40
  %GraphicsVoltageChangeEnable = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 45
  %thermal_temp_setting = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 69
  %temperature_high = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 69, i32 1
  %250 = ptrtoint ptr %UVDInterval to i32
  call void @__asan_storeN_noabort(i32 %250, i32 4)
  store i32 16843009, ptr %UVDInterval, align 1
  %251 = call ptr @memset(ptr %GraphicsVoltageChangeEnable, i32 1, i32 5)
  %252 = ptrtoint ptr %temperature_high to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %temperature_high, align 4
  %mul = shl i32 %253, 8
  %div = sdiv i32 %mul, 1000
  %conv = trunc i32 %div to i16
  %TemperatureLimitHigh = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 50
  %254 = ptrtoint ptr %TemperatureLimitHigh to i32
  call void @__asan_storeN_noabort(i32 %254, i32 2)
  store i16 %conv, ptr %TemperatureLimitHigh, align 1
  %255 = ptrtoint ptr %thermal_temp_setting to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %thermal_temp_setting, align 4
  %mul210 = shl i32 %256, 8
  %div211 = sdiv i32 %mul210, 1000
  %conv212 = trunc i32 %div211 to i16
  %TemperatureLimitLow = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 51
  %257 = ptrtoint ptr %TemperatureLimitLow to i32
  call void @__asan_storeN_noabort(i32 %257, i32 2)
  store i16 %conv212, ptr %TemperatureLimitLow, align 1
  %MemoryVoltageChangeEnable = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 53
  %258 = ptrtoint ptr %MemoryVoltageChangeEnable to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 1, ptr %MemoryVoltageChangeEnable, align 1
  %MemoryInterval = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 54
  %259 = ptrtoint ptr %MemoryInterval to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 1, ptr %MemoryInterval, align 1
  %VoltageResponseTime = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 57
  %260 = ptrtoint ptr %VoltageResponseTime to i32
  call void @__asan_storeN_noabort(i32 %260, i32 2)
  store i16 0, ptr %VoltageResponseTime, align 1
  %VddcVddciDelta = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 56
  %261 = ptrtoint ptr %VddcVddciDelta to i32
  call void @__asan_storeN_noabort(i32 %261, i32 2)
  store i16 4000, ptr %VddcVddciDelta, align 1
  %PhaseResponseTime = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 58
  %262 = ptrtoint ptr %PhaseResponseTime to i32
  call void @__asan_storeN_noabort(i32 %262, i32 2)
  store i16 0, ptr %PhaseResponseTime, align 1
  %MemoryThermThrottleEnable = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 55
  %263 = ptrtoint ptr %MemoryThermThrottleEnable to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 1, ptr %MemoryThermThrottleEnable, align 1
  %pcie_speed_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 2
  %264 = ptrtoint ptr %pcie_speed_table to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %pcie_speed_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp214.not = icmp eq i32 %265, 0
  br i1 %cmp214.not, label %if.then216, label %do.end228

if.then216:                                       ; preds = %do.end160
  %call217 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.68, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.then216.cleanup_crit_edge, label %do.end222

if.then216.cleanup_crit_edge:                     ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end222:                                        ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.71) #12
  br label %cleanup

do.end228:                                        ; preds = %do.end160
  %conv232 = trunc i32 %265 to i8
  %PCIeBootLinkLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 59
  %266 = ptrtoint ptr %PCIeBootLinkLevel to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %conv232, ptr %PCIeBootLinkLevel, align 1
  %PCIeGenInterval = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 60
  %267 = ptrtoint ptr %PCIeGenInterval to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 1, ptr %PCIeGenInterval, align 1
  call fastcc void @ci_populate_vr_config(ptr noundef %hwmgr, ptr noundef %smc_state_table)
  %VRConfig = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 22
  %268 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %268, i32 4)
  %269 = load i32, ptr %VRConfig, align 1
  %vr_config = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 101
  %270 = ptrtoint ptr %vr_config to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %vr_config, align 4
  %271 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %backend, align 4
  %voltage_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %272, i32 0, i32 7
  %273 = ptrtoint ptr %voltage_control.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %voltage_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %274)
  %cmp.i530 = icmp eq i32 %274, 2
  %spec.select.i = zext i1 %cmp.i530 to i8
  %275 = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 63
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %spec.select.i, ptr %275, align 1
  %ThermGpio = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 66
  %277 = ptrtoint ptr %ThermGpio to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 17, ptr %ThermGpio, align 1
  %SclkStepSize = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 34
  %278 = ptrtoint ptr %SclkStepSize to i32
  call void @__asan_storeN_noabort(i32 %278, i32 4)
  store i32 16384, ptr %SclkStepSize, align 1
  %call255 = call zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef %hwmgr, i32 noundef 61, ptr noundef nonnull %gpio_pin) #8
  br i1 %call255, label %if.then256, label %if.else

if.then256:                                       ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #10
  %uc_gpio_pin_bit_shift = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, ptr %gpio_pin, i32 0, i32 1
  %279 = ptrtoint ptr %uc_gpio_pin_bit_shift to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %uc_gpio_pin_bit_shift, align 2
  %VRHotGpio = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 64
  %281 = ptrtoint ptr %VRHotGpio to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %280, ptr %VRHotGpio, align 1
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %282 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %283, 4
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %if.end264

if.else:                                          ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #10
  %VRHotGpio260 = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 64
  %284 = ptrtoint ptr %VRHotGpio260 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 127, ptr %VRHotGpio260, align 1
  %arrayidx.i531 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %285 = ptrtoint ptr %arrayidx.i531 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx.i531, align 4
  %and1.i532 = and i32 %286, -5
  store i32 %and1.i532, ptr %arrayidx.i531, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.else, %if.then256
  %AcDcGpio = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 65
  %287 = ptrtoint ptr %AcDcGpio to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 127, ptr %AcDcGpio, align 1
  %SystemFlags265 = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 3
  %BootVddc = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 79
  %288 = ptrtoint ptr %BootVddc to i32
  call void @__asan_loadN_noabort(i32 %288, i32 2)
  %289 = load i16, ptr %BootVddc, align 1
  %mul286 = shl i16 %289, 2
  store i16 %mul286, ptr %BootVddc, align 1
  %BootVddci = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 80
  %290 = ptrtoint ptr %BootVddci to i32
  call void @__asan_loadN_noabort(i32 %290, i32 2)
  %291 = load i16, ptr %BootVddci, align 1
  %mul290 = shl i16 %291, 2
  store i16 %mul290, ptr %BootVddci, align 1
  %BootMVdd = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 81
  %292 = ptrtoint ptr %BootMVdd to i32
  call void @__asan_loadN_noabort(i32 %292, i32 2)
  %293 = load i16, ptr %BootMVdd, align 1
  %mul294 = shl i16 %293, 2
  store i16 %mul294, ptr %BootMVdd, align 1
  %dpm_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 1
  %294 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %295, 108
  %call298 = call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %SystemFlags265, i32 noundef 1916, i32 noundef 262144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %cmp300 = icmp eq i32 %call298, 0
  br i1 %cmp300, label %do.end314, label %if.then302

if.then302:                                       ; preds = %if.end264
  %call303 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.76, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.then302.cleanup_crit_edge, label %do.end308

if.then302.cleanup_crit_edge:                     ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end308:                                        ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #10
  %call310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.79) #12
  br label %cleanup

do.end314:                                        ; preds = %if.end264
  %call315 = call fastcc i32 @ci_populate_initial_mc_reg_table(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %cmp317 = icmp eq i32 %call315, 0
  br i1 %cmp317, label %do.end331, label %if.then319

if.then319:                                       ; preds = %do.end314
  %call320 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.80, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call320)
  %tobool321.not = icmp eq i32 %call320, 0
  br i1 %tobool321.not, label %if.then319.cleanup_crit_edge, label %do.end325

if.then319.cleanup_crit_edge:                     ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end325:                                        ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #10
  %call327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.83) #12
  br label %cleanup

do.end331:                                        ; preds = %do.end314
  %call332 = call fastcc i32 @ci_populate_pm_fuses(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332)
  %cmp334 = icmp eq i32 %call332, 0
  br i1 %cmp334, label %do.end348, label %if.then336

if.then336:                                       ; preds = %do.end331
  %call337 = call i32 @___ratelimit(ptr noundef nonnull @ci_init_smc_table._rs.84, ptr noundef nonnull @__func__.ci_init_smc_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call337)
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %if.then336.cleanup_crit_edge, label %do.end342

if.then336.cleanup_crit_edge:                     ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end342:                                        ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #10
  %call344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.87) #12
  br label %cleanup

do.end348:                                        ; preds = %do.end331
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ci_start_smc(ptr noundef %hwmgr)
  br label %cleanup

cleanup:                                          ; preds = %do.end348, %do.end342, %if.then336.cleanup_crit_edge, %do.end325, %if.then319.cleanup_crit_edge, %do.end308, %if.then302.cleanup_crit_edge, %do.end222, %if.then216.cleanup_crit_edge, %do.end154, %if.then148.cleanup_crit_edge, %do.end138, %if.then132.cleanup_crit_edge, %do.end122, %if.then116.cleanup_crit_edge, %do.end106, %if.then100.cleanup_crit_edge, %do.end90, %if.then84.cleanup_crit_edge, %do.end58, %if.then52.cleanup_crit_edge, %do.end42, %if.then36.cleanup_crit_edge, %do.end, %if.then21.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end348 ], [ %call.i.i, %do.end ], [ %call.i.i, %if.then21.cleanup_crit_edge ], [ %call33, %do.end42 ], [ %call33, %if.then36.cleanup_crit_edge ], [ %call49, %do.end58 ], [ %call49, %if.then52.cleanup_crit_edge ], [ %call16.i, %do.end90 ], [ %call16.i, %if.then84.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end106 ], [ %retval.0.i.ph, %if.then100.cleanup_crit_edge ], [ %call113, %do.end122 ], [ %call113, %if.then116.cleanup_crit_edge ], [ %call129, %do.end138 ], [ %call129, %if.then132.cleanup_crit_edge ], [ %call145, %do.end154 ], [ %call145, %if.then148.cleanup_crit_edge ], [ -22, %do.end222 ], [ -22, %if.then216.cleanup_crit_edge ], [ %call298, %do.end308 ], [ %call298, %if.then302.cleanup_crit_edge ], [ %call315, %do.end325 ], [ %call315, %if.then319.cleanup_crit_edge ], [ %call332, %do.end342 ], [ %call332, %if.then336.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_pin) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_populate_all_graphic_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %dividers.i.i = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  %ss_info.i.i = alloca %struct.pp_atomctrl_internal_ss_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %dpm_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %5, 296
  %GraphicsLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 24
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp61.not = icmp eq i32 %7, 0
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %uc_pll_ref_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 3
  %ul_fb_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 2
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %uc_pll_post_div.i.i = getelementptr inbounds %struct.pp_atomctrl_clock_dividers_vi, ptr %dividers.i.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 2
  %dyn_state.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %vddc_phase_shed_limits_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 14
  %arrayidx.i92.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.062, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %12 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %backend, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers.i.i) #8
  %14 = call ptr @memset(ptr %dividers.i.i, i32 255, i32 16)
  %vCG_SPLL_FUNC_CNTL_3.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 11, i32 2
  %15 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vCG_SPLL_FUNC_CNTL_3.i.i, align 4
  %vCG_SPLL_FUNC_CNTL_4.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 11, i32 3
  %17 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vCG_SPLL_FUNC_CNTL_4.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 11, i32 4
  %19 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM_2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 11, i32 5
  %21 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i, align 4
  %call.i.i = call i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %11, ptr noundef nonnull %dividers.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end11.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body
  %call5.i.i = call i32 @___ratelimit(ptr noundef nonnull @ci_calculate_sclk_params._rs, ptr noundef nonnull @__func__.ci_calculate_sclk_params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.ci_calculate_sclk_params.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.ci_calculate_sclk_params.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_calculate_sclk_params.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.114) #12
  br label %ci_calculate_sclk_params.exit.i

do.end11.i.i:                                     ; preds = %for.body
  %call12.i.i = call i32 @atomctrl_get_reference_clock(ptr noundef %hwmgr) #8
  %23 = ptrtoint ptr %uc_pll_ref_div.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %uc_pll_ref_div.i.i, align 4
  %conv.i.i = zext i8 %24 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %25 = ptrtoint ptr %ul_fb_div.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ul_fb_div.i.i, align 4
  %and.i.i = and i32 %26, 67108863
  %and22.i.i = and i32 %16, -335544320
  %or25.i.i = or i32 %and22.i.i, %and.i.i
  %or27.i.i = or i32 %or25.i.i, 268435456
  %27 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %28, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %do.end11.i.i.if.end52.i.i_crit_edge, label %if.then29.i.i

do.end11.i.i.if.end52.i.i_crit_edge:              ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i

if.then29.i.i:                                    ; preds = %do.end11.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ss_info.i.i) #8
  %29 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %ss_info.i.i, align 4, !annotation !399
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %8, align 4, !annotation !399
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %9, align 4, !annotation !399
  %32 = ptrtoint ptr %uc_pll_post_div.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %uc_pll_post_div.i.i, align 1
  %conv31.i.i = zext i8 %33 to i32
  %mul.i.i = mul i32 %11, %conv31.i.i
  %call32.i.i = call i32 @atomctrl_get_engine_clock_spread_spectrum(ptr noundef %hwmgr, i32 noundef %mul.i.i, ptr noundef nonnull %ss_info.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %if.then29.i.i.if.end51.i.i_crit_edge

if.then29.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i.i

if.then34.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul35.i.i = mul i32 %call12.i.i, 5
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %8, align 4
  %mul36.i.i = mul i32 %35, %add.i.i
  %div.i.i = udiv i32 %mul35.i.i, %mul36.i.i
  %36 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ss_info.i.i, align 4
  %mul37.i.i = shl nuw nsw i32 %and.i.i, 2
  %mul38.i.i = mul i32 %mul37.i.i, %37
  %mul39.i.i = mul i32 %div.i.i, 10000
  %div40.i.i = udiv i32 %mul38.i.i, %mul39.i.i
  %and41.i.i = and i32 %20, -65522
  %shl42.i.i = shl i32 %div.i.i, 4
  %and43.i.i = and i32 %shl42.i.i, 65520
  %or44.i.i = or i32 %and41.i.i, %and43.i.i
  %or46.i.i = or i32 %or44.i.i, 1
  %and47.i.i = and i32 %22, -67108864
  %and49.i.i = and i32 %div40.i.i, 67108863
  %or50.i.i = or i32 %and49.i.i, %and47.i.i
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then34.i.i, %if.then29.i.i.if.end51.i.i_crit_edge
  %cg_spll_spread_spectrum.0.i.i = phi i32 [ %20, %if.then29.i.i.if.end51.i.i_crit_edge ], [ %or46.i.i, %if.then34.i.i ]
  %cg_spll_spread_spectrum_2.0.i.i = phi i32 [ %22, %if.then29.i.i.if.end51.i.i_crit_edge ], [ %or50.i.i, %if.then34.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ss_info.i.i) #8
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.end51.i.i, %do.end11.i.i.if.end52.i.i_crit_edge
  %cg_spll_spread_spectrum.1.i.i = phi i32 [ %cg_spll_spread_spectrum.0.i.i, %if.end51.i.i ], [ %20, %do.end11.i.i.if.end52.i.i_crit_edge ]
  %cg_spll_spread_spectrum_2.1.i.i = phi i32 [ %cg_spll_spread_spectrum_2.0.i.i, %if.end51.i.i ], [ %22, %do.end11.i.i.if.end52.i.i_crit_edge ]
  %SclkFrequency.i.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 3
  %38 = ptrtoint ptr %SclkFrequency.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %11, ptr %SclkFrequency.i.i, align 1
  %CgSpllFuncCntl3.i.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 6
  %39 = ptrtoint ptr %CgSpllFuncCntl3.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %or27.i.i, ptr %CgSpllFuncCntl3.i.i, align 1
  %CgSpllFuncCntl4.i.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 7
  %40 = ptrtoint ptr %CgSpllFuncCntl4.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %18, ptr %CgSpllFuncCntl4.i.i, align 1
  %SpllSpreadSpectrum.i.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 8
  %41 = ptrtoint ptr %SpllSpreadSpectrum.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %cg_spll_spread_spectrum.1.i.i, ptr %SpllSpreadSpectrum.i.i, align 1
  %SpllSpreadSpectrum2.i.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 9
  %42 = ptrtoint ptr %SpllSpreadSpectrum2.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %cg_spll_spread_spectrum_2.1.i.i, ptr %SpllSpreadSpectrum2.i.i, align 1
  %43 = ptrtoint ptr %dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dividers.i.i, align 4
  %conv53.i.i = trunc i32 %44 to i8
  %SclkDid.i.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 12
  %45 = ptrtoint ptr %SclkDid.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv53.i.i, ptr %SclkDid.i.i, align 1
  br label %ci_calculate_sclk_params.exit.i

ci_calculate_sclk_params.exit.i:                  ; preds = %if.end52.i.i, %do.end.i.i, %if.then.i.i.ci_calculate_sclk_params.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers.i.i) #8
  %46 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dyn_state.i, align 4
  %MinVddc.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i84.i = icmp eq i32 %49, 0
  br i1 %cmp.i84.i, label %ci_populate_single_graphic_level.exit, label %ci_calculate_sclk_params.exit.i.for.body.i.i_crit_edge

ci_calculate_sclk_params.exit.i.for.body.i.i_crit_edge: ; preds = %ci_calculate_sclk_params.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %ci_calculate_sclk_params.exit.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %ci_calculate_sclk_params.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %47, i32 0, i32 1, i32 %i.03.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %11)
  %cmp3.not.i.i = icmp ult i32 %51, %11
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.if.end.i_crit_edge

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %49
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %49, -1
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i.i, %for.body.i.i.if.end.i_crit_edge
  %sub.sink.i.i = phi i32 [ %sub.i.i, %for.end.i.i ], [ %i.03.i.i, %for.body.i.i.if.end.i_crit_edge ]
  %v10.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %47, i32 0, i32 1, i32 %sub.sink.i.i, i32 1
  %52 = ptrtoint ptr %v10.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %v10.i.i, align 4
  %54 = ptrtoint ptr %MinVddc.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %MinVddc.i, align 4
  %SclkFrequency.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 3
  %55 = ptrtoint ptr %SclkFrequency.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %11, ptr %SclkFrequency.i, align 1
  %MinVddcPhases.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 2
  %56 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 1, ptr %MinVddcPhases.i, align 1
  %vddc_phase_shed_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 67
  %57 = ptrtoint ptr %vddc_phase_shed_control.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vddc_phase_shed_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool3.not.i = icmp eq i8 %58, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  %59 = ptrtoint ptr %vddc_phase_shed_limits_table.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vddc_phase_shed_limits_table.i, align 4
  %61 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %MinVddcPhases.i, align 4
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp2.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp2.not.i.i, label %if.then4.i.if.end7.i_crit_edge, label %if.then4.i.for.body.i86.i_crit_edge

if.then4.i.for.body.i86.i_crit_edge:              ; preds = %if.then4.i
  br label %for.body.i86.i

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.body.i86.i:                                   ; preds = %for.inc.i90.i.for.body.i86.i_crit_edge, %if.then4.i.for.body.i86.i_crit_edge
  %i.03.i85.i = phi i32 [ %inc.i88.i, %for.inc.i90.i.for.body.i86.i_crit_edge ], [ 0, %if.then4.i.for.body.i86.i_crit_edge ]
  %Sclk.i.i = getelementptr %struct.phm_phase_shedding_limits_table, ptr %60, i32 0, i32 1, i32 %i.03.i85.i, i32 1
  %64 = ptrtoint ptr %Sclk.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %Sclk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %11)
  %cmp1.i.i = icmp ugt i32 %65, %11
  br i1 %cmp1.i.i, label %if.then.i87.i, label %for.inc.i90.i

if.then.i87.i:                                    ; preds = %for.body.i86.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %i.03.i85.i, ptr %MinVddcPhases.i, align 4
  br label %if.end7.i

for.inc.i90.i:                                    ; preds = %for.body.i86.i
  %inc.i88.i = add nuw i32 %i.03.i85.i, 1
  %exitcond.not.i89.i = icmp eq i32 %inc.i88.i, %63
  br i1 %exitcond.not.i89.i, label %for.inc.i90.i.if.end7.i_crit_edge, label %for.inc.i90.i.for.body.i86.i_crit_edge

for.inc.i90.i.for.body.i86.i_crit_edge:           ; preds = %for.inc.i90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i86.i

for.inc.i90.i.if.end7.i_crit_edge:                ; preds = %for.inc.i90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %for.inc.i90.i.if.end7.i_crit_edge, %if.then.i87.i, %if.then4.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %sclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 102, i32 3
  %67 = ptrtoint ptr %sclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %sclk_activity.i, align 4
  %ActivityLevel.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 5
  %69 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %68, ptr %ActivityLevel.i, align 1
  %CcPwrDynRm.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 10
  %70 = ptrtoint ptr %CcPwrDynRm.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 0, ptr %CcPwrDynRm.i, align 1
  %CcPwrDynRm1.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 11
  %71 = ptrtoint ptr %CcPwrDynRm1.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 0, ptr %CcPwrDynRm1.i, align 1
  %EnabledForActivity.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 14
  %72 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %EnabledForActivity.i, align 1
  %EnabledForThrottle.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 15
  %73 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %sclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 102, i32 1
  %74 = ptrtoint ptr %sclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sclk_up_hyst.i, align 1
  %UpH.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 16
  %76 = ptrtoint ptr %UpH.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %UpH.i, align 1
  %sclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %13, i32 0, i32 102, i32 2
  %77 = ptrtoint ptr %sclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %sclk_down_hyst.i, align 2
  %DownH.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 17
  %79 = ptrtoint ptr %DownH.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %DownH.i, align 1
  %VoltageDownH.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 18
  %80 = ptrtoint ptr %VoltageDownH.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %VoltageDownH.i, align 1
  %PowerThrottle.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 19
  %81 = ptrtoint ptr %PowerThrottle.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %PowerThrottle.i, align 1
  %82 = ptrtoint ptr %arrayidx.i92.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i92.i, align 4
  %and1.i.i = and i32 %83, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i93.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i93.not.i, label %if.end7.i.if.end_crit_edge, label %if.then11.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %11)
  %cmp1.i94.i = icmp ult i32 %11, 800
  br i1 %cmp1.i94.i, label %do.end.i96.i, label %for.cond.i.i

do.end.i96.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #12
  br label %ci_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25599, i32 %11)
  %cmp3.i.i = icmp ugt i32 %11, 25599
  br i1 %cmp3.i.i, label %for.cond.i.i.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i.1

for.cond.i.i.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i.1:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %11)
  %cmp3.i.i.1 = icmp ugt i32 %11, 12799
  br i1 %cmp3.i.i.1, label %for.cond.i.i.1.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i.2

for.cond.i.i.1.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i.2:                                   ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %11)
  %cmp3.i.i.2 = icmp ugt i32 %11, 6399
  br i1 %cmp3.i.i.2, label %for.cond.i.i.2.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i.3

for.cond.i.i.2.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i.3:                                   ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3199, i32 %11)
  %cmp3.i.i.3 = icmp ugt i32 %11, 3199
  br i1 %cmp3.i.i.3, label %for.cond.i.i.3.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i.4

for.cond.i.i.3.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i.4:                                   ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1599, i32 %11)
  %cmp3.i.i.4 = icmp ugt i32 %11, 1599
  %spec.select = select i1 %cmp3.i.i.4, i8 1, i8 0
  br label %ci_get_sleep_divider_id_from_clock.exit.i

ci_get_sleep_divider_id_from_clock.exit.i:        ; preds = %for.cond.i.i.4, %for.cond.i.i.3.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.cond.i.i.2.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.cond.i.i.1.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.cond.i.i.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge, %do.end.i96.i
  %retval.0.i97.i = phi i8 [ 0, %do.end.i96.i ], [ 5, %for.cond.i.i.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 4, %for.cond.i.i.1.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 3, %for.cond.i.i.2.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 2, %for.cond.i.i.3.ci_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ %spec.select, %for.cond.i.i.4 ]
  %DeepSleepDivId.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 20
  %84 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %retval.0.i97.i, ptr %DeepSleepDivId.i, align 1
  br label %if.end

ci_populate_single_graphic_level.exit:            ; preds = %ci_calculate_sclk_params.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #12
  br label %cleanup

if.end:                                           ; preds = %ci_get_sleep_divider_id_from_clock.exit.i, %if.end7.i.if.end_crit_edge
  %DisplayWatermark.i = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.062, i32 13
  %85 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %86 = ptrtoint ptr %MinVddc.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %MinVddc.i, align 1
  %mul.i = shl i32 %87, 2
  store i32 %mul.i, ptr %MinVddc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.062)
  %cmp4 = icmp ugt i32 %i.062, 1
  br i1 %cmp4, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %DeepSleepDivId = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 24, i32 %i.062, i32 20
  %88 = ptrtoint ptr %DeepSleepDivId to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %DeepSleepDivId, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %1, align 4
  %sub = add i32 %90, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %sub)
  %cmp12 = icmp eq i32 %i.062, %sub
  br i1 %cmp12, label %if.then13, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %DisplayWatermark = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 24, i32 %i.062, i32 13
  %91 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %DisplayWatermark, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end9.for.inc_crit_edge
  %inc = add nuw i32 %i.062, 1
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %93
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %EnabledForActivity = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 24, i32 0, i32 14
  %94 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %EnabledForActivity, align 2
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %1, align 4
  %conv = trunc i32 %96 to i8
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 14
  %97 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv, ptr %GraphicsDpmLevelCount, align 4
  %call25 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %1) #8
  %sclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 4
  %98 = ptrtoint ptr %sclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call25, ptr %sclk_dpm_enable_mask, align 4
  %call26 = call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %GraphicsLevel, i32 noundef 448, i32 noundef 262144)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %ci_populate_single_graphic_level.exit
  %retval.0 = phi i32 [ %call26, %for.end ], [ -22, %ci_populate_single_graphic_level.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_populate_all_memory_levels(ptr noundef %hwmgr) #0 align 64 {
entry:
  %mpll_param.i.i = alloca %struct.pp_atomctrl_memory_clock_param, align 4
  %ss_info.i.i = alloca %struct.pp_atomctrl_internal_ss_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %4 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmgr, align 4
  %dpm_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %7, 816
  %MemoryLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26
  %8 = call ptr @memset(ptr %MemoryLevel, i32 0, i32 432)
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp124.not = icmp eq i32 %10, 0
  br i1 %cmp124.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %vddc_dependency_on_mclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 2
  %vddci_dependency_on_mclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 1
  %mvdd_dependency_on_mclk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 3
  %vddc_phase_shed_limits_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 14
  %display_config.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 45
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %11 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 5
  %14 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 6
  %15 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 4
  %16 = getelementptr inbounds %struct.pp_atomctrl_memory_clock_param, ptr %mpll_param.i.i, i32 0, i32 2
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %17 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.pp_atomctrl_internal_ss_info, ptr %ss_info.i.i, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %i.0125 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  %value = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %i.0125, i32 1
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.not = icmp eq i32 %20, 0
  br i1 %cmp4.not, label %if.then, label %do.end10

if.then:                                          ; preds = %do.body
  %call = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_all_memory_levels._rs, ptr noundef nonnull @__func__.ci_populate_all_memory_levels) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.153) #12
  br label %cleanup

do.end10:                                         ; preds = %do.body
  %arrayidx17 = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125
  %21 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %backend, align 4
  %23 = ptrtoint ptr %vddc_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vddc_dependency_on_mclk.i, align 4
  %cmp.not.i = icmp eq ptr %24, null
  br i1 %cmp.not.i, label %do.end10.if.end12.i_crit_edge, label %if.then.i

do.end10.if.end12.i_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i:                                        ; preds = %do.end10
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 0
  br i1 %cmp.i.i, label %if.then4.i, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %24, i32 0, i32 1, i32 %i.03.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %20)
  %cmp3.not.i.i = icmp ult i32 %28, %20
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.ci_get_dependency_volt_by_clk.exit.thread.i_crit_edge

for.body.i.i.ci_get_dependency_volt_by_clk.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_get_dependency_volt_by_clk.exit.thread.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %26
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %26, -1
  br label %ci_get_dependency_volt_by_clk.exit.thread.i

ci_get_dependency_volt_by_clk.exit.thread.i:      ; preds = %for.end.i.i, %for.body.i.i.ci_get_dependency_volt_by_clk.exit.thread.i_crit_edge
  %sub.sink.i.i = phi i32 [ %sub.i.i, %for.end.i.i ], [ %i.03.i.i, %for.body.i.i.ci_get_dependency_volt_by_clk.exit.thread.i_crit_edge ]
  %v10.i.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %24, i32 0, i32 1, i32 %sub.sink.i.i, i32 1
  %29 = ptrtoint ptr %v10.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v10.i.i, align 4
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx17, align 4
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.then.i
  %call5.i = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_single_memory_level._rs, ptr noundef nonnull @__func__.ci_populate_single_memory_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then4.i.cleanup_crit_edge, label %do.end.i

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.154) #12
  br label %cleanup

if.end12.i:                                       ; preds = %ci_get_dependency_volt_by_clk.exit.thread.i, %do.end10.if.end12.i_crit_edge
  %32 = ptrtoint ptr %vddci_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vddci_dependency_on_mclk.i, align 4
  %cmp14.not.i = icmp eq ptr %33, null
  br i1 %cmp14.not.i, label %if.end12.i.if.end34.i_crit_edge, label %if.then15.i

if.end12.i.if.end34.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then15.i:                                      ; preds = %if.end12.i
  %MinVddci.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i285.i = icmp eq i32 %35, 0
  br i1 %cmp.i285.i, label %if.then21.i, label %if.then15.i.for.body.i289.i_crit_edge

if.then15.i.for.body.i289.i_crit_edge:            ; preds = %if.then15.i
  br label %for.body.i289.i

for.body.i289.i:                                  ; preds = %for.inc.i292.i.for.body.i289.i_crit_edge, %if.then15.i.for.body.i289.i_crit_edge
  %i.03.i286.i = phi i32 [ %inc.i290.i, %for.inc.i292.i.for.body.i289.i_crit_edge ], [ 0, %if.then15.i.for.body.i289.i_crit_edge ]
  %arrayidx.i287.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %33, i32 0, i32 1, i32 %i.03.i286.i
  %36 = ptrtoint ptr %arrayidx.i287.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i287.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %20)
  %cmp3.not.i288.i = icmp ult i32 %37, %20
  br i1 %cmp3.not.i288.i, label %for.inc.i292.i, label %for.body.i289.i.ci_get_dependency_volt_by_clk.exit299.thread.i_crit_edge

for.body.i289.i.ci_get_dependency_volt_by_clk.exit299.thread.i_crit_edge: ; preds = %for.body.i289.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_get_dependency_volt_by_clk.exit299.thread.i

for.inc.i292.i:                                   ; preds = %for.body.i289.i
  %inc.i290.i = add nuw i32 %i.03.i286.i, 1
  %exitcond.not.i291.i = icmp eq i32 %inc.i290.i, %35
  br i1 %exitcond.not.i291.i, label %for.end.i294.i, label %for.inc.i292.i.for.body.i289.i_crit_edge

for.inc.i292.i.for.body.i289.i_crit_edge:         ; preds = %for.inc.i292.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i289.i

for.end.i294.i:                                   ; preds = %for.inc.i292.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i293.i = add i32 %35, -1
  br label %ci_get_dependency_volt_by_clk.exit299.thread.i

ci_get_dependency_volt_by_clk.exit299.thread.i:   ; preds = %for.end.i294.i, %for.body.i289.i.ci_get_dependency_volt_by_clk.exit299.thread.i_crit_edge
  %sub.sink.i295.i = phi i32 [ %sub.i293.i, %for.end.i294.i ], [ %i.03.i286.i, %for.body.i289.i.ci_get_dependency_volt_by_clk.exit299.thread.i_crit_edge ]
  %v10.i296.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %33, i32 0, i32 1, i32 %sub.sink.i295.i, i32 1
  %38 = ptrtoint ptr %v10.i296.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %v10.i296.i, align 4
  %40 = ptrtoint ptr %MinVddci.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %MinVddci.i, align 4
  br label %if.end34.i

if.then21.i:                                      ; preds = %if.then15.i
  %call22.i = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_single_memory_level._rs.155, ptr noundef nonnull @__func__.ci_populate_single_memory_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then21.i.cleanup_crit_edge, label %do.end27.i

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end27.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.158) #12
  br label %cleanup

if.end34.i:                                       ; preds = %ci_get_dependency_volt_by_clk.exit299.thread.i, %if.end12.i.if.end34.i_crit_edge
  %41 = ptrtoint ptr %mvdd_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mvdd_dependency_on_mclk.i, align 4
  %cmp36.not.i = icmp eq ptr %42, null
  br i1 %cmp36.not.i, label %if.end34.i.if.end56.i_crit_edge, label %if.then37.i

if.end34.i.if.end56.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.then37.i:                                      ; preds = %if.end34.i
  %MinMvdd.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i300.i = icmp eq i32 %44, 0
  br i1 %cmp.i300.i, label %if.then43.i, label %if.then37.i.for.body.i304.i_crit_edge

if.then37.i.for.body.i304.i_crit_edge:            ; preds = %if.then37.i
  br label %for.body.i304.i

for.body.i304.i:                                  ; preds = %for.inc.i307.i.for.body.i304.i_crit_edge, %if.then37.i.for.body.i304.i_crit_edge
  %i.03.i301.i = phi i32 [ %inc.i305.i, %for.inc.i307.i.for.body.i304.i_crit_edge ], [ 0, %if.then37.i.for.body.i304.i_crit_edge ]
  %arrayidx.i302.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %42, i32 0, i32 1, i32 %i.03.i301.i
  %45 = ptrtoint ptr %arrayidx.i302.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i302.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %20)
  %cmp3.not.i303.i = icmp ult i32 %46, %20
  br i1 %cmp3.not.i303.i, label %for.inc.i307.i, label %for.body.i304.i.ci_get_dependency_volt_by_clk.exit314.thread.i_crit_edge

for.body.i304.i.ci_get_dependency_volt_by_clk.exit314.thread.i_crit_edge: ; preds = %for.body.i304.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_get_dependency_volt_by_clk.exit314.thread.i

for.inc.i307.i:                                   ; preds = %for.body.i304.i
  %inc.i305.i = add nuw i32 %i.03.i301.i, 1
  %exitcond.not.i306.i = icmp eq i32 %inc.i305.i, %44
  br i1 %exitcond.not.i306.i, label %for.end.i309.i, label %for.inc.i307.i.for.body.i304.i_crit_edge

for.inc.i307.i.for.body.i304.i_crit_edge:         ; preds = %for.inc.i307.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i304.i

for.end.i309.i:                                   ; preds = %for.inc.i307.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i308.i = add i32 %44, -1
  br label %ci_get_dependency_volt_by_clk.exit314.thread.i

ci_get_dependency_volt_by_clk.exit314.thread.i:   ; preds = %for.end.i309.i, %for.body.i304.i.ci_get_dependency_volt_by_clk.exit314.thread.i_crit_edge
  %sub.sink.i310.i = phi i32 [ %sub.i308.i, %for.end.i309.i ], [ %i.03.i301.i, %for.body.i304.i.ci_get_dependency_volt_by_clk.exit314.thread.i_crit_edge ]
  %v10.i311.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %42, i32 0, i32 1, i32 %sub.sink.i310.i, i32 1
  %47 = ptrtoint ptr %v10.i311.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %v10.i311.i, align 4
  %49 = ptrtoint ptr %MinMvdd.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %MinMvdd.i, align 4
  br label %if.end56.i

if.then43.i:                                      ; preds = %if.then37.i
  %call44.i = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_single_memory_level._rs.159, ptr noundef nonnull @__func__.ci_populate_single_memory_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then43.i.cleanup_crit_edge, label %do.end49.i

if.then43.i.cleanup_crit_edge:                    ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end49.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.162) #12
  br label %cleanup

if.end56.i:                                       ; preds = %ci_get_dependency_volt_by_clk.exit314.thread.i, %if.end34.i.if.end56.i_crit_edge
  %MinVddcPhases.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 1
  %50 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 1, ptr %MinVddcPhases.i, align 1
  %vddc_phase_shed_control.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %22, i32 0, i32 67
  %51 = ptrtoint ptr %vddc_phase_shed_control.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %vddc_phase_shed_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool57.not.i = icmp eq i8 %52, 0
  br i1 %tobool57.not.i, label %if.end56.i.if.end62.i_crit_edge, label %if.then58.i

if.end56.i.if.end62.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end56.i
  %53 = ptrtoint ptr %vddc_phase_shed_limits_table.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vddc_phase_shed_limits_table.i, align 4
  %55 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %MinVddcPhases.i, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp2.not.i.i = icmp eq i32 %57, 0
  br i1 %cmp2.not.i.i, label %if.then58.i.if.end62.i_crit_edge, label %if.then58.i.for.body.i316.i_crit_edge

if.then58.i.for.body.i316.i_crit_edge:            ; preds = %if.then58.i
  br label %for.body.i316.i

if.then58.i.if.end62.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

for.body.i316.i:                                  ; preds = %for.inc.i319.i.for.body.i316.i_crit_edge, %if.then58.i.for.body.i316.i_crit_edge
  %i.03.i315.i = phi i32 [ %inc.i317.i, %for.inc.i319.i.for.body.i316.i_crit_edge ], [ 0, %if.then58.i.for.body.i316.i_crit_edge ]
  %Mclk.i.i = getelementptr %struct.phm_phase_shedding_limits_table, ptr %54, i32 0, i32 1, i32 %i.03.i315.i, i32 2
  %58 = ptrtoint ptr %Mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %Mclk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %20)
  %cmp1.i.i = icmp ugt i32 %59, %20
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.inc.i319.i

if.then.i.i:                                      ; preds = %for.body.i316.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %MinVddcPhases.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %i.03.i315.i, ptr %MinVddcPhases.i, align 4
  br label %if.end62.i

for.inc.i319.i:                                   ; preds = %for.body.i316.i
  %inc.i317.i = add nuw i32 %i.03.i315.i, 1
  %exitcond.not.i318.i = icmp eq i32 %inc.i317.i, %57
  br i1 %exitcond.not.i318.i, label %for.inc.i319.i.if.end62.i_crit_edge, label %for.inc.i319.i.for.body.i316.i_crit_edge

for.inc.i319.i.for.body.i316.i_crit_edge:         ; preds = %for.inc.i319.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i316.i

for.inc.i319.i.if.end62.i_crit_edge:              ; preds = %for.inc.i319.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.end62.i:                                       ; preds = %for.inc.i319.i.if.end62.i_crit_edge, %if.then.i.i, %if.then58.i.if.end62.i_crit_edge, %if.end56.i.if.end62.i_crit_edge
  %EnabledForThrottle.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 11
  %61 = ptrtoint ptr %EnabledForThrottle.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %EnabledForThrottle.i, align 1
  %EnabledForActivity.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 12
  %62 = ptrtoint ptr %EnabledForActivity.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %EnabledForActivity.i, align 1
  %mclk_up_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %22, i32 0, i32 102, i32 5
  %63 = ptrtoint ptr %mclk_up_hyst.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %mclk_up_hyst.i, align 1
  %UpH.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 13
  %65 = ptrtoint ptr %UpH.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %UpH.i, align 1
  %mclk_down_hyst.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %22, i32 0, i32 102, i32 6
  %66 = ptrtoint ptr %mclk_down_hyst.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mclk_down_hyst.i, align 4
  %DownH.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 14
  %68 = ptrtoint ptr %DownH.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %DownH.i, align 1
  %VoltageDownH.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 15
  %69 = ptrtoint ptr %VoltageDownH.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %VoltageDownH.i, align 1
  %mclk_activity.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %22, i32 0, i32 102, i32 7
  %70 = ptrtoint ptr %mclk_activity.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %mclk_activity.i, align 2
  %ActivityLevel.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 17
  %72 = ptrtoint ptr %ActivityLevel.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %71, ptr %ActivityLevel.i, align 1
  %StrobeEnable.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 9
  %EdcReadEnable.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 5
  %EdcWriteEnable.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 6
  %DisplayWatermark.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 18
  %73 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %DisplayWatermark.i, align 1
  %74 = call ptr @memset(ptr %EdcReadEnable.i, i32 0, i32 5)
  %75 = ptrtoint ptr %display_config.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %display_config.i, align 4
  %num_display.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %num_display.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_display.i, align 4
  %num_existing_displays.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %22, i32 0, i32 68, i32 1
  %79 = ptrtoint ptr %num_existing_displays.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %num_existing_displays.i, align 4
  %80 = load ptr, ptr %display_config.i, align 4
  %vrefresh.i = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %vrefresh.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vrefresh.i, align 4
  %vrefresh67.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %22, i32 0, i32 68, i32 2
  %83 = ptrtoint ptr %vrefresh67.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %vrefresh67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %20)
  %cmp69.i = icmp ult i32 %20, 40001
  %conv.i = zext i1 %cmp69.i to i8
  %84 = ptrtoint ptr %StrobeEnable.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv.i, ptr %StrobeEnable.i, align 1
  %is_memory_gddr5.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %22, i32 0, i32 12
  %85 = ptrtoint ptr %is_memory_gddr5.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_memory_gddr5.i, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool71.not.i = icmp eq i8 %86, 0
  br i1 %tobool71.not.i, label %if.else126.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end62.i
  br i1 %cmp69.i, label %if.then.i322.i, label %if.else6.i.i

if.then.i322.i:                                   ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500, i32 %20)
  %cmp.i321.i = icmp ult i32 %20, 12500
  %87 = trunc i32 %20 to i16
  %div.lhs.trunc.i.i = add i16 %87, -10000
  %div26.i.i = udiv i16 %div.lhs.trunc.i.i, 2500
  %conv.i.i = trunc i16 %div26.i.i to i8
  %conv.i329.i = zext i16 %div26.i.i to i32
  %conv.i.sink.i = select i1 %cmp.i321.i, i8 0, i8 %conv.i.i
  %mc_para_index.0.i331.i = select i1 %cmp.i321.i, i32 0, i32 %conv.i329.i
  %88 = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 10
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv.i.sink.i, ptr %88, align 1
  %90 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %call97.i = call i32 %95(ptr noundef %91, i32 noundef 2713) #8
  %shr.i = lshr i32 %call97.i, 16
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %mc_para_index.0.i331.i)
  %cmp98.not.i = icmp ugt i32 %and.i, %mc_para_index.0.i331.i
  %96 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  br i1 %cmp98.not.i, label %if.else.i, label %if.then100.i

if.else6.i.i:                                     ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %20)
  %cmp7.i.i = icmp ult i32 %20, 65000
  br i1 %cmp7.i.i, label %if.else6.i.i.if.else122.i_crit_edge, label %if.else10.i.i

if.else6.i.i.if.else122.i_crit_edge:              ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else122.i

if.else10.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %20)
  %cmp11.i.i = icmp ugt i32 %20, 135000
  br i1 %cmp11.i.i, label %if.else10.i.i.if.else122.i_crit_edge, label %if.else14.i.i

if.else10.i.i.if.else122.i_crit_edge:             ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else122.i

if.else14.i.i:                                    ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub15.i.i = add nsw i32 %20, -60000
  %div16.i.i = udiv i32 %sub15.i.i, 5000
  %conv17.i.i = trunc i32 %div16.i.i to i8
  br label %if.else122.i

if.then100.i:                                     ; preds = %if.then.i322.i
  call void @__sanitizer_cov_trace_pc() #10
  %call105.i = call i32 %101(ptr noundef %97, i32 noundef 2709) #8
  %102 = and i32 %call105.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool108.i = icmp ne i32 %102, 0
  br label %if.end140.i

if.else.i:                                        ; preds = %if.then.i322.i
  call void @__sanitizer_cov_trace_pc() #10
  %call114.i = call i32 %101(ptr noundef %97, i32 noundef 2710) #8
  %103 = and i32 %call114.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool117.i = icmp ne i32 %103, 0
  br label %if.end140.i

if.else122.i:                                     ; preds = %if.else14.i.i, %if.else10.i.i.if.else122.i_crit_edge, %if.else6.i.i.if.else122.i_crit_edge
  %mc_para_index.0.i.ph.i = phi i8 [ 15, %if.else10.i.i.if.else122.i_crit_edge ], [ 0, %if.else6.i.i.if.else122.i_crit_edge ], [ %conv17.i.i, %if.else14.i.i ]
  %StrobeRatio349.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 10
  %104 = ptrtoint ptr %StrobeRatio349.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %mc_para_index.0.i.ph.i, ptr %StrobeRatio349.i, align 1
  %105 = ptrtoint ptr %EdcReadEnable.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %EdcReadEnable.i, align 1
  %106 = ptrtoint ptr %EdcWriteEnable.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %EdcWriteEnable.i, align 1
  %dll_default_on.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %22, i32 0, i32 53
  %107 = ptrtoint ptr %dll_default_on.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %dll_default_on.i, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool123.i = icmp ne i8 %108, 0
  br label %if.end140.i

if.else126.i:                                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %20)
  %cmp.i333.i = icmp ult i32 %20, 10000
  br i1 %cmp.i333.i, label %if.else126.i.ci_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge, label %if.else.i335.i

if.else126.i.ci_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_get_ddr3_mclk_frequency_ratio.exit.i

if.else.i335.i:                                   ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 79999, i32 %20)
  %cmp1.i334.i = icmp ugt i32 %20, 79999
  br i1 %cmp1.i334.i, label %if.else.i335.i.ci_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge, label %if.else3.i.i

if.else.i335.i.ci_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else.i335.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_get_ddr3_mclk_frequency_ratio.exit.i

if.else3.i.i:                                     ; preds = %if.else.i335.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i336.i = add nsw i32 %20, -10000
  %div.i.i = udiv i32 %sub.i336.i, 5000
  %109 = trunc i32 %div.i.i to i8
  %conv.i337.i = add nuw nsw i8 %109, 1
  br label %ci_get_ddr3_mclk_frequency_ratio.exit.i

ci_get_ddr3_mclk_frequency_ratio.exit.i:          ; preds = %if.else3.i.i, %if.else.i335.i.ci_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge, %if.else126.i.ci_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge
  %mc_para_index.0.i338.i = phi i8 [ %conv.i337.i, %if.else3.i.i ], [ 0, %if.else126.i.ci_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else.i335.i.ci_get_ddr3_mclk_frequency_ratio.exit.i_crit_edge ]
  %StrobeRatio128.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 10
  %110 = ptrtoint ptr %StrobeRatio128.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %mc_para_index.0.i338.i, ptr %StrobeRatio128.i, align 1
  %111 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %call133.i = call i32 %116(ptr noundef %112, i32 noundef 2709) #8
  %117 = and i32 %call133.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %extract.t284.i = icmp ne i32 %117, 0
  br label %if.end140.i

if.end140.i:                                      ; preds = %ci_get_ddr3_mclk_frequency_ratio.exit.i, %if.else122.i, %if.else.i, %if.then100.i
  %dll_state_on.0.off0.i = phi i1 [ %tobool108.i, %if.then100.i ], [ %tobool117.i, %if.else.i ], [ %tobool123.i, %if.else122.i ], [ %extract.t284.i, %ci_get_ddr3_mclk_frequency_ratio.exit.i ]
  %118 = ptrtoint ptr %StrobeEnable.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %StrobeEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool142.i = icmp ne i8 %119, 0
  %120 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %backend, align 4
  %vDLL_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 11, i32 6
  %122 = ptrtoint ptr %vDLL_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vDLL_CNTL.i.i, align 4
  %vMCLK_PWRMGT_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 11, i32 7
  %124 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vMCLK_PWRMGT_CNTL.i.i, align 4
  %vMPLL_AD_FUNC_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 11, i32 8
  %126 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %vMPLL_AD_FUNC_CNTL.i.i, align 4
  %vMPLL_DQ_FUNC_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 11, i32 9
  %128 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %vMPLL_DQ_FUNC_CNTL.i.i, align 4
  %vMPLL_FUNC_CNTL.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 11, i32 10
  %130 = ptrtoint ptr %vMPLL_FUNC_CNTL.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %vMPLL_FUNC_CNTL.i.i, align 4
  %vMPLL_FUNC_CNTL_1.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 11, i32 11
  %132 = ptrtoint ptr %vMPLL_FUNC_CNTL_1.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %vMPLL_FUNC_CNTL_1.i.i, align 4
  %vMPLL_FUNC_CNTL_2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 11, i32 12
  %134 = ptrtoint ptr %vMPLL_FUNC_CNTL_2.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vMPLL_FUNC_CNTL_2.i.i, align 4
  %vMPLL_SS1.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 11, i32 13
  %136 = ptrtoint ptr %vMPLL_SS1.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %vMPLL_SS1.i.i, align 4
  %vMPLL_SS2.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 11, i32 14
  %138 = ptrtoint ptr %vMPLL_SS2.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %vMPLL_SS2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mpll_param.i.i) #8
  %140 = call ptr @memset(ptr %mpll_param.i.i, i32 255, i32 32)
  %call.i.i = call i32 @atomctrl_get_memory_pll_dividers_si(ptr noundef %hwmgr, i32 noundef %20, ptr noundef nonnull %mpll_param.i.i, i1 noundef zeroext %tobool142.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i339.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i339.i, label %do.end17.i.i, label %if.then.i340.i

if.then.i340.i:                                   ; preds = %if.end140.i
  %call10.i.i = call i32 @___ratelimit(ptr noundef nonnull @ci_calculate_mclk_params._rs, ptr noundef nonnull @__func__.ci_calculate_mclk_params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then.i340.i.ci_calculate_mclk_params.exit.thread.i_crit_edge, label %do.end.i.i

if.then.i340.i.ci_calculate_mclk_params.exit.thread.i_crit_edge: ; preds = %if.then.i340.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_calculate_mclk_params.exit.thread.i

do.end.i.i:                                       ; preds = %if.then.i340.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.163) #12
  br label %ci_calculate_mclk_params.exit.thread.i

do.end17.i.i:                                     ; preds = %if.end140.i
  %and.i.i = and i32 %131, -267386881
  %141 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %16, align 4
  %shl.i.i = shl i32 %142, 20
  %and18.i.i = and i32 %shl.i.i, 267386880
  %or.i.i = or i32 %and18.i.i, %and.i.i
  %and19.i.i = and i32 %133, -268435444
  %143 = ptrtoint ptr %mpll_param.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %bf.load.i.i = load i32, ptr %mpll_param.i.i, align 4
  %144 = lshr i32 %bf.load.i.i, 4
  %shl20.i.i = and i32 %144, 268369920
  %or22.i.i = or i32 %shl20.i.i, %and19.i.i
  %shl27.i.i = and i32 %144, 65520
  %or29.i.i = or i32 %or22.i.i, %shl27.i.i
  %145 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %15, align 4
  %and32.i.i = and i32 %146, 3
  %or33.i.i = or i32 %or29.i.i, %and32.i.i
  %and34.i.i = and i32 %127, -8
  %147 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %11, align 4
  %and36.i.i = and i32 %148, 7
  %or37.i.i = or i32 %and36.i.i, %and34.i.i
  %is_memory_gddr5.i.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %121, i32 0, i32 12
  %149 = ptrtoint ptr %is_memory_gddr5.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %is_memory_gddr5.i.i, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool38.not.i.i = icmp eq i8 %150, 0
  br i1 %tobool38.not.i.i, label %do.end17.i.i.if.end49.i.i_crit_edge, label %if.then39.i.i

do.end17.i.i.if.end49.i.i_crit_edge:              ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i.i

if.then39.i.i:                                    ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and40.i.i = and i32 %129, -24
  %151 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %13, align 4
  %shl41.i.i = shl i32 %152, 4
  %and42.i.i = and i32 %shl41.i.i, 16
  %or43.i.i = or i32 %and36.i.i, %and40.i.i
  %or48.i.i = or i32 %or43.i.i, %and42.i.i
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then39.i.i, %do.end17.i.i.if.end49.i.i_crit_edge
  %mpll_dq_func_cntl.0.i.i = phi i32 [ %or48.i.i, %if.then39.i.i ], [ %129, %do.end17.i.i.if.end49.i.i_crit_edge ]
  %153 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %154, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.end49.i.i.for.inc_crit_edge, label %if.then51.i.i

if.end49.i.i.for.inc_crit_edge:                   ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then51.i.i:                                    ; preds = %if.end49.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ss_info.i.i) #8
  %155 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 -1, ptr %ss_info.i.i, align 4, !annotation !399
  %156 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -1, ptr %17, align 4, !annotation !399
  %157 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -1, ptr %18, align 4, !annotation !399
  %call53.i.i = call i32 @atomctrl_get_mpll_reference_clock(ptr noundef %hwmgr) #8
  %158 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp54.i.i = icmp eq i32 %159, 1
  %..i.i = select i1 %cmp54.i.i, i32 2, i32 1
  %mul59.i.i = shl i32 %20, %..i.i
  %160 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %11, align 4
  %mul62.i.i = shl i32 %mul59.i.i, %161
  %call65.i.i = call i32 @atomctrl_get_memory_clock_spread_spectrum(ptr noundef %hwmgr, i32 noundef %mul62.i.i, ptr noundef nonnull %ss_info.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i.i)
  %cmp66.i.i = icmp eq i32 %call65.i.i, 0
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.then51.i.i.if.end84.i.i_crit_edge

if.then51.i.i.if.end84.i.i_crit_edge:             ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i.i

if.then67.i.i:                                    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i341.i = udiv i32 %mul62.i.i, %call53.i.i
  %mul64.i.i = mul i32 %div.i341.i, %div.i341.i
  %mul68.i.i = mul i32 %call53.i.i, 5
  %162 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %17, align 4
  %div69.i.i = udiv i32 %mul68.i.i, %163
  %164 = ptrtoint ptr %ss_info.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ss_info.i.i, align 4
  %mul70.i.i = mul i32 %163, 131
  %mul72.i.i = mul i32 %mul70.i.i, %165
  %div73.i.i = udiv i32 %mul72.i.i, 100
  %mul74.i.i = mul i32 %mul64.i.i, %div73.i.i
  %div75.i.i = udiv i32 %mul74.i.i, %mul62.i.i
  %and76.i.i = and i32 %137, -67108864
  %and78.i.i = and i32 %div75.i.i, 67108863
  %or79.i.i = or i32 %and78.i.i, %and76.i.i
  %and80.i.i = and i32 %139, -4096
  %and82.i.i = and i32 %div69.i.i, 4095
  %or83.i.i = or i32 %and82.i.i, %and80.i.i
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.then67.i.i, %if.then51.i.i.if.end84.i.i_crit_edge
  %mpll_ss1.0.i.i = phi i32 [ %or79.i.i, %if.then67.i.i ], [ %137, %if.then51.i.i.if.end84.i.i_crit_edge ]
  %mpll_ss2.0.i.i = phi i32 [ %or83.i.i, %if.then67.i.i ], [ %139, %if.then51.i.i.if.end84.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ss_info.i.i) #8
  br label %for.inc

ci_calculate_mclk_params.exit.thread.i:           ; preds = %do.end.i.i, %if.then.i340.i.ci_calculate_mclk_params.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mpll_param.i.i) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end84.i.i, %if.end49.i.i.for.inc_crit_edge
  %mpll_ss1.1.i.i = phi i32 [ %mpll_ss1.0.i.i, %if.end84.i.i ], [ %137, %if.end49.i.i.for.inc_crit_edge ]
  %mpll_ss2.1.i.i = phi i32 [ %mpll_ss2.0.i.i, %if.end84.i.i ], [ %139, %if.end49.i.i.for.inc_crit_edge ]
  %and86.i.i = and i32 %125, -800
  %166 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %12, align 4
  %and88.i.i = and i32 %167, 31
  %or89.i.i = select i1 %dll_state_on.0.off0.i, i32 768, i32 0
  %or94.i.i = or i32 %and86.i.i, %or89.i.i
  %or100.i.i = or i32 %or94.i.i, %and88.i.i
  %MclkFrequency.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 4
  %168 = ptrtoint ptr %MclkFrequency.i.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 %20, ptr %MclkFrequency.i.i, align 1
  %MpllFuncCntl.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 20
  %169 = ptrtoint ptr %MpllFuncCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %or.i.i, ptr %MpllFuncCntl.i.i, align 1
  %MpllFuncCntl_1.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 21
  %170 = ptrtoint ptr %MpllFuncCntl_1.i.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 %or33.i.i, ptr %MpllFuncCntl_1.i.i, align 1
  %MpllFuncCntl_2.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 22
  %171 = ptrtoint ptr %MpllFuncCntl_2.i.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %135, ptr %MpllFuncCntl_2.i.i, align 1
  %MpllAdFuncCntl.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 23
  %172 = ptrtoint ptr %MpllAdFuncCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %172, i32 4)
  store i32 %or37.i.i, ptr %MpllAdFuncCntl.i.i, align 1
  %MpllDqFuncCntl.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 24
  %173 = ptrtoint ptr %MpllDqFuncCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 %mpll_dq_func_cntl.0.i.i, ptr %MpllDqFuncCntl.i.i, align 1
  %MclkPwrmgtCntl.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 25
  %174 = ptrtoint ptr %MclkPwrmgtCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 4)
  store i32 %or100.i.i, ptr %MclkPwrmgtCntl.i.i, align 1
  %DllCntl.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 26
  %175 = ptrtoint ptr %DllCntl.i.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 4)
  store i32 %123, ptr %DllCntl.i.i, align 1
  %MpllSs1.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 27
  %176 = ptrtoint ptr %MpllSs1.i.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 %mpll_ss1.1.i.i, ptr %MpllSs1.i.i, align 1
  %MpllSs2.i.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 28
  %177 = ptrtoint ptr %MpllSs2.i.i to i32
  call void @__asan_storeN_noabort(i32 %177, i32 4)
  store i32 %mpll_ss2.1.i.i, ptr %MpllSs2.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mpll_param.i.i) #8
  %178 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %arrayidx17, align 1
  %mul.i = shl i32 %179, 2
  store i32 %mul.i, ptr %arrayidx17, align 1
  %MinVddci152.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 2
  %180 = ptrtoint ptr %MinVddci152.i to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %181 = load i32, ptr %MinVddci152.i, align 1
  %mul153.i = shl i32 %181, 2
  store i32 %mul153.i, ptr %MinVddci152.i, align 1
  %MinMvdd155.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %i.0125, i32 3
  %182 = ptrtoint ptr %MinMvdd155.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %MinMvdd155.i, align 1
  %mul156.i = shl i32 %183, 2
  store i32 %mul156.i, ptr %MinMvdd155.i, align 1
  %inc = add nuw i32 %i.0125, 1
  %184 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %mclk_table, align 4
  %cmp = icmp ult i32 %inc, %185
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %EnabledForActivity = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 0, i32 12
  %186 = ptrtoint ptr %EnabledForActivity to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %EnabledForActivity, align 1
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 1
  %187 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 8
  %189 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %device, align 2
  %191 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %192)
  %cmp27 = icmp ugt i32 %192, 1
  %193 = and i16 %190, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26544, i16 %193)
  %switch = icmp eq i16 %193, 26544
  %or.cond = select i1 %cmp27, i1 %switch, i1 false
  br i1 %or.cond, label %if.then33, label %for.end.if.end48_crit_edge

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %MinVddci = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 0, i32 2
  %194 = ptrtoint ptr %MinVddci to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %MinVddci, align 4
  %MinVddci40 = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 1, i32 2
  %196 = ptrtoint ptr %MinVddci40 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %MinVddci40, align 4
  %MinMvdd = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 0, i32 3
  %197 = ptrtoint ptr %MinMvdd to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %MinMvdd, align 4
  %MinMvdd47 = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 1, i32 3
  %199 = ptrtoint ptr %MinMvdd47 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %MinMvdd47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then33, %for.end.if.end48_crit_edge
  %ActivityLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 0, i32 17
  %200 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 31, ptr %ActivityLevel, align 4
  %201 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %mclk_table, align 4
  %conv62 = trunc i32 %202 to i8
  %MemoryDpmLevelCount = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 15
  %203 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv62, ptr %MemoryDpmLevelCount, align 1
  %call65 = call i32 @phm_get_dpm_level_enable_mask_value(ptr noundef %mclk_table) #8
  %mclk_dpm_enable_mask = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 70, i32 5
  %204 = ptrtoint ptr %mclk_dpm_enable_mask to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %call65, ptr %mclk_dpm_enable_mask, align 4
  %205 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mclk_table, align 4
  %sub = add i32 %206, -1
  %DisplayWatermark = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26, i32 %sub, i32 18
  %207 = ptrtoint ptr %DisplayWatermark to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %DisplayWatermark, align 2
  %call71 = call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %add, ptr noundef %MemoryLevel, i32 noundef 432, i32 noundef 262144)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %ci_calculate_mclk_params.exit.thread.i, %do.end49.i, %if.then43.i.cleanup_crit_edge, %do.end27.i, %if.then21.i.cleanup_crit_edge, %do.end.i, %if.then4.i.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call71, %if.end48 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call.i.i, %ci_calculate_mclk_params.exit.thread.i ], [ -22, %if.then43.i.cleanup_crit_edge ], [ -22, %do.end49.i ], [ -22, %if.then21.i.cleanup_crit_edge ], [ -22, %do.end27.i ], [ -22, %if.then4.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_initialize_mc_reg_table(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %mc_reg_table = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 10
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 1485) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2772) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = lshr i32 %call.i, 16
  %conv.i = trunc i32 %shr.i to i8
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_register, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %call6 = tail call i32 %16(ptr noundef %10, i32 noundef 2600) #8
  tail call void %14(ptr noundef %10, i32 noundef 2715, i32 noundef %call6) #8
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write_register9 = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_register9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_register9, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %call15 = tail call i32 %24(ptr noundef %18, i32 noundef 2601) #8
  tail call void %22(ptr noundef %18, i32 noundef 2716, i32 noundef %call15) #8
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write_register18 = getelementptr inbounds %struct.cgs_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_register18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_register18, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %call24 = tail call i32 %32(ptr noundef %26, i32 noundef 3470) #8
  tail call void %30(ptr noundef %26, i32 noundef 3471, i32 noundef %call24) #8
  %33 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write_register27 = getelementptr inbounds %struct.cgs_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_register27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_register27, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %call33 = tail call i32 %40(ptr noundef %34, i32 noundef 3459) #8
  tail call void %38(ptr noundef %34, i32 noundef 3460, i32 noundef %call33) #8
  %41 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %write_register36 = getelementptr inbounds %struct.cgs_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_register36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_register36, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %call42 = tail call i32 %48(ptr noundef %42, i32 noundef 3461) #8
  tail call void %46(ptr noundef %42, i32 noundef 3462, i32 noundef %call42) #8
  %49 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write_register45 = getelementptr inbounds %struct.cgs_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write_register45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_register45, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  %call51 = tail call i32 %56(ptr noundef %50, i32 noundef 3457) #8
  tail call void %54(ptr noundef %50, i32 noundef 3458, i32 noundef %call51) #8
  %57 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %write_register54 = getelementptr inbounds %struct.cgs_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_register54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_register54, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 4
  %call60 = tail call i32 %64(ptr noundef %58, i32 noundef 3468) #8
  tail call void %62(ptr noundef %58, i32 noundef 3469, i32 noundef %call60) #8
  %65 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %write_register63 = getelementptr inbounds %struct.cgs_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_register63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_register63, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  %call69 = tail call i32 %72(ptr noundef %66, i32 noundef 3466) #8
  tail call void %70(ptr noundef %66, i32 noundef 3467, i32 noundef %call69) #8
  %73 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %write_register72 = getelementptr inbounds %struct.cgs_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_register72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_register72, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 4
  %call78 = tail call i32 %80(ptr noundef %74, i32 noundef 2602) #8
  tail call void %78(ptr noundef %74, i32 noundef 2717, i32 noundef %call78) #8
  %81 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %write_register81 = getelementptr inbounds %struct.cgs_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write_register81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_register81, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  %call87 = tail call i32 %88(ptr noundef %82, i32 noundef 2603) #8
  tail call void %86(ptr noundef %82, i32 noundef 2718, i32 noundef %call87) #8
  %89 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %write_register90 = getelementptr inbounds %struct.cgs_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %write_register90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_register90, align 4
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %92, align 4
  %call96 = tail call i32 %96(ptr noundef %90, i32 noundef 2691) #8
  tail call void %94(ptr noundef %90, i32 noundef 2721, i32 noundef %call96) #8
  %97 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %write_register99 = getelementptr inbounds %struct.cgs_ops, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_register99 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_register99, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %100, align 4
  %call105 = tail call i32 %104(ptr noundef %98, i32 noundef 2731) #8
  tail call void %102(ptr noundef %98, i32 noundef 2722, i32 noundef %call105) #8
  %105 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %write_register108 = getelementptr inbounds %struct.cgs_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_register108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write_register108, align 4
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %108, align 4
  %call114 = tail call i32 %112(ptr noundef %106, i32 noundef 2769) #8
  tail call void %110(ptr noundef %106, i32 noundef 2770, i32 noundef %call114) #8
  %113 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %write_register117 = getelementptr inbounds %struct.cgs_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %write_register117 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write_register117, align 4
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %116, align 4
  %call123 = tail call i32 %120(ptr noundef %114, i32 noundef 2607) #8
  tail call void %118(ptr noundef %114, i32 noundef 2719, i32 noundef %call123) #8
  %121 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %device.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %write_register126 = getelementptr inbounds %struct.cgs_ops, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write_register126 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_register126, align 4
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %124, align 4
  %call132 = tail call i32 %128(ptr noundef %122, i32 noundef 2608) #8
  tail call void %126(ptr noundef %122, i32 noundef 2720, i32 noundef %call132) #8
  %129 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %write_register135 = getelementptr inbounds %struct.cgs_ops, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %write_register135 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write_register135, align 4
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %132, align 4
  %call141 = tail call i32 %136(ptr noundef %130, i32 noundef 2605) #8
  tail call void %134(ptr noundef %130, i32 noundef 2759, i32 noundef %call141) #8
  %137 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %write_register144 = getelementptr inbounds %struct.cgs_ops, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %write_register144 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write_register144, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %140, align 4
  %call150 = tail call i32 %144(ptr noundef %138, i32 noundef 2606) #8
  tail call void %142(ptr noundef %138, i32 noundef 2760, i32 noundef %call150) #8
  %145 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %write_register153 = getelementptr inbounds %struct.cgs_ops, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %write_register153 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write_register153, align 4
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %148, align 4
  %call159 = tail call i32 %152(ptr noundef %146, i32 noundef 2604) #8
  tail call void %150(ptr noundef %146, i32 noundef 2771, i32 noundef %call159) #8
  %153 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %write_register162 = getelementptr inbounds %struct.cgs_ops, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %write_register162 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write_register162, align 4
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %156, align 4
  %call168 = tail call i32 %160(ptr noundef %154, i32 noundef 2775) #8
  tail call void %158(ptr noundef %154, i32 noundef 2776, i32 noundef %call168) #8
  %161 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %device.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %write_register171 = getelementptr inbounds %struct.cgs_ops, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %write_register171 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write_register171, align 4
  %167 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %164, align 4
  %call177 = tail call i32 %168(ptr noundef %162, i32 noundef 2773) #8
  tail call void %166(ptr noundef %162, i32 noundef 2774, i32 noundef %call177) #8
  %call178 = tail call i32 @atomctrl_initialize_mc_reg_table(ptr noundef %hwmgr, i8 noundef zeroext %conv.i, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp eq i32 %call178, 0
  br i1 %cmp179, label %if.then180, label %if.end.if.end191_crit_edge

if.end.if.end191_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.then180:                                       ; preds = %if.end
  %169 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %170)
  %cmp.i = icmp ult i8 %170, 17
  br i1 %cmp.i, label %do.body8.i, label %if.then.i

if.then.i:                                        ; preds = %if.then180
  %call.i288 = tail call i32 @___ratelimit(ptr noundef nonnull @ci_copy_vbios_smc_reg_table._rs, ptr noundef nonnull @__func__.ci_copy_vbios_smc_reg_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool.not.i = icmp eq i32 %call.i288, 0
  br i1 %tobool.not.i, label %if.then.i.if.end191_crit_edge, label %do.end.i

if.then.i.if.end191_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.164) #12
  br label %if.end191

do.body8.i:                                       ; preds = %if.then180
  %num_entries.i = getelementptr inbounds %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 1
  %171 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %num_entries.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %172)
  %cmp10.i = icmp ult i8 %172, 17
  br i1 %cmp10.i, label %for.cond.preheader.i, label %if.then12.i

for.cond.preheader.i:                             ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %cmp28102.not.i = icmp eq i8 %170, 0
  br i1 %cmp28102.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then12.i:                                      ; preds = %do.body8.i
  %call13.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_copy_vbios_smc_reg_table._rs.165, ptr noundef nonnull @__func__.ci_copy_vbios_smc_reg_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end191_crit_edge, label %do.end18.i

if.then12.i.if.end191_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end18.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.164) #12
  br label %if.end191

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 3, i32 %indvars.iv.i
  %173 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx.i, align 4
  %s133.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %indvars.iv.i, i32 1
  %175 = ptrtoint ptr %s133.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %s133.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %176 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %call7.i.i, align 8
  %178 = zext i8 %177 to i32
  %cmp28.i = icmp ult i32 %indvars.iv.next.i, %178
  br i1 %cmp28.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa101.i = phi i8 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %177, %for.body.i.for.end.i_crit_edge ]
  %179 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %.lcssa101.i, ptr %mc_reg_table, align 4
  %180 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %num_entries.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp40106.not.i = icmp eq i8 %181, 0
  br i1 %cmp40106.not.i, label %for.end.i.if.then184_crit_edge, label %for.end.i.for.body42.i_crit_edge

for.end.i.for.body42.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body42.i

for.end.i.if.then184_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then184

for.body42.i:                                     ; preds = %for.inc70.i.for.body42.i_crit_edge, %for.end.i.for.body42.i_crit_edge
  %indvars.iv113.i = phi i32 [ %indvars.iv.next114.i, %for.inc70.i.for.body42.i_crit_edge ], [ 0, %for.end.i.for.body42.i_crit_edge ]
  %arrayidx44.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 2, i32 %indvars.iv113.i
  %182 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx44.i, align 4
  %arrayidx47.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv113.i
  %184 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx47.i, align 4
  %185 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %cmp53104.not.i = icmp eq i8 %186, 0
  br i1 %cmp53104.not.i, label %for.body42.i.for.inc70.i_crit_edge, label %for.body42.i.for.body55.i_crit_edge

for.body42.i.for.body55.i_crit_edge:              ; preds = %for.body42.i
  br label %for.body55.i

for.body42.i.for.inc70.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70.i

for.body55.i:                                     ; preds = %for.body55.i.for.body55.i_crit_edge, %for.body42.i.for.body55.i_crit_edge
  %indvars.iv111.i = phi i32 [ %indvars.iv.next112.i, %for.body55.i.for.body55.i_crit_edge ], [ 0, %for.body42.i.for.body55.i_crit_edge ]
  %arrayidx60.i = getelementptr %struct.pp_atomctrl_mc_reg_table, ptr %call7.i.i, i32 0, i32 2, i32 %indvars.iv113.i, i32 1, i32 %indvars.iv111.i
  %187 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx60.i, align 4
  %arrayidx66.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv113.i, i32 1, i32 %indvars.iv111.i
  %189 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %arrayidx66.i, align 4
  %indvars.iv.next112.i = add nuw nsw i32 %indvars.iv111.i, 1
  %190 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %call7.i.i, align 8
  %192 = zext i8 %191 to i32
  %cmp53.i = icmp ult i32 %indvars.iv.next112.i, %192
  br i1 %cmp53.i, label %for.body55.i.for.body55.i_crit_edge, label %for.body55.i.for.inc70.i_crit_edge

for.body55.i.for.inc70.i_crit_edge:               ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70.i

for.body55.i.for.body55.i_crit_edge:              ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55.i

for.inc70.i:                                      ; preds = %for.body55.i.for.inc70.i_crit_edge, %for.body42.i.for.inc70.i_crit_edge
  %indvars.iv.next114.i = add nuw nsw i32 %indvars.iv113.i, 1
  %193 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %num_entries.i, align 1
  %195 = zext i8 %194 to i32
  %cmp40.i = icmp ult i32 %indvars.iv.next114.i, %195
  br i1 %cmp40.i, label %for.inc70.i.for.body42.i_crit_edge, label %if.then184thread-pre-split

for.inc70.i.for.body42.i_crit_edge:               ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42.i

if.then184thread-pre-split:                       ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %196)
  %.pr = load i8, ptr %mc_reg_table, align 4
  br label %if.then184

if.then184:                                       ; preds = %if.then184thread-pre-split, %for.end.i.if.then184_crit_edge
  %197 = phi i8 [ %.pr, %if.then184thread-pre-split ], [ %.lcssa101.i, %for.end.i.if.then184_crit_edge ]
  %.lcssa.i = phi i8 [ %194, %if.then184thread-pre-split ], [ 0, %for.end.i.if.then184_crit_edge ]
  %num_entries74.i = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 1
  %198 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %.lcssa.i, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %cmp4.not.i = icmp eq i8 %197, 0
  br i1 %cmp4.not.i, label %ci_set_s0_mc_reg_index.exitthread-pre-split, label %if.then184.for.body.i290_crit_edge

if.then184.for.body.i290_crit_edge:               ; preds = %if.then184
  br label %for.body.i290

for.body.i290:                                    ; preds = %ci_check_s0_mc_reg_index.exit.i.for.body.i290_crit_edge, %if.then184.for.body.i290_crit_edge
  %i.05.i = phi i32 [ %inc.i, %ci_check_s0_mc_reg_index.exit.i.for.body.i290_crit_edge ], [ 0, %if.then184.for.body.i290_crit_edge ]
  %arrayidx.i289 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %i.05.i
  %s1.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %i.05.i, i32 1
  %199 = ptrtoint ptr %s1.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %s1.i, align 2
  %201 = zext i16 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.182)
  switch i16 %200, label %for.body.i290.ci_check_s0_mc_reg_index.exit.i_crit_edge [
    i16 2600, label %for.body.i290._crit_edge
    i16 3470, label %sw.bb1.i.i
    i16 3459, label %sw.bb2.i.i
    i16 3461, label %sw.bb3.i.i
    i16 3457, label %sw.bb4.i.i
    i16 2601, label %sw.bb5.i.i
    i16 2602, label %sw.bb6.i.i
    i16 2603, label %sw.bb7.i.i
    i16 3468, label %sw.bb8.i.i
    i16 3466, label %sw.bb9.i.i
    i16 2605, label %sw.bb10.i.i
    i16 2606, label %sw.bb11.i.i
    i16 2607, label %sw.bb12.i.i
    i16 2608, label %sw.bb13.i.i
    i16 2691, label %sw.bb14.i.i
    i16 2731, label %sw.bb15.i.i
    i16 2769, label %sw.bb16.i.i
    i16 2604, label %sw.bb17.i.i
    i16 2775, label %sw.bb18.i.i
    i16 2773, label %sw.bb19.i.i
  ]

for.body.i290._crit_edge:                         ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

for.body.i290.ci_check_s0_mc_reg_index.exit.i_crit_edge: ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_check_s0_mc_reg_index.exit.i

sw.bb1.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb2.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb3.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb4.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb5.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb6.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb7.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb8.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb9.i.i:                                       ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb10.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb11.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb12.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb13.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb14.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb15.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb16.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb17.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb18.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

sw.bb19.i.i:                                      ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %202

202:                                              ; preds = %sw.bb19.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %for.body.i290._crit_edge
  %.sink.i.i = phi i16 [ 2774, %sw.bb19.i.i ], [ 2776, %sw.bb18.i.i ], [ 2771, %sw.bb17.i.i ], [ 2770, %sw.bb16.i.i ], [ 2722, %sw.bb15.i.i ], [ 2721, %sw.bb14.i.i ], [ 2720, %sw.bb13.i.i ], [ 2719, %sw.bb12.i.i ], [ 2760, %sw.bb11.i.i ], [ 2759, %sw.bb10.i.i ], [ 3467, %sw.bb9.i.i ], [ 3469, %sw.bb8.i.i ], [ 2718, %sw.bb7.i.i ], [ 2717, %sw.bb6.i.i ], [ 2716, %sw.bb5.i.i ], [ 3458, %sw.bb4.i.i ], [ 3462, %sw.bb3.i.i ], [ 3460, %sw.bb2.i.i ], [ 3471, %sw.bb1.i.i ], [ 2715, %for.body.i290._crit_edge ]
  br label %ci_check_s0_mc_reg_index.exit.i

ci_check_s0_mc_reg_index.exit.i:                  ; preds = %202, %for.body.i290.ci_check_s0_mc_reg_index.exit.i_crit_edge
  %.sroa.speculated.i = phi i16 [ %.sink.i.i, %202 ], [ %200, %for.body.i290.ci_check_s0_mc_reg_index.exit.i_crit_edge ]
  %203 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %.sroa.speculated.i, ptr %arrayidx.i289, align 4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %204 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %mc_reg_table, align 4
  %conv.i291 = zext i8 %205 to i32
  %cmp.i292 = icmp ult i32 %inc.i, %conv.i291
  br i1 %cmp.i292, label %ci_check_s0_mc_reg_index.exit.i.for.body.i290_crit_edge, label %ci_check_s0_mc_reg_index.exit.i.ci_set_s0_mc_reg_index.exit_crit_edge

ci_check_s0_mc_reg_index.exit.i.ci_set_s0_mc_reg_index.exit_crit_edge: ; preds = %ci_check_s0_mc_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_set_s0_mc_reg_index.exit

ci_check_s0_mc_reg_index.exit.i.for.body.i290_crit_edge: ; preds = %ci_check_s0_mc_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i290

ci_set_s0_mc_reg_index.exitthread-pre-split:      ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %206)
  %.pr314 = load i8, ptr %mc_reg_table, align 4
  br label %ci_set_s0_mc_reg_index.exit

ci_set_s0_mc_reg_index.exit:                      ; preds = %ci_set_s0_mc_reg_index.exitthread-pre-split, %ci_check_s0_mc_reg_index.exit.i.ci_set_s0_mc_reg_index.exit_crit_edge
  %207 = phi i8 [ %.pr314, %ci_set_s0_mc_reg_index.exitthread-pre-split ], [ %205, %ci_check_s0_mc_reg_index.exit.i.ci_set_s0_mc_reg_index.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %cmp295.not.i = icmp eq i8 %207, 0
  br i1 %cmp295.not.i, label %if.then189.thread, label %do.body.lr.ph.i

if.then189.thread:                                ; preds = %ci_set_s0_mc_reg_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  %208 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %mc_reg_table, align 4
  br label %if.end191

do.body.lr.ph.i:                                  ; preds = %ci_set_s0_mc_reg_index.exit
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %209 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %backend.i, align 4
  %is_memory_gddr5.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %210, i32 0, i32 12
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc201.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %indvars.iv313.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %indvars.iv.next314.i, %for.inc201.i.do.body.i_crit_edge ]
  %j.0296.i = phi i8 [ %207, %do.body.lr.ph.i ], [ %j.1.i, %for.inc201.i.do.body.i_crit_edge ]
  %conv4.i = zext i8 %j.0296.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %j.0296.i)
  %cmp5.i = icmp ult i8 %j.0296.i, 16
  br i1 %cmp5.i, label %do.end12.i, label %if.then.i296

if.then.i296:                                     ; preds = %do.body.i
  %call.i294 = tail call i32 @___ratelimit(ptr noundef nonnull @ci_set_mc_special_registers._rs, ptr noundef nonnull @__func__.ci_set_mc_special_registers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i294)
  %tobool.not.i295 = icmp eq i32 %call.i294, 0
  br i1 %tobool.not.i295, label %if.then.i296.if.end191_crit_edge, label %do.end.i297

if.then.i296.if.end191_crit_edge:                 ; preds = %if.then.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end.i297:                                      ; preds = %if.then.i296
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.164) #12
  br label %if.end191

do.end12.i:                                       ; preds = %do.body.i
  %s1.i298 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %indvars.iv313.i, i32 1
  %211 = ptrtoint ptr %s1.i298 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %s1.i298, align 2
  %213 = zext i16 %212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.183)
  switch i16 %212, label %do.end12.i.for.inc201.i_crit_edge [
    i16 2689, label %sw.bb.i
    i16 2690, label %sw.bb161.i
  ]

do.end12.i.for.inc201.i_crit_edge:                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc201.i

sw.bb.i:                                          ; preds = %do.end12.i
  %214 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %device.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 4
  %call15.i = tail call i32 %219(ptr noundef %215, i32 noundef 2691) #8
  %arrayidx18.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %conv4.i
  %s119.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %conv4.i, i32 1
  %220 = ptrtoint ptr %s119.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 2691, ptr %s119.i, align 2
  %221 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 2721, ptr %arrayidx18.i, align 4
  %222 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %cmp26289.not.i = icmp eq i8 %223, 0
  br i1 %cmp26289.not.i, label %sw.bb.i.for.end.i300_crit_edge, label %for.body28.lr.ph.i

sw.bb.i.for.end.i300_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i300

for.body28.lr.ph.i:                               ; preds = %sw.bb.i
  %and.i = and i32 %call15.i, -65536
  %wide.trip.count303.i = zext i8 %223 to i32
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.body28.lr.ph.i
  %indvars.iv301.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %indvars.iv.next302.i, %for.body28.i.for.body28.i_crit_edge ]
  %arrayidx32.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv301.i, i32 1, i32 %indvars.iv313.i
  %224 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx32.i, align 4
  %shr.i299 = lshr i32 %225, 16
  %or.i = or i32 %shr.i299, %and.i
  %arrayidx39.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv301.i, i32 1, i32 %conv4.i
  %226 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %or.i, ptr %arrayidx39.i, align 4
  %indvars.iv.next302.i = add nuw nsw i32 %indvars.iv301.i, 1
  %exitcond304.not.i = icmp eq i32 %indvars.iv.next302.i, %wide.trip.count303.i
  br i1 %exitcond304.not.i, label %for.body28.i.for.end.i300_crit_edge, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28.i

for.body28.i.for.end.i300_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i300

for.end.i300:                                     ; preds = %for.body28.i.for.end.i300_crit_edge, %sw.bb.i.for.end.i300_crit_edge
  %inc40.i = add i8 %j.0296.i, 1
  %conv42.i = zext i8 %inc40.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc40.i)
  %cmp43.i = icmp ult i8 %inc40.i, 16
  br i1 %cmp43.i, label %do.end57.i, label %if.then45.i

if.then45.i:                                      ; preds = %for.end.i300
  %call46.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_set_mc_special_registers._rs.168, ptr noundef nonnull @__func__.ci_set_mc_special_registers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then45.i.if.end191_crit_edge, label %do.end51.i

if.then45.i.if.end191_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end51.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.164) #12
  br label %if.end191

do.end57.i:                                       ; preds = %for.end.i300
  %227 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %device.i, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 4
  %call62.i = tail call i32 %232(ptr noundef %228, i32 noundef 2731) #8
  %arrayidx65.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %conv42.i
  %s166.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %conv42.i, i32 1
  %233 = ptrtoint ptr %s166.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 2731, ptr %s166.i, align 2
  %234 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 2722, ptr %arrayidx65.i, align 4
  %235 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %cmp75291.not.i = icmp eq i8 %236, 0
  br i1 %cmp75291.not.i, label %do.end57.i.for.end105.i_crit_edge, label %for.body77.lr.ph.i

do.end57.i.for.end105.i_crit_edge:                ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end105.i

for.body77.lr.ph.i:                               ; preds = %do.end57.i
  %and78.i = and i32 %call62.i, -65536
  %wide.trip.count307.i = zext i8 %236 to i32
  br label %for.body77.i

for.body77.i:                                     ; preds = %for.inc103.i.for.body77.i_crit_edge, %for.body77.lr.ph.i
  %indvars.iv305.i = phi i32 [ 0, %for.body77.lr.ph.i ], [ %indvars.iv.next306.i, %for.inc103.i.for.body77.i_crit_edge ]
  %arrayidx84.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv305.i, i32 1, i32 %indvars.iv313.i
  %237 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx84.i, align 4
  %and85.i = and i32 %238, 65535
  %or86.i = or i32 %and85.i, %and78.i
  %arrayidx92.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv305.i, i32 1, i32 %conv42.i
  %239 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %or86.i, ptr %arrayidx92.i, align 4
  %240 = ptrtoint ptr %is_memory_gddr5.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %is_memory_gddr5.i, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool93.not.i = icmp eq i8 %241, 0
  br i1 %tobool93.not.i, label %if.then94.i, label %for.body77.i.for.inc103.i_crit_edge

for.body77.i.for.inc103.i_crit_edge:              ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103.i

if.then94.i:                                      ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #10
  %or101.i = or i32 %or86.i, 256
  %242 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %or101.i, ptr %arrayidx92.i, align 4
  br label %for.inc103.i

for.inc103.i:                                     ; preds = %if.then94.i, %for.body77.i.for.inc103.i_crit_edge
  %indvars.iv.next306.i = add nuw nsw i32 %indvars.iv305.i, 1
  %exitcond308.not.i = icmp eq i32 %indvars.iv.next306.i, %wide.trip.count307.i
  br i1 %exitcond308.not.i, label %for.inc103.i.for.end105.i_crit_edge, label %for.inc103.i.for.body77.i_crit_edge

for.inc103.i.for.body77.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body77.i

for.inc103.i.for.end105.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end105.i

for.end105.i:                                     ; preds = %for.inc103.i.for.end105.i_crit_edge, %do.end57.i.for.end105.i_crit_edge
  %inc106.i = add i8 %j.0296.i, 2
  %243 = ptrtoint ptr %is_memory_gddr5.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %is_memory_gddr5.i, align 4, !range !396
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool108.not.i = icmp eq i8 %244, 0
  br i1 %tobool108.not.i, label %do.body110.i, label %for.end105.i.for.inc201.i_crit_edge

for.end105.i.for.inc201.i_crit_edge:              ; preds = %for.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc201.i

do.body110.i:                                     ; preds = %for.end105.i
  %conv111.i = zext i8 %inc106.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc106.i)
  %cmp112.i = icmp ult i8 %inc106.i, 16
  br i1 %cmp112.i, label %do.end126.i, label %if.then114.i

if.then114.i:                                     ; preds = %do.body110.i
  %call115.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_set_mc_special_registers._rs.171, ptr noundef nonnull @__func__.ci_set_mc_special_registers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.then114.i.if.end191_crit_edge, label %do.end120.i

if.then114.i.if.end191_crit_edge:                 ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end120.i:                                      ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #10
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.164) #12
  br label %if.end191

do.end126.i:                                      ; preds = %do.body110.i
  %arrayidx129.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %conv111.i
  %s1130.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %conv111.i, i32 1
  %245 = ptrtoint ptr %s1130.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 2612, ptr %s1130.i, align 2
  %246 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 2612, ptr %arrayidx129.i, align 4
  br i1 %cmp75291.not.i, label %do.end126.i.for.end158.i_crit_edge, label %for.body141.preheader.i

do.end126.i.for.end158.i_crit_edge:               ; preds = %do.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end158.i

for.body141.preheader.i:                          ; preds = %do.end126.i
  %wide.trip.count311.i = zext i8 %236 to i32
  br label %for.body141.i

for.body141.i:                                    ; preds = %for.body141.i.for.body141.i_crit_edge, %for.body141.preheader.i
  %indvars.iv309.i = phi i32 [ 0, %for.body141.preheader.i ], [ %indvars.iv.next310.i, %for.body141.i.for.body141.i_crit_edge ]
  %arrayidx147.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv309.i, i32 1, i32 %indvars.iv313.i
  %247 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx147.i, align 4
  %shr149.i = lshr i32 %248, 16
  %arrayidx155.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv309.i, i32 1, i32 %conv111.i
  %249 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %shr149.i, ptr %arrayidx155.i, align 4
  %indvars.iv.next310.i = add nuw nsw i32 %indvars.iv309.i, 1
  %exitcond312.not.i = icmp eq i32 %indvars.iv.next310.i, %wide.trip.count311.i
  br i1 %exitcond312.not.i, label %for.body141.i.for.end158.i_crit_edge, label %for.body141.i.for.body141.i_crit_edge

for.body141.i.for.body141.i_crit_edge:            ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body141.i

for.body141.i.for.end158.i_crit_edge:             ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end158.i

for.end158.i:                                     ; preds = %for.body141.i.for.end158.i_crit_edge, %do.end126.i.for.end158.i_crit_edge
  %inc159.i = add i8 %j.0296.i, 3
  br label %for.inc201.i

sw.bb161.i:                                       ; preds = %do.end12.i
  %250 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %device.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %call166.i = tail call i32 %255(ptr noundef %251, i32 noundef 2769) #8
  %arrayidx169.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %conv4.i
  %s1170.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 4, i32 %conv4.i, i32 1
  %256 = ptrtoint ptr %s1170.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 2769, ptr %s1170.i, align 2
  %257 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 2770, ptr %arrayidx169.i, align 4
  %258 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %cmp179287.not.i = icmp eq i8 %259, 0
  br i1 %cmp179287.not.i, label %sw.bb161.i.for.end199.i_crit_edge, label %for.body181.lr.ph.i

sw.bb161.i.for.end199.i_crit_edge:                ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end199.i

for.body181.lr.ph.i:                              ; preds = %sw.bb161.i
  %and182.i = and i32 %call166.i, -65536
  %wide.trip.count.i = zext i8 %259 to i32
  br label %for.body181.i

for.body181.i:                                    ; preds = %for.body181.i.for.body181.i_crit_edge, %for.body181.lr.ph.i
  %indvars.iv.i302 = phi i32 [ 0, %for.body181.lr.ph.i ], [ %indvars.iv.next.i303, %for.body181.i.for.body181.i_crit_edge ]
  %arrayidx188.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv.i302, i32 1, i32 %indvars.iv313.i
  %260 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx188.i, align 4
  %and189.i = and i32 %261, 65535
  %or190.i = or i32 %and189.i, %and182.i
  %arrayidx196.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv.i302, i32 1, i32 %conv4.i
  %262 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %or190.i, ptr %arrayidx196.i, align 4
  %indvars.iv.next.i303 = add nuw nsw i32 %indvars.iv.i302, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i303, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body181.i.for.end199.i_crit_edge, label %for.body181.i.for.body181.i_crit_edge

for.body181.i.for.body181.i_crit_edge:            ; preds = %for.body181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body181.i

for.body181.i.for.end199.i_crit_edge:             ; preds = %for.body181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end199.i

for.end199.i:                                     ; preds = %for.body181.i.for.end199.i_crit_edge, %sw.bb161.i.for.end199.i_crit_edge
  %inc200.i = add i8 %j.0296.i, 1
  br label %for.inc201.i

for.inc201.i:                                     ; preds = %for.end199.i, %for.end158.i, %for.end105.i.for.inc201.i_crit_edge, %do.end12.i.for.inc201.i_crit_edge
  %j.1.i = phi i8 [ %j.0296.i, %do.end12.i.for.inc201.i_crit_edge ], [ %inc200.i, %for.end199.i ], [ %inc106.i, %for.end105.i.for.inc201.i_crit_edge ], [ %inc159.i, %for.end158.i ]
  %indvars.iv.next314.i = add nuw nsw i32 %indvars.iv313.i, 1
  %263 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %mc_reg_table, align 4
  %265 = zext i8 %264 to i32
  %cmp.i304 = icmp ult i32 %indvars.iv.next314.i, %265
  br i1 %cmp.i304, label %for.inc201.i.do.body.i_crit_edge, label %if.then189

for.inc201.i.do.body.i_crit_edge:                 ; preds = %for.inc201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then189:                                       ; preds = %for.inc201.i
  %266 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %j.1.i, ptr %mc_reg_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %j.1.i)
  %cmp3.not.i = icmp eq i8 %j.1.i, 0
  br i1 %cmp3.not.i, label %if.then189.if.end191_crit_edge, label %for.cond3.preheader.lr.ph.i

if.then189.if.end191_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

for.cond3.preheader.lr.ph.i:                      ; preds = %if.then189
  %267 = ptrtoint ptr %num_entries74.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %num_entries74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %268)
  %cmp61.i = icmp ugt i8 %268, 1
  %validflag.i = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 2
  %wide.trip.count8.i = zext i8 %j.1.i to i32
  %wide.trip.count.i307 = zext i8 %268 to i32
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc22.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %indvars.iv6.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %indvars.iv.next7.i, %for.inc22.i.for.cond3.preheader.i_crit_edge ]
  br i1 %cmp61.i, label %for.cond3.preheader.i.for.body8.i_crit_edge, label %for.cond3.preheader.i.for.inc22.i_crit_edge

for.cond3.preheader.i.for.inc22.i_crit_edge:      ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc22.i

for.cond3.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body8.i

for.cond3.i:                                      ; preds = %for.body8.i
  %indvars.iv.next.i308 = add nuw nsw i32 %indvars.iv.i310, 1
  %exitcond.not.i309 = icmp eq i32 %indvars.iv.next.i308, %wide.trip.count.i307
  br i1 %exitcond.not.i309, label %for.cond3.i.for.inc22.i_crit_edge, label %for.cond3.i.for.body8.i_crit_edge

for.cond3.i.for.body8.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i

for.cond3.i.for.inc22.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc22.i

for.body8.i:                                      ; preds = %for.cond3.i.for.body8.i_crit_edge, %for.cond3.preheader.i.for.body8.i_crit_edge
  %indvars.iv.i310 = phi i32 [ %indvars.iv.next.i308, %for.cond3.i.for.body8.i_crit_edge ], [ 1, %for.cond3.preheader.i.for.body8.i_crit_edge ]
  %sub.i = add nsw i32 %indvars.iv.i310, -1
  %arrayidx10.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %sub.i, i32 1, i32 %indvars.iv6.i
  %269 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx16.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 10, i32 3, i32 %indvars.iv.i310, i32 1, i32 %indvars.iv6.i
  %271 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %272)
  %cmp17.not.i = icmp eq i32 %270, %272
  br i1 %cmp17.not.i, label %for.cond3.i, label %if.then.i311

if.then.i311:                                     ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 1, %indvars.iv6.i
  %273 = ptrtoint ptr %validflag.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %validflag.i, align 2
  %275 = trunc i32 %shl.i to i16
  %conv21.i = or i16 %274, %275
  store i16 %conv21.i, ptr %validflag.i, align 2
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %if.then.i311, %for.cond3.i.for.inc22.i_crit_edge, %for.cond3.preheader.i.for.inc22.i_crit_edge
  %indvars.iv.next7.i = add nuw nsw i32 %indvars.iv6.i, 1
  %exitcond9.not.i = icmp eq i32 %indvars.iv.next7.i, %wide.trip.count8.i
  br i1 %exitcond9.not.i, label %for.inc22.i.if.end191_crit_edge, label %for.inc22.i.for.cond3.preheader.i_crit_edge

for.inc22.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i

for.inc22.i.if.end191_crit_edge:                  ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.end191:                                        ; preds = %for.inc22.i.if.end191_crit_edge, %if.then189.if.end191_crit_edge, %do.end120.i, %if.then114.i.if.end191_crit_edge, %do.end51.i, %if.then45.i.if.end191_crit_edge, %do.end.i297, %if.then.i296.if.end191_crit_edge, %if.then189.thread, %do.end18.i, %if.then12.i.if.end191_crit_edge, %do.end.i, %if.then.i.if.end191_crit_edge, %if.end.if.end191_crit_edge
  %result.1317 = phi i32 [ 0, %if.then189.thread ], [ 0, %if.then189.if.end191_crit_edge ], [ -22, %if.then114.i.if.end191_crit_edge ], [ -22, %do.end120.i ], [ -22, %if.then45.i.if.end191_crit_edge ], [ -22, %do.end51.i ], [ -22, %if.then.i296.if.end191_crit_edge ], [ -22, %do.end.i297 ], [ -22, %if.then12.i.if.end191_crit_edge ], [ -22, %do.end18.i ], [ -22, %if.then.i.if.end191_crit_edge ], [ -22, %do.end.i ], [ %call178, %if.end.if.end191_crit_edge ], [ 0, %for.inc22.i.if.end191_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1317, %if.end191 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_get_offsetof(i32 noundef %type, i32 noundef %member) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %type, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %member)
  %1 = icmp ult i32 %member, 15
  br i1 %1, label %switch.hole_check, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %member)
  %cond = icmp eq i32 %member, 9
  br i1 %cond, label %sw.bb12.return_crit_edge, label %sw.bb12.do.body_crit_edge

sw.bb12.do.body_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb12.return_crit_edge:                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %sw.bb12.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_get_offsetof.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_get_offsetof, %if.then)) #8
          to label %return [label %if.then], !srcloc !400

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ci_get_offsetof.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.177, i32 noundef %type, i32 noundef %member) #8
  br label %return

switch.hole_check:                                ; preds = %sw.bb
  %switch.maskindex = trunc i32 %member to i16
  %switch.shifted = lshr i16 31807, %switch.maskindex
  %2 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.lobit.not = icmp eq i16 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.ci_get_offsetof, i32 0, i32 %member
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %do.body, %sw.bb12.return_crit_edge
  %retval.0 = phi i32 [ 2020, %sw.bb12.return_crit_edge ], [ 0, %if.then ], [ 0, %do.body ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_get_mac_definition(i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %value)
  %0 = icmp ult i32 %value, 8
  br i1 %0, label %switch.hole_check, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ci_get_mac_definition.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ci_get_mac_definition, %if.then)) #8
          to label %return [label %if.then], !srcloc !400

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ci_get_mac_definition.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.180, i32 noundef %value) #8
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %value to i8
  %switch.shifted = lshr i8 -33, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.ci_get_mac_definition, i32 0, i32 %value
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %do.body
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %do.body ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ci_is_dpm_running(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_ind_register.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 1, i32 noundef -2147483644) #8
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.ci_is_smc_ram_running.exit_crit_edge

entry.ci_is_smc_ram_running.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_is_smc_ram_running.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read_ind_register4.i = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read_ind_register4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_ind_register4.i, align 4
  %call6.i = tail call i32 %11(ptr noundef %7, i32 noundef 1, i32 noundef -2147482768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131327, i32 %call6.i)
  %cmp7.i = icmp ugt i32 %call6.i, 131327
  br label %ci_is_smc_ram_running.exit

ci_is_smc_ram_running.exit:                       ; preds = %land.rhs.i, %entry.ci_is_smc_ram_running.exit_crit_edge
  %12 = phi i1 [ false, %entry.ci_is_smc_ram_running.exit_crit_edge ], [ %cmp7.i, %land.rhs.i ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_update_dpm_settings(ptr noundef %hwmgr, ptr noundef readonly %profile_setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %GraphicsLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 24
  %dpm_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %5, 296
  %add2 = add i32 %5, 816
  %MemoryLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 26
  %cmp = icmp eq ptr %profile_setting, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %profile_setting to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %profile_setting, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end79_crit_edge, label %if.then5

if.end.if.end79_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then5:                                         ; preds = %if.end
  %sclk_dpm_key_disabled = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 72
  %8 = ptrtoint ptr %sclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then7, label %if.then5.if.end8_crit_edge

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 393, ptr noundef null) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5.if.end8_crit_edge
  %GraphicsDpmLevelCount = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 14
  %10 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %GraphicsDpmLevelCount, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp10300.not = icmp eq i8 %11, 0
  br i1 %cmp10300.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %sclk_activity = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 3
  %add20 = add i32 %5, 314
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %sclk_up_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 1
  %sclk_down_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0301 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ActivityLevel = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0301, i32 5
  %12 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %ActivityLevel, align 1
  %14 = ptrtoint ptr %sclk_activity to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sclk_activity, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp14.not = icmp eq i16 %13, %15
  br i1 %cmp14.not, label %for.body.if.end31_crit_edge, label %if.then16

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %ActivityLevel, align 1
  %mul = mul nuw nsw i32 %i.0301, 56
  %add21 = add i32 %add20, %mul
  %and = and i32 %add21, -4
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_ind_register, align 4
  %call23 = tail call i32 %22(ptr noundef %18, i32 noundef 1, i32 noundef %and) #8
  %23 = ptrtoint ptr %ActivityLevel to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %ActivityLevel, align 1
  %conv26 = zext i16 %24 to i32
  %call27 = tail call i32 @phm_set_field_to_u32(i32 noundef %add21, i32 noundef %call23, i32 noundef %conv26, i32 noundef 2) #8
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_ind_register, align 4
  tail call void %30(ptr noundef %26, i32 noundef 1, i32 noundef %and, i32 noundef %call27) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then16, %for.body.if.end31_crit_edge
  %UpH = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0301, i32 16
  %31 = ptrtoint ptr %UpH to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %UpH, align 1
  %33 = ptrtoint ptr %sclk_up_hyst to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sclk_up_hyst, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp35.not = icmp eq i8 %32, %34
  br i1 %cmp35.not, label %lor.lhs.false, label %if.end31.if.then42_crit_edge

if.end31.if.then42_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.end31
  %DownH = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0301, i32 17
  %35 = ptrtoint ptr %DownH to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %DownH, align 1
  %37 = ptrtoint ptr %sclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sclk_down_hyst, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp40.not = icmp eq i8 %36, %38
  br i1 %cmp40.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %if.end31.if.then42_crit_edge
  %39 = ptrtoint ptr %UpH to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %34, ptr %UpH, align 1
  %40 = ptrtoint ptr %sclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sclk_down_hyst, align 2
  %DownH48 = getelementptr %struct.SMU7_Discrete_GraphicsLevel, ptr %GraphicsLevel, i32 %i.0301, i32 17
  %42 = ptrtoint ptr %DownH48 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %DownH48, align 1
  %mul49 = mul nuw nsw i32 %i.0301, 56
  %add50 = add i32 %mul49, %add
  %add51 = add i32 %add50, 48
  %add54 = add i32 %add50, 49
  %and55 = and i32 %add51, -4
  %43 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %read_ind_register58 = getelementptr inbounds %struct.cgs_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %read_ind_register58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_ind_register58, align 4
  %call60 = tail call i32 %48(ptr noundef %44, i32 noundef 1, i32 noundef %and55) #8
  %49 = ptrtoint ptr %UpH to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %UpH, align 1
  %conv63 = zext i8 %50 to i32
  %call64 = tail call i32 @phm_set_field_to_u32(i32 noundef %add51, i32 noundef %call60, i32 noundef %conv63, i32 noundef 1) #8
  %51 = ptrtoint ptr %DownH48 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %DownH48, align 1
  %conv67 = zext i8 %52 to i32
  %call68 = tail call i32 @phm_set_field_to_u32(i32 noundef %add54, i32 noundef %call64, i32 noundef %conv67, i32 noundef 1) #8
  %53 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %write_ind_register71 = getelementptr inbounds %struct.cgs_ops, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %write_ind_register71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_ind_register71, align 4
  tail call void %58(ptr noundef %54, i32 noundef 1, i32 noundef %and55, i32 noundef %call68) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0301, 1
  %59 = ptrtoint ptr %GraphicsDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %GraphicsDpmLevelCount, align 4
  %conv = zext i8 %60 to i32
  %cmp10 = icmp ult i32 %inc, %conv
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %61 = ptrtoint ptr %sclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool75.not = icmp eq i32 %62, 0
  br i1 %tobool75.not, label %if.then76, label %for.end.if.end79_crit_edge

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then76:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call77 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 394, ptr noundef null) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %for.end.if.end79_crit_edge, %if.end.if.end79_crit_edge
  %bupdate_mclk = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 4
  %63 = ptrtoint ptr %bupdate_mclk to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bupdate_mclk, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool80.not = icmp eq i8 %64, 0
  br i1 %tobool80.not, label %if.end79.cleanup_crit_edge, label %if.then81

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then81:                                        ; preds = %if.end79
  %mclk_dpm_key_disabled = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 73
  %65 = ptrtoint ptr %mclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool82.not = icmp eq i32 %66, 0
  br i1 %tobool82.not, label %if.then83, label %if.then81.if.end85_crit_edge

if.then81.if.end85_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then83:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %call84 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 395, ptr noundef null) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then81.if.end85_crit_edge
  %MemoryDpmLevelCount = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 15
  %67 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %MemoryDpmLevelCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp89304.not = icmp eq i8 %68, 0
  br i1 %cmp89304.not, label %if.end85.for.end167_crit_edge, label %for.body91.lr.ph

if.end85.for.end167_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end167

for.body91.lr.ph:                                 ; preds = %if.end85
  %mclk_activity = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 7
  %add103 = add i32 %5, 848
  %device106 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %mclk_up_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 5
  %mclk_down_hyst = getelementptr inbounds %struct.profile_mode_setting, ptr %profile_setting, i32 0, i32 6
  br label %for.body91

for.body91:                                       ; preds = %for.inc165.for.body91_crit_edge, %for.body91.lr.ph
  %i.1305 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc166, %for.inc165.for.body91_crit_edge ]
  %ActivityLevel93 = getelementptr %struct.SMU7_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1305, i32 17
  %69 = ptrtoint ptr %ActivityLevel93 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %ActivityLevel93, align 1
  %71 = ptrtoint ptr %mclk_activity to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mclk_activity, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %72)
  %cmp96.not = icmp eq i16 %70, %72
  br i1 %cmp96.not, label %for.body91.if.end119_crit_edge, label %if.then98

for.body91.if.end119_crit_edge:                   ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then98:                                        ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %ActivityLevel93 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %ActivityLevel93, align 1
  %mul102 = mul nuw nsw i32 %i.1305, 72
  %add104 = add i32 %add103, %mul102
  %and105 = and i32 %add104, -4
  %74 = ptrtoint ptr %device106 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device106, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %read_ind_register108 = getelementptr inbounds %struct.cgs_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %read_ind_register108 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_ind_register108, align 4
  %call110 = tail call i32 %79(ptr noundef %75, i32 noundef 1, i32 noundef %and105) #8
  %80 = ptrtoint ptr %ActivityLevel93 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %ActivityLevel93, align 1
  %conv113 = zext i16 %81 to i32
  %call114 = tail call i32 @phm_set_field_to_u32(i32 noundef %add104, i32 noundef %call110, i32 noundef %conv113, i32 noundef 2) #8
  %82 = ptrtoint ptr %device106 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device106, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %write_ind_register117 = getelementptr inbounds %struct.cgs_ops, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %write_ind_register117 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_ind_register117, align 4
  tail call void %87(ptr noundef %83, i32 noundef 1, i32 noundef %and105, i32 noundef %call114) #8
  br label %if.end119

if.end119:                                        ; preds = %if.then98, %for.body91.if.end119_crit_edge
  %UpH121 = getelementptr %struct.SMU7_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1305, i32 13
  %88 = ptrtoint ptr %UpH121 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %UpH121, align 1
  %90 = ptrtoint ptr %mclk_up_hyst to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mclk_up_hyst, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %91)
  %cmp124.not = icmp eq i8 %89, %91
  br i1 %cmp124.not, label %lor.lhs.false126, label %if.end119.if.then133_crit_edge

if.end119.if.then133_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

lor.lhs.false126:                                 ; preds = %if.end119
  %DownH128 = getelementptr %struct.SMU7_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1305, i32 14
  %92 = ptrtoint ptr %DownH128 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %DownH128, align 1
  %94 = ptrtoint ptr %mclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mclk_down_hyst, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %95)
  %cmp131.not = icmp eq i8 %93, %95
  br i1 %cmp131.not, label %lor.lhs.false126.for.inc165_crit_edge, label %lor.lhs.false126.if.then133_crit_edge

lor.lhs.false126.if.then133_crit_edge:            ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

lor.lhs.false126.for.inc165_crit_edge:            ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc165

if.then133:                                       ; preds = %lor.lhs.false126.if.then133_crit_edge, %if.end119.if.then133_crit_edge
  %96 = ptrtoint ptr %UpH121 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %91, ptr %UpH121, align 1
  %97 = ptrtoint ptr %mclk_down_hyst to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %mclk_down_hyst, align 2
  %DownH139 = getelementptr %struct.SMU7_Discrete_MemoryLevel, ptr %MemoryLevel, i32 %i.1305, i32 14
  %99 = ptrtoint ptr %DownH139 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %DownH139, align 1
  %mul140 = mul nuw nsw i32 %i.1305, 72
  %add141 = add i32 %mul140, %add2
  %add142 = add i32 %add141, 28
  %add145 = add i32 %add141, 29
  %and146 = and i32 %add142, -4
  %100 = ptrtoint ptr %device106 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device106, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %read_ind_register149 = getelementptr inbounds %struct.cgs_ops, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %read_ind_register149 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read_ind_register149, align 4
  %call151 = tail call i32 %105(ptr noundef %101, i32 noundef 1, i32 noundef %and146) #8
  %106 = ptrtoint ptr %UpH121 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %UpH121, align 1
  %conv154 = zext i8 %107 to i32
  %call155 = tail call i32 @phm_set_field_to_u32(i32 noundef %add142, i32 noundef %call151, i32 noundef %conv154, i32 noundef 1) #8
  %108 = ptrtoint ptr %DownH139 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %DownH139, align 1
  %conv158 = zext i8 %109 to i32
  %call159 = tail call i32 @phm_set_field_to_u32(i32 noundef %add145, i32 noundef %call155, i32 noundef %conv158, i32 noundef 1) #8
  %110 = ptrtoint ptr %device106 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device106, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %write_ind_register162 = getelementptr inbounds %struct.cgs_ops, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %write_ind_register162 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write_ind_register162, align 4
  tail call void %115(ptr noundef %111, i32 noundef 1, i32 noundef %and146, i32 noundef %call159) #8
  br label %for.inc165

for.inc165:                                       ; preds = %if.then133, %lor.lhs.false126.for.inc165_crit_edge
  %inc166 = add nuw nsw i32 %i.1305, 1
  %116 = ptrtoint ptr %MemoryDpmLevelCount to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %MemoryDpmLevelCount, align 1
  %conv88 = zext i8 %117 to i32
  %cmp89 = icmp ult i32 %inc166, %conv88
  br i1 %cmp89, label %for.inc165.for.body91_crit_edge, label %for.inc165.for.end167_crit_edge

for.inc165.for.end167_crit_edge:                  ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end167

for.inc165.for.body91_crit_edge:                  ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body91

for.end167:                                       ; preds = %for.inc165.for.end167_crit_edge, %if.end85.for.end167_crit_edge
  %118 = ptrtoint ptr %mclk_dpm_key_disabled to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mclk_dpm_key_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool169.not = icmp eq i32 %119, 0
  br i1 %tobool169.not, label %if.then170, label %for.end167.cleanup_crit_edge

for.end167.cleanup_crit_edge:                     ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then170:                                       ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #10
  %call171 = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 396, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then170, %for.end167.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end167.cleanup_crit_edge ], [ 0, %if.then170 ], [ 0, %if.end79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_stop_smc(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_ind_register.i, align 4
  %read_ind_register.i = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %read_ind_register.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_ind_register.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 1, i32 noundef -2147483648) #8
  %or.i = or i32 %call.i, 1
  tail call void %5(ptr noundef %1, i32 noundef 1, i32 noundef -2147483648, i32 noundef %or.i) #8
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write_ind_register.i3 = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_ind_register.i3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_ind_register.i3, align 4
  %read_ind_register.i4 = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %read_ind_register.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_ind_register.i4, align 4
  %call.i5 = tail call i32 %15(ptr noundef %9, i32 noundef 1, i32 noundef -2147483644) #8
  %or.i6 = or i32 %call.i5, 1
  tail call void %13(ptr noundef %9, i32 noundef 1, i32 noundef -2147483644, i32 noundef %or.i6) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_for_register_unequal(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_on_indirect_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ci_copy_bytes_to_smc(ptr nocapture noundef readonly %hwmgr, i32 noundef %smc_start_address, ptr nocapture noundef readonly %src, i32 noundef %byte_count, i32 noundef %limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %smc_start_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = add i32 %byte_count, %smc_start_address
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %limit)
  %cmp.not = icmp ult i32 %add, %limit
  %or.cond = and i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %byte_count)
  %cmp1134 = icmp ugt i32 %byte_count, 3
  br i1 %cmp1134, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %cleanup

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %addr.0137 = phi i32 [ %smc_start_address, %while.body.lr.ph ], [ %add19, %if.end17.while.body_crit_edge ]
  %src.addr.0136 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr, %if.end17.while.body_crit_edge ]
  %byte_count.addr.0135 = phi i32 [ %byte_count, %while.body.lr.ph ], [ %sub, %if.end17.while.body_crit_edge ]
  %add.i = add i32 %addr.0137, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %limit)
  %cmp1.not.i = icmp ult i32 %add.i, %limit
  br i1 %cmp1.not.i, label %if.end17, label %ci_set_smc_sram_address.exit

ci_set_smc_sram_address.exit:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end17:                                         ; preds = %while.body
  %arrayidx10 = getelementptr i8, ptr %src.addr.0136, i32 3
  %0 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx10, align 1
  %arrayidx6 = getelementptr i8, ptr %src.addr.0136, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6, align 1
  %arrayidx2 = getelementptr i8, ptr %src.addr.0136, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %6 = ptrtoint ptr %src.addr.0136 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src.addr.0136, align 1
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write_register.i = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register.i, align 4
  tail call void %13(ptr noundef %9, i32 noundef 128, i32 noundef %addr.0137) #8
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write_register5.i = getelementptr inbounds %struct.cgs_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_register5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register5.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %call10.i = tail call i32 %21(ptr noundef %15, i32 noundef 144) #8
  %and11.i = and i32 %call10.i, -2
  tail call void %19(ptr noundef %15, i32 noundef 144, i32 noundef %and11.i) #8
  %conv = zext i8 %7 to i32
  %mul = shl nuw i32 %conv, 24
  %conv3 = zext i8 %5 to i32
  %mul4 = shl nuw nsw i32 %conv3, 16
  %conv7 = zext i8 %3 to i32
  %mul8 = shl nuw nsw i32 %conv7, 8
  %conv11 = zext i8 %1 to i32
  %add5 = or i32 %mul8, %conv11
  %add9 = or i32 %add5, %mul4
  %add12 = or i32 %add9, %mul
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register, align 4
  tail call void %27(ptr noundef %23, i32 noundef 129, i32 noundef %add12) #8
  %add.ptr = getelementptr i8, ptr %src.addr.0136, i32 4
  %sub = add i32 %byte_count.addr.0135, -4
  %add19 = add nuw i32 %addr.0137, 4
  %cmp1 = icmp ugt i32 %sub, 3
  br i1 %cmp1, label %if.end17.while.body_crit_edge, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %byte_count.addr.0.lcssa = phi i32 [ %byte_count, %while.cond.preheader.while.end_crit_edge ], [ %sub, %if.end17.while.end_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %src, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr, %if.end17.while.end_crit_edge ]
  %addr.0.lcssa = phi i32 [ %smc_start_address, %while.cond.preheader.while.end_crit_edge ], [ %add19, %if.end17.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.0.lcssa)
  %cmp20.not = icmp eq i32 %byte_count.addr.0.lcssa, 0
  br i1 %cmp20.not, label %while.end.cleanup_crit_edge, label %if.then22

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %while.end
  %and.i95 = and i32 %addr.0.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %cmp.not.i96 = icmp eq i32 %and.i95, 0
  %add.i97 = add i32 %addr.0.lcssa, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i97, i32 %limit)
  %cmp1.not.i98 = icmp ult i32 %add.i97, %limit
  %or.cond.i99 = and i1 %cmp.not.i96, %cmp1.not.i98
  br i1 %or.cond.i99, label %while.body37.preheader, label %ci_set_smc_sram_address.exit109

ci_set_smc_sram_address.exit109:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %call.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %cleanup

while.body37.preheader:                           ; preds = %if.then22
  %device.i102 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %28 = ptrtoint ptr %device.i102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i102, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write_register.i103 = getelementptr inbounds %struct.cgs_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_register.i103 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_register.i103, align 4
  tail call void %33(ptr noundef %29, i32 noundef 128, i32 noundef %addr.0.lcssa) #8
  %34 = ptrtoint ptr %device.i102 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device.i102, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %write_register5.i104 = getelementptr inbounds %struct.cgs_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_register5.i104 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_register5.i104, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %call10.i105 = tail call i32 %41(ptr noundef %35, i32 noundef 144) #8
  %and11.i106 = and i32 %call10.i105, -2
  tail call void %39(ptr noundef %35, i32 noundef 144, i32 noundef %and11.i106) #8
  %42 = ptrtoint ptr %device.i102 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device.i102, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call31 = tail call i32 %47(ptr noundef %43, i32 noundef 129) #8
  %.neg = mul nsw i32 %byte_count.addr.0.lcssa, -8
  %mul33 = add nsw i32 %.neg, 32
  br label %while.body37

while.body37:                                     ; preds = %while.body37.while.body37_crit_edge, %while.body37.preheader
  %data.0143 = phi i32 [ %add40, %while.body37.while.body37_crit_edge ], [ 0, %while.body37.preheader ]
  %src.addr.1142 = phi ptr [ %incdec.ptr, %while.body37.while.body37_crit_edge ], [ %src.addr.0.lcssa, %while.body37.preheader ]
  %byte_count.addr.1141 = phi i32 [ %dec, %while.body37.while.body37_crit_edge ], [ %byte_count.addr.0.lcssa, %while.body37.preheader ]
  %mul38 = shl i32 %data.0143, 8
  %incdec.ptr = getelementptr i8, ptr %src.addr.1142, i32 1
  %48 = ptrtoint ptr %src.addr.1142 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %src.addr.1142, align 1
  %conv39 = zext i8 %49 to i32
  %add40 = or i32 %mul38, %conv39
  %dec = add i32 %byte_count.addr.1141, -1
  %cmp35.not = icmp eq i32 %dec, 0
  br i1 %cmp35.not, label %if.end48, label %while.body37.while.body37_crit_edge

while.body37.while.body37_crit_edge:              ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body37

if.end48:                                         ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %device.i102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device.i102, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %write_register.i118 = getelementptr inbounds %struct.cgs_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %write_register.i118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_register.i118, align 4
  tail call void %55(ptr noundef %51, i32 noundef 128, i32 noundef %addr.0.lcssa) #8
  %56 = ptrtoint ptr %device.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device.i102, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %write_register5.i119 = getelementptr inbounds %struct.cgs_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_register5.i119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_register5.i119, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %call10.i120 = tail call i32 %63(ptr noundef %57, i32 noundef 144) #8
  %and11.i121 = and i32 %call10.i120, -2
  tail call void %61(ptr noundef %57, i32 noundef 144, i32 noundef %and11.i121) #8
  %shl = shl i32 %add40, %mul33
  %shl42 = shl nsw i32 -1, %mul33
  %neg = xor i32 %shl42, -1
  %and43 = and i32 %call31, %neg
  %or = or i32 %shl, %and43
  %64 = ptrtoint ptr %device.i102 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device.i102, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %write_register51 = getelementptr inbounds %struct.cgs_ops, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write_register51 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_register51, align 4
  tail call void %69(ptr noundef %65, i32 noundef 129, i32 noundef %or) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %ci_set_smc_sram_address.exit109, %while.end.cleanup_crit_edge, %ci_set_smc_sram_address.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %ci_set_smc_sram_address.exit ], [ -22, %ci_set_smc_sram_address.exit109 ], [ 0, %if.end48 ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ci_program_memory_timing_parameters(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  %arb_regs = alloca %struct.SMU7_Discrete_MCArbDramTimingTable, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %arb_regs) #8
  %4 = call ptr @memset(ptr %arb_regs, i32 0, i32 576)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp40.not = icmp eq i32 %6, 0
  br i1 %cmp40.not, label %entry.if.then20_crit_edge, label %for.cond1.preheader.lr.ph

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc16.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.042 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc17, %for.inc16.for.cond1.preheader_crit_edge ]
  %result.041 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %result.2, %for.inc16.for.cond1.preheader_crit_edge ]
  %7 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp438.not = icmp eq i32 %8, 0
  br i1 %cmp438.not, label %for.cond1.preheader.for.inc16_crit_edge, label %for.body5.lr.ph

for.cond1.preheader.for.inc16_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc16

for.body5.lr.ph:                                  ; preds = %for.cond1.preheader
  %value = getelementptr %struct.smu7_single_dpm_table, ptr %1, i32 0, i32 1, i32 %i.042, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %j.039 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.inc.for.body5_crit_edge ]
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %value12 = getelementptr %struct.smu7_dpm_table, ptr %1, i32 0, i32 1, i32 1, i32 %j.039, i32 1
  %11 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value12, align 4
  %call.i = tail call i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef %hwmgr, i32 noundef %10, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %for.inc, label %if.then.i

if.then.i:                                        ; preds = %for.body5
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_populate_memory_timing_parameters._rs, ptr noundef nonnull @__func__.ci_populate_memory_timing_parameters) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.for.inc16_crit_edge, label %do.end.i

if.then.i.for.inc16_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc16

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22) #12
  br label %for.inc16

for.inc:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr [8 x [6 x %struct.SMU7_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.042, i32 %j.039
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call9.i = tail call i32 %18(ptr noundef %14, i32 noundef 2525) #8
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call14.i = tail call i32 %24(ptr noundef %20, i32 noundef 2526) #8
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call19.i = tail call i32 %30(ptr noundef %26, i32 noundef 2562) #8
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %call9.i, ptr %arrayidx14, align 1
  %McArbDramTiming2.i = getelementptr [8 x [6 x %struct.SMU7_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.042, i32 %j.039, i32 1
  %32 = ptrtoint ptr %McArbDramTiming2.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %call14.i, ptr %McArbDramTiming2.i, align 1
  %33 = trunc i32 %call19.i to i8
  %conv.i = and i8 %33, 31
  %McArbBurstTime.i = getelementptr [8 x [6 x %struct.SMU7_Discrete_MCArbDramTimingTableEntry]], ptr %arb_regs, i32 0, i32 %i.042, i32 %j.039, i32 2
  %34 = ptrtoint ptr %McArbBurstTime.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %McArbBurstTime.i, align 1
  %inc = add nuw i32 %j.039, 1
  %35 = ptrtoint ptr %mclk_table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mclk_table, align 4
  %cmp4 = icmp ult i32 %inc, %36
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc16_crit_edge

for.inc.for.inc16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc16

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.inc16:                                        ; preds = %for.inc.for.inc16_crit_edge, %do.end.i, %if.then.i.for.inc16_crit_edge, %for.cond1.preheader.for.inc16_crit_edge
  %result.2 = phi i32 [ %call.i, %if.then.i.for.inc16_crit_edge ], [ %call.i, %do.end.i ], [ %result.041, %for.cond1.preheader.for.inc16_crit_edge ], [ 0, %for.inc.for.inc16_crit_edge ]
  %inc17 = add nuw i32 %i.042, 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc17, %38
  br i1 %cmp, label %for.inc16.for.cond1.preheader_crit_edge, label %for.end18

for.inc16.for.cond1.preheader_crit_edge:          ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.end18:                                        ; preds = %for.inc16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2)
  %cmp19 = icmp eq i32 %result.2, 0
  br i1 %cmp19, label %for.end18.if.then20_crit_edge, label %for.end18.if.end22_crit_edge

for.end18.if.end22_crit_edge:                     ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.end18.if.then20_crit_edge:                    ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %for.end18.if.then20_crit_edge, %entry.if.then20_crit_edge
  %arb_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arb_table_start, align 4
  %call21 = call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %40, ptr noundef nonnull %arb_regs, i32 noundef 576, i32 noundef 262144)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.end18.if.end22_crit_edge
  %result.3 = phi i32 [ %call21, %if.then20 ], [ %result.2, %for.end18.if.end22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %arb_regs) #8
  ret i32 %result.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_set_engine_dram_timings_rv770(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ci_populate_smc_acp_level(ptr noundef %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers) #8
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 16)
  %acp_clock_voltage_dependency_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 17
  %1 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %acp_clock_voltage_dependency_table, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %conv = trunc i32 %4 to i8
  %AcpLevelCount = getelementptr inbounds %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 19
  %5 = ptrtoint ptr %AcpLevelCount to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %AcpLevelCount, align 1
  %AcpBootLevel = getelementptr inbounds %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 38
  %6 = ptrtoint ptr %AcpBootLevel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %AcpBootLevel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp83.not = icmp eq i8 %conv, 0
  br i1 %cmp83.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %do.end30.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %do.end30.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_acp_clock_voltage_dependency_table, ptr %2, i32 0, i32 1, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 31, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %arrayidx7, align 1
  %v = getelementptr %struct.phm_acp_clock_voltage_dependency_table, ptr %2, i32 0, i32 1, i32 %indvars.iv, i32 1
  %10 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v, align 4
  %conv11 = trunc i32 %11 to i16
  %MinVoltage = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 31, i32 %indvars.iv, i32 1
  %12 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %conv11, ptr %MinVoltage, align 1
  %MinPhases = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 31, i32 %indvars.iv, i32 2
  %13 = ptrtoint ptr %MinPhases to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %MinPhases, align 1
  %call = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %8, ptr noundef nonnull %dividers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22 = icmp eq i32 %call, 0
  br i1 %cmp22, label %do.end30, label %if.then

if.then:                                          ; preds = %for.body
  %call24 = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_smc_acp_level._rs, ptr noundef nonnull @__func__.ci_populate_smc_acp_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.117) #12
  br label %cleanup

do.end30:                                         ; preds = %for.body
  %14 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dividers, align 4
  %conv31 = trunc i32 %15 to i8
  %Divider = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 31, i32 %indvars.iv, i32 3
  %16 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv31, ptr %Divider, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %17 = ptrtoint ptr %AcpLevelCount to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %AcpLevelCount, align 1
  %19 = zext i8 %18 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %19
  br i1 %cmp, label %do.end30.for.body_crit_edge, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end30.for.body_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %do.end30.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ci_populate_smc_uvd_level(ptr noundef %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.pp_atomctrl_clock_dividers_vi, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dividers) #8
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 16)
  %uvd_clock_voltage_dependency_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 16
  %1 = ptrtoint ptr %uvd_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uvd_clock_voltage_dependency_table, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4
  %UvdLevelCount = getelementptr inbounds %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 17
  %5 = ptrtoint ptr %UvdLevelCount to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %UvdLevelCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp136.not = icmp eq i8 %4, 0
  br i1 %cmp136.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %do.end60.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %do.end60.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %2, i32 0, i32 1, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 29, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %arrayidx6, align 1
  %dclk = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %2, i32 0, i32 1, i32 %indvars.iv, i32 1
  %9 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dclk, align 4
  %DclkFrequency = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 29, i32 %indvars.iv, i32 1
  %11 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %DclkFrequency, align 1
  %v = getelementptr %struct.phm_uvd_clock_voltage_dependency_table, ptr %2, i32 0, i32 1, i32 %indvars.iv, i32 2
  %12 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v, align 4
  %.tr = trunc i32 %13 to i16
  %conv16 = shl i16 %.tr, 2
  %MinVddc = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 29, i32 %indvars.iv, i32 2
  %14 = ptrtoint ptr %MinVddc to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %conv16, ptr %MinVddc, align 1
  %MinVddcPhases = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 29, i32 %indvars.iv, i32 3
  %15 = ptrtoint ptr %MinVddcPhases to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %MinVddcPhases, align 1
  %call = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %7, ptr noundef nonnull %dividers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp27 = icmp eq i32 %call, 0
  br i1 %cmp27, label %do.end35, label %if.then

if.then:                                          ; preds = %for.body
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_smc_uvd_level._rs, ptr noundef nonnull @__func__.ci_populate_smc_uvd_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35:                                         ; preds = %for.body
  %16 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dividers, align 4
  %conv36 = trunc i32 %17 to i8
  %VclkDivider = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 29, i32 %indvars.iv, i32 4
  %18 = ptrtoint ptr %VclkDivider to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv36, ptr %VclkDivider, align 1
  %19 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %DclkFrequency, align 1
  %call44 = call i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef %hwmgr, i32 noundef %20, ptr noundef nonnull %dividers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp46 = icmp eq i32 %call44, 0
  br i1 %cmp46, label %do.end60, label %if.then48

if.then48:                                        ; preds = %do.end35
  %call49 = call i32 @___ratelimit(ptr noundef nonnull @ci_populate_smc_uvd_level._rs.119, ptr noundef nonnull @__func__.ci_populate_smc_uvd_level) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %if.then48.cleanup.sink.split_crit_edge

if.then48.cleanup.sink.split_crit_edge:           ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end60:                                         ; preds = %do.end35
  %21 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dividers, align 4
  %conv62 = trunc i32 %22 to i8
  %DclkDivider = getelementptr %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 29, i32 %indvars.iv, i32 5
  %23 = ptrtoint ptr %DclkDivider to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv62, ptr %DclkDivider, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %24 = ptrtoint ptr %UvdLevelCount to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %UvdLevelCount, align 1
  %26 = zext i8 %25 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %26
  br i1 %cmp, label %do.end60.for.body_crit_edge, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end60.for.body_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then48.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.122.sink = phi ptr [ @.str.118, %if.then.cleanup.sink.split_crit_edge ], [ @.str.122, %if.then48.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then.cleanup.sink.split_crit_edge ], [ %call44, %if.then48.cleanup.sink.split_crit_edge ]
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %.str.122.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end60.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call44, %if.then48.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %do.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dividers) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_populate_smc_boot_level(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %GraphicsBootLevel = getelementptr inbounds %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 44
  %4 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %GraphicsBootLevel, align 1
  %MemoryBootLevel = getelementptr inbounds %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 52
  %5 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %MemoryBootLevel, align 1
  %sclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 4
  %6 = ptrtoint ptr %sclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sclk_bootup_value, align 4
  %GraphicsBootLevel1 = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 44
  %call = tail call i32 @phm_find_boot_level(ptr noundef %1, i32 noundef %7, ptr noundef %GraphicsBootLevel1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %GraphicsBootLevel1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %GraphicsBootLevel1, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mclk_table = getelementptr inbounds %struct.smu7_dpm_table, ptr %1, i32 0, i32 1
  %mclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 5
  %9 = ptrtoint ptr %mclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_bootup_value, align 4
  %MemoryBootLevel8 = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 52
  %call9 = tail call i32 @phm_find_boot_level(ptr noundef %mclk_table, i32 noundef %10, ptr noundef %MemoryBootLevel8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end.if.end19_crit_edge, label %if.then11

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %MemoryBootLevel8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %MemoryBootLevel8, align 2
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %if.end.if.end19_crit_edge
  %vbios_boot_state = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31
  %vddc_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 1
  %12 = ptrtoint ptr %vddc_bootup_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vddc_bootup_value, align 2
  %BootVddc = getelementptr inbounds %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 79
  %14 = ptrtoint ptr %BootVddc to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %BootVddc, align 1
  %vddci_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 2
  %15 = ptrtoint ptr %vddci_bootup_value to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vddci_bootup_value, align 4
  %BootVddci = getelementptr inbounds %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 80
  %17 = ptrtoint ptr %BootVddci to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %BootVddci, align 1
  %18 = ptrtoint ptr %vbios_boot_state to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vbios_boot_state, align 4
  %BootMVdd = getelementptr inbounds %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 81
  %20 = ptrtoint ptr %BootMVdd to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %BootMVdd, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_populate_smc_initial_state(ptr nocapture noundef readonly %hwmgr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  %dyn_state = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %4 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dyn_state, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv3 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp3.not = icmp eq i32 %conv3, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 4
  %8 = ptrtoint ptr %sclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sclk_bootup_value, align 4
  %10 = trunc i32 %7 to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv25 = phi i32 [ 0, %for.body.lr.ph ], [ %conv2, %for.inc.for.body_crit_edge ]
  %level.04 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %5, i32 0, i32 1, i32 %conv25
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp7.not = icmp ult i32 %12, %9
  br i1 %cmp7.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %GraphicsBootLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 44
  %13 = ptrtoint ptr %GraphicsBootLevel to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %level.04, ptr %GraphicsBootLevel, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i8 %level.04, 1
  %conv2 = zext i8 %inc to i32
  %cmp = icmp ult i8 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %vddc_dependency_on_mclk = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 2
  %14 = ptrtoint ptr %vddc_dependency_on_mclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vddc_dependency_on_mclk, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %conv14 = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv14)
  %cmp156.not = icmp eq i32 %conv14, 0
  br i1 %cmp156.not, label %for.end.for.end32_crit_edge, label %for.body17.lr.ph

for.end.for.end32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end32

for.body17.lr.ph:                                 ; preds = %for.end
  %mclk_bootup_value = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 31, i32 5
  %18 = ptrtoint ptr %mclk_bootup_value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mclk_bootup_value, align 4
  %20 = trunc i32 %17 to i8
  br label %for.body17

for.body17:                                       ; preds = %for.inc30.for.body17_crit_edge, %for.body17.lr.ph
  %conv138 = phi i32 [ 0, %for.body17.lr.ph ], [ %conv13, %for.inc30.for.body17_crit_edge ]
  %level.17 = phi i8 [ 0, %for.body17.lr.ph ], [ %inc31, %for.inc30.for.body17_crit_edge ]
  %arrayidx22 = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %15, i32 0, i32 1, i32 %conv138
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %19)
  %cmp25.not = icmp ult i32 %22, %19
  br i1 %cmp25.not, label %for.inc30, label %if.then27

if.then27:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  %MemoryBootLevel = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 6, i32 52
  %23 = ptrtoint ptr %MemoryBootLevel to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %level.17, ptr %MemoryBootLevel, align 2
  br label %for.end32

for.inc30:                                        ; preds = %for.body17
  %inc31 = add nuw i8 %level.17, 1
  %conv13 = zext i8 %inc31 to i32
  %cmp15 = icmp ult i8 %inc31, %20
  br i1 %cmp15, label %for.inc30.for.body17_crit_edge, label %for.inc30.for.end32_crit_edge

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end32

for.inc30.for.body17_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %if.then27, %for.end.for.end32_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_populate_bapm_parameters_in_dpm_table(ptr nocapture noundef readonly %hwmgr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %power_tune_defaults = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %power_tune_defaults to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_tune_defaults, align 4
  %cac_dtp_table1 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %6 = ptrtoint ptr %cac_dtp_table1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cac_dtp_table1, align 4
  %ppm_parameter_table = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 19
  %8 = ptrtoint ptr %ppm_parameter_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppm_parameter_table, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %7, align 4
  %mul = shl i16 %11, 8
  %DefaultTdp = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 69
  %12 = ptrtoint ptr %DefaultTdp to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %mul, ptr %DefaultTdp, align 1
  %usConfigurableTDP = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %usConfigurableTDP to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %usConfigurableTDP, align 2
  %mul5 = shl i16 %14, 8
  %TargetTdp = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 70
  %15 = ptrtoint ptr %TargetTdp to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %mul5, ptr %TargetTdp, align 1
  %DTETjOffset = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 76
  %16 = ptrtoint ptr %DTETjOffset to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %DTETjOffset, align 1
  %temperature_high = getelementptr inbounds %struct.smu7_hwmgr, ptr %3, i32 0, i32 69, i32 1
  %17 = ptrtoint ptr %temperature_high to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temperature_high, align 4
  %div = sdiv i32 %18, 1000
  %conv7 = trunc i32 %div to i8
  %GpuTjMax = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 77
  %19 = ptrtoint ptr %GpuTjMax to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7, ptr %GpuTjMax, align 1
  %GpuTjHyst = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 78
  %20 = ptrtoint ptr %GpuTjHyst to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %GpuTjHyst, align 1
  %dte_ambient_temp_base = getelementptr inbounds %struct.ci_pt_defaults, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %dte_ambient_temp_base to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dte_ambient_temp_base, align 1
  %DTEAmbientTempBase = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 75
  %23 = ptrtoint ptr %DTEAmbientTempBase to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %DTEAmbientTempBase, align 1
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dgpu_tdp = getelementptr inbounds %struct.phm_ppm_table, ptr %9, i32 0, i32 7
  %24 = ptrtoint ptr %dgpu_tdp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dgpu_tdp, align 4
  %conv9 = shl i32 %25, 8
  %mul10 = and i32 %conv9, 16776960
  %div11 = udiv i32 %mul10, 1000
  %conv12 = trunc i32 %div11 to i16
  %PPM_PkgPwrLimit = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 67
  %26 = ptrtoint ptr %PPM_PkgPwrLimit to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %conv12, ptr %PPM_PkgPwrLimit, align 1
  %tj_max = getelementptr inbounds %struct.phm_ppm_table, ptr %9, i32 0, i32 9
  %27 = ptrtoint ptr %tj_max to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tj_max, align 4
  %.tr = trunc i32 %28 to i16
  %conv16 = shl i16 %.tr, 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %PPM_PkgPwrLimit17 = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 67
  %29 = ptrtoint ptr %PPM_PkgPwrLimit17 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 0, ptr %PPM_PkgPwrLimit17, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv16.sink = phi i16 [ 0, %if.else ], [ %conv16, %if.then ]
  %30 = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 68
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %conv16.sink, ptr %30, align 1
  %bapm_temp_gradient = getelementptr inbounds %struct.ci_pt_defaults, ptr %5, i32 0, i32 7
  %32 = ptrtoint ptr %bapm_temp_gradient to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bapm_temp_gradient, align 4
  %BAPM_TEMP_GRADIENT = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 83
  %34 = ptrtoint ptr %BAPM_TEMP_GRADIENT to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %BAPM_TEMP_GRADIENT, align 1
  %bapmti_r = getelementptr inbounds %struct.ci_pt_defaults, ptr %5, i32 0, i32 8
  %bapmti_rc = getelementptr inbounds %struct.ci_pt_defaults, ptr %5, i32 0, i32 9
  %arrayidx33 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 0, i32 0
  %arrayidx36 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 0, i32 0
  %35 = ptrtoint ptr %bapmti_r to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bapmti_r, align 2
  %37 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %arrayidx33, align 1
  %38 = ptrtoint ptr %bapmti_rc to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bapmti_rc, align 2
  %40 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %arrayidx36, align 1
  %incdec.ptr = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 1
  %incdec.ptr38 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 1
  %arrayidx33.1 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 0, i32 1
  %arrayidx36.1 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 0, i32 1
  %41 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %incdec.ptr, align 2
  %43 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %arrayidx33.1, align 1
  %44 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %incdec.ptr38, align 2
  %46 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %arrayidx36.1, align 1
  %incdec.ptr.1 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 2
  %incdec.ptr38.1 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 2
  %arrayidx33.2 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 0, i32 2
  %arrayidx36.2 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 0, i32 2
  %47 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %incdec.ptr.1, align 2
  %49 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %arrayidx33.2, align 1
  %50 = ptrtoint ptr %incdec.ptr38.1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %incdec.ptr38.1, align 2
  %52 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %arrayidx36.2, align 1
  %incdec.ptr.2 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 3
  %incdec.ptr38.2 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 3
  %arrayidx33.19 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 1, i32 0
  %arrayidx36.110 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 1, i32 0
  %53 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %incdec.ptr.2, align 2
  %55 = ptrtoint ptr %arrayidx33.19 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %arrayidx33.19, align 1
  %56 = ptrtoint ptr %incdec.ptr38.2 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %incdec.ptr38.2, align 2
  %58 = ptrtoint ptr %arrayidx36.110 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %arrayidx36.110, align 1
  %incdec.ptr.111 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 4
  %incdec.ptr38.112 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 4
  %arrayidx33.1.1 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 1, i32 1
  %arrayidx36.1.1 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 1, i32 1
  %59 = ptrtoint ptr %incdec.ptr.111 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %incdec.ptr.111, align 2
  %61 = ptrtoint ptr %arrayidx33.1.1 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %arrayidx33.1.1, align 1
  %62 = ptrtoint ptr %incdec.ptr38.112 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %incdec.ptr38.112, align 2
  %64 = ptrtoint ptr %arrayidx36.1.1 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %63, ptr %arrayidx36.1.1, align 1
  %incdec.ptr.1.1 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 5
  %incdec.ptr38.1.1 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 5
  %arrayidx33.2.1 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 1, i32 2
  %arrayidx36.2.1 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 1, i32 2
  %65 = ptrtoint ptr %incdec.ptr.1.1 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %incdec.ptr.1.1, align 2
  %67 = ptrtoint ptr %arrayidx33.2.1 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %arrayidx33.2.1, align 1
  %68 = ptrtoint ptr %incdec.ptr38.1.1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %incdec.ptr38.1.1, align 2
  %70 = ptrtoint ptr %arrayidx36.2.1 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %arrayidx36.2.1, align 1
  %incdec.ptr.2.1 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 6
  %incdec.ptr38.2.1 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 6
  %arrayidx33.213 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 2, i32 0
  %arrayidx36.214 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 2, i32 0
  %71 = ptrtoint ptr %incdec.ptr.2.1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %incdec.ptr.2.1, align 2
  %73 = ptrtoint ptr %arrayidx33.213 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %arrayidx33.213, align 1
  %74 = ptrtoint ptr %incdec.ptr38.2.1 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %incdec.ptr38.2.1, align 2
  %76 = ptrtoint ptr %arrayidx36.214 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %75, ptr %arrayidx36.214, align 1
  %incdec.ptr.215 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 7
  %incdec.ptr38.216 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 7
  %arrayidx33.1.2 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 2, i32 1
  %arrayidx36.1.2 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 2, i32 1
  %77 = ptrtoint ptr %incdec.ptr.215 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %incdec.ptr.215, align 2
  %79 = ptrtoint ptr %arrayidx33.1.2 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %arrayidx33.1.2, align 1
  %80 = ptrtoint ptr %incdec.ptr38.216 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %incdec.ptr38.216, align 2
  %82 = ptrtoint ptr %arrayidx36.1.2 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %arrayidx36.1.2, align 1
  %incdec.ptr.1.2 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 8
  %incdec.ptr38.1.2 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 8
  %arrayidx33.2.2 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 2, i32 2
  %arrayidx36.2.2 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 2, i32 2
  %83 = ptrtoint ptr %incdec.ptr.1.2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %incdec.ptr.1.2, align 2
  %85 = ptrtoint ptr %arrayidx33.2.2 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %84, ptr %arrayidx33.2.2, align 1
  %86 = ptrtoint ptr %incdec.ptr38.1.2 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %incdec.ptr38.1.2, align 2
  %88 = ptrtoint ptr %arrayidx36.2.2 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %87, ptr %arrayidx36.2.2, align 1
  %incdec.ptr.2.2 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 9
  %incdec.ptr38.2.2 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 9
  %arrayidx33.3 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 3, i32 0
  %arrayidx36.3 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 3, i32 0
  %89 = ptrtoint ptr %incdec.ptr.2.2 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %incdec.ptr.2.2, align 2
  %91 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %90, ptr %arrayidx33.3, align 1
  %92 = ptrtoint ptr %incdec.ptr38.2.2 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %incdec.ptr38.2.2, align 2
  %94 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %arrayidx36.3, align 1
  %incdec.ptr.3 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 10
  %incdec.ptr38.3 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 10
  %arrayidx33.1.3 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 3, i32 1
  %arrayidx36.1.3 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 3, i32 1
  %95 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %incdec.ptr.3, align 2
  %97 = ptrtoint ptr %arrayidx33.1.3 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 %96, ptr %arrayidx33.1.3, align 1
  %98 = ptrtoint ptr %incdec.ptr38.3 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %incdec.ptr38.3, align 2
  %100 = ptrtoint ptr %arrayidx36.1.3 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %99, ptr %arrayidx36.1.3, align 1
  %incdec.ptr.1.3 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 11
  %incdec.ptr38.1.3 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 11
  %arrayidx33.2.3 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 3, i32 2
  %arrayidx36.2.3 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 3, i32 2
  %101 = ptrtoint ptr %incdec.ptr.1.3 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %incdec.ptr.1.3, align 2
  %103 = ptrtoint ptr %arrayidx33.2.3 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 %102, ptr %arrayidx33.2.3, align 1
  %104 = ptrtoint ptr %incdec.ptr38.1.3 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %incdec.ptr38.1.3, align 2
  %106 = ptrtoint ptr %arrayidx36.2.3 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %105, ptr %arrayidx36.2.3, align 1
  %incdec.ptr.2.3 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 12
  %incdec.ptr38.2.3 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 12
  %arrayidx33.4 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 4, i32 0
  %arrayidx36.4 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 4, i32 0
  %107 = ptrtoint ptr %incdec.ptr.2.3 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %incdec.ptr.2.3, align 2
  %109 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %arrayidx33.4, align 1
  %110 = ptrtoint ptr %incdec.ptr38.2.3 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %incdec.ptr38.2.3, align 2
  %112 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %111, ptr %arrayidx36.4, align 1
  %incdec.ptr.4 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 13
  %incdec.ptr38.4 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 13
  %arrayidx33.1.4 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 4, i32 1
  %arrayidx36.1.4 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 4, i32 1
  %113 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %incdec.ptr.4, align 2
  %115 = ptrtoint ptr %arrayidx33.1.4 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %114, ptr %arrayidx33.1.4, align 1
  %116 = ptrtoint ptr %incdec.ptr38.4 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %incdec.ptr38.4, align 2
  %118 = ptrtoint ptr %arrayidx36.1.4 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 %117, ptr %arrayidx36.1.4, align 1
  %incdec.ptr.1.4 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 8, i32 14
  %incdec.ptr38.1.4 = getelementptr %struct.ci_pt_defaults, ptr %5, i32 0, i32 9, i32 14
  %arrayidx33.2.4 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 73, i32 4, i32 2
  %arrayidx36.2.4 = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 6, i32 74, i32 4, i32 2
  %119 = ptrtoint ptr %incdec.ptr.1.4 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %incdec.ptr.1.4, align 2
  %121 = ptrtoint ptr %arrayidx33.2.4 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 2)
  store i16 %120, ptr %arrayidx33.2.4, align 1
  %122 = ptrtoint ptr %incdec.ptr38.1.4 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %incdec.ptr38.1.4, align 2
  %124 = ptrtoint ptr %arrayidx36.2.4 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 2)
  store i16 %123, ptr %arrayidx36.2.4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_populate_vr_config(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %VRConfig = getelementptr inbounds %struct.SMU7_Discrete_DpmTable, ptr %table, i32 0, i32 22
  %2 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %VRConfig, align 1
  %or = or i32 %3, 256
  store i32 %or, ptr %VRConfig, align 1
  %voltage_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %voltage_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or4 = or i32 %3, 258
  %6 = ptrtoint ptr %VRConfig to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %or4, ptr %VRConfig, align 1
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %vddci_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vddci_control, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %8, label %if.end.if.end22_crit_edge [
    i32 2, label %if.end.if.end22.sink.split_crit_edge
    i32 1, label %if.then16
  ]

if.end.if.end22.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.then16, %if.end.if.end22.sink.split_crit_edge
  %.sink1 = phi i32 [ 196608, %if.then16 ], [ 131072, %if.end.if.end22.sink.split_crit_edge ]
  %10 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %VRConfig, align 1
  %or20 = or i32 %11, %.sink1
  store i32 %or20, ptr %VRConfig, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.end.if.end22_crit_edge
  %mvdd_control = getelementptr inbounds %struct.smu7_hwmgr, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mvdd_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp23 = icmp eq i32 %13, 1
  br i1 %cmp23, label %if.then25, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %VRConfig to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %VRConfig, align 1
  %or29 = or i32 %15, 67108864
  store i32 %or29, ptr %VRConfig, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end22.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atomctrl_get_pp_assign_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ci_populate_initial_mc_reg_table(ptr nocapture noundef readonly %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %mc_regs = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 9
  %2 = call ptr @memset(ptr %mc_regs, i32 0, i32 452)
  %3 = load ptr, ptr %smu_backend, align 4
  %mc_reg_table1.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mc_reg_table1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mc_reg_table1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp45.not.i = icmp eq i8 %5, 0
  br i1 %cmp45.not.i, label %entry.do.end8_crit_edge, label %for.body.lr.ph.i

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

for.body.lr.ph.i:                                 ; preds = %entry
  %validflag.i = getelementptr inbounds %struct.ci_smumgr, ptr %3, i32 0, i32 10, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc25.i, %for.inc.i.for.body.i_crit_edge ]
  %i.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %validflag.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %validflag.i, align 2
  %conv4.i = zext i16 %7 to i32
  %shl.i = shl nuw i32 1, %j.047.i
  %and.i = and i32 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.046.i)
  %cmp5.i = icmp ult i32 %i.046.i, 16
  br i1 %cmp5.i, label %do.end14.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.body.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_populate_mc_reg_address._rs, ptr noundef nonnull @__func__.ci_populate_mc_reg_address) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.then7.i.if.then_crit_edge, label %do.end.i

if.then7.i.if.then_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.135) #12
  br label %if.then

do.end14.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 10, i32 4, i32 %j.047.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 4
  %arrayidx16.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 9, i32 2, i32 %i.046.i
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %arrayidx16.i, align 1
  %s1.i = getelementptr %struct.ci_smumgr, ptr %3, i32 0, i32 10, i32 4, i32 %j.047.i, i32 1
  %11 = ptrtoint ptr %s1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s1.i, align 2
  %s123.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 9, i32 2, i32 %i.046.i, i32 1
  %13 = ptrtoint ptr %s123.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %s123.i, align 1
  %inc.i = add nuw nsw i32 %i.046.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end14.i, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %do.end14.i ], [ %i.046.i, %for.body.i.for.inc.i_crit_edge ]
  %inc25.i = add nuw nsw i32 %j.047.i, 1
  %14 = ptrtoint ptr %mc_reg_table1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mc_reg_table1.i, align 4
  %conv.i = zext i8 %15 to i32
  %cmp.i = icmp ult i32 %inc25.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end8_crit_edge

for.inc.i.do.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then:                                          ; preds = %do.end.i, %if.then7.i.if.then_crit_edge
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @ci_populate_initial_mc_reg_table._rs, ptr noundef nonnull @__func__.ci_populate_initial_mc_reg_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.130) #12
  br label %cleanup

do.end8:                                          ; preds = %for.inc.i.do.end8_crit_edge, %entry.do.end8_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.do.end8_crit_edge ], [ %i.1.i, %for.inc.i.do.end8_crit_edge ]
  %conv26.i = trunc i32 %i.0.lcssa.i to i8
  %16 = ptrtoint ptr %mc_regs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv26.i, ptr %mc_regs, align 1
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %17 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %backend.i, align 4
  %mclk_table.i = getelementptr inbounds %struct.smu7_dpm_table, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %mclk_table.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.not.i = icmp eq i32 %20, 0
  br i1 %cmp1.not.i, label %do.end8.ci_convert_mc_reg_table_to_smc.exit_crit_edge, label %do.end8.for.body.i40_crit_edge

do.end8.for.body.i40_crit_edge:                   ; preds = %do.end8
  br label %for.body.i40

do.end8.ci_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_convert_mc_reg_table_to_smc.exit

for.body.i40:                                     ; preds = %ci_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i40_crit_edge, %do.end8.for.body.i40_crit_edge
  %i.02.i = phi i32 [ %inc.i41, %ci_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i40_crit_edge ], [ 0, %do.end8.for.body.i40_crit_edge ]
  %value.i = getelementptr %struct.smu7_dpm_table, ptr %18, i32 0, i32 1, i32 1, i32 %i.02.i, i32 1
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value.i, align 4
  %arrayidx4.i = getelementptr %struct.ci_smumgr, ptr %1, i32 0, i32 9, i32 3, i32 %i.02.i
  %23 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smu_backend, align 4
  %num_entries.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %24, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_entries.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp1.not.i.i = icmp eq i8 %26, 0
  br i1 %cmp1.not.i.i, label %for.body.i40.for.end.thread.i.i_crit_edge, label %for.body.i40.for.body.i.i_crit_edge

for.body.i40.for.body.i.i_crit_edge:              ; preds = %for.body.i40
  br label %for.body.i.i

for.body.i40.for.end.thread.i.i_crit_edge:        ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i40.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i40.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ci_smumgr, ptr %24, i32 0, i32 10, i32 3, i32 %i.02.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %22)
  %cmp3.not.i.i = icmp ult i32 %28, %22
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %conv.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %i.02.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %conv.i.i)
  %cmp8.i.i = icmp eq i32 %i.0.lcssa.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i)
  %cmp10.not.i.i = icmp eq i32 %i.0.lcssa.i.i, 0
  %dec.i.i = add nsw i32 %i.0.lcssa.i.i, -1
  br i1 %cmp10.not.i.i, label %for.end.i.i.for.end.thread.i.i_crit_edge, label %for.end.i.i._crit_edge

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %29

for.end.i.i.for.end.thread.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %for.end.i.i.for.end.thread.i.i_crit_edge, %for.body.i40.for.end.thread.i.i_crit_edge
  %cmp813.i.i = phi i1 [ %cmp8.i.i, %for.end.i.i.for.end.thread.i.i_crit_edge ], [ true, %for.body.i40.for.end.thread.i.i_crit_edge ]
  br label %29

29:                                               ; preds = %for.end.thread.i.i, %for.end.i.i._crit_edge
  %cmp812.i.i = phi i1 [ %cmp813.i.i, %for.end.thread.i.i ], [ %cmp8.i.i, %for.end.i.i._crit_edge ]
  %i.0.lcssa10.i.i = phi i32 [ 0, %for.end.thread.i.i ], [ %i.0.lcssa.i.i, %for.end.i.i._crit_edge ]
  %30 = phi i32 [ 0, %for.end.thread.i.i ], [ %dec.i.i, %for.end.i.i._crit_edge ]
  %i.1.i.i = select i1 %cmp812.i.i, i32 %30, i32 %i.0.lcssa10.i.i
  %mc_reg_table.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %24, i32 0, i32 10
  %31 = ptrtoint ptr %mc_reg_table.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mc_reg_table.i.i, align 4
  %conv18.i.i = zext i8 %32 to i32
  %validflag.i.i = getelementptr inbounds %struct.ci_smumgr, ptr %24, i32 0, i32 10, i32 2
  %33 = ptrtoint ptr %validflag.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %validflag.i.i, align 2
  %conv20.i.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp8.not.i.i.i = icmp eq i8 %32, 0
  br i1 %cmp8.not.i.i.i, label %.ci_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %.for.body.i.i.i_crit_edge

.for.body.i.i.i_crit_edge:                        ; preds = %29
  br label %for.body.i.i.i

.ci_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %29
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_convert_mc_reg_table_entry_to_smc.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %.for.body.i.i.i_crit_edge
  %j.010.i.i.i = phi i32 [ %inc3.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %i.09.i.i.i = phi i32 [ %i.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %j.010.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr %struct.ci_smumgr, ptr %24, i32 0, i32 10, i32 3, i32 %i.1.i.i, i32 1, i32 %j.010.i.i.i
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr [16 x i32], ptr %arrayidx4.i, i32 0, i32 %i.09.i.i.i
  %37 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %arrayidx2.i.i.i, align 1
  %inc.i.i.i = add i32 %i.09.i.i.i, 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ %inc.i.i.i, %if.then.i.i.i ], [ %i.09.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %inc3.i.i.i = add nuw nsw i32 %j.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc3.i.i.i, %conv18.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.ci_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.ci_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_convert_mc_reg_table_entry_to_smc.exit.i

ci_convert_mc_reg_table_entry_to_smc.exit.i:      ; preds = %for.inc.i.i.i.ci_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, %.ci_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge
  %inc.i41 = add nuw i32 %i.02.i, 1
  %38 = ptrtoint ptr %mclk_table.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mclk_table.i, align 4
  %cmp.i42 = icmp ult i32 %inc.i41, %39
  br i1 %cmp.i42, label %ci_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i40_crit_edge, label %ci_convert_mc_reg_table_entry_to_smc.exit.i.ci_convert_mc_reg_table_to_smc.exit_crit_edge

ci_convert_mc_reg_table_entry_to_smc.exit.i.ci_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %ci_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_convert_mc_reg_table_to_smc.exit

ci_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i40_crit_edge: ; preds = %ci_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i40

ci_convert_mc_reg_table_to_smc.exit:              ; preds = %ci_convert_mc_reg_table_entry_to_smc.exit.i.ci_convert_mc_reg_table_to_smc.exit_crit_edge, %do.end8.ci_convert_mc_reg_table_to_smc.exit_crit_edge
  %mc_reg_table_start = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mc_reg_table_start, align 4
  %call27 = tail call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %41, ptr noundef %mc_regs, i32 noundef 452, i32 noundef 262144)
  br label %cleanup

cleanup:                                          ; preds = %ci_convert_mc_reg_table_to_smc.exit, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %ci_convert_mc_reg_table_to_smc.exit ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ci_populate_pm_fuses(ptr noundef readonly %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %device.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %4 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %write_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_register.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register.i.i, align 4
  tail call void %9(ptr noundef %5, i32 noundef 128, i32 noundef 131148) #8
  %10 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write_register5.i.i = getelementptr inbounds %struct.cgs_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_register5.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register5.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %call10.i.i = tail call i32 %17(ptr noundef %11, i32 noundef 144) #8
  %and11.i.i = and i32 %call10.i.i, -2
  tail call void %15(ptr noundef %11, i32 noundef 144, i32 noundef %and11.i.i) #8
  %18 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call2.i = tail call i32 %23(ptr noundef %19, i32 noundef 129) #8
  %24 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smu_backend, align 4
  %power_tune_table.i = getelementptr inbounds %struct.ci_smumgr, ptr %25, i32 0, i32 7
  %BapmVddCVidLoSidd.i = getelementptr inbounds %struct.ci_smumgr, ptr %25, i32 0, i32 7, i32 1
  %BapmVddCVidHiSidd2.i = getelementptr inbounds %struct.ci_smumgr, ptr %25, i32 0, i32 7, i32 14
  %dyn_state.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %cac_leakage_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 13
  %26 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cac_leakage_table.i, align 4
  %cmp.not.i = icmp eq ptr %27, null
  br i1 %cmp.not.i, label %if.then.i, label %do.body11.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_populate_bapm_vddc_vid_sidd._rs, ptr noundef nonnull @__func__.ci_populate_bapm_vddc_vid_sidd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_bapm_vddc_vid_sidd.exit

do.body11.i:                                      ; preds = %if.end
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %29)
  %cmp14.i = icmp ult i32 %29, 9
  br i1 %cmp14.i, label %do.body28.i, label %if.then15.i

if.then15.i:                                      ; preds = %do.body11.i
  %call16.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_populate_bapm_vddc_vid_sidd._rs.139, ptr noundef nonnull @__func__.ci_populate_bapm_vddc_vid_sidd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then15.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge, label %if.then15.i.cleanup.sink.split.i_crit_edge

if.then15.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then15.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_bapm_vddc_vid_sidd.exit

do.body28.i:                                      ; preds = %do.body11.i
  %30 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dyn_state.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %33)
  %cmp34.i = icmp eq i32 %29, %33
  br i1 %cmp34.i, label %for.cond.preheader.i, label %if.then35.i

for.cond.preheader.i:                             ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp51115.not.i = icmp eq i32 %29, 0
  br i1 %cmp51115.not.i, label %for.cond.preheader.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_bapm_vddc_vid_sidd.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  br label %for.body.i

if.then35.i:                                      ; preds = %do.body28.i
  %call36.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_populate_bapm_vddc_vid_sidd._rs.143, ptr noundef nonnull @__func__.ci_populate_bapm_vddc_vid_sidd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then35.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge, label %if.then35.i.cleanup.sink.split.i_crit_edge

if.then35.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then35.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_bapm_vddc_vid_sidd.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %34 = phi ptr [ %27, %for.body.lr.ph.i ], [ %53, %for.inc.i.for.body.i_crit_edge ]
  %i.0116.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  %arrayidx74.i = getelementptr %struct.phm_cac_leakage_table, ptr %34, i32 0, i32 1, i32 %i.0116.i
  %37 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx74.i, align 4
  %call75.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %38) #8
  %arrayidx76.i = getelementptr i8, ptr %BapmVddCVidLoSidd.i, i32 %i.0116.i
  %39 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call75.i, ptr %arrayidx76.i, align 1
  %40 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cac_leakage_table.i, align 4
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then54.i

if.then54.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx62.i = getelementptr %struct.phm_cac_leakage_table, ptr %41, i32 0, i32 1, i32 %i.0116.i
  %Vddc2.i = getelementptr inbounds %struct.anon.1, ptr %arrayidx62.i, i32 0, i32 1
  %42 = ptrtoint ptr %Vddc2.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %Vddc2.i, align 2
  %call63.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %43) #8
  %arrayidx64.i = getelementptr i8, ptr %power_tune_table.i, i32 %i.0116.i
  %44 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call63.i, ptr %arrayidx64.i, align 1
  %45 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cac_leakage_table.i, align 4
  %Vddc3.i = getelementptr %struct.phm_cac_leakage_table, ptr %46, i32 0, i32 1, i32 %i.0116.i, i32 0, i32 1
  %47 = ptrtoint ptr %Vddc3.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %Vddc3.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %Leakage.i = getelementptr %struct.phm_cac_leakage_table, ptr %41, i32 0, i32 1, i32 %i.0116.i, i32 0, i32 1
  %49 = ptrtoint ptr %Leakage.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %Leakage.i, align 4
  %conv.i = trunc i32 %50 to i16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then54.i
  %.sink.i = phi i16 [ %48, %if.then54.i ], [ %conv.i, %if.else.i ]
  %BapmVddCVidHiSidd2.sink.i = phi ptr [ %BapmVddCVidHiSidd2.i, %if.then54.i ], [ %power_tune_table.i, %if.else.i ]
  %call69.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %.sink.i) #8
  %arrayidx70.i = getelementptr i8, ptr %BapmVddCVidHiSidd2.sink.i, i32 %i.0116.i
  %51 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %call69.i, ptr %arrayidx70.i, align 1
  %inc.i = add nuw i32 %i.0116.i, 1
  %52 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cac_leakage_table.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %cmp51.i = icmp ult i32 %inc.i, %55
  br i1 %cmp51.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge

for.inc.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_bapm_vddc_vid_sidd.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.sink.split.i:                             ; preds = %if.then35.i.cleanup.sink.split.i_crit_edge, %if.then15.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.str.146.sink.i = phi ptr [ @.str.138, %if.then.i.cleanup.sink.split.i_crit_edge ], [ @.str.142, %if.then15.i.cleanup.sink.split.i_crit_edge ], [ @.str.146, %if.then35.i.cleanup.sink.split.i_crit_edge ]
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %.str.146.sink.i) #12
  br label %ci_populate_bapm_vddc_vid_sidd.exit

ci_populate_bapm_vddc_vid_sidd.exit:              ; preds = %cleanup.sink.split.i, %for.inc.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge, %if.then35.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge, %for.cond.preheader.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge, %if.then15.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge, %if.then.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge ], [ -22, %if.then15.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge ], [ -22, %if.then35.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge ], [ 0, %for.cond.preheader.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge ], [ -22, %cleanup.sink.split.i ], [ 0, %for.inc.i.ci_populate_bapm_vddc_vid_sidd.exit_crit_edge ]
  %56 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %smu_backend, align 4
  %VddCVid.i = getelementptr inbounds %struct.ci_smumgr, ptr %57, i32 0, i32 7, i32 2
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %58 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %backend.i, align 4
  %vddc_voltage_table.i = getelementptr inbounds %struct.smu7_hwmgr, ptr %59, i32 0, i32 41
  %60 = ptrtoint ptr %vddc_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vddc_voltage_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %61)
  %cmp.i46 = icmp ult i32 %61, 9
  br i1 %cmp.i46, label %for.cond.preheader.i47, label %if.then.i50

for.cond.preheader.i47:                           ; preds = %ci_populate_bapm_vddc_vid_sidd.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp922.i.not = icmp eq i32 %61, 0
  br i1 %cmp922.i.not, label %for.cond.preheader.i47.ci_populate_vddc_vid.exit_crit_edge, label %for.cond.preheader.i47.for.body.i53_crit_edge

for.cond.preheader.i47.for.body.i53_crit_edge:    ; preds = %for.cond.preheader.i47
  br label %for.body.i53

for.cond.preheader.i47.ci_populate_vddc_vid.exit_crit_edge: ; preds = %for.cond.preheader.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_vddc_vid.exit

if.then.i50:                                      ; preds = %ci_populate_bapm_vddc_vid_sidd.exit
  %call.i48 = tail call i32 @___ratelimit(ptr noundef nonnull @ci_populate_vddc_vid._rs, ptr noundef nonnull @__func__.ci_populate_vddc_vid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %if.then.i50.ci_populate_vddc_vid.exit_crit_edge, label %do.end.i

if.then.i50.ci_populate_vddc_vid.exit_crit_edge:  ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_vddc_vid.exit

do.end.i:                                         ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.147) #12
  br label %ci_populate_vddc_vid.exit

for.body.i53:                                     ; preds = %for.body.i53.for.body.i53_crit_edge, %for.cond.preheader.i47.for.body.i53_crit_edge
  %i.023.i = phi i32 [ %inc.i52, %for.body.i53.for.body.i53_crit_edge ], [ 0, %for.cond.preheader.i47.for.body.i53_crit_edge ]
  %arrayidx.i51 = getelementptr %struct.smu7_hwmgr, ptr %59, i32 0, i32 41, i32 3, i32 %i.023.i
  %62 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.i51, align 4
  %call11.i = tail call zeroext i8 @convert_to_vid(i16 noundef zeroext %63) #8
  %arrayidx12.i = getelementptr i8, ptr %VddCVid.i, i32 %i.023.i
  %64 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %call11.i, ptr %arrayidx12.i, align 1
  %inc.i52 = add nuw nsw i32 %i.023.i, 1
  %65 = ptrtoint ptr %vddc_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vddc_voltage_table.i, align 4
  %cmp9.i = icmp slt i32 %inc.i52, %66
  br i1 %cmp9.i, label %for.body.i53.for.body.i53_crit_edge, label %for.body.i53.ci_populate_vddc_vid.exit_crit_edge

for.body.i53.ci_populate_vddc_vid.exit_crit_edge: ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_vddc_vid.exit

for.body.i53.for.body.i53_crit_edge:              ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i53

ci_populate_vddc_vid.exit:                        ; preds = %for.body.i53.ci_populate_vddc_vid.exit_crit_edge, %do.end.i, %if.then.i50.ci_populate_vddc_vid.exit_crit_edge, %for.cond.preheader.i47.ci_populate_vddc_vid.exit_crit_edge
  %retval.0.i54 = phi i32 [ -22, %do.end.i ], [ -22, %if.then.i50.ci_populate_vddc_vid.exit_crit_edge ], [ 0, %for.cond.preheader.i47.ci_populate_vddc_vid.exit_crit_edge ], [ 0, %for.body.i53.ci_populate_vddc_vid.exit_crit_edge ]
  %or = or i32 %retval.0.i54, %retval.0.i
  %67 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i = getelementptr inbounds %struct.ci_smumgr, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %power_tune_defaults.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %power_tune_defaults.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 4
  %SviLoadLineEn.i = getelementptr inbounds %struct.ci_smumgr, ptr %68, i32 0, i32 7, i32 3
  %73 = ptrtoint ptr %SviLoadLineEn.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %SviLoadLineEn.i, align 4
  %svi_load_line_vddc.i = getelementptr inbounds %struct.ci_pt_defaults, ptr %70, i32 0, i32 1
  %74 = ptrtoint ptr %svi_load_line_vddc.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %svi_load_line_vddc.i, align 1
  %SviLoadLineVddC.i = getelementptr inbounds %struct.ci_smumgr, ptr %68, i32 0, i32 7, i32 4
  %76 = ptrtoint ptr %SviLoadLineVddC.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %SviLoadLineVddC.i, align 1
  %SviLoadLineTrimVddC.i = getelementptr inbounds %struct.ci_smumgr, ptr %68, i32 0, i32 7, i32 5
  %77 = ptrtoint ptr %SviLoadLineTrimVddC.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 3, ptr %SviLoadLineTrimVddC.i, align 2
  %SviLoadLineOffsetVddC.i = getelementptr inbounds %struct.ci_smumgr, ptr %68, i32 0, i32 7, i32 6
  %78 = ptrtoint ptr %SviLoadLineOffsetVddC.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %SviLoadLineOffsetVddC.i, align 1
  %79 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i57 = getelementptr inbounds %struct.ci_smumgr, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %power_tune_defaults.i57 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %power_tune_defaults.i57, align 4
  %cac_dtp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %82 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cac_dtp_table.i, align 4
  %usTDC.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %usTDC.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %usTDC.i, align 4
  %mul.i = shl i16 %85, 8
  %TDC_VDDC_PkgLimit.i = getelementptr inbounds %struct.ci_smumgr, ptr %79, i32 0, i32 7, i32 7
  %86 = ptrtoint ptr %TDC_VDDC_PkgLimit.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %mul.i, ptr %TDC_VDDC_PkgLimit.i, align 4
  %tdc_vddc_throttle_release_limit_perc.i = getelementptr inbounds %struct.ci_pt_defaults, ptr %81, i32 0, i32 2
  %87 = ptrtoint ptr %tdc_vddc_throttle_release_limit_perc.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %tdc_vddc_throttle_release_limit_perc.i, align 2
  %TDC_VDDC_ThrottleReleaseLimitPerc.i = getelementptr inbounds %struct.ci_smumgr, ptr %79, i32 0, i32 7, i32 8
  %89 = ptrtoint ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %TDC_VDDC_ThrottleReleaseLimitPerc.i, align 2
  %tdc_mawt.i = getelementptr inbounds %struct.ci_pt_defaults, ptr %81, i32 0, i32 3
  %90 = ptrtoint ptr %tdc_mawt.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %tdc_mawt.i, align 1
  %TDC_MAWt.i = getelementptr inbounds %struct.ci_smumgr, ptr %79, i32 0, i32 7, i32 9
  %92 = ptrtoint ptr %TDC_MAWt.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %TDC_MAWt.i, align 1
  %and.i.i.i = and i32 %call2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %add.i.i.i = add i32 %call2.i, 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %add.i.i.i)
  %cmp1.not.i.i.i = icmp ult i32 %add.i.i.i, 262144
  %or.cond.i.i.i = and i1 %cmp.not.i.i.i, %cmp1.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.else.i61, label %do.body.i

do.body.i:                                        ; preds = %ci_populate_vddc_vid.exit
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_populate_dw8._rs, ptr noundef nonnull @__func__.ci_populate_dw8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.ci_populate_dw8.exit_crit_edge, label %do.end.i58

do.body.i.ci_populate_dw8.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_populate_dw8.exit

do.end.i58:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.148) #12
  br label %ci_populate_dw8.exit

if.else.i61:                                      ; preds = %ci_populate_vddc_vid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nsw i32 %call2.i, 32
  %93 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %smu_backend, align 4
  %power_tune_defaults.i60 = getelementptr inbounds %struct.ci_smumgr, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %power_tune_defaults.i60 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %power_tune_defaults.i60, align 4
  %97 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device.i.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %write_register.i.i.i = getelementptr inbounds %struct.cgs_ops, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_register.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_register.i.i.i, align 4
  tail call void %102(ptr noundef %98, i32 noundef 128, i32 noundef %add.i) #8
  %103 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %write_register5.i.i.i = getelementptr inbounds %struct.cgs_ops, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_register5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_register5.i.i.i, align 4
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %106, align 4
  %call10.i.i.i = tail call i32 %110(ptr noundef %104, i32 noundef 144) #8
  %and11.i.i.i = and i32 %call10.i.i.i, -2
  tail call void %108(ptr noundef %104, i32 noundef 144, i32 noundef %and11.i.i.i) #8
  %111 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device.i.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %call2.i.i = tail call i32 %116(ptr noundef %112, i32 noundef 129) #8
  %tdc_waterfall_ctl.i = getelementptr inbounds %struct.ci_pt_defaults, ptr %96, i32 0, i32 4
  %117 = ptrtoint ptr %tdc_waterfall_ctl.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %tdc_waterfall_ctl.i, align 4
  %TdcWaterfallCtl.i = getelementptr inbounds %struct.ci_smumgr, ptr %94, i32 0, i32 7, i32 10
  %119 = ptrtoint ptr %TdcWaterfallCtl.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %TdcWaterfallCtl.i, align 4
  br label %ci_populate_dw8.exit

ci_populate_dw8.exit:                             ; preds = %if.else.i61, %do.end.i58, %do.body.i.ci_populate_dw8.exit_crit_edge
  %retval.0.i62 = phi i32 [ 0, %if.else.i61 ], [ -22, %do.end.i58 ], [ -22, %do.body.i.ci_populate_dw8.exit_crit_edge ]
  %or11 = or i32 %or, %retval.0.i62
  %120 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %smu_backend, align 4
  %usFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %122 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %usFanOutputSensitivity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %123)
  %124 = icmp slt i16 %123, 1
  %usDefaultFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 15
  %tmp.0.in.i = select i1 %124, ptr %usFanOutputSensitivity.i, ptr %usDefaultFanOutputSensitivity.i
  %125 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %tmp.0.i = load i16, ptr %tmp.0.in.i, align 2
  %FuzzyFan_PwmSetDelta.i = getelementptr inbounds %struct.ci_smumgr, ptr %121, i32 0, i32 7, i32 17
  %126 = ptrtoint ptr %FuzzyFan_PwmSetDelta.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %tmp.0.i, ptr %FuzzyFan_PwmSetDelta.i, align 4
  %127 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %smu_backend, align 4
  %power_tune_table.i65 = getelementptr inbounds %struct.ci_smumgr, ptr %128, i32 0, i32 7
  %BapmVddCVidLoSidd.i66 = getelementptr inbounds %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 1
  %129 = ptrtoint ptr %power_tune_table.i65 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %power_tune_table.i65, align 1
  %conv.i67 = zext i8 %130 to i32
  %131 = ptrtoint ptr %BapmVddCVidLoSidd.i66 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %BapmVddCVidLoSidd.i66, align 1
  %conv25.i = zext i8 %132 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp26.not.i = icmp eq i8 %132, 0
  %133 = tail call i32 @llvm.smin.i32(i32 %conv.i67, i32 %conv25.i) #8
  %134 = tail call i32 @llvm.smax.i32(i32 %conv.i67, i32 %conv25.i) #8
  %min.4.i = select i1 %cmp26.not.i, i32 %conv.i67, i32 %133
  %max.2.i = select i1 %cmp26.not.i, i32 %conv.i67, i32 %134
  %arrayidx4.1.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx4.1.i, align 1
  %conv5.1.i = zext i8 %136 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp6.not.1.i = icmp eq i8 %136, 0
  %137 = tail call i32 @llvm.smin.i32(i32 %min.4.i, i32 %conv5.1.i) #8
  %138 = tail call i32 @llvm.smax.i32(i32 %max.2.i, i32 %conv5.1.i) #8
  %min.2.1.i = select i1 %cmp6.not.1.i, i32 %min.4.i, i32 %137
  %max.1.1.i = select i1 %cmp6.not.1.i, i32 %max.2.i, i32 %138
  %arrayidx24.1.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 1, i32 1
  %139 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx24.1.i, align 1
  %conv25.1.i = zext i8 %140 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %cmp26.not.1.i = icmp eq i8 %140, 0
  %141 = tail call i32 @llvm.smin.i32(i32 %min.2.1.i, i32 %conv25.1.i) #8
  %142 = tail call i32 @llvm.smax.i32(i32 %max.1.1.i, i32 %conv25.1.i) #8
  %min.4.1.i = select i1 %cmp26.not.1.i, i32 %min.2.1.i, i32 %141
  %max.2.1.i = select i1 %cmp26.not.1.i, i32 %max.1.1.i, i32 %142
  %arrayidx4.2.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 0, i32 2
  %143 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx4.2.i, align 1
  %conv5.2.i = zext i8 %144 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp6.not.2.i = icmp eq i8 %144, 0
  %145 = tail call i32 @llvm.smin.i32(i32 %min.4.1.i, i32 %conv5.2.i) #8
  %146 = tail call i32 @llvm.smax.i32(i32 %max.2.1.i, i32 %conv5.2.i) #8
  %min.2.2.i = select i1 %cmp6.not.2.i, i32 %min.4.1.i, i32 %145
  %max.1.2.i = select i1 %cmp6.not.2.i, i32 %max.2.1.i, i32 %146
  %arrayidx24.2.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 1, i32 2
  %147 = ptrtoint ptr %arrayidx24.2.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx24.2.i, align 1
  %conv25.2.i = zext i8 %148 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp26.not.2.i = icmp eq i8 %148, 0
  %149 = tail call i32 @llvm.smin.i32(i32 %min.2.2.i, i32 %conv25.2.i) #8
  %150 = tail call i32 @llvm.smax.i32(i32 %max.1.2.i, i32 %conv25.2.i) #8
  %min.4.2.i = select i1 %cmp26.not.2.i, i32 %min.2.2.i, i32 %149
  %max.2.2.i = select i1 %cmp26.not.2.i, i32 %max.1.2.i, i32 %150
  %arrayidx4.3.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 0, i32 3
  %151 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx4.3.i, align 1
  %conv5.3.i = zext i8 %152 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %cmp6.not.3.i = icmp eq i8 %152, 0
  %153 = tail call i32 @llvm.smin.i32(i32 %min.4.2.i, i32 %conv5.3.i) #8
  %154 = tail call i32 @llvm.smax.i32(i32 %max.2.2.i, i32 %conv5.3.i) #8
  %min.2.3.i = select i1 %cmp6.not.3.i, i32 %min.4.2.i, i32 %153
  %max.1.3.i = select i1 %cmp6.not.3.i, i32 %max.2.2.i, i32 %154
  %arrayidx24.3.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 1, i32 3
  %155 = ptrtoint ptr %arrayidx24.3.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx24.3.i, align 1
  %conv25.3.i = zext i8 %156 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp26.not.3.i = icmp eq i8 %156, 0
  %157 = tail call i32 @llvm.smin.i32(i32 %min.2.3.i, i32 %conv25.3.i) #8
  %158 = tail call i32 @llvm.smax.i32(i32 %max.1.3.i, i32 %conv25.3.i) #8
  %min.4.3.i = select i1 %cmp26.not.3.i, i32 %min.2.3.i, i32 %157
  %max.2.3.i = select i1 %cmp26.not.3.i, i32 %max.1.3.i, i32 %158
  %arrayidx4.4.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 0, i32 4
  %159 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx4.4.i, align 1
  %conv5.4.i = zext i8 %160 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp6.not.4.i = icmp eq i8 %160, 0
  %161 = tail call i32 @llvm.smin.i32(i32 %min.4.3.i, i32 %conv5.4.i) #8
  %162 = tail call i32 @llvm.smax.i32(i32 %max.2.3.i, i32 %conv5.4.i) #8
  %min.2.4.i = select i1 %cmp6.not.4.i, i32 %min.4.3.i, i32 %161
  %max.1.4.i = select i1 %cmp6.not.4.i, i32 %max.2.3.i, i32 %162
  %arrayidx24.4.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 1, i32 4
  %163 = ptrtoint ptr %arrayidx24.4.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx24.4.i, align 1
  %conv25.4.i = zext i8 %164 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %cmp26.not.4.i = icmp eq i8 %164, 0
  %165 = tail call i32 @llvm.smin.i32(i32 %min.2.4.i, i32 %conv25.4.i) #8
  %166 = tail call i32 @llvm.smax.i32(i32 %max.1.4.i, i32 %conv25.4.i) #8
  %min.4.4.i = select i1 %cmp26.not.4.i, i32 %min.2.4.i, i32 %165
  %max.2.4.i = select i1 %cmp26.not.4.i, i32 %max.1.4.i, i32 %166
  %arrayidx4.5.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 0, i32 5
  %167 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx4.5.i, align 1
  %conv5.5.i = zext i8 %168 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp6.not.5.i = icmp eq i8 %168, 0
  %169 = tail call i32 @llvm.smin.i32(i32 %min.4.4.i, i32 %conv5.5.i) #8
  %170 = tail call i32 @llvm.smax.i32(i32 %max.2.4.i, i32 %conv5.5.i) #8
  %min.2.5.i = select i1 %cmp6.not.5.i, i32 %min.4.4.i, i32 %169
  %max.1.5.i = select i1 %cmp6.not.5.i, i32 %max.2.4.i, i32 %170
  %arrayidx24.5.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 1, i32 5
  %171 = ptrtoint ptr %arrayidx24.5.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx24.5.i, align 1
  %conv25.5.i = zext i8 %172 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %cmp26.not.5.i = icmp eq i8 %172, 0
  %173 = tail call i32 @llvm.smin.i32(i32 %min.2.5.i, i32 %conv25.5.i) #8
  %174 = tail call i32 @llvm.smax.i32(i32 %max.1.5.i, i32 %conv25.5.i) #8
  %min.4.5.i = select i1 %cmp26.not.5.i, i32 %min.2.5.i, i32 %173
  %max.2.5.i = select i1 %cmp26.not.5.i, i32 %max.1.5.i, i32 %174
  %arrayidx4.6.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 0, i32 6
  %175 = ptrtoint ptr %arrayidx4.6.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx4.6.i, align 1
  %conv5.6.i = zext i8 %176 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %cmp6.not.6.i = icmp eq i8 %176, 0
  %177 = tail call i32 @llvm.smin.i32(i32 %min.4.5.i, i32 %conv5.6.i) #8
  %178 = tail call i32 @llvm.smax.i32(i32 %max.2.5.i, i32 %conv5.6.i) #8
  %min.2.6.i = select i1 %cmp6.not.6.i, i32 %min.4.5.i, i32 %177
  %max.1.6.i = select i1 %cmp6.not.6.i, i32 %max.2.5.i, i32 %178
  %arrayidx24.6.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 1, i32 6
  %179 = ptrtoint ptr %arrayidx24.6.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx24.6.i, align 1
  %conv25.6.i = zext i8 %180 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %cmp26.not.6.i = icmp eq i8 %180, 0
  %181 = tail call i32 @llvm.smin.i32(i32 %min.2.6.i, i32 %conv25.6.i) #8
  %182 = tail call i32 @llvm.smax.i32(i32 %max.1.6.i, i32 %conv25.6.i) #8
  %min.4.6.i = select i1 %cmp26.not.6.i, i32 %min.2.6.i, i32 %181
  %max.2.6.i = select i1 %cmp26.not.6.i, i32 %max.1.6.i, i32 %182
  %arrayidx4.7.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 0, i32 7
  %183 = ptrtoint ptr %arrayidx4.7.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx4.7.i, align 1
  %conv5.7.i = zext i8 %184 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp6.not.7.i = icmp eq i8 %184, 0
  %185 = tail call i32 @llvm.smin.i32(i32 %min.4.6.i, i32 %conv5.7.i) #8
  %186 = tail call i32 @llvm.smax.i32(i32 %max.2.6.i, i32 %conv5.7.i) #8
  %min.2.7.i = select i1 %cmp6.not.7.i, i32 %min.4.6.i, i32 %185
  %max.1.7.i = select i1 %cmp6.not.7.i, i32 %max.2.6.i, i32 %186
  %arrayidx24.7.i = getelementptr %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 1, i32 7
  %187 = ptrtoint ptr %arrayidx24.7.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx24.7.i, align 1
  %conv25.7.i = zext i8 %188 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp26.not.7.i = icmp eq i8 %188, 0
  %189 = tail call i32 @llvm.smin.i32(i32 %min.2.7.i, i32 %conv25.7.i) #8
  %190 = tail call i32 @llvm.smax.i32(i32 %max.1.7.i, i32 %conv25.7.i) #8
  %min.4.7.i = select i1 %cmp26.not.7.i, i32 %min.2.7.i, i32 %189
  %max.2.7.i = select i1 %cmp26.not.7.i, i32 %max.1.7.i, i32 %190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min.4.7.i)
  %cmp46.i = icmp eq i32 %min.4.7.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.2.7.i)
  %cmp48.i = icmp eq i32 %max.2.7.i, 0
  %or.cond.i = select i1 %cmp46.i, i1 true, i1 %cmp48.i
  br i1 %or.cond.i, label %ci_populate_dw8.exit.ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit_crit_edge, label %if.end51.i

ci_populate_dw8.exit.ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit_crit_edge: ; preds = %ci_populate_dw8.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit

if.end51.i:                                       ; preds = %ci_populate_dw8.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv52.i = trunc i32 %max.2.7.i to i8
  %GnbLPMLMaxVid.i = getelementptr inbounds %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 20
  %191 = ptrtoint ptr %GnbLPMLMaxVid.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %conv52.i, ptr %GnbLPMLMaxVid.i, align 4
  %conv54.i = trunc i32 %min.4.7.i to i8
  %GnbLPMLMinVid.i = getelementptr inbounds %struct.ci_smumgr, ptr %128, i32 0, i32 7, i32 21
  %192 = ptrtoint ptr %GnbLPMLMinVid.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv54.i, ptr %GnbLPMLMinVid.i, align 1
  br label %ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit

ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit:     ; preds = %if.end51.i, %ci_populate_dw8.exit.ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit_crit_edge
  %retval.0.i68 = phi i32 [ 0, %if.end51.i ], [ -22, %ci_populate_dw8.exit.ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit_crit_edge ]
  %or15 = or i32 %or11, %retval.0.i68
  %193 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %smu_backend, align 4
  %195 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %cac_dtp_table.i, align 4
  %usHighCACLeakage.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %196, i32 0, i32 6
  %197 = ptrtoint ptr %usHighCACLeakage.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %usHighCACLeakage.i, align 4
  %199 = udiv i16 %198, 100
  %mul.i71 = shl i16 %199, 8
  %usLowCACLeakage.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %196, i32 0, i32 5
  %200 = ptrtoint ptr %usLowCACLeakage.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %usLowCACLeakage.i, align 2
  %202 = udiv i16 %201, 100
  %mul4.i = shl i16 %202, 8
  %BapmVddCBaseLeakageHiSidd.i = getelementptr inbounds %struct.ci_smumgr, ptr %194, i32 0, i32 7, i32 23
  %203 = ptrtoint ptr %BapmVddCBaseLeakageHiSidd.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %mul.i71, ptr %BapmVddCBaseLeakageHiSidd.i, align 4
  %BapmVddCBaseLeakageLoSidd.i = getelementptr inbounds %struct.ci_smumgr, ptr %194, i32 0, i32 7, i32 24
  %204 = ptrtoint ptr %BapmVddCBaseLeakageLoSidd.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %mul4.i, ptr %BapmVddCBaseLeakageLoSidd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or15)
  %tobool18.not = icmp eq i32 %or15, 0
  br i1 %tobool18.not, label %if.end20, label %ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit.cleanup_crit_edge

ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit.cleanup_crit_edge: ; preds = %ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %power_tune_table = getelementptr inbounds %struct.ci_smumgr, ptr %1, i32 0, i32 7
  %call21 = tail call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef %call2.i, ptr noundef %power_tune_table, i32 noundef 76, i32 noundef 262144)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or15, %ci_min_max_v_gnbl_pm_lid_from_bapm_vddc.exit.cleanup_crit_edge ], [ %call21, %if.end20 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_start_smc(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @ci_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef 0, ptr noundef nonnull @ci_program_jump_on_start.data, i32 noundef 4, i32 noundef 5) #8
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_ind_register, align 4
  %call5 = tail call i32 %7(ptr noundef %1, i32 noundef 1, i32 noundef -2147483644) #8
  %and = and i32 %call5, -2
  tail call void %5(ptr noundef %1, i32 noundef 1, i32 noundef -2147483644, i32 noundef %and) #8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write_ind_register8 = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_ind_register8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_ind_register8, align 4
  %read_ind_register12 = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %read_ind_register12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_ind_register12, align 4
  %call14 = tail call i32 %15(ptr noundef %9, i32 noundef 1, i32 noundef -2147483648) #8
  %and15 = and i32 %call14, -2
  tail call void %13(ptr noundef %9, i32 noundef 1, i32 noundef -2147483648, i32 noundef %and15) #8
  %call17 = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 128, i32 noundef 260096, i32 noundef 1, i32 noundef 1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ci_populate_smc_voltage_table(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef readonly %tab, ptr nocapture noundef writeonly %smc_voltage_tab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %StdVoltageHiSidd = getelementptr inbounds %struct.SMU7_Discrete_VoltageLevel, ptr %smc_voltage_tab, i32 0, i32 1
  %StdVoltageLoSidd = getelementptr inbounds %struct.SMU7_Discrete_VoltageLevel, ptr %smc_voltage_tab, i32 0, i32 2
  %0 = ptrtoint ptr %tab to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tab, align 4
  %mul.i = shl i16 %1, 2
  %2 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %mul.i, ptr %StdVoltageHiSidd, align 2
  %3 = load i16, ptr %tab, align 4
  %mul4.i = shl i16 %3, 2
  %4 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %mul4.i, ptr %StdVoltageLoSidd, align 2
  %dyn_state.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29
  %5 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dyn_state.i, align 4
  %cmp.not.i = icmp eq ptr %6, null
  br i1 %cmp.not.i, label %if.then.i, label %do.end12.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @ci_get_std_voltage_value_sidd._rs, ptr noundef nonnull @__func__.ci_get_std_voltage_value_sidd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then_crit_edge, label %do.end.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.98) #12
  br label %if.then

do.end12.i:                                       ; preds = %entry
  %cac_leakage_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 13
  %7 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cac_leakage_table.i, align 4
  %cmp14.i = icmp eq ptr %8, null
  br i1 %cmp14.i, label %do.end19.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.end12.i
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26229.not.i = icmp eq i32 %10, 0
  br i1 %cmp26229.not.i, label %for.cond.preheader.i.do.end171.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do.end171.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end171.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %11 = ptrtoint ptr %tab to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tab, align 4
  %conv29.i = zext i16 %12 to i32
  br label %for.body.i

do.end19.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #12
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i16 %v_index.0230.i, 1
  %conv23.i = zext i16 %inc.i to i32
  %cmp26.i = icmp ugt i32 %10, %conv23.i
  br i1 %cmp26.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.body95.i_crit_edge

for.cond.i.for.body95.i_crit_edge:                ; preds = %for.cond.i
  br label %for.body95.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv23231.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv23.i, %for.cond.i.for.body.i_crit_edge ]
  %v_index.0230.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %v.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %conv23231.i, i32 1
  %13 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv29.i)
  %cmp32.i = icmp eq i32 %14, %conv29.i
  br i1 %cmp32.i, label %if.then34.i, label %for.cond.i

if.then34.i:                                      ; preds = %for.body.i
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv23231.i)
  %cmp39.i = icmp ugt i32 %16, %conv23231.i
  br i1 %cmp39.i, label %if.then41.i, label %do.end59.i

if.then41.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46.i = getelementptr %struct.phm_cac_leakage_table, ptr %8, i32 0, i32 1, i32 %conv23231.i
  %17 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx46.i, align 4
  %mul48.i = shl i16 %18, 2
  %19 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %mul48.i, ptr %StdVoltageLoSidd, align 2
  %20 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cac_leakage_table.i, align 4
  %Leakage.i = getelementptr %struct.phm_cac_leakage_table, ptr %21, i32 0, i32 1, i32 %conv23231.i, i32 0, i32 1
  %22 = ptrtoint ptr %Leakage.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %Leakage.i, align 4
  %.tr221.i = trunc i32 %23 to i16
  %conv56.i = shl i16 %.tr221.i, 2
  %24 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv56.i, ptr %StdVoltageHiSidd, align 2
  br label %if.end

do.end59.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #12
  %25 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cac_leakage_table.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %sub.i = add i32 %28, -1
  %arrayidx68.i = getelementptr %struct.phm_cac_leakage_table, ptr %26, i32 0, i32 1, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx68.i, align 4
  %mul71.i = shl i16 %30, 2
  %31 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %mul71.i, ptr %StdVoltageLoSidd, align 2
  %32 = load ptr, ptr %cac_leakage_table.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %sub79.i = add i32 %34, -1
  %Leakage81.i = getelementptr %struct.phm_cac_leakage_table, ptr %32, i32 0, i32 1, i32 %sub79.i, i32 0, i32 1
  %35 = ptrtoint ptr %Leakage81.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %Leakage81.i, align 4
  %.tr220.i = trunc i32 %36 to i16
  %conv83.i = shl i16 %.tr220.i, 2
  %37 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv83.i, ptr %StdVoltageHiSidd, align 2
  br label %if.end

for.cond88.i:                                     ; preds = %for.body95.i
  %inc165.i = add i16 %v_index.1234.i, 1
  %conv89.i = zext i16 %inc165.i to i32
  %cmp93.i = icmp ugt i32 %10, %conv89.i
  br i1 %cmp93.i, label %for.cond88.i.for.body95.i_crit_edge, label %for.cond88.i.do.end171.i_crit_edge

for.cond88.i.do.end171.i_crit_edge:               ; preds = %for.cond88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end171.i

for.cond88.i.for.body95.i_crit_edge:              ; preds = %for.cond88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body95.i

for.body95.i:                                     ; preds = %for.cond88.i.for.body95.i_crit_edge, %for.cond.i.for.body95.i_crit_edge
  %conv89235.i = phi i32 [ %conv89.i, %for.cond88.i.for.body95.i_crit_edge ], [ 0, %for.cond.i.for.body95.i_crit_edge ]
  %v_index.1234.i = phi i16 [ %inc165.i, %for.cond88.i.for.body95.i_crit_edge ], [ 0, %for.cond.i.for.body95.i_crit_edge ]
  %v103.i = getelementptr %struct.phm_clock_voltage_dependency_table, ptr %6, i32 0, i32 1, i32 %conv89235.i, i32 1
  %38 = ptrtoint ptr %v103.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %v103.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv29.i)
  %cmp104.not.i = icmp ult i32 %39, %conv29.i
  br i1 %cmp104.not.i, label %for.cond88.i, label %if.then106.i

if.then106.i:                                     ; preds = %for.body95.i
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv89235.i)
  %cmp111.i = icmp ugt i32 %41, %conv89235.i
  br i1 %cmp111.i, label %if.then113.i, label %do.end136.i

if.then113.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx118.i = getelementptr %struct.phm_cac_leakage_table, ptr %8, i32 0, i32 1, i32 %conv89235.i
  %42 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx118.i, align 4
  %mul121.i = shl i16 %43, 2
  %44 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %mul121.i, ptr %StdVoltageLoSidd, align 2
  %45 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cac_leakage_table.i, align 4
  %Leakage128.i = getelementptr %struct.phm_cac_leakage_table, ptr %46, i32 0, i32 1, i32 %conv89235.i, i32 0, i32 1
  %47 = ptrtoint ptr %Leakage128.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %Leakage128.i, align 4
  %.tr219.i = trunc i32 %48 to i16
  %conv132.i = shl i16 %.tr219.i, 2
  %49 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv132.i, ptr %StdVoltageHiSidd, align 2
  br label %if.end

do.end136.i:                                      ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #10
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  %50 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cac_leakage_table.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %sub145.i = add i32 %53, -1
  %arrayidx146.i = getelementptr %struct.phm_cac_leakage_table, ptr %51, i32 0, i32 1, i32 %sub145.i
  %54 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx146.i, align 4
  %mul149.i = shl i16 %55, 2
  %56 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %mul149.i, ptr %StdVoltageLoSidd, align 2
  %57 = load ptr, ptr %cac_leakage_table.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %sub157.i = add i32 %59, -1
  %Leakage159.i = getelementptr %struct.phm_cac_leakage_table, ptr %57, i32 0, i32 1, i32 %sub157.i, i32 0, i32 1
  %60 = ptrtoint ptr %Leakage159.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %Leakage159.i, align 4
  %.tr.i = trunc i32 %61 to i16
  %conv161.i = shl i16 %.tr.i, 2
  %62 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv161.i, ptr %StdVoltageHiSidd, align 2
  br label %if.end

do.end171.i:                                      ; preds = %for.cond88.i.do.end171.i_crit_edge, %for.cond.preheader.i.do.end171.i_crit_edge
  %call173.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #12
  br label %if.end

if.then:                                          ; preds = %do.end.i, %if.then.i.if.then_crit_edge
  %63 = ptrtoint ptr %tab to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %tab, align 4
  %mul = shl i16 %64, 2
  %65 = ptrtoint ptr %StdVoltageHiSidd to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %mul, ptr %StdVoltageHiSidd, align 1
  %66 = load i16, ptr %tab, align 4
  %mul5 = shl i16 %66, 2
  %67 = ptrtoint ptr %StdVoltageLoSidd to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %mul5, ptr %StdVoltageLoSidd, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end171.i, %do.end136.i, %if.then113.i, %do.end59.i, %if.then41.i, %do.end19.i
  %68 = ptrtoint ptr %tab to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %tab, align 4
  %mul10 = shl i16 %69, 2
  %70 = ptrtoint ptr %smc_voltage_tab to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %mul10, ptr %smc_voltage_tab, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pp_tables_get_response_times(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @encode_pcie_lane_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_get_dpm_level_enable_mask_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_reference_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_engine_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_dfs_pll_dividers_vi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_find_boot_level(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @convert_to_vid(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_engine_clock_spread_spectrum(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_memory_pll_dividers_si(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_mpll_reference_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_get_memory_clock_spread_spectrum(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomctrl_initialize_mc_reg_table(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_set_field_to_u32(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !147, !149, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !169, !171, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !205, !206, !207, !208, !209, !211, !212, !213, !214, !215, !217, !218, !219, !220, !221, !223, !224, !225, !226, !227, !229, !230, !231, !232, !233, !235, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !285, !286, !288, !289, !290, !291, !293, !294, !295, !296, !298, !299, !300, !301, !302, !304, !305, !306, !307, !308, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !330, !331, !333, !334, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !349, !350, !351, !352, !353, !355, !356, !357, !358, !359, !361, !362, !363, !365, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !381, !382, !384, !385, !386}
!llvm.module.flags = !{!387, !388, !389, !390, !391, !392, !393, !394}
!llvm.ident = !{!395}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2963, i32 10}
!2 = !{ptr @ci_smu_funcs, !3, !"ci_smu_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2962, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 221, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ci_send_msg_to_smc._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ci_send_msg_to_smc._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2353, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ci_upload_firmware._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ci_upload_firmware._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2328, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ci_load_smc_ucode._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @ci_load_smc_ucode._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2343, i32 3}
!22 = !{ptr @ci_load_smc_ucode._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ci_load_smc_ucode._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 100, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ci_set_smc_sram_address._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ci_set_smc_sram_address._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2238, i32 2}
!31 = !{ptr @ci_update_sclk_threshold._rs, !30, !"_rs", i1 false, i1 false}
!32 = !{ptr @__func__.ci_update_sclk_threshold, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ci_update_sclk_threshold._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @ci_update_sclk_threshold._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ci_update_sclk_threshold._rs.16, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2241, i32 2}
!39 = !{ptr @ci_update_sclk_threshold._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ci_update_sclk_threshold._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 120, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ci_copy_bytes_to_smc._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ci_copy_bytes_to_smc._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ci_populate_memory_timing_parameters._rs, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1635, i32 2}
!49 = !{ptr @__func__.ci_populate_memory_timing_parameters, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ci_populate_memory_timing_parameters._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ci_populate_memory_timing_parameters._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ci_init_smc_table._rs, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1970, i32 3}
!55 = !{ptr @__func__.ci_init_smc_table, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ci_init_smc_table._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ci_init_smc_table._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ci_init_smc_table._rs.24, !60, !"_rs", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1978, i32 2}
!61 = !{ptr @ci_init_smc_table._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ci_init_smc_table._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ci_init_smc_table._rs.28, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1982, i32 2}
!66 = !{ptr @ci_init_smc_table._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ci_init_smc_table._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1986, i32 2}
!71 = !{ptr @ci_init_smc_table._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ci_init_smc_table._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ci_init_smc_table._rs.36, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1990, i32 2}
!76 = !{ptr @ci_init_smc_table._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ci_init_smc_table._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ci_init_smc_table._rs.40, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1994, i32 2}
!81 = !{ptr @ci_init_smc_table._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ci_init_smc_table._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ci_init_smc_table._rs.44, !85, !"_rs", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1998, i32 2}
!86 = !{ptr @ci_init_smc_table._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ci_init_smc_table._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ci_init_smc_table._rs.48, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2004, i32 2}
!91 = !{ptr @ci_init_smc_table._entry.49, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ci_init_smc_table._entry_ptr.50, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ci_init_smc_table._rs.52, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2008, i32 2}
!96 = !{ptr @ci_init_smc_table._entry.53, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ci_init_smc_table._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2020, i32 2}
!101 = !{ptr @ci_init_smc_table._entry.57, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ci_init_smc_table._entry_ptr.58, !100, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2024, i32 2}
!106 = !{ptr @ci_init_smc_table._entry.61, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ci_init_smc_table._entry_ptr.62, !105, !"_entry_ptr", i1 false, i1 false}
!108 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2027, i32 2}
!111 = !{ptr @ci_init_smc_table._entry.65, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ci_init_smc_table._entry_ptr.66, !110, !"_entry_ptr", i1 false, i1 false}
!113 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ci_init_smc_table._rs.68, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2053, i32 2}
!116 = !{ptr @ci_init_smc_table._entry.69, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ci_init_smc_table._entry_ptr.70, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"_rs", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2061, i32 2}
!121 = !{ptr @ci_init_smc_table._entry.73, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ci_init_smc_table._entry_ptr.74, !120, !"_entry_ptr", i1 false, i1 false}
!123 = distinct !{null, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ci_init_smc_table._rs.76, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2108, i32 2}
!126 = !{ptr @ci_init_smc_table._entry.77, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ci_init_smc_table._entry_ptr.78, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.79, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ci_init_smc_table._rs.80, !130, !"_rs", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2112, i32 2}
!131 = !{ptr @ci_init_smc_table._entry.81, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ci_init_smc_table._entry_ptr.82, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.83, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ci_init_smc_table._rs.84, !135, !"_rs", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2116, i32 2}
!136 = !{ptr @ci_init_smc_table._entry.85, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ci_init_smc_table._entry_ptr.86, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.87, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @defaults_hawaii_pro, !140, !"defaults_hawaii_pro", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 75, i32 36}
!141 = !{ptr @defaults_hawaii_xt, !142, !"defaults_hawaii_xt", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 69, i32 36}
!143 = !{ptr @defaults_saturn_xt, !144, !"defaults_saturn_xt", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 88, i32 36}
!145 = !{ptr @defaults_bonaire_xt, !146, !"defaults_bonaire_xt", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 81, i32 36}
!147 = distinct !{null, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 932, i32 2}
!149 = !{ptr @__func__.ci_populate_smc_voltage_tables, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ci_populate_smc_voltage_tables._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @ci_populate_smc_voltage_tables._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !148, !"<string literal>", i1 false, i1 false}
!153 = distinct !{null, !154, !"_rs", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 936, i32 2}
!155 = !{ptr @ci_populate_smc_voltage_tables._entry.90, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @ci_populate_smc_voltage_tables._entry_ptr.91, !154, !"_entry_ptr", i1 false, i1 false}
!157 = distinct !{null, !154, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !159, !"_rs", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 940, i32 2}
!160 = !{ptr @ci_populate_smc_voltage_tables._entry.94, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ci_populate_smc_voltage_tables._entry_ptr.95, !159, !"_entry_ptr", i1 false, i1 false}
!162 = distinct !{null, !159, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 852, i32 3}
!165 = !{ptr @__func__.ci_populate_smc_vddc_table, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @ci_populate_smc_vddc_table._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @ci_populate_smc_vddc_table._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = distinct !{null, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @ci_get_std_voltage_value_sidd._rs, !170, !"_rs", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 772, i32 2}
!171 = !{ptr @__func__.ci_get_std_voltage_value_sidd, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ci_get_std_voltage_value_sidd._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @ci_get_std_voltage_value_sidd._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.98, !170, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.100, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 777, i32 3}
!177 = !{ptr @ci_get_std_voltage_value_sidd._entry.99, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ci_get_std_voltage_value_sidd._entry_ptr.101, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.103, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 788, i32 5}
!181 = !{ptr @ci_get_std_voltage_value_sidd._entry.102, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @ci_get_std_voltage_value_sidd._entry_ptr.104, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.106, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 804, i32 6}
!185 = !{ptr @ci_get_std_voltage_value_sidd._entry.105, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @ci_get_std_voltage_value_sidd._entry_ptr.107, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.109, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 813, i32 4}
!189 = !{ptr @ci_get_std_voltage_value_sidd._entry.108, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ci_get_std_voltage_value_sidd._entry_ptr.110, !188, !"_entry_ptr", i1 false, i1 false}
!191 = distinct !{null, !192, !"_rs", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 882, i32 3}
!193 = !{ptr @__func__.ci_populate_smc_vdd_ci_table, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @ci_populate_smc_vdd_ci_table._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @ci_populate_smc_vdd_ci_table._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = distinct !{null, !192, !"<string literal>", i1 false, i1 false}
!197 = distinct !{null, !198, !"_rs", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 910, i32 3}
!199 = !{ptr @__func__.ci_populate_smc_mvdd_table, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @ci_populate_smc_mvdd_table._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @ci_populate_smc_mvdd_table._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = distinct !{null, !198, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ci_populate_ulv_level._rs, !204, !"_rs", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 957, i32 2}
!205 = !{ptr @__func__.ci_populate_ulv_level, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @ci_populate_ulv_level._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @ci_populate_ulv_level._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @ci_populate_smc_acpi_level._rs, !210, !"_rs", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1406, i32 2}
!211 = !{ptr @__func__.ci_populate_smc_acpi_level, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @ci_populate_smc_acpi_level._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @ci_populate_smc_acpi_level._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.114, !210, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @ci_populate_mvdd_value._rs, !216, !"_rs", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1366, i32 3}
!217 = !{ptr @__func__.ci_populate_mvdd_value, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @ci_populate_mvdd_value._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @ci_populate_mvdd_value._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @ci_populate_smc_vce_level._rs, !222, !"_rs", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1578, i32 3}
!223 = !{ptr @__func__.ci_populate_smc_vce_level, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @ci_populate_smc_vce_level._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @ci_populate_smc_vce_level._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.116, !222, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @ci_populate_smc_acp_level._rs, !228, !"_rs", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1609, i32 3}
!229 = !{ptr @__func__.ci_populate_smc_acp_level, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @ci_populate_smc_acp_level._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @ci_populate_smc_acp_level._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @ci_populate_smc_uvd_level._rs, !234, !"_rs", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1539, i32 3}
!235 = !{ptr @__func__.ci_populate_smc_uvd_level, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @ci_populate_smc_uvd_level._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @ci_populate_smc_uvd_level._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @ci_populate_smc_uvd_level._rs.119, !240, !"_rs", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1546, i32 3}
!241 = !{ptr @ci_populate_smc_uvd_level._entry.120, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @ci_populate_smc_uvd_level._entry_ptr.121, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.122, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.123, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1701, i32 3}
!246 = !{ptr @.str.124, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @ci_populate_smc_boot_level._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @ci_populate_smc_boot_level._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.126, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1711, i32 3}
!251 = !{ptr @ci_populate_smc_boot_level._entry.125, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @ci_populate_smc_boot_level._entry_ptr.127, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1922, i32 3}
!255 = !{ptr @.str.129, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @ci_populate_vr_config._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @ci_populate_vr_config._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @ci_populate_initial_mc_reg_table._rs, !259, !"_rs", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1842, i32 2}
!260 = !{ptr @__func__.ci_populate_initial_mc_reg_table, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @ci_populate_initial_mc_reg_table._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @ci_populate_initial_mc_reg_table._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.130, !259, !"<string literal>", i1 false, i1 false}
!264 = distinct !{null, !265, !"_rs", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1846, i32 2}
!266 = !{ptr @ci_populate_initial_mc_reg_table._entry.132, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @ci_populate_initial_mc_reg_table._entry_ptr.133, !265, !"_entry_ptr", i1 false, i1 false}
!268 = distinct !{null, !265, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @ci_populate_mc_reg_address._rs, !270, !"_rs", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1731, i32 4}
!271 = !{ptr @__func__.ci_populate_mc_reg_address, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @ci_populate_mc_reg_address._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @ci_populate_mc_reg_address._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.136, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 684, i32 4}
!277 = !{ptr @.str.137, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @ci_populate_pm_fuses._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @ci_populate_pm_fuses._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @ci_populate_bapm_vddc_vid_sidd._rs, !281, !"_rs", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 584, i32 2}
!282 = !{ptr @__func__.ci_populate_bapm_vddc_vid_sidd, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @ci_populate_bapm_vddc_vid_sidd._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @ci_populate_bapm_vddc_vid_sidd._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.138, !281, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @ci_populate_bapm_vddc_vid_sidd._rs.139, !287, !"_rs", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 586, i32 2}
!288 = !{ptr @ci_populate_bapm_vddc_vid_sidd._entry.140, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @ci_populate_bapm_vddc_vid_sidd._entry_ptr.141, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.142, !287, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @ci_populate_bapm_vddc_vid_sidd._rs.143, !292, !"_rs", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 588, i32 2}
!293 = !{ptr @ci_populate_bapm_vddc_vid_sidd._entry.144, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @ci_populate_bapm_vddc_vid_sidd._entry_ptr.145, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.146, !292, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @ci_populate_vddc_vid._rs, !297, !"_rs", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 612, i32 2}
!298 = !{ptr @__func__.ci_populate_vddc_vid, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @ci_populate_vddc_vid._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @ci_populate_vddc_vid._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.147, !297, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @ci_populate_dw8._rs, !303, !"_rs", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 551, i32 3}
!304 = !{ptr @__func__.ci_populate_dw8, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @ci_populate_dw8._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @ci_populate_dw8._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.148, !303, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @ci_program_jump_on_start.data, !309, !"data", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 180, i32 29}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 421, i32 3}
!312 = !{ptr @.str.150, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @ci_populate_single_graphic_level._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @ci_populate_single_graphic_level._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @ci_calculate_sclk_params._rs, !316, !"_rs", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 314, i32 2}
!317 = !{ptr @__func__.ci_calculate_sclk_params, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @ci_calculate_sclk_params._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @ci_calculate_sclk_params._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.151, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 395, i32 3}
!322 = !{ptr @.str.152, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @ci_get_sleep_divider_id_from_clock._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @ci_get_sleep_divider_id_from_clock._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @ci_populate_all_memory_levels._rs, !326, !"_rs", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1316, i32 3}
!327 = !{ptr @__func__.ci_populate_all_memory_levels, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @ci_populate_all_memory_levels._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @ci_populate_all_memory_levels._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.153, !326, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @ci_populate_single_memory_level._rs, !332, !"_rs", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1189, i32 3}
!333 = !{ptr @__func__.ci_populate_single_memory_level, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @ci_populate_single_memory_level._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @ci_populate_single_memory_level._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.154, !332, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @ci_populate_single_memory_level._rs.155, !338, !"_rs", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1198, i32 3}
!339 = !{ptr @ci_populate_single_memory_level._entry.156, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @ci_populate_single_memory_level._entry_ptr.157, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.158, !338, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @ci_populate_single_memory_level._rs.159, !343, !"_rs", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1207, i32 3}
!344 = !{ptr @ci_populate_single_memory_level._entry.160, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @ci_populate_single_memory_level._entry_ptr.161, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.162, !343, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @ci_calculate_mclk_params._rs, !348, !"_rs", i1 false, i1 false}
!348 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 1046, i32 2}
!349 = !{ptr @__func__.ci_calculate_mclk_params, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @ci_calculate_mclk_params._entry, !348, !"_entry", i1 false, i1 false}
!351 = !{ptr @ci_calculate_mclk_params._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.163, !348, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @ci_copy_vbios_smc_reg_table._rs, !354, !"_rs", i1 false, i1 false}
!354 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2557, i32 2}
!355 = !{ptr @__func__.ci_copy_vbios_smc_reg_table, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @ci_copy_vbios_smc_reg_table._entry, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @ci_copy_vbios_smc_reg_table._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.164, !354, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @ci_copy_vbios_smc_reg_table._rs.165, !360, !"_rs", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2559, i32 2}
!361 = !{ptr @ci_copy_vbios_smc_reg_table._entry.166, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @ci_copy_vbios_smc_reg_table._entry_ptr.167, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @ci_set_mc_special_registers._rs, !364, !"_rs", i1 false, i1 false}
!364 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2589, i32 3}
!365 = !{ptr @__func__.ci_set_mc_special_registers, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @ci_set_mc_special_registers._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @ci_set_mc_special_registers._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @ci_set_mc_special_registers._rs.168, !369, !"_rs", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2605, i32 4}
!370 = !{ptr @ci_set_mc_special_registers._entry.169, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @ci_set_mc_special_registers._entry_ptr.170, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @ci_set_mc_special_registers._rs.171, !373, !"_rs", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2621, i32 5}
!374 = !{ptr @ci_set_mc_special_registers._entry.172, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @ci_set_mc_special_registers._entry_ptr.173, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.174, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2284, i32 2}
!378 = !{ptr @.str.175, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.176, !377, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @ci_get_offsetof.__UNIQUE_ID_ddebug345, !377, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!381 = !{ptr @.str.177, !377, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.178, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/ci_smumgr.c", i32 2307, i32 2}
!384 = !{ptr @.str.179, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @ci_get_mac_definition.__UNIQUE_ID_ddebug346, !383, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!386 = !{ptr @.str.180, !383, !"<string literal>", i1 false, i1 false}
!387 = !{i32 1, !"wchar_size", i32 2}
!388 = !{i32 1, !"min_enum_size", i32 4}
!389 = !{i32 8, !"branch-target-enforcement", i32 0}
!390 = !{i32 8, !"sign-return-address", i32 0}
!391 = !{i32 8, !"sign-return-address-all", i32 0}
!392 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!393 = !{i32 7, !"uwtable", i32 1}
!394 = !{i32 7, !"frame-pointer", i32 2}
!395 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!396 = !{i8 0, i8 2}
!397 = !{i64 797826, i64 797853}
!398 = !{i64 798336, i64 798363, i64 798397, i64 798418}
!399 = !{!"auto-init"}
!400 = !{i64 2149050610, i64 2149050615, i64 2149050628, i64 2149050672, i64 2149050706, i64 2149050727}
