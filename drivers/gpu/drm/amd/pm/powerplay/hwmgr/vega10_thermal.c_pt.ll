; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega10_thermal.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.phm_fan_speed_info = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.vega10_hwmgr = type { %struct.vega10_dpm_table, %struct.vega10_dpm_table, %struct.vega10_registry_data, %struct.vega10_vbios_boot_state, %struct.vega10_mclk_latency_table, %struct.vega10_leakage_voltage, i32, %struct.pp_atomfwctrl_voltage_table, i32, %struct.pp_atomfwctrl_voltage_table, i32, %struct.pp_atomfwctrl_voltage_table, i32, i32, %struct.vega10_bacos, %struct.vega10_odn_dpm_table, %struct.vega10_odn_fan_table, i8, i8, i8, i8, i32, i32, %struct.vega10_display_timing, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vega10_dpmlevel_enable_mask, i8, i8, i8, i32, [30 x %struct.smu_features], %struct.vega10_smc_state_table, i32, i32, i32, [4 x i8] }
%struct.vega10_dpm_table = type { %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_pcie_table }
%struct.vega10_single_dpm_table = type { i32, %struct.vega10_dpm_state, [8 x %struct.vega10_dpm_level] }
%struct.vega10_dpm_state = type { i32, i32, i32, i32 }
%struct.vega10_dpm_level = type { i8, i32, i32 }
%struct.vega10_pcie_table = type { i16, [2 x i8], [2 x i8], [2 x i32] }
%struct.vega10_registry_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.vega10_vbios_boot_state = type { i8, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.vega10_mclk_latency_table = type { i32, [8 x %struct.vega10_mclk_latency_entries] }
%struct.vega10_mclk_latency_entries = type { i32, i32 }
%struct.vega10_leakage_voltage = type { i16, [8 x i16], [8 x i16] }
%struct.pp_atomfwctrl_voltage_table = type { i32, i32, i32, i8, i8, i8, i8, i8, [32 x %struct.pp_atomfwctrl_voltage_table_entry] }
%struct.pp_atomfwctrl_voltage_table_entry = type { i16, i32 }
%struct.vega10_bacos = type { i32 }
%struct.vega10_odn_dpm_table = type { %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_vddc_lookup_table, i32, i32 }
%struct.vega10_odn_clock_voltage_dependency_table = type { i32, [8 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_clock_voltage_dependency_record = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i32 }
%struct.vega10_odn_vddc_lookup_table = type { i32, [8 x %struct.phm_ppt_v1_voltage_lookup_record] }
%struct.phm_ppt_v1_voltage_lookup_record = type { i16, i16, i16, i16, i16 }
%struct.vega10_odn_fan_table = type { i32, i32, i32, i32 }
%struct.vega10_display_timing = type { i32, i32 }
%struct.vega10_dpmlevel_enable_mask = type { i32, i32, i32, i32, i32, i32 }
%struct.smu_features = type { i8, i8, i32, i32 }
%struct.vega10_smc_state_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.PPTable_t, %struct.Watermarks_t, %struct.AvfsTable_t, %struct.AvfsFuseOverride_t }
%struct.PPTable_t = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, [2 x i8], [8 x %struct.PllSetting_t], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [4 x [8 x %struct.DisplayClockTable_t]], [4 x %struct.QuadraticInt_t], i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i8, i8, i8, i8, [4 x i8], [4 x %struct.PllSetting_t], [4 x i8], i8, [3 x i8], i16, i16, [8 x i8], [8 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], %struct.GbVdroopTable_t, %struct.GbVdroopTable_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, [8 x i8], [3 x i32], i16, i16, i16, i16, i32, i8, i8, i8, i8, i16, i16, %struct.PllSetting_t, [8 x i8], %struct.GbVdroopTable_t, %struct.QuadraticInt_t, [8 x i32], [3 x i32] }
%struct.DisplayClockTable_t = type { i16, i16 }
%struct.PllSetting_t = type { i32, i32, i16, i8, i8 }
%struct.GbVdroopTable_t = type { i32, i32, i32, i8, i8, i8, i8 }
%struct.QuadraticInt_t = type { i32, i32, i32, i8, i8, i8, i8 }
%struct.Watermarks_t = type { [2 x [4 x %struct.WatermarkRowGeneric_t]], [7 x i32] }
%struct.WatermarkRowGeneric_t = type { i16, i16, i16, i16, i8, [3 x i8] }
%struct.AvfsTable_t = type { [8 x float], [8 x float], [8 x float], [8 x float], float, [7 x i32] }
%struct.AvfsFuseOverride_t = type { i8, i8, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32] }
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_ppt_v2_information = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.phm_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32 }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@vega10_fan_ctrl_start_smc_fan_control._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vega10_fan_ctrl_start_smc_fan_control = private unnamed_addr constant [38 x i8] c"vega10_fan_ctrl_start_smc_fan_control\00", align 1
@vega10_fan_ctrl_start_smc_fan_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_fan_ctrl_start_smc_fan_control, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c\00", [62 x i8] zeroinitializer }, align 32
@vega10_fan_ctrl_start_smc_fan_control._entry_ptr = internal global ptr @vega10_fan_ctrl_start_smc_fan_control._entry, section ".printk_index", align 4
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Attempt to Enable SMC FAN CONTROL Feature Failed!\00", [46 x i8] zeroinitializer }, align 32
@vega10_fan_ctrl_stop_smc_fan_control._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_fan_ctrl_stop_smc_fan_control = private unnamed_addr constant [37 x i8] c"vega10_fan_ctrl_stop_smc_fan_control\00", align 1
@vega10_fan_ctrl_stop_smc_fan_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_fan_ctrl_stop_smc_fan_control, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_fan_ctrl_stop_smc_fan_control._entry_ptr = internal global ptr @vega10_fan_ctrl_stop_smc_fan_control._entry, section ".printk_index", align 4
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Attempt to Disable SMC FAN CONTROL Feature Failed!\00", [45 x i8] zeroinitializer }, align 32
@vega10_thermal_disable_alert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[Thermal_EnableAlert] FW CTF Already disabled!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vega10_thermal_disable_alert\00", [35 x i8] zeroinitializer }, align 32
@vega10_thermal_disable_alert._entry_ptr = internal global ptr @vega10_thermal_disable_alert._entry, section ".printk_index", align 4
@vega10_thermal_disable_alert._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_thermal_disable_alert._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.6, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_thermal_disable_alert._entry_ptr.8 = internal global ptr @vega10_thermal_disable_alert._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Attempt to disable FW CTF feature Failed!\00", [54 x i8] zeroinitializer }, align 32
@vega10_enable_mgpu_fan_boost._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016amdgpu: [powerplay] Failed to update fan control table in pptable!\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vega10_enable_mgpu_fan_boost\00", [35 x i8] zeroinitializer }, align 32
@vega10_enable_mgpu_fan_boost._entry_ptr = internal global ptr @vega10_enable_mgpu_fan_boost._entry, section ".printk_index", align 4
@vega10_enable_mgpu_fan_boost._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016amdgpu: [powerplay] Attempt to disable SMC fan control feature failed!\00", [55 x i8] zeroinitializer }, align 32
@vega10_enable_mgpu_fan_boost._entry_ptr.14 = internal global ptr @vega10_enable_mgpu_fan_boost._entry.12, section ".printk_index", align 4
@vega10_enable_mgpu_fan_boost._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016amdgpu: [powerplay] Attempt to enable SMC fan control feature failed!\00", [56 x i8] zeroinitializer }, align 32
@vega10_enable_mgpu_fan_boost._entry_ptr.17 = internal global ptr @vega10_enable_mgpu_fan_boost._entry.15, section ".printk_index", align 4
@vega10_enable_fan_control_feature._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_enable_fan_control_feature = private unnamed_addr constant [34 x i8] c"vega10_enable_fan_control_feature\00", align 1
@vega10_enable_fan_control_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_enable_fan_control_feature, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_enable_fan_control_feature._entry_ptr = internal global ptr @vega10_enable_fan_control_feature._entry, section ".printk_index", align 4
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Attempt to Enable FAN CONTROL feature Failed!\00", [50 x i8] zeroinitializer }, align 32
@vega10_disable_fan_control_feature._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_disable_fan_control_feature = private unnamed_addr constant [35 x i8] c"vega10_disable_fan_control_feature\00", align 1
@vega10_disable_fan_control_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_disable_fan_control_feature, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_fan_control_feature._entry_ptr = internal global ptr @vega10_disable_fan_control_feature._entry, section ".printk_index", align 4
@vega10_thermal_enable_alert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[Thermal_EnableAlert] FW CTF Already Enabled!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vega10_thermal_enable_alert\00", [36 x i8] zeroinitializer }, align 32
@vega10_thermal_enable_alert._entry_ptr = internal global ptr @vega10_thermal_enable_alert._entry, section ".printk_index", align 4
@vega10_thermal_enable_alert._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_thermal_enable_alert._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.20, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_thermal_enable_alert._entry_ptr.22 = internal global ptr @vega10_thermal_enable_alert._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Attempt to Enable FW CTF feature Failed!\00", [55 x i8] zeroinitializer }, align 32
@vega10_thermal_setup_fan_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016amdgpu: [powerplay] Failed to update Fan Control Table in PPTable!\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vega10_thermal_setup_fan_table\00", [33 x i8] zeroinitializer }, align 32
@vega10_thermal_setup_fan_table._entry_ptr = internal global ptr @vega10_thermal_setup_fan_table._entry, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 220, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 236, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 471, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 474, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 584, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 590, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 596, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 186, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 203, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 441, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 443, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 559, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @vega10_disable_fan_control_feature._entry, ptr @vega10_disable_fan_control_feature._entry_ptr, ptr @vega10_enable_fan_control_feature._entry, ptr @vega10_enable_fan_control_feature._entry_ptr, ptr @vega10_enable_mgpu_fan_boost._entry, ptr @vega10_enable_mgpu_fan_boost._entry.12, ptr @vega10_enable_mgpu_fan_boost._entry.15, ptr @vega10_enable_mgpu_fan_boost._entry_ptr, ptr @vega10_enable_mgpu_fan_boost._entry_ptr.14, ptr @vega10_enable_mgpu_fan_boost._entry_ptr.17, ptr @vega10_fan_ctrl_start_smc_fan_control._entry, ptr @vega10_fan_ctrl_start_smc_fan_control._entry_ptr, ptr @vega10_fan_ctrl_stop_smc_fan_control._entry, ptr @vega10_fan_ctrl_stop_smc_fan_control._entry_ptr, ptr @vega10_thermal_disable_alert._entry, ptr @vega10_thermal_disable_alert._entry.7, ptr @vega10_thermal_disable_alert._entry_ptr, ptr @vega10_thermal_disable_alert._entry_ptr.8, ptr @vega10_thermal_enable_alert._entry, ptr @vega10_thermal_enable_alert._entry.21, ptr @vega10_thermal_enable_alert._entry_ptr, ptr @vega10_thermal_enable_alert._entry_ptr.22, ptr @vega10_thermal_setup_fan_table._entry, ptr @vega10_thermal_setup_fan_table._entry_ptr, ptr @vega10_fan_ctrl_start_smc_fan_control._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vega10_fan_ctrl_stop_smc_fan_control._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vega10_thermal_disable_alert._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @vega10_enable_fan_control_feature._rs, ptr @.str.18, ptr @vega10_disable_fan_control_feature._rs, ptr @.str.19, ptr @.str.20, ptr @vega10_thermal_enable_alert._rs, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_fan_ctrl_start_smc_fan_control._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_fan_ctrl_start_smc_fan_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_fan_ctrl_stop_smc_fan_control._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_fan_ctrl_stop_smc_fan_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_thermal_disable_alert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_thermal_disable_alert._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_thermal_disable_alert._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_mgpu_fan_boost._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_mgpu_fan_boost._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_mgpu_fan_boost._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_fan_control_feature._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_fan_control_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_fan_control_feature._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_fan_control_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_thermal_enable_alert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_thermal_enable_alert._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_thermal_enable_alert._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_thermal_setup_fan_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_get_fan_speed_info(ptr nocapture noundef readonly %hwmgr, ptr nocapture noundef writeonly %fan_speed_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %supports_percent_read = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 4
  %2 = ptrtoint ptr %supports_percent_read to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %supports_percent_read, align 4
  %supports_percent_write = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 5
  %3 = ptrtoint ptr %supports_percent_write to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %supports_percent_write, align 1
  %4 = ptrtoint ptr %fan_speed_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fan_speed_info, align 4
  %max_percent = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 1
  %5 = ptrtoint ptr %max_percent to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100, ptr %max_percent, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %ucTachometerPulsesPerRevolution = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 1
  %8 = ptrtoint ptr %ucTachometerPulsesPerRevolution to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ucTachometerPulsesPerRevolution, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %supports_rpm_read = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 6
  %10 = ptrtoint ptr %supports_rpm_read to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %supports_rpm_read, align 2
  %supports_rpm_write = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 7
  %11 = ptrtoint ptr %supports_rpm_write to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %supports_rpm_write, align 1
  %ulMinRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 2
  %12 = ptrtoint ptr %ulMinRPM to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ulMinRPM, align 4
  %min_rpm = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 2
  %14 = ptrtoint ptr %min_rpm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %min_rpm, align 4
  %ulMaxRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 3
  %15 = ptrtoint ptr %ulMaxRPM to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ulMaxRPM, align 4
  br label %return.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %min_rpm9 = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 2
  %17 = ptrtoint ptr %min_rpm9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %min_rpm9, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else, %if.then4
  %.sink = phi i32 [ %16, %if.then4 ], [ 0, %if.else ]
  %max_rpm = getelementptr inbounds %struct.phm_fan_speed_info, ptr %fan_speed_info, i32 0, i32 3
  %18 = ptrtoint ptr %max_rpm to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %max_rpm, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_get_fan_speed_pwm(ptr noundef %hwmgr, ptr nocapture noundef writeonly %speed) local_unnamed_addr #1 align 64 {
entry:
  %current_rpm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_rpm) #6
  %0 = ptrtoint ptr %current_rpm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %current_rpm, align 4, !annotation !74
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %1 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 70, ptr noundef nonnull %current_rpm) #6
  %usMaxFanRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 21
  %3 = ptrtoint ptr %usMaxFanRPM to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %usMaxFanRPM, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %if.end.if.end11.thread_crit_edge, label %if.end11

