; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/smu10_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c"
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smu10_smu\00", [22 x i8] zeroinitializer }, align 32
@smu10_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str, ptr @smu10_smu_init, ptr @smu10_smu_fini, ptr @smu10_start_smu, ptr null, ptr null, ptr null, ptr @smu10_read_arg_from_smc, ptr @smu10_send_msg_to_smc, ptr @smu10_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu10_smc_table_manager, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smu10_verify_smc_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013amdgpu: [powerplay] Attempt to read SMC IF Version Number Failed!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smu10_verify_smc_interface\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c\00", [63 x i8] zeroinitializer }, align 32
@smu10_verify_smc_interface._entry_ptr = internal global ptr @smu10_verify_smc_interface._entry, section ".printk_index", align 4
@smu10_send_msg_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to send Message %x.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smu10_send_msg_to_smc\00", [42 x i8] zeroinitializer }, align 32
@smu10_send_msg_to_smc._entry_ptr = internal global ptr @smu10_send_msg_to_smc._entry, section ".printk_index", align 4
@smu10_send_msg_to_smc_with_parameter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.6, ptr @.str.3, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"smu10_send_msg_to_smc_with_parameter\00", [59 x i8] zeroinitializer }, align 32
@smu10_send_msg_to_smc_with_parameter._entry_ptr = internal global ptr @smu10_send_msg_to_smc_with_parameter._entry, section ".printk_index", align 4
@smu10_copy_table_from_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smu10_copy_table_from_smc = private unnamed_addr constant [26 x i8] c"smu10_copy_table_from_smc\00", align 1
@smu10_copy_table_from_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.smu10_copy_table_from_smc, ptr @.str.3, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@smu10_copy_table_from_smc._entry_ptr = internal global ptr @smu10_copy_table_from_smc._entry, section ".printk_index", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid SMU Table ID!\00", [42 x i8] zeroinitializer }, align 32
@smu10_copy_table_from_smc._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu10_copy_table_from_smc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.smu10_copy_table_from_smc, ptr @.str.3, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu10_copy_table_from_smc._entry_ptr.12 = internal global ptr @smu10_copy_table_from_smc._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid SMU Table version!\00", [37 x i8] zeroinitializer }, align 32
@smu10_copy_table_from_smc._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu10_copy_table_from_smc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.smu10_copy_table_from_smc, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu10_copy_table_from_smc._entry_ptr.16 = internal global ptr @smu10_copy_table_from_smc._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid SMU Table Length!\00", [38 x i8] zeroinitializer }, align 32
@smu10_copy_table_to_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu10_copy_table_to_smc = private unnamed_addr constant [24 x i8] c"smu10_copy_table_to_smc\00", align 1
@smu10_copy_table_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.smu10_copy_table_to_smc, ptr @.str.3, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu10_copy_table_to_smc._entry_ptr = internal global ptr @smu10_copy_table_to_smc._entry, section ".printk_index", align 4
@smu10_copy_table_to_smc._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu10_copy_table_to_smc._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.smu10_copy_table_to_smc, ptr @.str.3, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu10_copy_table_to_smc._entry_ptr.20 = internal global ptr @smu10_copy_table_to_smc._entry.19, section ".printk_index", align 4
@smu10_copy_table_to_smc._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu10_copy_table_to_smc._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.smu10_copy_table_to_smc, ptr @.str.3, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu10_copy_table_to_smc._entry_ptr.23 = internal global ptr @smu10_copy_table_to_smc._entry.22, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 308, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"smu10_smu_funcs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 307, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 195, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 90, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 111, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 123, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 125, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 127, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 157, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 159, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private constant [68 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 161, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @smu10_copy_table_from_smc._entry, ptr @smu10_copy_table_from_smc._entry.11, ptr @smu10_copy_table_from_smc._entry.15, ptr @smu10_copy_table_from_smc._entry_ptr, ptr @smu10_copy_table_from_smc._entry_ptr.12, ptr @smu10_copy_table_from_smc._entry_ptr.16, ptr @smu10_copy_table_to_smc._entry, ptr @smu10_copy_table_to_smc._entry.19, ptr @smu10_copy_table_to_smc._entry.22, ptr @smu10_copy_table_to_smc._entry_ptr, ptr @smu10_copy_table_to_smc._entry_ptr.20, ptr @smu10_copy_table_to_smc._entry_ptr.23, ptr @smu10_send_msg_to_smc._entry, ptr @smu10_send_msg_to_smc._entry_ptr, ptr @smu10_send_msg_to_smc_with_parameter._entry, ptr @smu10_send_msg_to_smc_with_parameter._entry_ptr, ptr @smu10_verify_smc_interface._entry, ptr @smu10_verify_smc_interface._entry_ptr, ptr @.str, ptr @smu10_smu_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @smu10_copy_table_from_smc._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @smu10_copy_table_from_smc._rs.10, ptr @.str.13, ptr @smu10_copy_table_from_smc._rs.14, ptr @.str.17, ptr @smu10_copy_table_to_smc._rs, ptr @smu10_copy_table_to_smc._rs.18, ptr @smu10_copy_table_to_smc._rs.21], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_verify_smc_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_send_msg_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_send_msg_to_smc_with_parameter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_from_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_from_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_from_smc._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_from_smc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_from_smc._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_from_smc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_to_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_to_smc._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_to_smc._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_to_smc._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu10_copy_table_to_smc._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_smu_init(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %1 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %smu_backend, align 4
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %handle = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 5
  %mc_addr = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 3
  %table = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 4
  %call8 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %3, i32 noundef 124, i32 noundef 4096, i32 noundef 4, ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.err0_crit_edge

