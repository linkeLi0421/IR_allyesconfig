; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega10_powertune.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vega10_didt_config_reg = type { i32, i32, i32, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.111, i32, i32, i32, i32 }
%union.anon.111 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.phm_ppt_v2_information = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.phm_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32 }

@vega10_enable_didt_config.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vega10_enable_didt_config\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[EnableDiDtConfig] Feature DiDt Already enabled!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"amdgpu: [powerplay] [EnableDiDtConfig] Feature DiDt Already enabled!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@vega10_enable_didt_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@vega10_enable_didt_config._entry_ptr = internal global ptr @vega10_enable_didt_config._entry, section ".printk_index", align 4
@vega10_enable_didt_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_enable_didt_config._entry_ptr.10 = internal global ptr @vega10_enable_didt_config._entry.9, section ".printk_index", align 4
@vega10_enable_didt_config._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_enable_didt_config._entry_ptr.14 = internal global ptr @vega10_enable_didt_config._entry.13, section ".printk_index", align 4
@vega10_enable_didt_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_enable_didt_config._entry_ptr.18 = internal global ptr @vega10_enable_didt_config._entry.17, section ".printk_index", align 4
@vega10_enable_didt_config._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_enable_didt_config._entry_ptr.22 = internal global ptr @vega10_enable_didt_config._entry.21, section ".printk_index", align 4
@vega10_enable_didt_config._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_enable_didt_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_enable_didt_config._entry_ptr.26 = internal global ptr @vega10_enable_didt_config._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[EnableDiDtConfig] Attempt to Enable DiDt feature Failed!\00", [38 x i8] zeroinitializer }, align 32
@vega10_disable_didt_config.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vega10_disable_didt_config\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[DisableDiDtConfig] Feature DiDt Already Disabled!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"amdgpu: [powerplay] [DisableDiDtConfig] Feature DiDt Already Disabled!\0A\00", [56 x i8] zeroinitializer }, align 32
@vega10_disable_didt_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.28, ptr @.str.2, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_didt_config._entry_ptr = internal global ptr @vega10_disable_didt_config._entry, section ".printk_index", align 4
@vega10_disable_didt_config._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.28, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_didt_config._entry_ptr.34 = internal global ptr @vega10_disable_didt_config._entry.33, section ".printk_index", align 4
@vega10_disable_didt_config._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.28, ptr @.str.2, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_didt_config._entry_ptr.38 = internal global ptr @vega10_disable_didt_config._entry.37, section ".printk_index", align 4
@vega10_disable_didt_config._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.28, ptr @.str.2, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_didt_config._entry_ptr.42 = internal global ptr @vega10_disable_didt_config._entry.41, section ".printk_index", align 4
@vega10_disable_didt_config._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.28, ptr @.str.2, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_didt_config._entry_ptr.46 = internal global ptr @vega10_disable_didt_config._entry.45, section ".printk_index", align 4
@vega10_disable_didt_config._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_disable_didt_config._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.28, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_didt_config._entry_ptr.50 = internal global ptr @vega10_disable_didt_config._entry.49, section ".printk_index", align 4
@.str.51 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[DisableDiDtConfig] Attempt to Disable DiDt feature Failed!\00", [36 x i8] zeroinitializer }, align 32
@vega10_enable_power_containment._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_enable_power_containment = private unnamed_addr constant [32 x i8] c"vega10_enable_power_containment\00", align 1
@vega10_enable_power_containment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.vega10_enable_power_containment, ptr @.str.2, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_enable_power_containment._entry_ptr = internal global ptr @vega10_enable_power_containment._entry, section ".printk_index", align 4
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Attempt to enable PPT feature Failed!\00", [58 x i8] zeroinitializer }, align 32
@vega10_enable_power_containment._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_enable_power_containment._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.vega10_enable_power_containment, ptr @.str.2, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_enable_power_containment._entry_ptr.55 = internal global ptr @vega10_enable_power_containment._entry.54, section ".printk_index", align 4
@vega10_enable_power_containment._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.vega10_enable_power_containment, ptr @.str.2, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_enable_power_containment._entry_ptr.58 = internal global ptr @vega10_enable_power_containment._entry.57, section ".printk_index", align 4
@vega10_disable_power_containment._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_disable_power_containment = private unnamed_addr constant [33 x i8] c"vega10_disable_power_containment\00", align 1
@vega10_disable_power_containment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.vega10_disable_power_containment, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_power_containment._entry_ptr = internal global ptr @vega10_disable_power_containment._entry, section ".printk_index", align 4
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Attempt to disable PPT feature Failed!\00", [57 x i8] zeroinitializer }, align 32
@vega10_disable_power_containment._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_disable_power_containment._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.vega10_disable_power_containment, ptr @.str.2, i32 1365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_power_containment._entry_ptr.63 = internal global ptr @vega10_disable_power_containment._entry.62, section ".printk_index", align 4
@SEDiDtStallCtrlConfig_vega10 = internal constant { [17 x %struct.vega10_didt_config_reg], [80 x i8] } { [17 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 4, i32 63, i32 0, i32 4 }, %struct.vega10_didt_config_reg { i32 4, i32 4032, i32 6, i32 4 }, %struct.vega10_didt_config_reg { i32 4, i32 258048, i32 12, i32 10 }, %struct.vega10_didt_config_reg { i32 4, i32 16515072, i32 18, i32 10 }, %struct.vega10_didt_config_reg { i32 68, i32 63, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 68, i32 4032, i32 6, i32 1 }, %struct.vega10_didt_config_reg { i32 68, i32 258048, i32 12, i32 10 }, %struct.vega10_didt_config_reg { i32 68, i32 16515072, i32 18, i32 10 }, %struct.vega10_didt_config_reg { i32 100, i32 63, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 100, i32 4032, i32 6, i32 1 }, %struct.vega10_didt_config_reg { i32 100, i32 258048, i32 12, i32 10 }, %struct.vega10_didt_config_reg { i32 100, i32 16515072, i32 18, i32 10 }, %struct.vega10_didt_config_reg { i32 36, i32 63, i32 0, i32 4 }, %struct.vega10_didt_config_reg { i32 36, i32 4032, i32 6, i32 4 }, %struct.vega10_didt_config_reg { i32 36, i32 258048, i32 12, i32 10 }, %struct.vega10_didt_config_reg { i32 36, i32 16515072, i32 18, i32 10 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@SEDiDtStallPatternConfig_vega10 = internal constant { [29 x %struct.vega10_didt_config_reg], [112 x i8] } { [29 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 8, i32 32767, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 8, i32 2147418112, i32 16, i32 1 }, %struct.vega10_didt_config_reg { i32 9, i32 32767, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 9, i32 2147418112, i32 16, i32 1 }, %struct.vega10_didt_config_reg { i32 10, i32 32767, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 10, i32 2147418112, i32 16, i32 0 }, %struct.vega10_didt_config_reg { i32 11, i32 32767, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 104, i32 32767, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 104, i32 2147418112, i32 16, i32 1 }, %struct.vega10_didt_config_reg { i32 105, i32 32767, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 105, i32 2147418112, i32 16, i32 1 }, %struct.vega10_didt_config_reg { i32 106, i32 32767, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 106, i32 2147418112, i32 16, i32 0 }, %struct.vega10_didt_config_reg { i32 107, i32 32767, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 72, i32 32767, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 72, i32 2147418112, i32 16, i32 1 }, %struct.vega10_didt_config_reg { i32 73, i32 32767, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 73, i32 2147418112, i32 16, i32 1 }, %struct.vega10_didt_config_reg { i32 74, i32 32767, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 74, i32 2147418112, i32 16, i32 0 }, %struct.vega10_didt_config_reg { i32 75, i32 32767, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 40, i32 32767, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 40, i32 2147418112, i32 16, i32 1 }, %struct.vega10_didt_config_reg { i32 41, i32 32767, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 41, i32 2147418112, i32 16, i32 1 }, %struct.vega10_didt_config_reg { i32 42, i32 32767, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 42, i32 2147418112, i32 16, i32 0 }, %struct.vega10_didt_config_reg { i32 43, i32 32767, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [112 x i8] zeroinitializer }, align 32
@SEDiDtWeightConfig_Vega10 = internal constant { [13 x %struct.vega10_didt_config_reg], [48 x i8] } { [13 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 16, i32 -1, i32 0, i32 724974362 }, %struct.vega10_didt_config_reg { i32 17, i32 -1, i32 0, i32 655041586 }, %struct.vega10_didt_config_reg { i32 18, i32 -1, i32 0, i32 24 }, %struct.vega10_didt_config_reg { i32 80, i32 -1, i32 0, i32 723329551 }, %struct.vega10_didt_config_reg { i32 81, i32 -1, i32 0, i32 30040 }, %struct.vega10_didt_config_reg { i32 82, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 112, i32 -1, i32 0, i32 1523455501 }, %struct.vega10_didt_config_reg { i32 113, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 114, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 48, i32 -1, i32 0, i32 236268047 }, %struct.vega10_didt_config_reg { i32 49, i32 -1, i32 0, i32 151394323 }, %struct.vega10_didt_config_reg { i32 50, i32 -1, i32 0, i32 19 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@SEDiDtCtrl1Config_Vega10 = internal constant { [9 x %struct.vega10_didt_config_reg], [48 x i8] } { [9 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 1, i32 65535, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 1, i32 -65536, i32 16, i32 65535 }, %struct.vega10_didt_config_reg { i32 65, i32 65535, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 65, i32 -65536, i32 16, i32 65535 }, %struct.vega10_didt_config_reg { i32 97, i32 65535, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 97, i32 -65536, i32 16, i32 65535 }, %struct.vega10_didt_config_reg { i32 33, i32 65535, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 33, i32 -65536, i32 16, i32 65535 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@SEDiDtCtrl2Config_Vega10 = internal constant { [13 x %struct.vega10_didt_config_reg], [48 x i8] } { [13 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 2, i32 16383, i32 0, i32 14419 }, %struct.vega10_didt_config_reg { i32 2, i32 67043328, i32 16, i32 192 }, %struct.vega10_didt_config_reg { i32 2, i32 2013265920, i32 27, i32 0 }, %struct.vega10_didt_config_reg { i32 66, i32 16383, i32 0, i32 16383 }, %struct.vega10_didt_config_reg { i32 66, i32 67043328, i32 16, i32 192 }, %struct.vega10_didt_config_reg { i32 66, i32 2013265920, i32 27, i32 1 }, %struct.vega10_didt_config_reg { i32 98, i32 16383, i32 0, i32 15838 }, %struct.vega10_didt_config_reg { i32 98, i32 67043328, i32 16, i32 192 }, %struct.vega10_didt_config_reg { i32 98, i32 2013265920, i32 27, i32 1 }, %struct.vega10_didt_config_reg { i32 34, i32 16383, i32 0, i32 15838 }, %struct.vega10_didt_config_reg { i32 34, i32 67043328, i32 16, i32 192 }, %struct.vega10_didt_config_reg { i32 34, i32 2013265920, i32 27, i32 1 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@SEDiDtCtrl3Config_vega10 = internal constant { [49 x %struct.vega10_didt_config_reg], [208 x i8] } { [49 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 7, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 7, i32 2, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 7, i32 12, i32 2, i32 3 }, %struct.vega10_didt_config_reg { i32 7, i32 496, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 7, i32 15872, i32 9, i32 0 }, %struct.vega10_didt_config_reg { i32 7, i32 4177920, i32 14, i32 3 }, %struct.vega10_didt_config_reg { i32 7, i32 4194304, i32 22, i32 0 }, %struct.vega10_didt_config_reg { i32 7, i32 8388608, i32 23, i32 0 }, %struct.vega10_didt_config_reg { i32 7, i32 16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 7, i32 100663296, i32 25, i32 0 }, %struct.vega10_didt_config_reg { i32 7, i32 134217728, i32 27, i32 0 }, %struct.vega10_didt_config_reg { i32 7, i32 268435456, i32 28, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 2, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 12, i32 2, i32 3 }, %struct.vega10_didt_config_reg { i32 103, i32 496, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 15872, i32 9, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 4177920, i32 14, i32 3 }, %struct.vega10_didt_config_reg { i32 103, i32 4194304, i32 22, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 8388608, i32 23, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 100663296, i32 25, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 134217728, i32 27, i32 0 }, %struct.vega10_didt_config_reg { i32 103, i32 268435456, i32 28, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 2, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 12, i32 2, i32 3 }, %struct.vega10_didt_config_reg { i32 71, i32 496, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 15872, i32 9, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 4177920, i32 14, i32 3 }, %struct.vega10_didt_config_reg { i32 71, i32 4194304, i32 22, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 8388608, i32 23, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 100663296, i32 25, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 134217728, i32 27, i32 0 }, %struct.vega10_didt_config_reg { i32 71, i32 268435456, i32 28, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 2, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 12, i32 2, i32 3 }, %struct.vega10_didt_config_reg { i32 39, i32 496, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 15872, i32 9, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 4177920, i32 14, i32 3 }, %struct.vega10_didt_config_reg { i32 39, i32 4194304, i32 22, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 8388608, i32 23, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 100663296, i32 25, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 134217728, i32 27, i32 0 }, %struct.vega10_didt_config_reg { i32 39, i32 268435456, i32 28, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@SEDiDtTuningCtrlConfig_Vega10 = internal constant { [9 x %struct.vega10_didt_config_reg], [48 x i8] } { [9 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 5, i32 16383, i32 0, i32 14419 }, %struct.vega10_didt_config_reg { i32 5, i32 268419072, i32 14, i32 12627 }, %struct.vega10_didt_config_reg { i32 69, i32 16383, i32 0, i32 3550 }, %struct.vega10_didt_config_reg { i32 69, i32 268419072, i32 14, i32 3550 }, %struct.vega10_didt_config_reg { i32 101, i32 16383, i32 0, i32 15838 }, %struct.vega10_didt_config_reg { i32 101, i32 268419072, i32 14, i32 15838 }, %struct.vega10_didt_config_reg { i32 37, i32 16383, i32 0, i32 15838 }, %struct.vega10_didt_config_reg { i32 37, i32 268419072, i32 14, i32 15838 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@SELCacConfig_Vega10 = internal constant { [25 x %struct.vega10_didt_config_reg], [112 x i8] } { [25 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 393249 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 8781857 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 17170465 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 25559073 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 33947681 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 42336289 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 50724897 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 59113505 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 67502113 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 917536 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 9306144 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 17694752 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 26083360 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 34471968 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 42860576 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 1835040 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 10223648 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 18612256 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 27000864 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 35389472 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 2097160 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 8519688 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 16908296 }, %struct.vega10_didt_config_reg { i32 0, i32 -1, i32 0, i32 25296904 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [112 x i8] zeroinitializer }, align 32
@SEDiDtCtrl0Config_Vega10 = internal constant { [45 x %struct.vega10_didt_config_reg], [176 x i8] } { [45 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 0, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 0, i32 6, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 0, i32 8, i32 3, i32 0 }, %struct.vega10_didt_config_reg { i32 0, i32 16, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 0, i32 32, i32 5, i32 1 }, %struct.vega10_didt_config_reg { i32 0, i32 64, i32 6, i32 1 }, %struct.vega10_didt_config_reg { i32 0, i32 128, i32 7, i32 1 }, %struct.vega10_didt_config_reg { i32 0, i32 16776960, i32 8, i32 65535 }, %struct.vega10_didt_config_reg { i32 0, i32 16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 0, i32 33554432, i32 25, i32 0 }, %struct.vega10_didt_config_reg { i32 0, i32 67108864, i32 26, i32 0 }, %struct.vega10_didt_config_reg { i32 64, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 64, i32 6, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 64, i32 8, i32 3, i32 0 }, %struct.vega10_didt_config_reg { i32 64, i32 16, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 64, i32 32, i32 5, i32 1 }, %struct.vega10_didt_config_reg { i32 64, i32 64, i32 6, i32 1 }, %struct.vega10_didt_config_reg { i32 64, i32 128, i32 7, i32 1 }, %struct.vega10_didt_config_reg { i32 64, i32 16776960, i32 8, i32 65535 }, %struct.vega10_didt_config_reg { i32 64, i32 16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 64, i32 33554432, i32 25, i32 0 }, %struct.vega10_didt_config_reg { i32 64, i32 67108864, i32 26, i32 0 }, %struct.vega10_didt_config_reg { i32 96, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 96, i32 6, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 96, i32 8, i32 3, i32 0 }, %struct.vega10_didt_config_reg { i32 96, i32 16, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 96, i32 32, i32 5, i32 1 }, %struct.vega10_didt_config_reg { i32 96, i32 64, i32 6, i32 1 }, %struct.vega10_didt_config_reg { i32 96, i32 128, i32 7, i32 1 }, %struct.vega10_didt_config_reg { i32 96, i32 16776960, i32 8, i32 65535 }, %struct.vega10_didt_config_reg { i32 96, i32 16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 96, i32 33554432, i32 25, i32 0 }, %struct.vega10_didt_config_reg { i32 96, i32 67108864, i32 26, i32 0 }, %struct.vega10_didt_config_reg { i32 32, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 32, i32 6, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 32, i32 8, i32 3, i32 0 }, %struct.vega10_didt_config_reg { i32 32, i32 16, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 32, i32 32, i32 5, i32 1 }, %struct.vega10_didt_config_reg { i32 32, i32 64, i32 6, i32 1 }, %struct.vega10_didt_config_reg { i32 32, i32 128, i32 7, i32 1 }, %struct.vega10_didt_config_reg { i32 32, i32 16776960, i32 8, i32 65535 }, %struct.vega10_didt_config_reg { i32 32, i32 16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 32, i32 33554432, i32 25, i32 0 }, %struct.vega10_didt_config_reg { i32 32, i32 67108864, i32 26, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [176 x i8] zeroinitializer }, align 32
@__func__.vega10_program_didt_config_registers = private unnamed_addr constant [37 x i8] c"vega10_program_didt_config_registers\00", align 1
@vega10_program_didt_config_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.vega10_program_didt_config_registers, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_program_didt_config_registers._entry_ptr = internal global ptr @vega10_program_didt_config_registers._entry, section ".printk_index", align 4
@AvfsPSMInitConfig_vega10 = internal constant { [8 x %struct.vega10_didt_config_reg], [32 x i8] } { [8 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 92677, i32 -1, i32 24, i32 1 }, %struct.vega10_didt_config_reg { i32 92677, i32 -1, i32 8, i32 3 }, %struct.vega10_didt_config_reg { i32 92677, i32 -1, i32 10, i32 6 }, %struct.vega10_didt_config_reg { i32 92677, i32 -1, i32 7, i32 0 }, %struct.vega10_didt_config_reg { i32 92678, i32 -1, i32 24, i32 1 }, %struct.vega10_didt_config_reg { i32 92678, i32 -1, i32 25, i32 1 }, %struct.vega10_didt_config_reg { i32 92673, i32 -1, i32 0, i32 12327 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@SEEDCStallPatternConfig_Vega10 = internal constant { [17 x %struct.vega10_didt_config_reg], [80 x i8] } { [17 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 21, i32 -1, i32 0, i32 196609 }, %struct.vega10_didt_config_reg { i32 22, i32 -1, i32 0, i32 983047 }, %struct.vega10_didt_config_reg { i32 23, i32 -1, i32 0, i32 4128799 }, %struct.vega10_didt_config_reg { i32 24, i32 -1, i32 0, i32 127 }, %struct.vega10_didt_config_reg { i32 85, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 86, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 87, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 88, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 117, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 118, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 119, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 120, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 53, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 54, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 55, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 56, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@SEEDCStallDelayConfig_Vega10 = internal constant { [14 x %struct.vega10_didt_config_reg], [32 x i8] } { [14 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 26, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 27, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 28, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 29, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 90, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 91, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 92, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 93, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 122, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 123, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 124, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 125, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 58, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@SEEDCCtrlResetConfig_Vega10 = internal constant { [12 x %struct.vega10_didt_config_reg], [32 x i8] } { [12 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 19, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 2, i32 1, i32 1 }, %struct.vega10_didt_config_reg { i32 19, i32 4, i32 2, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 8, i32 3, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 496, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 130560, i32 9, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 131072, i32 17, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 262144, i32 18, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 1572864, i32 19, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 2097152, i32 21, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 4194304, i32 22, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@SEEDCCtrlConfig_Vega10 = internal constant { [12 x %struct.vega10_didt_config_reg], [32 x i8] } { [12 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 19, i32 1, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 19, i32 2, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 4, i32 2, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 8, i32 3, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 496, i32 4, i32 4 }, %struct.vega10_didt_config_reg { i32 19, i32 130560, i32 9, i32 6 }, %struct.vega10_didt_config_reg { i32 19, i32 131072, i32 17, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 262144, i32 18, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 1572864, i32 19, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 2097152, i32 21, i32 1 }, %struct.vega10_didt_config_reg { i32 19, i32 4194304, i32 22, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@PSMSEEDCStallPatternConfig_Vega10 = internal constant { [8 x %struct.vega10_didt_config_reg], [32 x i8] } { [8 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 21, i32 32767, i32 0, i32 257 }, %struct.vega10_didt_config_reg { i32 21, i32 2147418112, i32 16, i32 257 }, %struct.vega10_didt_config_reg { i32 22, i32 32767, i32 0, i32 4369 }, %struct.vega10_didt_config_reg { i32 22, i32 2147418112, i32 16, i32 4369 }, %struct.vega10_didt_config_reg { i32 23, i32 32767, i32 0, i32 5397 }, %struct.vega10_didt_config_reg { i32 23, i32 2147418112, i32 16, i32 5397 }, %struct.vega10_didt_config_reg { i32 24, i32 32767, i32 0, i32 21845 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@PSMSEEDCStallDelayConfig_Vega10 = internal constant { [17 x %struct.vega10_didt_config_reg], [80 x i8] } { [17 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 26, i32 255, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 26, i32 65280, i32 8, i32 0 }, %struct.vega10_didt_config_reg { i32 26, i32 16711680, i32 16, i32 0 }, %struct.vega10_didt_config_reg { i32 26, i32 -16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 27, i32 255, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 27, i32 65280, i32 8, i32 0 }, %struct.vega10_didt_config_reg { i32 27, i32 16711680, i32 16, i32 0 }, %struct.vega10_didt_config_reg { i32 27, i32 -16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 28, i32 255, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 28, i32 65280, i32 8, i32 0 }, %struct.vega10_didt_config_reg { i32 28, i32 16711680, i32 16, i32 0 }, %struct.vega10_didt_config_reg { i32 28, i32 -16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 29, i32 255, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 29, i32 255, i32 8, i32 0 }, %struct.vega10_didt_config_reg { i32 29, i32 16711680, i32 16, i32 0 }, %struct.vega10_didt_config_reg { i32 29, i32 -16777216, i32 24, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@PSMSEEDCCtrlResetConfig_Vega10 = internal constant { [12 x %struct.vega10_didt_config_reg], [32 x i8] } { [12 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 19, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 2, i32 1, i32 1 }, %struct.vega10_didt_config_reg { i32 19, i32 4, i32 2, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 8, i32 3, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 496, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 130560, i32 9, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 131072, i32 17, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 262144, i32 18, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 1572864, i32 19, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 2097152, i32 21, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 4194304, i32 22, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@PSMSEEDCCtrlConfig_Vega10 = internal constant { [12 x %struct.vega10_didt_config_reg], [32 x i8] } { [12 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 19, i32 1, i32 0, i32 1 }, %struct.vega10_didt_config_reg { i32 19, i32 2, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 4, i32 2, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 8, i32 3, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 496, i32 4, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 130560, i32 9, i32 14 }, %struct.vega10_didt_config_reg { i32 19, i32 131072, i32 17, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 262144, i32 18, i32 1 }, %struct.vega10_didt_config_reg { i32 19, i32 1572864, i32 19, i32 3 }, %struct.vega10_didt_config_reg { i32 19, i32 2097152, i32 21, i32 1 }, %struct.vega10_didt_config_reg { i32 19, i32 4194304, i32 22, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@SEEDCForceStallPatternConfig_Vega10 = internal constant { [9 x %struct.vega10_didt_config_reg], [48 x i8] } { [9 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 21, i32 -1, i32 0, i32 21 }, %struct.vega10_didt_config_reg { i32 22, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 23, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 24, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 85, i32 -1, i32 0, i32 21 }, %struct.vega10_didt_config_reg { i32 86, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 87, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 88, i32 -1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@SEEDCCtrlForceStallConfig_Vega10 = internal constant { [23 x %struct.vega10_didt_config_reg], [80 x i8] } { [23 x %struct.vega10_didt_config_reg] [%struct.vega10_didt_config_reg { i32 19, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 2, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 4, i32 2, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 8, i32 3, i32 1 }, %struct.vega10_didt_config_reg { i32 19, i32 496, i32 4, i32 1 }, %struct.vega10_didt_config_reg { i32 19, i32 130560, i32 9, i32 12 }, %struct.vega10_didt_config_reg { i32 19, i32 131072, i32 17, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 262144, i32 18, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 1572864, i32 19, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 2097152, i32 21, i32 0 }, %struct.vega10_didt_config_reg { i32 19, i32 4194304, i32 22, i32 1 }, %struct.vega10_didt_config_reg { i32 83, i32 1, i32 0, i32 0 }, %struct.vega10_didt_config_reg { i32 83, i32 2, i32 1, i32 0 }, %struct.vega10_didt_config_reg { i32 83, i32 4, i32 2, i32 0 }, %struct.vega10_didt_config_reg { i32 83, i32 8, i32 3, i32 1 }, %struct.vega10_didt_config_reg { i32 83, i32 496, i32 4, i32 1 }, %struct.vega10_didt_config_reg { i32 83, i32 130560, i32 9, i32 14 }, %struct.vega10_didt_config_reg { i32 83, i32 131072, i32 17, i32 0 }, %struct.vega10_didt_config_reg { i32 83, i32 262144, i32 18, i32 0 }, %struct.vega10_didt_config_reg { i32 83, i32 1572864, i32 19, i32 0 }, %struct.vega10_didt_config_reg { i32 83, i32 2097152, i32 21, i32 0 }, %struct.vega10_didt_config_reg { i32 83, i32 4194304, i32 22, i32 1 }, %struct.vega10_didt_config_reg { i32 -1, i32 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@__func__.vega10_disable_se_edc_force_stall_config = private unnamed_addr constant [41 x i8] c"vega10_disable_se_edc_force_stall_config\00", align 1
@vega10_disable_se_edc_force_stall_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.vega10_disable_se_edc_force_stall_config, ptr @.str.2, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_disable_se_edc_force_stall_config._entry_ptr = internal global ptr @vega10_disable_se_edc_force_stall_config._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1176, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1181, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1185, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1189, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1195, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1199, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1208, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1223, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1228, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1232, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1236, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1242, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1246, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1255, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1330, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1336, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1342, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1356, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1362, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [29 x i8] c"SEDiDtStallCtrlConfig_vega10\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 263, i32 44 }
@___asan_gen_.181 = private unnamed_addr constant [32 x i8] c"SEDiDtStallPatternConfig_vega10\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 296, i32 44 }
@___asan_gen_.184 = private unnamed_addr constant [26 x i8] c"SEDiDtWeightConfig_Vega10\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 175, i32 44 }
@___asan_gen_.187 = private unnamed_addr constant [25 x i8] c"SEDiDtCtrl1Config_Vega10\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 152, i32 44 }
@___asan_gen_.190 = private unnamed_addr constant [25 x i8] c"SEDiDtCtrl2Config_Vega10\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 123, i32 44 }
@___asan_gen_.193 = private unnamed_addr constant [25 x i8] c"SEDiDtCtrl3Config_vega10\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 58, i32 44 }
@___asan_gen_.196 = private unnamed_addr constant [30 x i8] c"SEDiDtTuningCtrlConfig_Vega10\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 33, i32 44 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"SELCacConfig_Vega10\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 365, i32 44 }
@___asan_gen_.202 = private unnamed_addr constant [25 x i8] c"SEDiDtCtrl0Config_Vega10\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 204, i32 44 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 780, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [25 x i8] c"AvfsPSMInitConfig_vega10\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 759, i32 47 }
@___asan_gen_.211 = private unnamed_addr constant [31 x i8] c"SEEDCStallPatternConfig_Vega10\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 404, i32 44 }
@___asan_gen_.214 = private unnamed_addr constant [29 x i8] c"SEEDCStallDelayConfig_Vega10\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 454, i32 44 }
@___asan_gen_.217 = private unnamed_addr constant [28 x i8] c"SEEDCCtrlResetConfig_Vega10\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 495, i32 44 }
@___asan_gen_.220 = private unnamed_addr constant [23 x i8] c"SEEDCCtrlConfig_Vega10\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 517, i32 44 }
@___asan_gen_.223 = private unnamed_addr constant [34 x i8] c"PSMSEEDCStallPatternConfig_Vega10\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 604, i32 46 }
@___asan_gen_.226 = private unnamed_addr constant [32 x i8] c"PSMSEEDCStallDelayConfig_Vega10\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 624, i32 46 }
@___asan_gen_.229 = private unnamed_addr constant [31 x i8] c"PSMSEEDCCtrlResetConfig_Vega10\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 654, i32 46 }
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"PSMSEEDCCtrlConfig_Vega10\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 676, i32 46 }
@___asan_gen_.235 = private unnamed_addr constant [36 x i8] c"SEEDCForceStallPatternConfig_Vega10\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 434, i32 44 }
@___asan_gen_.238 = private unnamed_addr constant [33 x i8] c"SEEDCCtrlForceStallConfig_Vega10\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 539, i32 44 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private constant [71 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1164, i32 2 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @vega10_disable_didt_config._entry, ptr @vega10_disable_didt_config._entry.33, ptr @vega10_disable_didt_config._entry.37, ptr @vega10_disable_didt_config._entry.41, ptr @vega10_disable_didt_config._entry.45, ptr @vega10_disable_didt_config._entry.49, ptr @vega10_disable_didt_config._entry_ptr, ptr @vega10_disable_didt_config._entry_ptr.34, ptr @vega10_disable_didt_config._entry_ptr.38, ptr @vega10_disable_didt_config._entry_ptr.42, ptr @vega10_disable_didt_config._entry_ptr.46, ptr @vega10_disable_didt_config._entry_ptr.50, ptr @vega10_disable_power_containment._entry, ptr @vega10_disable_power_containment._entry.62, ptr @vega10_disable_power_containment._entry_ptr, ptr @vega10_disable_power_containment._entry_ptr.63, ptr @vega10_disable_se_edc_force_stall_config._entry, ptr @vega10_disable_se_edc_force_stall_config._entry_ptr, ptr @vega10_enable_didt_config._entry, ptr @vega10_enable_didt_config._entry.13, ptr @vega10_enable_didt_config._entry.17, ptr @vega10_enable_didt_config._entry.21, ptr @vega10_enable_didt_config._entry.25, ptr @vega10_enable_didt_config._entry.9, ptr @vega10_enable_didt_config._entry_ptr, ptr @vega10_enable_didt_config._entry_ptr.10, ptr @vega10_enable_didt_config._entry_ptr.14, ptr @vega10_enable_didt_config._entry_ptr.18, ptr @vega10_enable_didt_config._entry_ptr.22, ptr @vega10_enable_didt_config._entry_ptr.26, ptr @vega10_enable_power_containment._entry, ptr @vega10_enable_power_containment._entry.54, ptr @vega10_enable_power_containment._entry.57, ptr @vega10_enable_power_containment._entry_ptr, ptr @vega10_enable_power_containment._entry_ptr.55, ptr @vega10_enable_power_containment._entry_ptr.58, ptr @vega10_program_didt_config_registers._entry, ptr @vega10_program_didt_config_registers._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vega10_enable_didt_config._rs.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @vega10_disable_didt_config._rs.48, ptr @.str.51, ptr @vega10_enable_power_containment._rs, ptr @.str.52, ptr @vega10_enable_power_containment._rs.53, ptr @vega10_disable_power_containment._rs, ptr @.str.60, ptr @vega10_disable_power_containment._rs.61, ptr @SEDiDtStallCtrlConfig_vega10, ptr @SEDiDtStallPatternConfig_vega10, ptr @SEDiDtWeightConfig_Vega10, ptr @SEDiDtCtrl1Config_Vega10, ptr @SEDiDtCtrl2Config_Vega10, ptr @SEDiDtCtrl3Config_vega10, ptr @SEDiDtTuningCtrlConfig_Vega10, ptr @SELCacConfig_Vega10, ptr @SEDiDtCtrl0Config_Vega10, ptr @AvfsPSMInitConfig_vega10, ptr @SEEDCStallPatternConfig_Vega10, ptr @SEEDCStallDelayConfig_Vega10, ptr @SEEDCCtrlResetConfig_Vega10, ptr @SEEDCCtrlConfig_Vega10, ptr @PSMSEEDCStallPatternConfig_Vega10, ptr @PSMSEEDCStallDelayConfig_Vega10, ptr @PSMSEEDCCtrlResetConfig_Vega10, ptr @PSMSEEDCCtrlConfig_Vega10, ptr @SEEDCForceStallPatternConfig_Vega10, ptr @SEEDCCtrlForceStallConfig_Vega10], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_didt_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_didt_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_didt_config._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_didt_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_didt_config._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_didt_config._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_didt_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_didt_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_didt_config._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_didt_config._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_didt_config._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_didt_config._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_didt_config._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_didt_config._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_power_containment._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_power_containment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_power_containment._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_power_containment._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_enable_power_containment._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_power_containment._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_power_containment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_power_containment._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_power_containment._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEDiDtStallCtrlConfig_vega10 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEDiDtStallPatternConfig_vega10 to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEDiDtWeightConfig_Vega10 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEDiDtCtrl1Config_Vega10 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEDiDtCtrl2Config_Vega10 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEDiDtCtrl3Config_vega10 to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEDiDtTuningCtrlConfig_Vega10 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SELCacConfig_Vega10 to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEDiDtCtrl0Config_Vega10 to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_program_didt_config_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AvfsPSMInitConfig_vega10 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEEDCStallPatternConfig_Vega10 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEEDCStallDelayConfig_Vega10 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEEDCCtrlResetConfig_Vega10 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEEDCCtrlConfig_Vega10 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PSMSEEDCStallPatternConfig_Vega10 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PSMSEEDCStallDelayConfig_Vega10 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PSMSEEDCCtrlResetConfig_Vega10 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PSMSEEDCCtrlConfig_Vega10 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEEDCForceStallPatternConfig_Vega10 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SEEDCCtrlForceStallConfig_Vega10 to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_disable_se_edc_force_stall_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_enable_didt_config(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %arrayidx = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 27
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %enabled = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 27, i32 1
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then.if.end12_crit_edge, label %do.body5

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vega10_enable_didt_config.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vega10_enable_didt_config, %if.then9)) #5
          to label %if.end12 [label %if.then9], !srcloc !175

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vega10_enable_didt_config.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.4) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body5, %if.then.if.end12_crit_edge
  %didt_mode = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %didt_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %didt_mode, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end12.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %sw.bb29
    i8 3, label %sw.bb47
    i8 1, label %if.end12.sw.bb65_crit_edge
    i8 4, label %if.end12.sw.bb65_crit_edge445
    i8 5, label %if.end12.sw.bb65_crit_edge446
    i8 6, label %sw.bb83
  ]

if.end12.sw.bb65_crit_edge446:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65

if.end12.sw.bb65_crit_edge445:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65

if.end12.sw.bb65_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  %9 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwmgr, align 4
  %config.i = getelementptr inbounds %struct.amdgpu_device, ptr %10, i32 0, i32 106, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config.i, align 8
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %10) #5
  %grbm_idx_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %10, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp126.not.i = icmp eq i32 %12, 0
  br i1 %cmp126.not.i, label %sw.bb.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %10, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %10, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %10, i32 0, i32 130, i32 1
  %device39.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.0127.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %count.0127.i, 16
  %or.i = or i32 %shl.i, 1610612736
  %13 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.cond.false.i_crit_edge, label %land.lhs.true.i

for.body.i.cond.false.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %15 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool8.not.i = icmp eq ptr %18, null
  br i1 %tobool8.not.i, label %land.lhs.true4.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true4.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx14.i = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %22, 8704
  tail call void %18(ptr noundef %10, i32 noundef %add.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 1) #5
  br label %while.body.i.i.preheader

cond.false.i:                                     ; preds = %land.lhs.true4.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body.i.cond.false.i_crit_edge
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx18.i = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %26, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %10, i32 noundef %add19.i, i32 noundef %or.i, i32 noundef 0) #5
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %cond.false.i, %cond.true.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %27 = phi i32 [ %49, %while.body.i.i.while.body.i.i_crit_edge ], [ 4, %while.body.i.i.preheader ]
  %config_regs.addr.099.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ @SEDiDtStallCtrlConfig_vega10, %while.body.i.i.preheader ]
  %28 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device39.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %read_ind_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %read_ind_register.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_ind_register.i.i, align 4
  %call10.i.i = tail call i32 %33(ptr noundef %29, i32 noundef 3, i32 noundef %27) #5
  %mask.i.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask.i.i, align 4
  %neg.i.i = xor i32 %35, -1
  %and.i.i = and i32 %call10.i.i, %neg.i.i
  %value.i.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %value.i.i, align 4
  %shift.i.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %shift.i.i, align 4
  %shl.i.i = shl i32 %37, %39
  %and12.i.i = and i32 %shl.i.i, %35
  %or.i.i = or i32 %and12.i.i, %and.i.i
  %40 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device39.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %write_ind_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %write_ind_register.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_ind_register.i.i, align 4
  %46 = ptrtoint ptr %config_regs.addr.099.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %config_regs.addr.099.i.i, align 4
  tail call void %45(ptr noundef %41, i32 noundef 3, i32 noundef %47, i32 noundef %or.i.i) #5
  %incdec.ptr.i.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i, i32 1
  %48 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %incdec.ptr.i.i, align 4
  %cmp7.not.i.i = icmp eq i32 %49, -1
  br i1 %cmp7.not.i.i, label %while.body.i.i.while.body.i3.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.body.i.i.while.body.i3.i_crit_edge:         ; preds = %while.body.i.i
  br label %while.body.i3.i

while.body.i3.i:                                  ; preds = %while.body.i3.i.while.body.i3.i_crit_edge, %while.body.i.i.while.body.i3.i_crit_edge
  %50 = phi i32 [ %72, %while.body.i3.i.while.body.i3.i_crit_edge ], [ 8, %while.body.i.i.while.body.i3.i_crit_edge ]
  %config_regs.addr.099.i2.i = phi ptr [ %incdec.ptr.i15.i, %while.body.i3.i.while.body.i3.i_crit_edge ], [ @SEDiDtStallPatternConfig_vega10, %while.body.i.i.while.body.i3.i_crit_edge ]
  %51 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device39.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %read_ind_register.i4.i = getelementptr inbounds %struct.cgs_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %read_ind_register.i4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_ind_register.i4.i, align 4
  %call10.i5.i = tail call i32 %56(ptr noundef %52, i32 noundef 3, i32 noundef %50) #5
  %mask.i6.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i, i32 0, i32 1
  %57 = ptrtoint ptr %mask.i6.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask.i6.i, align 4
  %neg.i7.i = xor i32 %58, -1
  %and.i8.i = and i32 %call10.i5.i, %neg.i7.i
  %value.i9.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i, i32 0, i32 3
  %59 = ptrtoint ptr %value.i9.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %value.i9.i, align 4
  %shift.i10.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i, i32 0, i32 2
  %61 = ptrtoint ptr %shift.i10.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %shift.i10.i, align 4
  %shl.i11.i = shl i32 %60, %62
  %and12.i12.i = and i32 %shl.i11.i, %58
  %or.i13.i = or i32 %and12.i12.i, %and.i8.i
  %63 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device39.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %write_ind_register.i14.i = getelementptr inbounds %struct.cgs_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %write_ind_register.i14.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_ind_register.i14.i, align 4
  %69 = ptrtoint ptr %config_regs.addr.099.i2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %config_regs.addr.099.i2.i, align 4
  tail call void %68(ptr noundef %64, i32 noundef 3, i32 noundef %70, i32 noundef %or.i13.i) #5
  %incdec.ptr.i15.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i, i32 1
  %71 = ptrtoint ptr %incdec.ptr.i15.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %incdec.ptr.i15.i, align 4
  %cmp7.not.i16.i = icmp eq i32 %72, -1
  br i1 %cmp7.not.i16.i, label %while.body.i3.i.while.body.i20.i_crit_edge, label %while.body.i3.i.while.body.i3.i_crit_edge

while.body.i3.i.while.body.i3.i_crit_edge:        ; preds = %while.body.i3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i3.i

while.body.i3.i.while.body.i20.i_crit_edge:       ; preds = %while.body.i3.i
  br label %while.body.i20.i

while.body.i20.i:                                 ; preds = %while.body.i20.i.while.body.i20.i_crit_edge, %while.body.i3.i.while.body.i20.i_crit_edge
  %73 = phi i32 [ %95, %while.body.i20.i.while.body.i20.i_crit_edge ], [ 16, %while.body.i3.i.while.body.i20.i_crit_edge ]
  %config_regs.addr.099.i19.i = phi ptr [ %incdec.ptr.i32.i, %while.body.i20.i.while.body.i20.i_crit_edge ], [ @SEDiDtWeightConfig_Vega10, %while.body.i3.i.while.body.i20.i_crit_edge ]
  %74 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device39.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %read_ind_register.i21.i = getelementptr inbounds %struct.cgs_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %read_ind_register.i21.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_ind_register.i21.i, align 4
  %call10.i22.i = tail call i32 %79(ptr noundef %75, i32 noundef 3, i32 noundef %73) #5
  %mask.i23.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i, i32 0, i32 1
  %80 = ptrtoint ptr %mask.i23.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mask.i23.i, align 4
  %neg.i24.i = xor i32 %81, -1
  %and.i25.i = and i32 %call10.i22.i, %neg.i24.i
  %value.i26.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i, i32 0, i32 3
  %82 = ptrtoint ptr %value.i26.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %value.i26.i, align 4
  %shift.i27.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i, i32 0, i32 2
  %84 = ptrtoint ptr %shift.i27.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %shift.i27.i, align 4
  %shl.i28.i = shl i32 %83, %85
  %and12.i29.i = and i32 %shl.i28.i, %81
  %or.i30.i = or i32 %and12.i29.i, %and.i25.i
  %86 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device39.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %write_ind_register.i31.i = getelementptr inbounds %struct.cgs_ops, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %write_ind_register.i31.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_ind_register.i31.i, align 4
  %92 = ptrtoint ptr %config_regs.addr.099.i19.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %config_regs.addr.099.i19.i, align 4
  tail call void %91(ptr noundef %87, i32 noundef 3, i32 noundef %93, i32 noundef %or.i30.i) #5
  %incdec.ptr.i32.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i, i32 1
  %94 = ptrtoint ptr %incdec.ptr.i32.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %incdec.ptr.i32.i, align 4
  %cmp7.not.i33.i = icmp eq i32 %95, -1
  br i1 %cmp7.not.i33.i, label %while.body.i20.i.while.body.i37.i_crit_edge, label %while.body.i20.i.while.body.i20.i_crit_edge

while.body.i20.i.while.body.i20.i_crit_edge:      ; preds = %while.body.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i20.i

while.body.i20.i.while.body.i37.i_crit_edge:      ; preds = %while.body.i20.i
  br label %while.body.i37.i

while.body.i37.i:                                 ; preds = %while.body.i37.i.while.body.i37.i_crit_edge, %while.body.i20.i.while.body.i37.i_crit_edge
  %96 = phi i32 [ %118, %while.body.i37.i.while.body.i37.i_crit_edge ], [ 1, %while.body.i20.i.while.body.i37.i_crit_edge ]
  %config_regs.addr.099.i36.i = phi ptr [ %incdec.ptr.i49.i, %while.body.i37.i.while.body.i37.i_crit_edge ], [ @SEDiDtCtrl1Config_Vega10, %while.body.i20.i.while.body.i37.i_crit_edge ]
  %97 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device39.i.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %read_ind_register.i38.i = getelementptr inbounds %struct.cgs_ops, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %read_ind_register.i38.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read_ind_register.i38.i, align 4
  %call10.i39.i = tail call i32 %102(ptr noundef %98, i32 noundef 3, i32 noundef %96) #5
  %mask.i40.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i36.i, i32 0, i32 1
  %103 = ptrtoint ptr %mask.i40.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mask.i40.i, align 4
  %neg.i41.i = xor i32 %104, -1
  %and.i42.i = and i32 %call10.i39.i, %neg.i41.i
  %value.i43.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i36.i, i32 0, i32 3
  %105 = ptrtoint ptr %value.i43.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %value.i43.i, align 4
  %shift.i44.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i36.i, i32 0, i32 2
  %107 = ptrtoint ptr %shift.i44.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %shift.i44.i, align 4
  %shl.i45.i = shl i32 %106, %108
  %and12.i46.i = and i32 %shl.i45.i, %104
  %or.i47.i = or i32 %and12.i46.i, %and.i42.i
  %109 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device39.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %write_ind_register.i48.i = getelementptr inbounds %struct.cgs_ops, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %write_ind_register.i48.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write_ind_register.i48.i, align 4
  %115 = ptrtoint ptr %config_regs.addr.099.i36.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %config_regs.addr.099.i36.i, align 4
  tail call void %114(ptr noundef %110, i32 noundef 3, i32 noundef %116, i32 noundef %or.i47.i) #5
  %incdec.ptr.i49.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i36.i, i32 1
  %117 = ptrtoint ptr %incdec.ptr.i49.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %incdec.ptr.i49.i, align 4
  %cmp7.not.i50.i = icmp eq i32 %118, -1
  br i1 %cmp7.not.i50.i, label %while.body.i37.i.while.body.i54.i_crit_edge, label %while.body.i37.i.while.body.i37.i_crit_edge

while.body.i37.i.while.body.i37.i_crit_edge:      ; preds = %while.body.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i37.i

while.body.i37.i.while.body.i54.i_crit_edge:      ; preds = %while.body.i37.i
  br label %while.body.i54.i

while.body.i54.i:                                 ; preds = %while.body.i54.i.while.body.i54.i_crit_edge, %while.body.i37.i.while.body.i54.i_crit_edge
  %119 = phi i32 [ %141, %while.body.i54.i.while.body.i54.i_crit_edge ], [ 2, %while.body.i37.i.while.body.i54.i_crit_edge ]
  %config_regs.addr.099.i53.i = phi ptr [ %incdec.ptr.i66.i, %while.body.i54.i.while.body.i54.i_crit_edge ], [ @SEDiDtCtrl2Config_Vega10, %while.body.i37.i.while.body.i54.i_crit_edge ]
  %120 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device39.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %read_ind_register.i55.i = getelementptr inbounds %struct.cgs_ops, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %read_ind_register.i55.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read_ind_register.i55.i, align 4
  %call10.i56.i = tail call i32 %125(ptr noundef %121, i32 noundef 3, i32 noundef %119) #5
  %mask.i57.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i53.i, i32 0, i32 1
  %126 = ptrtoint ptr %mask.i57.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mask.i57.i, align 4
  %neg.i58.i = xor i32 %127, -1
  %and.i59.i = and i32 %call10.i56.i, %neg.i58.i
  %value.i60.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i53.i, i32 0, i32 3
  %128 = ptrtoint ptr %value.i60.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %value.i60.i, align 4
  %shift.i61.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i53.i, i32 0, i32 2
  %130 = ptrtoint ptr %shift.i61.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %shift.i61.i, align 4
  %shl.i62.i = shl i32 %129, %131
  %and12.i63.i = and i32 %shl.i62.i, %127
  %or.i64.i = or i32 %and12.i63.i, %and.i59.i
  %132 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device39.i.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %write_ind_register.i65.i = getelementptr inbounds %struct.cgs_ops, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %write_ind_register.i65.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write_ind_register.i65.i, align 4
  %138 = ptrtoint ptr %config_regs.addr.099.i53.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %config_regs.addr.099.i53.i, align 4
  tail call void %137(ptr noundef %133, i32 noundef 3, i32 noundef %139, i32 noundef %or.i64.i) #5
  %incdec.ptr.i66.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i53.i, i32 1
  %140 = ptrtoint ptr %incdec.ptr.i66.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %incdec.ptr.i66.i, align 4
  %cmp7.not.i67.i = icmp eq i32 %141, -1
  br i1 %cmp7.not.i67.i, label %while.body.i54.i.while.body.i71.i_crit_edge, label %while.body.i54.i.while.body.i54.i_crit_edge

while.body.i54.i.while.body.i54.i_crit_edge:      ; preds = %while.body.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i54.i

while.body.i54.i.while.body.i71.i_crit_edge:      ; preds = %while.body.i54.i
  br label %while.body.i71.i

while.body.i71.i:                                 ; preds = %while.body.i71.i.while.body.i71.i_crit_edge, %while.body.i54.i.while.body.i71.i_crit_edge
  %142 = phi i32 [ %164, %while.body.i71.i.while.body.i71.i_crit_edge ], [ 7, %while.body.i54.i.while.body.i71.i_crit_edge ]
  %config_regs.addr.099.i70.i = phi ptr [ %incdec.ptr.i83.i, %while.body.i71.i.while.body.i71.i_crit_edge ], [ @SEDiDtCtrl3Config_vega10, %while.body.i54.i.while.body.i71.i_crit_edge ]
  %143 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %device39.i.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %read_ind_register.i72.i = getelementptr inbounds %struct.cgs_ops, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %read_ind_register.i72.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %read_ind_register.i72.i, align 4
  %call10.i73.i = tail call i32 %148(ptr noundef %144, i32 noundef 3, i32 noundef %142) #5
  %mask.i74.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i70.i, i32 0, i32 1
  %149 = ptrtoint ptr %mask.i74.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mask.i74.i, align 4
  %neg.i75.i = xor i32 %150, -1
  %and.i76.i = and i32 %call10.i73.i, %neg.i75.i
  %value.i77.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i70.i, i32 0, i32 3
  %151 = ptrtoint ptr %value.i77.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %value.i77.i, align 4
  %shift.i78.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i70.i, i32 0, i32 2
  %153 = ptrtoint ptr %shift.i78.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %shift.i78.i, align 4
  %shl.i79.i = shl i32 %152, %154
  %and12.i80.i = and i32 %shl.i79.i, %150
  %or.i81.i = or i32 %and12.i80.i, %and.i76.i
  %155 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device39.i.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %write_ind_register.i82.i = getelementptr inbounds %struct.cgs_ops, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %write_ind_register.i82.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write_ind_register.i82.i, align 4
  %161 = ptrtoint ptr %config_regs.addr.099.i70.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %config_regs.addr.099.i70.i, align 4
  tail call void %160(ptr noundef %156, i32 noundef 3, i32 noundef %162, i32 noundef %or.i81.i) #5
  %incdec.ptr.i83.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i70.i, i32 1
  %163 = ptrtoint ptr %incdec.ptr.i83.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %incdec.ptr.i83.i, align 4
  %cmp7.not.i84.i = icmp eq i32 %164, -1
  br i1 %cmp7.not.i84.i, label %while.body.i71.i.while.body.i88.i_crit_edge, label %while.body.i71.i.while.body.i71.i_crit_edge

while.body.i71.i.while.body.i71.i_crit_edge:      ; preds = %while.body.i71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i71.i

while.body.i71.i.while.body.i88.i_crit_edge:      ; preds = %while.body.i71.i
  br label %while.body.i88.i

while.body.i88.i:                                 ; preds = %while.body.i88.i.while.body.i88.i_crit_edge, %while.body.i71.i.while.body.i88.i_crit_edge
  %165 = phi i32 [ %187, %while.body.i88.i.while.body.i88.i_crit_edge ], [ 5, %while.body.i71.i.while.body.i88.i_crit_edge ]
  %config_regs.addr.099.i87.i = phi ptr [ %incdec.ptr.i100.i, %while.body.i88.i.while.body.i88.i_crit_edge ], [ @SEDiDtTuningCtrlConfig_Vega10, %while.body.i71.i.while.body.i88.i_crit_edge ]
  %166 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %device39.i.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %read_ind_register.i89.i = getelementptr inbounds %struct.cgs_ops, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %read_ind_register.i89.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read_ind_register.i89.i, align 4
  %call10.i90.i = tail call i32 %171(ptr noundef %167, i32 noundef 3, i32 noundef %165) #5
  %mask.i91.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i87.i, i32 0, i32 1
  %172 = ptrtoint ptr %mask.i91.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %mask.i91.i, align 4
  %neg.i92.i = xor i32 %173, -1
  %and.i93.i = and i32 %call10.i90.i, %neg.i92.i
  %value.i94.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i87.i, i32 0, i32 3
  %174 = ptrtoint ptr %value.i94.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %value.i94.i, align 4
  %shift.i95.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i87.i, i32 0, i32 2
  %176 = ptrtoint ptr %shift.i95.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %shift.i95.i, align 4
  %shl.i96.i = shl i32 %175, %177
  %and12.i97.i = and i32 %shl.i96.i, %173
  %or.i98.i = or i32 %and12.i97.i, %and.i93.i
  %178 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %device39.i.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %write_ind_register.i99.i = getelementptr inbounds %struct.cgs_ops, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %write_ind_register.i99.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write_ind_register.i99.i, align 4
  %184 = ptrtoint ptr %config_regs.addr.099.i87.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %config_regs.addr.099.i87.i, align 4
  tail call void %183(ptr noundef %179, i32 noundef 3, i32 noundef %185, i32 noundef %or.i98.i) #5
  %incdec.ptr.i100.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i87.i, i32 1
  %186 = ptrtoint ptr %incdec.ptr.i100.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %incdec.ptr.i100.i, align 4
  %cmp7.not.i101.i = icmp eq i32 %187, -1
  br i1 %cmp7.not.i101.i, label %while.body.i88.i.while.body.i105.i_crit_edge, label %while.body.i88.i.while.body.i88.i_crit_edge

while.body.i88.i.while.body.i88.i_crit_edge:      ; preds = %while.body.i88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i88.i

while.body.i88.i.while.body.i105.i_crit_edge:     ; preds = %while.body.i88.i
  br label %while.body.i105.i

while.body.i105.i:                                ; preds = %while.body.i105.i.while.body.i105.i_crit_edge, %while.body.i88.i.while.body.i105.i_crit_edge
  %188 = phi i32 [ %210, %while.body.i105.i.while.body.i105.i_crit_edge ], [ 0, %while.body.i88.i.while.body.i105.i_crit_edge ]
  %config_regs.addr.099.i104.i = phi ptr [ %incdec.ptr.i106.i, %while.body.i105.i.while.body.i105.i_crit_edge ], [ @SELCacConfig_Vega10, %while.body.i88.i.while.body.i105.i_crit_edge ]
  %189 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %device39.i.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %read_ind_register41.i.i = getelementptr inbounds %struct.cgs_ops, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %read_ind_register41.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %read_ind_register41.i.i, align 4
  %call44.i.i = tail call i32 %194(ptr noundef %190, i32 noundef 5, i32 noundef %188) #5
  %mask45.i.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i104.i, i32 0, i32 1
  %195 = ptrtoint ptr %mask45.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %mask45.i.i, align 4
  %neg46.i.i = xor i32 %196, -1
  %and47.i.i = and i32 %call44.i.i, %neg46.i.i
  %value48.i.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i104.i, i32 0, i32 3
  %197 = ptrtoint ptr %value48.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %value48.i.i, align 4
  %shift49.i.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i104.i, i32 0, i32 2
  %199 = ptrtoint ptr %shift49.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %shift49.i.i, align 4
  %shl50.i.i = shl i32 %198, %200
  %and52.i.i = and i32 %shl50.i.i, %196
  %or53.i.i = or i32 %and52.i.i, %and47.i.i
  %201 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %device39.i.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 4
  %write_ind_register56.i.i = getelementptr inbounds %struct.cgs_ops, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %write_ind_register56.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write_ind_register56.i.i, align 4
  %207 = ptrtoint ptr %config_regs.addr.099.i104.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %config_regs.addr.099.i104.i, align 4
  tail call void %206(ptr noundef %202, i32 noundef 5, i32 noundef %208, i32 noundef %or53.i.i) #5
  %incdec.ptr.i106.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i104.i, i32 1
  %209 = ptrtoint ptr %incdec.ptr.i106.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %incdec.ptr.i106.i, align 4
  %cmp7.not.i107.i = icmp eq i32 %210, -1
  br i1 %cmp7.not.i107.i, label %while.body.i105.i.while.body.i111.i_crit_edge, label %while.body.i105.i.while.body.i105.i_crit_edge

while.body.i105.i.while.body.i105.i_crit_edge:    ; preds = %while.body.i105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i105.i

while.body.i105.i.while.body.i111.i_crit_edge:    ; preds = %while.body.i105.i
  br label %while.body.i111.i

while.body.i111.i:                                ; preds = %while.body.i111.i.while.body.i111.i_crit_edge, %while.body.i105.i.while.body.i111.i_crit_edge
  %211 = phi i32 [ %233, %while.body.i111.i.while.body.i111.i_crit_edge ], [ 0, %while.body.i105.i.while.body.i111.i_crit_edge ]
  %config_regs.addr.099.i110.i = phi ptr [ %incdec.ptr.i123.i, %while.body.i111.i.while.body.i111.i_crit_edge ], [ @SEDiDtCtrl0Config_Vega10, %while.body.i105.i.while.body.i111.i_crit_edge ]
  %212 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %device39.i.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %read_ind_register.i112.i = getelementptr inbounds %struct.cgs_ops, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %read_ind_register.i112.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %read_ind_register.i112.i, align 4
  %call10.i113.i = tail call i32 %217(ptr noundef %213, i32 noundef 3, i32 noundef %211) #5
  %mask.i114.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i110.i, i32 0, i32 1
  %218 = ptrtoint ptr %mask.i114.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %mask.i114.i, align 4
  %neg.i115.i = xor i32 %219, -1
  %and.i116.i = and i32 %call10.i113.i, %neg.i115.i
  %value.i117.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i110.i, i32 0, i32 3
  %220 = ptrtoint ptr %value.i117.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %value.i117.i, align 4
  %shift.i118.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i110.i, i32 0, i32 2
  %222 = ptrtoint ptr %shift.i118.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %shift.i118.i, align 4
  %shl.i119.i = shl i32 %221, %223
  %and12.i120.i = and i32 %shl.i119.i, %219
  %or.i121.i = or i32 %and12.i120.i, %and.i116.i
  %224 = ptrtoint ptr %device39.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %device39.i.i, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %write_ind_register.i122.i = getelementptr inbounds %struct.cgs_ops, ptr %227, i32 0, i32 3
  %228 = ptrtoint ptr %write_ind_register.i122.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %write_ind_register.i122.i, align 4
  %230 = ptrtoint ptr %config_regs.addr.099.i110.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %config_regs.addr.099.i110.i, align 4
  tail call void %229(ptr noundef %225, i32 noundef 3, i32 noundef %231, i32 noundef %or.i121.i) #5
  %incdec.ptr.i123.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i110.i, i32 1
  %232 = ptrtoint ptr %incdec.ptr.i123.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %incdec.ptr.i123.i, align 4
  %cmp7.not.i124.i = icmp eq i32 %233, -1
  br i1 %cmp7.not.i124.i, label %for.inc.i, label %while.body.i111.i.while.body.i111.i_crit_edge

while.body.i111.i.while.body.i111.i_crit_edge:    ; preds = %while.body.i111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i111.i

for.inc.i:                                        ; preds = %while.body.i111.i
  %inc.i = add nuw i32 %count.0127.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %virt37.i = getelementptr inbounds %struct.amdgpu_device, ptr %10, i32 0, i32 132
  %234 = ptrtoint ptr %virt37.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %virt37.i, align 8
  %and39.i = and i32 %235, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %for.end.i.cond.false62.i_crit_edge, label %land.lhs.true41.i

for.end.i.cond.false62.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false62.i

land.lhs.true41.i:                                ; preds = %for.end.i
  %funcs44.i = getelementptr inbounds %struct.amdgpu_device, ptr %10, i32 0, i32 106, i32 2, i32 15
  %236 = ptrtoint ptr %funcs44.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %funcs44.i, align 4
  %tobool45.not.i = icmp eq ptr %237, null
  br i1 %tobool45.not.i, label %land.lhs.true41.i.cond.false62.i_crit_edge, label %land.lhs.true46.i

land.lhs.true41.i.cond.false62.i_crit_edge:       ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false62.i

land.lhs.true46.i:                                ; preds = %land.lhs.true41.i
  %sriov_wreg50.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %237, i32 0, i32 12
  %238 = ptrtoint ptr %sriov_wreg50.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %sriov_wreg50.i, align 4
  %tobool51.not.i = icmp eq ptr %239, null
  br i1 %tobool51.not.i, label %land.lhs.true46.i.cond.false62.i_crit_edge, label %cond.true52.i

land.lhs.true46.i.cond.false62.i_crit_edge:       ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false62.i

cond.true52.i:                                    ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx58.i = getelementptr %struct.amdgpu_device, ptr %10, i32 0, i32 130, i32 1
  %240 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx58.i, align 8
  %arrayidx60.i = getelementptr i32, ptr %241, i32 1
  %242 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx60.i, align 4
  %add61.i = add i32 %243, 8704
  tail call void %239(ptr noundef %10, i32 noundef %add61.i, i32 noundef -536870912, i32 noundef 0, i32 noundef 1) #5
  br label %if.then103.sink.split.sink.split

cond.false62.i:                                   ; preds = %land.lhs.true46.i.cond.false62.i_crit_edge, %land.lhs.true41.i.cond.false62.i_crit_edge, %for.end.i.cond.false62.i_crit_edge
  %arrayidx64.i = getelementptr %struct.amdgpu_device, ptr %10, i32 0, i32 130, i32 1
  %244 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx64.i, align 8
  %arrayidx66.i = getelementptr i32, ptr %245, i32 1
  %246 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx66.i, align 4
  %add67.i = add i32 %247, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %10, i32 noundef %add67.i, i32 noundef -536870912, i32 noundef 0) #5
  br label %if.then103.sink.split.sink.split

sw.bb29:                                          ; preds = %if.end12
  %248 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %hwmgr, align 4
  %config.i152 = getelementptr inbounds %struct.amdgpu_device, ptr %249, i32 0, i32 106, i32 1
  %250 = ptrtoint ptr %config.i152 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %config.i152, align 8
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %249) #5
  %grbm_idx_mutex.i153 = getelementptr inbounds %struct.amdgpu_device, ptr %249, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i153, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp96.not.i = icmp eq i32 %251, 0
  br i1 %cmp96.not.i, label %sw.bb29.for.end.i239_crit_edge, label %for.body.lr.ph.i158

sw.bb29.for.end.i239_crit_edge:                   ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i239

for.body.lr.ph.i158:                              ; preds = %sw.bb29
  %virt.i154 = getelementptr inbounds %struct.amdgpu_device, ptr %249, i32 0, i32 132
  %funcs.i155 = getelementptr inbounds %struct.amdgpu_device, ptr %249, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i156 = getelementptr %struct.amdgpu_device, ptr %249, i32 0, i32 130, i32 1
  %device39.i.i157 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.body.i163

for.body.i163:                                    ; preds = %for.inc.i238.for.body.i163_crit_edge, %for.body.lr.ph.i158
  %count.097.i = phi i32 [ 0, %for.body.lr.ph.i158 ], [ %inc.i236, %for.inc.i238.for.body.i163_crit_edge ]
  %shl.i159 = shl i32 %count.097.i, 16
  %or.i160 = or i32 %shl.i159, 1610612736
  %252 = ptrtoint ptr %virt.i154 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %virt.i154, align 8
  %and.i161 = and i32 %253, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i161)
  %tobool.not.i162 = icmp eq i32 %and.i161, 0
  br i1 %tobool.not.i162, label %for.body.i163.cond.false.i174_crit_edge, label %land.lhs.true.i165

for.body.i163.cond.false.i174_crit_edge:          ; preds = %for.body.i163
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i174

land.lhs.true.i165:                               ; preds = %for.body.i163
  %254 = ptrtoint ptr %funcs.i155 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %funcs.i155, align 4
  %tobool3.not.i164 = icmp eq ptr %255, null
  br i1 %tobool3.not.i164, label %land.lhs.true.i165.cond.false.i174_crit_edge, label %land.lhs.true4.i168

land.lhs.true.i165.cond.false.i174_crit_edge:     ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i174

land.lhs.true4.i168:                              ; preds = %land.lhs.true.i165
  %sriov_wreg.i166 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %255, i32 0, i32 12
  %256 = ptrtoint ptr %sriov_wreg.i166 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %sriov_wreg.i166, align 4
  %tobool8.not.i167 = icmp eq ptr %257, null
  br i1 %tobool8.not.i167, label %land.lhs.true4.i168.cond.false.i174_crit_edge, label %cond.true.i171

land.lhs.true4.i168.cond.false.i174_crit_edge:    ; preds = %land.lhs.true4.i168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i174

cond.true.i171:                                   ; preds = %land.lhs.true4.i168
  call void @__sanitizer_cov_trace_pc() #7
  %258 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx.i156, align 8
  %arrayidx14.i169 = getelementptr i32, ptr %259, i32 1
  %260 = ptrtoint ptr %arrayidx14.i169 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx14.i169, align 4
  %add.i170 = add i32 %261, 8704
  tail call void %257(ptr noundef %249, i32 noundef %add.i170, i32 noundef %or.i160, i32 noundef 0, i32 noundef 1) #5
  br label %while.body.i.i190.preheader

cond.false.i174:                                  ; preds = %land.lhs.true4.i168.cond.false.i174_crit_edge, %land.lhs.true.i165.cond.false.i174_crit_edge, %for.body.i163.cond.false.i174_crit_edge
  %262 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx.i156, align 8
  %arrayidx18.i172 = getelementptr i32, ptr %263, i32 1
  %264 = ptrtoint ptr %arrayidx18.i172 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx18.i172, align 4
  %add19.i173 = add i32 %265, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %249, i32 noundef %add19.i173, i32 noundef %or.i160, i32 noundef 0) #5
  br label %while.body.i.i190.preheader

while.body.i.i190.preheader:                      ; preds = %cond.false.i174, %cond.true.i171
  br label %while.body.i.i190

while.body.i.i190:                                ; preds = %while.body.i.i190.while.body.i.i190_crit_edge, %while.body.i.i190.preheader
  %266 = phi i32 [ %288, %while.body.i.i190.while.body.i.i190_crit_edge ], [ 4, %while.body.i.i190.preheader ]
  %config_regs.addr.099.i.i176 = phi ptr [ %incdec.ptr.i.i188, %while.body.i.i190.while.body.i.i190_crit_edge ], [ @SEDiDtStallCtrlConfig_vega10, %while.body.i.i190.preheader ]
  %267 = ptrtoint ptr %device39.i.i157 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %device39.i.i157, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %read_ind_register.i.i177 = getelementptr inbounds %struct.cgs_ops, ptr %270, i32 0, i32 2
  %271 = ptrtoint ptr %read_ind_register.i.i177 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %read_ind_register.i.i177, align 4
  %call10.i.i178 = tail call i32 %272(ptr noundef %268, i32 noundef 3, i32 noundef %266) #5
  %mask.i.i179 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i176, i32 0, i32 1
  %273 = ptrtoint ptr %mask.i.i179 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %mask.i.i179, align 4
  %neg.i.i180 = xor i32 %274, -1
  %and.i.i181 = and i32 %call10.i.i178, %neg.i.i180
  %value.i.i182 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i176, i32 0, i32 3
  %275 = ptrtoint ptr %value.i.i182 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %value.i.i182, align 4
  %shift.i.i183 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i176, i32 0, i32 2
  %277 = ptrtoint ptr %shift.i.i183 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %shift.i.i183, align 4
  %shl.i.i184 = shl i32 %276, %278
  %and12.i.i185 = and i32 %shl.i.i184, %274
  %or.i.i186 = or i32 %and12.i.i185, %and.i.i181
  %279 = ptrtoint ptr %device39.i.i157 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %device39.i.i157, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %write_ind_register.i.i187 = getelementptr inbounds %struct.cgs_ops, ptr %282, i32 0, i32 3
  %283 = ptrtoint ptr %write_ind_register.i.i187 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write_ind_register.i.i187, align 4
  %285 = ptrtoint ptr %config_regs.addr.099.i.i176 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %config_regs.addr.099.i.i176, align 4
  tail call void %284(ptr noundef %280, i32 noundef 3, i32 noundef %286, i32 noundef %or.i.i186) #5
  %incdec.ptr.i.i188 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i176, i32 1
  %287 = ptrtoint ptr %incdec.ptr.i.i188 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %incdec.ptr.i.i188, align 4
  %cmp7.not.i.i189 = icmp eq i32 %288, -1
  br i1 %cmp7.not.i.i189, label %while.body.i.i190.while.body.i3.i205_crit_edge, label %while.body.i.i190.while.body.i.i190_crit_edge

while.body.i.i190.while.body.i.i190_crit_edge:    ; preds = %while.body.i.i190
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i190

while.body.i.i190.while.body.i3.i205_crit_edge:   ; preds = %while.body.i.i190
  br label %while.body.i3.i205

while.body.i3.i205:                               ; preds = %while.body.i3.i205.while.body.i3.i205_crit_edge, %while.body.i.i190.while.body.i3.i205_crit_edge
  %289 = phi i32 [ %311, %while.body.i3.i205.while.body.i3.i205_crit_edge ], [ 8, %while.body.i.i190.while.body.i3.i205_crit_edge ]
  %config_regs.addr.099.i2.i191 = phi ptr [ %incdec.ptr.i15.i203, %while.body.i3.i205.while.body.i3.i205_crit_edge ], [ @SEDiDtStallPatternConfig_vega10, %while.body.i.i190.while.body.i3.i205_crit_edge ]
  %290 = ptrtoint ptr %device39.i.i157 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %device39.i.i157, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 4
  %read_ind_register.i4.i192 = getelementptr inbounds %struct.cgs_ops, ptr %293, i32 0, i32 2
  %294 = ptrtoint ptr %read_ind_register.i4.i192 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %read_ind_register.i4.i192, align 4
  %call10.i5.i193 = tail call i32 %295(ptr noundef %291, i32 noundef 3, i32 noundef %289) #5
  %mask.i6.i194 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i191, i32 0, i32 1
  %296 = ptrtoint ptr %mask.i6.i194 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %mask.i6.i194, align 4
  %neg.i7.i195 = xor i32 %297, -1
  %and.i8.i196 = and i32 %call10.i5.i193, %neg.i7.i195
  %value.i9.i197 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i191, i32 0, i32 3
  %298 = ptrtoint ptr %value.i9.i197 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %value.i9.i197, align 4
  %shift.i10.i198 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i191, i32 0, i32 2
  %300 = ptrtoint ptr %shift.i10.i198 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %shift.i10.i198, align 4
  %shl.i11.i199 = shl i32 %299, %301
  %and12.i12.i200 = and i32 %shl.i11.i199, %297
  %or.i13.i201 = or i32 %and12.i12.i200, %and.i8.i196
  %302 = ptrtoint ptr %device39.i.i157 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %device39.i.i157, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %303, align 4
  %write_ind_register.i14.i202 = getelementptr inbounds %struct.cgs_ops, ptr %305, i32 0, i32 3
  %306 = ptrtoint ptr %write_ind_register.i14.i202 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %write_ind_register.i14.i202, align 4
  %308 = ptrtoint ptr %config_regs.addr.099.i2.i191 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %config_regs.addr.099.i2.i191, align 4
  tail call void %307(ptr noundef %303, i32 noundef 3, i32 noundef %309, i32 noundef %or.i13.i201) #5
  %incdec.ptr.i15.i203 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i191, i32 1
  %310 = ptrtoint ptr %incdec.ptr.i15.i203 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %incdec.ptr.i15.i203, align 4
  %cmp7.not.i16.i204 = icmp eq i32 %311, -1
  br i1 %cmp7.not.i16.i204, label %while.body.i3.i205.while.body.i20.i220_crit_edge, label %while.body.i3.i205.while.body.i3.i205_crit_edge

while.body.i3.i205.while.body.i3.i205_crit_edge:  ; preds = %while.body.i3.i205
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i3.i205

while.body.i3.i205.while.body.i20.i220_crit_edge: ; preds = %while.body.i3.i205
  br label %while.body.i20.i220

while.body.i20.i220:                              ; preds = %while.body.i20.i220.while.body.i20.i220_crit_edge, %while.body.i3.i205.while.body.i20.i220_crit_edge
  %312 = phi i32 [ %334, %while.body.i20.i220.while.body.i20.i220_crit_edge ], [ 7, %while.body.i3.i205.while.body.i20.i220_crit_edge ]
  %config_regs.addr.099.i19.i206 = phi ptr [ %incdec.ptr.i32.i218, %while.body.i20.i220.while.body.i20.i220_crit_edge ], [ @SEDiDtCtrl3Config_vega10, %while.body.i3.i205.while.body.i20.i220_crit_edge ]
  %313 = ptrtoint ptr %device39.i.i157 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %device39.i.i157, align 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %314, align 4
  %read_ind_register.i21.i207 = getelementptr inbounds %struct.cgs_ops, ptr %316, i32 0, i32 2
  %317 = ptrtoint ptr %read_ind_register.i21.i207 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %read_ind_register.i21.i207, align 4
  %call10.i22.i208 = tail call i32 %318(ptr noundef %314, i32 noundef 3, i32 noundef %312) #5
  %mask.i23.i209 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i206, i32 0, i32 1
  %319 = ptrtoint ptr %mask.i23.i209 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %mask.i23.i209, align 4
  %neg.i24.i210 = xor i32 %320, -1
  %and.i25.i211 = and i32 %call10.i22.i208, %neg.i24.i210
  %value.i26.i212 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i206, i32 0, i32 3
  %321 = ptrtoint ptr %value.i26.i212 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %value.i26.i212, align 4
  %shift.i27.i213 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i206, i32 0, i32 2
  %323 = ptrtoint ptr %shift.i27.i213 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %shift.i27.i213, align 4
  %shl.i28.i214 = shl i32 %322, %324
  %and12.i29.i215 = and i32 %shl.i28.i214, %320
  %or.i30.i216 = or i32 %and12.i29.i215, %and.i25.i211
  %325 = ptrtoint ptr %device39.i.i157 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %device39.i.i157, align 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %326, align 4
  %write_ind_register.i31.i217 = getelementptr inbounds %struct.cgs_ops, ptr %328, i32 0, i32 3
  %329 = ptrtoint ptr %write_ind_register.i31.i217 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %write_ind_register.i31.i217, align 4
  %331 = ptrtoint ptr %config_regs.addr.099.i19.i206 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %config_regs.addr.099.i19.i206, align 4
  tail call void %330(ptr noundef %326, i32 noundef 3, i32 noundef %332, i32 noundef %or.i30.i216) #5
  %incdec.ptr.i32.i218 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i206, i32 1
  %333 = ptrtoint ptr %incdec.ptr.i32.i218 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %incdec.ptr.i32.i218, align 4
  %cmp7.not.i33.i219 = icmp eq i32 %334, -1
  br i1 %cmp7.not.i33.i219, label %while.body.i20.i220.while.body.i37.i235_crit_edge, label %while.body.i20.i220.while.body.i20.i220_crit_edge

while.body.i20.i220.while.body.i20.i220_crit_edge: ; preds = %while.body.i20.i220
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i20.i220

while.body.i20.i220.while.body.i37.i235_crit_edge: ; preds = %while.body.i20.i220
  br label %while.body.i37.i235

while.body.i37.i235:                              ; preds = %while.body.i37.i235.while.body.i37.i235_crit_edge, %while.body.i20.i220.while.body.i37.i235_crit_edge
  %335 = phi i32 [ %357, %while.body.i37.i235.while.body.i37.i235_crit_edge ], [ 0, %while.body.i20.i220.while.body.i37.i235_crit_edge ]
  %config_regs.addr.099.i36.i221 = phi ptr [ %incdec.ptr.i49.i233, %while.body.i37.i235.while.body.i37.i235_crit_edge ], [ @SEDiDtCtrl0Config_Vega10, %while.body.i20.i220.while.body.i37.i235_crit_edge ]
  %336 = ptrtoint ptr %device39.i.i157 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %device39.i.i157, align 4
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %337, align 4
  %read_ind_register.i38.i222 = getelementptr inbounds %struct.cgs_ops, ptr %339, i32 0, i32 2
  %340 = ptrtoint ptr %read_ind_register.i38.i222 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %read_ind_register.i38.i222, align 4
  %call10.i39.i223 = tail call i32 %341(ptr noundef %337, i32 noundef 3, i32 noundef %335) #5
  %mask.i40.i224 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i36.i221, i32 0, i32 1
  %342 = ptrtoint ptr %mask.i40.i224 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %mask.i40.i224, align 4
  %neg.i41.i225 = xor i32 %343, -1
  %and.i42.i226 = and i32 %call10.i39.i223, %neg.i41.i225
  %value.i43.i227 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i36.i221, i32 0, i32 3
  %344 = ptrtoint ptr %value.i43.i227 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %value.i43.i227, align 4
  %shift.i44.i228 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i36.i221, i32 0, i32 2
  %346 = ptrtoint ptr %shift.i44.i228 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %shift.i44.i228, align 4
  %shl.i45.i229 = shl i32 %345, %347
  %and12.i46.i230 = and i32 %shl.i45.i229, %343
  %or.i47.i231 = or i32 %and12.i46.i230, %and.i42.i226
  %348 = ptrtoint ptr %device39.i.i157 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %device39.i.i157, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %349, align 4
  %write_ind_register.i48.i232 = getelementptr inbounds %struct.cgs_ops, ptr %351, i32 0, i32 3
  %352 = ptrtoint ptr %write_ind_register.i48.i232 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %write_ind_register.i48.i232, align 4
  %354 = ptrtoint ptr %config_regs.addr.099.i36.i221 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %config_regs.addr.099.i36.i221, align 4
  tail call void %353(ptr noundef %349, i32 noundef 3, i32 noundef %355, i32 noundef %or.i47.i231) #5
  %incdec.ptr.i49.i233 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i36.i221, i32 1
  %356 = ptrtoint ptr %incdec.ptr.i49.i233 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %incdec.ptr.i49.i233, align 4
  %cmp7.not.i50.i234 = icmp eq i32 %357, -1
  br i1 %cmp7.not.i50.i234, label %for.inc.i238, label %while.body.i37.i235.while.body.i37.i235_crit_edge

while.body.i37.i235.while.body.i37.i235_crit_edge: ; preds = %while.body.i37.i235
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i37.i235

for.inc.i238:                                     ; preds = %while.body.i37.i235
  %inc.i236 = add nuw i32 %count.097.i, 1
  %exitcond.not.i237 = icmp eq i32 %inc.i236, %251
  br i1 %exitcond.not.i237, label %for.inc.i238.for.end.i239_crit_edge, label %for.inc.i238.for.body.i163_crit_edge

for.inc.i238.for.body.i163_crit_edge:             ; preds = %for.inc.i238
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i163

for.inc.i238.for.end.i239_crit_edge:              ; preds = %for.inc.i238
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i239

for.end.i239:                                     ; preds = %for.inc.i238.for.end.i239_crit_edge, %sw.bb29.for.end.i239_crit_edge
  %virt27.i = getelementptr inbounds %struct.amdgpu_device, ptr %249, i32 0, i32 132
  %358 = ptrtoint ptr %virt27.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %virt27.i, align 8
  %and29.i = and i32 %359, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %for.end.i239.cond.false52.i_crit_edge, label %land.lhs.true31.i

for.end.i239.cond.false52.i_crit_edge:            ; preds = %for.end.i239
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false52.i

land.lhs.true31.i:                                ; preds = %for.end.i239
  %funcs34.i = getelementptr inbounds %struct.amdgpu_device, ptr %249, i32 0, i32 106, i32 2, i32 15
  %360 = ptrtoint ptr %funcs34.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %funcs34.i, align 4
  %tobool35.not.i = icmp eq ptr %361, null
  br i1 %tobool35.not.i, label %land.lhs.true31.i.cond.false52.i_crit_edge, label %land.lhs.true36.i

land.lhs.true31.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false52.i

land.lhs.true36.i:                                ; preds = %land.lhs.true31.i
  %sriov_wreg40.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %361, i32 0, i32 12
  %362 = ptrtoint ptr %sriov_wreg40.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %sriov_wreg40.i, align 4
  %tobool41.not.i = icmp eq ptr %363, null
  br i1 %tobool41.not.i, label %land.lhs.true36.i.cond.false52.i_crit_edge, label %cond.true42.i

land.lhs.true36.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false52.i

cond.true42.i:                                    ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx48.i = getelementptr %struct.amdgpu_device, ptr %249, i32 0, i32 130, i32 1
  %364 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx48.i, align 8
  %arrayidx50.i = getelementptr i32, ptr %365, i32 1
  %366 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx50.i, align 4
  %add51.i = add i32 %367, 8704
  tail call void %363(ptr noundef %249, i32 noundef %add51.i, i32 noundef -536870912, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end58.i

cond.false52.i:                                   ; preds = %land.lhs.true36.i.cond.false52.i_crit_edge, %land.lhs.true31.i.cond.false52.i_crit_edge, %for.end.i239.cond.false52.i_crit_edge
  %arrayidx54.i = getelementptr %struct.amdgpu_device, ptr %249, i32 0, i32 130, i32 1
  %368 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx54.i, align 8
  %arrayidx56.i = getelementptr i32, ptr %369, i32 1
  %370 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx56.i, align 4
  %add57.i = add i32 %371, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %249, i32 noundef %add57.i, i32 noundef -536870912, i32 noundef 0) #5
  br label %cond.end58.i

cond.end58.i:                                     ; preds = %cond.false52.i, %cond.true42.i
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i153) #5
  tail call fastcc void @vega10_didt_set_mask(ptr noundef %hwmgr, i1 noundef zeroext true) #5
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %249) #5
  %device.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %372 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %device.i.i, align 4
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %373, align 4
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %375, align 4
  %call.i.i = tail call i32 %377(ptr noundef %373, i32 noundef 4760) #5
  %and.i54.i = and i32 %call.i.i, -2
  %378 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %device.i.i, align 4
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %379, align 4
  %write_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %381, i32 0, i32 1
  %382 = ptrtoint ptr %write_register.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %write_register.i.i, align 4
  tail call void %383(ptr noundef %379, i32 noundef 4760, i32 noundef %and.i54.i) #5
  %384 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %device.i.i, align 4
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %385, align 4
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %387, align 4
  %call.i.1.i = tail call i32 %389(ptr noundef %385, i32 noundef 4760) #5
  %and.i54.1.i = and i32 %call.i.1.i, -32767
  %390 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %device.i.i, align 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %391, align 4
  %write_register.i.1.i = getelementptr inbounds %struct.cgs_ops, ptr %393, i32 0, i32 1
  %394 = ptrtoint ptr %write_register.i.1.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %write_register.i.1.i, align 4
  tail call void %395(ptr noundef %391, i32 noundef 4760, i32 noundef %and.i54.1.i) #5
  %396 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %device.i.i, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %399, align 4
  %call.i.2.i = tail call i32 %401(ptr noundef %397, i32 noundef 4760) #5
  %and.i54.2.i = and i32 %call.i.2.i, -491521
  %402 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %device.i.i, align 4
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %403, align 4
  %write_register.i.2.i = getelementptr inbounds %struct.cgs_ops, ptr %405, i32 0, i32 1
  %406 = ptrtoint ptr %write_register.i.2.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %write_register.i.2.i, align 4
  tail call void %407(ptr noundef %403, i32 noundef 4760, i32 noundef %and.i54.2.i) #5
  %408 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %device.i.i, align 4
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %409, align 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %411, align 4
  %call.i.3.i = tail call i32 %413(ptr noundef %409, i32 noundef 4760) #5
  %and.i54.3.i = and i32 %call.i.3.i, -524289
  %414 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %device.i.i, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %415, align 4
  %write_register.i.3.i = getelementptr inbounds %struct.cgs_ops, ptr %417, i32 0, i32 1
  %418 = ptrtoint ptr %write_register.i.3.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %write_register.i.3.i, align 4
  tail call void %419(ptr noundef %415, i32 noundef 4760, i32 noundef %and.i54.3.i) #5
  %420 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %device.i.i, align 4
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %421, align 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %423, align 4
  %call.i.4.i = tail call i32 %425(ptr noundef %421, i32 noundef 4760) #5
  %and.i54.4.i = and i32 %call.i.4.i, 2147483647
  %426 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %device.i.i, align 4
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %427, align 4
  %write_register.i.4.i = getelementptr inbounds %struct.cgs_ops, ptr %429, i32 0, i32 1
  %430 = ptrtoint ptr %write_register.i.4.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %write_register.i.4.i, align 4
  tail call void %431(ptr noundef %427, i32 noundef 4760, i32 noundef %and.i54.4.i) #5
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %432 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %433, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %cond.end58.i.if.end64.i_crit_edge, label %while.body.i75.preheader.i

cond.end58.i.if.end64.i_crit_edge:                ; preds = %cond.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

while.body.i75.preheader.i:                       ; preds = %cond.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  %434 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %device.i.i, align 4
  %436 = ptrtoint ptr %435 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %435, align 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 4
  %call.i63.i = tail call i32 %439(ptr noundef %435, i32 noundef 4750) #5
  %and.i66.i = and i32 %call.i63.i, -2
  %440 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %device.i.i, align 4
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %441, align 4
  %write_register.i72.i = getelementptr inbounds %struct.cgs_ops, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %write_register.i72.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %write_register.i72.i, align 4
  tail call void %445(ptr noundef %441, i32 noundef 4750, i32 noundef %and.i66.i) #5
  %446 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %device.i.i, align 4
  %448 = ptrtoint ptr %447 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %447, align 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 4
  %call.i63.1.i = tail call i32 %451(ptr noundef %447, i32 noundef 4750) #5
  %and.i66.1.i = and i32 %call.i63.1.i, -7
  %452 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %device.i.i, align 4
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %453, align 4
  %write_register.i72.1.i = getelementptr inbounds %struct.cgs_ops, ptr %455, i32 0, i32 1
  %456 = ptrtoint ptr %write_register.i72.1.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %write_register.i72.1.i, align 4
  tail call void %457(ptr noundef %453, i32 noundef 4750, i32 noundef %and.i66.1.i) #5
  %458 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %device.i.i, align 4
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %459, align 4
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %461, align 4
  %call.i63.2.i = tail call i32 %463(ptr noundef %459, i32 noundef 4750) #5
  %and.i66.2.i = and i32 %call.i63.2.i, -9
  %464 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %device.i.i, align 4
  %466 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %465, align 4
  %write_register.i72.2.i = getelementptr inbounds %struct.cgs_ops, ptr %467, i32 0, i32 1
  %468 = ptrtoint ptr %write_register.i72.2.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %write_register.i72.2.i, align 4
  tail call void %469(ptr noundef %465, i32 noundef 4750, i32 noundef %and.i66.2.i) #5
  %470 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %device.i.i, align 4
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %471, align 4
  %474 = ptrtoint ptr %473 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %473, align 4
  %call.i63.3.i = tail call i32 %475(ptr noundef %471, i32 noundef 4750) #5
  %and.i66.3.i = and i32 %call.i63.3.i, -17
  %476 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %device.i.i, align 4
  %478 = ptrtoint ptr %477 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %477, align 4
  %write_register.i72.3.i = getelementptr inbounds %struct.cgs_ops, ptr %479, i32 0, i32 1
  %480 = ptrtoint ptr %write_register.i72.3.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %write_register.i72.3.i, align 4
  tail call void %481(ptr noundef %477, i32 noundef 4750, i32 noundef %and.i66.3.i) #5
  %482 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %device.i.i, align 4
  %484 = ptrtoint ptr %483 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %483, align 4
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %485, align 4
  %call.i63.4.i = tail call i32 %487(ptr noundef %483, i32 noundef 4750) #5
  %and.i66.4.i = and i32 %call.i63.4.i, -481
  %488 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %device.i.i, align 4
  %490 = ptrtoint ptr %489 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %489, align 4
  %write_register.i72.4.i = getelementptr inbounds %struct.cgs_ops, ptr %491, i32 0, i32 1
  %492 = ptrtoint ptr %write_register.i72.4.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %write_register.i72.4.i, align 4
  tail call void %493(ptr noundef %489, i32 noundef 4750, i32 noundef %and.i66.4.i) #5
  br label %if.end64.i

if.end64.i:                                       ; preds = %while.body.i75.preheader.i, %cond.end58.i.if.end64.i_crit_edge
  %494 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i78.i = and i32 %495, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i78.i)
  %cmp.i79.not.i = icmp eq i32 %and1.i78.i, 0
  br i1 %cmp.i79.not.i, label %if.end64.i.if.then103_crit_edge, label %if.end64.i.while.body.i94.i_crit_edge

if.end64.i.while.body.i94.i_crit_edge:            ; preds = %if.end64.i
  br label %while.body.i94.i

if.end64.i.if.then103_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103

while.body.i94.i:                                 ; preds = %while.body.i94.i.while.body.i94.i_crit_edge, %if.end64.i.while.body.i94.i_crit_edge
  %496 = phi i32 [ %518, %while.body.i94.i.while.body.i94.i_crit_edge ], [ 92677, %if.end64.i.while.body.i94.i_crit_edge ]
  %config_regs.addr.02.i81.i = phi ptr [ %incdec.ptr.i92.i, %while.body.i94.i.while.body.i94.i_crit_edge ], [ @AvfsPSMInitConfig_vega10, %if.end64.i.while.body.i94.i_crit_edge ]
  %497 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %device.i.i, align 4
  %499 = ptrtoint ptr %498 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %498, align 4
  %501 = ptrtoint ptr %500 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %500, align 4
  %call.i82.i = tail call i32 %502(ptr noundef %498, i32 noundef %496) #5
  %mask.i83.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.02.i81.i, i32 0, i32 1
  %503 = ptrtoint ptr %mask.i83.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %mask.i83.i, align 4
  %neg.i84.i = xor i32 %504, -1
  %and.i85.i = and i32 %call.i82.i, %neg.i84.i
  %value.i86.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.02.i81.i, i32 0, i32 3
  %505 = ptrtoint ptr %value.i86.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %value.i86.i, align 4
  %shift.i87.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.02.i81.i, i32 0, i32 2
  %507 = ptrtoint ptr %shift.i87.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %shift.i87.i, align 4
  %shl.i88.i = shl i32 %506, %508
  %and4.i89.i = and i32 %shl.i88.i, %504
  %or.i90.i = or i32 %and4.i89.i, %and.i85.i
  %509 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %device.i.i, align 4
  %511 = ptrtoint ptr %510 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %510, align 4
  %write_register.i91.i = getelementptr inbounds %struct.cgs_ops, ptr %512, i32 0, i32 1
  %513 = ptrtoint ptr %write_register.i91.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %write_register.i91.i, align 4
  %515 = ptrtoint ptr %config_regs.addr.02.i81.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %config_regs.addr.02.i81.i, align 4
  tail call void %514(ptr noundef %510, i32 noundef %516, i32 noundef %or.i90.i) #5
  %incdec.ptr.i92.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.02.i81.i, i32 1
  %517 = ptrtoint ptr %incdec.ptr.i92.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %incdec.ptr.i92.i, align 4
  %cmp.not.i93.i = icmp eq i32 %518, -1
  br i1 %cmp.not.i93.i, label %while.body.i94.i.if.then103_crit_edge, label %while.body.i94.i.while.body.i94.i_crit_edge

while.body.i94.i.while.body.i94.i_crit_edge:      ; preds = %while.body.i94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i94.i

while.body.i94.i.if.then103_crit_edge:            ; preds = %while.body.i94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103

sw.bb47:                                          ; preds = %if.end12
  %519 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %hwmgr, align 4
  %config.i240 = getelementptr inbounds %struct.amdgpu_device, ptr %520, i32 0, i32 106, i32 1
  %521 = ptrtoint ptr %config.i240 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %config.i240, align 8
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %520) #5
  %grbm_idx_mutex.i241 = getelementptr inbounds %struct.amdgpu_device, ptr %520, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i241, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %522)
  %cmp86.not.i = icmp eq i32 %522, 0
  br i1 %cmp86.not.i, label %sw.bb47.for.end.i345_crit_edge, label %for.body.lr.ph.i246

sw.bb47.for.end.i345_crit_edge:                   ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i345

for.body.lr.ph.i246:                              ; preds = %sw.bb47
  %virt.i242 = getelementptr inbounds %struct.amdgpu_device, ptr %520, i32 0, i32 132
  %funcs.i243 = getelementptr inbounds %struct.amdgpu_device, ptr %520, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i244 = getelementptr %struct.amdgpu_device, ptr %520, i32 0, i32 130, i32 1
  %device39.i.i245 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.body.i251

for.body.i251:                                    ; preds = %for.inc.i344.for.body.i251_crit_edge, %for.body.lr.ph.i246
  %count.087.i = phi i32 [ 0, %for.body.lr.ph.i246 ], [ %inc.i342, %for.inc.i344.for.body.i251_crit_edge ]
  %shl.i247 = shl i32 %count.087.i, 16
  %or.i248 = or i32 %shl.i247, 1610612736
  %523 = ptrtoint ptr %virt.i242 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %virt.i242, align 8
  %and.i249 = and i32 %524, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool.not.i250 = icmp eq i32 %and.i249, 0
  br i1 %tobool.not.i250, label %for.body.i251.cond.false.i262_crit_edge, label %land.lhs.true.i253

for.body.i251.cond.false.i262_crit_edge:          ; preds = %for.body.i251
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i262

land.lhs.true.i253:                               ; preds = %for.body.i251
  %525 = ptrtoint ptr %funcs.i243 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %funcs.i243, align 4
  %tobool3.not.i252 = icmp eq ptr %526, null
  br i1 %tobool3.not.i252, label %land.lhs.true.i253.cond.false.i262_crit_edge, label %land.lhs.true4.i256

land.lhs.true.i253.cond.false.i262_crit_edge:     ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i262

land.lhs.true4.i256:                              ; preds = %land.lhs.true.i253
  %sriov_wreg.i254 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %526, i32 0, i32 12
  %527 = ptrtoint ptr %sriov_wreg.i254 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %sriov_wreg.i254, align 4
  %tobool8.not.i255 = icmp eq ptr %528, null
  br i1 %tobool8.not.i255, label %land.lhs.true4.i256.cond.false.i262_crit_edge, label %cond.true.i259

land.lhs.true4.i256.cond.false.i262_crit_edge:    ; preds = %land.lhs.true4.i256
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i262

cond.true.i259:                                   ; preds = %land.lhs.true4.i256
  call void @__sanitizer_cov_trace_pc() #7
  %529 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %arrayidx.i244, align 8
  %arrayidx14.i257 = getelementptr i32, ptr %530, i32 1
  %531 = ptrtoint ptr %arrayidx14.i257 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %arrayidx14.i257, align 4
  %add.i258 = add i32 %532, 8704
  tail call void %528(ptr noundef %520, i32 noundef %add.i258, i32 noundef %or.i248, i32 noundef 0, i32 noundef 1) #5
  br label %while.body.i.i278.preheader

cond.false.i262:                                  ; preds = %land.lhs.true4.i256.cond.false.i262_crit_edge, %land.lhs.true.i253.cond.false.i262_crit_edge, %for.body.i251.cond.false.i262_crit_edge
  %533 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %arrayidx.i244, align 8
  %arrayidx18.i260 = getelementptr i32, ptr %534, i32 1
  %535 = ptrtoint ptr %arrayidx18.i260 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %arrayidx18.i260, align 4
  %add19.i261 = add i32 %536, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %520, i32 noundef %add19.i261, i32 noundef %or.i248, i32 noundef 0) #5
  br label %while.body.i.i278.preheader

while.body.i.i278.preheader:                      ; preds = %cond.false.i262, %cond.true.i259
  br label %while.body.i.i278

while.body.i.i278:                                ; preds = %while.body.i.i278.while.body.i.i278_crit_edge, %while.body.i.i278.preheader
  %537 = phi i32 [ %559, %while.body.i.i278.while.body.i.i278_crit_edge ], [ 16, %while.body.i.i278.preheader ]
  %config_regs.addr.099.i.i264 = phi ptr [ %incdec.ptr.i.i276, %while.body.i.i278.while.body.i.i278_crit_edge ], [ @SEDiDtWeightConfig_Vega10, %while.body.i.i278.preheader ]
  %538 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %device39.i.i245, align 4
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %539, align 4
  %read_ind_register.i.i265 = getelementptr inbounds %struct.cgs_ops, ptr %541, i32 0, i32 2
  %542 = ptrtoint ptr %read_ind_register.i.i265 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %read_ind_register.i.i265, align 4
  %call10.i.i266 = tail call i32 %543(ptr noundef %539, i32 noundef 3, i32 noundef %537) #5
  %mask.i.i267 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i264, i32 0, i32 1
  %544 = ptrtoint ptr %mask.i.i267 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %mask.i.i267, align 4
  %neg.i.i268 = xor i32 %545, -1
  %and.i.i269 = and i32 %call10.i.i266, %neg.i.i268
  %value.i.i270 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i264, i32 0, i32 3
  %546 = ptrtoint ptr %value.i.i270 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %value.i.i270, align 4
  %shift.i.i271 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i264, i32 0, i32 2
  %548 = ptrtoint ptr %shift.i.i271 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %shift.i.i271, align 4
  %shl.i.i272 = shl i32 %547, %549
  %and12.i.i273 = and i32 %shl.i.i272, %545
  %or.i.i274 = or i32 %and12.i.i273, %and.i.i269
  %550 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %device39.i.i245, align 4
  %552 = ptrtoint ptr %551 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %551, align 4
  %write_ind_register.i.i275 = getelementptr inbounds %struct.cgs_ops, ptr %553, i32 0, i32 3
  %554 = ptrtoint ptr %write_ind_register.i.i275 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %write_ind_register.i.i275, align 4
  %556 = ptrtoint ptr %config_regs.addr.099.i.i264 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %config_regs.addr.099.i.i264, align 4
  tail call void %555(ptr noundef %551, i32 noundef 3, i32 noundef %557, i32 noundef %or.i.i274) #5
  %incdec.ptr.i.i276 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i264, i32 1
  %558 = ptrtoint ptr %incdec.ptr.i.i276 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %incdec.ptr.i.i276, align 4
  %cmp7.not.i.i277 = icmp eq i32 %559, -1
  br i1 %cmp7.not.i.i277, label %while.body.i.i278.while.body.i3.i293_crit_edge, label %while.body.i.i278.while.body.i.i278_crit_edge

while.body.i.i278.while.body.i.i278_crit_edge:    ; preds = %while.body.i.i278
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i278

while.body.i.i278.while.body.i3.i293_crit_edge:   ; preds = %while.body.i.i278
  br label %while.body.i3.i293

while.body.i3.i293:                               ; preds = %while.body.i3.i293.while.body.i3.i293_crit_edge, %while.body.i.i278.while.body.i3.i293_crit_edge
  %560 = phi i32 [ %582, %while.body.i3.i293.while.body.i3.i293_crit_edge ], [ 21, %while.body.i.i278.while.body.i3.i293_crit_edge ]
  %config_regs.addr.099.i2.i279 = phi ptr [ %incdec.ptr.i15.i291, %while.body.i3.i293.while.body.i3.i293_crit_edge ], [ @SEEDCStallPatternConfig_Vega10, %while.body.i.i278.while.body.i3.i293_crit_edge ]
  %561 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %device39.i.i245, align 4
  %563 = ptrtoint ptr %562 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %562, align 4
  %read_ind_register.i4.i280 = getelementptr inbounds %struct.cgs_ops, ptr %564, i32 0, i32 2
  %565 = ptrtoint ptr %read_ind_register.i4.i280 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %read_ind_register.i4.i280, align 4
  %call10.i5.i281 = tail call i32 %566(ptr noundef %562, i32 noundef 3, i32 noundef %560) #5
  %mask.i6.i282 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i279, i32 0, i32 1
  %567 = ptrtoint ptr %mask.i6.i282 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %mask.i6.i282, align 4
  %neg.i7.i283 = xor i32 %568, -1
  %and.i8.i284 = and i32 %call10.i5.i281, %neg.i7.i283
  %value.i9.i285 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i279, i32 0, i32 3
  %569 = ptrtoint ptr %value.i9.i285 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %value.i9.i285, align 4
  %shift.i10.i286 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i279, i32 0, i32 2
  %571 = ptrtoint ptr %shift.i10.i286 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %shift.i10.i286, align 4
  %shl.i11.i287 = shl i32 %570, %572
  %and12.i12.i288 = and i32 %shl.i11.i287, %568
  %or.i13.i289 = or i32 %and12.i12.i288, %and.i8.i284
  %573 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %device39.i.i245, align 4
  %575 = ptrtoint ptr %574 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %574, align 4
  %write_ind_register.i14.i290 = getelementptr inbounds %struct.cgs_ops, ptr %576, i32 0, i32 3
  %577 = ptrtoint ptr %write_ind_register.i14.i290 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %write_ind_register.i14.i290, align 4
  %579 = ptrtoint ptr %config_regs.addr.099.i2.i279 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %config_regs.addr.099.i2.i279, align 4
  tail call void %578(ptr noundef %574, i32 noundef 3, i32 noundef %580, i32 noundef %or.i13.i289) #5
  %incdec.ptr.i15.i291 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i2.i279, i32 1
  %581 = ptrtoint ptr %incdec.ptr.i15.i291 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %incdec.ptr.i15.i291, align 4
  %cmp7.not.i16.i292 = icmp eq i32 %582, -1
  br i1 %cmp7.not.i16.i292, label %while.body.i3.i293.while.body.i20.i308_crit_edge, label %while.body.i3.i293.while.body.i3.i293_crit_edge

while.body.i3.i293.while.body.i3.i293_crit_edge:  ; preds = %while.body.i3.i293
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i3.i293

while.body.i3.i293.while.body.i20.i308_crit_edge: ; preds = %while.body.i3.i293
  br label %while.body.i20.i308

while.body.i20.i308:                              ; preds = %while.body.i20.i308.while.body.i20.i308_crit_edge, %while.body.i3.i293.while.body.i20.i308_crit_edge
  %583 = phi i32 [ %605, %while.body.i20.i308.while.body.i20.i308_crit_edge ], [ 26, %while.body.i3.i293.while.body.i20.i308_crit_edge ]
  %config_regs.addr.099.i19.i294 = phi ptr [ %incdec.ptr.i32.i306, %while.body.i20.i308.while.body.i20.i308_crit_edge ], [ @SEEDCStallDelayConfig_Vega10, %while.body.i3.i293.while.body.i20.i308_crit_edge ]
  %584 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %device39.i.i245, align 4
  %586 = ptrtoint ptr %585 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %585, align 4
  %read_ind_register.i21.i295 = getelementptr inbounds %struct.cgs_ops, ptr %587, i32 0, i32 2
  %588 = ptrtoint ptr %read_ind_register.i21.i295 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %read_ind_register.i21.i295, align 4
  %call10.i22.i296 = tail call i32 %589(ptr noundef %585, i32 noundef 3, i32 noundef %583) #5
  %mask.i23.i297 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i294, i32 0, i32 1
  %590 = ptrtoint ptr %mask.i23.i297 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %mask.i23.i297, align 4
  %neg.i24.i298 = xor i32 %591, -1
  %and.i25.i299 = and i32 %call10.i22.i296, %neg.i24.i298
  %value.i26.i300 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i294, i32 0, i32 3
  %592 = ptrtoint ptr %value.i26.i300 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %value.i26.i300, align 4
  %shift.i27.i301 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i294, i32 0, i32 2
  %594 = ptrtoint ptr %shift.i27.i301 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %shift.i27.i301, align 4
  %shl.i28.i302 = shl i32 %593, %595
  %and12.i29.i303 = and i32 %shl.i28.i302, %591
  %or.i30.i304 = or i32 %and12.i29.i303, %and.i25.i299
  %596 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %device39.i.i245, align 4
  %598 = ptrtoint ptr %597 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %597, align 4
  %write_ind_register.i31.i305 = getelementptr inbounds %struct.cgs_ops, ptr %599, i32 0, i32 3
  %600 = ptrtoint ptr %write_ind_register.i31.i305 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %write_ind_register.i31.i305, align 4
  %602 = ptrtoint ptr %config_regs.addr.099.i19.i294 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %config_regs.addr.099.i19.i294, align 4
  tail call void %601(ptr noundef %597, i32 noundef 3, i32 noundef %603, i32 noundef %or.i30.i304) #5
  %incdec.ptr.i32.i306 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i19.i294, i32 1
  %604 = ptrtoint ptr %incdec.ptr.i32.i306 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %incdec.ptr.i32.i306, align 4
  %cmp7.not.i33.i307 = icmp eq i32 %605, -1
  br i1 %cmp7.not.i33.i307, label %while.body.i37.preheader.i, label %while.body.i20.i308.while.body.i20.i308_crit_edge

while.body.i20.i308.while.body.i20.i308_crit_edge: ; preds = %while.body.i20.i308
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i20.i308

while.body.i37.preheader.i:                       ; preds = %while.body.i20.i308
  %606 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %device39.i.i245, align 4
  %608 = ptrtoint ptr %607 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %607, align 4
  %read_ind_register.i38.i309 = getelementptr inbounds %struct.cgs_ops, ptr %609, i32 0, i32 2
  %610 = ptrtoint ptr %read_ind_register.i38.i309 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %read_ind_register.i38.i309, align 4
  %call10.i39.i310 = tail call i32 %611(ptr noundef %607, i32 noundef 3, i32 noundef 20) #5
  %612 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %device39.i.i245, align 4
  %614 = ptrtoint ptr %613 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %613, align 4
  %write_ind_register.i48.i311 = getelementptr inbounds %struct.cgs_ops, ptr %615, i32 0, i32 3
  %616 = ptrtoint ptr %write_ind_register.i48.i311 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %write_ind_register.i48.i311, align 4
  tail call void %617(ptr noundef %613, i32 noundef 3, i32 noundef 20, i32 noundef 270) #5
  %618 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %device39.i.i245, align 4
  %620 = ptrtoint ptr %619 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %619, align 4
  %read_ind_register.i38.1.i = getelementptr inbounds %struct.cgs_ops, ptr %621, i32 0, i32 2
  %622 = ptrtoint ptr %read_ind_register.i38.1.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %read_ind_register.i38.1.i, align 4
  %call10.i39.1.i = tail call i32 %623(ptr noundef %619, i32 noundef 3, i32 noundef 84) #5
  %624 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %device39.i.i245, align 4
  %626 = ptrtoint ptr %625 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %625, align 4
  %write_ind_register.i48.1.i = getelementptr inbounds %struct.cgs_ops, ptr %627, i32 0, i32 3
  %628 = ptrtoint ptr %write_ind_register.i48.1.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %write_ind_register.i48.1.i, align 4
  tail call void %629(ptr noundef %625, i32 noundef 3, i32 noundef 84, i32 noundef -1) #5
  %630 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %device39.i.i245, align 4
  %632 = ptrtoint ptr %631 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %631, align 4
  %read_ind_register.i38.2.i = getelementptr inbounds %struct.cgs_ops, ptr %633, i32 0, i32 2
  %634 = ptrtoint ptr %read_ind_register.i38.2.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %read_ind_register.i38.2.i, align 4
  %call10.i39.2.i = tail call i32 %635(ptr noundef %631, i32 noundef 3, i32 noundef 116) #5
  %636 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %device39.i.i245, align 4
  %638 = ptrtoint ptr %637 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %637, align 4
  %write_ind_register.i48.2.i = getelementptr inbounds %struct.cgs_ops, ptr %639, i32 0, i32 3
  %640 = ptrtoint ptr %write_ind_register.i48.2.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %write_ind_register.i48.2.i, align 4
  tail call void %641(ptr noundef %637, i32 noundef 3, i32 noundef 116, i32 noundef -1) #5
  %642 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %device39.i.i245, align 4
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %643, align 4
  %read_ind_register.i38.3.i = getelementptr inbounds %struct.cgs_ops, ptr %645, i32 0, i32 2
  %646 = ptrtoint ptr %read_ind_register.i38.3.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %read_ind_register.i38.3.i, align 4
  %call10.i39.3.i = tail call i32 %647(ptr noundef %643, i32 noundef 3, i32 noundef 52) #5
  %648 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %device39.i.i245, align 4
  %650 = ptrtoint ptr %649 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %649, align 4
  %write_ind_register.i48.3.i = getelementptr inbounds %struct.cgs_ops, ptr %651, i32 0, i32 3
  %652 = ptrtoint ptr %write_ind_register.i48.3.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %write_ind_register.i48.3.i, align 4
  tail call void %653(ptr noundef %649, i32 noundef 3, i32 noundef 52, i32 noundef -1) #5
  br label %while.body.i54.i326

while.body.i54.i326:                              ; preds = %while.body.i54.i326.while.body.i54.i326_crit_edge, %while.body.i37.preheader.i
  %654 = phi i32 [ %676, %while.body.i54.i326.while.body.i54.i326_crit_edge ], [ 19, %while.body.i37.preheader.i ]
  %config_regs.addr.099.i53.i312 = phi ptr [ %incdec.ptr.i66.i324, %while.body.i54.i326.while.body.i54.i326_crit_edge ], [ @SEEDCCtrlResetConfig_Vega10, %while.body.i37.preheader.i ]
  %655 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %device39.i.i245, align 4
  %657 = ptrtoint ptr %656 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %656, align 4
  %read_ind_register.i55.i313 = getelementptr inbounds %struct.cgs_ops, ptr %658, i32 0, i32 2
  %659 = ptrtoint ptr %read_ind_register.i55.i313 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %read_ind_register.i55.i313, align 4
  %call10.i56.i314 = tail call i32 %660(ptr noundef %656, i32 noundef 3, i32 noundef %654) #5
  %mask.i57.i315 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i53.i312, i32 0, i32 1
  %661 = ptrtoint ptr %mask.i57.i315 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %mask.i57.i315, align 4
  %neg.i58.i316 = xor i32 %662, -1
  %and.i59.i317 = and i32 %call10.i56.i314, %neg.i58.i316
  %value.i60.i318 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i53.i312, i32 0, i32 3
  %663 = ptrtoint ptr %value.i60.i318 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %value.i60.i318, align 4
  %shift.i61.i319 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i53.i312, i32 0, i32 2
  %665 = ptrtoint ptr %shift.i61.i319 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %shift.i61.i319, align 4
  %shl.i62.i320 = shl i32 %664, %666
  %and12.i63.i321 = and i32 %shl.i62.i320, %662
  %or.i64.i322 = or i32 %and12.i63.i321, %and.i59.i317
  %667 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %device39.i.i245, align 4
  %669 = ptrtoint ptr %668 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %668, align 4
  %write_ind_register.i65.i323 = getelementptr inbounds %struct.cgs_ops, ptr %670, i32 0, i32 3
  %671 = ptrtoint ptr %write_ind_register.i65.i323 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %write_ind_register.i65.i323, align 4
  %673 = ptrtoint ptr %config_regs.addr.099.i53.i312 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %config_regs.addr.099.i53.i312, align 4
  tail call void %672(ptr noundef %668, i32 noundef 3, i32 noundef %674, i32 noundef %or.i64.i322) #5
  %incdec.ptr.i66.i324 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i53.i312, i32 1
  %675 = ptrtoint ptr %incdec.ptr.i66.i324 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %incdec.ptr.i66.i324, align 4
  %cmp7.not.i67.i325 = icmp eq i32 %676, -1
  br i1 %cmp7.not.i67.i325, label %while.body.i54.i326.while.body.i71.i341_crit_edge, label %while.body.i54.i326.while.body.i54.i326_crit_edge

while.body.i54.i326.while.body.i54.i326_crit_edge: ; preds = %while.body.i54.i326
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i54.i326

while.body.i54.i326.while.body.i71.i341_crit_edge: ; preds = %while.body.i54.i326
  br label %while.body.i71.i341

while.body.i71.i341:                              ; preds = %while.body.i71.i341.while.body.i71.i341_crit_edge, %while.body.i54.i326.while.body.i71.i341_crit_edge
  %677 = phi i32 [ %699, %while.body.i71.i341.while.body.i71.i341_crit_edge ], [ 19, %while.body.i54.i326.while.body.i71.i341_crit_edge ]
  %config_regs.addr.099.i70.i327 = phi ptr [ %incdec.ptr.i83.i339, %while.body.i71.i341.while.body.i71.i341_crit_edge ], [ @SEEDCCtrlConfig_Vega10, %while.body.i54.i326.while.body.i71.i341_crit_edge ]
  %678 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %device39.i.i245, align 4
  %680 = ptrtoint ptr %679 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %679, align 4
  %read_ind_register.i72.i328 = getelementptr inbounds %struct.cgs_ops, ptr %681, i32 0, i32 2
  %682 = ptrtoint ptr %read_ind_register.i72.i328 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %read_ind_register.i72.i328, align 4
  %call10.i73.i329 = tail call i32 %683(ptr noundef %679, i32 noundef 3, i32 noundef %677) #5
  %mask.i74.i330 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i70.i327, i32 0, i32 1
  %684 = ptrtoint ptr %mask.i74.i330 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %mask.i74.i330, align 4
  %neg.i75.i331 = xor i32 %685, -1
  %and.i76.i332 = and i32 %call10.i73.i329, %neg.i75.i331
  %value.i77.i333 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i70.i327, i32 0, i32 3
  %686 = ptrtoint ptr %value.i77.i333 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %value.i77.i333, align 4
  %shift.i78.i334 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i70.i327, i32 0, i32 2
  %688 = ptrtoint ptr %shift.i78.i334 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %shift.i78.i334, align 4
  %shl.i79.i335 = shl i32 %687, %689
  %and12.i80.i336 = and i32 %shl.i79.i335, %685
  %or.i81.i337 = or i32 %and12.i80.i336, %and.i76.i332
  %690 = ptrtoint ptr %device39.i.i245 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %device39.i.i245, align 4
  %692 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %691, align 4
  %write_ind_register.i82.i338 = getelementptr inbounds %struct.cgs_ops, ptr %693, i32 0, i32 3
  %694 = ptrtoint ptr %write_ind_register.i82.i338 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %write_ind_register.i82.i338, align 4
  %696 = ptrtoint ptr %config_regs.addr.099.i70.i327 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %config_regs.addr.099.i70.i327, align 4
  tail call void %695(ptr noundef %691, i32 noundef 3, i32 noundef %697, i32 noundef %or.i81.i337) #5
  %incdec.ptr.i83.i339 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i70.i327, i32 1
  %698 = ptrtoint ptr %incdec.ptr.i83.i339 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %incdec.ptr.i83.i339, align 4
  %cmp7.not.i84.i340 = icmp eq i32 %699, -1
  br i1 %cmp7.not.i84.i340, label %for.inc.i344, label %while.body.i71.i341.while.body.i71.i341_crit_edge

while.body.i71.i341.while.body.i71.i341_crit_edge: ; preds = %while.body.i71.i341
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i71.i341

for.inc.i344:                                     ; preds = %while.body.i71.i341
  %inc.i342 = add nuw i32 %count.087.i, 1
  %exitcond.not.i343 = icmp eq i32 %inc.i342, %522
  br i1 %exitcond.not.i343, label %for.inc.i344.for.end.i345_crit_edge, label %for.inc.i344.for.body.i251_crit_edge

for.inc.i344.for.body.i251_crit_edge:             ; preds = %for.inc.i344
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i251

for.inc.i344.for.end.i345_crit_edge:              ; preds = %for.inc.i344
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i345

for.end.i345:                                     ; preds = %for.inc.i344.for.end.i345_crit_edge, %sw.bb47.for.end.i345_crit_edge
  %virt31.i = getelementptr inbounds %struct.amdgpu_device, ptr %520, i32 0, i32 132
  %700 = ptrtoint ptr %virt31.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %virt31.i, align 8
  %and33.i = and i32 %701, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %for.end.i345.cond.false56.i_crit_edge, label %land.lhs.true35.i

for.end.i345.cond.false56.i_crit_edge:            ; preds = %for.end.i345
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56.i

land.lhs.true35.i:                                ; preds = %for.end.i345
  %funcs38.i = getelementptr inbounds %struct.amdgpu_device, ptr %520, i32 0, i32 106, i32 2, i32 15
  %702 = ptrtoint ptr %funcs38.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %funcs38.i, align 4
  %tobool39.not.i = icmp eq ptr %703, null
  br i1 %tobool39.not.i, label %land.lhs.true35.i.cond.false56.i_crit_edge, label %land.lhs.true40.i

land.lhs.true35.i.cond.false56.i_crit_edge:       ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56.i

land.lhs.true40.i:                                ; preds = %land.lhs.true35.i
  %sriov_wreg44.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %703, i32 0, i32 12
  %704 = ptrtoint ptr %sriov_wreg44.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %sriov_wreg44.i, align 4
  %tobool45.not.i346 = icmp eq ptr %705, null
  br i1 %tobool45.not.i346, label %land.lhs.true40.i.cond.false56.i_crit_edge, label %cond.true46.i

land.lhs.true40.i.cond.false56.i_crit_edge:       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false56.i

cond.true46.i:                                    ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx52.i = getelementptr %struct.amdgpu_device, ptr %520, i32 0, i32 130, i32 1
  %706 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %arrayidx52.i, align 8
  %arrayidx54.i347 = getelementptr i32, ptr %707, i32 1
  %708 = ptrtoint ptr %arrayidx54.i347 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %arrayidx54.i347, align 4
  %add55.i = add i32 %709, 8704
  tail call void %705(ptr noundef %520, i32 noundef %add55.i, i32 noundef -536870912, i32 noundef 0, i32 noundef 1) #5
  br label %if.then103.sink.split.sink.split

cond.false56.i:                                   ; preds = %land.lhs.true40.i.cond.false56.i_crit_edge, %land.lhs.true35.i.cond.false56.i_crit_edge, %for.end.i345.cond.false56.i_crit_edge
  %arrayidx58.i348 = getelementptr %struct.amdgpu_device, ptr %520, i32 0, i32 130, i32 1
  %710 = ptrtoint ptr %arrayidx58.i348 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %arrayidx58.i348, align 8
  %arrayidx60.i349 = getelementptr i32, ptr %711, i32 1
  %712 = ptrtoint ptr %arrayidx60.i349 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %arrayidx60.i349, align 4
  %add61.i350 = add i32 %713, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %520, i32 noundef %add61.i350, i32 noundef -536870912, i32 noundef 0) #5
  br label %if.then103.sink.split.sink.split

sw.bb65:                                          ; preds = %if.end12.sw.bb65_crit_edge, %if.end12.sw.bb65_crit_edge445, %if.end12.sw.bb65_crit_edge446
  %714 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %hwmgr, align 4
  %config.i351 = getelementptr inbounds %struct.amdgpu_device, ptr %715, i32 0, i32 106, i32 1
  %716 = ptrtoint ptr %config.i351 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %config.i351, align 8
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %715) #5
  %device.i.i352 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %718 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %device.i.i352, align 4
  %720 = ptrtoint ptr %719 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %719, align 4
  %722 = ptrtoint ptr %721 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %721, align 4
  %call.i.i353 = tail call i32 %723(ptr noundef %719, i32 noundef 92674) #5
  %724 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %device.i.i352, align 4
  %726 = ptrtoint ptr %725 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %725, align 4
  %write_register.i.i354 = getelementptr inbounds %struct.cgs_ops, ptr %727, i32 0, i32 1
  %728 = ptrtoint ptr %write_register.i.i354 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %write_register.i.i354, align 4
  tail call void %729(ptr noundef %725, i32 noundef 92674, i32 noundef 95) #5
  %730 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %device.i.i352, align 4
  %732 = ptrtoint ptr %731 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %731, align 4
  %734 = ptrtoint ptr %733 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %733, align 4
  %call.i.1.i355 = tail call i32 %735(ptr noundef %731, i32 noundef 92677) #5
  %736 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %device.i.i352, align 4
  %738 = ptrtoint ptr %737 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %737, align 4
  %write_register.i.1.i356 = getelementptr inbounds %struct.cgs_ops, ptr %739, i32 0, i32 1
  %740 = ptrtoint ptr %write_register.i.1.i356 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %write_register.i.1.i356, align 4
  tail call void %741(ptr noundef %737, i32 noundef 92677, i32 noundef 1) #5
  %742 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %device.i.i352, align 4
  %744 = ptrtoint ptr %743 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %743, align 4
  %746 = ptrtoint ptr %745 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %745, align 4
  %call.i.2.i357 = tail call i32 %747(ptr noundef %743, i32 noundef 92678) #5
  %and.i.2.i = and i32 %call.i.2.i357, -2
  %748 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %device.i.i352, align 4
  %750 = ptrtoint ptr %749 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %749, align 4
  %write_register.i.2.i358 = getelementptr inbounds %struct.cgs_ops, ptr %751, i32 0, i32 1
  %752 = ptrtoint ptr %write_register.i.2.i358 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %write_register.i.2.i358, align 4
  tail call void %753(ptr noundef %749, i32 noundef 92678, i32 noundef %and.i.2.i) #5
  %754 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %device.i.i352, align 4
  %756 = ptrtoint ptr %755 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %755, align 4
  %758 = ptrtoint ptr %757 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %757, align 4
  %call.i.3.i359 = tail call i32 %759(ptr noundef %755, i32 noundef 92673) #5
  %760 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %device.i.i352, align 4
  %762 = ptrtoint ptr %761 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %761, align 4
  %write_register.i.3.i360 = getelementptr inbounds %struct.cgs_ops, ptr %763, i32 0, i32 1
  %764 = ptrtoint ptr %write_register.i.3.i360 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %write_register.i.3.i360, align 4
  tail call void %765(ptr noundef %761, i32 noundef 92673, i32 noundef 12327) #5
  %grbm_idx_mutex.i361 = getelementptr inbounds %struct.amdgpu_device, ptr %715, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i361, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %717)
  %cmp128.not.i = icmp eq i32 %717, 0
  br i1 %cmp128.not.i, label %sw.bb65.for.end.i392_crit_edge, label %for.body.lr.ph.i365

sw.bb65.for.end.i392_crit_edge:                   ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i392

for.body.lr.ph.i365:                              ; preds = %sw.bb65
  %virt.i362 = getelementptr inbounds %struct.amdgpu_device, ptr %715, i32 0, i32 132
  %funcs.i363 = getelementptr inbounds %struct.amdgpu_device, ptr %715, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i364 = getelementptr %struct.amdgpu_device, ptr %715, i32 0, i32 130, i32 1
  br label %for.body.i370

for.body.i370:                                    ; preds = %for.inc.i391.for.body.i370_crit_edge, %for.body.lr.ph.i365
  %count.0129.i = phi i32 [ 0, %for.body.lr.ph.i365 ], [ %inc.i389, %for.inc.i391.for.body.i370_crit_edge ]
  %shl.i366 = shl i32 %count.0129.i, 16
  %or.i367 = or i32 %shl.i366, 1610612736
  %766 = ptrtoint ptr %virt.i362 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %virt.i362, align 8
  %and.i368 = and i32 %767, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i368)
  %tobool.not.i369 = icmp eq i32 %and.i368, 0
  br i1 %tobool.not.i369, label %for.body.i370.cond.false.i381_crit_edge, label %land.lhs.true.i372

for.body.i370.cond.false.i381_crit_edge:          ; preds = %for.body.i370
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i381

land.lhs.true.i372:                               ; preds = %for.body.i370
  %768 = ptrtoint ptr %funcs.i363 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %funcs.i363, align 4
  %tobool3.not.i371 = icmp eq ptr %769, null
  br i1 %tobool3.not.i371, label %land.lhs.true.i372.cond.false.i381_crit_edge, label %land.lhs.true4.i375

land.lhs.true.i372.cond.false.i381_crit_edge:     ; preds = %land.lhs.true.i372
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i381

land.lhs.true4.i375:                              ; preds = %land.lhs.true.i372
  %sriov_wreg.i373 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %769, i32 0, i32 12
  %770 = ptrtoint ptr %sriov_wreg.i373 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %sriov_wreg.i373, align 4
  %tobool8.not.i374 = icmp eq ptr %771, null
  br i1 %tobool8.not.i374, label %land.lhs.true4.i375.cond.false.i381_crit_edge, label %cond.true.i378

land.lhs.true4.i375.cond.false.i381_crit_edge:    ; preds = %land.lhs.true4.i375
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i381

cond.true.i378:                                   ; preds = %land.lhs.true4.i375
  call void @__sanitizer_cov_trace_pc() #7
  %772 = ptrtoint ptr %arrayidx.i364 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %arrayidx.i364, align 8
  %arrayidx14.i376 = getelementptr i32, ptr %773, i32 1
  %774 = ptrtoint ptr %arrayidx14.i376 to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load i32, ptr %arrayidx14.i376, align 4
  %add.i377 = add i32 %775, 8704
  tail call void %771(ptr noundef %715, i32 noundef %add.i377, i32 noundef %or.i367, i32 noundef 0, i32 noundef 1) #5
  br label %while.body.i1.i.preheader

cond.false.i381:                                  ; preds = %land.lhs.true4.i375.cond.false.i381_crit_edge, %land.lhs.true.i372.cond.false.i381_crit_edge, %for.body.i370.cond.false.i381_crit_edge
  %776 = ptrtoint ptr %arrayidx.i364 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %arrayidx.i364, align 8
  %arrayidx18.i379 = getelementptr i32, ptr %777, i32 1
  %778 = ptrtoint ptr %arrayidx18.i379 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %arrayidx18.i379, align 4
  %add19.i380 = add i32 %779, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %715, i32 noundef %add19.i380, i32 noundef %or.i367, i32 noundef 0) #5
  br label %while.body.i1.i.preheader

while.body.i1.i.preheader:                        ; preds = %cond.false.i381, %cond.true.i378
  br label %while.body.i1.i

while.body.i1.i:                                  ; preds = %while.body.i1.i.while.body.i1.i_crit_edge, %while.body.i1.i.preheader
  %780 = phi i32 [ %802, %while.body.i1.i.while.body.i1.i_crit_edge ], [ 21, %while.body.i1.i.preheader ]
  %config_regs.addr.099.i.i383 = phi ptr [ %incdec.ptr.i9.i, %while.body.i1.i.while.body.i1.i_crit_edge ], [ @PSMSEEDCStallPatternConfig_Vega10, %while.body.i1.i.preheader ]
  %781 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %device.i.i352, align 4
  %783 = ptrtoint ptr %782 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %782, align 4
  %read_ind_register.i.i384 = getelementptr inbounds %struct.cgs_ops, ptr %784, i32 0, i32 2
  %785 = ptrtoint ptr %read_ind_register.i.i384 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %read_ind_register.i.i384, align 4
  %call10.i.i385 = tail call i32 %786(ptr noundef %782, i32 noundef 3, i32 noundef %780) #5
  %mask.i2.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i383, i32 0, i32 1
  %787 = ptrtoint ptr %mask.i2.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %mask.i2.i, align 4
  %neg.i3.i = xor i32 %788, -1
  %and.i4.i = and i32 %call10.i.i385, %neg.i3.i
  %value.i5.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i383, i32 0, i32 3
  %789 = ptrtoint ptr %value.i5.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load i32, ptr %value.i5.i, align 4
  %shift.i6.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i383, i32 0, i32 2
  %791 = ptrtoint ptr %shift.i6.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load i32, ptr %shift.i6.i, align 4
  %shl.i7.i = shl i32 %790, %792
  %and12.i.i386 = and i32 %shl.i7.i, %788
  %or.i8.i = or i32 %and12.i.i386, %and.i4.i
  %793 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %device.i.i352, align 4
  %795 = ptrtoint ptr %794 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %794, align 4
  %write_ind_register.i.i387 = getelementptr inbounds %struct.cgs_ops, ptr %796, i32 0, i32 3
  %797 = ptrtoint ptr %write_ind_register.i.i387 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %write_ind_register.i.i387, align 4
  %799 = ptrtoint ptr %config_regs.addr.099.i.i383 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %config_regs.addr.099.i.i383, align 4
  tail call void %798(ptr noundef %794, i32 noundef 3, i32 noundef %800, i32 noundef %or.i8.i) #5
  %incdec.ptr.i9.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i383, i32 1
  %801 = ptrtoint ptr %incdec.ptr.i9.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load i32, ptr %incdec.ptr.i9.i, align 4
  %cmp7.not.i.i388 = icmp eq i32 %802, -1
  br i1 %cmp7.not.i.i388, label %while.body.i1.i.while.body.i12.i_crit_edge, label %while.body.i1.i.while.body.i1.i_crit_edge

while.body.i1.i.while.body.i1.i_crit_edge:        ; preds = %while.body.i1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i1.i

while.body.i1.i.while.body.i12.i_crit_edge:       ; preds = %while.body.i1.i
  br label %while.body.i12.i

while.body.i12.i:                                 ; preds = %while.body.i12.i.while.body.i12.i_crit_edge, %while.body.i1.i.while.body.i12.i_crit_edge
  %803 = phi i32 [ %825, %while.body.i12.i.while.body.i12.i_crit_edge ], [ 26, %while.body.i1.i.while.body.i12.i_crit_edge ]
  %config_regs.addr.099.i11.i = phi ptr [ %incdec.ptr.i24.i, %while.body.i12.i.while.body.i12.i_crit_edge ], [ @PSMSEEDCStallDelayConfig_Vega10, %while.body.i1.i.while.body.i12.i_crit_edge ]
  %804 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %device.i.i352, align 4
  %806 = ptrtoint ptr %805 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %805, align 4
  %read_ind_register.i13.i = getelementptr inbounds %struct.cgs_ops, ptr %807, i32 0, i32 2
  %808 = ptrtoint ptr %read_ind_register.i13.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %read_ind_register.i13.i, align 4
  %call10.i14.i = tail call i32 %809(ptr noundef %805, i32 noundef 3, i32 noundef %803) #5
  %mask.i15.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i11.i, i32 0, i32 1
  %810 = ptrtoint ptr %mask.i15.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load i32, ptr %mask.i15.i, align 4
  %neg.i16.i = xor i32 %811, -1
  %and.i17.i = and i32 %call10.i14.i, %neg.i16.i
  %value.i18.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i11.i, i32 0, i32 3
  %812 = ptrtoint ptr %value.i18.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load i32, ptr %value.i18.i, align 4
  %shift.i19.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i11.i, i32 0, i32 2
  %814 = ptrtoint ptr %shift.i19.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load i32, ptr %shift.i19.i, align 4
  %shl.i20.i = shl i32 %813, %815
  %and12.i21.i = and i32 %shl.i20.i, %811
  %or.i22.i = or i32 %and12.i21.i, %and.i17.i
  %816 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %device.i.i352, align 4
  %818 = ptrtoint ptr %817 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %817, align 4
  %write_ind_register.i23.i = getelementptr inbounds %struct.cgs_ops, ptr %819, i32 0, i32 3
  %820 = ptrtoint ptr %write_ind_register.i23.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %write_ind_register.i23.i, align 4
  %822 = ptrtoint ptr %config_regs.addr.099.i11.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load i32, ptr %config_regs.addr.099.i11.i, align 4
  tail call void %821(ptr noundef %817, i32 noundef 3, i32 noundef %823, i32 noundef %or.i22.i) #5
  %incdec.ptr.i24.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i11.i, i32 1
  %824 = ptrtoint ptr %incdec.ptr.i24.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %incdec.ptr.i24.i, align 4
  %cmp7.not.i25.i = icmp eq i32 %825, -1
  br i1 %cmp7.not.i25.i, label %while.body.i12.i.while.body.i29.i_crit_edge, label %while.body.i12.i.while.body.i12.i_crit_edge

while.body.i12.i.while.body.i12.i_crit_edge:      ; preds = %while.body.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i12.i

while.body.i12.i.while.body.i29.i_crit_edge:      ; preds = %while.body.i12.i
  br label %while.body.i29.i

while.body.i29.i:                                 ; preds = %while.body.i29.i.while.body.i29.i_crit_edge, %while.body.i12.i.while.body.i29.i_crit_edge
  %826 = phi i32 [ %848, %while.body.i29.i.while.body.i29.i_crit_edge ], [ 19, %while.body.i12.i.while.body.i29.i_crit_edge ]
  %config_regs.addr.099.i28.i = phi ptr [ %incdec.ptr.i41.i, %while.body.i29.i.while.body.i29.i_crit_edge ], [ @PSMSEEDCCtrlResetConfig_Vega10, %while.body.i12.i.while.body.i29.i_crit_edge ]
  %827 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %device.i.i352, align 4
  %829 = ptrtoint ptr %828 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %828, align 4
  %read_ind_register.i30.i = getelementptr inbounds %struct.cgs_ops, ptr %830, i32 0, i32 2
  %831 = ptrtoint ptr %read_ind_register.i30.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %read_ind_register.i30.i, align 4
  %call10.i31.i = tail call i32 %832(ptr noundef %828, i32 noundef 3, i32 noundef %826) #5
  %mask.i32.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i28.i, i32 0, i32 1
  %833 = ptrtoint ptr %mask.i32.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load i32, ptr %mask.i32.i, align 4
  %neg.i33.i = xor i32 %834, -1
  %and.i34.i = and i32 %call10.i31.i, %neg.i33.i
  %value.i35.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i28.i, i32 0, i32 3
  %835 = ptrtoint ptr %value.i35.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %value.i35.i, align 4
  %shift.i36.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i28.i, i32 0, i32 2
  %837 = ptrtoint ptr %shift.i36.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load i32, ptr %shift.i36.i, align 4
  %shl.i37.i = shl i32 %836, %838
  %and12.i38.i = and i32 %shl.i37.i, %834
  %or.i39.i = or i32 %and12.i38.i, %and.i34.i
  %839 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %device.i.i352, align 4
  %841 = ptrtoint ptr %840 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %840, align 4
  %write_ind_register.i40.i = getelementptr inbounds %struct.cgs_ops, ptr %842, i32 0, i32 3
  %843 = ptrtoint ptr %write_ind_register.i40.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %write_ind_register.i40.i, align 4
  %845 = ptrtoint ptr %config_regs.addr.099.i28.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load i32, ptr %config_regs.addr.099.i28.i, align 4
  tail call void %844(ptr noundef %840, i32 noundef 3, i32 noundef %846, i32 noundef %or.i39.i) #5
  %incdec.ptr.i41.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i28.i, i32 1
  %847 = ptrtoint ptr %incdec.ptr.i41.i to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load i32, ptr %incdec.ptr.i41.i, align 4
  %cmp7.not.i42.i = icmp eq i32 %848, -1
  br i1 %cmp7.not.i42.i, label %while.body.i29.i.while.body.i46.i_crit_edge, label %while.body.i29.i.while.body.i29.i_crit_edge

while.body.i29.i.while.body.i29.i_crit_edge:      ; preds = %while.body.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i29.i

while.body.i29.i.while.body.i46.i_crit_edge:      ; preds = %while.body.i29.i
  br label %while.body.i46.i

while.body.i46.i:                                 ; preds = %while.body.i46.i.while.body.i46.i_crit_edge, %while.body.i29.i.while.body.i46.i_crit_edge
  %849 = phi i32 [ %871, %while.body.i46.i.while.body.i46.i_crit_edge ], [ 19, %while.body.i29.i.while.body.i46.i_crit_edge ]
  %config_regs.addr.099.i45.i = phi ptr [ %incdec.ptr.i58.i, %while.body.i46.i.while.body.i46.i_crit_edge ], [ @PSMSEEDCCtrlConfig_Vega10, %while.body.i29.i.while.body.i46.i_crit_edge ]
  %850 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %device.i.i352, align 4
  %852 = ptrtoint ptr %851 to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %851, align 4
  %read_ind_register.i47.i = getelementptr inbounds %struct.cgs_ops, ptr %853, i32 0, i32 2
  %854 = ptrtoint ptr %read_ind_register.i47.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %read_ind_register.i47.i, align 4
  %call10.i48.i = tail call i32 %855(ptr noundef %851, i32 noundef 3, i32 noundef %849) #5
  %mask.i49.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i45.i, i32 0, i32 1
  %856 = ptrtoint ptr %mask.i49.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load i32, ptr %mask.i49.i, align 4
  %neg.i50.i = xor i32 %857, -1
  %and.i51.i = and i32 %call10.i48.i, %neg.i50.i
  %value.i52.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i45.i, i32 0, i32 3
  %858 = ptrtoint ptr %value.i52.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load i32, ptr %value.i52.i, align 4
  %shift.i53.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i45.i, i32 0, i32 2
  %860 = ptrtoint ptr %shift.i53.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load i32, ptr %shift.i53.i, align 4
  %shl.i54.i = shl i32 %859, %861
  %and12.i55.i = and i32 %shl.i54.i, %857
  %or.i56.i = or i32 %and12.i55.i, %and.i51.i
  %862 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %device.i.i352, align 4
  %864 = ptrtoint ptr %863 to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %863, align 4
  %write_ind_register.i57.i = getelementptr inbounds %struct.cgs_ops, ptr %865, i32 0, i32 3
  %866 = ptrtoint ptr %write_ind_register.i57.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %write_ind_register.i57.i, align 4
  %868 = ptrtoint ptr %config_regs.addr.099.i45.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load i32, ptr %config_regs.addr.099.i45.i, align 4
  tail call void %867(ptr noundef %863, i32 noundef 3, i32 noundef %869, i32 noundef %or.i56.i) #5
  %incdec.ptr.i58.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i45.i, i32 1
  %870 = ptrtoint ptr %incdec.ptr.i58.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %incdec.ptr.i58.i, align 4
  %cmp7.not.i59.i = icmp eq i32 %871, -1
  br i1 %cmp7.not.i59.i, label %for.inc.i391, label %while.body.i46.i.while.body.i46.i_crit_edge

while.body.i46.i.while.body.i46.i_crit_edge:      ; preds = %while.body.i46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i46.i

for.inc.i391:                                     ; preds = %while.body.i46.i
  %inc.i389 = add nuw i32 %count.0129.i, 1
  %exitcond.not.i390 = icmp eq i32 %inc.i389, %717
  br i1 %exitcond.not.i390, label %for.inc.i391.for.end.i392_crit_edge, label %for.inc.i391.for.body.i370_crit_edge

for.inc.i391.for.body.i370_crit_edge:             ; preds = %for.inc.i391
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i370

for.inc.i391.for.end.i392_crit_edge:              ; preds = %for.inc.i391
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i392

for.end.i392:                                     ; preds = %for.inc.i391.for.end.i392_crit_edge, %sw.bb65.for.end.i392_crit_edge
  %virt28.i = getelementptr inbounds %struct.amdgpu_device, ptr %715, i32 0, i32 132
  %872 = ptrtoint ptr %virt28.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load i32, ptr %virt28.i, align 8
  %and30.i = and i32 %873, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %for.end.i392.cond.false53.i_crit_edge, label %land.lhs.true32.i

for.end.i392.cond.false53.i_crit_edge:            ; preds = %for.end.i392
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false53.i

land.lhs.true32.i:                                ; preds = %for.end.i392
  %funcs35.i = getelementptr inbounds %struct.amdgpu_device, ptr %715, i32 0, i32 106, i32 2, i32 15
  %874 = ptrtoint ptr %funcs35.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %funcs35.i, align 4
  %tobool36.not.i = icmp eq ptr %875, null
  br i1 %tobool36.not.i, label %land.lhs.true32.i.cond.false53.i_crit_edge, label %land.lhs.true37.i

land.lhs.true32.i.cond.false53.i_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false53.i

land.lhs.true37.i:                                ; preds = %land.lhs.true32.i
  %sriov_wreg41.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %875, i32 0, i32 12
  %876 = ptrtoint ptr %sriov_wreg41.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %sriov_wreg41.i, align 4
  %tobool42.not.i = icmp eq ptr %877, null
  br i1 %tobool42.not.i, label %land.lhs.true37.i.cond.false53.i_crit_edge, label %cond.true43.i

land.lhs.true37.i.cond.false53.i_crit_edge:       ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false53.i

cond.true43.i:                                    ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx49.i = getelementptr %struct.amdgpu_device, ptr %715, i32 0, i32 130, i32 1
  %878 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %arrayidx49.i, align 8
  %arrayidx51.i = getelementptr i32, ptr %879, i32 1
  %880 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load i32, ptr %arrayidx51.i, align 4
  %add52.i = add i32 %881, 8704
  tail call void %877(ptr noundef %715, i32 noundef %add52.i, i32 noundef -536870912, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end59.i

cond.false53.i:                                   ; preds = %land.lhs.true37.i.cond.false53.i_crit_edge, %land.lhs.true32.i.cond.false53.i_crit_edge, %for.end.i392.cond.false53.i_crit_edge
  %arrayidx55.i = getelementptr %struct.amdgpu_device, ptr %715, i32 0, i32 130, i32 1
  %882 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %arrayidx55.i, align 8
  %arrayidx57.i = getelementptr i32, ptr %883, i32 1
  %884 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load i32, ptr %arrayidx57.i, align 4
  %add58.i = add i32 %885, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %715, i32 noundef %add58.i, i32 noundef -536870912, i32 noundef 0) #5
  br label %cond.end59.i

cond.end59.i:                                     ; preds = %cond.false53.i, %cond.true43.i
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i361) #5
  tail call fastcc void @vega10_didt_set_mask(ptr noundef %hwmgr, i1 noundef zeroext true) #5
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %715) #5
  %886 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %device.i.i352, align 4
  %888 = ptrtoint ptr %887 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %887, align 4
  %890 = ptrtoint ptr %889 to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %889, align 4
  %call.i63.i393 = tail call i32 %891(ptr noundef %887, i32 noundef 4761) #5
  %or.i71.i = or i32 %call.i63.i393, 1
  %892 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %device.i.i352, align 4
  %894 = ptrtoint ptr %893 to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %893, align 4
  %write_register.i72.i394 = getelementptr inbounds %struct.cgs_ops, ptr %895, i32 0, i32 1
  %896 = ptrtoint ptr %write_register.i72.i394 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %write_register.i72.i394, align 4
  tail call void %897(ptr noundef %893, i32 noundef 4761, i32 noundef %or.i71.i) #5
  %898 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %device.i.i352, align 4
  %900 = ptrtoint ptr %899 to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %899, align 4
  %902 = ptrtoint ptr %901 to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %901, align 4
  %call.i63.1.i395 = tail call i32 %903(ptr noundef %899, i32 noundef 4761) #5
  %and.i66.1.i396 = and i32 %call.i63.1.i395, -32767
  %or.i71.1.i = or i32 %and.i66.1.i396, 1800
  %904 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %device.i.i352, align 4
  %906 = ptrtoint ptr %905 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %905, align 4
  %write_register.i72.1.i397 = getelementptr inbounds %struct.cgs_ops, ptr %907, i32 0, i32 1
  %908 = ptrtoint ptr %write_register.i72.1.i397 to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %write_register.i72.1.i397, align 4
  tail call void %909(ptr noundef %905, i32 noundef 4761, i32 noundef %or.i71.1.i) #5
  %910 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %device.i.i352, align 4
  %912 = ptrtoint ptr %911 to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %911, align 4
  %914 = ptrtoint ptr %913 to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %913, align 4
  %call.i63.2.i398 = tail call i32 %915(ptr noundef %911, i32 noundef 4761) #5
  %and.i66.2.i399 = and i32 %call.i63.2.i398, -1015809
  %or.i71.2.i = or i32 %and.i66.2.i399, 32768
  %916 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %device.i.i352, align 4
  %918 = ptrtoint ptr %917 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %917, align 4
  %write_register.i72.2.i400 = getelementptr inbounds %struct.cgs_ops, ptr %919, i32 0, i32 1
  %920 = ptrtoint ptr %write_register.i72.2.i400 to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %write_register.i72.2.i400, align 4
  tail call void %921(ptr noundef %917, i32 noundef 4761, i32 noundef %or.i71.2.i) #5
  %922 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %device.i.i352, align 4
  %924 = ptrtoint ptr %923 to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %923, align 4
  %926 = ptrtoint ptr %925 to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %925, align 4
  %call.i63.3.i401 = tail call i32 %927(ptr noundef %923, i32 noundef 4761) #5
  %or.i71.3.i = or i32 %call.i63.3.i401, 1048576
  %928 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %device.i.i352, align 4
  %930 = ptrtoint ptr %929 to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %929, align 4
  %write_register.i72.3.i402 = getelementptr inbounds %struct.cgs_ops, ptr %931, i32 0, i32 1
  %932 = ptrtoint ptr %write_register.i72.3.i402 to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %write_register.i72.3.i402, align 4
  tail call void %933(ptr noundef %929, i32 noundef 4761, i32 noundef %or.i71.3.i) #5
  %934 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %device.i.i352, align 4
  %936 = ptrtoint ptr %935 to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %935, align 4
  %938 = ptrtoint ptr %937 to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %937, align 4
  %call.i63.4.i403 = tail call i32 %939(ptr noundef %935, i32 noundef 4761) #5
  %or.i71.4.i = or i32 %call.i63.4.i403, 2097152
  %940 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %device.i.i352, align 4
  %942 = ptrtoint ptr %941 to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %941, align 4
  %write_register.i72.4.i404 = getelementptr inbounds %struct.cgs_ops, ptr %943, i32 0, i32 1
  %944 = ptrtoint ptr %write_register.i72.4.i404 to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load ptr, ptr %write_register.i72.4.i404, align 4
  tail call void %945(ptr noundef %941, i32 noundef 4761, i32 noundef %or.i71.4.i) #5
  %arrayidx.i.i405 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %946 = ptrtoint ptr %arrayidx.i.i405 to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load i32, ptr %arrayidx.i.i405, align 4
  %and1.i.i406 = and i32 %947, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i406)
  %cmp.i.not.i407 = icmp eq i32 %and1.i.i406, 0
  br i1 %cmp.i.not.i407, label %cond.end59.i.if.end66.i_crit_edge, label %while.body.i91.preheader.i

cond.end59.i.if.end66.i_crit_edge:                ; preds = %cond.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.i

while.body.i91.preheader.i:                       ; preds = %cond.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  %948 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load ptr, ptr %device.i.i352, align 4
  %950 = ptrtoint ptr %949 to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load ptr, ptr %949, align 4
  %952 = ptrtoint ptr %951 to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load ptr, ptr %951, align 4
  %call.i79.i = tail call i32 %953(ptr noundef %949, i32 noundef 4755) #5
  %and.i82.i = and i32 %call.i79.i, -2
  %954 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %device.i.i352, align 4
  %956 = ptrtoint ptr %955 to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %955, align 4
  %write_register.i88.i = getelementptr inbounds %struct.cgs_ops, ptr %957, i32 0, i32 1
  %958 = ptrtoint ptr %write_register.i88.i to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %write_register.i88.i, align 4
  tail call void %959(ptr noundef %955, i32 noundef 4755, i32 noundef %and.i82.i) #5
  %960 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load ptr, ptr %device.i.i352, align 4
  %962 = ptrtoint ptr %961 to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %961, align 4
  %964 = ptrtoint ptr %963 to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %963, align 4
  %call.i79.1.i = tail call i32 %965(ptr noundef %961, i32 noundef 4755) #5
  %or.i87.1.i = or i32 %call.i79.1.i, 2
  %966 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %device.i.i352, align 4
  %968 = ptrtoint ptr %967 to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %967, align 4
  %write_register.i88.1.i = getelementptr inbounds %struct.cgs_ops, ptr %969, i32 0, i32 1
  %970 = ptrtoint ptr %write_register.i88.1.i to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %write_register.i88.1.i, align 4
  tail call void %971(ptr noundef %967, i32 noundef 4755, i32 noundef %or.i87.1.i) #5
  %972 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %device.i.i352, align 4
  %974 = ptrtoint ptr %973 to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %973, align 4
  %976 = ptrtoint ptr %975 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %975, align 4
  %call.i79.2.i = tail call i32 %977(ptr noundef %973, i32 noundef 4755) #5
  %and.i82.2.i = and i32 %call.i79.2.i, -5
  %978 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %device.i.i352, align 4
  %980 = ptrtoint ptr %979 to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %979, align 4
  %write_register.i88.2.i = getelementptr inbounds %struct.cgs_ops, ptr %981, i32 0, i32 1
  %982 = ptrtoint ptr %write_register.i88.2.i to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %write_register.i88.2.i, align 4
  tail call void %983(ptr noundef %979, i32 noundef 4755, i32 noundef %and.i82.2.i) #5
  %984 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %device.i.i352, align 4
  %986 = ptrtoint ptr %985 to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %985, align 4
  %988 = ptrtoint ptr %987 to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load ptr, ptr %987, align 4
  %call.i79.3.i = tail call i32 %989(ptr noundef %985, i32 noundef 4755) #5
  %and.i82.3.i = and i32 %call.i79.3.i, -9
  %990 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load ptr, ptr %device.i.i352, align 4
  %992 = ptrtoint ptr %991 to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %991, align 4
  %write_register.i88.3.i = getelementptr inbounds %struct.cgs_ops, ptr %993, i32 0, i32 1
  %994 = ptrtoint ptr %write_register.i88.3.i to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load ptr, ptr %write_register.i88.3.i, align 4
  tail call void %995(ptr noundef %991, i32 noundef 4755, i32 noundef %and.i82.3.i) #5
  %996 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load ptr, ptr %device.i.i352, align 4
  %998 = ptrtoint ptr %997 to i32
  call void @__asan_load4_noabort(i32 %998)
  %999 = load ptr, ptr %997, align 4
  %1000 = ptrtoint ptr %999 to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load ptr, ptr %999, align 4
  %call.i79.4.i = tail call i32 %1001(ptr noundef %997, i32 noundef 4755) #5
  %and.i82.4.i = and i32 %call.i79.4.i, -497
  %1002 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load ptr, ptr %device.i.i352, align 4
  %1004 = ptrtoint ptr %1003 to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %1003, align 4
  %write_register.i88.4.i = getelementptr inbounds %struct.cgs_ops, ptr %1005, i32 0, i32 1
  %1006 = ptrtoint ptr %write_register.i88.4.i to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %write_register.i88.4.i, align 4
  tail call void %1007(ptr noundef %1003, i32 noundef 4755, i32 noundef %and.i82.4.i) #5
  %1008 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %device.i.i352, align 4
  %1010 = ptrtoint ptr %1009 to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %1009, align 4
  %1012 = ptrtoint ptr %1011 to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %1011, align 4
  %call.i79.5.i = tail call i32 %1013(ptr noundef %1009, i32 noundef 4755) #5
  %and.i82.5.i = and i32 %call.i79.5.i, -513
  %1014 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %device.i.i352, align 4
  %1016 = ptrtoint ptr %1015 to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %1015, align 4
  %write_register.i88.5.i = getelementptr inbounds %struct.cgs_ops, ptr %1017, i32 0, i32 1
  %1018 = ptrtoint ptr %write_register.i88.5.i to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %write_register.i88.5.i, align 4
  tail call void %1019(ptr noundef %1015, i32 noundef 4755, i32 noundef %and.i82.5.i) #5
  %1020 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %device.i.i352, align 4
  %1022 = ptrtoint ptr %1021 to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %1021, align 4
  %1024 = ptrtoint ptr %1023 to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %1023, align 4
  %call.i95.i = tail call i32 %1025(ptr noundef %1021, i32 noundef 4755) #5
  %or.i103.i = or i32 %call.i95.i, 1
  %1026 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %device.i.i352, align 4
  %1028 = ptrtoint ptr %1027 to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %1027, align 4
  %write_register.i104.i = getelementptr inbounds %struct.cgs_ops, ptr %1029, i32 0, i32 1
  %1030 = ptrtoint ptr %write_register.i104.i to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %write_register.i104.i, align 4
  tail call void %1031(ptr noundef %1027, i32 noundef 4755, i32 noundef %or.i103.i) #5
  %1032 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %device.i.i352, align 4
  %1034 = ptrtoint ptr %1033 to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %1033, align 4
  %1036 = ptrtoint ptr %1035 to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %1035, align 4
  %call.i95.1.i = tail call i32 %1037(ptr noundef %1033, i32 noundef 4755) #5
  %and.i98.1.i = and i32 %call.i95.1.i, -3
  %1038 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %device.i.i352, align 4
  %1040 = ptrtoint ptr %1039 to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load ptr, ptr %1039, align 4
  %write_register.i104.1.i = getelementptr inbounds %struct.cgs_ops, ptr %1041, i32 0, i32 1
  %1042 = ptrtoint ptr %write_register.i104.1.i to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load ptr, ptr %write_register.i104.1.i, align 4
  tail call void %1043(ptr noundef %1039, i32 noundef 4755, i32 noundef %and.i98.1.i) #5
  %1044 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %device.i.i352, align 4
  %1046 = ptrtoint ptr %1045 to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %1045, align 4
  %1048 = ptrtoint ptr %1047 to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %1047, align 4
  %call.i95.2.i = tail call i32 %1049(ptr noundef %1045, i32 noundef 4755) #5
  %and.i98.2.i = and i32 %call.i95.2.i, -5
  %1050 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %device.i.i352, align 4
  %1052 = ptrtoint ptr %1051 to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %1051, align 4
  %write_register.i104.2.i = getelementptr inbounds %struct.cgs_ops, ptr %1053, i32 0, i32 1
  %1054 = ptrtoint ptr %write_register.i104.2.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %write_register.i104.2.i, align 4
  tail call void %1055(ptr noundef %1051, i32 noundef 4755, i32 noundef %and.i98.2.i) #5
  %1056 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load ptr, ptr %device.i.i352, align 4
  %1058 = ptrtoint ptr %1057 to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %1057, align 4
  %1060 = ptrtoint ptr %1059 to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load ptr, ptr %1059, align 4
  %call.i95.3.i = tail call i32 %1061(ptr noundef %1057, i32 noundef 4755) #5
  %and.i98.3.i = and i32 %call.i95.3.i, -9
  %1062 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %device.i.i352, align 4
  %1064 = ptrtoint ptr %1063 to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load ptr, ptr %1063, align 4
  %write_register.i104.3.i = getelementptr inbounds %struct.cgs_ops, ptr %1065, i32 0, i32 1
  %1066 = ptrtoint ptr %write_register.i104.3.i to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %write_register.i104.3.i, align 4
  tail call void %1067(ptr noundef %1063, i32 noundef 4755, i32 noundef %and.i98.3.i) #5
  %1068 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %device.i.i352, align 4
  %1070 = ptrtoint ptr %1069 to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %1069, align 4
  %1072 = ptrtoint ptr %1071 to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load ptr, ptr %1071, align 4
  %call.i95.4.i = tail call i32 %1073(ptr noundef %1069, i32 noundef 4755) #5
  %and.i98.4.i = and i32 %call.i95.4.i, -497
  %1074 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %device.i.i352, align 4
  %1076 = ptrtoint ptr %1075 to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %1075, align 4
  %write_register.i104.4.i = getelementptr inbounds %struct.cgs_ops, ptr %1077, i32 0, i32 1
  %1078 = ptrtoint ptr %write_register.i104.4.i to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %write_register.i104.4.i, align 4
  tail call void %1079(ptr noundef %1075, i32 noundef 4755, i32 noundef %and.i98.4.i) #5
  %1080 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load ptr, ptr %device.i.i352, align 4
  %1082 = ptrtoint ptr %1081 to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load ptr, ptr %1081, align 4
  %1084 = ptrtoint ptr %1083 to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %1083, align 4
  %call.i95.5.i = tail call i32 %1085(ptr noundef %1081, i32 noundef 4755) #5
  %and.i98.5.i = and i32 %call.i95.5.i, -513
  %1086 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %device.i.i352, align 4
  %1088 = ptrtoint ptr %1087 to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %1087, align 4
  %write_register.i104.5.i = getelementptr inbounds %struct.cgs_ops, ptr %1089, i32 0, i32 1
  %1090 = ptrtoint ptr %write_register.i104.5.i to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load ptr, ptr %write_register.i104.5.i, align 4
  tail call void %1091(ptr noundef %1087, i32 noundef 4755, i32 noundef %and.i98.5.i) #5
  br label %if.end66.i

if.end66.i:                                       ; preds = %while.body.i91.preheader.i, %cond.end59.i.if.end66.i_crit_edge
  %1092 = ptrtoint ptr %arrayidx.i.i405 to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load i32, ptr %arrayidx.i.i405, align 4
  %and1.i110.i = and i32 %1093, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i110.i)
  %cmp.i111.not.i = icmp eq i32 %and1.i110.i, 0
  br i1 %cmp.i111.not.i, label %if.end66.i.if.then103_crit_edge, label %if.end66.i.while.body.i126.i_crit_edge

if.end66.i.while.body.i126.i_crit_edge:           ; preds = %if.end66.i
  br label %while.body.i126.i

if.end66.i.if.then103_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103

while.body.i126.i:                                ; preds = %while.body.i126.i.while.body.i126.i_crit_edge, %if.end66.i.while.body.i126.i_crit_edge
  %1094 = phi i32 [ %1116, %while.body.i126.i.while.body.i126.i_crit_edge ], [ 92677, %if.end66.i.while.body.i126.i_crit_edge ]
  %config_regs.addr.02.i113.i = phi ptr [ %incdec.ptr.i124.i, %while.body.i126.i.while.body.i126.i_crit_edge ], [ @AvfsPSMInitConfig_vega10, %if.end66.i.while.body.i126.i_crit_edge ]
  %1095 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load ptr, ptr %device.i.i352, align 4
  %1097 = ptrtoint ptr %1096 to i32
  call void @__asan_load4_noabort(i32 %1097)
  %1098 = load ptr, ptr %1096, align 4
  %1099 = ptrtoint ptr %1098 to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load ptr, ptr %1098, align 4
  %call.i114.i = tail call i32 %1100(ptr noundef %1096, i32 noundef %1094) #5
  %mask.i115.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.02.i113.i, i32 0, i32 1
  %1101 = ptrtoint ptr %mask.i115.i to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load i32, ptr %mask.i115.i, align 4
  %neg.i116.i = xor i32 %1102, -1
  %and.i117.i = and i32 %call.i114.i, %neg.i116.i
  %value.i118.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.02.i113.i, i32 0, i32 3
  %1103 = ptrtoint ptr %value.i118.i to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load i32, ptr %value.i118.i, align 4
  %shift.i119.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.02.i113.i, i32 0, i32 2
  %1105 = ptrtoint ptr %shift.i119.i to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load i32, ptr %shift.i119.i, align 4
  %shl.i120.i = shl i32 %1104, %1106
  %and4.i121.i = and i32 %shl.i120.i, %1102
  %or.i122.i = or i32 %and4.i121.i, %and.i117.i
  %1107 = ptrtoint ptr %device.i.i352 to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load ptr, ptr %device.i.i352, align 4
  %1109 = ptrtoint ptr %1108 to i32
  call void @__asan_load4_noabort(i32 %1109)
  %1110 = load ptr, ptr %1108, align 4
  %write_register.i123.i = getelementptr inbounds %struct.cgs_ops, ptr %1110, i32 0, i32 1
  %1111 = ptrtoint ptr %write_register.i123.i to i32
  call void @__asan_load4_noabort(i32 %1111)
  %1112 = load ptr, ptr %write_register.i123.i, align 4
  %1113 = ptrtoint ptr %config_regs.addr.02.i113.i to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load i32, ptr %config_regs.addr.02.i113.i, align 4
  tail call void %1112(ptr noundef %1108, i32 noundef %1114, i32 noundef %or.i122.i) #5
  %incdec.ptr.i124.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.02.i113.i, i32 1
  %1115 = ptrtoint ptr %incdec.ptr.i124.i to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load i32, ptr %incdec.ptr.i124.i, align 4
  %cmp.not.i125.i = icmp eq i32 %1116, -1
  br i1 %cmp.not.i125.i, label %while.body.i126.i.if.then103_crit_edge, label %while.body.i126.i.while.body.i126.i_crit_edge

while.body.i126.i.while.body.i126.i_crit_edge:    ; preds = %while.body.i126.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i126.i

while.body.i126.i.if.then103_crit_edge:           ; preds = %while.body.i126.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103

sw.bb83:                                          ; preds = %if.end12
  %1117 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %hwmgr, align 4
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %1118) #5
  %grbm_idx_mutex.i408 = getelementptr inbounds %struct.amdgpu_device, ptr %1118, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i408, i32 noundef 0) #5
  %virt.i409 = getelementptr inbounds %struct.amdgpu_device, ptr %1118, i32 0, i32 132
  %1119 = ptrtoint ptr %virt.i409 to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load i32, ptr %virt.i409, align 8
  %and.i410 = and i32 %1120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i410)
  %tobool.not.i411 = icmp eq i32 %and.i410, 0
  br i1 %tobool.not.i411, label %sw.bb83.cond.false.i418_crit_edge, label %land.lhs.true.i413

sw.bb83.cond.false.i418_crit_edge:                ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i418

land.lhs.true.i413:                               ; preds = %sw.bb83
  %funcs.i412 = getelementptr inbounds %struct.amdgpu_device, ptr %1118, i32 0, i32 106, i32 2, i32 15
  %1121 = ptrtoint ptr %funcs.i412 to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load ptr, ptr %funcs.i412, align 4
  %tobool2.not.i = icmp eq ptr %1122, null
  br i1 %tobool2.not.i, label %land.lhs.true.i413.cond.false.i418_crit_edge, label %land.lhs.true3.i

land.lhs.true.i413.cond.false.i418_crit_edge:     ; preds = %land.lhs.true.i413
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i418

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i413
  %sriov_wreg.i414 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %1122, i32 0, i32 12
  %1123 = ptrtoint ptr %sriov_wreg.i414 to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load ptr, ptr %sriov_wreg.i414, align 4
  %tobool7.not.i = icmp eq ptr %1124, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i418_crit_edge, label %cond.true.i417

land.lhs.true3.i.cond.false.i418_crit_edge:       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i418

cond.true.i417:                                   ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i415 = getelementptr %struct.amdgpu_device, ptr %1118, i32 0, i32 130, i32 1
  %1125 = ptrtoint ptr %arrayidx.i415 to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load ptr, ptr %arrayidx.i415, align 8
  %arrayidx13.i = getelementptr i32, ptr %1126, i32 1
  %1127 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load i32, ptr %arrayidx13.i, align 4
  %add.i416 = add i32 %1128, 8704
  tail call void %1124(ptr noundef %1118, i32 noundef %add.i416, i32 noundef -536870912, i32 noundef 0, i32 noundef 1) #5
  br label %cond.end.i420

cond.false.i418:                                  ; preds = %land.lhs.true3.i.cond.false.i418_crit_edge, %land.lhs.true.i413.cond.false.i418_crit_edge, %sw.bb83.cond.false.i418_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %1118, i32 0, i32 130, i32 1
  %1129 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load ptr, ptr %arrayidx15.i, align 8
  %arrayidx17.i = getelementptr i32, ptr %1130, i32 1
  %1131 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %1131)
  %1132 = load i32, ptr %arrayidx17.i, align 4
  %add18.i = add i32 %1132, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %1118, i32 noundef %add18.i, i32 noundef -536870912, i32 noundef 0) #5
  br label %cond.end.i420

cond.end.i420:                                    ; preds = %cond.false.i418, %cond.true.i417
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i408) #5
  %device39.i.i419 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %while.body.i.i435

while.body.i.i435:                                ; preds = %while.body.i.i435.while.body.i.i435_crit_edge, %cond.end.i420
  %1133 = phi i32 [ %1155, %while.body.i.i435.while.body.i.i435_crit_edge ], [ 21, %cond.end.i420 ]
  %config_regs.addr.099.i.i421 = phi ptr [ %incdec.ptr.i.i433, %while.body.i.i435.while.body.i.i435_crit_edge ], [ @SEEDCForceStallPatternConfig_Vega10, %cond.end.i420 ]
  %1134 = ptrtoint ptr %device39.i.i419 to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %device39.i.i419, align 4
  %1136 = ptrtoint ptr %1135 to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %1135, align 4
  %read_ind_register.i.i422 = getelementptr inbounds %struct.cgs_ops, ptr %1137, i32 0, i32 2
  %1138 = ptrtoint ptr %read_ind_register.i.i422 to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %read_ind_register.i.i422, align 4
  %call10.i.i423 = tail call i32 %1139(ptr noundef %1135, i32 noundef 3, i32 noundef %1133) #5
  %mask.i.i424 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i421, i32 0, i32 1
  %1140 = ptrtoint ptr %mask.i.i424 to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load i32, ptr %mask.i.i424, align 4
  %neg.i.i425 = xor i32 %1141, -1
  %and.i.i426 = and i32 %call10.i.i423, %neg.i.i425
  %value.i.i427 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i421, i32 0, i32 3
  %1142 = ptrtoint ptr %value.i.i427 to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load i32, ptr %value.i.i427, align 4
  %shift.i.i428 = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i421, i32 0, i32 2
  %1144 = ptrtoint ptr %shift.i.i428 to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load i32, ptr %shift.i.i428, align 4
  %shl.i.i429 = shl i32 %1143, %1145
  %and12.i.i430 = and i32 %shl.i.i429, %1141
  %or.i.i431 = or i32 %and12.i.i430, %and.i.i426
  %1146 = ptrtoint ptr %device39.i.i419 to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %device39.i.i419, align 4
  %1148 = ptrtoint ptr %1147 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %1147, align 4
  %write_ind_register.i.i432 = getelementptr inbounds %struct.cgs_ops, ptr %1149, i32 0, i32 3
  %1150 = ptrtoint ptr %write_ind_register.i.i432 to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %write_ind_register.i.i432, align 4
  %1152 = ptrtoint ptr %config_regs.addr.099.i.i421 to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load i32, ptr %config_regs.addr.099.i.i421, align 4
  tail call void %1151(ptr noundef %1147, i32 noundef 3, i32 noundef %1153, i32 noundef %or.i.i431) #5
  %incdec.ptr.i.i433 = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i.i421, i32 1
  %1154 = ptrtoint ptr %incdec.ptr.i.i433 to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load i32, ptr %incdec.ptr.i.i433, align 4
  %cmp7.not.i.i434 = icmp eq i32 %1155, -1
  br i1 %cmp7.not.i.i434, label %while.body.i.i435.while.body.i41.i_crit_edge, label %while.body.i.i435.while.body.i.i435_crit_edge

while.body.i.i435.while.body.i.i435_crit_edge:    ; preds = %while.body.i.i435
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i435

while.body.i.i435.while.body.i41.i_crit_edge:     ; preds = %while.body.i.i435
  br label %while.body.i41.i

while.body.i41.i:                                 ; preds = %while.body.i41.i.while.body.i41.i_crit_edge, %while.body.i.i435.while.body.i41.i_crit_edge
  %1156 = phi i32 [ %1178, %while.body.i41.i.while.body.i41.i_crit_edge ], [ 19, %while.body.i.i435.while.body.i41.i_crit_edge ]
  %config_regs.addr.099.i40.i = phi ptr [ %incdec.ptr.i53.i, %while.body.i41.i.while.body.i41.i_crit_edge ], [ @SEEDCCtrlForceStallConfig_Vega10, %while.body.i.i435.while.body.i41.i_crit_edge ]
  %1157 = ptrtoint ptr %device39.i.i419 to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load ptr, ptr %device39.i.i419, align 4
  %1159 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load ptr, ptr %1158, align 4
  %read_ind_register.i42.i = getelementptr inbounds %struct.cgs_ops, ptr %1160, i32 0, i32 2
  %1161 = ptrtoint ptr %read_ind_register.i42.i to i32
  call void @__asan_load4_noabort(i32 %1161)
  %1162 = load ptr, ptr %read_ind_register.i42.i, align 4
  %call10.i43.i = tail call i32 %1162(ptr noundef %1158, i32 noundef 3, i32 noundef %1156) #5
  %mask.i44.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i40.i, i32 0, i32 1
  %1163 = ptrtoint ptr %mask.i44.i to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load i32, ptr %mask.i44.i, align 4
  %neg.i45.i = xor i32 %1164, -1
  %and.i46.i = and i32 %call10.i43.i, %neg.i45.i
  %value.i47.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i40.i, i32 0, i32 3
  %1165 = ptrtoint ptr %value.i47.i to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load i32, ptr %value.i47.i, align 4
  %shift.i48.i = getelementptr inbounds %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i40.i, i32 0, i32 2
  %1167 = ptrtoint ptr %shift.i48.i to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load i32, ptr %shift.i48.i, align 4
  %shl.i49.i = shl i32 %1166, %1168
  %and12.i50.i = and i32 %shl.i49.i, %1164
  %or.i51.i = or i32 %and12.i50.i, %and.i46.i
  %1169 = ptrtoint ptr %device39.i.i419 to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load ptr, ptr %device39.i.i419, align 4
  %1171 = ptrtoint ptr %1170 to i32
  call void @__asan_load4_noabort(i32 %1171)
  %1172 = load ptr, ptr %1170, align 4
  %write_ind_register.i52.i = getelementptr inbounds %struct.cgs_ops, ptr %1172, i32 0, i32 3
  %1173 = ptrtoint ptr %write_ind_register.i52.i to i32
  call void @__asan_load4_noabort(i32 %1173)
  %1174 = load ptr, ptr %write_ind_register.i52.i, align 4
  %1175 = ptrtoint ptr %config_regs.addr.099.i40.i to i32
  call void @__asan_load4_noabort(i32 %1175)
  %1176 = load i32, ptr %config_regs.addr.099.i40.i, align 4
  tail call void %1174(ptr noundef %1170, i32 noundef 3, i32 noundef %1176, i32 noundef %or.i51.i) #5
  %incdec.ptr.i53.i = getelementptr %struct.vega10_didt_config_reg, ptr %config_regs.addr.099.i40.i, i32 1
  %1177 = ptrtoint ptr %incdec.ptr.i53.i to i32
  call void @__asan_load4_noabort(i32 %1177)
  %1178 = load i32, ptr %incdec.ptr.i53.i, align 4
  %cmp7.not.i54.i = icmp eq i32 %1178, -1
  br i1 %cmp7.not.i54.i, label %while.body.i41.i.if.then103.sink.split_crit_edge, label %while.body.i41.i.while.body.i41.i_crit_edge

while.body.i41.i.while.body.i41.i_crit_edge:      ; preds = %while.body.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i41.i

while.body.i41.i.if.then103.sink.split_crit_edge: ; preds = %while.body.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103.sink.split

if.then103.sink.split.sink.split:                 ; preds = %cond.false56.i, %cond.true46.i, %cond.false62.i, %cond.true52.i
  %grbm_idx_mutex.i.sink = phi ptr [ %grbm_idx_mutex.i, %cond.true52.i ], [ %grbm_idx_mutex.i, %cond.false62.i ], [ %grbm_idx_mutex.i241, %cond.true46.i ], [ %grbm_idx_mutex.i241, %cond.false56.i ]
  %.sink.ph = phi ptr [ %10, %cond.true52.i ], [ %10, %cond.false62.i ], [ %520, %cond.true46.i ], [ %520, %cond.false56.i ]
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i.sink) #5
  br label %if.then103.sink.split

if.then103.sink.split:                            ; preds = %if.then103.sink.split.sink.split, %while.body.i41.i.if.then103.sink.split_crit_edge
  %.sink442 = phi i1 [ true, %if.then103.sink.split.sink.split ], [ false, %while.body.i41.i.if.then103.sink.split_crit_edge ]
  %.sink = phi ptr [ %.sink.ph, %if.then103.sink.split.sink.split ], [ %1118, %while.body.i41.i.if.then103.sink.split_crit_edge ]
  tail call fastcc void @vega10_didt_set_mask(ptr noundef %hwmgr, i1 noundef zeroext %.sink442) #5
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %.sink) #5
  br label %if.then103

if.then103:                                       ; preds = %if.then103.sink.split, %while.body.i126.i.if.then103_crit_edge, %if.end66.i.if.then103_crit_edge, %while.body.i94.i.if.then103_crit_edge, %if.end64.i.if.then103_crit_edge
  %smu_feature_bitmap = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 27, i32 3
  %1179 = ptrtoint ptr %smu_feature_bitmap to i32
  call void @__asan_load4_noabort(i32 %1179)
  %1180 = load i32, ptr %smu_feature_bitmap, align 4
  %call106 = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext true, i32 noundef %1180) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp108 = icmp eq i32 %call106, 0
  br i1 %cmp108, label %do.end122, label %if.then110

if.then110:                                       ; preds = %if.then103
  %call111 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_enable_didt_config._rs.24, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then110.cleanup_crit_edge, label %do.end116

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end116:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.27) #8
  br label %cleanup