if.end.if.end11.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

if.end11:                                         ; preds = %if.end
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %current_rpm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_rpm, align 4
  %mul = mul i32 %6, 255
  %div = udiv i32 %mul, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div)
  %cmp12 = icmp ult i32 %div, 255
  br i1 %cmp12, label %if.end11.if.end11.thread_crit_edge, label %if.end11._crit_edge

if.end11._crit_edge:                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %7

if.end11.if.end11.thread_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end11.if.end11.thread_crit_edge, %if.end.if.end11.thread_crit_edge
  %percent.021 = phi i32 [ %div, %if.end11.if.end11.thread_crit_edge ], [ 0, %if.end.if.end11.thread_crit_edge ]
  br label %7

7:                                                ; preds = %if.end11.thread, %if.end11._crit_edge
  %8 = phi i32 [ %percent.021, %if.end11.thread ], [ 255, %if.end11._crit_edge ]
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %7, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_rpm) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_get_fan_speed_rpm(ptr noundef %hwmgr, ptr noundef %speed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %2 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %4 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backend, align 4
  %arrayidx = getelementptr %struct.vega10_hwmgr, ptr %5, i32 0, i32 48, i32 25
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 70, ptr noundef %speed) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else.cond.false_crit_edge, label %land.lhs.true

if.else.cond.false_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx15, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add = add i32 %17, 102
  %call18 = tail call i32 %13(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add23 = add i32 %21, 102
  %call24 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add23, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call18, %cond.true ], [ %call24, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp = icmp eq i32 %cond, 0
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end27

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwmgr, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic_funcs, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_xclk, align 4
  %call30 = tail call i32 %27(ptr noundef %23) #6
  %mul31 = mul i32 %call30, 600000
  %div = udiv i32 %mul31, %cond
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %cond.end.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %cond.end.cleanup_crit_edge ], [ 0, %if.end27 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_set_static_mode(ptr nocapture noundef %hwmgr, i32 noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %fan_ctrl_is_in_default_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %2 = ptrtoint ptr %fan_ctrl_is_in_default_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_ctrl_is_in_default_mode, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_rreg, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true4.cond.false_crit_edge, label %cond.true

land.lhs.true4.cond.false_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 100
  %call = tail call i32 %9(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true4.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add19 = add i32 %17, 100
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add19, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call20, %cond.false ]
  %and21 = lshr i32 %cond, 11
  %shr = and i32 %and21, 7
  %fan_ctrl_default_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %18 = ptrtoint ptr %fan_ctrl_default_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %fan_ctrl_default_mode, align 4
  %19 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %virt, align 8
  %and24 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cond.end.cond.false48_crit_edge, label %land.lhs.true26

cond.end.cond.false48_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48

land.lhs.true26:                                  ; preds = %cond.end
  %funcs29 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %21 = ptrtoint ptr %funcs29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs29, align 4
  %tobool30.not = icmp eq ptr %22, null
  br i1 %tobool30.not, label %land.lhs.true26.cond.false48_crit_edge, label %land.lhs.true31

land.lhs.true26.cond.false48_crit_edge:           ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %sriov_rreg35 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %sriov_rreg35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sriov_rreg35, align 4
  %tobool36.not = icmp eq ptr %24, null
  br i1 %tobool36.not, label %land.lhs.true31.cond.false48_crit_edge, label %cond.true37

land.lhs.true31.cond.false48_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48

cond.true37:                                      ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx43 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %25 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx43, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add46 = add i32 %28, 100
  %call47 = tail call i32 %24(ptr noundef %1, i32 noundef %add46, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end55

cond.false48:                                     ; preds = %land.lhs.true31.cond.false48_crit_edge, %land.lhs.true26.cond.false48_crit_edge, %cond.end.cond.false48_crit_edge
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx50, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add53 = add i32 %32, 100
  %call54 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add53, i32 noundef 0) #6
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false48, %cond.true37
  %cond56 = phi i32 [ %call47, %cond.true37 ], [ %call54, %cond.false48 ]
  %and57 = and i32 %cond56, 255
  %tmin = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %33 = ptrtoint ptr %tmin to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and57, ptr %tmin, align 4
  %34 = ptrtoint ptr %fan_ctrl_is_in_default_mode to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %fan_ctrl_is_in_default_mode, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end55, %entry.if.end_crit_edge
  %virt60 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %35 = ptrtoint ptr %virt60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %virt60, align 8
  %and62 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end.cond.false152.sink.split_crit_edge, label %land.lhs.true64

if.end.cond.false152.sink.split_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false152.sink.split

land.lhs.true64:                                  ; preds = %if.end
  %funcs67 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %37 = ptrtoint ptr %funcs67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %funcs67, align 4
  %tobool68.not = icmp eq ptr %38, null
  br i1 %tobool68.not, label %land.lhs.true64.cond.false152.sink.split_crit_edge, label %land.lhs.true69

land.lhs.true64.cond.false152.sink.split_crit_edge: ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false152.sink.split

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sriov_wreg, align 4
  %tobool73.not = icmp eq ptr %40, null
  br i1 %tobool73.not, label %land.lhs.true130, label %cond.true74

cond.true74:                                      ; preds = %land.lhs.true69
  %arrayidx80 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %41 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx80, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add83 = add i32 %44, 100
  %sriov_rreg97 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %38, i32 0, i32 13
  %45 = ptrtoint ptr %sriov_rreg97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sriov_rreg97, align 4
  %tobool98.not = icmp eq ptr %46, null
  br i1 %tobool98.not, label %cond.false110, label %cond.true99

cond.true99:                                      ; preds = %cond.true74
  call void @__sanitizer_cov_trace_pc() #8
  %call109 = tail call i32 %46(ptr noundef %1, i32 noundef %add83, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end117

cond.false110:                                    ; preds = %cond.true74
  call void @__sanitizer_cov_trace_pc() #8
  %call116 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add83, i32 noundef 0) #6
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false110, %cond.true99
  %cond118 = phi i32 [ %call109, %cond.true99 ], [ %call116, %cond.false110 ]
  %and119 = and i32 %cond118, -256
  tail call void %40(ptr noundef %1, i32 noundef %add83, i32 noundef %and119, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end163

land.lhs.true130:                                 ; preds = %land.lhs.true69
  %47 = ptrtoint ptr %funcs67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr = load ptr, ptr %funcs67, align 4
  %arrayidx122354 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %48 = ptrtoint ptr %arrayidx122354 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx122354, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add125355 = add i32 %51, 100
  %tobool134.not = icmp eq ptr %.pr, null
  br i1 %tobool134.not, label %land.lhs.true130.cond.false152_crit_edge, label %land.lhs.true135

land.lhs.true130.cond.false152_crit_edge:         ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false152

land.lhs.true135:                                 ; preds = %land.lhs.true130
  %sriov_rreg139 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %52 = ptrtoint ptr %sriov_rreg139 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sriov_rreg139, align 4
  %tobool140.not = icmp eq ptr %53, null
  br i1 %tobool140.not, label %land.lhs.true135.cond.false152_crit_edge, label %cond.true141

land.lhs.true135.cond.false152_crit_edge:         ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false152

cond.true141:                                     ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #8
  %call151 = tail call i32 %53(ptr noundef %1, i32 noundef %add125355, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end159

cond.false152.sink.split:                         ; preds = %land.lhs.true64.cond.false152.sink.split_crit_edge, %if.end.cond.false152.sink.split_crit_edge
  %arrayidx122354364 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %54 = ptrtoint ptr %arrayidx122354364 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx122354364, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add125355365 = add i32 %57, 100
  br label %cond.false152

cond.false152:                                    ; preds = %cond.false152.sink.split, %land.lhs.true135.cond.false152_crit_edge, %land.lhs.true130.cond.false152_crit_edge
  %add125358 = phi i32 [ %add125355, %land.lhs.true135.cond.false152_crit_edge ], [ %add125355, %land.lhs.true130.cond.false152_crit_edge ], [ %add125355365, %cond.false152.sink.split ]
  %call158 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add125358, i32 noundef 0) #6
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false152, %cond.true141
  %add125356 = phi i32 [ %add125355, %cond.true141 ], [ %add125358, %cond.false152 ]
  %cond160 = phi i32 [ %call151, %cond.true141 ], [ %call158, %cond.false152 ]
  %and161 = and i32 %cond160, -256
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add125356, i32 noundef %and161, i32 noundef 0) #6
  br label %cond.end163

cond.end163:                                      ; preds = %cond.end159, %cond.end117
  %58 = ptrtoint ptr %virt60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %virt60, align 8
  %and166 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %cond.end163.cond.false259.sink.split_crit_edge, label %land.lhs.true168

cond.end163.cond.false259.sink.split_crit_edge:   ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false259.sink.split

land.lhs.true168:                                 ; preds = %cond.end163
  %funcs171 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %60 = ptrtoint ptr %funcs171 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %funcs171, align 4
  %tobool172.not = icmp eq ptr %61, null
  br i1 %tobool172.not, label %land.lhs.true168.cond.false259.sink.split_crit_edge, label %land.lhs.true173

land.lhs.true168.cond.false259.sink.split_crit_edge: ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false259.sink.split

land.lhs.true173:                                 ; preds = %land.lhs.true168
  %sriov_wreg177 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %sriov_wreg177 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sriov_wreg177, align 4
  %tobool178.not = icmp eq ptr %63, null
  br i1 %tobool178.not, label %land.lhs.true237, label %cond.true179

cond.true179:                                     ; preds = %land.lhs.true173
  %arrayidx185 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %64 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx185, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add188 = add i32 %67, 100
  %sriov_rreg202 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %61, i32 0, i32 13
  %68 = ptrtoint ptr %sriov_rreg202 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sriov_rreg202, align 4
  %tobool203.not = icmp eq ptr %69, null
  br i1 %tobool203.not, label %cond.false215, label %cond.true204

cond.true204:                                     ; preds = %cond.true179
  call void @__sanitizer_cov_trace_pc() #8
  %call214 = tail call i32 %69(ptr noundef %1, i32 noundef %add188, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end222

cond.false215:                                    ; preds = %cond.true179
  call void @__sanitizer_cov_trace_pc() #8
  %call221 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add188, i32 noundef 0) #6
  br label %cond.end222

cond.end222:                                      ; preds = %cond.false215, %cond.true204
  %cond223 = phi i32 [ %call214, %cond.true204 ], [ %call221, %cond.false215 ]
  %and224 = and i32 %cond223, -14337
  %shl = shl i32 %mode, 11
  %and225 = and i32 %shl, 14336
  %or226 = or i32 %and224, %and225
  tail call void %63(ptr noundef %1, i32 noundef %add188, i32 noundef %or226, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end272

land.lhs.true237:                                 ; preds = %land.lhs.true173
  %70 = ptrtoint ptr %funcs171 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr367 = load ptr, ptr %funcs171, align 4
  %arrayidx229359 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %71 = ptrtoint ptr %arrayidx229359 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx229359, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %add232360 = add i32 %74, 100
  %tobool241.not = icmp eq ptr %.pr367, null
  br i1 %tobool241.not, label %land.lhs.true237.cond.false259_crit_edge, label %land.lhs.true242

land.lhs.true237.cond.false259_crit_edge:         ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false259

land.lhs.true242:                                 ; preds = %land.lhs.true237
  %sriov_rreg246 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr367, i32 0, i32 13
  %75 = ptrtoint ptr %sriov_rreg246 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sriov_rreg246, align 4
  %tobool247.not = icmp eq ptr %76, null
  br i1 %tobool247.not, label %land.lhs.true242.cond.false259_crit_edge, label %cond.true248

land.lhs.true242.cond.false259_crit_edge:         ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false259

cond.true248:                                     ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #8
  %call258 = tail call i32 %76(ptr noundef %1, i32 noundef %add232360, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end266

cond.false259.sink.split:                         ; preds = %land.lhs.true168.cond.false259.sink.split_crit_edge, %cond.end163.cond.false259.sink.split_crit_edge
  %arrayidx229359368 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %77 = ptrtoint ptr %arrayidx229359368 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx229359368, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %add232360369 = add i32 %80, 100
  br label %cond.false259

cond.false259:                                    ; preds = %cond.false259.sink.split, %land.lhs.true242.cond.false259_crit_edge, %land.lhs.true237.cond.false259_crit_edge
  %add232363 = phi i32 [ %add232360, %land.lhs.true242.cond.false259_crit_edge ], [ %add232360, %land.lhs.true237.cond.false259_crit_edge ], [ %add232360369, %cond.false259.sink.split ]
  %call265 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add232363, i32 noundef 0) #6
  br label %cond.end266

cond.end266:                                      ; preds = %cond.false259, %cond.true248
  %add232361 = phi i32 [ %add232360, %cond.true248 ], [ %add232363, %cond.false259 ]
  %cond267 = phi i32 [ %call258, %cond.true248 ], [ %call265, %cond.false259 ]
  %and268 = and i32 %cond267, -14337
  %shl269 = shl i32 %mode, 11
  %and270 = and i32 %shl269, 14336
  %or271 = or i32 %and268, %and270
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add232361, i32 noundef %or271, i32 noundef 0) #6
  br label %cond.end272

cond.end272:                                      ; preds = %cond.end266, %cond.end222
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_set_default_mode(ptr nocapture noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %fan_ctrl_is_in_default_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 35
  %2 = ptrtoint ptr %fan_ctrl_is_in_default_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_ctrl_is_in_default_mode, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.cond.false79.sink.split_crit_edge, label %land.lhs.true

if.then.cond.false79.sink.split_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79.sink.split

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false79.sink.split_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false79.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79.sink.split

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_wreg, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true57, label %cond.true

cond.true:                                        ; preds = %land.lhs.true4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 100
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %14 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_rreg, align 4
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %cond.false, label %cond.true29

cond.true29:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %15(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true29
  %cond = phi i32 [ %call, %cond.true29 ], [ %call44, %cond.false ]
  %and45 = and i32 %cond, -14337
  %fan_ctrl_default_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %16 = ptrtoint ptr %fan_ctrl_default_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fan_ctrl_default_mode, align 4
  %shl = shl i32 %17, 11
  %and46 = and i32 %shl, 14336
  %or = or i32 %and46, %and45
  tail call void %9(ptr noundef %1, i32 noundef %add, i32 noundef %or, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end93

land.lhs.true57:                                  ; preds = %land.lhs.true4
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx49270 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %19 = ptrtoint ptr %arrayidx49270 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx49270, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add52271 = add i32 %22, 100
  %tobool61.not = icmp eq ptr %.pr, null
  br i1 %tobool61.not, label %land.lhs.true57.cond.false79_crit_edge, label %land.lhs.true62

land.lhs.true57.cond.false79_crit_edge:           ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79

land.lhs.true62:                                  ; preds = %land.lhs.true57
  %sriov_rreg66 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %23 = ptrtoint ptr %sriov_rreg66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sriov_rreg66, align 4
  %tobool67.not = icmp eq ptr %24, null
  br i1 %tobool67.not, label %land.lhs.true62.cond.false79_crit_edge, label %cond.true68

land.lhs.true62.cond.false79_crit_edge:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79

cond.true68:                                      ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = tail call i32 %24(ptr noundef %1, i32 noundef %add52271, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end86

cond.false79.sink.split:                          ; preds = %land.lhs.true.cond.false79.sink.split_crit_edge, %if.then.cond.false79.sink.split_crit_edge
  %arrayidx49270280 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %25 = ptrtoint ptr %arrayidx49270280 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx49270280, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add52271281 = add i32 %28, 100
  br label %cond.false79

cond.false79:                                     ; preds = %cond.false79.sink.split, %land.lhs.true62.cond.false79_crit_edge, %land.lhs.true57.cond.false79_crit_edge
  %add52274 = phi i32 [ %add52271, %land.lhs.true62.cond.false79_crit_edge ], [ %add52271, %land.lhs.true57.cond.false79_crit_edge ], [ %add52271281, %cond.false79.sink.split ]
  %call85 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add52274, i32 noundef 0) #6
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false79, %cond.true68
  %add52272 = phi i32 [ %add52271, %cond.true68 ], [ %add52274, %cond.false79 ]
  %cond87 = phi i32 [ %call78, %cond.true68 ], [ %call85, %cond.false79 ]
  %and88 = and i32 %cond87, -14337
  %fan_ctrl_default_mode89 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 36
  %29 = ptrtoint ptr %fan_ctrl_default_mode89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fan_ctrl_default_mode89, align 4
  %shl90 = shl i32 %30, 11
  %and91 = and i32 %shl90, 14336
  %or92 = or i32 %and91, %and88
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add52272, i32 noundef %or92, i32 noundef 0) #6
  br label %cond.end93

cond.end93:                                       ; preds = %cond.end86, %cond.end
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %virt, align 8
  %and96 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %cond.end93.cond.false191.sink.split_crit_edge, label %land.lhs.true98

cond.end93.cond.false191.sink.split_crit_edge:    ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.sink.split

land.lhs.true98:                                  ; preds = %cond.end93
  %funcs101 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs101 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs101, align 4
  %tobool102.not = icmp eq ptr %34, null
  br i1 %tobool102.not, label %land.lhs.true98.cond.false191.sink.split_crit_edge, label %land.lhs.true103

land.lhs.true98.cond.false191.sink.split_crit_edge: ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.sink.split

land.lhs.true103:                                 ; preds = %land.lhs.true98
  %sriov_wreg107 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %sriov_wreg107 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_wreg107, align 4
  %tobool108.not = icmp eq ptr %36, null
  br i1 %tobool108.not, label %land.lhs.true169, label %cond.true109

cond.true109:                                     ; preds = %land.lhs.true103
  %arrayidx115 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %37 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx115, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add118 = add i32 %40, 100
  %sriov_rreg132 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 13
  %41 = ptrtoint ptr %sriov_rreg132 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sriov_rreg132, align 4
  %tobool133.not = icmp eq ptr %42, null
  br i1 %tobool133.not, label %cond.false145, label %cond.true134

cond.true134:                                     ; preds = %cond.true109
  call void @__sanitizer_cov_trace_pc() #8
  %call144 = tail call i32 %42(ptr noundef %1, i32 noundef %add118, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end152

cond.false145:                                    ; preds = %cond.true109
  call void @__sanitizer_cov_trace_pc() #8
  %call151 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add118, i32 noundef 0) #6
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false145, %cond.true134
  %cond153 = phi i32 [ %call144, %cond.true134 ], [ %call151, %cond.false145 ]
  %and154 = and i32 %cond153, -256
  %tmin = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %43 = ptrtoint ptr %tmin to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tmin, align 4
  %and157 = and i32 %44, 255
  %or158 = or i32 %and157, %and154
  tail call void %36(ptr noundef %1, i32 noundef %add118, i32 noundef %or158, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end206

land.lhs.true169:                                 ; preds = %land.lhs.true103
  %45 = ptrtoint ptr %funcs101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr283 = load ptr, ptr %funcs101, align 4
  %arrayidx161275 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %46 = ptrtoint ptr %arrayidx161275 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx161275, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add164276 = add i32 %49, 100
  %tobool173.not = icmp eq ptr %.pr283, null
  br i1 %tobool173.not, label %land.lhs.true169.cond.false191_crit_edge, label %land.lhs.true174

land.lhs.true169.cond.false191_crit_edge:         ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191

land.lhs.true174:                                 ; preds = %land.lhs.true169
  %sriov_rreg178 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr283, i32 0, i32 13
  %50 = ptrtoint ptr %sriov_rreg178 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sriov_rreg178, align 4
  %tobool179.not = icmp eq ptr %51, null
  br i1 %tobool179.not, label %land.lhs.true174.cond.false191_crit_edge, label %cond.true180

land.lhs.true174.cond.false191_crit_edge:         ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191

cond.true180:                                     ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #8
  %call190 = tail call i32 %51(ptr noundef %1, i32 noundef %add164276, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end198

cond.false191.sink.split:                         ; preds = %land.lhs.true98.cond.false191.sink.split_crit_edge, %cond.end93.cond.false191.sink.split_crit_edge
  %arrayidx161275284 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %52 = ptrtoint ptr %arrayidx161275284 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx161275284, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add164276285 = add i32 %55, 100
  br label %cond.false191

cond.false191:                                    ; preds = %cond.false191.sink.split, %land.lhs.true174.cond.false191_crit_edge, %land.lhs.true169.cond.false191_crit_edge
  %add164279 = phi i32 [ %add164276, %land.lhs.true174.cond.false191_crit_edge ], [ %add164276, %land.lhs.true169.cond.false191_crit_edge ], [ %add164276285, %cond.false191.sink.split ]
  %call197 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add164279, i32 noundef 0) #6
  br label %cond.end198

cond.end198:                                      ; preds = %cond.false191, %cond.true180
  %add164277 = phi i32 [ %add164276, %cond.true180 ], [ %add164279, %cond.false191 ]
  %cond199 = phi i32 [ %call190, %cond.true180 ], [ %call197, %cond.false191 ]
  %and200 = and i32 %cond199, -256
  %tmin201 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 38
  %56 = ptrtoint ptr %tmin201 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tmin201, align 4
  %and204 = and i32 %57, 255
  %or205 = or i32 %and204, %and200
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add164277, i32 noundef %or205, i32 noundef 0) #6
  br label %cond.end206

cond.end206:                                      ; preds = %cond.end198, %cond.end152
  %58 = ptrtoint ptr %fan_ctrl_is_in_default_mode to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %fan_ctrl_is_in_default_mode, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end206, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_start_smc_fan_control(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend.i, align 4
  %arrayidx.i = getelementptr %struct.vega10_hwmgr, ptr %3, i32 0, i32 48, i32 25
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %do.body.return_crit_edge, label %do.body.i

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body.i:                                        ; preds = %do.body
  %smu_feature_bitmap.i = getelementptr %struct.vega10_hwmgr, ptr %3, i32 0, i32 48, i32 25, i32 3
  %6 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smu_feature_bitmap.i, align 4
  %call.i = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext true, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %do.end12.i, label %if.then4.i

if.then4.i:                                       ; preds = %do.body.i
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_enable_fan_control_feature._rs, ptr noundef nonnull @__func__.vega10_enable_fan_control_feature) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.if.then2_crit_edge, label %do.end.i

if.then4.i.if.then2_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18) #9
  br label %if.then2

do.end12.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %enabled.i = getelementptr %struct.vega10_hwmgr, ptr %3, i32 0, i32 48, i32 25, i32 1
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %enabled.i, align 1
  br label %return

if.then2:                                         ; preds = %do.end.i, %if.then4.i.if.then2_crit_edge
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_fan_ctrl_start_smc_fan_control._rs, ptr noundef nonnull @__func__.vega10_fan_ctrl_start_smc_fan_control) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.return_crit_edge, label %do.end

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  br label %return

return:                                           ; preds = %do.end, %if.then2.return_crit_edge, %do.end12.i, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ -1, %do.end ], [ -1, %if.then2.return_crit_edge ], [ 0, %do.end12.i ], [ 0, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_stop_smc_fan_control(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %arrayidx = getelementptr %struct.vega10_hwmgr, ptr %3, i32 0, i32 48, i32 25
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  %smu_feature_bitmap.i = getelementptr %struct.vega10_hwmgr, ptr %3, i32 0, i32 48, i32 25, i32 3
  %6 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smu_feature_bitmap.i, align 4
  %call.i = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %vega10_disable_fan_control_feature.exit, label %if.then4.i

if.then4.i:                                       ; preds = %do.body.i
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_disable_fan_control_feature._rs, ptr noundef nonnull @__func__.vega10_disable_fan_control_feature) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.if.then4_crit_edge, label %do.end.i

if.then4.i.if.then4_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18) #9
  br label %if.then4

vega10_disable_fan_control_feature.exit:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %enabled.i = getelementptr %struct.vega10_hwmgr, ptr %3, i32 0, i32 48, i32 25, i32 1
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled.i, align 1
  br label %cleanup

if.then4:                                         ; preds = %do.end.i, %if.then4.i.if.then4_crit_edge
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_fan_ctrl_stop_smc_fan_control._rs, ptr noundef nonnull @__func__.vega10_fan_ctrl_stop_smc_fan_control) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then4.cleanup_crit_edge, %vega10_disable_fan_control_feature.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %do.end ], [ -1, %if.then4.cleanup_crit_edge ], [ 0, %vega10_disable_fan_control_feature.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_set_fan_speed_pwm(ptr noundef %hwmgr, i32 noundef %speed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %2 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.umin.i32(i32 %speed, i32 255)
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @vega10_fan_ctrl_stop_smc_fan_control(ptr noundef %hwmgr)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.cond.false20_crit_edge, label %land.lhs.true

if.end4.cond.false20_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false20

land.lhs.true:                                    ; preds = %if.end4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false20_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false20_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false20

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sriov_rreg, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false20_crit_edge, label %cond.true12

land.lhs.true7.cond.false20_crit_edge:            ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false20

cond.true12:                                      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add = add i32 %16, 99
  %call19 = tail call i32 %12(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end27

cond.false20:                                     ; preds = %land.lhs.true7.cond.false20_crit_edge, %land.lhs.true.cond.false20_crit_edge, %if.end4.cond.false20_crit_edge
  %arrayidx22 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx22, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add25 = add i32 %20, 99
  %call26 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add25, i32 noundef 0) #6
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false20, %cond.true12
  %cond28 = phi i32 [ %call19, %cond.true12 ], [ %call26, %cond.false20 ]
  %and29 = and i32 %cond28, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %cond.end27.cleanup_crit_edge, label %if.end32

cond.end27.cleanup_crit_edge:                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %cond.end27
  %narrow = mul nuw nsw i32 %and29, %4
  %mul = zext i32 %narrow to i64
  %21 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul, i64 72340172838076673) #10, !srcloc !75
  %22 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %mul, i64 %21) #10, !srcloc !76
  %conv229 = trunc i64 %22 to i32
  %23 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %virt, align 8
  %and232 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %if.end32.cond.false325.sink.split_crit_edge, label %land.lhs.true234