if.end.err0_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err0

if.end11:                                         ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call7.i.i, align 8
  %size = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 124, ptr %size, align 4
  %table_id = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %table_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %table_id, align 8
  %7 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwmgr, align 4
  %handle25 = getelementptr [2 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 5
  %mc_addr29 = getelementptr [2 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 3
  %table33 = getelementptr [2 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 4
  %call34 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %8, i32 noundef 160, i32 noundef 4096, i32 noundef 4, ptr noundef %handle25, ptr noundef %mc_addr29, ptr noundef %table33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %err1

if.end37:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx24 = getelementptr [2 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arrayidx24, align 8
  %size45 = getelementptr [2 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %size45 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 160, ptr %size45, align 4
  %table_id49 = getelementptr [2 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %table_id49 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %table_id49, align 8
  br label %cleanup

err1:                                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  br label %err0

err0:                                             ; preds = %err1, %if.end.err0_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err0, %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %err0 ], [ 0, %if.end37 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_smu_fini(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %handle = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 5
  %mc_addr = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 3
  %table = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  %handle11 = getelementptr [2 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 5
  %mc_addr15 = getelementptr [2 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 3
  %table19 = getelementptr [2 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle11, ptr noundef %mc_addr15, ptr noundef %table19) #5
  %2 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend, align 4
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %smu_backend, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  %smc_driver_if_version.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %smu_version = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 3
  %call = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 2, ptr noundef %smu_version) #5
  %2 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smu_version, align 4
  %shr = lshr i32 %3, 8
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 17
  %4 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %fw_version, align 4
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %apu_flags, align 4
  %7 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %.not = icmp eq i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1983744, i32 %3)
  %cmp = icmp ult i32 %3, 1983744
  %or.cond23 = select i1 %.not, i1 %cmp, i1 false
  br i1 %or.cond23, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pp_feature = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 24
  %8 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pp_feature, align 8
  %and10 = and i32 %9, -32769
  store i32 %and10, ptr %pp_feature, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_driver_if_version.i) #5
  %10 = ptrtoint ptr %smc_driver_if_version.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %smc_driver_if_version.i, align 4, !annotation !59
  %call.i = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 3, ptr noundef nonnull %smc_driver_if_version.i) #5
  %11 = ptrtoint ptr %smc_driver_if_version.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smc_driver_if_version.i, align 4
  %13 = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %switch.i = icmp eq i32 %13, 6
  br i1 %switch.i, label %14, label %smu10_verify_smc_interface.exit

smu10_verify_smc_interface.exit:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_driver_if_version.i) #5
  br label %15

14:                                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_driver_if_version.i) #5
  br label %15

15:                                               ; preds = %14, %smu10_verify_smc_interface.exit
  %16 = phi i32 [ 0, %14 ], [ -22, %smu10_verify_smc_interface.exit ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_read_arg_from_smc(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 658
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 15) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 658
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 666
  %call.i = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add.i, i32 noundef 0, i32 noundef -1) #5
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cond.false.i_crit_edge, label %land.lhs.true.i

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %land.lhs.true5.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true5.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 666
  %call19.i = tail call i32 %11(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0, i32 noundef 15) #5
  br label %smu10_wait_for_response.exit

cond.false.i:                                     ; preds = %land.lhs.true5.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add24.i = add i32 %19, 666
  %call25.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add24.i, i32 noundef 0) #5
  br label %smu10_wait_for_response.exit

smu10_wait_for_response.exit:                     ; preds = %cond.false.i, %cond.true.i
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %smu10_wait_for_response.exit.cond.false_crit_edge, label %land.lhs.true

smu10_wait_for_response.exit.cond.false_crit_edge: ; preds = %smu10_wait_for_response.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %smu10_wait_for_response.exit
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %23, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %25, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add = add i32 %29, 666
  tail call void %25(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 15) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %smu10_wait_for_response.exit.cond.false_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add18 = add i32 %33, 666
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %34 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwmgr, align 4
  %virt.i34 = getelementptr inbounds %struct.amdgpu_device, ptr %35, i32 0, i32 132
  %36 = ptrtoint ptr %virt.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt.i34, align 8
  %and.i35 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %cond.end.cond.false.i43_crit_edge, label %land.lhs.true.i38

cond.end.cond.false.i43_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i43

land.lhs.true.i38:                                ; preds = %cond.end
  %funcs.i37 = getelementptr inbounds %struct.amdgpu_device, ptr %35, i32 0, i32 106, i32 2, i32 15
  %38 = ptrtoint ptr %funcs.i37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs.i37, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %land.lhs.true.i38.cond.false.i43_crit_edge, label %land.lhs.true3.i

land.lhs.true.i38.cond.false.i43_crit_edge:       ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i43

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i38
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool7.not.i = icmp eq ptr %41, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i43_crit_edge, label %cond.true.i41

land.lhs.true3.i.cond.false.i43_crit_edge:        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i43

cond.true.i41:                                    ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i39 = getelementptr %struct.amdgpu_device, ptr %35, i32 0, i32 130, i32 15
  %42 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i39, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add.i40 = add i32 %45, 642
  %conv.i = zext i16 %msg to i32
  tail call void %41(ptr noundef %35, i32 noundef %add.i40, i32 noundef %conv.i, i32 noundef 0, i32 noundef 15) #5
  br label %smu10_send_msg_to_smc_without_waiting.exit

cond.false.i43:                                   ; preds = %land.lhs.true3.i.cond.false.i43_crit_edge, %land.lhs.true.i38.cond.false.i43_crit_edge, %cond.end.cond.false.i43_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %35, i32 0, i32 130, i32 15
  %46 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx15.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add18.i42 = add i32 %49, 642
  %conv19.i = zext i16 %msg to i32
  tail call void @amdgpu_device_wreg(ptr noundef %35, i32 noundef %add18.i42, i32 noundef %conv19.i, i32 noundef 0) #5
  br label %smu10_send_msg_to_smc_without_waiting.exit

smu10_send_msg_to_smc_without_waiting.exit:       ; preds = %cond.false.i43, %cond.true.i41
  %50 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i44 = getelementptr %struct.amdgpu_device, ptr %51, i32 0, i32 130, i32 15
  %52 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i44, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add.i45 = add i32 %55, 666
  %call.i46 = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add.i45, i32 noundef 0, i32 noundef -1) #5
  %virt.i47 = getelementptr inbounds %struct.amdgpu_device, ptr %51, i32 0, i32 132
  %56 = ptrtoint ptr %virt.i47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt.i47, align 8
  %and.i48 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i49, label %smu10_send_msg_to_smc_without_waiting.exit.cond.false.i61_crit_edge, label %land.lhs.true.i52

smu10_send_msg_to_smc_without_waiting.exit.cond.false.i61_crit_edge: ; preds = %smu10_send_msg_to_smc_without_waiting.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i61

land.lhs.true.i52:                                ; preds = %smu10_send_msg_to_smc_without_waiting.exit
  %funcs.i50 = getelementptr inbounds %struct.amdgpu_device, ptr %51, i32 0, i32 106, i32 2, i32 15
  %58 = ptrtoint ptr %funcs.i50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs.i50, align 4
  %tobool4.not.i51 = icmp eq ptr %59, null
  br i1 %tobool4.not.i51, label %land.lhs.true.i52.cond.false.i61_crit_edge, label %land.lhs.true5.i55

land.lhs.true.i52.cond.false.i61_crit_edge:       ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i61

land.lhs.true5.i55:                               ; preds = %land.lhs.true.i52
  %sriov_rreg.i53 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %sriov_rreg.i53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_rreg.i53, align 4
  %tobool9.not.i54 = icmp eq ptr %61, null
  br i1 %tobool9.not.i54, label %land.lhs.true5.i55.cond.false.i61_crit_edge, label %cond.true.i58

land.lhs.true5.i55.cond.false.i61_crit_edge:      ; preds = %land.lhs.true5.i55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i61

cond.true.i58:                                    ; preds = %land.lhs.true5.i55
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i44, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add18.i56 = add i32 %65, 666
  %call19.i57 = tail call i32 %61(ptr noundef %51, i32 noundef %add18.i56, i32 noundef 0, i32 noundef 15) #5
  br label %smu10_wait_for_response.exit63

cond.false.i61:                                   ; preds = %land.lhs.true5.i55.cond.false.i61_crit_edge, %land.lhs.true.i52.cond.false.i61_crit_edge, %smu10_send_msg_to_smc_without_waiting.exit.cond.false.i61_crit_edge
  %66 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i44, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add24.i59 = add i32 %69, 666
  %call25.i60 = tail call i32 @amdgpu_device_rreg(ptr noundef %51, i32 noundef %add24.i59, i32 noundef 0) #5
  br label %smu10_wait_for_response.exit63

smu10_wait_for_response.exit63:                   ; preds = %cond.false.i61, %cond.true.i58
  %cond.i62 = phi i32 [ %call19.i57, %cond.true.i58 ], [ %call25.i60, %cond.false.i61 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i62)
  %cmp = icmp eq i32 %cond.i62, 0
  br i1 %cmp, label %do.end, label %smu10_wait_for_response.exit63.if.end_crit_edge

smu10_wait_for_response.exit63.if.end_crit_edge:  ; preds = %smu10_wait_for_response.exit63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %smu10_wait_for_response.exit63
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %msg to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %smu10_wait_for_response.exit63.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %msg, i32 noundef %parameter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 666
  %call.i = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add.i, i32 noundef 0, i32 noundef -1) #5
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cond.false.i_crit_edge, label %land.lhs.true.i

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %land.lhs.true5.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true5.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 666
  %call19.i = tail call i32 %11(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0, i32 noundef 15) #5
  br label %smu10_wait_for_response.exit