do.end122:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  %1181 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %1181)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end122, %do.end116, %if.then110.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call106, %do.end116 ], [ %call106, %if.then110.cleanup_crit_edge ], [ 0, %do.end122 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vega10_enable_smc_features(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_disable_didt_config(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %arrayidx = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 27
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %enabled = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 27, i32 1
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %do.body5, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vega10_disable_didt_config.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vega10_disable_didt_config, %if.then9)) #5
          to label %if.end12 [label %if.then9], !srcloc !175

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vega10_disable_didt_config.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.30) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body5, %if.then.if.end12_crit_edge
  %didt_mode = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %didt_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %didt_mode, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %7, label %if.end12.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %sw.bb29
    i8 3, label %sw.bb47
    i8 1, label %if.end12.sw.bb65_crit_edge
    i8 4, label %if.end12.sw.bb65_crit_edge175
    i8 5, label %if.end12.sw.bb65_crit_edge176
    i8 6, label %sw.bb83
  ]

if.end12.sw.bb65_crit_edge176:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65

if.end12.sw.bb65_crit_edge175:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65

if.end12.sw.bb65_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb65

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwmgr, align 4
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %10) #5
  tail call fastcc void @vega10_didt_set_mask(ptr noundef %hwmgr, i1 noundef zeroext false) #5
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %10) #5
  br label %if.then103