if.end32.cond.false325.sink.split_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false325.sink.split

land.lhs.true234:                                 ; preds = %if.end32
  %funcs237 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %25 = ptrtoint ptr %funcs237 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs237, align 4
  %tobool238.not = icmp eq ptr %26, null
  br i1 %tobool238.not, label %land.lhs.true234.cond.false325.sink.split_crit_edge, label %land.lhs.true239

land.lhs.true234.cond.false325.sink.split_crit_edge: ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false325.sink.split

land.lhs.true239:                                 ; preds = %land.lhs.true234
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sriov_wreg, align 4
  %tobool243.not = icmp eq ptr %28, null
  br i1 %tobool243.not, label %land.lhs.true303, label %cond.true244

cond.true244:                                     ; preds = %land.lhs.true239
  %arrayidx250 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %29 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx250, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add253 = add i32 %32, 98
  %sriov_rreg267 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 13
  %33 = ptrtoint ptr %sriov_rreg267 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sriov_rreg267, align 4
  %tobool268.not = icmp eq ptr %34, null
  br i1 %tobool268.not, label %cond.false280, label %cond.true269

cond.true269:                                     ; preds = %cond.true244
  call void @__sanitizer_cov_trace_pc() #8
  %call279 = tail call i32 %34(ptr noundef %1, i32 noundef %add253, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end287

cond.false280:                                    ; preds = %cond.true244
  call void @__sanitizer_cov_trace_pc() #8
  %call286 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add253, i32 noundef 0) #6
  br label %cond.end287