cond.false.i:                                     ; preds = %land.lhs.true5.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add24.i = add i32 %19, 666
  %call25.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add24.i, i32 noundef 0) #5
  br label %smu10_wait_for_response.exit

smu10_wait_for_response.exit:                     ; preds = %cond.false.i, %cond.true.i
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %smu10_wait_for_response.exit.cond.false_crit_edge, label %land.lhs.true

smu10_wait_for_response.exit.cond.false_crit_edge: ; preds = %smu10_wait_for_response.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %smu10_wait_for_response.exit
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %23, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %25, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add = add i32 %29, 666
  tail call void %25(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 15) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %smu10_wait_for_response.exit.cond.false_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add18 = add i32 %33, 666
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %34 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt.i, align 8
  %and21 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.false44_crit_edge, label %land.lhs.true23

cond.end.cond.false44_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false44

land.lhs.true23:                                  ; preds = %cond.end
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %36 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %37, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false44_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false44_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false44

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %sriov_wreg32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_wreg32, align 4
  %tobool33.not = icmp eq ptr %39, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false44_crit_edge, label %cond.true34

land.lhs.true28.cond.false44_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false44

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add43 = add i32 %43, 658
  tail call void %39(ptr noundef %1, i32 noundef %add43, i32 noundef %parameter, i32 noundef 0, i32 noundef 15) #5
  br label %cond.end50