sw.bb29:                                          ; preds = %if.end12
  %11 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwmgr, align 4
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %12) #5
  tail call fastcc void @vega10_didt_set_mask(ptr noundef %hwmgr, i1 noundef zeroext false) #5
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %12) #5
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.not.i, label %sw.bb29.if.end.i_crit_edge, label %if.then.i

sw.bb29.if.end.i_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %15 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write_register.i = getelementptr inbounds %struct.cgs_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_register.i, align 4
  tail call void %20(ptr noundef %16, i32 noundef 4750, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb29.if.end.i_crit_edge
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i2.i = and i32 %22, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i2.i)
  %cmp.i3.not.i = icmp eq i32 %and1.i2.i, 0
  br i1 %cmp.i3.not.i, label %if.end.i.if.then103_crit_edge, label %if.then7.i

if.end.i.if.then103_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %device.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %23 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i.i = tail call i32 %28(ptr noundef %24, i32 noundef 92674) #5
  %29 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %write_register.i.i = getelementptr inbounds %struct.cgs_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_register.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register.i.i, align 4
  tail call void %34(ptr noundef %30, i32 noundef 92674, i32 noundef 95) #5
  %35 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call.i.1.i = tail call i32 %40(ptr noundef %36, i32 noundef 92677) #5
  %41 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %write_register.i.1.i = getelementptr inbounds %struct.cgs_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_register.i.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_register.i.1.i, align 4
  tail call void %46(ptr noundef %42, i32 noundef 92677, i32 noundef 1) #5
  %47 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call.i.2.i = tail call i32 %52(ptr noundef %48, i32 noundef 92678) #5
  %and.i.2.i = and i32 %call.i.2.i, -2
  %53 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %write_register.i.2.i = getelementptr inbounds %struct.cgs_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_register.i.2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_register.i.2.i, align 4
  tail call void %58(ptr noundef %54, i32 noundef 92678, i32 noundef %and.i.2.i) #5
  %59 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %call.i.3.i = tail call i32 %64(ptr noundef %60, i32 noundef 92673) #5
  %65 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %write_register.i.3.i = getelementptr inbounds %struct.cgs_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_register.i.3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_register.i.3.i, align 4
  tail call void %70(ptr noundef %66, i32 noundef 92673, i32 noundef 12327) #5
  br label %if.then103