cond.end287:                                      ; preds = %cond.false280, %cond.true269
  %cond288 = phi i32 [ %call279, %cond.true269 ], [ %call286, %cond.false280 ]
  %and289 = and i32 %cond288, -256
  %and291 = and i32 %conv229, 255
  %or292 = or i32 %and289, %and291
  tail call void %28(ptr noundef %1, i32 noundef %add253, i32 noundef %or292, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end338

land.lhs.true303:                                 ; preds = %land.lhs.true239
  %35 = ptrtoint ptr %funcs237 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load ptr, ptr %funcs237, align 4
  %arrayidx295467 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %36 = ptrtoint ptr %arrayidx295467 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx295467, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add298468 = add i32 %39, 98
  %tobool307.not = icmp eq ptr %.pr, null
  br i1 %tobool307.not, label %land.lhs.true303.cond.false325_crit_edge, label %land.lhs.true308

land.lhs.true303.cond.false325_crit_edge:         ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false325

land.lhs.true308:                                 ; preds = %land.lhs.true303
  %sriov_rreg312 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %40 = ptrtoint ptr %sriov_rreg312 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_rreg312, align 4
  %tobool313.not = icmp eq ptr %41, null
  br i1 %tobool313.not, label %land.lhs.true308.cond.false325_crit_edge, label %cond.true314

land.lhs.true308.cond.false325_crit_edge:         ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false325

cond.true314:                                     ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #8
  %call324 = tail call i32 %41(ptr noundef %1, i32 noundef %add298468, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end332

cond.false325.sink.split:                         ; preds = %land.lhs.true234.cond.false325.sink.split_crit_edge, %if.end32.cond.false325.sink.split_crit_edge
  %arrayidx295467472 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %42 = ptrtoint ptr %arrayidx295467472 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx295467472, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add298468473 = add i32 %45, 98
  br label %cond.false325

cond.false325:                                    ; preds = %cond.false325.sink.split, %land.lhs.true308.cond.false325_crit_edge, %land.lhs.true303.cond.false325_crit_edge
  %add298471 = phi i32 [ %add298468, %land.lhs.true308.cond.false325_crit_edge ], [ %add298468, %land.lhs.true303.cond.false325_crit_edge ], [ %add298468473, %cond.false325.sink.split ]
  %call331 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add298471, i32 noundef 0) #6
  br label %cond.end332

cond.end332:                                      ; preds = %cond.false325, %cond.true314
  %add298469 = phi i32 [ %add298468, %cond.true314 ], [ %add298471, %cond.false325 ]
  %cond333 = phi i32 [ %call324, %cond.true314 ], [ %call331, %cond.false325 ]
  %and334 = and i32 %cond333, -256
  %and336 = and i32 %conv229, 255
  %or337 = or i32 %and334, %and336
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add298469, i32 noundef %or337, i32 noundef 0) #6
  br label %cond.end338