cond.false44:                                     ; preds = %land.lhs.true28.cond.false44_crit_edge, %land.lhs.true23.cond.false44_crit_edge, %cond.end.cond.false44_crit_edge
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add49 = add i32 %47, 658
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add49, i32 noundef %parameter, i32 noundef 0) #5
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false44, %cond.true34
  %48 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hwmgr, align 4
  %virt.i77 = getelementptr inbounds %struct.amdgpu_device, ptr %49, i32 0, i32 132
  %50 = ptrtoint ptr %virt.i77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %virt.i77, align 8
  %and.i78 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i79 = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i79, label %cond.end50.cond.false.i86_crit_edge, label %land.lhs.true.i81

cond.end50.cond.false.i86_crit_edge:              ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i86

land.lhs.true.i81:                                ; preds = %cond.end50
  %funcs.i80 = getelementptr inbounds %struct.amdgpu_device, ptr %49, i32 0, i32 106, i32 2, i32 15
  %52 = ptrtoint ptr %funcs.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs.i80, align 4
  %tobool2.not.i = icmp eq ptr %53, null
  br i1 %tobool2.not.i, label %land.lhs.true.i81.cond.false.i86_crit_edge, label %land.lhs.true3.i

land.lhs.true.i81.cond.false.i86_crit_edge:       ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i86

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i81
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool7.not.i = icmp eq ptr %55, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i86_crit_edge, label %cond.true.i84