sw.bb47:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hwmgr, align 4
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %72) #5
  tail call fastcc void @vega10_didt_set_mask(ptr noundef %hwmgr, i1 noundef zeroext false) #5
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %72) #5
  br label %if.then103

sw.bb65:                                          ; preds = %if.end12.sw.bb65_crit_edge, %if.end12.sw.bb65_crit_edge175, %if.end12.sw.bb65_crit_edge176
  %73 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hwmgr, align 4
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %74) #5
  tail call fastcc void @vega10_didt_set_mask(ptr noundef %hwmgr, i1 noundef zeroext false) #5
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %74) #5
  %arrayidx.i.i152 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx.i.i152 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i152, align 4
  %and1.i.i153 = and i32 %76, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i153)
  %cmp.i.not.i154 = icmp eq i32 %and1.i.i153, 0
  br i1 %cmp.i.not.i154, label %sw.bb65.if.end.i160_crit_edge, label %if.then.i157

sw.bb65.if.end.i160_crit_edge:                    ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i160

if.then.i157:                                     ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #7
  %device.i155 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %77 = ptrtoint ptr %device.i155 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device.i155, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %write_register.i156 = getelementptr inbounds %struct.cgs_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_register.i156 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_register.i156, align 4
  tail call void %82(ptr noundef %78, i32 noundef 4755, i32 noundef 0) #5
  br label %if.end.i160