cond.end338:                                      ; preds = %cond.end332, %cond.end287
  %call339 = tail call i32 @vega10_fan_ctrl_set_static_mode(ptr noundef %hwmgr, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %cond.end338, %cond.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end338 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %cond.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_reset_fan_speed_to_default(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @vega10_fan_ctrl_start_smc_fan_control(ptr noundef %hwmgr)
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @vega10_fan_ctrl_set_default_mode(ptr noundef %hwmgr)
  br label %return

return:                                           ; preds = %if.else, %if.then1, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ 0, %if.else ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_fan_ctrl_set_fan_speed_rpm(ptr noundef %hwmgr, i32 noundef %speed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %2 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %cmp = icmp eq i32 %speed, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %ulMinRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 2
  %4 = ptrtoint ptr %ulMinRPM to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ulMinRPM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %speed)
  %cmp5 = icmp ugt i32 %5, %speed
  br i1 %cmp5, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false2
  %ulMaxRPM = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 3
  %6 = ptrtoint ptr %ulMaxRPM to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ulMaxRPM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %speed)
  %cmp9 = icmp ult i32 %7, %speed
  br i1 %cmp9, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.if.then14_crit_edge, label %if.then10

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @vega10_fan_ctrl_stop_smc_fan_control(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %phi.cmp = icmp eq i32 %call11, 0
  br i1 %phi.cmp, label %if.then10.if.then14_crit_edge, label %if.then10.if.end112_crit_edge

if.then10.if.end112_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then10.if.then14_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %if.then10.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %10 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwmgr, align 4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_xclk, align 4
  %call17 = tail call i32 %15(ptr noundef %11) #6
  %mul18 = mul i32 %call17, 600000
  %mul19 = shl i32 %speed, 3
  %div = udiv i32 %mul18, %mul19
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.then14.cond.false98.sink.split_crit_edge, label %land.lhs.true

if.then14.cond.false98.sink.split_crit_edge:      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false98.sink.split

land.lhs.true:                                    ; preds = %if.then14
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %land.lhs.true.cond.false98.sink.split_crit_edge, label %land.lhs.true22

land.lhs.true.cond.false98.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false98.sink.split

land.lhs.true22:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg, align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %land.lhs.true76, label %cond.true

cond.true:                                        ; preds = %land.lhs.true22
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add = add i32 %25, 101
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %26 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sriov_rreg, align 4
  %tobool46.not = icmp eq ptr %27, null
  br i1 %tobool46.not, label %cond.false, label %cond.true47

cond.true47:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = tail call i32 %27(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true47
  %cond = phi i32 [ %call57, %cond.true47 ], [ %call63, %cond.false ]
  %and64 = and i32 %cond, 7
  %shl = shl i32 %div, 3
  %or = or i32 %and64, %shl
  tail call void %21(ptr noundef %1, i32 noundef %add, i32 noundef %or, i32 noundef 0, i32 noundef 25) #6
  br label %if.end112

land.lhs.true76:                                  ; preds = %land.lhs.true22
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx68156 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %29 = ptrtoint ptr %arrayidx68156 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx68156, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add71157 = add i32 %32, 101
  %tobool80.not = icmp eq ptr %.pr, null
  br i1 %tobool80.not, label %land.lhs.true76.cond.false98_crit_edge, label %land.lhs.true81

land.lhs.true76.cond.false98_crit_edge:           ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false98

land.lhs.true81:                                  ; preds = %land.lhs.true76
  %sriov_rreg85 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %33 = ptrtoint ptr %sriov_rreg85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sriov_rreg85, align 4
  %tobool86.not = icmp eq ptr %34, null
  br i1 %tobool86.not, label %land.lhs.true81.cond.false98_crit_edge, label %cond.true87

land.lhs.true81.cond.false98_crit_edge:           ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false98

cond.true87:                                      ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  %call97 = tail call i32 %34(ptr noundef %1, i32 noundef %add71157, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end105

cond.false98.sink.split:                          ; preds = %land.lhs.true.cond.false98.sink.split_crit_edge, %if.then14.cond.false98.sink.split_crit_edge
  %arrayidx68156161 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %35 = ptrtoint ptr %arrayidx68156161 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx68156161, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add71157162 = add i32 %38, 101
  br label %cond.false98

cond.false98:                                     ; preds = %cond.false98.sink.split, %land.lhs.true81.cond.false98_crit_edge, %land.lhs.true76.cond.false98_crit_edge
  %add71160 = phi i32 [ %add71157, %land.lhs.true81.cond.false98_crit_edge ], [ %add71157, %land.lhs.true76.cond.false98_crit_edge ], [ %add71157162, %cond.false98.sink.split ]
  %call104 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add71160, i32 noundef 0) #6
  br label %cond.end105

cond.end105:                                      ; preds = %cond.false98, %cond.true87
  %add71158 = phi i32 [ %add71157, %cond.true87 ], [ %add71160, %cond.false98 ]
  %cond106 = phi i32 [ %call97, %cond.true87 ], [ %call104, %cond.false98 ]
  %and107 = and i32 %cond106, 7
  %shl108 = shl i32 %div, 3
  %or110 = or i32 %and107, %shl108
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add71158, i32 noundef %or110, i32 noundef 0) #6
  br label %if.end112

if.end112:                                        ; preds = %cond.end105, %cond.end, %if.then10.if.end112_crit_edge
  %call113 = tail call i32 @vega10_fan_ctrl_set_static_mode(ptr noundef %hwmgr, i32 noundef 5)
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end112 ], [ -1, %lor.lhs.false6.cleanup_crit_edge ], [ -1, %lor.lhs.false2.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_thermal_get_temperature(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 90
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 90
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %and20 = lshr i32 %cond, 9
  %16 = and i32 %and20, 511
  %mul = mul nuw nsw i32 %16, 1000
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_thermal_disable_alert(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %2 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backend, align 4
  %arrayidx = getelementptr %struct.vega10_hwmgr, ptr %3, i32 0, i32 48, i32 23
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then:                                          ; preds = %entry
  %enabled = getelementptr %struct.vega10_hwmgr, ptr %3, i32 0, i32 48, i32 23, i32 1
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %do.end, label %if.then.do.body6_crit_edge

if.then.do.body6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %do.body6

do.body6:                                         ; preds = %do.end, %if.then.do.body6_crit_edge
  %smu_feature_bitmap = getelementptr %struct.vega10_hwmgr, ptr %3, i32 0, i32 48, i32 23, i32 3
  %8 = ptrtoint ptr %smu_feature_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smu_feature_bitmap, align 4
  %call9 = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end23, label %if.then11

if.then11:                                        ; preds = %do.body6
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_thermal_disable_alert._rs, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #9
  br label %cleanup

do.end23:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enabled, align 1
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %entry.if.end27_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %virt, align 8
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end27.cond.false_crit_edge, label %land.lhs.true

if.end27.cond.false_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end27
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %tobool29.not = icmp eq ptr %14, null
  br i1 %tobool29.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true30

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true30:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sriov_wreg, align 4
  %tobool34.not = icmp eq ptr %16, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false_crit_edge, label %cond.true

land.lhs.true30.cond.false_crit_edge:             ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx39 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx39, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add = add i32 %20, 10
  tail call void %16(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 25) #6
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true30.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end27.cond.false_crit_edge
  %arrayidx43 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %21 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx43, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add46 = add i32 %24, 10
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add46, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %do.end17, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end17 ], [ -1, %if.then11.cleanup_crit_edge ], [ 0, %cond.false ], [ 0, %cond.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega10_enable_smc_features(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_thermal_stop_thermal_controller(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vega10_thermal_disable_alert(ptr noundef %hwmgr)
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @vega10_fan_ctrl_set_default_mode(ptr noundef %hwmgr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_enable_mgpu_fan_boost(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %pp_table = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14
  %arrayidx = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 25
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usMGpuThrottlingRPMLimit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 43
  %4 = ptrtoint ptr %usMGpuThrottlingRPMLimit to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %usMGpuThrottlingRPMLimit, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %FanThrottlingRpm = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 92
  %6 = ptrtoint ptr %FanThrottlingRpm to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %FanThrottlingRpm, align 2
  %call = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %pp_table, i16 noundef zeroext 0, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %backend, align 4
  %arrayidx.i = getelementptr %struct.vega10_hwmgr, ptr %8, i32 0, i32 48, i32 25
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end12.if.end21_crit_edge, label %do.body.i

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body.i:                                        ; preds = %if.end12
  %smu_feature_bitmap.i = getelementptr %struct.vega10_hwmgr, ptr %8, i32 0, i32 48, i32 25, i32 3
  %11 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smu_feature_bitmap.i, align 4
  %call.i = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %do.end12.i, label %if.then4.i

if.then4.i:                                       ; preds = %do.body.i
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_disable_fan_control_feature._rs, ptr noundef nonnull @__func__.vega10_disable_fan_control_feature) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.do.end18_crit_edge, label %do.end.i

if.then4.i.do.end18_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18) #9
  br label %do.end18

do.end12.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %enabled.i = getelementptr %struct.vega10_hwmgr, ptr %8, i32 0, i32 48, i32 25, i32 1
  %13 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enabled.i, align 1
  br label %if.end21

do.end18:                                         ; preds = %do.end.i, %if.then4.i.do.end18_crit_edge
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end21:                                         ; preds = %do.end12.i, %if.end12.if.end21_crit_edge
  %14 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %backend, align 4
  %arrayidx.i46 = getelementptr %struct.vega10_hwmgr, ptr %15, i32 0, i32 48, i32 25
  %16 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i46, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i47 = icmp eq i8 %17, 0
  br i1 %tobool.not.i47, label %if.end21.cleanup_crit_edge, label %do.body.i51

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i51:                                      ; preds = %if.end21
  %smu_feature_bitmap.i48 = getelementptr %struct.vega10_hwmgr, ptr %15, i32 0, i32 48, i32 25, i32 3
  %18 = ptrtoint ptr %smu_feature_bitmap.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smu_feature_bitmap.i48, align 4
  %call.i49 = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext true, i32 noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool3.not.i50 = icmp eq i32 %call.i49, 0
  br i1 %tobool3.not.i50, label %do.end12.i58, label %if.then4.i54

if.then4.i54:                                     ; preds = %do.body.i51
  %call5.i52 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_enable_fan_control_feature._rs, ptr noundef nonnull @__func__.vega10_enable_fan_control_feature) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i52)
  %tobool6.not.i53 = icmp eq i32 %call5.i52, 0
  br i1 %tobool6.not.i53, label %if.then4.i54.do.end27_crit_edge, label %do.end.i56

if.then4.i54.do.end27_crit_edge:                  ; preds = %if.then4.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end.i56:                                       ; preds = %if.then4.i54
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18) #9
  br label %do.end27

do.end12.i58:                                     ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #8
  %enabled.i57 = getelementptr %struct.vega10_hwmgr, ptr %15, i32 0, i32 48, i32 25, i32 1
  %20 = ptrtoint ptr %enabled.i57 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %enabled.i57, align 1
  br label %cleanup

do.end27:                                         ; preds = %do.end.i56, %if.then4.i54.do.end27_crit_edge
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end12.i58, %if.end21.cleanup_crit_edge, %do.end18, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -1, %do.end18 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %do.end27 ], [ 0, %do.end12.i58 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_smc_table_manager(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_start_thermal_controller(ptr noundef %hwmgr, ptr noundef readonly %range) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %range, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %ucTachometerPulsesPerRevolution.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 1
  %2 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ucTachometerPulsesPerRevolution.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i.cond.false82.sink.split.i_crit_edge, label %land.lhs.true.i

if.then.i.cond.false82.sink.split.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false82.sink.split.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cond.false82.sink.split.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.cond.false82.sink.split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false82.sink.split.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool8.not.i = icmp eq ptr %9, null
  %arrayidx521.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %10 = ptrtoint ptr %arrayidx521.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx521.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add552.i = add i32 %13, 101
  %sriov_rreg69.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %14 = ptrtoint ptr %sriov_rreg69.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_rreg69.i, align 4
  %tobool70.not.i = icmp eq ptr %15, null
  br i1 %tobool8.not.i, label %land.lhs.true65.i, label %cond.true.i

cond.true.i:                                      ; preds = %land.lhs.true4.i
  br i1 %tobool70.not.i, label %cond.false.i, label %cond.true29.i

cond.true29.i:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %15(ptr noundef %1, i32 noundef %add552.i, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call44.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add552.i, i32 noundef 0) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true29.i
  %cond.i = phi i32 [ %call.i, %cond.true29.i ], [ %call44.i, %cond.false.i ]
  %and45.i = and i32 %cond.i, -8
  %16 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ucTachometerPulsesPerRevolution.i, align 1
  %18 = add i8 %17, 7
  %19 = and i8 %18, 7
  %and49.i = zext i8 %19 to i32
  %or.i = or i32 %and45.i, %and49.i
  tail call void %9(ptr noundef %1, i32 noundef %add552.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 25) #6
  br label %if.end.i

land.lhs.true65.i:                                ; preds = %land.lhs.true4.i
  br i1 %tobool70.not.i, label %land.lhs.true65.i.cond.false82.i_crit_edge, label %cond.true71.i

land.lhs.true65.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false82.i

cond.true71.i:                                    ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #8
  %call81.i = tail call i32 %15(ptr noundef %1, i32 noundef %add552.i, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end89.i

cond.false82.sink.split.i:                        ; preds = %land.lhs.true.i.cond.false82.sink.split.i_crit_edge, %if.then.i.cond.false82.sink.split.i_crit_edge
  %arrayidx52111.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %20 = ptrtoint ptr %arrayidx52111.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx52111.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add55212.i = add i32 %23, 101
  br label %cond.false82.i

cond.false82.i:                                   ; preds = %cond.false82.sink.split.i, %land.lhs.true65.i.cond.false82.i_crit_edge
  %add555.i = phi i32 [ %add552.i, %land.lhs.true65.i.cond.false82.i_crit_edge ], [ %add55212.i, %cond.false82.sink.split.i ]
  %call88.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add555.i, i32 noundef 0) #6
  br label %cond.end89.i

cond.end89.i:                                     ; preds = %cond.false82.i, %cond.true71.i
  %add553.i = phi i32 [ %add552.i, %cond.true71.i ], [ %add555.i, %cond.false82.i ]
  %cond90.i = phi i32 [ %call81.i, %cond.true71.i ], [ %call88.i, %cond.false82.i ]
  %and91.i = and i32 %cond90.i, -8
  %24 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ucTachometerPulsesPerRevolution.i, align 1
  %26 = add i8 %25, 7
  %27 = and i8 %26, 7
  %and98.i = zext i8 %27 to i32
  %or99.i = or i32 %and91.i, %and98.i
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add553.i, i32 noundef %or99.i, i32 noundef 0) #6
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end89.i, %cond.end.i, %if.end.if.end.i_crit_edge
  %virt101.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %28 = ptrtoint ptr %virt101.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt101.i, align 8
  %and103.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.end.i.cond.false195.sink.split.i_crit_edge, label %land.lhs.true105.i

if.end.i.cond.false195.sink.split.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false195.sink.split.i

land.lhs.true105.i:                               ; preds = %if.end.i
  %funcs108.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %30 = ptrtoint ptr %funcs108.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs108.i, align 4
  %tobool109.not.i = icmp eq ptr %31, null
  br i1 %tobool109.not.i, label %land.lhs.true105.i.cond.false195.sink.split.i_crit_edge, label %land.lhs.true110.i

land.lhs.true105.i.cond.false195.sink.split.i_crit_edge: ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false195.sink.split.i

land.lhs.true110.i:                               ; preds = %land.lhs.true105.i
  %sriov_wreg114.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sriov_wreg114.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_wreg114.i, align 4
  %tobool115.not.i = icmp eq ptr %33, null
  %arrayidx1656.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %34 = ptrtoint ptr %arrayidx1656.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx1656.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add1687.i = add i32 %37, 100
  %sriov_rreg182.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 13
  %38 = ptrtoint ptr %sriov_rreg182.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_rreg182.i, align 4
  %tobool183.not.i = icmp eq ptr %39, null
  br i1 %tobool115.not.i, label %land.lhs.true178.i, label %cond.true116.i

cond.true116.i:                                   ; preds = %land.lhs.true110.i
  br i1 %tobool183.not.i, label %cond.false152.i, label %cond.true141.i

cond.true141.i:                                   ; preds = %cond.true116.i
  call void @__sanitizer_cov_trace_pc() #8
  %call151.i = tail call i32 %39(ptr noundef %1, i32 noundef %add1687.i, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end159.i

cond.false152.i:                                  ; preds = %cond.true116.i
  call void @__sanitizer_cov_trace_pc() #8
  %call158.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add1687.i, i32 noundef 0) #6
  br label %cond.end159.i

cond.end159.i:                                    ; preds = %cond.false152.i, %cond.true141.i
  %cond160.i = phi i32 [ %call151.i, %cond.true141.i ], [ %call158.i, %cond.false152.i ]
  %and161.i = and i32 %cond160.i, 33554431
  %or162.i = or i32 %and161.i, 1342177280
  tail call void %33(ptr noundef %1, i32 noundef %add1687.i, i32 noundef %or162.i, i32 noundef 0, i32 noundef 25) #6
  br label %vega10_thermal_initialize.exit

land.lhs.true178.i:                               ; preds = %land.lhs.true110.i
  br i1 %tobool183.not.i, label %land.lhs.true178.i.cond.false195.i_crit_edge, label %cond.true184.i

land.lhs.true178.i.cond.false195.i_crit_edge:     ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false195.i

cond.true184.i:                                   ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #8
  %call194.i = tail call i32 %39(ptr noundef %1, i32 noundef %add1687.i, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end202.i

cond.false195.sink.split.i:                       ; preds = %land.lhs.true105.i.cond.false195.sink.split.i_crit_edge, %if.end.i.cond.false195.sink.split.i_crit_edge
  %arrayidx165615.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %40 = ptrtoint ptr %arrayidx165615.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx165615.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add168716.i = add i32 %43, 100
  br label %cond.false195.i

cond.false195.i:                                  ; preds = %cond.false195.sink.split.i, %land.lhs.true178.i.cond.false195.i_crit_edge
  %add16810.i = phi i32 [ %add1687.i, %land.lhs.true178.i.cond.false195.i_crit_edge ], [ %add168716.i, %cond.false195.sink.split.i ]
  %call201.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add16810.i, i32 noundef 0) #6
  br label %cond.end202.i

cond.end202.i:                                    ; preds = %cond.false195.i, %cond.true184.i
  %add1688.i = phi i32 [ %add1687.i, %cond.true184.i ], [ %add16810.i, %cond.false195.i ]
  %cond203.i = phi i32 [ %call194.i, %cond.true184.i ], [ %call201.i, %cond.false195.i ]
  %and204.i = and i32 %cond203.i, 33554431
  %or205.i = or i32 %and204.i, 1342177280
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add1688.i, i32 noundef %or205.i, i32 noundef 0) #6
  br label %vega10_thermal_initialize.exit

vega10_thermal_initialize.exit:                   ; preds = %cond.end202.i, %cond.end159.i
  %pptable.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %44 = ptrtoint ptr %pptable.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pptable.i, align 4
  %tdp_table1.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %tdp_table1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tdp_table1.i, align 4
  %48 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hwmgr, align 4
  %50 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %51)
  %cmp.i = icmp sgt i32 %51, 999
  %div.i = sdiv i32 %51, 1000
  %spec.select.i = select i1 %cmp.i, i32 %div.i, i32 0
  %usSoftwareShutdownTemp.i = getelementptr inbounds %struct.phm_tdp_table, ptr %47, i32 0, i32 16
  %52 = ptrtoint ptr %usSoftwareShutdownTemp.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %usSoftwareShutdownTemp.i, align 4
  %conv.i = zext i16 %53 to i32
  %hotspot_crit_max.i = getelementptr inbounds %struct.PP_TemperatureRange, ptr %range, i32 0, i32 4
  %54 = ptrtoint ptr %hotspot_crit_max.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hotspot_crit_max.i, align 4
  %div5.i = sdiv i32 %55, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div5.i, i32 %conv.i)
  %cmp6.i = icmp slt i32 %div5.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %53)
  %cmp11.i = icmp ult i16 %53, 255
  %or.cond.i = and i1 %cmp11.i, %cmp6.i
  %high.0.i = select i1 %or.cond.i, i32 %conv.i, i32 255
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %high.0.i)
  %cmp18.i = icmp sgt i32 %spec.select.i, %high.0.i
  br i1 %cmp18.i, label %vega10_thermal_initialize.exit.cleanup_crit_edge, label %if.end21.i