land.lhs.true3.i.cond.false.i86_crit_edge:        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i86

cond.true.i84:                                    ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i82 = getelementptr %struct.amdgpu_device, ptr %49, i32 0, i32 130, i32 15
  %56 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i82, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add.i83 = add i32 %59, 642
  %conv.i = zext i16 %msg to i32
  tail call void %55(ptr noundef %49, i32 noundef %add.i83, i32 noundef %conv.i, i32 noundef 0, i32 noundef 15) #5
  br label %smu10_send_msg_to_smc_without_waiting.exit

cond.false.i86:                                   ; preds = %land.lhs.true3.i.cond.false.i86_crit_edge, %land.lhs.true.i81.cond.false.i86_crit_edge, %cond.end50.cond.false.i86_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %49, i32 0, i32 130, i32 15
  %60 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx15.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add18.i85 = add i32 %63, 642
  %conv19.i = zext i16 %msg to i32
  tail call void @amdgpu_device_wreg(ptr noundef %49, i32 noundef %add18.i85, i32 noundef %conv19.i, i32 noundef 0) #5
  br label %smu10_send_msg_to_smc_without_waiting.exit

smu10_send_msg_to_smc_without_waiting.exit:       ; preds = %cond.false.i86, %cond.true.i84
  %64 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i87 = getelementptr %struct.amdgpu_device, ptr %65, i32 0, i32 130, i32 15
  %66 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i87, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add.i88 = add i32 %69, 666
  %call.i89 = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add.i88, i32 noundef 0, i32 noundef -1) #5
  %virt.i90 = getelementptr inbounds %struct.amdgpu_device, ptr %65, i32 0, i32 132
  %70 = ptrtoint ptr %virt.i90 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %virt.i90, align 8
  %and.i91 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool.not.i92, label %smu10_send_msg_to_smc_without_waiting.exit.cond.false.i104_crit_edge, label %land.lhs.true.i95

smu10_send_msg_to_smc_without_waiting.exit.cond.false.i104_crit_edge: ; preds = %smu10_send_msg_to_smc_without_waiting.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i104

land.lhs.true.i95:                                ; preds = %smu10_send_msg_to_smc_without_waiting.exit
  %funcs.i93 = getelementptr inbounds %struct.amdgpu_device, ptr %65, i32 0, i32 106, i32 2, i32 15
  %72 = ptrtoint ptr %funcs.i93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %funcs.i93, align 4
  %tobool4.not.i94 = icmp eq ptr %73, null
  br i1 %tobool4.not.i94, label %land.lhs.true.i95.cond.false.i104_crit_edge, label %land.lhs.true5.i98