if.end.i160:                                      ; preds = %if.then.i157, %sw.bb65.if.end.i160_crit_edge
  %83 = ptrtoint ptr %arrayidx.i.i152 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i152, align 4
  %and1.i2.i158 = and i32 %84, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i2.i158)
  %cmp.i3.not.i159 = icmp eq i32 %and1.i2.i158, 0
  br i1 %cmp.i3.not.i159, label %if.end.i160.if.then103_crit_edge, label %if.then7.i171

if.end.i160.if.then103_crit_edge:                 ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then103

if.then7.i171:                                    ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #7
  %device.i.i161 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %85 = ptrtoint ptr %device.i.i161 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device.i.i161, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %call.i.i162 = tail call i32 %90(ptr noundef %86, i32 noundef 92674) #5
  %91 = ptrtoint ptr %device.i.i161 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device.i.i161, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %write_register.i.i163 = getelementptr inbounds %struct.cgs_ops, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %write_register.i.i163 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_register.i.i163, align 4
  tail call void %96(ptr noundef %92, i32 noundef 92674, i32 noundef 95) #5
  %97 = ptrtoint ptr %device.i.i161 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device.i.i161, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %call.i.1.i164 = tail call i32 %102(ptr noundef %98, i32 noundef 92677) #5
  %103 = ptrtoint ptr %device.i.i161 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device.i.i161, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %write_register.i.1.i165 = getelementptr inbounds %struct.cgs_ops, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_register.i.1.i165 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write_register.i.1.i165, align 4
  tail call void %108(ptr noundef %104, i32 noundef 92677, i32 noundef 1) #5
  %109 = ptrtoint ptr %device.i.i161 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device.i.i161, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %call.i.2.i166 = tail call i32 %114(ptr noundef %110, i32 noundef 92678) #5
  %and.i.2.i167 = and i32 %call.i.2.i166, -2
  %115 = ptrtoint ptr %device.i.i161 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %device.i.i161, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %write_register.i.2.i168 = getelementptr inbounds %struct.cgs_ops, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write_register.i.2.i168 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write_register.i.2.i168, align 4
  tail call void %120(ptr noundef %116, i32 noundef 92678, i32 noundef %and.i.2.i167) #5
  %121 = ptrtoint ptr %device.i.i161 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %device.i.i161, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %call.i.3.i169 = tail call i32 %126(ptr noundef %122, i32 noundef 92673) #5
  %127 = ptrtoint ptr %device.i.i161 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device.i.i161, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %write_register.i.3.i170 = getelementptr inbounds %struct.cgs_ops, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %write_register.i.3.i170 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_register.i.3.i170, align 4
  tail call void %132(ptr noundef %128, i32 noundef 92673, i32 noundef 12327) #5
  br label %if.then103