vega10_thermal_initialize.exit.cleanup_crit_edge: ; preds = %vega10_thermal_initialize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.i:                                       ; preds = %vega10_thermal_initialize.exit
  %virt.i16 = getelementptr inbounds %struct.amdgpu_device, ptr %49, i32 0, i32 132
  %56 = ptrtoint ptr %virt.i16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt.i16, align 8
  %and.i17 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %if.end21.i.cond.false.i26_crit_edge, label %land.lhs.true.i20

if.end21.i.cond.false.i26_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i26

land.lhs.true.i20:                                ; preds = %if.end21.i
  %funcs.i19 = getelementptr inbounds %struct.amdgpu_device, ptr %49, i32 0, i32 106, i32 2, i32 15
  %58 = ptrtoint ptr %funcs.i19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs.i19, align 4
  %tobool22.not.i = icmp eq ptr %59, null
  br i1 %tobool22.not.i, label %land.lhs.true.i20.cond.false.i26_crit_edge, label %land.lhs.true23.i

land.lhs.true.i20.cond.false.i26_crit_edge:       ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i26

land.lhs.true23.i:                                ; preds = %land.lhs.true.i20
  %sriov_rreg.i21 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %sriov_rreg.i21 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_rreg.i21, align 4
  %tobool27.not.i = icmp eq ptr %61, null
  br i1 %tobool27.not.i, label %land.lhs.true23.i.cond.false.i26_crit_edge, label %cond.true.i25