land.lhs.true.i95.cond.false.i104_crit_edge:      ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i104

land.lhs.true5.i98:                               ; preds = %land.lhs.true.i95
  %sriov_rreg.i96 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %73, i32 0, i32 13
  %74 = ptrtoint ptr %sriov_rreg.i96 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sriov_rreg.i96, align 4
  %tobool9.not.i97 = icmp eq ptr %75, null
  br i1 %tobool9.not.i97, label %land.lhs.true5.i98.cond.false.i104_crit_edge, label %cond.true.i101

land.lhs.true5.i98.cond.false.i104_crit_edge:     ; preds = %land.lhs.true5.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i104

cond.true.i101:                                   ; preds = %land.lhs.true5.i98
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i87, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %add18.i99 = add i32 %79, 666
  %call19.i100 = tail call i32 %75(ptr noundef %65, i32 noundef %add18.i99, i32 noundef 0, i32 noundef 15) #5
  br label %smu10_wait_for_response.exit106

cond.false.i104:                                  ; preds = %land.lhs.true5.i98.cond.false.i104_crit_edge, %land.lhs.true.i95.cond.false.i104_crit_edge, %smu10_send_msg_to_smc_without_waiting.exit.cond.false.i104_crit_edge
  %80 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i87, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add24.i102 = add i32 %83, 666
  %call25.i103 = tail call i32 @amdgpu_device_rreg(ptr noundef %65, i32 noundef %add24.i102, i32 noundef 0) #5
  br label %smu10_wait_for_response.exit106

smu10_wait_for_response.exit106:                  ; preds = %cond.false.i104, %cond.true.i101
  %cond.i105 = phi i32 [ %call19.i100, %cond.true.i101 ], [ %call25.i103, %cond.false.i104 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i105)
  %cmp = icmp eq i32 %cond.i105, 0
  br i1 %cmp, label %do.end, label %smu10_wait_for_response.exit106.if.end_crit_edge

smu10_wait_for_response.exit106.if.end_crit_edge: ; preds = %smu10_wait_for_response.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %smu10_wait_for_response.exit106
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %msg to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %smu10_wait_for_response.exit106.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu10_smc_table_manager(ptr noundef %hwmgr, ptr nocapture noundef %table, i16 noundef zeroext %table_id, i1 noundef zeroext %rw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %table_id)
  %cmp.i = icmp slt i16 %table_id, 2
  br i1 %rw, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %do.body9.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @smu10_copy_table_from_smc._rs, ptr noundef nonnull @__func__.smu10_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %do.end.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #9
  br label %if.end