sw.bb83:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %133 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hwmgr, align 4
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %134) #5
  tail call fastcc void @vega10_didt_set_mask(ptr noundef %hwmgr, i1 noundef zeroext false) #5
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %134) #5
  br label %if.then103

if.then103:                                       ; preds = %sw.bb83, %if.then7.i171, %if.end.i160.if.then103_crit_edge, %sw.bb47, %if.then7.i, %if.end.i.if.then103_crit_edge, %sw.bb
  %smu_feature_bitmap = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 27, i32 3
  %135 = ptrtoint ptr %smu_feature_bitmap to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %smu_feature_bitmap, align 4
  %call106 = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i32 noundef %136) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp108 = icmp eq i32 %call106, 0
  br i1 %cmp108, label %do.end122, label %if.then110

if.then110:                                       ; preds = %if.then103
  %call111 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_disable_didt_config._rs.48, ptr noundef nonnull @.str.28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then110.cleanup_crit_edge, label %do.end116

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end116:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.51) #8
  br label %cleanup

do.end122:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  %137 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end122, %do.end116, %if.then110.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call106, %do.end116 ], [ %call106, %if.then110.cleanup_crit_edge ], [ 0, %do.end122 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vega10_initialize_power_tune_defaults(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %2 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pptable, align 4
  %tdp_table1 = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %tdp_table1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tdp_table1, align 4
  %pp_table = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14
  %usMaximumPowerDeliveryLimit = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %usMaximumPowerDeliveryLimit to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %usMaximumPowerDeliveryLimit, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %pp_table to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %pp_table, align 4
  %usTDC = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %usTDC to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %usTDC, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %TdcLimit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 1
  %13 = ptrtoint ptr %TdcLimit to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %TdcLimit, align 2
  %usEDCLimit = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %usEDCLimit to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %usEDCLimit, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %EdcLimit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 2
  %17 = ptrtoint ptr %EdcLimit to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %EdcLimit, align 4
  %usTemperatureLimitTedge = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 18
  %18 = ptrtoint ptr %usTemperatureLimitTedge to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %usTemperatureLimitTedge, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %TedgeLimit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 3
  %21 = ptrtoint ptr %TedgeLimit to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %TedgeLimit, align 2
  %usTemperatureLimitHotspot = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 19
  %22 = ptrtoint ptr %usTemperatureLimitHotspot to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %usTemperatureLimitHotspot, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %ThotspotLimit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 4
  %25 = ptrtoint ptr %ThotspotLimit to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %ThotspotLimit, align 4
  %usTemperatureLimitHBM = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 22
  %26 = ptrtoint ptr %usTemperatureLimitHBM to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %usTemperatureLimitHBM, align 4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %ThbmLimit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 5
  %29 = ptrtoint ptr %ThbmLimit to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %ThbmLimit, align 2
  %usTemperatureLimitVrVddc = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 23
  %30 = ptrtoint ptr %usTemperatureLimitVrVddc to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %usTemperatureLimitVrVddc, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %Tvr_socLimit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 6
  %33 = ptrtoint ptr %Tvr_socLimit to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %Tvr_socLimit, align 4
  %usTemperatureLimitVrMvdd = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 24
  %34 = ptrtoint ptr %usTemperatureLimitVrMvdd to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %usTemperatureLimitVrMvdd, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %Tvr_memLimit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 7
  %37 = ptrtoint ptr %Tvr_memLimit to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %Tvr_memLimit, align 2
  %usTemperatureLimitLiquid1 = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 20
  %38 = ptrtoint ptr %usTemperatureLimitLiquid1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %usTemperatureLimitLiquid1, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %Tliquid1Limit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 8
  %41 = ptrtoint ptr %Tliquid1Limit to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %Tliquid1Limit, align 4
  %usTemperatureLimitLiquid2 = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 21
  %42 = ptrtoint ptr %usTemperatureLimitLiquid2 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %usTemperatureLimitLiquid2, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %Tliquid2Limit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 9
  %45 = ptrtoint ptr %Tliquid2Limit to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %Tliquid2Limit, align 2
  %usTemperatureLimitPlx = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 25
  %46 = ptrtoint ptr %usTemperatureLimitPlx to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %usTemperatureLimitPlx, align 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %TplxLimit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 10
  %49 = ptrtoint ptr %TplxLimit to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %TplxLimit, align 4
  %LoadLineSlope = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 19
  %50 = ptrtoint ptr %LoadLineSlope to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %LoadLineSlope, align 2
  %mul = shl i16 %51, 8
  %LoadLineResistance = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 11
  %52 = ptrtoint ptr %LoadLineResistance to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %mul, ptr %LoadLineResistance, align 2
  %FitLimit = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 12
  %53 = ptrtoint ptr %FitLimit to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %FitLimit, align 4
  %ucLiquid1_I2C_address = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 26
  %54 = ptrtoint ptr %ucLiquid1_I2C_address to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ucLiquid1_I2C_address, align 4
  %Liquid1_I2C_address = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 13
  %56 = ptrtoint ptr %Liquid1_I2C_address to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %Liquid1_I2C_address, align 4
  %ucLiquid2_I2C_address = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 27
  %57 = ptrtoint ptr %ucLiquid2_I2C_address to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ucLiquid2_I2C_address, align 1
  %Liquid2_I2C_address = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 14
  %59 = ptrtoint ptr %Liquid2_I2C_address to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %Liquid2_I2C_address, align 1
  %ucVr_I2C_address = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 29
  %60 = ptrtoint ptr %ucVr_I2C_address to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ucVr_I2C_address, align 1
  %Vr_I2C_address = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 15
  %62 = ptrtoint ptr %Vr_I2C_address to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %Vr_I2C_address, align 2
  %ucPlx_I2C_address = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 31
  %63 = ptrtoint ptr %ucPlx_I2C_address to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ucPlx_I2C_address, align 1
  %Plx_I2C_address = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 16
  %65 = ptrtoint ptr %Plx_I2C_address to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %Plx_I2C_address, align 1
  %ucLiquid_I2C_Line = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 28
  %66 = ptrtoint ptr %ucLiquid_I2C_Line to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ucLiquid_I2C_Line, align 2
  %Liquid_I2C_LineSCL = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 21
  %68 = ptrtoint ptr %Liquid_I2C_LineSCL to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %Liquid_I2C_LineSCL, align 4
  %ucLiquid_I2C_LineSDA = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 33
  %69 = ptrtoint ptr %ucLiquid_I2C_LineSDA to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ucLiquid_I2C_LineSDA, align 1
  %Liquid_I2C_LineSDA = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 22
  %71 = ptrtoint ptr %Liquid_I2C_LineSDA to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %Liquid_I2C_LineSDA, align 1
  %ucVr_I2C_Line = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 30
  %72 = ptrtoint ptr %ucVr_I2C_Line to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ucVr_I2C_Line, align 4
  %Vr_I2C_LineSCL = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 23
  %74 = ptrtoint ptr %Vr_I2C_LineSCL to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %Vr_I2C_LineSCL, align 2
  %ucVr_I2C_LineSDA = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 34
  %75 = ptrtoint ptr %ucVr_I2C_LineSDA to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ucVr_I2C_LineSDA, align 4
  %Vr_I2C_LineSDA = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 24
  %77 = ptrtoint ptr %Vr_I2C_LineSDA to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %Vr_I2C_LineSDA, align 1
  %ucPlx_I2C_Line = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 32
  %78 = ptrtoint ptr %ucPlx_I2C_Line to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ucPlx_I2C_Line, align 2
  %Plx_I2C_LineSCL = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 25
  %80 = ptrtoint ptr %Plx_I2C_LineSCL to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %Plx_I2C_LineSCL, align 4
  %ucPlx_I2C_LineSDA = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 35
  %81 = ptrtoint ptr %ucPlx_I2C_LineSDA to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ucPlx_I2C_LineSDA, align 1
  %Plx_I2C_LineSDA = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 49, i32 14, i32 26
  %83 = ptrtoint ptr %Plx_I2C_LineSDA to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %Plx_I2C_LineSDA, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_set_power_limit(ptr noundef %hwmgr, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %enable_pkg_pwr_tracking_feature = getelementptr inbounds %struct.vega10_hwmgr, ptr %1, i32 0, i32 2, i32 9
  %2 = ptrtoint ptr %enable_pkg_pwr_tracking_feature to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_pkg_pwr_tracking_feature, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 8, i32 noundef %n, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_enable_power_containment(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %2 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pptable, align 4
  %tdp_table1 = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %tdp_table1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tdp_table1, align 4
  %usMaximumPowerDeliveryLimit = getelementptr inbounds %struct.phm_tdp_table, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %usMaximumPowerDeliveryLimit to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %usMaximumPowerDeliveryLimit, align 2
  %conv = zext i16 %7 to i32
  %power_limit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 54
  %8 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %power_limit, align 4
  %default_power_limit = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 55
  %9 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %default_power_limit, align 4
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %10 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %not_vf, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 14
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %if.then2.if.end22_crit_edge, label %do.body

if.then2.if.end22_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.body:                                          ; preds = %if.then2
  %smu_feature_bitmap = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 14, i32 3
  %16 = ptrtoint ptr %smu_feature_bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smu_feature_bitmap, align 4
  %call7 = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext true, i32 noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.if.end22_crit_edge, label %if.then9

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then9:                                         ; preds = %do.body
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_enable_power_containment._rs, ptr noundef nonnull @__func__.vega10_enable_power_containment) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %do.end

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.52) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then9.if.end15_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end15, %do.body.if.end22_crit_edge, %if.then2.if.end22_crit_edge
  %arrayidx24 = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 15
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx24, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not = icmp eq i8 %20, 0
  br i1 %tobool26.not, label %if.end22.if.end50_crit_edge, label %do.body28

if.end22.if.end50_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.body28:                                        ; preds = %if.end22
  %smu_feature_bitmap31 = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 15, i32 3
  %21 = ptrtoint ptr %smu_feature_bitmap31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %smu_feature_bitmap31, align 4
  %call32 = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext true, i32 noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body28.if.end50_crit_edge, label %if.then34

do.body28.if.end50_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then34:                                        ; preds = %do.body28
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_enable_power_containment._rs.53, ptr noundef nonnull @__func__.vega10_enable_power_containment) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end43_crit_edge, label %do.end40

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.52) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.then34.if.end43_crit_edge
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx24, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end43, %do.body28.if.end50_crit_edge, %if.end22.if.end50_crit_edge
  %24 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %backend, align 4
  %enable_pkg_pwr_tracking_feature.i = getelementptr inbounds %struct.vega10_hwmgr, ptr %25, i32 0, i32 2, i32 9
  %26 = ptrtoint ptr %enable_pkg_pwr_tracking_feature.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable_pkg_pwr_tracking_feature.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.end50.cleanup_crit_edge, label %if.then.i

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %power_limit, align 4
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 8, i32 noundef %29, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end50.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_disable_power_containment(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 24
  %0 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backend, align 4
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end47_crit_edge, label %if.then

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then.if.end18_crit_edge, label %do.body

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.body:                                          ; preds = %if.then
  %smu_feature_bitmap = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 14, i32 3
  %6 = ptrtoint ptr %smu_feature_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smu_feature_bitmap, align 4
  %call4 = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i32 noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end18_crit_edge, label %if.then6

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then6:                                         ; preds = %do.body
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_disable_power_containment._rs, ptr noundef nonnull @__func__.vega10_disable_power_containment) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end_crit_edge, label %do.end

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.60) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then6.if.end_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %do.body.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %arrayidx20 = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 15
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx20, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool22.not = icmp eq i8 %10, 0
  br i1 %tobool22.not, label %if.end18.if.end47_crit_edge, label %do.body24