land.lhs.true23.i.cond.false.i26_crit_edge:       ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i26

cond.true.i25:                                    ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i22 = getelementptr %struct.amdgpu_device, ptr %49, i32 0, i32 130, i32 25
  %62 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i22, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add.i23 = add i32 %65, 11
  %call.i24 = tail call i32 %61(ptr noundef %49, i32 noundef %add.i23, i32 noundef 0, i32 noundef 25) #6
  br label %cond.end.i28

cond.false.i26:                                   ; preds = %land.lhs.true23.i.cond.false.i26_crit_edge, %land.lhs.true.i20.cond.false.i26_crit_edge, %if.end21.i.cond.false.i26_crit_edge
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %49, i32 0, i32 130, i32 25
  %66 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx35.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add38.i = add i32 %69, 11
  %call39.i = tail call i32 @amdgpu_device_rreg(ptr noundef %49, i32 noundef %add38.i, i32 noundef 0) #6
  br label %cond.end.i28

cond.end.i28:                                     ; preds = %cond.false.i26, %cond.true.i25
  %cond.i27 = phi i32 [ %call.i24, %cond.true.i25 ], [ %call39.i, %cond.false.i26 ]
  %and40.i = and i32 %cond.i27, 150929408
  %high.0.masked.i = and i32 %high.0.i, 255
  %shl47.i = shl nsw i32 %spec.select.i, 8
  %and48.i = and i32 %shl47.i, 65280
  %or45.i = or i32 %and48.i, %high.0.masked.i
  %and46.i = or i32 %or45.i, %and40.i
  %or49.i = or i32 %and46.i, -1342177280
  %70 = ptrtoint ptr %virt.i16 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %virt.i16, align 8
  %and53.i = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %cond.end.i28.cond.false75.i_crit_edge, label %land.lhs.true55.i

cond.end.i28.cond.false75.i_crit_edge:            ; preds = %cond.end.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true55.i:                                ; preds = %cond.end.i28
  %funcs58.i = getelementptr inbounds %struct.amdgpu_device, ptr %49, i32 0, i32 106, i32 2, i32 15
  %72 = ptrtoint ptr %funcs58.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %funcs58.i, align 4
  %tobool59.not.i = icmp eq ptr %73, null
  br i1 %tobool59.not.i, label %land.lhs.true55.i.cond.false75.i_crit_edge, label %land.lhs.true60.i31

land.lhs.true55.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true60.i31:                              ; preds = %land.lhs.true55.i
  %sriov_wreg.i29 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %sriov_wreg.i29 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sriov_wreg.i29, align 4
  %tobool64.not.i30 = icmp eq ptr %75, null
  br i1 %tobool64.not.i30, label %land.lhs.true60.i31.cond.false75.i_crit_edge, label %cond.true65.i

land.lhs.true60.i31.cond.false75.i_crit_edge:     ; preds = %land.lhs.true60.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

cond.true65.i:                                    ; preds = %land.lhs.true60.i31
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx71.i = getelementptr %struct.amdgpu_device, ptr %49, i32 0, i32 130, i32 25
  %76 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx71.i, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %add74.i = add i32 %79, 11
  tail call void %75(ptr noundef %49, i32 noundef %add74.i, i32 noundef %or49.i, i32 noundef 0, i32 noundef 25) #6
  br label %if.end3

cond.false75.i:                                   ; preds = %land.lhs.true60.i31.cond.false75.i_crit_edge, %land.lhs.true55.i.cond.false75.i_crit_edge, %cond.end.i28.cond.false75.i_crit_edge
  %arrayidx77.i = getelementptr %struct.amdgpu_device, ptr %49, i32 0, i32 130, i32 25
  %80 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx77.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add80.i = add i32 %83, 11
  tail call void @amdgpu_device_wreg(ptr noundef %49, i32 noundef %add80.i, i32 noundef %or49.i, i32 noundef 0) #6
  br label %if.end3

if.end3:                                          ; preds = %cond.false75.i, %cond.true65.i
  %84 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hwmgr, align 4
  %backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %86 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %backend.i, align 4
  %arrayidx.i32 = getelementptr %struct.vega10_hwmgr, ptr %87, i32 0, i32 48, i32 23
  %88 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i32, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i33 = icmp eq i8 %89, 0
  br i1 %tobool.not.i33, label %if.end3.if.end27.i_crit_edge, label %if.then.i34

if.end3.if.end27.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then.i34:                                      ; preds = %if.end3
  %enabled.i = getelementptr %struct.vega10_hwmgr, ptr %87, i32 0, i32 48, i32 23, i32 1
  %90 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %enabled.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool4.not.i = icmp eq i8 %91, 0
  br i1 %tobool4.not.i, label %if.then.i34.do.body6.i_crit_edge, label %do.end.i

if.then.i34.do.body6.i_crit_edge:                 ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6.i

do.end.i:                                         ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #8
  %call.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end.i, %if.then.i34.do.body6.i_crit_edge
  %smu_feature_bitmap.i = getelementptr %struct.vega10_hwmgr, ptr %87, i32 0, i32 48, i32 23, i32 3
  %92 = ptrtoint ptr %smu_feature_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %smu_feature_bitmap.i, align 4
  %call9.i = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext true, i32 noundef %93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.end23.i, label %if.then11.i

if.then11.i:                                      ; preds = %do.body6.i
  %call12.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_thermal_enable_alert._rs, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.vega10_thermal_enable_alert.exit_crit_edge, label %do.end17.i

if.then11.i.vega10_thermal_enable_alert.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vega10_thermal_enable_alert.exit

do.end17.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #9
  br label %vega10_thermal_enable_alert.exit

do.end23.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %enabled.i, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end23.i, %if.end3.if.end27.i_crit_edge
  %virt.i36 = getelementptr inbounds %struct.amdgpu_device, ptr %85, i32 0, i32 132
  %95 = ptrtoint ptr %virt.i36 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %virt.i36, align 8
  %and.i37 = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool30.not.i = icmp eq i32 %and.i37, 0
  br i1 %tobool30.not.i, label %if.end27.i.cond.false.i43_crit_edge, label %land.lhs.true.i39

if.end27.i.cond.false.i43_crit_edge:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i43

land.lhs.true.i39:                                ; preds = %if.end27.i
  %funcs.i38 = getelementptr inbounds %struct.amdgpu_device, ptr %85, i32 0, i32 106, i32 2, i32 15
  %97 = ptrtoint ptr %funcs.i38 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %funcs.i38, align 4
  %tobool31.not.i = icmp eq ptr %98, null
  br i1 %tobool31.not.i, label %land.lhs.true.i39.cond.false.i43_crit_edge, label %land.lhs.true32.i

land.lhs.true.i39.cond.false.i43_crit_edge:       ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i43

land.lhs.true32.i:                                ; preds = %land.lhs.true.i39
  %sriov_wreg.i40 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %98, i32 0, i32 12
  %99 = ptrtoint ptr %sriov_wreg.i40 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sriov_wreg.i40, align 4
  %tobool36.not.i = icmp eq ptr %100, null
  br i1 %tobool36.not.i, label %land.lhs.true32.i.cond.false.i43_crit_edge, label %cond.true.i42