do.body9.i:                                       ; preds = %if.then
  %conv.i = sext i16 %table_id to i32
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend.i, align 4
  %arrayidx.i = getelementptr [2 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not.i = icmp eq i32 %5, 0
  br i1 %cmp11.not.i, label %if.then13.i, label %do.body26.i

if.then13.i:                                      ; preds = %do.body9.i
  %call14.i = tail call i32 @___ratelimit(ptr noundef nonnull @smu10_copy_table_from_smc._rs.10, ptr noundef nonnull @__func__.smu10_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.end_crit_edge, label %do.end19.i

if.then13.i.if.end_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end19.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13) #9
  br label %if.end

do.body26.i:                                      ; preds = %do.body9.i
  %size.i = getelementptr [2 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31.not.i = icmp eq i32 %7, 0
  br i1 %cmp31.not.i, label %if.then33.i, label %do.end45.i

if.then33.i:                                      ; preds = %do.body26.i
  %call34.i = tail call i32 @___ratelimit(ptr noundef nonnull @smu10_copy_table_from_smc._rs.14, ptr noundef nonnull @__func__.smu10_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.if.end_crit_edge, label %do.end39.i

if.then33.i.if.end_crit_edge:                     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end39.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17) #9
  br label %if.end

do.end45.i:                                       ; preds = %do.body26.i
  %mc_addr.i = getelementptr [2 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 3
  %8 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mc_addr.i, align 8
  %shr.i = lshr i64 %9, 32
  %conv51.i = trunc i64 %shr.i to i32
  %call52.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 26, i32 noundef %conv51.i, ptr noundef null) #5
  %10 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mc_addr.i, align 8
  %conv58.i = trunc i64 %11 to i32
  %call59.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 27, i32 noundef %conv58.i, ptr noundef null) #5
  %table_id64.i = getelementptr [2 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 2
  %12 = ptrtoint ptr %table_id64.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %table_id64.i, align 8
  %call65.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 28, i32 noundef %13, ptr noundef null) #5
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
  %table74.i = getelementptr [2 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 4
  %22 = ptrtoint ptr %table74.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %table74.i, align 8
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %26 = call ptr @memcpy(ptr %table, ptr %23, i32 %25)
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i, label %do.body9.i15, label %if.then.i8

if.then.i8:                                       ; preds = %if.else
  %call.i6 = tail call i32 @___ratelimit(ptr noundef nonnull @smu10_copy_table_to_smc._rs, ptr noundef nonnull @__func__.smu10_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not.i7 = icmp eq i32 %call.i6, 0
  br i1 %tobool.not.i7, label %if.then.i8.if.end_crit_edge, label %do.end.i10

if.then.i8.if.end_crit_edge:                      ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i10:                                       ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #9
  br label %if.end

do.body9.i15:                                     ; preds = %if.else
  %conv.i11 = sext i16 %table_id to i32
  %smu_backend.i12 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %27 = ptrtoint ptr %smu_backend.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smu_backend.i12, align 4
  %arrayidx.i13 = getelementptr [2 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i11
  %29 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp11.not.i14 = icmp eq i32 %30, 0
  br i1 %cmp11.not.i14, label %if.then13.i18, label %do.body26.i23

if.then13.i18:                                    ; preds = %do.body9.i15
  %call14.i16 = tail call i32 @___ratelimit(ptr noundef nonnull @smu10_copy_table_to_smc._rs.18, ptr noundef nonnull @__func__.smu10_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i16)
  %tobool15.not.i17 = icmp eq i32 %call14.i16, 0
  br i1 %tobool15.not.i17, label %if.then13.i18.if.end_crit_edge, label %do.end19.i20

if.then13.i18.if.end_crit_edge:                   ; preds = %if.then13.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end19.i20:                                     ; preds = %if.then13.i18
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13) #9
  br label %if.end

do.body26.i23:                                    ; preds = %do.body9.i15
  %size.i21 = getelementptr [2 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i11, i32 1
  %31 = ptrtoint ptr %size.i21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp31.not.i22 = icmp eq i32 %32, 0
  br i1 %cmp31.not.i22, label %if.then33.i26, label %do.end45.i30

if.then33.i26:                                    ; preds = %do.body26.i23
  %call34.i24 = tail call i32 @___ratelimit(ptr noundef nonnull @smu10_copy_table_to_smc._rs.21, ptr noundef nonnull @__func__.smu10_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i24)
  %tobool35.not.i25 = icmp eq i32 %call34.i24, 0
  br i1 %tobool35.not.i25, label %if.then33.i26.if.end_crit_edge, label %do.end39.i28

if.then33.i26.if.end_crit_edge:                   ; preds = %if.then33.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end39.i28:                                     ; preds = %if.then33.i26
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17) #9
  br label %if.end

do.end45.i30:                                     ; preds = %do.body26.i23
  %table50.i = getelementptr [2 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i11, i32 4
  %33 = ptrtoint ptr %table50.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %table50.i, align 8
  %35 = call ptr @memcpy(ptr %34, ptr %table, i32 %32)
  %asic_funcs.i29 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %36 = ptrtoint ptr %asic_funcs.i29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %asic_funcs.i29, align 4
  %flush_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %flush_hdp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %flush_hdp.i, align 4
  %tobool56.not.i = icmp eq ptr %39, null
  br i1 %tobool56.not.i, label %cond.false.i32, label %do.end45.i30.cond.end.i36_crit_edge

do.end45.i30.cond.end.i36_crit_edge:              ; preds = %do.end45.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i36

cond.false.i32:                                   ; preds = %do.end45.i30
  call void @__sanitizer_cov_trace_pc() #7
  %funcs.i31 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 102, i32 1
  %40 = ptrtoint ptr %funcs.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs.i31, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  br label %cond.end.i36

cond.end.i36:                                     ; preds = %cond.false.i32, %do.end45.i30.cond.end.i36_crit_edge
  %.sink.i33 = phi ptr [ %43, %cond.false.i32 ], [ %39, %do.end45.i30.cond.end.i36_crit_edge ]
  tail call void %.sink.i33(ptr noundef %1, ptr noundef null) #5
  %mc_addr.i34 = getelementptr [2 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i11, i32 3
  %44 = ptrtoint ptr %mc_addr.i34 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %mc_addr.i34, align 8
  %shr.i35 = lshr i64 %45, 32
  %conv65.i = trunc i64 %shr.i35 to i32
  %call66.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 26, i32 noundef %conv65.i, ptr noundef null) #5
  %46 = ptrtoint ptr %mc_addr.i34 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %mc_addr.i34, align 8
  %conv72.i = trunc i64 %47 to i32
  %call73.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 27, i32 noundef %conv72.i, ptr noundef null) #5
  %table_id78.i = getelementptr [2 x %struct.smu_table_entry], ptr %28, i32 0, i32 %conv.i11, i32 2
  %48 = ptrtoint ptr %table_id78.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %table_id78.i, align 8
  %call79.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 29, i32 noundef %49, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %cond.end.i36, %do.end39.i28, %if.then33.i26.if.end_crit_edge, %do.end19.i20, %if.then13.i18.if.end_crit_edge, %do.end.i10, %if.then.i8.if.end_crit_edge, %cond.end.i, %do.end39.i, %if.then33.i.if.end_crit_edge, %do.end19.i, %if.then13.i.if.end_crit_edge, %do.end.i, %if.then.i.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %cond.end.i ], [ -22, %do.end.i ], [ -22, %if.then.i.if.end_crit_edge ], [ -22, %do.end19.i ], [ -22, %if.then13.i.if.end_crit_edge ], [ -22, %do.end39.i ], [ -22, %if.then33.i.if.end_crit_edge ], [ 0, %cond.end.i36 ], [ -22, %do.end.i10 ], [ -22, %if.then.i8.if.end_crit_edge ], [ -22, %do.end19.i20 ], [ -22, %if.then13.i18.if.end_crit_edge ], [ -22, %do.end39.i28 ], [ -22, %if.then33.i26.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_for_register_unequal(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 308, i32 10}
!2 = !{ptr @smu10_smu_funcs, !3, !"smu10_smu_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 307, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 195, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @smu10_verify_smc_interface._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @smu10_verify_smc_interface._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 90, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @smu10_send_msg_to_smc._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @smu10_send_msg_to_smc._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 111, i32 3}
!17 = !{ptr @smu10_send_msg_to_smc_with_parameter._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @smu10_send_msg_to_smc_with_parameter._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 123, i32 2}
!21 = !{ptr @smu10_copy_table_from_smc._rs, !20, !"_rs", i1 false, i1 false}
!22 = !{ptr @__func__.smu10_copy_table_from_smc, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @smu10_copy_table_from_smc._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @smu10_copy_table_from_smc._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @smu10_copy_table_from_smc._rs.10, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 125, i32 2}
!29 = !{ptr @smu10_copy_table_from_smc._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @smu10_copy_table_from_smc._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @smu10_copy_table_from_smc._rs.14, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 127, i32 2}
!34 = !{ptr @smu10_copy_table_from_smc._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @smu10_copy_table_from_smc._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @smu10_copy_table_to_smc._rs, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 157, i32 2}
!39 = !{ptr @__func__.smu10_copy_table_to_smc, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @smu10_copy_table_to_smc._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @smu10_copy_table_to_smc._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @smu10_copy_table_to_smc._rs.18, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 159, i32 2}
!44 = !{ptr @smu10_copy_table_to_smc._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @smu10_copy_table_to_smc._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @smu10_copy_table_to_smc._rs.21, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu10_smumgr.c", i32 161, i32 2}
!48 = !{ptr @smu10_copy_table_to_smc._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @smu10_copy_table_to_smc._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