if.end18.if.end47_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.body24:                                        ; preds = %if.end18
  %smu_feature_bitmap27 = getelementptr %struct.vega10_hwmgr, ptr %1, i32 0, i32 48, i32 15, i32 3
  %11 = ptrtoint ptr %smu_feature_bitmap27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smu_feature_bitmap27, align 4
  %call28 = tail call i32 @vega10_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext false, i32 noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body24.if.end47_crit_edge, label %if.then30

do.body24.if.end47_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then30:                                        ; preds = %do.body24
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_disable_power_containment._rs.61, ptr noundef nonnull @__func__.vega10_disable_power_containment) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end39_crit_edge, label %do.end36

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.60) #8
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %if.then30.if.end39_crit_edge
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx20, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end39, %do.body24.if.end47_crit_edge, %if.end18.if.end47_crit_edge, %entry.if.end47_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_power_control_set_level(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %TDPAdjustmentPolarity = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 18
  %2 = ptrtoint ptr %TDPAdjustmentPolarity to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %TDPAdjustmentPolarity, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %TDPAdjustment4 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 17
  %4 = ptrtoint ptr %TDPAdjustment4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %TDPAdjustment4, align 4
  %mul = sub i32 0, %5
  %cond = select i1 %tobool.not, i32 %mul, i32 %5
  %call.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 63, i32 noundef %cond, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vega10_didt_set_mask(ptr noundef %hwmgr, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = zext i1 %enable to i32
  %arrayidx.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.i.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_ind_register, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_ind_register, align 4
  %call5 = tail call i32 %9(ptr noundef %3, i32 noundef 3, i32 noundef 0) #5
  %and = and i32 %call5, -2
  %or = or i32 %and, %cond
  tail call void %7(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %or) #5
  %or8 = or i32 %cond, 262658
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %didt_block_info.0 = phi i32 [ %or8, %if.then ], [ 262658, %entry.if.end_crit_edge ]
  %arrayidx.i311 = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i311, align 4
  %and1.i312 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i312)
  %cmp.i313.not = icmp eq i32 %and1.i312, 0
  br i1 %cmp.i313.not, label %if.end.if.end29_crit_edge, label %if.then13

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %device14 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %12 = ptrtoint ptr %device14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device14, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write_ind_register16 = getelementptr inbounds %struct.cgs_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %write_ind_register16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_ind_register16, align 4
  %read_ind_register20 = getelementptr inbounds %struct.cgs_ops, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %read_ind_register20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_ind_register20, align 4
  %call22 = tail call i32 %19(ptr noundef %13, i32 noundef 3, i32 noundef 32) #5
  %and23 = and i32 %call22, -2
  %or25 = or i32 %and23, %cond
  tail call void %17(ptr noundef %13, i32 noundef 3, i32 noundef 32, i32 noundef %or25) #5
  %and26 = and i32 %didt_block_info.0, -16777217
  %shl27 = select i1 %enable, i32 16777216, i32 0
  %or28 = or i32 %and26, %shl27
  br label %if.end29

if.end29:                                         ; preds = %if.then13, %if.end.if.end29_crit_edge
  %didt_block_info.1 = phi i32 [ %or28, %if.then13 ], [ %didt_block_info.0, %if.end.if.end29_crit_edge ]
  %20 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i311, align 4
  %and1.i315 = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i315)
  %cmp.i316.not = icmp eq i32 %and1.i315, 0
  br i1 %cmp.i316.not, label %if.end29.if.end50_crit_edge, label %if.then34

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %device35 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %22 = ptrtoint ptr %device35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device35, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %write_ind_register37 = getelementptr inbounds %struct.cgs_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %write_ind_register37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_ind_register37, align 4
  %read_ind_register41 = getelementptr inbounds %struct.cgs_ops, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %read_ind_register41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_ind_register41, align 4
  %call43 = tail call i32 %29(ptr noundef %23, i32 noundef 3, i32 noundef 64) #5
  %and44 = and i32 %call43, -2
  %or46 = or i32 %and44, %cond
  tail call void %27(ptr noundef %23, i32 noundef 3, i32 noundef 64, i32 noundef %or46) #5
  %and47 = and i32 %didt_block_info.1, -65537
  %shl48 = select i1 %enable, i32 65536, i32 0
  %or49 = or i32 %and47, %shl48
  br label %if.end50