land.lhs.true32.i.cond.false.i43_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i43

cond.true.i42:                                    ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %85, i32 0, i32 130, i32 25
  %101 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx41.i, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %add.i41 = add i32 %104, 10
  tail call void %100(ptr noundef %85, i32 noundef %add.i41, i32 noundef 56, i32 noundef 0, i32 noundef 25) #6
  br label %vega10_thermal_enable_alert.exit

cond.false.i43:                                   ; preds = %land.lhs.true32.i.cond.false.i43_crit_edge, %land.lhs.true.i39.cond.false.i43_crit_edge, %if.end27.i.cond.false.i43_crit_edge
  %arrayidx45.i = getelementptr %struct.amdgpu_device, ptr %85, i32 0, i32 130, i32 25
  %105 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx45.i, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %add48.i = add i32 %108, 10
  tail call void @amdgpu_device_wreg(ptr noundef %85, i32 noundef %add48.i, i32 noundef 56, i32 noundef 0) #6
  br label %vega10_thermal_enable_alert.exit

vega10_thermal_enable_alert.exit:                 ; preds = %cond.false.i43, %cond.true.i42, %do.end17.i, %if.then11.i.vega10_thermal_enable_alert.exit_crit_edge
  %109 = ptrtoint ptr %backend.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %backend.i, align 4
  %arrayidx.i45 = getelementptr %struct.vega10_hwmgr, ptr %110, i32 0, i32 48, i32 25
  %111 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i45, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i46 = icmp eq i8 %112, 0
  br i1 %tobool.not.i46, label %vega10_thermal_enable_alert.exit.if.end8_crit_edge, label %if.end.i50

vega10_thermal_enable_alert.exit.if.end8_crit_edge: ; preds = %vega10_thermal_enable_alert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.i50:                                       ; preds = %vega10_thermal_enable_alert.exit
  %pp_table.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14
  %usMaxFanRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 21
  %113 = ptrtoint ptr %usMaxFanRPM.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %usMaxFanRPM.i, align 2
  %FanMaximumRpm.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 93
  %115 = ptrtoint ptr %FanMaximumRpm.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %FanMaximumRpm.i, align 4
  %usFanRPMMaxLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 18
  %116 = ptrtoint ptr %usFanRPMMaxLimit.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %usFanRPMMaxLimit.i, align 4
  %FanThrottlingRpm.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 92
  %118 = ptrtoint ptr %FanThrottlingRpm.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %FanThrottlingRpm.i, align 2
  %ulMinFanSCLKAcousticLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %119 = ptrtoint ptr %ulMinFanSCLKAcousticLimit.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ulMinFanSCLKAcousticLimit.i, align 4
  %conv.i47 = trunc i32 %120 to i16
  %FanAcousticLimitRpm.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 91
  %121 = ptrtoint ptr %FanAcousticLimitRpm.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv.i47, ptr %FanAcousticLimitRpm.i, align 4
  %usTMax.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %122 = ptrtoint ptr %usTMax.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %usTMax.i, align 4
  %FanTargetTemperature.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 94
  %124 = ptrtoint ptr %FanTargetTemperature.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %FanTargetTemperature.i, align 2
  %conv8.i = zext i16 %123 to i32
  %call.i48 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 74, i32 noundef %conv8.i, ptr noundef null) #6
  %usPWMMin.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %125 = ptrtoint ptr %usPWMMin.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %usPWMMin.i, align 2
  %conv11.i = zext i16 %126 to i32
  %mul.i = mul nuw nsw i32 %conv11.i, 255
  %div.i49 = udiv i32 %mul.i, 100
  %conv12.i = trunc i32 %div.i49 to i16
  %FanPwmMin.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 90
  %127 = ptrtoint ptr %FanPwmMin.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv12.i, ptr %FanPwmMin.i, align 2
  %ulTargetGfxClk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 40
  %128 = ptrtoint ptr %ulTargetGfxClk.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ulTargetGfxClk.i, align 4
  %conv15.i = trunc i32 %129 to i16
  %FanTargetGfxclk.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 95
  %130 = ptrtoint ptr %FanTargetGfxclk.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv15.i, ptr %FanTargetGfxclk.i, align 4
  %usFanGainEdge.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 29
  %131 = ptrtoint ptr %usFanGainEdge.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %usFanGainEdge.i, align 2
  %FanGainEdge.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 83
  %133 = ptrtoint ptr %FanGainEdge.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %FanGainEdge.i, align 4
  %usFanGainHotspot.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 30
  %134 = ptrtoint ptr %usFanGainHotspot.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %usFanGainHotspot.i, align 4
  %FanGainHotspot.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 84
  %136 = ptrtoint ptr %FanGainHotspot.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %FanGainHotspot.i, align 2
  %usFanGainLiquid.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 31
  %137 = ptrtoint ptr %usFanGainLiquid.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %usFanGainLiquid.i, align 2
  %FanGainLiquid.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 85
  %139 = ptrtoint ptr %FanGainLiquid.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %FanGainLiquid.i, align 4
  %usFanGainVrVddc.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 32
  %140 = ptrtoint ptr %usFanGainVrVddc.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %usFanGainVrVddc.i, align 4
  %FanGainVrVddc.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 86
  %142 = ptrtoint ptr %FanGainVrVddc.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %FanGainVrVddc.i, align 2
  %usFanGainVrMvdd.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 33
  %143 = ptrtoint ptr %usFanGainVrMvdd.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %usFanGainVrMvdd.i, align 2
  %FanGainVrMvdd.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 87
  %145 = ptrtoint ptr %FanGainVrMvdd.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %FanGainVrMvdd.i, align 4
  %usFanGainPlx.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 34
  %146 = ptrtoint ptr %usFanGainPlx.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %usFanGainPlx.i, align 4
  %FanGainPlx.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 88
  %148 = ptrtoint ptr %FanGainPlx.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %FanGainPlx.i, align 2
  %usFanGainHbm.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 35
  %149 = ptrtoint ptr %usFanGainHbm.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %usFanGainHbm.i, align 2
  %FanGainHbm.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 89
  %151 = ptrtoint ptr %FanGainHbm.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %FanGainHbm.i, align 4
  %ucEnableZeroRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 36
  %152 = ptrtoint ptr %ucEnableZeroRPM.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %ucEnableZeroRPM.i, align 4
  %FanZeroRpmEnable.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 96
  %154 = ptrtoint ptr %FanZeroRpmEnable.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %FanZeroRpmEnable.i, align 2
  %usZeroRPMStopTemperature.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 42
  %155 = ptrtoint ptr %usZeroRPMStopTemperature.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %usZeroRPMStopTemperature.i, align 2
  %FanStopTemp.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 81
  %157 = ptrtoint ptr %FanStopTemp.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %FanStopTemp.i, align 4
  %usZeroRPMStartTemperature.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 41
  %158 = ptrtoint ptr %usZeroRPMStartTemperature.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %usZeroRPMStartTemperature.i, align 4
  %FanStartTemp.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %110, i32 0, i32 49, i32 14, i32 82
  %160 = ptrtoint ptr %FanStartTemp.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %FanStartTemp.i, align 2
  %call38.i = tail call i32 @smum_smc_table_manager(ptr noundef %hwmgr, ptr noundef %pp_table.i, i16 noundef zeroext 0, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end.i50.if.end8_crit_edge, label %vega10_thermal_setup_fan_table.exit

if.end.i50.if.end8_crit_edge:                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

vega10_thermal_setup_fan_table.exit:              ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end.i50.if.end8_crit_edge, %vega10_thermal_enable_alert.exit.if.end8_crit_edge
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %161 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %162, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %if.end8.cleanup_crit_edge, label %if.then.i53

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i53:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @vega10_fan_ctrl_start_smc_fan_control(ptr noundef %hwmgr) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i53, %if.end8.cleanup_crit_edge, %vega10_thermal_setup_fan_table.exit, %vega10_thermal_initialize.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %vega10_thermal_setup_fan_table.exit ], [ -22, %vega10_thermal_initialize.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.then.i53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_thermal_ctrl_uninitialize_thermal_controller(ptr noundef %hwmgr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fanInfo = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %0 = ptrtoint ptr %fanInfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fanInfo, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @vega10_fan_ctrl_set_default_mode(ptr noundef %hwmgr)
  %call1 = tail call i32 @vega10_fan_ctrl_stop_smc_fan_control(ptr noundef %hwmgr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 220, i32 2}
!2 = !{ptr @vega10_fan_ctrl_start_smc_fan_control._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.vega10_fan_ctrl_start_smc_fan_control, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vega10_fan_ctrl_start_smc_fan_control._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vega10_fan_ctrl_start_smc_fan_control._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vega10_fan_ctrl_stop_smc_fan_control._rs, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 236, i32 3}
!11 = !{ptr @__func__.vega10_fan_ctrl_stop_smc_fan_control, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vega10_fan_ctrl_stop_smc_fan_control._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @vega10_fan_ctrl_stop_smc_fan_control._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 471, i32 4}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vega10_thermal_disable_alert._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @vega10_thermal_disable_alert._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @vega10_thermal_disable_alert._rs, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 474, i32 3}
!22 = !{ptr @vega10_thermal_disable_alert._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @vega10_thermal_disable_alert._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 584, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vega10_enable_mgpu_fan_boost._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @vega10_enable_mgpu_fan_boost._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 590, i32 3}
!32 = !{ptr @vega10_enable_mgpu_fan_boost._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vega10_enable_mgpu_fan_boost._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 596, i32 3}
!36 = !{ptr @vega10_enable_mgpu_fan_boost._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vega10_enable_mgpu_fan_boost._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @vega10_enable_fan_control_feature._rs, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 186, i32 3}
!40 = !{ptr @__func__.vega10_enable_fan_control_feature, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vega10_enable_fan_control_feature._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @vega10_enable_fan_control_feature._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vega10_disable_fan_control_feature._rs, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 203, i32 3}
!46 = !{ptr @__func__.vega10_disable_fan_control_feature, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vega10_disable_fan_control_feature._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @vega10_disable_fan_control_feature._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 441, i32 4}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vega10_thermal_enable_alert._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @vega10_thermal_enable_alert._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @vega10_thermal_enable_alert._rs, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 443, i32 3}
!56 = !{ptr @vega10_thermal_enable_alert._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @vega10_thermal_enable_alert._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_thermal.c", i32 559, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @vega10_thermal_setup_fan_table._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @vega10_thermal_setup_fan_table._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{!"auto-init"}
!75 = !{i64 797305, i64 797332}
!76 = !{i64 797645, i64 797672, i64 797706, i64 797727}