if.end50:                                         ; preds = %if.then34, %if.end29.if.end50_crit_edge
  %didt_block_info.2 = phi i32 [ %or49, %if.then34 ], [ %didt_block_info.1, %if.end29.if.end50_crit_edge ]
  %30 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i311, align 4
  %and1.i318 = and i32 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i318)
  %cmp.i319.not = icmp eq i32 %and1.i318, 0
  br i1 %cmp.i319.not, label %if.end50.if.end71_crit_edge, label %if.then55

if.end50.if.end71_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %device56 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %32 = ptrtoint ptr %device56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device56, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %write_ind_register58 = getelementptr inbounds %struct.cgs_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %write_ind_register58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_ind_register58, align 4
  %read_ind_register62 = getelementptr inbounds %struct.cgs_ops, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %read_ind_register62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_ind_register62, align 4
  %call64 = tail call i32 %39(ptr noundef %33, i32 noundef 3, i32 noundef 96) #5
  %and65 = and i32 %call64, -2
  %or67 = or i32 %and65, %cond
  tail call void %37(ptr noundef %33, i32 noundef 3, i32 noundef 96, i32 noundef %or67) #5
  %and68 = and i32 %didt_block_info.2, -257
  %shl69 = select i1 %enable, i32 256, i32 0
  %or70 = or i32 %and68, %shl69
  br label %if.end71

if.end71:                                         ; preds = %if.then55, %if.end50.if.end71_crit_edge
  %didt_block_info.3 = phi i32 [ %or70, %if.then55 ], [ %didt_block_info.2, %if.end50.if.end71_crit_edge ]
  %40 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i311, align 4
  %and1.i321 = and i32 %41, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i321)
  %cmp.i322.not = icmp eq i32 %and1.i321, 0
  br i1 %cmp.i322.not, label %if.end71.if.end89_crit_edge, label %if.then76

if.end71.if.end89_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %device77 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %42 = ptrtoint ptr %device77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device77, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write_ind_register79 = getelementptr inbounds %struct.cgs_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %write_ind_register79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_ind_register79, align 4
  %read_ind_register83 = getelementptr inbounds %struct.cgs_ops, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %read_ind_register83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_ind_register83, align 4
  %call85 = tail call i32 %49(ptr noundef %43, i32 noundef 3, i32 noundef 128) #5
  %and86 = and i32 %call85, -2
  %or88 = or i32 %and86, %cond
  tail call void %47(ptr noundef %43, i32 noundef 3, i32 noundef 128, i32 noundef %or88) #5
  br label %if.end89

if.end89:                                         ; preds = %if.then76, %if.end71.if.end89_crit_edge
  %50 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i311, align 4
  %and1.i324 = and i32 %51, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i324)
  %cmp.i325.not = icmp eq i32 %and1.i324, 0
  br i1 %cmp.i325.not, label %if.end89.if.end214_crit_edge, label %if.then94

if.end89.if.end214_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.then94:                                        ; preds = %if.end89
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %and1.i327 = and i32 %53, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i327)
  %cmp.i328.not = icmp eq i32 %and1.i327, 0
  br i1 %cmp.i328.not, label %if.then94.if.end117_crit_edge, label %if.then99

if.then94.if.end117_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

if.then99:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  %device100 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %54 = ptrtoint ptr %device100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device100, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %read_ind_register102 = getelementptr inbounds %struct.cgs_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %read_ind_register102 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_ind_register102, align 4
  %call104 = tail call i32 %59(ptr noundef %55, i32 noundef 3, i32 noundef 19) #5
  %and105 = and i32 %call104, -4
  %neg = xor i32 %cond, -1
  %shl110 = shl nsw i32 %neg, 1
  %and111 = and i32 %shl110, 2
  %or108 = or i32 %and111, %cond
  %or112 = or i32 %or108, %and105
  %60 = ptrtoint ptr %device100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device100, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %write_ind_register115 = getelementptr inbounds %struct.cgs_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %write_ind_register115 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_ind_register115, align 4
  tail call void %65(ptr noundef %61, i32 noundef 3, i32 noundef 19, i32 noundef %or112) #5
  br label %if.end117

if.end117:                                        ; preds = %if.then99, %if.then94.if.end117_crit_edge
  %66 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i311, align 4
  %and1.i330 = and i32 %67, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i330)
  %cmp.i331.not = icmp eq i32 %and1.i330, 0
  br i1 %cmp.i331.not, label %if.end117.if.end141_crit_edge, label %if.then122

if.end117.if.end141_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141

if.then122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  %device123 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %68 = ptrtoint ptr %device123 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device123, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %read_ind_register125 = getelementptr inbounds %struct.cgs_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %read_ind_register125 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_ind_register125, align 4
  %call127 = tail call i32 %73(ptr noundef %69, i32 noundef 3, i32 noundef 51) #5
  %and128 = and i32 %call127, -4
  %neg133 = xor i32 %cond, -1
  %shl134 = shl nsw i32 %neg133, 1
  %and135 = and i32 %shl134, 2
  %or131 = or i32 %and135, %cond
  %or136 = or i32 %or131, %and128
  %74 = ptrtoint ptr %device123 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device123, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %write_ind_register139 = getelementptr inbounds %struct.cgs_ops, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %write_ind_register139 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_ind_register139, align 4
  tail call void %79(ptr noundef %75, i32 noundef 3, i32 noundef 51, i32 noundef %or136) #5
  br label %if.end141

if.end141:                                        ; preds = %if.then122, %if.end117.if.end141_crit_edge
  %80 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i311, align 4
  %and1.i333 = and i32 %81, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i333)
  %cmp.i334.not = icmp eq i32 %and1.i333, 0
  br i1 %cmp.i334.not, label %if.end141.if.end165_crit_edge, label %if.then146

if.end141.if.end165_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end165

if.then146:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  %device147 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %82 = ptrtoint ptr %device147 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device147, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %read_ind_register149 = getelementptr inbounds %struct.cgs_ops, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %read_ind_register149 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read_ind_register149, align 4
  %call151 = tail call i32 %87(ptr noundef %83, i32 noundef 3, i32 noundef 83) #5
  %and152 = and i32 %call151, -4
  %neg157 = xor i32 %cond, -1
  %shl158 = shl nsw i32 %neg157, 1
  %and159 = and i32 %shl158, 2
  %or155 = or i32 %and159, %cond
  %or160 = or i32 %or155, %and152
  %88 = ptrtoint ptr %device147 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device147, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %write_ind_register163 = getelementptr inbounds %struct.cgs_ops, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %write_ind_register163 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write_ind_register163, align 4
  tail call void %93(ptr noundef %89, i32 noundef 3, i32 noundef 83, i32 noundef %or160) #5
  br label %if.end165

if.end165:                                        ; preds = %if.then146, %if.end141.if.end165_crit_edge
  %94 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i311, align 4
  %and1.i336 = and i32 %95, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i336)
  %cmp.i337.not = icmp eq i32 %and1.i336, 0
  br i1 %cmp.i337.not, label %if.end165.if.end189_crit_edge, label %if.then170

if.end165.if.end189_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end189

if.then170:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  %device171 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %96 = ptrtoint ptr %device171 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device171, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %read_ind_register173 = getelementptr inbounds %struct.cgs_ops, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %read_ind_register173 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read_ind_register173, align 4
  %call175 = tail call i32 %101(ptr noundef %97, i32 noundef 3, i32 noundef 115) #5
  %and176 = and i32 %call175, -4
  %neg181 = xor i32 %cond, -1
  %shl182 = shl nsw i32 %neg181, 1
  %and183 = and i32 %shl182, 2
  %or179 = or i32 %and183, %cond
  %or184 = or i32 %or179, %and176
  %102 = ptrtoint ptr %device171 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device171, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %write_ind_register187 = getelementptr inbounds %struct.cgs_ops, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %write_ind_register187 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write_ind_register187, align 4
  tail call void %107(ptr noundef %103, i32 noundef 3, i32 noundef 115, i32 noundef %or184) #5
  br label %if.end189

if.end189:                                        ; preds = %if.then170, %if.end165.if.end189_crit_edge
  %108 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i311, align 4
  %and1.i339 = and i32 %109, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i339)
  %cmp.i340.not = icmp eq i32 %and1.i339, 0
  br i1 %cmp.i340.not, label %if.end189.if.end214_crit_edge, label %if.then194

if.end189.if.end214_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.then194:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #7
  %device195 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %110 = ptrtoint ptr %device195 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device195, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %read_ind_register197 = getelementptr inbounds %struct.cgs_ops, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %read_ind_register197 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read_ind_register197, align 4
  %call199 = tail call i32 %115(ptr noundef %111, i32 noundef 3, i32 noundef 147) #5
  %and200 = and i32 %call199, -4
  %neg205 = xor i32 %cond, -1
  %shl206 = shl nsw i32 %neg205, 1
  %and207 = and i32 %shl206, 2
  %or203 = or i32 %and207, %cond
  %or208 = or i32 %or203, %and200
  %116 = ptrtoint ptr %device195 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device195, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %write_ind_register211 = getelementptr inbounds %struct.cgs_ops, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %write_ind_register211 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write_ind_register211, align 4
  tail call void %121(ptr noundef %117, i32 noundef 3, i32 noundef 147, i32 noundef %or208) #5
  br label %if.end214

if.end214:                                        ; preds = %if.then194, %if.end189.if.end214_crit_edge, %if.end89.if.end214_crit_edge
  br i1 %enable, label %if.then216, label %if.end214.if.end218_crit_edge

if.end214.if.end218_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end218

if.then216:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #7
  %call217 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 85, i32 noundef %didt_block_info.3, ptr noundef null) #5
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %if.end214.if.end218_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1176, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vega10_enable_didt_config.__UNIQUE_ID_ddebug343, !1, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1181, i32 4}
!9 = distinct !{null, !8, !"_rs", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vega10_enable_didt_config._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @vega10_enable_didt_config._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1185, i32 4}
!16 = !{ptr @vega10_enable_didt_config._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vega10_enable_didt_config._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1189, i32 4}
!21 = !{ptr @vega10_enable_didt_config._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @vega10_enable_didt_config._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1195, i32 4}
!26 = !{ptr @vega10_enable_didt_config._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vega10_enable_didt_config._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1199, i32 4}
!31 = !{ptr @vega10_enable_didt_config._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vega10_enable_didt_config._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vega10_enable_didt_config._rs.24, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1208, i32 4}
!36 = !{ptr @vega10_enable_didt_config._entry.25, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vega10_enable_didt_config._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.28, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1223, i32 4}
!41 = !{ptr @.str.29, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vega10_disable_didt_config.__UNIQUE_ID_ddebug344, !40, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!43 = !{ptr @.str.30, !40, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1228, i32 4}
!46 = !{ptr @vega10_disable_didt_config._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vega10_disable_didt_config._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1232, i32 4}
!51 = !{ptr @vega10_disable_didt_config._entry.33, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @vega10_disable_didt_config._entry_ptr.34, !50, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1236, i32 4}
!56 = !{ptr @vega10_disable_didt_config._entry.37, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @vega10_disable_didt_config._entry_ptr.38, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"_rs", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1242, i32 4}
!61 = !{ptr @vega10_disable_didt_config._entry.41, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @vega10_disable_didt_config._entry_ptr.42, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1246, i32 4}
!66 = !{ptr @vega10_disable_didt_config._entry.45, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @vega10_disable_didt_config._entry_ptr.46, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vega10_disable_didt_config._rs.48, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1255, i32 4}
!71 = !{ptr @vega10_disable_didt_config._entry.49, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @vega10_disable_didt_config._entry_ptr.50, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.51, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @vega10_enable_power_containment._rs, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1330, i32 4}
!76 = !{ptr @__func__.vega10_enable_power_containment, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @vega10_enable_power_containment._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @vega10_enable_power_containment._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.52, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @vega10_enable_power_containment._rs.53, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1336, i32 4}
!82 = !{ptr @vega10_enable_power_containment._entry.54, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @vega10_enable_power_containment._entry_ptr.55, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"_rs", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1342, i32 3}
!86 = !{ptr @vega10_enable_power_containment._entry.57, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @vega10_enable_power_containment._entry_ptr.58, !85, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @vega10_disable_power_containment._rs, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1356, i32 4}
!91 = !{ptr @__func__.vega10_disable_power_containment, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @vega10_disable_power_containment._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @vega10_disable_power_containment._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.60, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @vega10_disable_power_containment._rs.61, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1362, i32 4}
!97 = !{ptr @vega10_disable_power_containment._entry.62, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @vega10_disable_power_containment._entry_ptr.63, !96, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 780, i32 2}
!101 = !{ptr @__func__.vega10_program_didt_config_registers, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @vega10_program_didt_config_registers._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @vega10_program_didt_config_registers._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @SEDiDtStallCtrlConfig_vega10, !106, !"SEDiDtStallCtrlConfig_vega10", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 263, i32 44}
!107 = !{ptr @SEDiDtStallPatternConfig_vega10, !108, !"SEDiDtStallPatternConfig_vega10", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 296, i32 44}
!109 = !{ptr @SEDiDtWeightConfig_Vega10, !110, !"SEDiDtWeightConfig_Vega10", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 175, i32 44}
!111 = !{ptr @SEDiDtCtrl1Config_Vega10, !112, !"SEDiDtCtrl1Config_Vega10", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 152, i32 44}
!113 = !{ptr @SEDiDtCtrl2Config_Vega10, !114, !"SEDiDtCtrl2Config_Vega10", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 123, i32 44}
!115 = !{ptr @SEDiDtCtrl3Config_vega10, !116, !"SEDiDtCtrl3Config_vega10", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 58, i32 44}
!117 = !{ptr @SEDiDtTuningCtrlConfig_Vega10, !118, !"SEDiDtTuningCtrlConfig_Vega10", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 33, i32 44}
!119 = !{ptr @SELCacConfig_Vega10, !120, !"SELCacConfig_Vega10", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 365, i32 44}
!121 = !{ptr @SEDiDtCtrl0Config_Vega10, !122, !"SEDiDtCtrl0Config_Vega10", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 204, i32 44}
!123 = distinct !{null, !124, !"GCDiDtDroopCtrlConfig_vega10", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 574, i32 47}
!125 = distinct !{null, !126, !"GCDiDtCtrl0Config_vega10", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 589, i32 47}
!127 = !{ptr @AvfsPSMInitConfig_vega10, !128, !"AvfsPSMInitConfig_vega10", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 759, i32 47}
!129 = !{ptr @SEEDCStallPatternConfig_Vega10, !130, !"SEEDCStallPatternConfig_Vega10", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 404, i32 44}
!131 = !{ptr @SEEDCStallDelayConfig_Vega10, !132, !"SEEDCStallDelayConfig_Vega10", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 454, i32 44}
!133 = distinct !{null, !134, !"SEEDCThresholdConfig_Vega10", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 481, i32 44}
!135 = !{ptr @SEEDCCtrlResetConfig_Vega10, !136, !"SEEDCCtrlResetConfig_Vega10", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 495, i32 44}
!137 = !{ptr @SEEDCCtrlConfig_Vega10, !138, !"SEEDCCtrlConfig_Vega10", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 517, i32 44}
!139 = distinct !{null, !140, !"AvfsPSMResetConfig_vega10", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 745, i32 47}
!141 = !{ptr @PSMSEEDCStallPatternConfig_Vega10, !142, !"PSMSEEDCStallPatternConfig_Vega10", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 604, i32 46}
!143 = !{ptr @PSMSEEDCStallDelayConfig_Vega10, !144, !"PSMSEEDCStallDelayConfig_Vega10", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 624, i32 46}
!145 = !{ptr @PSMSEEDCCtrlResetConfig_Vega10, !146, !"PSMSEEDCCtrlResetConfig_Vega10", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 654, i32 46}
!147 = !{ptr @PSMSEEDCCtrlConfig_Vega10, !148, !"PSMSEEDCCtrlConfig_Vega10", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 676, i32 46}
!149 = distinct !{null, !150, !"PSMGCEDCDroopCtrlConfig_vega10", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 698, i32 46}
!151 = distinct !{null, !152, !"PSMGCEDCCtrlResetConfig_vega10", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 713, i32 46}
!153 = distinct !{null, !154, !"PSMGCEDCCtrlConfig_vega10", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 729, i32 46}
!155 = !{ptr @SEEDCForceStallPatternConfig_Vega10, !156, !"SEEDCForceStallPatternConfig_Vega10", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 434, i32 44}
!157 = !{ptr @SEEDCCtrlForceStallConfig_Vega10, !158, !"SEEDCCtrlForceStallConfig_Vega10", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 539, i32 44}
!159 = distinct !{null, !160, !"_rs", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c", i32 1164, i32 2}
!161 = !{ptr @__func__.vega10_disable_se_edc_force_stall_config, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @vega10_disable_se_edc_force_stall_config._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @vega10_disable_se_edc_force_stall_config._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = distinct !{null, !160, !"<string literal>", i1 false, i1 false}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i8 0, i8 2}
!175 = !{i64 2148314097, i64 2148314102, i64 2148314115, i64 2148314159, i64 2148314193, i64 2148314214}
