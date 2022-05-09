; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega10_processpptables.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_table_func = type { ptr, ptr, ptr, ptr }
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
%struct._ATOM_Vega10_POWERPLAYTABLE = type <{ %struct.atom_common_table_header, i8, i16, i32, i32, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }>
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct._ATOM_Vega10_Thermal_Controller = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_Vega10_Fan_Table = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16 }>
%struct._ATOM_Vega10_Fan_Table_V2 = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i8, i8, i8 }>
%struct._ATOM_Vega10_Fan_Table_V3 = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16 }>
%struct._ATOM_Vega10_GFXCLK_Dependency_Table = type { i8, i8, [0 x %struct._ATOM_Vega10_GFXCLK_Dependency_Record] }
%struct._ATOM_Vega10_GFXCLK_Dependency_Record = type <{ i32, i8, i16, i16 }>
%struct._ATOM_Vega10_GFXCLK_Dependency_Record_V2 = type <{ i32, i8, i16, i16, i8, [3 x i8] }>
%struct.phm_ppt_v2_information = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_Vega10_MM_Dependency_Table = type { i8, i8, [1 x %struct._ATOM_Vega10_MM_Dependency_Record] }
%struct._ATOM_Vega10_MM_Dependency_Record = type <{ i8, i32, i32, i32, i32 }>
%struct.phm_ppt_v1_mm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_mm_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_record = type { i32, i32, i32, i32, i32, i8, i16, i16, i16, i8 }
%struct._ATOM_Vega10_PowerTune_Table = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }>
%struct.phm_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32 }
%struct._ATOM_Vega10_PowerTune_Table_V2 = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16 }>
%struct._ATOM_Vega10_PowerTune_Table_V3 = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, [2 x i32] }>
%struct._ATOM_Vega10_SOCCLK_Dependency_Table = type { i8, i8, [1 x %struct._ATOM_Vega10_CLK_Dependency_Record] }
%struct._ATOM_Vega10_CLK_Dependency_Record = type <{ i32, i8 }>
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_clock_voltage_dependency_record = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i32 }
%struct._ATOM_Vega10_PIXCLK_Dependency_Table = type { i8, i8, [1 x %struct._ATOM_Vega10_CLK_Dependency_Record] }
%struct._ATOM_Vega10_DCEFCLK_Dependency_Table = type { i8, i8, [1 x %struct._ATOM_Vega10_CLK_Dependency_Record] }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }
%struct._ATOM_Vega10_MCLK_Dependency_Table = type { i8, i8, [1 x %struct._ATOM_Vega10_MCLK_Dependency_Record] }
%struct._ATOM_Vega10_MCLK_Dependency_Record = type <{ i32, i8, i8, i8 }>
%struct._ATOM_Vega10_PCIE_Table = type { i8, i8, [1 x %struct._ATOM_Vega10_PCIE_Record] }
%struct._ATOM_Vega10_PCIE_Record = type <{ i32, i8, i8 }>
%struct.phm_ppt_v1_pcie_table = type { i32, [0 x %struct.phm_ppt_v1_pcie_record] }
%struct.phm_ppt_v1_pcie_record = type { i8, i8, i16, i16, i32 }
%struct._ATOM_Vega10_Hard_Limit_Table = type { i8, i8, [1 x %struct._ATOM_Vega10_Hard_Limit_Record] }
%struct._ATOM_Vega10_Hard_Limit_Record = type <{ i32, i32, i32, i16, i16, i16 }>
%struct.phm_clock_array = type { i32, [0 x i32] }
%struct._ATOM_Vega10_Voltage_Lookup_Table = type { i8, i8, [1 x %struct._ATOM_Vega10_Voltage_Lookup_Record] }
%struct._ATOM_Vega10_Voltage_Lookup_Record = type { i16 }
%struct.phm_ppt_v1_voltage_lookup_table = type { i32, [0 x %struct.phm_ppt_v1_voltage_lookup_record] }
%struct.phm_ppt_v1_voltage_lookup_record = type { i16, i16, i16, i16, i16 }
%struct._ATOM_Vega10_State_Array = type { i8, i8, [1 x %struct._ATOM_Vega10_State] }
%struct._ATOM_Vega10_State = type <{ i8, i8, i8, i8, i8, i8, i16, i32, i16 }>
%struct.pp_power_state = type { i32, %struct.PP_StateLinkedList, %struct.PP_StateLinkedList, %struct.PP_StateClassificationBlock, %struct.PP_StateValidationBlock, %struct.PP_StatePcieBlock, %struct.PP_StateDisplayBlock, %struct.PP_StateMemroyBlock, %struct.PP_TemperatureRange, %struct.PP_StateSoftwareAlgorithmBlock, %struct.PP_UVD_CLOCKS, %struct.pp_hw_power_state }
%struct.PP_StateLinkedList = type { ptr, ptr }
%struct.PP_StateClassificationBlock = type { i32, i32, i32, i8, i8 }
%struct.PP_StateValidationBlock = type { i8, i8, i8 }
%struct.PP_StatePcieBlock = type { i32 }
%struct.PP_StateDisplayBlock = type { i8, i8, i32, i32, i32, i8 }
%struct.PP_StateMemroyBlock = type { i8, i8, [3 x i8] }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PP_StateSoftwareAlgorithmBlock = type { i8, i8 }
%struct.PP_UVD_CLOCKS = type { i32, i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@vega10_pptable_funcs = dso_local constant { %struct.pp_table_func, [16 x i8] } { %struct.pp_table_func { ptr @vega10_pp_tables_initialize, ptr @vega10_pp_tables_uninitialize, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@vega10_get_number_of_powerplay_table_entries._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vega10_get_number_of_powerplay_table_entries = private unnamed_addr constant [45 x i8] c"vega10_get_number_of_powerplay_table_entries\00", align 1
@vega10_get_number_of_powerplay_table_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_get_number_of_powerplay_table_entries, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c\00", [54 x i8] zeroinitializer }, align 32
@vega10_get_number_of_powerplay_table_entries._entry_ptr = internal global ptr @vega10_get_number_of_powerplay_table_entries._entry, section ".printk_index", align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Missing PowerPlay Table!\00", [39 x i8] zeroinitializer }, align 32
@vega10_get_number_of_powerplay_table_entries._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_get_number_of_powerplay_table_entries._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_get_number_of_powerplay_table_entries, ptr @.str.2, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_get_number_of_powerplay_table_entries._entry_ptr.6 = internal global ptr @vega10_get_number_of_powerplay_table_entries._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Incorrect PowerPlay table revision!\00", [60 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_get_powerplay_table_entry = private unnamed_addr constant [33 x i8] c"vega10_get_powerplay_table_entry\00", align 1
@vega10_get_powerplay_table_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_get_powerplay_table_entry, ptr @.str.2, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._entry_ptr = internal global ptr @vega10_get_powerplay_table_entry._entry, section ".printk_index", align 4
@vega10_get_powerplay_table_entry._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_get_powerplay_table_entry, ptr @.str.2, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._entry_ptr.10 = internal global ptr @vega10_get_powerplay_table_entry._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid PowerPlay Table State Array Offset.\00", [52 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_get_powerplay_table_entry, ptr @.str.2, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._entry_ptr.14 = internal global ptr @vega10_get_powerplay_table_entry._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid PowerPlay Table State Array.\00", [59 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_get_powerplay_table_entry, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_get_powerplay_table_entry._entry_ptr.18 = internal global ptr @vega10_get_powerplay_table_entry._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid PowerPlay Table State Array Entry.\00", [53 x i8] zeroinitializer }, align 32
@vega10_baco_set_cap._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_baco_set_cap = private unnamed_addr constant [20 x i8] c"vega10_baco_set_cap\00", align 1
@vega10_baco_set_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_baco_set_cap, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_baco_set_cap._entry_ptr = internal global ptr @vega10_baco_set_cap._entry, section ".printk_index", align 4
@vega10_baco_set_cap._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_baco_set_cap._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_baco_set_cap, ptr @.str.2, i32 1356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_baco_set_cap._entry_ptr.22 = internal global ptr @vega10_baco_set_cap._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"check_powerplay_tables failed\00", [34 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega10_pp_tables_initialize = private unnamed_addr constant [28 x i8] c"vega10_pp_tables_initialize\00", align 1
@vega10_pp_tables_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_pp_tables_initialize, ptr @.str.2, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry_ptr = internal global ptr @vega10_pp_tables_initialize._entry, section ".printk_index", align 4
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate hwmgr->pptable!\00", [61 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_pp_tables_initialize, ptr @.str.2, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry_ptr.27 = internal global ptr @vega10_pp_tables_initialize._entry.26, section ".printk_index", align 4
@vega10_pp_tables_initialize._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_pp_tables_initialize, ptr @.str.2, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry_ptr.30 = internal global ptr @vega10_pp_tables_initialize._entry.29, section ".printk_index", align 4
@vega10_pp_tables_initialize._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_pp_tables_initialize, ptr @.str.2, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry_ptr.33 = internal global ptr @vega10_pp_tables_initialize._entry.32, section ".printk_index", align 4
@vega10_pp_tables_initialize._rs.35 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_pp_tables_initialize, ptr @.str.2, i32 1177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry_ptr.37 = internal global ptr @vega10_pp_tables_initialize._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"init_thermal_controller failed\00", [33 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_pp_tables_initialize, ptr @.str.2, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry_ptr.41 = internal global ptr @vega10_pp_tables_initialize._entry.40, section ".printk_index", align 4
@vega10_pp_tables_initialize._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_pp_tables_initialize, ptr @.str.2, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry_ptr.45 = internal global ptr @vega10_pp_tables_initialize._entry.44, section ".printk_index", align 4
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"init_powerplay_extended_tables failed\00", [58 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega10_pp_tables_initialize, ptr @.str.2, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega10_pp_tables_initialize._entry_ptr.49 = internal global ptr @vega10_pp_tables_initialize._entry.48, section ".printk_index", align 4
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"init_dpm_2_parameters failed\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_thermal_controller._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.init_thermal_controller = private unnamed_addr constant [24 x i8] c"init_thermal_controller\00", align 1
@init_thermal_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.init_thermal_controller, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_thermal_controller._entry_ptr = internal global ptr @init_thermal_controller._entry, section ".printk_index", align 4
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Thermal controller table not set!\00", [62 x i8] zeroinitializer }, align 32
@init_thermal_controller._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.init_thermal_controller, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_thermal_controller._entry_ptr.54 = internal global ptr @init_thermal_controller._entry.53, section ".printk_index", align 4
@get_mm_clock_voltage_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_mm_clock_voltage_table = private unnamed_addr constant [27 x i8] c"get_mm_clock_voltage_table\00", align 1
@get_mm_clock_voltage_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_mm_clock_voltage_table, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_mm_clock_voltage_table._entry_ptr = internal global ptr @get_mm_clock_voltage_table._entry, section ".printk_index", align 4
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid PowerPlay Table!\00", [39 x i8] zeroinitializer }, align 32
@get_socclk_voltage_dependency_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_socclk_voltage_dependency_table = private unnamed_addr constant [36 x i8] c"get_socclk_voltage_dependency_table\00", align 1
@get_socclk_voltage_dependency_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_socclk_voltage_dependency_table, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_socclk_voltage_dependency_table._entry_ptr = internal global ptr @get_socclk_voltage_dependency_table._entry, section ".printk_index", align 4
@get_gfxclk_voltage_dependency_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_gfxclk_voltage_dependency_table = private unnamed_addr constant [36 x i8] c"get_gfxclk_voltage_dependency_table\00", align 1
@get_gfxclk_voltage_dependency_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_gfxclk_voltage_dependency_table, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_gfxclk_voltage_dependency_table._entry_ptr = internal global ptr @get_gfxclk_voltage_dependency_table._entry, section ".printk_index", align 4
@get_gfxclk_voltage_dependency_table._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_gfxclk_voltage_dependency_table._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_gfxclk_voltage_dependency_table, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_gfxclk_voltage_dependency_table._entry_ptr.59 = internal global ptr @get_gfxclk_voltage_dependency_table._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unsupported GFXClockDependencyTable Revision!\00", [50 x i8] zeroinitializer }, align 32
@get_pix_clk_voltage_dependency_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_pix_clk_voltage_dependency_table = private unnamed_addr constant [37 x i8] c"get_pix_clk_voltage_dependency_table\00", align 1
@get_pix_clk_voltage_dependency_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_pix_clk_voltage_dependency_table, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_pix_clk_voltage_dependency_table._entry_ptr = internal global ptr @get_pix_clk_voltage_dependency_table._entry, section ".printk_index", align 4
@get_dcefclk_voltage_dependency_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_dcefclk_voltage_dependency_table = private unnamed_addr constant [37 x i8] c"get_dcefclk_voltage_dependency_table\00", align 1
@get_dcefclk_voltage_dependency_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_dcefclk_voltage_dependency_table, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_dcefclk_voltage_dependency_table._entry_ptr = internal global ptr @get_dcefclk_voltage_dependency_table._entry, section ".printk_index", align 4
@get_mclk_voltage_dependency_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_mclk_voltage_dependency_table = private unnamed_addr constant [34 x i8] c"get_mclk_voltage_dependency_table\00", align 1
@get_mclk_voltage_dependency_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_mclk_voltage_dependency_table, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_mclk_voltage_dependency_table._entry_ptr = internal global ptr @get_mclk_voltage_dependency_table._entry, section ".printk_index", align 4
@get_pcie_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_pcie_table = private unnamed_addr constant [15 x i8] c"get_pcie_table\00", align 1
@get_pcie_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_pcie_table, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_pcie_table._entry_ptr = internal global ptr @get_pcie_table._entry, section ".printk_index", align 4
@get_pcie_table._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.get_pcie_table, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"\016amdgpu: [powerplay] Number of Pcie Entries exceed the number of GFXCLK Dpm Levels! Disregarding the excess entries...\0A\00", [39 x i8] zeroinitializer }, align 32
@get_pcie_table._entry_ptr.63 = internal global ptr @get_pcie_table._entry.61, section ".printk_index", align 4
@get_hard_limits._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_hard_limits = private unnamed_addr constant [16 x i8] c"get_hard_limits\00", align 1
@get_hard_limits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_hard_limits, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_hard_limits._entry_ptr = internal global ptr @get_hard_limits._entry, section ".printk_index", align 4
@__func__.get_valid_clk = private unnamed_addr constant [14 x i8] c"get_valid_clk\00", align 1
@get_valid_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_valid_clk, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_valid_clk._entry_ptr = internal global ptr @get_valid_clk._entry, section ".printk_index", align 4
@get_vddc_lookup_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_vddc_lookup_table = private unnamed_addr constant [22 x i8] c"get_vddc_lookup_table\00", align 1
@get_vddc_lookup_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_vddc_lookup_table, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_vddc_lookup_table._entry_ptr = internal global ptr @get_vddc_lookup_table._entry, section ".printk_index", align 4
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid SOC_VDDD Lookup Table!\00", [33 x i8] zeroinitializer }, align 32
@check_powerplay_tables._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.check_powerplay_tables = private unnamed_addr constant [23 x i8] c"check_powerplay_tables\00", align 1
@check_powerplay_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr = internal global ptr @check_powerplay_tables._entry, section ".printk_index", align 4
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported PPTable format!\00", [36 x i8] zeroinitializer }, align 32
@check_powerplay_tables._rs.66 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr.68 = internal global ptr @check_powerplay_tables._entry.67, section ".printk_index", align 4
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"State table is not set!\00", [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr.72 = internal global ptr @check_powerplay_tables._entry.71, section ".printk_index", align 4
@check_powerplay_tables._rs.73 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr.75 = internal global ptr @check_powerplay_tables._entry.74, section ".printk_index", align 4
@switch.table.vega10_pp_tables_initialize = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05BIK)M", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04AHJ(L", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05BIK)M", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04AHJ(L", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05BIK)M", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04AHJ(L", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05BIK)M", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04AHJ(L", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05BIK)M", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04AHJ(L", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\03\05BIK)M", [24 x i8] zeroinitializer }, align 32
@switch.table.vega10_pp_tables_initialize.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04AHJ(L", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"vega10_pptable_funcs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1244, i32 28 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1254, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1256, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1306, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1316, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1319, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1322, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1350, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1355, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1155, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1160, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1165, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1171, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1176, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1181, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1186, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1191, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 133, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 171, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 351, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 574, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 641, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 683, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 703, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 739, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 604, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 794, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 807, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 832, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 854, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1042, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 76, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 79, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 81, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private constant [77 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 83, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [41 x i8] c"switch.table.vega10_pp_tables_initialize\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.76\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.77\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.78\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.79\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.80\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.81\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.82\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.83\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.84\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.85\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [44 x i8] c"switch.table.vega10_pp_tables_initialize.86\00", align 1
@llvm.compiler.used = appending global [130 x ptr] [ptr @check_powerplay_tables._entry, ptr @check_powerplay_tables._entry.67, ptr @check_powerplay_tables._entry.71, ptr @check_powerplay_tables._entry.74, ptr @check_powerplay_tables._entry_ptr, ptr @check_powerplay_tables._entry_ptr.68, ptr @check_powerplay_tables._entry_ptr.72, ptr @check_powerplay_tables._entry_ptr.75, ptr @get_dcefclk_voltage_dependency_table._entry, ptr @get_dcefclk_voltage_dependency_table._entry_ptr, ptr @get_gfxclk_voltage_dependency_table._entry, ptr @get_gfxclk_voltage_dependency_table._entry.58, ptr @get_gfxclk_voltage_dependency_table._entry_ptr, ptr @get_gfxclk_voltage_dependency_table._entry_ptr.59, ptr @get_hard_limits._entry, ptr @get_hard_limits._entry_ptr, ptr @get_mclk_voltage_dependency_table._entry, ptr @get_mclk_voltage_dependency_table._entry_ptr, ptr @get_mm_clock_voltage_table._entry, ptr @get_mm_clock_voltage_table._entry_ptr, ptr @get_pcie_table._entry, ptr @get_pcie_table._entry.61, ptr @get_pcie_table._entry_ptr, ptr @get_pcie_table._entry_ptr.63, ptr @get_pix_clk_voltage_dependency_table._entry, ptr @get_pix_clk_voltage_dependency_table._entry_ptr, ptr @get_socclk_voltage_dependency_table._entry, ptr @get_socclk_voltage_dependency_table._entry_ptr, ptr @get_valid_clk._entry, ptr @get_valid_clk._entry_ptr, ptr @get_vddc_lookup_table._entry, ptr @get_vddc_lookup_table._entry_ptr, ptr @init_thermal_controller._entry, ptr @init_thermal_controller._entry.53, ptr @init_thermal_controller._entry_ptr, ptr @init_thermal_controller._entry_ptr.54, ptr @vega10_baco_set_cap._entry, ptr @vega10_baco_set_cap._entry.21, ptr @vega10_baco_set_cap._entry_ptr, ptr @vega10_baco_set_cap._entry_ptr.22, ptr @vega10_get_number_of_powerplay_table_entries._entry, ptr @vega10_get_number_of_powerplay_table_entries._entry.5, ptr @vega10_get_number_of_powerplay_table_entries._entry_ptr, ptr @vega10_get_number_of_powerplay_table_entries._entry_ptr.6, ptr @vega10_get_powerplay_table_entry._entry, ptr @vega10_get_powerplay_table_entry._entry.13, ptr @vega10_get_powerplay_table_entry._entry.17, ptr @vega10_get_powerplay_table_entry._entry.9, ptr @vega10_get_powerplay_table_entry._entry_ptr, ptr @vega10_get_powerplay_table_entry._entry_ptr.10, ptr @vega10_get_powerplay_table_entry._entry_ptr.14, ptr @vega10_get_powerplay_table_entry._entry_ptr.18, ptr @vega10_pp_tables_initialize._entry, ptr @vega10_pp_tables_initialize._entry.26, ptr @vega10_pp_tables_initialize._entry.29, ptr @vega10_pp_tables_initialize._entry.32, ptr @vega10_pp_tables_initialize._entry.36, ptr @vega10_pp_tables_initialize._entry.40, ptr @vega10_pp_tables_initialize._entry.44, ptr @vega10_pp_tables_initialize._entry.48, ptr @vega10_pp_tables_initialize._entry_ptr, ptr @vega10_pp_tables_initialize._entry_ptr.27, ptr @vega10_pp_tables_initialize._entry_ptr.30, ptr @vega10_pp_tables_initialize._entry_ptr.33, ptr @vega10_pp_tables_initialize._entry_ptr.37, ptr @vega10_pp_tables_initialize._entry_ptr.41, ptr @vega10_pp_tables_initialize._entry_ptr.45, ptr @vega10_pp_tables_initialize._entry_ptr.49, ptr @vega10_pptable_funcs, ptr @vega10_get_number_of_powerplay_table_entries._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vega10_get_number_of_powerplay_table_entries._rs.4, ptr @.str.7, ptr @vega10_get_powerplay_table_entry._rs, ptr @vega10_get_powerplay_table_entry._rs.8, ptr @.str.11, ptr @vega10_get_powerplay_table_entry._rs.12, ptr @.str.15, ptr @vega10_get_powerplay_table_entry._rs.16, ptr @.str.19, ptr @vega10_baco_set_cap._rs, ptr @vega10_baco_set_cap._rs.20, ptr @.str.23, ptr @vega10_pp_tables_initialize._rs, ptr @.str.24, ptr @vega10_pp_tables_initialize._rs.25, ptr @vega10_pp_tables_initialize._rs.28, ptr @vega10_pp_tables_initialize._rs.35, ptr @.str.38, ptr @vega10_pp_tables_initialize._rs.43, ptr @.str.46, ptr @vega10_pp_tables_initialize._rs.47, ptr @.str.50, ptr @init_thermal_controller._rs, ptr @.str.51, ptr @get_mm_clock_voltage_table._rs, ptr @.str.56, ptr @get_socclk_voltage_dependency_table._rs, ptr @get_gfxclk_voltage_dependency_table._rs, ptr @get_gfxclk_voltage_dependency_table._rs.57, ptr @.str.60, ptr @get_pix_clk_voltage_dependency_table._rs, ptr @get_dcefclk_voltage_dependency_table._rs, ptr @get_mclk_voltage_dependency_table._rs, ptr @get_pcie_table._rs, ptr @.str.62, ptr @get_hard_limits._rs, ptr @get_vddc_lookup_table._rs, ptr @.str.64, ptr @check_powerplay_tables._rs, ptr @.str.65, ptr @check_powerplay_tables._rs.66, ptr @.str.69, ptr @check_powerplay_tables._rs.70, ptr @check_powerplay_tables._rs.73, ptr @switch.table.vega10_pp_tables_initialize, ptr @switch.table.vega10_pp_tables_initialize.76, ptr @switch.table.vega10_pp_tables_initialize.77, ptr @switch.table.vega10_pp_tables_initialize.78, ptr @switch.table.vega10_pp_tables_initialize.79, ptr @switch.table.vega10_pp_tables_initialize.80, ptr @switch.table.vega10_pp_tables_initialize.81, ptr @switch.table.vega10_pp_tables_initialize.82, ptr @switch.table.vega10_pp_tables_initialize.83, ptr @switch.table.vega10_pp_tables_initialize.84, ptr @switch.table.vega10_pp_tables_initialize.85, ptr @switch.table.vega10_pp_tables_initialize.86], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pptable_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_number_of_powerplay_table_entries._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_number_of_powerplay_table_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_number_of_powerplay_table_entries._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_number_of_powerplay_table_entries._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_powerplay_table_entry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_powerplay_table_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_powerplay_table_entry._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_powerplay_table_entry._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_powerplay_table_entry._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_powerplay_table_entry._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_powerplay_table_entry._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_get_powerplay_table_entry._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_baco_set_cap._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_baco_set_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_baco_set_cap._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_baco_set_cap._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._rs.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega10_pp_tables_initialize._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_thermal_controller._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_thermal_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_thermal_controller._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mm_clock_voltage_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mm_clock_voltage_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_socclk_voltage_dependency_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_socclk_voltage_dependency_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gfxclk_voltage_dependency_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gfxclk_voltage_dependency_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gfxclk_voltage_dependency_table._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gfxclk_voltage_dependency_table._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pix_clk_voltage_dependency_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pix_clk_voltage_dependency_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dcefclk_voltage_dependency_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dcefclk_voltage_dependency_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mclk_voltage_dependency_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mclk_voltage_dependency_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pcie_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pcie_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pcie_table._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_hard_limits._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_hard_limits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_valid_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_vddc_lookup_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_vddc_lookup_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vega10_pp_tables_initialize.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega10_pp_tables_initialize(ptr noundef %hwmgr) #0 align 64 {
entry:
  %size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #10
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %1 = ptrtoint ptr %pptable to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pptable, align 4
  %cmp.not = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not, label %if.then, label %do.end8

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @vega10_pp_tables_initialize._rs, ptr noundef nonnull @__func__.vega10_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #11
  br label %cleanup

do.end8:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #7
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size.i, align 2, !annotation !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #7
  %3 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev.i, align 1, !annotation !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #7
  %4 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev.i, align 1, !annotation !185
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %5 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %get_powerplay_table.exit, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  br label %do.end24

get_powerplay_table.exit:                         ; preds = %do.end8
  %7 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %8, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #7
  %9 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %11 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %12 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  %cmp11.not = icmp eq ptr %call.i, null
  br i1 %cmp11.not, label %if.then12, label %get_powerplay_table.exit.do.end24_crit_edge

get_powerplay_table.exit.do.end24_crit_edge:      ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

if.then12:                                        ; preds = %get_powerplay_table.exit
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @vega10_pp_tables_initialize._rs.25, ptr noundef nonnull @__func__.vega10_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end24:                                         ; preds = %get_powerplay_table.exit.do.end24_crit_edge, %get_powerplay_table.exit.thread
  %table_address.0.i190 = phi ptr [ %6, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.end24_crit_edge ]
  %call25 = call fastcc i32 @check_powerplay_tables(ptr noundef nonnull %table_address.0.i190)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp27 = icmp eq i32 %call25, 0
  br i1 %cmp27, label %do.end40, label %if.then28

if.then28:                                        ; preds = %do.end24
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @vega10_pp_tables_initialize._rs.28, ptr noundef nonnull @__func__.vega10_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.cleanup_crit_edge, label %do.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #11
  br label %cleanup

do.end40:                                         ; preds = %do.end24
  %ulPlatformCaps = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 6
  %13 = ptrtoint ptr %ulPlatformCaps to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %ulPlatformCaps, align 1
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %16 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %17, -16777251
  %and.i = shl i32 %15, 1
  %18 = and i32 %and.i, 2
  %storemerge.i = or i32 %18, %and1.i.i.i
  %and1.i = shl i32 %15, 4
  %19 = and i32 %and1.i, 32
  %storemerge27.i = or i32 %storemerge.i, %19
  %and3.i = shl i32 %15, 22
  %20 = and i32 %and3.i, 16777216
  %storemerge28.i = or i32 %storemerge27.i, %20
  store i32 %storemerge28.i, ptr %platform_descriptor.i.i, align 4
  %and5.i = and i32 %15, 8
  %arrayidx.i8.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i8.i.i, align 4
  %and1.i.i16.i = and i32 %22, -9
  %or.i.i14.sink.i = or i32 %and1.i.i16.i, %and5.i
  store i32 %or.i.i14.sink.i, ptr %arrayidx.i8.i.i, align 4
  %arrayidx.i8.i23.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx.i8.i23.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i8.i23.i, align 4
  %and1.i.i24.i = and i32 %24, -8193
  %and7.i = shl i32 %15, 9
  %25 = and i32 %and7.i, 8192
  %or.i.i21.sink.i = or i32 %and1.i.i24.i, %25
  store i32 %or.i.i21.sink.i, ptr %arrayidx.i8.i23.i, align 4
  %26 = ptrtoint ptr %table_address.0.i190 to i32
  %usThermalControllerOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 24
  %27 = ptrtoint ptr %usThermalControllerOffset.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %usThermalControllerOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.not.i = icmp eq i16 %28, 0
  br i1 %cmp.not.i, label %if.then.i150, label %do.end9.i

if.then.i150:                                     ; preds = %do.end40
  %call.i148 = call i32 @___ratelimit(ptr noundef nonnull @init_thermal_controller._rs, ptr noundef nonnull @__func__.init_thermal_controller) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool.not.i149 = icmp eq i32 %call.i148, 0
  br i1 %tobool.not.i149, label %if.then.i150.if.then60_crit_edge, label %do.end.i

if.then.i150.if.then60_crit_edge:                 ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

do.end.i:                                         ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.51) #11
  br label %if.then60

do.end9.i:                                        ; preds = %do.end40
  %29 = call i16 @llvm.bswap.i16(i16 %28) #7
  %conv.i151 = zext i16 %29 to i32
  %add.i = add i32 %conv.i151, %26
  %30 = inttoptr i32 %add.i to ptr
  %ucType.i = getelementptr inbounds %struct._ATOM_Vega10_Thermal_Controller, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %ucType.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ucType.i, align 1
  %thermal_controller10.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34
  %33 = ptrtoint ptr %thermal_controller10.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %thermal_controller10.i, align 4
  %ucI2cLine.i = getelementptr inbounds %struct._ATOM_Vega10_Thermal_Controller, ptr %30, i32 0, i32 2
  %34 = ptrtoint ptr %ucI2cLine.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ucI2cLine.i, align 1
  %ucI2cLine13.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 1
  %36 = ptrtoint ptr %ucI2cLine13.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %ucI2cLine13.i, align 1
  %ucI2cAddress.i = getelementptr inbounds %struct._ATOM_Vega10_Thermal_Controller, ptr %30, i32 0, i32 3
  %37 = ptrtoint ptr %ucI2cAddress.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ucI2cAddress.i, align 1
  %ucI2cAddress15.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 2
  %39 = ptrtoint ptr %ucI2cAddress15.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %ucI2cAddress15.i, align 2
  %ucFanParameters.i = getelementptr inbounds %struct._ATOM_Vega10_Thermal_Controller, ptr %30, i32 0, i32 4
  %40 = ptrtoint ptr %ucFanParameters.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ucFanParameters.i, align 1
  %fanInfo.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %.lobit.i = lshr i8 %41, 7
  %42 = ptrtoint ptr %fanInfo.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.lobit.i, ptr %fanInfo.i, align 4
  %43 = load i8, ptr %ucFanParameters.i, align 1
  %44 = and i8 %43, 15
  %ucTachometerPulsesPerRevolution.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 1
  %45 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %ucTachometerPulsesPerRevolution.i, align 1
  %ucFanMinRPM.i = getelementptr inbounds %struct._ATOM_Vega10_Thermal_Controller, ptr %30, i32 0, i32 5
  %46 = ptrtoint ptr %ucFanMinRPM.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ucFanMinRPM.i, align 1
  %conv26.i = zext i8 %47 to i32
  %mul.i = mul nuw nsw i32 %conv26.i, 100
  %ulMinRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 2
  %48 = ptrtoint ptr %ulMinRPM.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul.i, ptr %ulMinRPM.i, align 4
  %ucFanMaxRPM.i = getelementptr inbounds %struct._ATOM_Vega10_Thermal_Controller, ptr %30, i32 0, i32 6
  %49 = ptrtoint ptr %ucFanMaxRPM.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ucFanMaxRPM.i, align 1
  %conv29.i = zext i8 %50 to i32
  %mul30.i = mul nuw nsw i32 %conv29.i, 100
  %ulMaxRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 3
  %51 = ptrtoint ptr %ulMaxRPM.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul30.i, ptr %ulMaxRPM.i, align 4
  %ulCycleDelay.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 7
  %52 = ptrtoint ptr %ulCycleDelay.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 100000, ptr %ulCycleDelay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp37.not.i = icmp eq i8 %32, 0
  %and1.i.i.i153 = and i32 %storemerge28.i, -17
  %masksel.i = select i1 %cmp37.not.i, i32 0, i32 16
  %storemerge.i154 = or i32 %masksel.i, %and1.i.i.i153
  %53 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %storemerge.i154, ptr %platform_descriptor.i.i, align 4
  %usFanTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 23
  %54 = ptrtoint ptr %usFanTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %usFanTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool39.not.i = icmp eq i16 %55, 0
  br i1 %tobool39.not.i, label %do.end9.i.do.end72_crit_edge, label %if.end41.i

do.end9.i.do.end72_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

if.end41.i:                                       ; preds = %do.end9.i
  %56 = call i16 @llvm.bswap.i16(i16 %55) #7
  %conv43.i = zext i16 %56 to i32
  %add44.i = add i32 %conv43.i, %26
  %57 = inttoptr i32 %add44.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i8 %59, label %if.else211.i [
    i8 10, label %do.end66.i
    i8 11, label %if.then116.i
  ]

do.end66.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %62, 1073741824
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %usFanOutputSensitivity.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 1
  %63 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %usFanOutputSensitivity.i, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #7
  %usFanOutputSensitivity69.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %66 = ptrtoint ptr %usFanOutputSensitivity69.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %usFanOutputSensitivity69.i, align 4
  %usFanRPMMax.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 2
  %67 = ptrtoint ptr %usFanRPMMax.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %usFanRPMMax.i, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68) #7
  %usMaxFanRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 21
  %70 = ptrtoint ptr %usMaxFanRPM.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %usMaxFanRPM.i, align 2
  %usThrottlingRPM.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 3
  %71 = ptrtoint ptr %usThrottlingRPM.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %usThrottlingRPM.i, align 1
  %73 = call i16 @llvm.bswap.i16(i16 %72) #7
  %usFanRPMMaxLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 18
  %74 = ptrtoint ptr %usFanRPMMaxLimit.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %usFanRPMMaxLimit.i, align 4
  %usFanAcousticLimit.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 4
  %75 = ptrtoint ptr %usFanAcousticLimit.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %usFanAcousticLimit.i, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76) #7
  %conv74.i = zext i16 %77 to i32
  %ulMinFanSCLKAcousticLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %78 = ptrtoint ptr %ulMinFanSCLKAcousticLimit.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv74.i, ptr %ulMinFanSCLKAcousticLimit.i, align 4
  %usTargetTemperature.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 5
  %79 = ptrtoint ptr %usTargetTemperature.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %usTargetTemperature.i, align 1
  %81 = call i16 @llvm.bswap.i16(i16 %80) #7
  %usTMax.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %82 = ptrtoint ptr %usTMax.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %usTMax.i, align 4
  %usMinimumPWMLimit.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 6
  %83 = ptrtoint ptr %usMinimumPWMLimit.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %usMinimumPWMLimit.i, align 1
  %85 = call i16 @llvm.bswap.i16(i16 %84) #7
  %usPWMMin.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %86 = ptrtoint ptr %usPWMMin.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %usPWMMin.i, align 2
  %usTargetGfxClk.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 7
  %87 = ptrtoint ptr %usTargetGfxClk.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %usTargetGfxClk.i, align 1
  %89 = call i16 @llvm.bswap.i16(i16 %88) #7
  %conv81.i = zext i16 %89 to i32
  %ulTargetGfxClk.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 40
  %90 = ptrtoint ptr %ulTargetGfxClk.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv81.i, ptr %ulTargetGfxClk.i, align 4
  %usFanGainEdge.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 8
  %91 = ptrtoint ptr %usFanGainEdge.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %usFanGainEdge.i, align 1
  %93 = call i16 @llvm.bswap.i16(i16 %92) #7
  %usFanGainEdge86.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 29
  %94 = ptrtoint ptr %usFanGainEdge86.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %usFanGainEdge86.i, align 2
  %usFanGainHotspot.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 9
  %95 = ptrtoint ptr %usFanGainHotspot.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %usFanGainHotspot.i, align 1
  %97 = call i16 @llvm.bswap.i16(i16 %96) #7
  %usFanGainHotspot89.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 30
  %98 = ptrtoint ptr %usFanGainHotspot89.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %usFanGainHotspot89.i, align 4
  %usFanGainLiquid.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 10
  %99 = ptrtoint ptr %usFanGainLiquid.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %usFanGainLiquid.i, align 1
  %101 = call i16 @llvm.bswap.i16(i16 %100) #7
  %usFanGainLiquid92.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 31
  %102 = ptrtoint ptr %usFanGainLiquid92.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %usFanGainLiquid92.i, align 2
  %usFanGainVrVddc.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 11
  %103 = ptrtoint ptr %usFanGainVrVddc.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %usFanGainVrVddc.i, align 1
  %105 = call i16 @llvm.bswap.i16(i16 %104) #7
  %usFanGainVrVddc95.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 32
  %106 = ptrtoint ptr %usFanGainVrVddc95.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %usFanGainVrVddc95.i, align 4
  %usFanGainVrMvdd.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 12
  %107 = ptrtoint ptr %usFanGainVrMvdd.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %usFanGainVrMvdd.i, align 1
  %109 = call i16 @llvm.bswap.i16(i16 %108) #7
  %usFanGainVrMvdd98.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 33
  %110 = ptrtoint ptr %usFanGainVrMvdd98.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %usFanGainVrMvdd98.i, align 2
  %usFanGainPlx.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 13
  %111 = ptrtoint ptr %usFanGainPlx.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %usFanGainPlx.i, align 1
  %113 = call i16 @llvm.bswap.i16(i16 %112) #7
  %usFanGainPlx101.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 34
  %114 = ptrtoint ptr %usFanGainPlx101.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %usFanGainPlx101.i, align 4
  %usFanGainHbm.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 14
  %115 = ptrtoint ptr %usFanGainHbm.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %usFanGainHbm.i, align 1
  %117 = call i16 @llvm.bswap.i16(i16 %116) #7
  %usFanGainHbm104.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 35
  %118 = ptrtoint ptr %usFanGainHbm104.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %usFanGainHbm104.i, align 2
  %ucEnableZeroRPM.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 15
  %119 = ptrtoint ptr %ucEnableZeroRPM.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ucEnableZeroRPM.i, align 1
  %ucEnableZeroRPM107.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 36
  %121 = ptrtoint ptr %ucEnableZeroRPM107.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %ucEnableZeroRPM107.i, align 4
  %usFanStopTemperature.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 16
  %122 = ptrtoint ptr %usFanStopTemperature.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %usFanStopTemperature.i, align 1
  %124 = call i16 @llvm.bswap.i16(i16 %123) #7
  %usZeroRPMStopTemperature.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 42
  %125 = ptrtoint ptr %usZeroRPMStopTemperature.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %usZeroRPMStopTemperature.i, align 2
  %usFanStartTemperature.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table, ptr %57, i32 0, i32 17
  %126 = ptrtoint ptr %usFanStartTemperature.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %usFanStartTemperature.i, align 1
  %128 = call i16 @llvm.bswap.i16(i16 %127) #7
  %usZeroRPMStartTemperature.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 41
  %129 = ptrtoint ptr %usZeroRPMStartTemperature.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %usZeroRPMStartTemperature.i, align 4
  br label %do.end72

if.then116.i:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %ucFanParameters117.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 17
  %130 = ptrtoint ptr %ucFanParameters117.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %ucFanParameters117.i, align 1
  %132 = and i8 %131, 15
  %133 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %ucTachometerPulsesPerRevolution.i, align 1
  %ucFanMinRPM124.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 18
  %134 = ptrtoint ptr %ucFanMinRPM124.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %ucFanMinRPM124.i, align 1
  %conv125.i = zext i8 %135 to i32
  %mul126.i = mul nuw nsw i32 %conv125.i, 100
  %136 = ptrtoint ptr %ulMinRPM.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %mul126.i, ptr %ulMinRPM.i, align 4
  %ucFanMaxRPM130.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 19
  %137 = ptrtoint ptr %ucFanMaxRPM130.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ucFanMaxRPM130.i, align 1
  %conv131.i = zext i8 %138 to i32
  %mul132.i = mul nuw nsw i32 %conv131.i, 100
  %139 = ptrtoint ptr %ulMaxRPM.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %mul132.i, ptr %ulMaxRPM.i, align 4
  %arrayidx.i463.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %140 = ptrtoint ptr %arrayidx.i463.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i463.i, align 4
  %or.i464.i = or i32 %141, 1073741824
  store i32 %or.i464.i, ptr %arrayidx.i463.i, align 4
  %usFanOutputSensitivity139.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 1
  %142 = ptrtoint ptr %usFanOutputSensitivity139.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %usFanOutputSensitivity139.i, align 1
  %144 = call i16 @llvm.bswap.i16(i16 %143) #7
  %usFanOutputSensitivity142.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %145 = ptrtoint ptr %usFanOutputSensitivity142.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %usFanOutputSensitivity142.i, align 4
  %146 = ptrtoint ptr %ucFanMaxRPM130.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ucFanMaxRPM130.i, align 1
  %conv144.i = zext i8 %147 to i16
  %mul145.i = mul nuw nsw i16 %conv144.i, 100
  %usMaxFanRPM149.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 21
  %148 = ptrtoint ptr %usMaxFanRPM149.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %mul145.i, ptr %usMaxFanRPM149.i, align 2
  %usThrottlingRPM150.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 3
  %149 = ptrtoint ptr %usThrottlingRPM150.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %usThrottlingRPM150.i, align 1
  %151 = call i16 @llvm.bswap.i16(i16 %150) #7
  %usFanRPMMaxLimit153.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 18
  %152 = ptrtoint ptr %usFanRPMMaxLimit153.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %usFanRPMMaxLimit153.i, align 4
  %usFanAcousticLimitRpm.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 2
  %153 = ptrtoint ptr %usFanAcousticLimitRpm.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %154 = load i16, ptr %usFanAcousticLimitRpm.i, align 1
  %155 = call i16 @llvm.bswap.i16(i16 %154) #7
  %conv154.i = zext i16 %155 to i32
  %ulMinFanSCLKAcousticLimit157.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %156 = ptrtoint ptr %ulMinFanSCLKAcousticLimit157.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv154.i, ptr %ulMinFanSCLKAcousticLimit157.i, align 4
  %usTargetTemperature158.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 4
  %157 = ptrtoint ptr %usTargetTemperature158.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %usTargetTemperature158.i, align 1
  %159 = call i16 @llvm.bswap.i16(i16 %158) #7
  %usTMax161.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %160 = ptrtoint ptr %usTMax161.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %usTMax161.i, align 4
  %usMinimumPWMLimit162.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 5
  %161 = ptrtoint ptr %usMinimumPWMLimit162.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %usMinimumPWMLimit162.i, align 1
  %163 = call i16 @llvm.bswap.i16(i16 %162) #7
  %usPWMMin165.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %164 = ptrtoint ptr %usPWMMin165.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %usPWMMin165.i, align 2
  %usTargetGfxClk166.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 6
  %165 = ptrtoint ptr %usTargetGfxClk166.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %usTargetGfxClk166.i, align 1
  %167 = call i16 @llvm.bswap.i16(i16 %166) #7
  %conv167.i = zext i16 %167 to i32
  %ulTargetGfxClk170.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 40
  %168 = ptrtoint ptr %ulTargetGfxClk170.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %conv167.i, ptr %ulTargetGfxClk170.i, align 4
  %usFanGainEdge171.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 7
  %169 = ptrtoint ptr %usFanGainEdge171.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %usFanGainEdge171.i, align 1
  %171 = call i16 @llvm.bswap.i16(i16 %170) #7
  %usFanGainEdge174.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 29
  %172 = ptrtoint ptr %usFanGainEdge174.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %usFanGainEdge174.i, align 2
  %usFanGainHotspot175.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 8
  %173 = ptrtoint ptr %usFanGainHotspot175.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %usFanGainHotspot175.i, align 1
  %175 = call i16 @llvm.bswap.i16(i16 %174) #7
  %usFanGainHotspot178.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 30
  %176 = ptrtoint ptr %usFanGainHotspot178.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %usFanGainHotspot178.i, align 4
  %usFanGainLiquid179.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 9
  %177 = ptrtoint ptr %usFanGainLiquid179.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 2)
  %178 = load i16, ptr %usFanGainLiquid179.i, align 1
  %179 = call i16 @llvm.bswap.i16(i16 %178) #7
  %usFanGainLiquid182.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 31
  %180 = ptrtoint ptr %usFanGainLiquid182.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %usFanGainLiquid182.i, align 2
  %usFanGainVrVddc183.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 10
  %181 = ptrtoint ptr %usFanGainVrVddc183.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 2)
  %182 = load i16, ptr %usFanGainVrVddc183.i, align 1
  %183 = call i16 @llvm.bswap.i16(i16 %182) #7
  %usFanGainVrVddc186.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 32
  %184 = ptrtoint ptr %usFanGainVrVddc186.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %usFanGainVrVddc186.i, align 4
  %usFanGainVrMvdd187.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 11
  %185 = ptrtoint ptr %usFanGainVrMvdd187.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 2)
  %186 = load i16, ptr %usFanGainVrMvdd187.i, align 1
  %187 = call i16 @llvm.bswap.i16(i16 %186) #7
  %usFanGainVrMvdd190.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 33
  %188 = ptrtoint ptr %usFanGainVrMvdd190.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %187, ptr %usFanGainVrMvdd190.i, align 2
  %usFanGainPlx191.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 12
  %189 = ptrtoint ptr %usFanGainPlx191.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %usFanGainPlx191.i, align 1
  %191 = call i16 @llvm.bswap.i16(i16 %190) #7
  %usFanGainPlx194.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 34
  %192 = ptrtoint ptr %usFanGainPlx194.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %191, ptr %usFanGainPlx194.i, align 4
  %usFanGainHbm195.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 13
  %193 = ptrtoint ptr %usFanGainHbm195.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %194 = load i16, ptr %usFanGainHbm195.i, align 1
  %195 = call i16 @llvm.bswap.i16(i16 %194) #7
  %usFanGainHbm198.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 35
  %196 = ptrtoint ptr %usFanGainHbm198.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %195, ptr %usFanGainHbm198.i, align 2
  %ucEnableZeroRPM199.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 14
  %197 = ptrtoint ptr %ucEnableZeroRPM199.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ucEnableZeroRPM199.i, align 1
  %ucEnableZeroRPM202.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 36
  %199 = ptrtoint ptr %ucEnableZeroRPM202.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %ucEnableZeroRPM202.i, align 4
  %usFanStopTemperature203.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 15
  %200 = ptrtoint ptr %usFanStopTemperature203.i to i32
  call void @__asan_loadN_noabort(i32 %200, i32 2)
  %201 = load i16, ptr %usFanStopTemperature203.i, align 1
  %202 = call i16 @llvm.bswap.i16(i16 %201) #7
  %usZeroRPMStopTemperature206.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 42
  %203 = ptrtoint ptr %usZeroRPMStopTemperature206.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %usZeroRPMStopTemperature206.i, align 2
  %usFanStartTemperature207.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V2, ptr %57, i32 0, i32 16
  %204 = ptrtoint ptr %usFanStartTemperature207.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %205 = load i16, ptr %usFanStartTemperature207.i, align 1
  %206 = call i16 @llvm.bswap.i16(i16 %205) #7
  %usZeroRPMStartTemperature210.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 41
  %207 = ptrtoint ptr %usZeroRPMStartTemperature210.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %206, ptr %usZeroRPMStartTemperature210.i, align 4
  br label %do.end72

if.else211.i:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %59)
  %cmp214.i = icmp ugt i8 %59, 11
  br i1 %cmp214.i, label %if.then216.i, label %if.else211.i.do.end72_crit_edge

if.else211.i.do.end72_crit_edge:                  ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

if.then216.i:                                     ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_pc() #9
  %ucFanParameters217.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 17
  %208 = ptrtoint ptr %ucFanParameters217.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %ucFanParameters217.i, align 1
  %210 = and i8 %209, 15
  %211 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %ucTachometerPulsesPerRevolution.i, align 1
  %ucFanMinRPM224.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 18
  %212 = ptrtoint ptr %ucFanMinRPM224.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %ucFanMinRPM224.i, align 1
  %conv225.i = zext i8 %213 to i32
  %mul226.i = mul nuw nsw i32 %conv225.i, 100
  %214 = ptrtoint ptr %ulMinRPM.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %mul226.i, ptr %ulMinRPM.i, align 4
  %ucFanMaxRPM230.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 19
  %215 = ptrtoint ptr %ucFanMaxRPM230.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %ucFanMaxRPM230.i, align 1
  %conv231.i = zext i8 %216 to i32
  %mul232.i = mul nuw nsw i32 %conv231.i, 100
  %217 = ptrtoint ptr %ulMaxRPM.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %mul232.i, ptr %ulMaxRPM.i, align 4
  %arrayidx.i465.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %218 = ptrtoint ptr %arrayidx.i465.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx.i465.i, align 4
  %or.i466.i = or i32 %219, 1073741824
  store i32 %or.i466.i, ptr %arrayidx.i465.i, align 4
  %usFanOutputSensitivity239.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 1
  %220 = ptrtoint ptr %usFanOutputSensitivity239.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 2)
  %221 = load i16, ptr %usFanOutputSensitivity239.i, align 1
  %222 = call i16 @llvm.bswap.i16(i16 %221) #7
  %usFanOutputSensitivity242.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %223 = ptrtoint ptr %usFanOutputSensitivity242.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %222, ptr %usFanOutputSensitivity242.i, align 4
  %224 = ptrtoint ptr %ucFanMaxRPM230.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %ucFanMaxRPM230.i, align 1
  %conv244.i = zext i8 %225 to i16
  %mul245.i = mul nuw nsw i16 %conv244.i, 100
  %usMaxFanRPM249.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 21
  %226 = ptrtoint ptr %usMaxFanRPM249.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %mul245.i, ptr %usMaxFanRPM249.i, align 2
  %usThrottlingRPM250.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 3
  %227 = ptrtoint ptr %usThrottlingRPM250.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 2)
  %228 = load i16, ptr %usThrottlingRPM250.i, align 1
  %229 = call i16 @llvm.bswap.i16(i16 %228) #7
  %usFanRPMMaxLimit253.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 18
  %230 = ptrtoint ptr %usFanRPMMaxLimit253.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %229, ptr %usFanRPMMaxLimit253.i, align 4
  %usFanAcousticLimitRpm254.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 2
  %231 = ptrtoint ptr %usFanAcousticLimitRpm254.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 2)
  %232 = load i16, ptr %usFanAcousticLimitRpm254.i, align 1
  %233 = call i16 @llvm.bswap.i16(i16 %232) #7
  %conv255.i = zext i16 %233 to i32
  %ulMinFanSCLKAcousticLimit258.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %234 = ptrtoint ptr %ulMinFanSCLKAcousticLimit258.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv255.i, ptr %ulMinFanSCLKAcousticLimit258.i, align 4
  %usTargetTemperature259.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 4
  %235 = ptrtoint ptr %usTargetTemperature259.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 2)
  %236 = load i16, ptr %usTargetTemperature259.i, align 1
  %237 = call i16 @llvm.bswap.i16(i16 %236) #7
  %usTMax262.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %238 = ptrtoint ptr %usTMax262.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %237, ptr %usTMax262.i, align 4
  %usMinimumPWMLimit263.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 5
  %239 = ptrtoint ptr %usMinimumPWMLimit263.i to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %240 = load i16, ptr %usMinimumPWMLimit263.i, align 1
  %241 = call i16 @llvm.bswap.i16(i16 %240) #7
  %usPWMMin266.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %242 = ptrtoint ptr %usPWMMin266.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %241, ptr %usPWMMin266.i, align 2
  %usTargetGfxClk267.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 6
  %243 = ptrtoint ptr %usTargetGfxClk267.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 2)
  %244 = load i16, ptr %usTargetGfxClk267.i, align 1
  %245 = call i16 @llvm.bswap.i16(i16 %244) #7
  %conv268.i = zext i16 %245 to i32
  %ulTargetGfxClk271.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 40
  %246 = ptrtoint ptr %ulTargetGfxClk271.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %conv268.i, ptr %ulTargetGfxClk271.i, align 4
  %usFanGainEdge272.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 7
  %247 = ptrtoint ptr %usFanGainEdge272.i to i32
  call void @__asan_loadN_noabort(i32 %247, i32 2)
  %248 = load i16, ptr %usFanGainEdge272.i, align 1
  %249 = call i16 @llvm.bswap.i16(i16 %248) #7
  %usFanGainEdge275.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 29
  %250 = ptrtoint ptr %usFanGainEdge275.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %usFanGainEdge275.i, align 2
  %usFanGainHotspot276.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 8
  %251 = ptrtoint ptr %usFanGainHotspot276.i to i32
  call void @__asan_loadN_noabort(i32 %251, i32 2)
  %252 = load i16, ptr %usFanGainHotspot276.i, align 1
  %253 = call i16 @llvm.bswap.i16(i16 %252) #7
  %usFanGainHotspot279.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 30
  %254 = ptrtoint ptr %usFanGainHotspot279.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %253, ptr %usFanGainHotspot279.i, align 4
  %usFanGainLiquid280.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 9
  %255 = ptrtoint ptr %usFanGainLiquid280.i to i32
  call void @__asan_loadN_noabort(i32 %255, i32 2)
  %256 = load i16, ptr %usFanGainLiquid280.i, align 1
  %257 = call i16 @llvm.bswap.i16(i16 %256) #7
  %usFanGainLiquid283.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 31
  %258 = ptrtoint ptr %usFanGainLiquid283.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %257, ptr %usFanGainLiquid283.i, align 2
  %usFanGainVrVddc284.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 10
  %259 = ptrtoint ptr %usFanGainVrVddc284.i to i32
  call void @__asan_loadN_noabort(i32 %259, i32 2)
  %260 = load i16, ptr %usFanGainVrVddc284.i, align 1
  %261 = call i16 @llvm.bswap.i16(i16 %260) #7
  %usFanGainVrVddc287.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 32
  %262 = ptrtoint ptr %usFanGainVrVddc287.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %261, ptr %usFanGainVrVddc287.i, align 4
  %usFanGainVrMvdd288.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 11
  %263 = ptrtoint ptr %usFanGainVrMvdd288.i to i32
  call void @__asan_loadN_noabort(i32 %263, i32 2)
  %264 = load i16, ptr %usFanGainVrMvdd288.i, align 1
  %265 = call i16 @llvm.bswap.i16(i16 %264) #7
  %usFanGainVrMvdd291.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 33
  %266 = ptrtoint ptr %usFanGainVrMvdd291.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %265, ptr %usFanGainVrMvdd291.i, align 2
  %usFanGainPlx292.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 12
  %267 = ptrtoint ptr %usFanGainPlx292.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 2)
  %268 = load i16, ptr %usFanGainPlx292.i, align 1
  %269 = call i16 @llvm.bswap.i16(i16 %268) #7
  %usFanGainPlx295.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 34
  %270 = ptrtoint ptr %usFanGainPlx295.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %269, ptr %usFanGainPlx295.i, align 4
  %usFanGainHbm296.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 13
  %271 = ptrtoint ptr %usFanGainHbm296.i to i32
  call void @__asan_loadN_noabort(i32 %271, i32 2)
  %272 = load i16, ptr %usFanGainHbm296.i, align 1
  %273 = call i16 @llvm.bswap.i16(i16 %272) #7
  %usFanGainHbm299.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 35
  %274 = ptrtoint ptr %usFanGainHbm299.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %273, ptr %usFanGainHbm299.i, align 2
  %ucEnableZeroRPM300.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 14
  %275 = ptrtoint ptr %ucEnableZeroRPM300.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %ucEnableZeroRPM300.i, align 1
  %ucEnableZeroRPM303.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 36
  %277 = ptrtoint ptr %ucEnableZeroRPM303.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %ucEnableZeroRPM303.i, align 4
  %usFanStopTemperature304.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 15
  %278 = ptrtoint ptr %usFanStopTemperature304.i to i32
  call void @__asan_loadN_noabort(i32 %278, i32 2)
  %279 = load i16, ptr %usFanStopTemperature304.i, align 1
  %280 = call i16 @llvm.bswap.i16(i16 %279) #7
  %usZeroRPMStopTemperature307.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 42
  %281 = ptrtoint ptr %usZeroRPMStopTemperature307.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %280, ptr %usZeroRPMStopTemperature307.i, align 2
  %usFanStartTemperature308.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 16
  %282 = ptrtoint ptr %usFanStartTemperature308.i to i32
  call void @__asan_loadN_noabort(i32 %282, i32 2)
  %283 = load i16, ptr %usFanStartTemperature308.i, align 1
  %284 = call i16 @llvm.bswap.i16(i16 %283) #7
  %usZeroRPMStartTemperature311.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 41
  %285 = ptrtoint ptr %usZeroRPMStartTemperature311.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %284, ptr %usZeroRPMStartTemperature311.i, align 4
  %usMGpuThrottlingRPM.i = getelementptr inbounds %struct._ATOM_Vega10_Fan_Table_V3, ptr %57, i32 0, i32 20
  %286 = ptrtoint ptr %usMGpuThrottlingRPM.i to i32
  call void @__asan_loadN_noabort(i32 %286, i32 2)
  %287 = load i16, ptr %usMGpuThrottlingRPM.i, align 1
  %288 = call i16 @llvm.bswap.i16(i16 %287) #7
  %usMGpuThrottlingRPMLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 43
  %289 = ptrtoint ptr %usMGpuThrottlingRPMLimit.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %288, ptr %usMGpuThrottlingRPMLimit.i, align 4
  br label %do.end72

if.then60:                                        ; preds = %do.end.i, %if.then.i150.if.then60_crit_edge
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @vega10_pp_tables_initialize._rs.35, ptr noundef nonnull @__func__.vega10_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.cleanup_crit_edge, label %do.end66

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38) #11
  br label %cleanup

do.end72:                                         ; preds = %if.then216.i, %if.else211.i.do.end72_crit_edge, %if.then116.i, %do.end66.i, %do.end9.i.do.end72_crit_edge
  %usGfxclkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 27
  %290 = ptrtoint ptr %usGfxclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %290, i32 2)
  %291 = load i16, ptr %usGfxclkDependencyTableOffset.i, align 1
  %292 = call i16 @llvm.bswap.i16(i16 %291) #7
  %conv.i155 = zext i16 %292 to i32
  %add.i156 = add i32 %conv.i155, %26
  %293 = inttoptr i32 %add.i156 to ptr
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %293, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %295)
  %cmp.i = icmp eq i8 %295, 1
  br i1 %cmp.i, label %if.then.i157, label %do.end72.init_over_drive_limits.exit_crit_edge

do.end72.init_over_drive_limits.exit_crit_edge:   ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_over_drive_limits.exit

if.then.i157:                                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %entries.i = getelementptr inbounds %struct._ATOM_Vega10_GFXCLK_Dependency_Table, ptr %293, i32 0, i32 2
  %ucNumEntries.i = getelementptr inbounds %struct._ATOM_Vega10_GFXCLK_Dependency_Table, ptr %293, i32 0, i32 1
  %296 = ptrtoint ptr %ucNumEntries.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %ucNumEntries.i, align 1
  %conv3.i = zext i8 %297 to i32
  %sub.i = add nsw i32 %conv3.i, -1
  %ucACGEnable.i = getelementptr %struct._ATOM_Vega10_GFXCLK_Dependency_Record_V2, ptr %entries.i, i32 %sub.i, i32 4
  %298 = ptrtoint ptr %ucACGEnable.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %ucACGEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool.i = icmp ne i8 %299, 0
  br label %init_over_drive_limits.exit

init_over_drive_limits.exit:                      ; preds = %if.then.i157, %do.end72.init_over_drive_limits.exit_crit_edge
  %is_acg_enabled.0.off0.i = phi i1 [ %tobool.i, %if.then.i157 ], [ false, %do.end72.init_over_drive_limits.exit_crit_edge ]
  %ulMaxODEngineClock.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 7
  %300 = ptrtoint ptr %ulMaxODEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %300, i32 4)
  %301 = load i32, ptr %ulMaxODEngineClock.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 198001, i32 %301)
  %cmp4.i = icmp ult i32 %301, 198001
  %brmerge.i = select i1 %cmp4.i, i1 true, i1 %is_acg_enabled.0.off0.i
  %302 = call i32 @llvm.bswap.i32(i32 %301) #7
  %spec.select.i = select i1 %brmerge.i, i32 %302, i32 198000
  %303 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 2
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %spec.select.i, ptr %303, align 4
  %ulMaxODMemoryClock.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 8
  %305 = ptrtoint ptr %ulMaxODMemoryClock.i to i32
  call void @__asan_loadN_noabort(i32 %305, i32 4)
  %306 = load i32, ptr %ulMaxODMemoryClock.i, align 1
  %307 = call i32 @llvm.bswap.i32(i32 %306) #7
  %memoryClock.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 2, i32 1
  %308 = ptrtoint ptr %memoryClock.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %memoryClock.i, align 4
  %minOverdriveVDDC.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 6
  %309 = ptrtoint ptr %minOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 0, ptr %minOverdriveVDDC.i, align 4
  %maxOverdriveVDDC.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 7
  %310 = ptrtoint ptr %maxOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 0, ptr %maxOverdriveVDDC.i, align 4
  %overdriveVDDCStep.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 8
  %311 = ptrtoint ptr %overdriveVDDCStep.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 0, ptr %overdriveVDDCStep.i, align 4
  %312 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %pptable, align 4
  %usMMDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 31
  %314 = ptrtoint ptr %usMMDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %314, i32 2)
  %315 = load i16, ptr %usMMDependencyTableOffset.i, align 1
  %usPowerTuneTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 34
  %316 = ptrtoint ptr %usPowerTuneTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %316, i32 2)
  %317 = load i16, ptr %usPowerTuneTableOffset.i, align 1
  %318 = call i16 @llvm.bswap.i16(i16 %317) #7
  %conv1.i = zext i16 %318 to i32
  %add2.i = add i32 %conv1.i, %26
  %319 = inttoptr i32 %add2.i to ptr
  %usSocclkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 25
  %320 = ptrtoint ptr %usSocclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %320, i32 2)
  %321 = load i16, ptr %usSocclkDependencyTableOffset.i, align 1
  %322 = call i16 @llvm.bswap.i16(i16 %321) #7
  %conv3.i158 = zext i16 %322 to i32
  %add4.i = add i32 %conv3.i158, %26
  %323 = inttoptr i32 %add4.i to ptr
  %324 = ptrtoint ptr %usGfxclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %324, i32 2)
  %325 = load i16, ptr %usGfxclkDependencyTableOffset.i, align 1
  %326 = call i16 @llvm.bswap.i16(i16 %325) #7
  %conv5.i = zext i16 %326 to i32
  %add6.i = add i32 %conv5.i, %26
  %327 = inttoptr i32 %add6.i to ptr
  %usDcefclkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 28
  %328 = ptrtoint ptr %usDcefclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %328, i32 2)
  %329 = load i16, ptr %usDcefclkDependencyTableOffset.i, align 1
  %330 = call i16 @llvm.bswap.i16(i16 %329) #7
  %conv7.i = zext i16 %330 to i32
  %add8.i = add i32 %conv7.i, %26
  %331 = inttoptr i32 %add8.i to ptr
  %usMclkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 26
  %332 = ptrtoint ptr %usMclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %332, i32 2)
  %333 = load i16, ptr %usMclkDependencyTableOffset.i, align 1
  %334 = call i16 @llvm.bswap.i16(i16 %333) #7
  %conv9.i = zext i16 %334 to i32
  %add10.i = add i32 %conv9.i, %26
  %335 = inttoptr i32 %add10.i to ptr
  %usHardLimitTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 35
  %336 = ptrtoint ptr %usHardLimitTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %336, i32 2)
  %337 = load i16, ptr %usHardLimitTableOffset.i, align 1
  %338 = call i16 @llvm.bswap.i16(i16 %337) #7
  %conv11.i = zext i16 %338 to i32
  %add12.i = add i32 %conv11.i, %26
  %339 = inttoptr i32 %add12.i to ptr
  %usPCIETableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 37
  %340 = ptrtoint ptr %usPCIETableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %340, i32 2)
  %341 = load i16, ptr %usPCIETableOffset.i, align 1
  %342 = call i16 @llvm.bswap.i16(i16 %341) #7
  %conv13.i = zext i16 %342 to i32
  %add14.i = add i32 %conv13.i, %26
  %343 = inttoptr i32 %add14.i to ptr
  %usPixclkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 38
  %344 = ptrtoint ptr %usPixclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %344, i32 2)
  %345 = load i16, ptr %usPixclkDependencyTableOffset.i, align 1
  %346 = call i16 @llvm.bswap.i16(i16 %345) #7
  %conv15.i = zext i16 %346 to i32
  %add16.i = add i32 %conv15.i, %26
  %347 = inttoptr i32 %add16.i to ptr
  %usPhyClkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 40
  %348 = ptrtoint ptr %usPhyClkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %348, i32 2)
  %349 = load i16, ptr %usPhyClkDependencyTableOffset.i, align 1
  %350 = call i16 @llvm.bswap.i16(i16 %349) #7
  %conv17.i = zext i16 %350 to i32
  %add18.i = add i32 %conv17.i, %26
  %351 = inttoptr i32 %add18.i to ptr
  %usDispClkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 39
  %352 = ptrtoint ptr %usDispClkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %352, i32 2)
  %353 = load i16, ptr %usDispClkDependencyTableOffset.i, align 1
  %354 = call i16 @llvm.bswap.i16(i16 %353) #7
  %conv19.i = zext i16 %354 to i32
  %add20.i = add i32 %conv19.i, %26
  %355 = inttoptr i32 %add20.i to ptr
  %vdd_dep_on_socclk.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 2
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 1
  %vdd_dep_on_dcefclk.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 3
  %mm_dep_table.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 7
  %tdp_table.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 17
  %356 = ptrtoint ptr %tdp_table.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr null, ptr %tdp_table.i, align 4
  %vdd_dep_on_pixclk.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 4
  %vdd_dep_on_phyclk.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 6
  %vdd_dep_on_dispclk.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 5
  %357 = call ptr @memset(ptr %313, i32 0, i32 32)
  %358 = ptrtoint ptr %usMMDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %358, i32 2)
  %359 = load i16, ptr %usMMDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %359)
  %tobool.not.i160 = icmp eq i16 %359, 0
  br i1 %tobool.not.i160, label %init_over_drive_limits.exit.land.lhs.true.i_crit_edge, label %if.then.i163

init_over_drive_limits.exit.land.lhs.true.i_crit_edge: ; preds = %init_over_drive_limits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then.i163:                                     ; preds = %init_over_drive_limits.exit
  %360 = call i16 @llvm.bswap.i16(i16 %315) #7
  %conv.i161 = zext i16 %360 to i32
  %add.i162 = add i32 %conv.i161, %26
  %361 = inttoptr i32 %add.i162 to ptr
  %ucNumEntries.i.i = getelementptr inbounds %struct._ATOM_Vega10_MM_Dependency_Table, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %ucNumEntries.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %ucNumEntries.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %cmp.not.i.i = icmp eq i8 %363, 0
  br i1 %cmp.not.i.i, label %if.then.i.i, label %if.end8.i.i.i.i

if.then.i.i:                                      ; preds = %if.then.i163
  %call.i.i = call i32 @___ratelimit(ptr noundef nonnull @get_mm_clock_voltage_table._rs, ptr noundef nonnull @__func__.get_mm_clock_voltage_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end110.i_crit_edge, label %do.end.i.i

if.then.i.i.if.end110.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end110.i

if.end8.i.i.i.i:                                  ; preds = %if.then.i163
  %conv.i.i = zext i8 %363 to i32
  %364 = shl nuw nsw i32 %conv.i.i, 5
  %spec.select.i1.i.i = or i32 %364, 4
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i.i, i32 noundef 3520) #12
  %tobool12.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool12.not.i.i, label %if.end8.i.i.i.i.if.end110.i_crit_edge, label %if.end14.i.i

if.end8.i.i.i.i.if.end110.i_crit_edge:            ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end14.i.i:                                     ; preds = %if.end8.i.i.i.i
  %365 = ptrtoint ptr %ucNumEntries.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %ucNumEntries.i.i, align 1
  %conv16.i.i = zext i8 %366 to i32
  %367 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %conv16.i.i, ptr %call9.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %cmp192.not.i.i = icmp eq i8 %366, 0
  br i1 %cmp192.not.i.i, label %if.end14.i.i.for.end.i.i_crit_edge, label %if.end14.i.i.for.body.i.i_crit_edge

if.end14.i.i.for.body.i.i_crit_edge:              ; preds = %if.end14.i.i
  br label %for.body.i.i

if.end14.i.i.for.end.i.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end14.i.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end14.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i164 = getelementptr %struct._ATOM_Vega10_MM_Dependency_Table, ptr %361, i32 0, i32 2, i32 %i.03.i.i
  %368 = ptrtoint ptr %arrayidx.i.i164 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx.i.i164, align 1
  %arrayidx22.i.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %call9.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i
  %vddcInd.i.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %call9.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i, i32 5
  %370 = ptrtoint ptr %vddcInd.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %369, ptr %vddcInd.i.i, align 8
  %ulPSPClk.i.i = getelementptr %struct._ATOM_Vega10_MM_Dependency_Table, ptr %361, i32 0, i32 2, i32 %i.03.i.i, i32 4
  %371 = ptrtoint ptr %ulPSPClk.i.i to i32
  call void @__asan_loadN_noabort(i32 %371, i32 4)
  %372 = load i32, ptr %ulPSPClk.i.i, align 1
  %373 = call i32 @llvm.bswap.i32(i32 %372) #7
  %samclock.i.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %call9.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i, i32 4
  %374 = ptrtoint ptr %samclock.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %373, ptr %samclock.i.i, align 4
  %ulEClk.i.i = getelementptr %struct._ATOM_Vega10_MM_Dependency_Table, ptr %361, i32 0, i32 2, i32 %i.03.i.i, i32 3
  %375 = ptrtoint ptr %ulEClk.i.i to i32
  call void @__asan_loadN_noabort(i32 %375, i32 4)
  %376 = load i32, ptr %ulEClk.i.i, align 1
  %377 = call i32 @llvm.bswap.i32(i32 %376) #7
  %eclk.i.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %call9.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i, i32 2
  %378 = ptrtoint ptr %eclk.i.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %eclk.i.i, align 4
  %ulVClk.i.i = getelementptr %struct._ATOM_Vega10_MM_Dependency_Table, ptr %361, i32 0, i32 2, i32 %i.03.i.i, i32 2
  %379 = ptrtoint ptr %ulVClk.i.i to i32
  call void @__asan_loadN_noabort(i32 %379, i32 4)
  %380 = load i32, ptr %ulVClk.i.i, align 1
  %381 = call i32 @llvm.bswap.i32(i32 %380) #7
  %vclk.i.i = getelementptr %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %call9.i.i.i.i, i32 0, i32 1, i32 %i.03.i.i, i32 1
  %382 = ptrtoint ptr %vclk.i.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %381, ptr %vclk.i.i, align 8
  %ulDClk.i.i = getelementptr %struct._ATOM_Vega10_MM_Dependency_Table, ptr %361, i32 0, i32 2, i32 %i.03.i.i, i32 1
  %383 = ptrtoint ptr %ulDClk.i.i to i32
  call void @__asan_loadN_noabort(i32 %383, i32 4)
  %384 = load i32, ptr %ulDClk.i.i, align 1
  %385 = call i32 @llvm.bswap.i32(i32 %384) #7
  %386 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %385, ptr %arrayidx22.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv16.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end14.i.i.for.end.i.i_crit_edge
  %387 = ptrtoint ptr %mm_dep_table.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %call9.i.i.i.i, ptr %mm_dep_table.i, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.end.i.i, %init_over_drive_limits.exit.land.lhs.true.i_crit_edge
  %388 = ptrtoint ptr %usPowerTuneTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %388, i32 2)
  %389 = load i16, ptr %usPowerTuneTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %389)
  %tobool26.not.i = icmp eq i16 %389, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.land.lhs.true32.i_crit_edge, label %if.then27.i

land.lhs.true.i.land.lhs.true32.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true32.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %390 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i280.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %390, i32 noundef 3520, i32 noundef 80) #10
  %tobool.not.i281.i = icmp eq ptr %call7.i.i.i280.i, null
  br i1 %tobool.not.i281.i, label %if.then27.i.if.end110.i_crit_edge, label %if.end.i.i

if.then27.i.if.end110.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end.i.i:                                       ; preds = %if.then27.i
  %391 = ptrtoint ptr %319 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %319, align 1
  %393 = zext i8 %392 to i64
  call void @__sanitizer_cov_trace_switch(i64 %393, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %392, label %if.else65.i.i [
    i8 5, label %if.then2.i.i
    i8 6, label %if.then20.i.i
  ]

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %usSocketPowerLimit.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 1
  %394 = ptrtoint ptr %usSocketPowerLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %394, i32 2)
  %395 = load i16, ptr %usSocketPowerLimit.i.i, align 1
  %396 = call i16 @llvm.bswap.i16(i16 %395) #7
  %usMaximumPowerDeliveryLimit.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 7
  %397 = ptrtoint ptr %usMaximumPowerDeliveryLimit.i.i to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %396, ptr %usMaximumPowerDeliveryLimit.i.i, align 2
  %usTdcLimit.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 4
  %398 = ptrtoint ptr %usTdcLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %398, i32 2)
  %399 = load i16, ptr %usTdcLimit.i.i, align 1
  %400 = call i16 @llvm.bswap.i16(i16 %399) #7
  %usTDC.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 2
  %401 = ptrtoint ptr %usTDC.i.i to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 %400, ptr %usTDC.i.i, align 4
  %usEdcLimit.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 5
  %402 = ptrtoint ptr %usEdcLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %402, i32 2)
  %403 = load i16, ptr %usEdcLimit.i.i, align 1
  %404 = call i16 @llvm.bswap.i16(i16 %403) #7
  %usEDCLimit.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 8
  %405 = ptrtoint ptr %usEDCLimit.i.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %404, ptr %usEDCLimit.i.i, align 8
  %usSoftwareShutdownTemp.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 6
  %406 = ptrtoint ptr %usSoftwareShutdownTemp.i.i to i32
  call void @__asan_loadN_noabort(i32 %406, i32 2)
  %407 = load i16, ptr %usSoftwareShutdownTemp.i.i, align 1
  %408 = call i16 @llvm.bswap.i16(i16 %407) #7
  %usSoftwareShutdownTemp3.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 16
  %409 = ptrtoint ptr %usSoftwareShutdownTemp3.i.i to i32
  call void @__asan_store2_noabort(i32 %409)
  store i16 %408, ptr %usSoftwareShutdownTemp3.i.i, align 8
  %usTemperatureLimitTedge.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 25
  %410 = ptrtoint ptr %usTemperatureLimitTedge.i.i to i32
  call void @__asan_loadN_noabort(i32 %410, i32 2)
  %411 = load i16, ptr %usTemperatureLimitTedge.i.i, align 1
  %412 = call i16 @llvm.bswap.i16(i16 %411) #7
  %usTemperatureLimitTedge4.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 18
  %413 = ptrtoint ptr %usTemperatureLimitTedge4.i.i to i32
  call void @__asan_store2_noabort(i32 %413)
  store i16 %412, ptr %usTemperatureLimitTedge4.i.i, align 4
  %usTemperatureLimitHotSpot.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 7
  %414 = ptrtoint ptr %usTemperatureLimitHotSpot.i.i to i32
  call void @__asan_loadN_noabort(i32 %414, i32 2)
  %415 = load i16, ptr %usTemperatureLimitHotSpot.i.i, align 1
  %416 = call i16 @llvm.bswap.i16(i16 %415) #7
  %usTemperatureLimitHotspot.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 19
  %417 = ptrtoint ptr %usTemperatureLimitHotspot.i.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 %416, ptr %usTemperatureLimitHotspot.i.i, align 2
  %usTemperatureLimitLiquid1.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 8
  %418 = ptrtoint ptr %usTemperatureLimitLiquid1.i.i to i32
  call void @__asan_loadN_noabort(i32 %418, i32 2)
  %419 = load i16, ptr %usTemperatureLimitLiquid1.i.i, align 1
  %420 = call i16 @llvm.bswap.i16(i16 %419) #7
  %usTemperatureLimitLiquid15.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 20
  %421 = ptrtoint ptr %usTemperatureLimitLiquid15.i.i to i32
  call void @__asan_store2_noabort(i32 %421)
  store i16 %420, ptr %usTemperatureLimitLiquid15.i.i, align 8
  %usTemperatureLimitLiquid2.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 9
  %422 = ptrtoint ptr %usTemperatureLimitLiquid2.i.i to i32
  call void @__asan_loadN_noabort(i32 %422, i32 2)
  %423 = load i16, ptr %usTemperatureLimitLiquid2.i.i, align 1
  %424 = call i16 @llvm.bswap.i16(i16 %423) #7
  %usTemperatureLimitLiquid26.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 21
  %425 = ptrtoint ptr %usTemperatureLimitLiquid26.i.i to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 %424, ptr %usTemperatureLimitLiquid26.i.i, align 2
  %usTemperatureLimitHBM.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 10
  %426 = ptrtoint ptr %usTemperatureLimitHBM.i.i to i32
  call void @__asan_loadN_noabort(i32 %426, i32 2)
  %427 = load i16, ptr %usTemperatureLimitHBM.i.i, align 1
  %428 = call i16 @llvm.bswap.i16(i16 %427) #7
  %usTemperatureLimitHBM7.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 22
  %429 = ptrtoint ptr %usTemperatureLimitHBM7.i.i to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 %428, ptr %usTemperatureLimitHBM7.i.i, align 4
  %usTemperatureLimitVrSoc.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 11
  %430 = ptrtoint ptr %usTemperatureLimitVrSoc.i.i to i32
  call void @__asan_loadN_noabort(i32 %430, i32 2)
  %431 = load i16, ptr %usTemperatureLimitVrSoc.i.i, align 1
  %432 = call i16 @llvm.bswap.i16(i16 %431) #7
  %usTemperatureLimitVrVddc.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 23
  %433 = ptrtoint ptr %usTemperatureLimitVrVddc.i.i to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 %432, ptr %usTemperatureLimitVrVddc.i.i, align 2
  %usTemperatureLimitVrMem.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 12
  %434 = ptrtoint ptr %usTemperatureLimitVrMem.i.i to i32
  call void @__asan_loadN_noabort(i32 %434, i32 2)
  %435 = load i16, ptr %usTemperatureLimitVrMem.i.i, align 1
  %436 = call i16 @llvm.bswap.i16(i16 %435) #7
  %usTemperatureLimitVrMvdd.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 24
  %437 = ptrtoint ptr %usTemperatureLimitVrMvdd.i.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 %436, ptr %usTemperatureLimitVrMvdd.i.i, align 8
  %usTemperatureLimitPlx.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 13
  %438 = ptrtoint ptr %usTemperatureLimitPlx.i.i to i32
  call void @__asan_loadN_noabort(i32 %438, i32 2)
  %439 = load i16, ptr %usTemperatureLimitPlx.i.i, align 1
  %440 = call i16 @llvm.bswap.i16(i16 %439) #7
  %usTemperatureLimitPlx8.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 25
  %441 = ptrtoint ptr %usTemperatureLimitPlx8.i.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 %440, ptr %usTemperatureLimitPlx8.i.i, align 2
  %ucLiquid1_I2C_address.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 15
  %442 = ptrtoint ptr %ucLiquid1_I2C_address.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %ucLiquid1_I2C_address.i.i, align 1
  %ucLiquid1_I2C_address9.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 26
  %444 = ptrtoint ptr %ucLiquid1_I2C_address9.i.i to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 %443, ptr %ucLiquid1_I2C_address9.i.i, align 4
  %ucLiquid2_I2C_address.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 16
  %445 = ptrtoint ptr %ucLiquid2_I2C_address.i.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %ucLiquid2_I2C_address.i.i, align 1
  %ucLiquid2_I2C_address10.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 27
  %447 = ptrtoint ptr %ucLiquid2_I2C_address10.i.i to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 %446, ptr %ucLiquid2_I2C_address10.i.i, align 1
  %ucLiquid_I2C_LineSCL.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 19
  %448 = ptrtoint ptr %ucLiquid_I2C_LineSCL.i.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %ucLiquid_I2C_LineSCL.i.i, align 1
  %ucLiquid_I2C_Line.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 28
  %450 = ptrtoint ptr %ucLiquid_I2C_Line.i.i to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 %449, ptr %ucLiquid_I2C_Line.i.i, align 2
  %ucLiquid_I2C_LineSDA.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 20
  %451 = ptrtoint ptr %ucLiquid_I2C_LineSDA.i.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %ucLiquid_I2C_LineSDA.i.i, align 1
  %ucLiquid_I2C_LineSDA11.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 33
  %453 = ptrtoint ptr %ucLiquid_I2C_LineSDA11.i.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %452, ptr %ucLiquid_I2C_LineSDA11.i.i, align 1
  %ucVr_I2C_address.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 17
  %454 = ptrtoint ptr %ucVr_I2C_address.i.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %ucVr_I2C_address.i.i, align 1
  %ucVr_I2C_address12.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 29
  %456 = ptrtoint ptr %ucVr_I2C_address12.i.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %455, ptr %ucVr_I2C_address12.i.i, align 1
  %ucVr_I2C_LineSCL.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 21
  %457 = ptrtoint ptr %ucVr_I2C_LineSCL.i.i to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %ucVr_I2C_LineSCL.i.i, align 1
  %ucVr_I2C_Line.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 30
  %459 = ptrtoint ptr %ucVr_I2C_Line.i.i to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 %458, ptr %ucVr_I2C_Line.i.i, align 8
  %ucVr_I2C_LineSDA.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 22
  %460 = ptrtoint ptr %ucVr_I2C_LineSDA.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %ucVr_I2C_LineSDA.i.i, align 1
  %ucVr_I2C_LineSDA13.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 34
  %462 = ptrtoint ptr %ucVr_I2C_LineSDA13.i.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 %461, ptr %ucVr_I2C_LineSDA13.i.i, align 4
  %ucPlx_I2C_address.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 18
  %463 = ptrtoint ptr %ucPlx_I2C_address.i.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %ucPlx_I2C_address.i.i, align 1
  %ucPlx_I2C_address14.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 31
  %465 = ptrtoint ptr %ucPlx_I2C_address14.i.i to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 %464, ptr %ucPlx_I2C_address14.i.i, align 1
  %ucPlx_I2C_LineSCL.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 23
  %466 = ptrtoint ptr %ucPlx_I2C_LineSCL.i.i to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %ucPlx_I2C_LineSCL.i.i, align 1
  %ucPlx_I2C_Line.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 32
  %468 = ptrtoint ptr %ucPlx_I2C_Line.i.i to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 %467, ptr %ucPlx_I2C_Line.i.i, align 2
  %ucPlx_I2C_LineSDA.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 24
  %469 = ptrtoint ptr %ucPlx_I2C_LineSDA.i.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %ucPlx_I2C_LineSDA.i.i, align 1
  %ucPlx_I2C_LineSDA15.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 35
  %471 = ptrtoint ptr %ucPlx_I2C_LineSDA15.i.i to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 %470, ptr %ucPlx_I2C_LineSDA15.i.i, align 1
  %usLoadLineResistance.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table, ptr %319, i32 0, i32 14
  br label %if.end114.i.i

if.then20.i.i:                                    ; preds = %if.end.i.i
  %usSocketPowerLimit21.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 1
  %472 = ptrtoint ptr %usSocketPowerLimit21.i.i to i32
  call void @__asan_loadN_noabort(i32 %472, i32 2)
  %473 = load i16, ptr %usSocketPowerLimit21.i.i, align 1
  %474 = call i16 @llvm.bswap.i16(i16 %473) #7
  %usMaximumPowerDeliveryLimit22.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 7
  %475 = ptrtoint ptr %usMaximumPowerDeliveryLimit22.i.i to i32
  call void @__asan_store2_noabort(i32 %475)
  store i16 %474, ptr %usMaximumPowerDeliveryLimit22.i.i, align 2
  %usTdcLimit23.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 4
  %476 = ptrtoint ptr %usTdcLimit23.i.i to i32
  call void @__asan_loadN_noabort(i32 %476, i32 2)
  %477 = load i16, ptr %usTdcLimit23.i.i, align 1
  %478 = call i16 @llvm.bswap.i16(i16 %477) #7
  %usTDC24.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 2
  %479 = ptrtoint ptr %usTDC24.i.i to i32
  call void @__asan_store2_noabort(i32 %479)
  store i16 %478, ptr %usTDC24.i.i, align 4
  %usEdcLimit25.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 5
  %480 = ptrtoint ptr %usEdcLimit25.i.i to i32
  call void @__asan_loadN_noabort(i32 %480, i32 2)
  %481 = load i16, ptr %usEdcLimit25.i.i, align 1
  %482 = call i16 @llvm.bswap.i16(i16 %481) #7
  %usEDCLimit26.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 8
  %483 = ptrtoint ptr %usEDCLimit26.i.i to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 %482, ptr %usEDCLimit26.i.i, align 8
  %usSoftwareShutdownTemp27.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 6
  %484 = ptrtoint ptr %usSoftwareShutdownTemp27.i.i to i32
  call void @__asan_loadN_noabort(i32 %484, i32 2)
  %485 = load i16, ptr %usSoftwareShutdownTemp27.i.i, align 1
  %486 = call i16 @llvm.bswap.i16(i16 %485) #7
  %usSoftwareShutdownTemp28.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 16
  %487 = ptrtoint ptr %usSoftwareShutdownTemp28.i.i to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 %486, ptr %usSoftwareShutdownTemp28.i.i, align 8
  %usTemperatureLimitTedge29.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 22
  %488 = ptrtoint ptr %usTemperatureLimitTedge29.i.i to i32
  call void @__asan_loadN_noabort(i32 %488, i32 2)
  %489 = load i16, ptr %usTemperatureLimitTedge29.i.i, align 1
  %490 = call i16 @llvm.bswap.i16(i16 %489) #7
  %usTemperatureLimitTedge30.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 18
  %491 = ptrtoint ptr %usTemperatureLimitTedge30.i.i to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 %490, ptr %usTemperatureLimitTedge30.i.i, align 4
  %usTemperatureLimitHotSpot31.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 7
  %492 = ptrtoint ptr %usTemperatureLimitHotSpot31.i.i to i32
  call void @__asan_loadN_noabort(i32 %492, i32 2)
  %493 = load i16, ptr %usTemperatureLimitHotSpot31.i.i, align 1
  %494 = call i16 @llvm.bswap.i16(i16 %493) #7
  %usTemperatureLimitHotspot32.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 19
  %495 = ptrtoint ptr %usTemperatureLimitHotspot32.i.i to i32
  call void @__asan_store2_noabort(i32 %495)
  store i16 %494, ptr %usTemperatureLimitHotspot32.i.i, align 2
  %usTemperatureLimitLiquid133.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 8
  %496 = ptrtoint ptr %usTemperatureLimitLiquid133.i.i to i32
  call void @__asan_loadN_noabort(i32 %496, i32 2)
  %497 = load i16, ptr %usTemperatureLimitLiquid133.i.i, align 1
  %498 = call i16 @llvm.bswap.i16(i16 %497) #7
  %usTemperatureLimitLiquid134.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 20
  %499 = ptrtoint ptr %usTemperatureLimitLiquid134.i.i to i32
  call void @__asan_store2_noabort(i32 %499)
  store i16 %498, ptr %usTemperatureLimitLiquid134.i.i, align 8
  %usTemperatureLimitLiquid235.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 9
  %500 = ptrtoint ptr %usTemperatureLimitLiquid235.i.i to i32
  call void @__asan_loadN_noabort(i32 %500, i32 2)
  %501 = load i16, ptr %usTemperatureLimitLiquid235.i.i, align 1
  %502 = call i16 @llvm.bswap.i16(i16 %501) #7
  %usTemperatureLimitLiquid236.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 21
  %503 = ptrtoint ptr %usTemperatureLimitLiquid236.i.i to i32
  call void @__asan_store2_noabort(i32 %503)
  store i16 %502, ptr %usTemperatureLimitLiquid236.i.i, align 2
  %usTemperatureLimitHBM37.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 10
  %504 = ptrtoint ptr %usTemperatureLimitHBM37.i.i to i32
  call void @__asan_loadN_noabort(i32 %504, i32 2)
  %505 = load i16, ptr %usTemperatureLimitHBM37.i.i, align 1
  %506 = call i16 @llvm.bswap.i16(i16 %505) #7
  %usTemperatureLimitHBM38.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 22
  %507 = ptrtoint ptr %usTemperatureLimitHBM38.i.i to i32
  call void @__asan_store2_noabort(i32 %507)
  store i16 %506, ptr %usTemperatureLimitHBM38.i.i, align 4
  %usTemperatureLimitVrSoc39.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 11
  %508 = ptrtoint ptr %usTemperatureLimitVrSoc39.i.i to i32
  call void @__asan_loadN_noabort(i32 %508, i32 2)
  %509 = load i16, ptr %usTemperatureLimitVrSoc39.i.i, align 1
  %510 = call i16 @llvm.bswap.i16(i16 %509) #7
  %usTemperatureLimitVrVddc40.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 23
  %511 = ptrtoint ptr %usTemperatureLimitVrVddc40.i.i to i32
  call void @__asan_store2_noabort(i32 %511)
  store i16 %510, ptr %usTemperatureLimitVrVddc40.i.i, align 2
  %usTemperatureLimitVrMem41.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 12
  %512 = ptrtoint ptr %usTemperatureLimitVrMem41.i.i to i32
  call void @__asan_loadN_noabort(i32 %512, i32 2)
  %513 = load i16, ptr %usTemperatureLimitVrMem41.i.i, align 1
  %514 = call i16 @llvm.bswap.i16(i16 %513) #7
  %usTemperatureLimitVrMvdd42.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 24
  %515 = ptrtoint ptr %usTemperatureLimitVrMvdd42.i.i to i32
  call void @__asan_store2_noabort(i32 %515)
  store i16 %514, ptr %usTemperatureLimitVrMvdd42.i.i, align 8
  %usTemperatureLimitPlx43.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 13
  %516 = ptrtoint ptr %usTemperatureLimitPlx43.i.i to i32
  call void @__asan_loadN_noabort(i32 %516, i32 2)
  %517 = load i16, ptr %usTemperatureLimitPlx43.i.i, align 1
  %518 = call i16 @llvm.bswap.i16(i16 %517) #7
  %usTemperatureLimitPlx44.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 25
  %519 = ptrtoint ptr %usTemperatureLimitPlx44.i.i to i32
  call void @__asan_store2_noabort(i32 %519)
  store i16 %518, ptr %usTemperatureLimitPlx44.i.i, align 2
  %ucLiquid1_I2C_address45.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 15
  %520 = ptrtoint ptr %ucLiquid1_I2C_address45.i.i to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %ucLiquid1_I2C_address45.i.i, align 1
  %ucLiquid1_I2C_address46.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 26
  %522 = ptrtoint ptr %ucLiquid1_I2C_address46.i.i to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 %521, ptr %ucLiquid1_I2C_address46.i.i, align 4
  %ucLiquid2_I2C_address47.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 16
  %523 = ptrtoint ptr %ucLiquid2_I2C_address47.i.i to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %ucLiquid2_I2C_address47.i.i, align 1
  %ucLiquid2_I2C_address48.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 27
  %525 = ptrtoint ptr %ucLiquid2_I2C_address48.i.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 %524, ptr %ucLiquid2_I2C_address48.i.i, align 1
  %ucLiquid_I2C_Line49.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 17
  %526 = ptrtoint ptr %ucLiquid_I2C_Line49.i.i to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %ucLiquid_I2C_Line49.i.i, align 1
  %switch.tableidx = add i8 %527, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %528 = icmp ult i8 %switch.tableidx, 8
  br i1 %528, label %switch.lookup, label %if.then20.i.i.get_scl_sda_value.exit.i.i_crit_edge

if.then20.i.i.get_scl_sda_value.exit.i.i_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_scl_sda_value.exit.i.i

switch.lookup:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %529 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize, i32 0, i32 %529
  %530 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %530)
  %switch.load = load i8, ptr %switch.gep, align 1
  %531 = sext i8 %switch.tableidx to i32
  %switch.gep219 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.76, i32 0, i32 %531
  %532 = ptrtoint ptr %switch.gep219 to i32
  call void @__asan_load1_noabort(i32 %532)
  %switch.load220 = load i8, ptr %switch.gep219, align 1
  br label %get_scl_sda_value.exit.i.i

get_scl_sda_value.exit.i.i:                       ; preds = %switch.lookup, %if.then20.i.i.get_scl_sda_value.exit.i.i_crit_edge
  %.sink24.i.i.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.then20.i.i.get_scl_sda_value.exit.i.i_crit_edge ]
  %.sink.i.i.i = phi i8 [ %switch.load220, %switch.lookup ], [ 0, %if.then20.i.i.get_scl_sda_value.exit.i.i_crit_edge ]
  %ucLiquid_I2C_Line50.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 28
  %533 = ptrtoint ptr %ucLiquid_I2C_Line50.i.i to i32
  call void @__asan_store1_noabort(i32 %533)
  store i8 %.sink24.i.i.i, ptr %ucLiquid_I2C_Line50.i.i, align 2
  %ucLiquid_I2C_LineSDA51.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 33
  %534 = ptrtoint ptr %ucLiquid_I2C_LineSDA51.i.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %.sink.i.i.i, ptr %ucLiquid_I2C_LineSDA51.i.i, align 1
  %ucVr_I2C_address52.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 18
  %535 = ptrtoint ptr %ucVr_I2C_address52.i.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %ucVr_I2C_address52.i.i, align 1
  %ucVr_I2C_address53.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 29
  %537 = ptrtoint ptr %ucVr_I2C_address53.i.i to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 %536, ptr %ucVr_I2C_address53.i.i, align 1
  %ucVr_I2C_Line54.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 19
  %538 = ptrtoint ptr %ucVr_I2C_Line54.i.i to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %ucVr_I2C_Line54.i.i, align 1
  %switch.tableidx222 = add i8 %539, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx222)
  %540 = icmp ult i8 %switch.tableidx222, 8
  br i1 %540, label %switch.lookup221, label %get_scl_sda_value.exit.i.i.get_scl_sda_value.exit270.i.i_crit_edge

get_scl_sda_value.exit.i.i.get_scl_sda_value.exit270.i.i_crit_edge: ; preds = %get_scl_sda_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_scl_sda_value.exit270.i.i

switch.lookup221:                                 ; preds = %get_scl_sda_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %541 = sext i8 %switch.tableidx222 to i32
  %switch.gep223 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.77, i32 0, i32 %541
  %542 = ptrtoint ptr %switch.gep223 to i32
  call void @__asan_load1_noabort(i32 %542)
  %switch.load224 = load i8, ptr %switch.gep223, align 1
  %543 = sext i8 %switch.tableidx222 to i32
  %switch.gep225 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.78, i32 0, i32 %543
  %544 = ptrtoint ptr %switch.gep225 to i32
  call void @__asan_load1_noabort(i32 %544)
  %switch.load226 = load i8, ptr %switch.gep225, align 1
  br label %get_scl_sda_value.exit270.i.i

get_scl_sda_value.exit270.i.i:                    ; preds = %switch.lookup221, %get_scl_sda_value.exit.i.i.get_scl_sda_value.exit270.i.i_crit_edge
  %.sink24.i268.i.i = phi i8 [ %switch.load224, %switch.lookup221 ], [ 0, %get_scl_sda_value.exit.i.i.get_scl_sda_value.exit270.i.i_crit_edge ]
  %.sink.i269.i.i = phi i8 [ %switch.load226, %switch.lookup221 ], [ 0, %get_scl_sda_value.exit.i.i.get_scl_sda_value.exit270.i.i_crit_edge ]
  %ucVr_I2C_Line55.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 30
  %545 = ptrtoint ptr %ucVr_I2C_Line55.i.i to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 %.sink24.i268.i.i, ptr %ucVr_I2C_Line55.i.i, align 8
  %ucVr_I2C_LineSDA56.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 34
  %546 = ptrtoint ptr %ucVr_I2C_LineSDA56.i.i to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 %.sink.i269.i.i, ptr %ucVr_I2C_LineSDA56.i.i, align 4
  %ucPlx_I2C_address57.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 20
  %547 = ptrtoint ptr %ucPlx_I2C_address57.i.i to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %ucPlx_I2C_address57.i.i, align 1
  %ucPlx_I2C_address58.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 31
  %549 = ptrtoint ptr %ucPlx_I2C_address58.i.i to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 %548, ptr %ucPlx_I2C_address58.i.i, align 1
  %ucPlx_I2C_Line59.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 21
  %550 = ptrtoint ptr %ucPlx_I2C_Line59.i.i to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %ucPlx_I2C_Line59.i.i, align 1
  %switch.tableidx228 = add i8 %551, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx228)
  %552 = icmp ult i8 %switch.tableidx228, 8
  br i1 %552, label %switch.lookup227, label %get_scl_sda_value.exit270.i.i.get_scl_sda_value.exit281.i.i_crit_edge

get_scl_sda_value.exit270.i.i.get_scl_sda_value.exit281.i.i_crit_edge: ; preds = %get_scl_sda_value.exit270.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_scl_sda_value.exit281.i.i

switch.lookup227:                                 ; preds = %get_scl_sda_value.exit270.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %553 = sext i8 %switch.tableidx228 to i32
  %switch.gep229 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.79, i32 0, i32 %553
  %554 = ptrtoint ptr %switch.gep229 to i32
  call void @__asan_load1_noabort(i32 %554)
  %switch.load230 = load i8, ptr %switch.gep229, align 1
  %555 = sext i8 %switch.tableidx228 to i32
  %switch.gep231 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.80, i32 0, i32 %555
  %556 = ptrtoint ptr %switch.gep231 to i32
  call void @__asan_load1_noabort(i32 %556)
  %switch.load232 = load i8, ptr %switch.gep231, align 1
  br label %get_scl_sda_value.exit281.i.i

get_scl_sda_value.exit281.i.i:                    ; preds = %switch.lookup227, %get_scl_sda_value.exit270.i.i.get_scl_sda_value.exit281.i.i_crit_edge
  %.sink24.i279.i.i = phi i8 [ %switch.load230, %switch.lookup227 ], [ 0, %get_scl_sda_value.exit270.i.i.get_scl_sda_value.exit281.i.i_crit_edge ]
  %.sink.i280.i.i = phi i8 [ %switch.load232, %switch.lookup227 ], [ 0, %get_scl_sda_value.exit270.i.i.get_scl_sda_value.exit281.i.i_crit_edge ]
  %ucPlx_I2C_Line60.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 32
  %557 = ptrtoint ptr %ucPlx_I2C_Line60.i.i to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 %.sink24.i279.i.i, ptr %ucPlx_I2C_Line60.i.i, align 2
  %ucPlx_I2C_LineSDA61.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 35
  %558 = ptrtoint ptr %ucPlx_I2C_LineSDA61.i.i to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 %.sink.i280.i.i, ptr %ucPlx_I2C_LineSDA61.i.i, align 1
  %usLoadLineResistance62.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V2, ptr %319, i32 0, i32 14
  br label %if.end114.i.i

if.else65.i.i:                                    ; preds = %if.end.i.i
  %usSocketPowerLimit66.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 1
  %559 = ptrtoint ptr %usSocketPowerLimit66.i.i to i32
  call void @__asan_loadN_noabort(i32 %559, i32 2)
  %560 = load i16, ptr %usSocketPowerLimit66.i.i, align 1
  %561 = call i16 @llvm.bswap.i16(i16 %560) #7
  %usMaximumPowerDeliveryLimit67.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 7
  %562 = ptrtoint ptr %usMaximumPowerDeliveryLimit67.i.i to i32
  call void @__asan_store2_noabort(i32 %562)
  store i16 %561, ptr %usMaximumPowerDeliveryLimit67.i.i, align 2
  %usTdcLimit68.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 4
  %563 = ptrtoint ptr %usTdcLimit68.i.i to i32
  call void @__asan_loadN_noabort(i32 %563, i32 2)
  %564 = load i16, ptr %usTdcLimit68.i.i, align 1
  %565 = call i16 @llvm.bswap.i16(i16 %564) #7
  %usTDC69.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 2
  %566 = ptrtoint ptr %usTDC69.i.i to i32
  call void @__asan_store2_noabort(i32 %566)
  store i16 %565, ptr %usTDC69.i.i, align 4
  %usEdcLimit70.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 5
  %567 = ptrtoint ptr %usEdcLimit70.i.i to i32
  call void @__asan_loadN_noabort(i32 %567, i32 2)
  %568 = load i16, ptr %usEdcLimit70.i.i, align 1
  %569 = call i16 @llvm.bswap.i16(i16 %568) #7
  %usEDCLimit71.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 8
  %570 = ptrtoint ptr %usEDCLimit71.i.i to i32
  call void @__asan_store2_noabort(i32 %570)
  store i16 %569, ptr %usEDCLimit71.i.i, align 8
  %usSoftwareShutdownTemp72.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 6
  %571 = ptrtoint ptr %usSoftwareShutdownTemp72.i.i to i32
  call void @__asan_loadN_noabort(i32 %571, i32 2)
  %572 = load i16, ptr %usSoftwareShutdownTemp72.i.i, align 1
  %573 = call i16 @llvm.bswap.i16(i16 %572) #7
  %usSoftwareShutdownTemp73.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 16
  %574 = ptrtoint ptr %usSoftwareShutdownTemp73.i.i to i32
  call void @__asan_store2_noabort(i32 %574)
  store i16 %573, ptr %usSoftwareShutdownTemp73.i.i, align 8
  %usTemperatureLimitTedge74.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 22
  %575 = ptrtoint ptr %usTemperatureLimitTedge74.i.i to i32
  call void @__asan_loadN_noabort(i32 %575, i32 2)
  %576 = load i16, ptr %usTemperatureLimitTedge74.i.i, align 1
  %577 = call i16 @llvm.bswap.i16(i16 %576) #7
  %usTemperatureLimitTedge75.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 18
  %578 = ptrtoint ptr %usTemperatureLimitTedge75.i.i to i32
  call void @__asan_store2_noabort(i32 %578)
  store i16 %577, ptr %usTemperatureLimitTedge75.i.i, align 4
  %usTemperatureLimitHotSpot76.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 7
  %579 = ptrtoint ptr %usTemperatureLimitHotSpot76.i.i to i32
  call void @__asan_loadN_noabort(i32 %579, i32 2)
  %580 = load i16, ptr %usTemperatureLimitHotSpot76.i.i, align 1
  %581 = call i16 @llvm.bswap.i16(i16 %580) #7
  %usTemperatureLimitHotspot77.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 19
  %582 = ptrtoint ptr %usTemperatureLimitHotspot77.i.i to i32
  call void @__asan_store2_noabort(i32 %582)
  store i16 %581, ptr %usTemperatureLimitHotspot77.i.i, align 2
  %usTemperatureLimitLiquid178.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 8
  %583 = ptrtoint ptr %usTemperatureLimitLiquid178.i.i to i32
  call void @__asan_loadN_noabort(i32 %583, i32 2)
  %584 = load i16, ptr %usTemperatureLimitLiquid178.i.i, align 1
  %585 = call i16 @llvm.bswap.i16(i16 %584) #7
  %usTemperatureLimitLiquid179.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 20
  %586 = ptrtoint ptr %usTemperatureLimitLiquid179.i.i to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 %585, ptr %usTemperatureLimitLiquid179.i.i, align 8
  %usTemperatureLimitLiquid280.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 9
  %587 = ptrtoint ptr %usTemperatureLimitLiquid280.i.i to i32
  call void @__asan_loadN_noabort(i32 %587, i32 2)
  %588 = load i16, ptr %usTemperatureLimitLiquid280.i.i, align 1
  %589 = call i16 @llvm.bswap.i16(i16 %588) #7
  %usTemperatureLimitLiquid281.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 21
  %590 = ptrtoint ptr %usTemperatureLimitLiquid281.i.i to i32
  call void @__asan_store2_noabort(i32 %590)
  store i16 %589, ptr %usTemperatureLimitLiquid281.i.i, align 2
  %usTemperatureLimitHBM82.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 10
  %591 = ptrtoint ptr %usTemperatureLimitHBM82.i.i to i32
  call void @__asan_loadN_noabort(i32 %591, i32 2)
  %592 = load i16, ptr %usTemperatureLimitHBM82.i.i, align 1
  %593 = call i16 @llvm.bswap.i16(i16 %592) #7
  %usTemperatureLimitHBM83.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 22
  %594 = ptrtoint ptr %usTemperatureLimitHBM83.i.i to i32
  call void @__asan_store2_noabort(i32 %594)
  store i16 %593, ptr %usTemperatureLimitHBM83.i.i, align 4
  %usTemperatureLimitVrSoc84.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 11
  %595 = ptrtoint ptr %usTemperatureLimitVrSoc84.i.i to i32
  call void @__asan_loadN_noabort(i32 %595, i32 2)
  %596 = load i16, ptr %usTemperatureLimitVrSoc84.i.i, align 1
  %597 = call i16 @llvm.bswap.i16(i16 %596) #7
  %usTemperatureLimitVrVddc85.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 23
  %598 = ptrtoint ptr %usTemperatureLimitVrVddc85.i.i to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 %597, ptr %usTemperatureLimitVrVddc85.i.i, align 2
  %usTemperatureLimitVrMem86.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 12
  %599 = ptrtoint ptr %usTemperatureLimitVrMem86.i.i to i32
  call void @__asan_loadN_noabort(i32 %599, i32 2)
  %600 = load i16, ptr %usTemperatureLimitVrMem86.i.i, align 1
  %601 = call i16 @llvm.bswap.i16(i16 %600) #7
  %usTemperatureLimitVrMvdd87.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 24
  %602 = ptrtoint ptr %usTemperatureLimitVrMvdd87.i.i to i32
  call void @__asan_store2_noabort(i32 %602)
  store i16 %601, ptr %usTemperatureLimitVrMvdd87.i.i, align 8
  %usTemperatureLimitPlx88.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 13
  %603 = ptrtoint ptr %usTemperatureLimitPlx88.i.i to i32
  call void @__asan_loadN_noabort(i32 %603, i32 2)
  %604 = load i16, ptr %usTemperatureLimitPlx88.i.i, align 1
  %605 = call i16 @llvm.bswap.i16(i16 %604) #7
  %usTemperatureLimitPlx89.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 25
  %606 = ptrtoint ptr %usTemperatureLimitPlx89.i.i to i32
  call void @__asan_store2_noabort(i32 %606)
  store i16 %605, ptr %usTemperatureLimitPlx89.i.i, align 2
  %ucLiquid1_I2C_address90.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 15
  %607 = ptrtoint ptr %ucLiquid1_I2C_address90.i.i to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %ucLiquid1_I2C_address90.i.i, align 1
  %ucLiquid1_I2C_address91.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 26
  %609 = ptrtoint ptr %ucLiquid1_I2C_address91.i.i to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 %608, ptr %ucLiquid1_I2C_address91.i.i, align 4
  %ucLiquid2_I2C_address92.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 16
  %610 = ptrtoint ptr %ucLiquid2_I2C_address92.i.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %ucLiquid2_I2C_address92.i.i, align 1
  %ucLiquid2_I2C_address93.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 27
  %612 = ptrtoint ptr %ucLiquid2_I2C_address93.i.i to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 %611, ptr %ucLiquid2_I2C_address93.i.i, align 1
  %usBoostStartTemperature.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 23
  %613 = ptrtoint ptr %usBoostStartTemperature.i.i to i32
  call void @__asan_loadN_noabort(i32 %613, i32 2)
  %614 = load i16, ptr %usBoostStartTemperature.i.i, align 1
  %615 = call i16 @llvm.bswap.i16(i16 %614) #7
  %usBoostStartTemperature94.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 37
  %616 = ptrtoint ptr %usBoostStartTemperature94.i.i to i32
  call void @__asan_store2_noabort(i32 %616)
  store i16 %615, ptr %usBoostStartTemperature94.i.i, align 4
  %usBoostStopTemperature.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 24
  %617 = ptrtoint ptr %usBoostStopTemperature.i.i to i32
  call void @__asan_loadN_noabort(i32 %617, i32 2)
  %618 = load i16, ptr %usBoostStopTemperature.i.i, align 1
  %619 = call i16 @llvm.bswap.i16(i16 %618) #7
  %usBoostStopTemperature95.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 38
  %620 = ptrtoint ptr %usBoostStopTemperature95.i.i to i32
  call void @__asan_store2_noabort(i32 %620)
  store i16 %619, ptr %usBoostStopTemperature95.i.i, align 2
  %ulBoostClock.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 25
  %621 = ptrtoint ptr %ulBoostClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %621, i32 4)
  %622 = load i32, ptr %ulBoostClock.i.i, align 1
  %623 = call i32 @llvm.bswap.i32(i32 %622) #7
  %ulBoostClock96.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 39
  %624 = ptrtoint ptr %ulBoostClock96.i.i to i32
  call void @__asan_store4_noabort(i32 %624)
  store i32 %623, ptr %ulBoostClock96.i.i, align 8
  %ucLiquid_I2C_Line97.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 17
  %625 = ptrtoint ptr %ucLiquid_I2C_Line97.i.i to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %ucLiquid_I2C_Line97.i.i, align 1
  %switch.tableidx234 = add i8 %626, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx234)
  %627 = icmp ult i8 %switch.tableidx234, 8
  br i1 %627, label %switch.lookup233, label %if.else65.i.i.get_scl_sda_value.exit292.i.i_crit_edge

if.else65.i.i.get_scl_sda_value.exit292.i.i_crit_edge: ; preds = %if.else65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_scl_sda_value.exit292.i.i

switch.lookup233:                                 ; preds = %if.else65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %628 = sext i8 %switch.tableidx234 to i32
  %switch.gep235 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.81, i32 0, i32 %628
  %629 = ptrtoint ptr %switch.gep235 to i32
  call void @__asan_load1_noabort(i32 %629)
  %switch.load236 = load i8, ptr %switch.gep235, align 1
  %630 = sext i8 %switch.tableidx234 to i32
  %switch.gep237 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.82, i32 0, i32 %630
  %631 = ptrtoint ptr %switch.gep237 to i32
  call void @__asan_load1_noabort(i32 %631)
  %switch.load238 = load i8, ptr %switch.gep237, align 1
  br label %get_scl_sda_value.exit292.i.i

get_scl_sda_value.exit292.i.i:                    ; preds = %switch.lookup233, %if.else65.i.i.get_scl_sda_value.exit292.i.i_crit_edge
  %.sink24.i290.i.i = phi i8 [ %switch.load236, %switch.lookup233 ], [ 0, %if.else65.i.i.get_scl_sda_value.exit292.i.i_crit_edge ]
  %.sink.i291.i.i = phi i8 [ %switch.load238, %switch.lookup233 ], [ 0, %if.else65.i.i.get_scl_sda_value.exit292.i.i_crit_edge ]
  %ucLiquid_I2C_Line98.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 28
  %632 = ptrtoint ptr %ucLiquid_I2C_Line98.i.i to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 %.sink24.i290.i.i, ptr %ucLiquid_I2C_Line98.i.i, align 2
  %ucLiquid_I2C_LineSDA99.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 33
  %633 = ptrtoint ptr %ucLiquid_I2C_LineSDA99.i.i to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 %.sink.i291.i.i, ptr %ucLiquid_I2C_LineSDA99.i.i, align 1
  %ucVr_I2C_address100.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 18
  %634 = ptrtoint ptr %ucVr_I2C_address100.i.i to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %ucVr_I2C_address100.i.i, align 1
  %ucVr_I2C_address101.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 29
  %636 = ptrtoint ptr %ucVr_I2C_address101.i.i to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 %635, ptr %ucVr_I2C_address101.i.i, align 1
  %ucVr_I2C_Line102.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 19
  %637 = ptrtoint ptr %ucVr_I2C_Line102.i.i to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %ucVr_I2C_Line102.i.i, align 1
  %switch.tableidx240 = add i8 %638, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx240)
  %639 = icmp ult i8 %switch.tableidx240, 8
  br i1 %639, label %switch.lookup239, label %get_scl_sda_value.exit292.i.i.get_scl_sda_value.exit303.i.i_crit_edge

get_scl_sda_value.exit292.i.i.get_scl_sda_value.exit303.i.i_crit_edge: ; preds = %get_scl_sda_value.exit292.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_scl_sda_value.exit303.i.i

switch.lookup239:                                 ; preds = %get_scl_sda_value.exit292.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %640 = sext i8 %switch.tableidx240 to i32
  %switch.gep241 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.83, i32 0, i32 %640
  %641 = ptrtoint ptr %switch.gep241 to i32
  call void @__asan_load1_noabort(i32 %641)
  %switch.load242 = load i8, ptr %switch.gep241, align 1
  %642 = sext i8 %switch.tableidx240 to i32
  %switch.gep243 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.84, i32 0, i32 %642
  %643 = ptrtoint ptr %switch.gep243 to i32
  call void @__asan_load1_noabort(i32 %643)
  %switch.load244 = load i8, ptr %switch.gep243, align 1
  br label %get_scl_sda_value.exit303.i.i

get_scl_sda_value.exit303.i.i:                    ; preds = %switch.lookup239, %get_scl_sda_value.exit292.i.i.get_scl_sda_value.exit303.i.i_crit_edge
  %.sink24.i301.i.i = phi i8 [ %switch.load242, %switch.lookup239 ], [ 0, %get_scl_sda_value.exit292.i.i.get_scl_sda_value.exit303.i.i_crit_edge ]
  %.sink.i302.i.i = phi i8 [ %switch.load244, %switch.lookup239 ], [ 0, %get_scl_sda_value.exit292.i.i.get_scl_sda_value.exit303.i.i_crit_edge ]
  %ucVr_I2C_Line103.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 30
  %644 = ptrtoint ptr %ucVr_I2C_Line103.i.i to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 %.sink24.i301.i.i, ptr %ucVr_I2C_Line103.i.i, align 8
  %ucVr_I2C_LineSDA104.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 34
  %645 = ptrtoint ptr %ucVr_I2C_LineSDA104.i.i to i32
  call void @__asan_store1_noabort(i32 %645)
  store i8 %.sink.i302.i.i, ptr %ucVr_I2C_LineSDA104.i.i, align 4
  %ucPlx_I2C_address105.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 20
  %646 = ptrtoint ptr %ucPlx_I2C_address105.i.i to i32
  call void @__asan_load1_noabort(i32 %646)
  %647 = load i8, ptr %ucPlx_I2C_address105.i.i, align 1
  %ucPlx_I2C_address106.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 31
  %648 = ptrtoint ptr %ucPlx_I2C_address106.i.i to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 %647, ptr %ucPlx_I2C_address106.i.i, align 1
  %ucPlx_I2C_Line107.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 21
  %649 = ptrtoint ptr %ucPlx_I2C_Line107.i.i to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %ucPlx_I2C_Line107.i.i, align 1
  %switch.tableidx246 = add i8 %650, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx246)
  %651 = icmp ult i8 %switch.tableidx246, 8
  br i1 %651, label %switch.lookup245, label %get_scl_sda_value.exit303.i.i.get_scl_sda_value.exit314.i.i_crit_edge

get_scl_sda_value.exit303.i.i.get_scl_sda_value.exit314.i.i_crit_edge: ; preds = %get_scl_sda_value.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_scl_sda_value.exit314.i.i

switch.lookup245:                                 ; preds = %get_scl_sda_value.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %652 = sext i8 %switch.tableidx246 to i32
  %switch.gep247 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.85, i32 0, i32 %652
  %653 = ptrtoint ptr %switch.gep247 to i32
  call void @__asan_load1_noabort(i32 %653)
  %switch.load248 = load i8, ptr %switch.gep247, align 1
  %654 = sext i8 %switch.tableidx246 to i32
  %switch.gep249 = getelementptr inbounds [8 x i8], ptr @switch.table.vega10_pp_tables_initialize.86, i32 0, i32 %654
  %655 = ptrtoint ptr %switch.gep249 to i32
  call void @__asan_load1_noabort(i32 %655)
  %switch.load250 = load i8, ptr %switch.gep249, align 1
  br label %get_scl_sda_value.exit314.i.i

get_scl_sda_value.exit314.i.i:                    ; preds = %switch.lookup245, %get_scl_sda_value.exit303.i.i.get_scl_sda_value.exit314.i.i_crit_edge
  %.sink24.i312.i.i = phi i8 [ %switch.load248, %switch.lookup245 ], [ 0, %get_scl_sda_value.exit303.i.i.get_scl_sda_value.exit314.i.i_crit_edge ]
  %.sink.i313.i.i = phi i8 [ %switch.load250, %switch.lookup245 ], [ 0, %get_scl_sda_value.exit303.i.i.get_scl_sda_value.exit314.i.i_crit_edge ]
  %ucPlx_I2C_Line108.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 32
  %656 = ptrtoint ptr %ucPlx_I2C_Line108.i.i to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 %.sink24.i312.i.i, ptr %ucPlx_I2C_Line108.i.i, align 2
  %ucPlx_I2C_LineSDA109.i.i = getelementptr inbounds %struct.phm_tdp_table, ptr %call7.i.i.i280.i, i32 0, i32 35
  %657 = ptrtoint ptr %ucPlx_I2C_LineSDA109.i.i to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 %.sink.i313.i.i, ptr %ucPlx_I2C_LineSDA109.i.i, align 1
  %usLoadLineResistance110.i.i = getelementptr inbounds %struct._ATOM_Vega10_PowerTune_Table_V3, ptr %319, i32 0, i32 14
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %get_scl_sda_value.exit314.i.i, %get_scl_sda_value.exit281.i.i, %if.then2.i.i
  %usLoadLineResistance62.sink.i.i = phi ptr [ %usLoadLineResistance62.i.i, %get_scl_sda_value.exit281.i.i ], [ %usLoadLineResistance110.i.i, %get_scl_sda_value.exit314.i.i ], [ %usLoadLineResistance.i.i, %if.then2.i.i ]
  %658 = ptrtoint ptr %usLoadLineResistance62.sink.i.i to i32
  call void @__asan_loadN_noabort(i32 %658, i32 2)
  %659 = load i16, ptr %usLoadLineResistance62.sink.i.i, align 1
  %660 = call i16 @llvm.bswap.i16(i16 %659) #7
  %LoadLineSlope64.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 19
  %661 = ptrtoint ptr %LoadLineSlope64.i.i to i32
  call void @__asan_store2_noabort(i32 %661)
  store i16 %660, ptr %LoadLineSlope64.i.i, align 2
  %662 = ptrtoint ptr %tdp_table.i to i32
  call void @__asan_store4_noabort(i32 %662)
  store ptr %call7.i.i.i280.i, ptr %tdp_table.i, align 4
  br label %land.lhs.true32.i

land.lhs.true32.i:                                ; preds = %if.end114.i.i, %land.lhs.true.i.land.lhs.true32.i_crit_edge
  %663 = ptrtoint ptr %usSocclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %663, i32 2)
  %664 = load i16, ptr %usSocclkDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %664)
  %tobool35.not.i = icmp eq i16 %664, 0
  br i1 %tobool35.not.i, label %land.lhs.true32.i.land.lhs.true41.i_crit_edge, label %if.then36.i

land.lhs.true32.i.land.lhs.true41.i_crit_edge:    ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true41.i

if.then36.i:                                      ; preds = %land.lhs.true32.i
  %ucNumEntries.i283.i = getelementptr inbounds %struct._ATOM_Vega10_SOCCLK_Dependency_Table, ptr %323, i32 0, i32 1
  %665 = ptrtoint ptr %ucNumEntries.i283.i to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %ucNumEntries.i283.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %666)
  %tobool.not.i284.i = icmp eq i8 %666, 0
  br i1 %tobool.not.i284.i, label %if.then.i286.i, label %if.end8.i.i.i310.i

if.then.i286.i:                                   ; preds = %if.then36.i
  %call.i285.i = call i32 @___ratelimit(ptr noundef nonnull @get_socclk_voltage_dependency_table._rs, ptr noundef nonnull @__func__.get_socclk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285.i)
  %tobool1.not.i.i = icmp eq i32 %call.i285.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i286.i.if.end110.i_crit_edge, label %do.end.i288.i

if.then.i286.i.if.end110.i_crit_edge:             ; preds = %if.then.i286.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end.i288.i:                                    ; preds = %if.then.i286.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i287.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end110.i

if.end8.i.i.i310.i:                               ; preds = %if.then36.i
  %conv.i289.i = zext i8 %666 to i32
  %667 = mul nuw nsw i32 %conv.i289.i, 28
  %spec.select.i1.i290.i = add nuw nsw i32 %667, 4
  %call9.i.i.i309.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i290.i, i32 noundef 3520) #12
  %tobool11.not.i.i = icmp eq ptr %call9.i.i.i309.i, null
  br i1 %tobool11.not.i.i, label %if.end8.i.i.i310.i.if.end110.i_crit_edge, label %if.end13.i.i

if.end8.i.i.i310.i.if.end110.i_crit_edge:         ; preds = %if.end8.i.i.i310.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end13.i.i:                                     ; preds = %if.end8.i.i.i310.i
  %668 = ptrtoint ptr %ucNumEntries.i283.i to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %ucNumEntries.i283.i, align 1
  %conv15.i.i = zext i8 %669 to i32
  %670 = ptrtoint ptr %call9.i.i.i309.i to i32
  call void @__asan_store4_noabort(i32 %670)
  store i32 %conv15.i.i, ptr %call9.i.i.i309.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %669)
  %cmp2.not.i.i = icmp eq i8 %669, 0
  br i1 %cmp2.not.i.i, label %if.end13.i.i.for.end.i318.i_crit_edge, label %if.end13.i.i.for.body.i317.i_crit_edge

if.end13.i.i.for.body.i317.i_crit_edge:           ; preds = %if.end13.i.i
  br label %for.body.i317.i

if.end13.i.i.for.end.i318.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i318.i

for.body.i317.i:                                  ; preds = %for.body.i317.i.for.body.i317.i_crit_edge, %if.end13.i.i.for.body.i317.i_crit_edge
  %i.03.i313.i = phi i32 [ %inc.i315.i, %for.body.i317.i.for.body.i317.i_crit_edge ], [ 0, %if.end13.i.i.for.body.i317.i_crit_edge ]
  %arrayidx.i314.i = getelementptr %struct._ATOM_Vega10_SOCCLK_Dependency_Table, ptr %323, i32 0, i32 2, i32 %i.03.i313.i
  %ucVddInd.i.i = getelementptr %struct._ATOM_Vega10_SOCCLK_Dependency_Table, ptr %323, i32 0, i32 2, i32 %i.03.i313.i, i32 1
  %671 = ptrtoint ptr %ucVddInd.i.i to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %ucVddInd.i.i, align 1
  %arrayidx20.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i309.i, i32 0, i32 1, i32 %i.03.i313.i
  %vddInd.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i309.i, i32 0, i32 1, i32 %i.03.i313.i, i32 1
  %673 = ptrtoint ptr %vddInd.i.i to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 %672, ptr %vddInd.i.i, align 4
  %674 = ptrtoint ptr %arrayidx.i314.i to i32
  call void @__asan_loadN_noabort(i32 %674, i32 4)
  %675 = load i32, ptr %arrayidx.i314.i, align 1
  %676 = call i32 @llvm.bswap.i32(i32 %675) #7
  %677 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 %676, ptr %arrayidx20.i.i, align 4
  %inc.i315.i = add nuw nsw i32 %i.03.i313.i, 1
  %exitcond.not.i316.i = icmp eq i32 %inc.i315.i, %conv15.i.i
  br i1 %exitcond.not.i316.i, label %for.body.i317.i.for.end.i318.i_crit_edge, label %for.body.i317.i.for.body.i317.i_crit_edge

for.body.i317.i.for.body.i317.i_crit_edge:        ; preds = %for.body.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i317.i

for.body.i317.i.for.end.i318.i_crit_edge:         ; preds = %for.body.i317.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i318.i

for.end.i318.i:                                   ; preds = %for.body.i317.i.for.end.i318.i_crit_edge, %if.end13.i.i.for.end.i318.i_crit_edge
  %678 = ptrtoint ptr %vdd_dep_on_socclk.i to i32
  call void @__asan_store4_noabort(i32 %678)
  store ptr %call9.i.i.i309.i, ptr %vdd_dep_on_socclk.i, align 4
  br label %land.lhs.true41.i

land.lhs.true41.i:                                ; preds = %for.end.i318.i, %land.lhs.true32.i.land.lhs.true41.i_crit_edge
  %679 = ptrtoint ptr %usGfxclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %679, i32 2)
  %680 = load i16, ptr %usGfxclkDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %680)
  %tobool44.not.i = icmp eq i16 %680, 0
  br i1 %tobool44.not.i, label %land.lhs.true41.i.land.lhs.true50.i_crit_edge, label %if.then45.i

land.lhs.true41.i.land.lhs.true50.i_crit_edge:    ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true50.i

if.then45.i:                                      ; preds = %land.lhs.true41.i
  %ucNumEntries.i320.i = getelementptr inbounds %struct._ATOM_Vega10_GFXCLK_Dependency_Table, ptr %327, i32 0, i32 1
  %681 = ptrtoint ptr %ucNumEntries.i320.i to i32
  call void @__asan_load1_noabort(i32 %681)
  %682 = load i8, ptr %ucNumEntries.i320.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %682)
  %cmp.not.i321.i = icmp eq i8 %682, 0
  br i1 %cmp.not.i321.i, label %if.then.i324.i, label %if.end8.i.i.i348.i

if.then.i324.i:                                   ; preds = %if.then45.i
  %call.i322.i = call i32 @___ratelimit(ptr noundef nonnull @get_gfxclk_voltage_dependency_table._rs, ptr noundef nonnull @__func__.get_gfxclk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322.i)
  %tobool.not.i323.i = icmp eq i32 %call.i322.i, 0
  br i1 %tobool.not.i323.i, label %if.then.i324.i.if.end110.i_crit_edge, label %do.end.i326.i

if.then.i324.i.if.end110.i_crit_edge:             ; preds = %if.then.i324.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end.i326.i:                                    ; preds = %if.then.i324.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i325.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end110.i

if.end8.i.i.i348.i:                               ; preds = %if.then45.i
  %conv.i327.i = zext i8 %682 to i32
  %683 = mul nuw nsw i32 %conv.i327.i, 28
  %spec.select.i1.i328.i = add nuw nsw i32 %683, 4
  %call9.i.i.i347.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i328.i, i32 noundef 3520) #12
  %tobool12.not.i350.i = icmp eq ptr %call9.i.i.i347.i, null
  br i1 %tobool12.not.i350.i, label %if.end8.i.i.i348.i.if.end110.i_crit_edge, label %if.end14.i353.i

if.end8.i.i.i348.i.if.end110.i_crit_edge:         ; preds = %if.end8.i.i.i348.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end14.i353.i:                                  ; preds = %if.end8.i.i.i348.i
  %684 = ptrtoint ptr %ucNumEntries.i320.i to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %ucNumEntries.i320.i, align 1
  %conv16.i352.i = zext i8 %685 to i32
  %686 = ptrtoint ptr %call9.i.i.i347.i to i32
  call void @__asan_store4_noabort(i32 %686)
  store i32 %conv16.i352.i, ptr %call9.i.i.i347.i, align 128
  %687 = ptrtoint ptr %327 to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %327, align 1
  %689 = zext i8 %688 to i64
  call void @__sanitizer_cov_trace_switch(i64 %689, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %688, label %if.else96.i.i [
    i8 0, label %for.cond.preheader.i.i
    i8 1, label %if.then55.i.i
  ]

for.cond.preheader.i.i:                           ; preds = %if.end14.i353.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %685)
  %cmp226.not.i.i = icmp eq i8 %685, 0
  br i1 %cmp226.not.i.i, label %for.cond.preheader.i.i.if.end110.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i358.i_crit_edge

for.cond.preheader.i.i.for.body.i358.i_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i358.i

for.cond.preheader.i.i.if.end110.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i.i

for.body.i358.i:                                  ; preds = %for.body.i358.i.for.body.i358.i_crit_edge, %for.cond.preheader.i.i.for.body.i358.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i357.i, %for.body.i358.i.for.body.i358.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i358.i_crit_edge ]
  %arrayidx.i354.i = getelementptr %struct._ATOM_Vega10_GFXCLK_Dependency_Table, ptr %327, i32 0, i32 2, i32 %i.07.i.i
  %ucVddInd.i355.i = getelementptr %struct._ATOM_Vega10_GFXCLK_Dependency_Table, ptr %327, i32 0, i32 2, i32 %i.07.i.i, i32 1
  %690 = ptrtoint ptr %ucVddInd.i355.i to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %ucVddInd.i355.i, align 1
  %arrayidx25.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.07.i.i
  %vddInd.i356.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.07.i.i, i32 1
  %692 = ptrtoint ptr %vddInd.i356.i to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 %691, ptr %vddInd.i356.i, align 4
  %693 = ptrtoint ptr %arrayidx.i354.i to i32
  call void @__asan_loadN_noabort(i32 %693, i32 4)
  %694 = load i32, ptr %arrayidx.i354.i, align 1
  %695 = call i32 @llvm.bswap.i32(i32 %694) #7
  %696 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %696)
  store i32 %695, ptr %arrayidx25.i.i, align 4
  %usCKSVOffsetandDisable.i.i = getelementptr %struct._ATOM_Vega10_GFXCLK_Dependency_Table, ptr %327, i32 0, i32 2, i32 %i.07.i.i, i32 2
  %697 = ptrtoint ptr %usCKSVOffsetandDisable.i.i to i32
  call void @__asan_loadN_noabort(i32 %697, i32 2)
  %698 = load i16, ptr %usCKSVOffsetandDisable.i.i, align 1
  %699 = trunc i16 %698 to i8
  %700 = xor i8 %699, -1
  %701 = lshr i8 %700, 7
  %cks_enable.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.07.i.i, i32 10
  %702 = ptrtoint ptr %cks_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %702)
  store i8 %701, ptr %cks_enable.i.i, align 1
  %703 = lshr i16 %698, 8
  %704 = trunc i16 %703 to i8
  %conv43.i.i = and i8 %704, 127
  %cks_voffset.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.07.i.i, i32 11
  %705 = ptrtoint ptr %cks_voffset.i.i to i32
  call void @__asan_store1_noabort(i32 %705)
  store i8 %conv43.i.i, ptr %cks_voffset.i.i, align 4
  %usAVFSOffset.i.i = getelementptr %struct._ATOM_Vega10_GFXCLK_Dependency_Table, ptr %327, i32 0, i32 2, i32 %i.07.i.i, i32 3
  %706 = ptrtoint ptr %usAVFSOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %706, i32 2)
  %707 = load i16, ptr %usAVFSOffset.i.i, align 1
  %708 = call i16 @llvm.bswap.i16(i16 %707) #7
  %conv48.i.i = zext i16 %708 to i32
  %sclk_offset.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.07.i.i, i32 12
  %709 = ptrtoint ptr %sclk_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %709)
  store i32 %conv48.i.i, ptr %sclk_offset.i.i, align 4
  %inc.i357.i = add nuw i32 %i.07.i.i, 1
  %710 = ptrtoint ptr %call9.i.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %call9.i.i.i347.i, align 128
  %cmp22.i.i = icmp ult i32 %inc.i357.i, %711
  br i1 %cmp22.i.i, label %for.body.i358.i.for.body.i358.i_crit_edge, label %for.body.i358.i.if.end110.i.i_crit_edge

for.body.i358.i.if.end110.i.i_crit_edge:          ; preds = %for.body.i358.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i.i

for.body.i358.i.for.body.i358.i_crit_edge:        ; preds = %for.body.i358.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i358.i

if.then55.i.i:                                    ; preds = %if.end14.i353.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %685)
  %cmp593.not.i.i = icmp eq i8 %685, 0
  br i1 %cmp593.not.i.i, label %if.then55.i.i.if.end110.i.i_crit_edge, label %for.body61.preheader.i.i

if.then55.i.i.if.end110.i.i_crit_edge:            ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i.i

for.body61.preheader.i.i:                         ; preds = %if.then55.i.i
  %entries56.i.i = getelementptr inbounds %struct._ATOM_Vega10_GFXCLK_Dependency_Table, ptr %327, i32 0, i32 2
  br label %for.body61.i.i

for.body61.i.i:                                   ; preds = %for.body61.i.i.for.body61.i.i_crit_edge, %for.body61.preheader.i.i
  %i.15.i.i = phi i32 [ %inc94.i.i, %for.body61.i.i.for.body61.i.i_crit_edge ], [ 0, %for.body61.preheader.i.i ]
  %patom_record_v2.04.i.i = phi ptr [ %incdec.ptr.i.i, %for.body61.i.i.for.body61.i.i_crit_edge ], [ %entries56.i.i, %for.body61.preheader.i.i ]
  %ucVddInd62.i.i = getelementptr inbounds %struct._ATOM_Vega10_GFXCLK_Dependency_Record_V2, ptr %patom_record_v2.04.i.i, i32 0, i32 1
  %712 = ptrtoint ptr %ucVddInd62.i.i to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %ucVddInd62.i.i, align 1
  %arrayidx64.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.15.i.i
  %vddInd65.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.15.i.i, i32 1
  %714 = ptrtoint ptr %vddInd65.i.i to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 %713, ptr %vddInd65.i.i, align 4
  %715 = ptrtoint ptr %patom_record_v2.04.i.i to i32
  call void @__asan_loadN_noabort(i32 %715, i32 4)
  %716 = load i32, ptr %patom_record_v2.04.i.i, align 1
  %717 = call i32 @llvm.bswap.i32(i32 %716) #7
  %718 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store4_noabort(i32 %718)
  store i32 %717, ptr %arrayidx64.i.i, align 4
  %usCKSVOffsetandDisable70.i.i = getelementptr inbounds %struct._ATOM_Vega10_GFXCLK_Dependency_Record_V2, ptr %patom_record_v2.04.i.i, i32 0, i32 2
  %719 = ptrtoint ptr %usCKSVOffsetandDisable70.i.i to i32
  call void @__asan_loadN_noabort(i32 %719, i32 2)
  %720 = load i16, ptr %usCKSVOffsetandDisable70.i.i, align 1
  %721 = trunc i16 %720 to i8
  %722 = xor i8 %721, -1
  %723 = lshr i8 %722, 7
  %cks_enable80.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.15.i.i, i32 10
  %724 = ptrtoint ptr %cks_enable80.i.i to i32
  call void @__asan_store1_noabort(i32 %724)
  store i8 %723, ptr %cks_enable80.i.i, align 1
  %725 = lshr i16 %720, 8
  %726 = trunc i16 %725 to i8
  %conv84.i.i = and i8 %726, 127
  %cks_voffset87.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.15.i.i, i32 11
  %727 = ptrtoint ptr %cks_voffset87.i.i to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 %conv84.i.i, ptr %cks_voffset87.i.i, align 4
  %usAVFSOffset88.i.i = getelementptr inbounds %struct._ATOM_Vega10_GFXCLK_Dependency_Record_V2, ptr %patom_record_v2.04.i.i, i32 0, i32 3
  %728 = ptrtoint ptr %usAVFSOffset88.i.i to i32
  call void @__asan_loadN_noabort(i32 %728, i32 2)
  %729 = load i16, ptr %usAVFSOffset88.i.i, align 1
  %730 = call i16 @llvm.bswap.i16(i16 %729) #7
  %conv89.i.i = zext i16 %730 to i32
  %sclk_offset92.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i347.i, i32 0, i32 1, i32 %i.15.i.i, i32 12
  %731 = ptrtoint ptr %sclk_offset92.i.i to i32
  call void @__asan_store4_noabort(i32 %731)
  store i32 %conv89.i.i, ptr %sclk_offset92.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct._ATOM_Vega10_GFXCLK_Dependency_Record_V2, ptr %patom_record_v2.04.i.i, i32 1
  %inc94.i.i = add nuw i32 %i.15.i.i, 1
  %732 = ptrtoint ptr %call9.i.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %call9.i.i.i347.i, align 128
  %cmp59.i.i = icmp ult i32 %inc94.i.i, %733
  br i1 %cmp59.i.i, label %for.body61.i.i.for.body61.i.i_crit_edge, label %for.body61.i.i.if.end110.i.i_crit_edge

for.body61.i.i.if.end110.i.i_crit_edge:           ; preds = %for.body61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i.i

for.body61.i.i.for.body61.i.i_crit_edge:          ; preds = %for.body61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61.i.i

if.else96.i.i:                                    ; preds = %if.end14.i353.i
  call void @kfree(ptr noundef nonnull %call9.i.i.i347.i) #7
  %call98.i.i = call i32 @___ratelimit(ptr noundef nonnull @get_gfxclk_voltage_dependency_table._rs.57, ptr noundef nonnull @__func__.get_gfxclk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i.i)
  %tobool99.not.i.i = icmp eq i32 %call98.i.i, 0
  br i1 %tobool99.not.i.i, label %if.else96.i.i.if.end110.i_crit_edge, label %do.end103.i.i

if.else96.i.i.if.end110.i_crit_edge:              ; preds = %if.else96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end103.i.i:                                    ; preds = %if.else96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call105.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60) #11
  br label %if.end110.i

if.end110.i.i:                                    ; preds = %for.body61.i.i.if.end110.i.i_crit_edge, %if.then55.i.i.if.end110.i.i_crit_edge, %for.body.i358.i.if.end110.i.i_crit_edge, %for.cond.preheader.i.i.if.end110.i.i_crit_edge
  %734 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %734)
  store ptr %call9.i.i.i347.i, ptr %313, align 4
  br label %land.lhs.true50.i

land.lhs.true50.i:                                ; preds = %if.end110.i.i, %land.lhs.true41.i.land.lhs.true50.i_crit_edge
  %735 = ptrtoint ptr %usPixclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %735, i32 2)
  %736 = load i16, ptr %usPixclkDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %736)
  %tobool53.not.i = icmp eq i16 %736, 0
  br i1 %tobool53.not.i, label %land.lhs.true50.i.land.lhs.true59.i_crit_edge, label %if.then54.i

land.lhs.true50.i.land.lhs.true59.i_crit_edge:    ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true59.i

if.then54.i:                                      ; preds = %land.lhs.true50.i
  %ucNumEntries.i360.i = getelementptr inbounds %struct._ATOM_Vega10_PIXCLK_Dependency_Table, ptr %347, i32 0, i32 1
  %737 = ptrtoint ptr %ucNumEntries.i360.i to i32
  call void @__asan_load1_noabort(i32 %737)
  %738 = load i8, ptr %ucNumEntries.i360.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %738)
  %cmp.not.i361.i = icmp eq i8 %738, 0
  br i1 %cmp.not.i361.i, label %if.then.i364.i, label %if.end8.i.i.i388.i

if.then.i364.i:                                   ; preds = %if.then54.i
  %call.i362.i = call i32 @___ratelimit(ptr noundef nonnull @get_pix_clk_voltage_dependency_table._rs, ptr noundef nonnull @__func__.get_pix_clk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i362.i)
  %tobool.not.i363.i = icmp eq i32 %call.i362.i, 0
  br i1 %tobool.not.i363.i, label %if.then.i364.i.if.end110.i_crit_edge, label %do.end.i366.i

if.then.i364.i.if.end110.i_crit_edge:             ; preds = %if.then.i364.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end.i366.i:                                    ; preds = %if.then.i364.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i365.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end110.i

if.end8.i.i.i388.i:                               ; preds = %if.then54.i
  %conv.i367.i = zext i8 %738 to i32
  %739 = mul nuw nsw i32 %conv.i367.i, 28
  %spec.select.i1.i368.i = add nuw nsw i32 %739, 4
  %call9.i.i.i387.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i368.i, i32 noundef 3520) #12
  %tobool12.not.i390.i = icmp eq ptr %call9.i.i.i387.i, null
  br i1 %tobool12.not.i390.i, label %if.end8.i.i.i388.i.if.end110.i_crit_edge, label %if.end14.i393.i

if.end8.i.i.i388.i.if.end110.i_crit_edge:         ; preds = %if.end8.i.i.i388.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end14.i393.i:                                  ; preds = %if.end8.i.i.i388.i
  %740 = ptrtoint ptr %ucNumEntries.i360.i to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %ucNumEntries.i360.i, align 1
  %conv16.i392.i = zext i8 %741 to i32
  %742 = ptrtoint ptr %call9.i.i.i387.i to i32
  call void @__asan_store4_noabort(i32 %742)
  store i32 %conv16.i392.i, ptr %call9.i.i.i387.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %741)
  %cmp182.not.i.i = icmp eq i8 %741, 0
  br i1 %cmp182.not.i.i, label %if.end14.i393.i.for.end.i400.i_crit_edge, label %if.end14.i393.i.for.body.i399.i_crit_edge

if.end14.i393.i.for.body.i399.i_crit_edge:        ; preds = %if.end14.i393.i
  br label %for.body.i399.i

if.end14.i393.i.for.end.i400.i_crit_edge:         ; preds = %if.end14.i393.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i400.i

for.body.i399.i:                                  ; preds = %for.body.i399.i.for.body.i399.i_crit_edge, %if.end14.i393.i.for.body.i399.i_crit_edge
  %i.03.i394.i = phi i32 [ %inc.i398.i, %for.body.i399.i.for.body.i399.i_crit_edge ], [ 0, %if.end14.i393.i.for.body.i399.i_crit_edge ]
  %arrayidx.i395.i = getelementptr %struct._ATOM_Vega10_PIXCLK_Dependency_Table, ptr %347, i32 0, i32 2, i32 %i.03.i394.i
  %ucVddInd.i396.i = getelementptr %struct._ATOM_Vega10_PIXCLK_Dependency_Table, ptr %347, i32 0, i32 2, i32 %i.03.i394.i, i32 1
  %743 = ptrtoint ptr %ucVddInd.i396.i to i32
  call void @__asan_load1_noabort(i32 %743)
  %744 = load i8, ptr %ucVddInd.i396.i, align 1
  %arrayidx21.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i387.i, i32 0, i32 1, i32 %i.03.i394.i
  %vddInd.i397.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i387.i, i32 0, i32 1, i32 %i.03.i394.i, i32 1
  %745 = ptrtoint ptr %vddInd.i397.i to i32
  call void @__asan_store1_noabort(i32 %745)
  store i8 %744, ptr %vddInd.i397.i, align 4
  %746 = ptrtoint ptr %arrayidx.i395.i to i32
  call void @__asan_loadN_noabort(i32 %746, i32 4)
  %747 = load i32, ptr %arrayidx.i395.i, align 1
  %748 = call i32 @llvm.bswap.i32(i32 %747) #7
  %749 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 %748, ptr %arrayidx21.i.i, align 4
  %inc.i398.i = add nuw i32 %i.03.i394.i, 1
  %750 = ptrtoint ptr %call9.i.i.i387.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %call9.i.i.i387.i, align 128
  %cmp18.i.i = icmp ult i32 %inc.i398.i, %751
  br i1 %cmp18.i.i, label %for.body.i399.i.for.body.i399.i_crit_edge, label %for.body.i399.i.for.end.i400.i_crit_edge

for.body.i399.i.for.end.i400.i_crit_edge:         ; preds = %for.body.i399.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i400.i

for.body.i399.i.for.body.i399.i_crit_edge:        ; preds = %for.body.i399.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i399.i

for.end.i400.i:                                   ; preds = %for.body.i399.i.for.end.i400.i_crit_edge, %if.end14.i393.i.for.end.i400.i_crit_edge
  %752 = ptrtoint ptr %vdd_dep_on_pixclk.i to i32
  call void @__asan_store4_noabort(i32 %752)
  store ptr %call9.i.i.i387.i, ptr %vdd_dep_on_pixclk.i, align 4
  br label %land.lhs.true59.i

land.lhs.true59.i:                                ; preds = %for.end.i400.i, %land.lhs.true50.i.land.lhs.true59.i_crit_edge
  %753 = ptrtoint ptr %usPhyClkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %753, i32 2)
  %754 = load i16, ptr %usPhyClkDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %754)
  %tobool62.not.i = icmp eq i16 %754, 0
  br i1 %tobool62.not.i, label %land.lhs.true59.i.land.lhs.true68.i_crit_edge, label %if.then63.i

land.lhs.true59.i.land.lhs.true68.i_crit_edge:    ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true68.i

if.then63.i:                                      ; preds = %land.lhs.true59.i
  %ucNumEntries.i402.i = getelementptr inbounds %struct._ATOM_Vega10_PIXCLK_Dependency_Table, ptr %351, i32 0, i32 1
  %755 = ptrtoint ptr %ucNumEntries.i402.i to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %ucNumEntries.i402.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %756)
  %cmp.not.i403.i = icmp eq i8 %756, 0
  br i1 %cmp.not.i403.i, label %if.then.i406.i, label %if.end8.i.i.i430.i

if.then.i406.i:                                   ; preds = %if.then63.i
  %call.i404.i = call i32 @___ratelimit(ptr noundef nonnull @get_pix_clk_voltage_dependency_table._rs, ptr noundef nonnull @__func__.get_pix_clk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i404.i)
  %tobool.not.i405.i = icmp eq i32 %call.i404.i, 0
  br i1 %tobool.not.i405.i, label %if.then.i406.i.if.end110.i_crit_edge, label %do.end.i408.i

if.then.i406.i.if.end110.i_crit_edge:             ; preds = %if.then.i406.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end.i408.i:                                    ; preds = %if.then.i406.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i407.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end110.i

if.end8.i.i.i430.i:                               ; preds = %if.then63.i
  %conv.i409.i = zext i8 %756 to i32
  %757 = mul nuw nsw i32 %conv.i409.i, 28
  %spec.select.i1.i410.i = add nuw nsw i32 %757, 4
  %call9.i.i.i429.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i410.i, i32 noundef 3520) #12
  %tobool12.not.i432.i = icmp eq ptr %call9.i.i.i429.i, null
  br i1 %tobool12.not.i432.i, label %if.end8.i.i.i430.i.if.end110.i_crit_edge, label %if.end14.i436.i

if.end8.i.i.i430.i.if.end110.i_crit_edge:         ; preds = %if.end8.i.i.i430.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end14.i436.i:                                  ; preds = %if.end8.i.i.i430.i
  %758 = ptrtoint ptr %ucNumEntries.i402.i to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %ucNumEntries.i402.i, align 1
  %conv16.i434.i = zext i8 %759 to i32
  %760 = ptrtoint ptr %call9.i.i.i429.i to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 %conv16.i434.i, ptr %call9.i.i.i429.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %759)
  %cmp182.not.i435.i = icmp eq i8 %759, 0
  br i1 %cmp182.not.i435.i, label %if.end14.i436.i.for.end.i445.i_crit_edge, label %if.end14.i436.i.for.body.i444.i_crit_edge

if.end14.i436.i.for.body.i444.i_crit_edge:        ; preds = %if.end14.i436.i
  br label %for.body.i444.i

if.end14.i436.i.for.end.i445.i_crit_edge:         ; preds = %if.end14.i436.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i445.i

for.body.i444.i:                                  ; preds = %for.body.i444.i.for.body.i444.i_crit_edge, %if.end14.i436.i.for.body.i444.i_crit_edge
  %i.03.i437.i = phi i32 [ %inc.i442.i, %for.body.i444.i.for.body.i444.i_crit_edge ], [ 0, %if.end14.i436.i.for.body.i444.i_crit_edge ]
  %arrayidx.i438.i = getelementptr %struct._ATOM_Vega10_PIXCLK_Dependency_Table, ptr %351, i32 0, i32 2, i32 %i.03.i437.i
  %ucVddInd.i439.i = getelementptr %struct._ATOM_Vega10_PIXCLK_Dependency_Table, ptr %351, i32 0, i32 2, i32 %i.03.i437.i, i32 1
  %761 = ptrtoint ptr %ucVddInd.i439.i to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %ucVddInd.i439.i, align 1
  %arrayidx21.i440.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i429.i, i32 0, i32 1, i32 %i.03.i437.i
  %vddInd.i441.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i429.i, i32 0, i32 1, i32 %i.03.i437.i, i32 1
  %763 = ptrtoint ptr %vddInd.i441.i to i32
  call void @__asan_store1_noabort(i32 %763)
  store i8 %762, ptr %vddInd.i441.i, align 4
  %764 = ptrtoint ptr %arrayidx.i438.i to i32
  call void @__asan_loadN_noabort(i32 %764, i32 4)
  %765 = load i32, ptr %arrayidx.i438.i, align 1
  %766 = call i32 @llvm.bswap.i32(i32 %765) #7
  %767 = ptrtoint ptr %arrayidx21.i440.i to i32
  call void @__asan_store4_noabort(i32 %767)
  store i32 %766, ptr %arrayidx21.i440.i, align 4
  %inc.i442.i = add nuw i32 %i.03.i437.i, 1
  %768 = ptrtoint ptr %call9.i.i.i429.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %call9.i.i.i429.i, align 128
  %cmp18.i443.i = icmp ult i32 %inc.i442.i, %769
  br i1 %cmp18.i443.i, label %for.body.i444.i.for.body.i444.i_crit_edge, label %for.body.i444.i.for.end.i445.i_crit_edge

for.body.i444.i.for.end.i445.i_crit_edge:         ; preds = %for.body.i444.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i445.i

for.body.i444.i.for.body.i444.i_crit_edge:        ; preds = %for.body.i444.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i444.i

for.end.i445.i:                                   ; preds = %for.body.i444.i.for.end.i445.i_crit_edge, %if.end14.i436.i.for.end.i445.i_crit_edge
  %770 = ptrtoint ptr %vdd_dep_on_phyclk.i to i32
  call void @__asan_store4_noabort(i32 %770)
  store ptr %call9.i.i.i429.i, ptr %vdd_dep_on_phyclk.i, align 4
  br label %land.lhs.true68.i

land.lhs.true68.i:                                ; preds = %for.end.i445.i, %land.lhs.true59.i.land.lhs.true68.i_crit_edge
  %771 = ptrtoint ptr %usDispClkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %771, i32 2)
  %772 = load i16, ptr %usDispClkDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %772)
  %tobool71.not.i = icmp eq i16 %772, 0
  br i1 %tobool71.not.i, label %land.lhs.true68.i.land.lhs.true77.i_crit_edge, label %if.then72.i

land.lhs.true68.i.land.lhs.true77.i_crit_edge:    ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true77.i

if.then72.i:                                      ; preds = %land.lhs.true68.i
  %ucNumEntries.i448.i = getelementptr inbounds %struct._ATOM_Vega10_PIXCLK_Dependency_Table, ptr %355, i32 0, i32 1
  %773 = ptrtoint ptr %ucNumEntries.i448.i to i32
  call void @__asan_load1_noabort(i32 %773)
  %774 = load i8, ptr %ucNumEntries.i448.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %774)
  %cmp.not.i449.i = icmp eq i8 %774, 0
  br i1 %cmp.not.i449.i, label %if.then.i452.i, label %if.end8.i.i.i476.i

if.then.i452.i:                                   ; preds = %if.then72.i
  %call.i450.i = call i32 @___ratelimit(ptr noundef nonnull @get_pix_clk_voltage_dependency_table._rs, ptr noundef nonnull @__func__.get_pix_clk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i450.i)
  %tobool.not.i451.i = icmp eq i32 %call.i450.i, 0
  br i1 %tobool.not.i451.i, label %if.then.i452.i.if.end110.i_crit_edge, label %do.end.i454.i

if.then.i452.i.if.end110.i_crit_edge:             ; preds = %if.then.i452.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end.i454.i:                                    ; preds = %if.then.i452.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i453.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end110.i

if.end8.i.i.i476.i:                               ; preds = %if.then72.i
  %conv.i455.i = zext i8 %774 to i32
  %775 = mul nuw nsw i32 %conv.i455.i, 28
  %spec.select.i1.i456.i = add nuw nsw i32 %775, 4
  %call9.i.i.i475.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i456.i, i32 noundef 3520) #12
  %tobool12.not.i478.i = icmp eq ptr %call9.i.i.i475.i, null
  br i1 %tobool12.not.i478.i, label %if.end8.i.i.i476.i.if.end110.i_crit_edge, label %if.end14.i482.i

if.end8.i.i.i476.i.if.end110.i_crit_edge:         ; preds = %if.end8.i.i.i476.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end14.i482.i:                                  ; preds = %if.end8.i.i.i476.i
  %776 = ptrtoint ptr %ucNumEntries.i448.i to i32
  call void @__asan_load1_noabort(i32 %776)
  %777 = load i8, ptr %ucNumEntries.i448.i, align 1
  %conv16.i480.i = zext i8 %777 to i32
  %778 = ptrtoint ptr %call9.i.i.i475.i to i32
  call void @__asan_store4_noabort(i32 %778)
  store i32 %conv16.i480.i, ptr %call9.i.i.i475.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %777)
  %cmp182.not.i481.i = icmp eq i8 %777, 0
  br i1 %cmp182.not.i481.i, label %if.end14.i482.i.for.end.i491.i_crit_edge, label %if.end14.i482.i.for.body.i490.i_crit_edge

if.end14.i482.i.for.body.i490.i_crit_edge:        ; preds = %if.end14.i482.i
  br label %for.body.i490.i

if.end14.i482.i.for.end.i491.i_crit_edge:         ; preds = %if.end14.i482.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i491.i

for.body.i490.i:                                  ; preds = %for.body.i490.i.for.body.i490.i_crit_edge, %if.end14.i482.i.for.body.i490.i_crit_edge
  %i.03.i483.i = phi i32 [ %inc.i488.i, %for.body.i490.i.for.body.i490.i_crit_edge ], [ 0, %if.end14.i482.i.for.body.i490.i_crit_edge ]
  %arrayidx.i484.i = getelementptr %struct._ATOM_Vega10_PIXCLK_Dependency_Table, ptr %355, i32 0, i32 2, i32 %i.03.i483.i
  %ucVddInd.i485.i = getelementptr %struct._ATOM_Vega10_PIXCLK_Dependency_Table, ptr %355, i32 0, i32 2, i32 %i.03.i483.i, i32 1
  %779 = ptrtoint ptr %ucVddInd.i485.i to i32
  call void @__asan_load1_noabort(i32 %779)
  %780 = load i8, ptr %ucVddInd.i485.i, align 1
  %arrayidx21.i486.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i475.i, i32 0, i32 1, i32 %i.03.i483.i
  %vddInd.i487.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i475.i, i32 0, i32 1, i32 %i.03.i483.i, i32 1
  %781 = ptrtoint ptr %vddInd.i487.i to i32
  call void @__asan_store1_noabort(i32 %781)
  store i8 %780, ptr %vddInd.i487.i, align 4
  %782 = ptrtoint ptr %arrayidx.i484.i to i32
  call void @__asan_loadN_noabort(i32 %782, i32 4)
  %783 = load i32, ptr %arrayidx.i484.i, align 1
  %784 = call i32 @llvm.bswap.i32(i32 %783) #7
  %785 = ptrtoint ptr %arrayidx21.i486.i to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 %784, ptr %arrayidx21.i486.i, align 4
  %inc.i488.i = add nuw i32 %i.03.i483.i, 1
  %786 = ptrtoint ptr %call9.i.i.i475.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %call9.i.i.i475.i, align 128
  %cmp18.i489.i = icmp ult i32 %inc.i488.i, %787
  br i1 %cmp18.i489.i, label %for.body.i490.i.for.body.i490.i_crit_edge, label %for.body.i490.i.for.end.i491.i_crit_edge

for.body.i490.i.for.end.i491.i_crit_edge:         ; preds = %for.body.i490.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i491.i

for.body.i490.i.for.body.i490.i_crit_edge:        ; preds = %for.body.i490.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i490.i

for.end.i491.i:                                   ; preds = %for.body.i490.i.for.end.i491.i_crit_edge, %if.end14.i482.i.for.end.i491.i_crit_edge
  %788 = ptrtoint ptr %vdd_dep_on_dispclk.i to i32
  call void @__asan_store4_noabort(i32 %788)
  store ptr %call9.i.i.i475.i, ptr %vdd_dep_on_dispclk.i, align 4
  br label %land.lhs.true77.i

land.lhs.true77.i:                                ; preds = %for.end.i491.i, %land.lhs.true68.i.land.lhs.true77.i_crit_edge
  %789 = ptrtoint ptr %usDcefclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %789, i32 2)
  %790 = load i16, ptr %usDcefclkDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %790)
  %tobool80.not.i = icmp eq i16 %790, 0
  br i1 %tobool80.not.i, label %land.lhs.true77.i.land.lhs.true86.i_crit_edge, label %if.then81.i

land.lhs.true77.i.land.lhs.true86.i_crit_edge:    ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true86.i

if.then81.i:                                      ; preds = %land.lhs.true77.i
  %ucNumEntries.i494.i = getelementptr inbounds %struct._ATOM_Vega10_DCEFCLK_Dependency_Table, ptr %331, i32 0, i32 1
  %791 = ptrtoint ptr %ucNumEntries.i494.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %ucNumEntries.i494.i, align 1
  %conv.i495.i = zext i8 %792 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %792)
  %cmp.not.i496.i = icmp eq i8 %792, 0
  br i1 %cmp.not.i496.i, label %if.then.i499.i, label %do.end8.i.i

if.then.i499.i:                                   ; preds = %if.then81.i
  %call.i497.i = call i32 @___ratelimit(ptr noundef nonnull @get_dcefclk_voltage_dependency_table._rs, ptr noundef nonnull @__func__.get_dcefclk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i497.i)
  %tobool.not.i498.i = icmp eq i32 %call.i497.i, 0
  br i1 %tobool.not.i498.i, label %if.then.i499.i.if.end110.i_crit_edge, label %do.end.i500.i

if.then.i499.i.if.end110.i_crit_edge:             ; preds = %if.then.i499.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end.i500.i:                                    ; preds = %if.then.i499.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end110.i

do.end8.i.i:                                      ; preds = %if.then81.i
  %793 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %hwmgr, align 4
  %pdev.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %794, i32 0, i32 1
  %795 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %pdev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %796, i32 0, i32 8
  %797 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %797)
  %798 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26723, i16 %798)
  %cmp12.i.i = icmp eq i16 %798, 26723
  br i1 %cmp12.i.i, label %land.lhs.true.i.i, label %do.end8.i.i.if.end8.i.i.i520.i_crit_edge

do.end8.i.i.if.end8.i.i.i520.i_crit_edge:         ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i520.i

land.lhs.true.i.i:                                ; preds = %do.end8.i.i
  %revision.i.i = getelementptr inbounds %struct.pci_dev, ptr %796, i32 0, i32 12
  %799 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %799)
  %800 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %800)
  %cmp14.i.i = icmp eq i8 %800, 0
  br i1 %cmp14.i.i, label %land.lhs.true16.i.i, label %land.lhs.true.i.i.if.end8.i.i.i520.i_crit_edge

land.lhs.true.i.i.if.end8.i.i.i520.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i520.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true.i.i
  %sub.i.i = add nsw i32 %conv.i495.i, -1
  %arrayidx.i501.i = getelementptr %struct._ATOM_Vega10_DCEFCLK_Dependency_Table, ptr %331, i32 0, i32 2, i32 %sub.i.i
  %801 = ptrtoint ptr %arrayidx.i501.i to i32
  call void @__asan_loadN_noabort(i32 %801, i32 4)
  %802 = load i32, ptr %arrayidx.i501.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000, i32 %802)
  %cmp19.i.i = icmp ult i32 %802, 90000
  br i1 %cmp19.i.i, label %if.then21.i.i, label %land.lhs.true16.i.i.if.end8.i.i.i520.i_crit_edge

land.lhs.true16.i.i.if.end8.i.i.i520.i_crit_edge: ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i520.i

if.then21.i.i:                                    ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i8 %792, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %792)
  %cmp24.inv.i.i = icmp ult i8 %792, 8
  %spec.select.i.i = select i1 %cmp24.inv.i.i, i8 %add.i.i, i8 8
  %.pre.i.i = zext i8 %spec.select.i.i to i32
  br label %if.end8.i.i.i520.i

if.end8.i.i.i520.i:                               ; preds = %if.then21.i.i, %land.lhs.true16.i.i.if.end8.i.i.i520.i_crit_edge, %land.lhs.true.i.i.if.end8.i.i.i520.i_crit_edge, %do.end8.i.i.if.end8.i.i.i520.i_crit_edge
  %conv32.pre-phi.i.i = phi i32 [ %conv.i495.i, %do.end8.i.i.if.end8.i.i.i520.i_crit_edge ], [ %conv.i495.i, %land.lhs.true.i.i.if.end8.i.i.i520.i_crit_edge ], [ %conv.i495.i, %land.lhs.true16.i.i.if.end8.i.i.i520.i_crit_edge ], [ %.pre.i.i, %if.then21.i.i ]
  %803 = mul nuw nsw i32 %conv32.pre-phi.i.i, 28
  %spec.select.i99.i.i = add nuw nsw i32 %803, 4
  %call9.i.i.i519.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i99.i.i, i32 noundef 3520) #12
  %tobool35.not.i.i = icmp eq ptr %call9.i.i.i519.i, null
  br i1 %tobool35.not.i.i, label %if.end8.i.i.i520.i.if.end110.i_crit_edge, label %if.end37.i.i

if.end8.i.i.i520.i.if.end110.i_crit_edge:         ; preds = %if.end8.i.i.i520.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end37.i.i:                                     ; preds = %if.end8.i.i.i520.i
  %804 = ptrtoint ptr %call9.i.i.i519.i to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 %conv32.pre-phi.i.i, ptr %call9.i.i.i519.i, align 128
  %805 = ptrtoint ptr %ucNumEntries.i494.i to i32
  call void @__asan_load1_noabort(i32 %805)
  %806 = load i8, ptr %ucNumEntries.i494.i, align 1
  %conv40.i.i = zext i8 %806 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %806)
  %cmp41100.not.i.i = icmp eq i8 %806, 0
  br i1 %cmp41100.not.i.i, label %if.end37.i.i.for.end.i528.i_crit_edge, label %if.end37.i.i.for.body.i527.i_crit_edge

if.end37.i.i.for.body.i527.i_crit_edge:           ; preds = %if.end37.i.i
  br label %for.body.i527.i

if.end37.i.i.for.end.i528.i_crit_edge:            ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i528.i

for.body.i527.i:                                  ; preds = %for.body.i527.i.for.body.i527.i_crit_edge, %if.end37.i.i.for.body.i527.i_crit_edge
  %i.0101.i.i = phi i32 [ %inc.i525.i, %for.body.i527.i.for.body.i527.i_crit_edge ], [ 0, %if.end37.i.i.for.body.i527.i_crit_edge ]
  %arrayidx44.i.i = getelementptr %struct._ATOM_Vega10_DCEFCLK_Dependency_Table, ptr %331, i32 0, i32 2, i32 %i.0101.i.i
  %ucVddInd.i523.i = getelementptr %struct._ATOM_Vega10_DCEFCLK_Dependency_Table, ptr %331, i32 0, i32 2, i32 %i.0101.i.i, i32 1
  %807 = ptrtoint ptr %ucVddInd.i523.i to i32
  call void @__asan_load1_noabort(i32 %807)
  %808 = load i8, ptr %ucVddInd.i523.i, align 1
  %arrayidx46.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i519.i, i32 0, i32 1, i32 %i.0101.i.i
  %vddInd.i524.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i519.i, i32 0, i32 1, i32 %i.0101.i.i, i32 1
  %809 = ptrtoint ptr %vddInd.i524.i to i32
  call void @__asan_store1_noabort(i32 %809)
  store i8 %808, ptr %vddInd.i524.i, align 4
  %810 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_loadN_noabort(i32 %810, i32 4)
  %811 = load i32, ptr %arrayidx44.i.i, align 1
  %812 = call i32 @llvm.bswap.i32(i32 %811) #7
  %813 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_store4_noabort(i32 %813)
  store i32 %812, ptr %arrayidx46.i.i, align 4
  %inc.i525.i = add nuw nsw i32 %i.0101.i.i, 1
  %exitcond.not.i526.i = icmp eq i32 %inc.i525.i, %conv40.i.i
  br i1 %exitcond.not.i526.i, label %for.body.i527.i.for.end.i528.i_crit_edge, label %for.body.i527.i.for.body.i527.i_crit_edge

for.body.i527.i.for.body.i527.i_crit_edge:        ; preds = %for.body.i527.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i527.i

for.body.i527.i.for.end.i528.i_crit_edge:         ; preds = %for.body.i527.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i528.i

for.end.i528.i:                                   ; preds = %for.body.i527.i.for.end.i528.i_crit_edge, %if.end37.i.i.for.end.i528.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv32.pre-phi.i.i, i32 %conv40.i.i)
  %cmp53.i.i = icmp ugt i32 %conv32.pre-phi.i.i, %conv40.i.i
  br i1 %cmp53.i.i, label %if.then55.i529.i, label %for.end.i528.i.if.end66.i.i_crit_edge

for.end.i528.i.if.end66.i.i_crit_edge:            ; preds = %for.end.i528.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i.i

if.then55.i529.i:                                 ; preds = %for.end.i528.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub57.i.i = add nsw i32 %conv40.i.i, -1
  %ucVddInd59.i.i = getelementptr %struct._ATOM_Vega10_DCEFCLK_Dependency_Table, ptr %331, i32 0, i32 2, i32 %sub57.i.i, i32 1
  %814 = ptrtoint ptr %ucVddInd59.i.i to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %ucVddInd59.i.i, align 1
  %arrayidx61.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i519.i, i32 0, i32 1, i32 %conv40.i.i
  %vddInd62.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i519.i, i32 0, i32 1, i32 %conv40.i.i, i32 1
  %816 = ptrtoint ptr %vddInd62.i.i to i32
  call void @__asan_store1_noabort(i32 %816)
  store i8 %815, ptr %vddInd62.i.i, align 4
  %817 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store4_noabort(i32 %817)
  store i32 90000, ptr %arrayidx61.i.i, align 4
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.then55.i529.i, %for.end.i528.i.if.end66.i.i_crit_edge
  %818 = ptrtoint ptr %vdd_dep_on_dcefclk.i to i32
  call void @__asan_store4_noabort(i32 %818)
  store ptr %call9.i.i.i519.i, ptr %vdd_dep_on_dcefclk.i, align 4
  br label %land.lhs.true86.i

land.lhs.true86.i:                                ; preds = %if.end66.i.i, %land.lhs.true77.i.land.lhs.true86.i_crit_edge
  %819 = ptrtoint ptr %usMclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %819, i32 2)
  %820 = load i16, ptr %usMclkDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %820)
  %tobool89.not.i = icmp eq i16 %820, 0
  br i1 %tobool89.not.i, label %land.lhs.true86.i.land.lhs.true95.i_crit_edge, label %if.then90.i

land.lhs.true86.i.land.lhs.true95.i_crit_edge:    ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true95.i

if.then90.i:                                      ; preds = %land.lhs.true86.i
  %ucNumEntries.i531.i = getelementptr inbounds %struct._ATOM_Vega10_MCLK_Dependency_Table, ptr %335, i32 0, i32 1
  %821 = ptrtoint ptr %ucNumEntries.i531.i to i32
  call void @__asan_load1_noabort(i32 %821)
  %822 = load i8, ptr %ucNumEntries.i531.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %822)
  %tobool.not.i532.i = icmp eq i8 %822, 0
  br i1 %tobool.not.i532.i, label %if.then.i535.i, label %if.end8.i.i.i559.i

if.then.i535.i:                                   ; preds = %if.then90.i
  %call.i533.i = call i32 @___ratelimit(ptr noundef nonnull @get_mclk_voltage_dependency_table._rs, ptr noundef nonnull @__func__.get_mclk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i533.i)
  %tobool1.not.i534.i = icmp eq i32 %call.i533.i, 0
  br i1 %tobool1.not.i534.i, label %if.then.i535.i.if.end110.i_crit_edge, label %do.end.i537.i

if.then.i535.i.if.end110.i_crit_edge:             ; preds = %if.then.i535.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end.i537.i:                                    ; preds = %if.then.i535.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i536.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end110.i

if.end8.i.i.i559.i:                               ; preds = %if.then90.i
  %conv.i538.i = zext i8 %822 to i32
  %823 = mul nuw nsw i32 %conv.i538.i, 28
  %spec.select.i1.i539.i = add nuw nsw i32 %823, 4
  %call9.i.i.i558.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i539.i, i32 noundef 3520) #12
  %tobool11.not.i561.i = icmp eq ptr %call9.i.i.i558.i, null
  br i1 %tobool11.not.i561.i, label %if.end8.i.i.i559.i.if.end110.i_crit_edge, label %if.end13.i565.i

if.end8.i.i.i559.i.if.end110.i_crit_edge:         ; preds = %if.end8.i.i.i559.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end13.i565.i:                                  ; preds = %if.end8.i.i.i559.i
  %824 = ptrtoint ptr %ucNumEntries.i531.i to i32
  call void @__asan_load1_noabort(i32 %824)
  %825 = load i8, ptr %ucNumEntries.i531.i, align 1
  %conv15.i563.i = zext i8 %825 to i32
  %826 = ptrtoint ptr %call9.i.i.i558.i to i32
  call void @__asan_store4_noabort(i32 %826)
  store i32 %conv15.i563.i, ptr %call9.i.i.i558.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %825)
  %cmp2.not.i564.i = icmp eq i8 %825, 0
  br i1 %cmp2.not.i564.i, label %if.end13.i565.i.for.end.i574.i_crit_edge, label %if.end13.i565.i.for.body.i573.i_crit_edge

if.end13.i565.i.for.body.i573.i_crit_edge:        ; preds = %if.end13.i565.i
  br label %for.body.i573.i

if.end13.i565.i.for.end.i574.i_crit_edge:         ; preds = %if.end13.i565.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i574.i

for.body.i573.i:                                  ; preds = %for.body.i573.i.for.body.i573.i_crit_edge, %if.end13.i565.i.for.body.i573.i_crit_edge
  %i.03.i566.i = phi i32 [ %inc.i571.i, %for.body.i573.i.for.body.i573.i_crit_edge ], [ 0, %if.end13.i565.i.for.body.i573.i_crit_edge ]
  %arrayidx.i567.i = getelementptr %struct._ATOM_Vega10_MCLK_Dependency_Table, ptr %335, i32 0, i32 2, i32 %i.03.i566.i
  %ucVddInd.i568.i = getelementptr %struct._ATOM_Vega10_MCLK_Dependency_Table, ptr %335, i32 0, i32 2, i32 %i.03.i566.i, i32 1
  %827 = ptrtoint ptr %ucVddInd.i568.i to i32
  call void @__asan_load1_noabort(i32 %827)
  %828 = load i8, ptr %ucVddInd.i568.i, align 1
  %arrayidx20.i569.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i558.i, i32 0, i32 1, i32 %i.03.i566.i
  %vddInd.i570.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i558.i, i32 0, i32 1, i32 %i.03.i566.i, i32 1
  %829 = ptrtoint ptr %vddInd.i570.i to i32
  call void @__asan_store1_noabort(i32 %829)
  store i8 %828, ptr %vddInd.i570.i, align 4
  %ucVddciInd.i.i = getelementptr %struct._ATOM_Vega10_MCLK_Dependency_Table, ptr %335, i32 0, i32 2, i32 %i.03.i566.i, i32 3
  %830 = ptrtoint ptr %ucVddciInd.i.i to i32
  call void @__asan_load1_noabort(i32 %830)
  %831 = load i8, ptr %ucVddciInd.i.i, align 1
  %vddciInd.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i558.i, i32 0, i32 1, i32 %i.03.i566.i, i32 2
  %832 = ptrtoint ptr %vddciInd.i.i to i32
  call void @__asan_store1_noabort(i32 %832)
  store i8 %831, ptr %vddciInd.i.i, align 1
  %ucVddMemInd.i.i = getelementptr %struct._ATOM_Vega10_MCLK_Dependency_Table, ptr %335, i32 0, i32 2, i32 %i.03.i566.i, i32 2
  %833 = ptrtoint ptr %ucVddMemInd.i.i to i32
  call void @__asan_load1_noabort(i32 %833)
  %834 = load i8, ptr %ucVddMemInd.i.i, align 1
  %mvddInd.i.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i558.i, i32 0, i32 1, i32 %i.03.i566.i, i32 3
  %835 = ptrtoint ptr %mvddInd.i.i to i32
  call void @__asan_store1_noabort(i32 %835)
  store i8 %834, ptr %mvddInd.i.i, align 2
  %836 = ptrtoint ptr %arrayidx.i567.i to i32
  call void @__asan_loadN_noabort(i32 %836, i32 4)
  %837 = load i32, ptr %arrayidx.i567.i, align 1
  %838 = call i32 @llvm.bswap.i32(i32 %837) #7
  %839 = ptrtoint ptr %arrayidx20.i569.i to i32
  call void @__asan_store4_noabort(i32 %839)
  store i32 %838, ptr %arrayidx20.i569.i, align 4
  %inc.i571.i = add nuw nsw i32 %i.03.i566.i, 1
  %exitcond.not.i572.i = icmp eq i32 %inc.i571.i, %conv15.i563.i
  br i1 %exitcond.not.i572.i, label %for.body.i573.i.for.end.i574.i_crit_edge, label %for.body.i573.i.for.body.i573.i_crit_edge

for.body.i573.i.for.body.i573.i_crit_edge:        ; preds = %for.body.i573.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i573.i

for.body.i573.i.for.end.i574.i_crit_edge:         ; preds = %for.body.i573.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i574.i

for.end.i574.i:                                   ; preds = %for.body.i573.i.for.end.i574.i_crit_edge, %if.end13.i565.i.for.end.i574.i_crit_edge
  %840 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_store4_noabort(i32 %840)
  store ptr %call9.i.i.i558.i, ptr %vdd_dep_on_mclk.i, align 4
  br label %land.lhs.true95.i

land.lhs.true95.i:                                ; preds = %for.end.i574.i, %land.lhs.true86.i.land.lhs.true95.i_crit_edge
  %841 = ptrtoint ptr %usPCIETableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %841, i32 2)
  %842 = load i16, ptr %usPCIETableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %842)
  %tobool98.not.i = icmp eq i16 %842, 0
  br i1 %tobool98.not.i, label %land.lhs.true95.i.land.lhs.true104.i_crit_edge, label %if.then99.i

land.lhs.true95.i.land.lhs.true104.i_crit_edge:   ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true104.i

if.then99.i:                                      ; preds = %land.lhs.true95.i
  %pcie_table100.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 22
  %843 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %pptable, align 4
  %ucNumEntries.i576.i = getelementptr inbounds %struct._ATOM_Vega10_PCIE_Table, ptr %343, i32 0, i32 1
  %845 = ptrtoint ptr %ucNumEntries.i576.i to i32
  call void @__asan_load1_noabort(i32 %845)
  %846 = load i8, ptr %ucNumEntries.i576.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %846)
  %tobool.not.i577.i = icmp eq i8 %846, 0
  br i1 %tobool.not.i577.i, label %if.then.i580.i, label %if.end8.i.i.i601.i

if.then.i580.i:                                   ; preds = %if.then99.i
  %call.i578.i = call i32 @___ratelimit(ptr noundef nonnull @get_pcie_table._rs, ptr noundef nonnull @__func__.get_pcie_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i578.i)
  %tobool1.not.i579.i = icmp eq i32 %call.i578.i, 0
  br i1 %tobool1.not.i579.i, label %if.then.i580.i.land.lhs.true104.i_crit_edge, label %do.end.i582.i

if.then.i580.i.land.lhs.true104.i_crit_edge:      ; preds = %if.then.i580.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true104.i

do.end.i582.i:                                    ; preds = %if.then.i580.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i581.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %land.lhs.true104.i

if.end8.i.i.i601.i:                               ; preds = %if.then99.i
  %conv.i583.i = zext i8 %846 to i32
  %847 = mul nuw nsw i32 %conv.i583.i, 12
  %spec.select.i64.i.i = add nuw nsw i32 %847, 4
  %call9.i.i.i600.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i64.i.i, i32 noundef 3520) #12
  %tobool11.not.i603.i = icmp eq ptr %call9.i.i.i600.i, null
  br i1 %tobool11.not.i603.i, label %if.end8.i.i.i601.i.if.end110.i_crit_edge, label %if.end13.i607.i

if.end8.i.i.i601.i.if.end110.i_crit_edge:         ; preds = %if.end8.i.i.i601.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.end13.i607.i:                                  ; preds = %if.end8.i.i.i601.i
  %848 = ptrtoint ptr %844 to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %844, align 4
  %850 = ptrtoint ptr %849 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load i32, ptr %849, align 4
  %852 = ptrtoint ptr %ucNumEntries.i576.i to i32
  call void @__asan_load1_noabort(i32 %852)
  %853 = load i8, ptr %ucNumEntries.i576.i, align 1
  %conv15.i605.i = zext i8 %853 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %851, i32 %conv15.i605.i)
  %cmp.not.i606.i = icmp ult i32 %851, %conv15.i605.i
  br i1 %cmp.not.i606.i, label %do.end22.i.i, label %if.end13.i607.i.if.end25.i.i_crit_edge

if.end13.i607.i.if.end25.i.i_crit_edge:           ; preds = %if.end13.i607.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i.i

do.end22.i.i:                                     ; preds = %if.end13.i607.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #11
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.end22.i.i, %if.end13.i607.i.if.end25.i.i_crit_edge
  %pcie_count.0.i.i = phi i32 [ %851, %do.end22.i.i ], [ %conv15.i605.i, %if.end13.i607.i.if.end25.i.i_crit_edge ]
  %854 = ptrtoint ptr %call9.i.i.i600.i to i32
  call void @__asan_store4_noabort(i32 %854)
  store i32 %pcie_count.0.i.i, ptr %call9.i.i.i600.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcie_count.0.i.i)
  %cmp2765.not.i.i = icmp eq i32 %pcie_count.0.i.i, 0
  br i1 %cmp2765.not.i.i, label %if.end25.i.i.for.end.i612.i_crit_edge, label %if.end25.i.i.for.body.i611.i_crit_edge

if.end25.i.i.for.body.i611.i_crit_edge:           ; preds = %if.end25.i.i
  br label %for.body.i611.i

if.end25.i.i.for.end.i612.i_crit_edge:            ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i612.i

for.body.i611.i:                                  ; preds = %for.body.i611.i.for.body.i611.i_crit_edge, %if.end25.i.i.for.body.i611.i_crit_edge
  %i.066.i.i = phi i32 [ %inc.i609.i, %for.body.i611.i.for.body.i611.i_crit_edge ], [ 0, %if.end25.i.i.for.body.i611.i_crit_edge ]
  %arrayidx.i608.i = getelementptr %struct._ATOM_Vega10_PCIE_Table, ptr %343, i32 0, i32 2, i32 %i.066.i.i
  %ucPCIEGenSpeed.i.i = getelementptr %struct._ATOM_Vega10_PCIE_Table, ptr %343, i32 0, i32 2, i32 %i.066.i.i, i32 1
  %855 = ptrtoint ptr %ucPCIEGenSpeed.i.i to i32
  call void @__asan_load1_noabort(i32 %855)
  %856 = load i8, ptr %ucPCIEGenSpeed.i.i, align 1
  %arrayidx30.i.i = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %call9.i.i.i600.i, i32 0, i32 1, i32 %i.066.i.i
  %857 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %857)
  store i8 %856, ptr %arrayidx30.i.i, align 4
  %ucPCIELaneWidth.i.i = getelementptr %struct._ATOM_Vega10_PCIE_Table, ptr %343, i32 0, i32 2, i32 %i.066.i.i, i32 2
  %858 = ptrtoint ptr %ucPCIELaneWidth.i.i to i32
  call void @__asan_load1_noabort(i32 %858)
  %859 = load i8, ptr %ucPCIELaneWidth.i.i, align 1
  %lane_width.i.i = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %call9.i.i.i600.i, i32 0, i32 1, i32 %i.066.i.i, i32 1
  %860 = ptrtoint ptr %lane_width.i.i to i32
  call void @__asan_store1_noabort(i32 %860)
  store i8 %859, ptr %lane_width.i.i, align 1
  %861 = ptrtoint ptr %arrayidx.i608.i to i32
  call void @__asan_loadN_noabort(i32 %861, i32 4)
  %862 = load i32, ptr %arrayidx.i608.i, align 1
  %pcie_sclk.i.i = getelementptr %struct.phm_ppt_v1_pcie_table, ptr %call9.i.i.i600.i, i32 0, i32 1, i32 %i.066.i.i, i32 4
  %863 = ptrtoint ptr %pcie_sclk.i.i to i32
  call void @__asan_store4_noabort(i32 %863)
  store i32 %862, ptr %pcie_sclk.i.i, align 4
  %inc.i609.i = add nuw nsw i32 %i.066.i.i, 1
  %exitcond.not.i610.i = icmp eq i32 %inc.i609.i, %pcie_count.0.i.i
  br i1 %exitcond.not.i610.i, label %for.body.i611.i.for.end.i612.i_crit_edge, label %for.body.i611.i.for.body.i611.i_crit_edge

for.body.i611.i.for.body.i611.i_crit_edge:        ; preds = %for.body.i611.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i611.i

for.body.i611.i.for.end.i612.i_crit_edge:         ; preds = %for.body.i611.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i612.i

for.end.i612.i:                                   ; preds = %for.body.i611.i.for.end.i612.i_crit_edge, %if.end25.i.i.for.end.i612.i_crit_edge
  %864 = ptrtoint ptr %pcie_table100.i to i32
  call void @__asan_store4_noabort(i32 %864)
  store ptr %call9.i.i.i600.i, ptr %pcie_table100.i, align 4
  br label %land.lhs.true104.i

land.lhs.true104.i:                               ; preds = %for.end.i612.i, %do.end.i582.i, %if.then.i580.i.land.lhs.true104.i_crit_edge, %land.lhs.true95.i.land.lhs.true104.i_crit_edge
  %865 = ptrtoint ptr %usHardLimitTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %865, i32 2)
  %866 = load i16, ptr %usHardLimitTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %866)
  %tobool107.not.i = icmp eq i16 %866, 0
  br i1 %tobool107.not.i, label %land.lhs.true104.i.if.end110.i_crit_edge, label %if.then108.i

land.lhs.true104.i.if.end110.i_crit_edge:         ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

if.then108.i:                                     ; preds = %land.lhs.true104.i
  %ucNumEntries.i614.i = getelementptr inbounds %struct._ATOM_Vega10_Hard_Limit_Table, ptr %339, i32 0, i32 1
  %867 = ptrtoint ptr %ucNumEntries.i614.i to i32
  call void @__asan_load1_noabort(i32 %867)
  %868 = load i8, ptr %ucNumEntries.i614.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %868)
  %tobool.not.i615.i = icmp eq i8 %868, 0
  br i1 %tobool.not.i615.i, label %if.then.i618.i, label %do.end6.i.i

if.then.i618.i:                                   ; preds = %if.then108.i
  %call.i616.i = call i32 @___ratelimit(ptr noundef nonnull @get_hard_limits._rs, ptr noundef nonnull @__func__.get_hard_limits) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i616.i)
  %tobool1.not.i617.i = icmp eq i32 %call.i616.i, 0
  br i1 %tobool1.not.i617.i, label %if.then.i618.i.if.end110.i_crit_edge, label %do.end.i620.i

if.then.i618.i.if.end110.i_crit_edge:             ; preds = %if.then.i618.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end.i620.i:                                    ; preds = %if.then.i618.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i619.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end110.i

do.end6.i.i:                                      ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_clock_voltage_on_dc.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13
  %entries.i.i = getelementptr inbounds %struct._ATOM_Vega10_Hard_Limit_Table, ptr %339, i32 0, i32 2
  %869 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_loadN_noabort(i32 %869, i32 4)
  %870 = load i32, ptr %entries.i.i, align 1
  %871 = call i32 @llvm.bswap.i32(i32 %870) #7
  %872 = ptrtoint ptr %max_clock_voltage_on_dc.i to i32
  call void @__asan_store4_noabort(i32 %872)
  store i32 %871, ptr %max_clock_voltage_on_dc.i, align 4
  %ulMCLKLimit.i.i = getelementptr inbounds %struct._ATOM_Vega10_Hard_Limit_Table, ptr %339, i32 0, i32 2, i32 0, i32 2
  %873 = ptrtoint ptr %ulMCLKLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %873, i32 4)
  %874 = load i32, ptr %ulMCLKLimit.i.i, align 1
  %875 = call i32 @llvm.bswap.i32(i32 %874) #7
  %mclk.i.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13, i32 1
  %876 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_store4_noabort(i32 %876)
  store i32 %875, ptr %mclk.i.i, align 4
  %ulGFXCLKLimit.i.i = getelementptr inbounds %struct._ATOM_Vega10_Hard_Limit_Table, ptr %339, i32 0, i32 2, i32 0, i32 1
  %877 = ptrtoint ptr %ulGFXCLKLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %877, i32 4)
  %878 = load i32, ptr %ulGFXCLKLimit.i.i, align 1
  %879 = call i32 @llvm.bswap.i32(i32 %878) #7
  %gfxclk.i.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13, i32 2
  %880 = ptrtoint ptr %gfxclk.i.i to i32
  call void @__asan_store4_noabort(i32 %880)
  store i32 %879, ptr %gfxclk.i.i, align 4
  %usVddcLimit.i.i = getelementptr inbounds %struct._ATOM_Vega10_Hard_Limit_Table, ptr %339, i32 0, i32 2, i32 0, i32 3
  %881 = ptrtoint ptr %usVddcLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %881, i32 2)
  %882 = load i16, ptr %usVddcLimit.i.i, align 1
  %883 = call i16 @llvm.bswap.i16(i16 %882) #7
  %vddc.i.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13, i32 3
  %884 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %884)
  store i16 %883, ptr %vddc.i.i, align 4
  %usVddciLimit.i.i = getelementptr inbounds %struct._ATOM_Vega10_Hard_Limit_Table, ptr %339, i32 0, i32 2, i32 0, i32 4
  %885 = ptrtoint ptr %usVddciLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %885, i32 2)
  %886 = load i16, ptr %usVddciLimit.i.i, align 1
  %887 = call i16 @llvm.bswap.i16(i16 %886) #7
  %vddci.i.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13, i32 4
  %888 = ptrtoint ptr %vddci.i.i to i32
  call void @__asan_store2_noabort(i32 %888)
  store i16 %887, ptr %vddci.i.i, align 2
  %usVddMemLimit.i.i = getelementptr inbounds %struct._ATOM_Vega10_Hard_Limit_Table, ptr %339, i32 0, i32 2, i32 0, i32 5
  %889 = ptrtoint ptr %usVddMemLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %889, i32 2)
  %890 = load i16, ptr %usVddMemLimit.i.i, align 1
  %891 = call i16 @llvm.bswap.i16(i16 %890) #7
  %vddmem.i.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13, i32 6
  %892 = ptrtoint ptr %vddmem.i.i to i32
  call void @__asan_store2_noabort(i32 %892)
  store i16 %891, ptr %vddmem.i.i, align 2
  br label %if.end110.i

if.end110.i:                                      ; preds = %do.end6.i.i, %do.end.i620.i, %if.then.i618.i.if.end110.i_crit_edge, %land.lhs.true104.i.if.end110.i_crit_edge, %if.end8.i.i.i601.i.if.end110.i_crit_edge, %if.end8.i.i.i559.i.if.end110.i_crit_edge, %do.end.i537.i, %if.then.i535.i.if.end110.i_crit_edge, %if.end8.i.i.i520.i.if.end110.i_crit_edge, %do.end.i500.i, %if.then.i499.i.if.end110.i_crit_edge, %if.end8.i.i.i476.i.if.end110.i_crit_edge, %do.end.i454.i, %if.then.i452.i.if.end110.i_crit_edge, %if.end8.i.i.i430.i.if.end110.i_crit_edge, %do.end.i408.i, %if.then.i406.i.if.end110.i_crit_edge, %if.end8.i.i.i388.i.if.end110.i_crit_edge, %do.end.i366.i, %if.then.i364.i.if.end110.i_crit_edge, %do.end103.i.i, %if.else96.i.i.if.end110.i_crit_edge, %if.end8.i.i.i348.i.if.end110.i_crit_edge, %do.end.i326.i, %if.then.i324.i.if.end110.i_crit_edge, %if.end8.i.i.i310.i.if.end110.i_crit_edge, %do.end.i288.i, %if.then.i286.i.if.end110.i_crit_edge, %if.then27.i.if.end110.i_crit_edge, %if.end8.i.i.i.i.if.end110.i_crit_edge, %do.end.i.i, %if.then.i.i.if.end110.i_crit_edge
  %tobool126.not.i = phi i1 [ false, %if.end8.i.i.i.i.if.end110.i_crit_edge ], [ false, %if.then.i.i.if.end110.i_crit_edge ], [ false, %do.end.i.i ], [ false, %if.end8.i.i.i310.i.if.end110.i_crit_edge ], [ false, %if.then.i286.i.if.end110.i_crit_edge ], [ false, %do.end.i288.i ], [ false, %if.then27.i.if.end110.i_crit_edge ], [ false, %if.else96.i.i.if.end110.i_crit_edge ], [ false, %do.end103.i.i ], [ false, %if.end8.i.i.i348.i.if.end110.i_crit_edge ], [ false, %if.then.i324.i.if.end110.i_crit_edge ], [ false, %do.end.i326.i ], [ false, %if.end8.i.i.i388.i.if.end110.i_crit_edge ], [ false, %if.then.i364.i.if.end110.i_crit_edge ], [ false, %do.end.i366.i ], [ false, %if.end8.i.i.i430.i.if.end110.i_crit_edge ], [ false, %if.then.i406.i.if.end110.i_crit_edge ], [ false, %do.end.i408.i ], [ false, %if.end8.i.i.i476.i.if.end110.i_crit_edge ], [ false, %if.then.i452.i.if.end110.i_crit_edge ], [ false, %do.end.i454.i ], [ false, %if.end8.i.i.i520.i.if.end110.i_crit_edge ], [ false, %if.then.i499.i.if.end110.i_crit_edge ], [ false, %do.end.i500.i ], [ false, %if.end8.i.i.i559.i.if.end110.i_crit_edge ], [ false, %if.then.i535.i.if.end110.i_crit_edge ], [ false, %do.end.i537.i ], [ true, %do.end6.i.i ], [ false, %do.end.i620.i ], [ false, %if.then.i618.i.if.end110.i_crit_edge ], [ false, %if.end8.i.i.i601.i.if.end110.i_crit_edge ], [ true, %land.lhs.true104.i.if.end110.i_crit_edge ]
  %result.10.i = phi i32 [ -12, %if.end8.i.i.i.i.if.end110.i_crit_edge ], [ -1, %if.then.i.i.if.end110.i_crit_edge ], [ -1, %do.end.i.i ], [ -12, %if.end8.i.i.i310.i.if.end110.i_crit_edge ], [ -1, %if.then.i286.i.if.end110.i_crit_edge ], [ -1, %do.end.i288.i ], [ -12, %if.then27.i.if.end110.i_crit_edge ], [ -22, %if.else96.i.i.if.end110.i_crit_edge ], [ -22, %do.end103.i.i ], [ -12, %if.end8.i.i.i348.i.if.end110.i_crit_edge ], [ -1, %if.then.i324.i.if.end110.i_crit_edge ], [ -1, %do.end.i326.i ], [ -12, %if.end8.i.i.i388.i.if.end110.i_crit_edge ], [ -1, %if.then.i364.i.if.end110.i_crit_edge ], [ -1, %do.end.i366.i ], [ -12, %if.end8.i.i.i430.i.if.end110.i_crit_edge ], [ -1, %if.then.i406.i.if.end110.i_crit_edge ], [ -1, %do.end.i408.i ], [ -12, %if.end8.i.i.i476.i.if.end110.i_crit_edge ], [ -1, %if.then.i452.i.if.end110.i_crit_edge ], [ -1, %do.end.i454.i ], [ -12, %if.end8.i.i.i520.i.if.end110.i_crit_edge ], [ -1, %if.then.i499.i.if.end110.i_crit_edge ], [ -1, %do.end.i500.i ], [ -12, %if.end8.i.i.i559.i.if.end110.i_crit_edge ], [ -1, %if.then.i535.i.if.end110.i_crit_edge ], [ -1, %do.end.i537.i ], [ 0, %do.end6.i.i ], [ -1, %do.end.i620.i ], [ -1, %if.then.i618.i.if.end110.i_crit_edge ], [ -12, %if.end8.i.i.i601.i.if.end110.i_crit_edge ], [ 0, %land.lhs.true104.i.if.end110.i_crit_edge ]
  %max_clock_voltage_on_dc111.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13
  %893 = ptrtoint ptr %max_clock_voltage_on_dc111.i to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load i32, ptr %max_clock_voltage_on_dc111.i, align 4
  %max_clock_voltage_on_dc112.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7
  %895 = ptrtoint ptr %max_clock_voltage_on_dc112.i to i32
  call void @__asan_store4_noabort(i32 %895)
  store i32 %894, ptr %max_clock_voltage_on_dc112.i, align 4
  %mclk.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13, i32 1
  %896 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load i32, ptr %mclk.i, align 4
  %mclk117.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 1
  %898 = ptrtoint ptr %mclk117.i to i32
  call void @__asan_store4_noabort(i32 %898)
  store i32 %897, ptr %mclk117.i, align 4
  %vddc.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13, i32 3
  %899 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %899)
  %900 = load i16, ptr %vddc.i, align 4
  %vddc121.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 3
  %901 = ptrtoint ptr %vddc121.i to i32
  call void @__asan_store2_noabort(i32 %901)
  store i16 %900, ptr %vddc121.i, align 4
  %vddci.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 13, i32 4
  %902 = ptrtoint ptr %vddci.i to i32
  call void @__asan_load2_noabort(i32 %902)
  %903 = load i16, ptr %vddci.i, align 2
  %vddci125.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 4
  %904 = ptrtoint ptr %vddci125.i to i32
  call void @__asan_store2_noabort(i32 %904)
  store i16 %903, ptr %vddci125.i, align 2
  br i1 %tobool126.not.i, label %land.lhs.true127.i, label %if.end110.i.if.then92_crit_edge

if.end110.i.if.then92_crit_edge:                  ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

land.lhs.true127.i:                               ; preds = %if.end110.i
  %905 = ptrtoint ptr %vdd_dep_on_socclk.i to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %vdd_dep_on_socclk.i, align 4
  %tobool129.not.i = icmp eq ptr %906, null
  br i1 %tobool129.not.i, label %land.lhs.true127.i.land.lhs.true138.i_crit_edge, label %land.lhs.true130.i

land.lhs.true127.i.land.lhs.true138.i_crit_edge:  ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true138.i

land.lhs.true130.i:                               ; preds = %land.lhs.true127.i
  %907 = ptrtoint ptr %906 to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load i32, ptr %906, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %908)
  %tobool132.not.i = icmp eq i32 %908, 0
  br i1 %tobool132.not.i, label %land.lhs.true130.i.land.lhs.true138.i_crit_edge, label %do.end7.i628.i

land.lhs.true130.i.land.lhs.true138.i_crit_edge:  ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true138.i

do.end7.i628.i:                                   ; preds = %land.lhs.true130.i
  %valid_socclk_values.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 11
  %909 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %908, i32 4) #7
  %910 = extractvalue { i32, i1 } %909, 1
  %911 = extractvalue { i32, i1 } %909, 0
  %spec.select.i.i.i = call i32 @llvm.uadd.sat.i32(i32 %911, i32 4) #7
  %retval.0.i.i.i = select i1 %910, i32 -1, i32 %spec.select.i.i.i
  %call9.i.i.i646.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i, i32 noundef 3520) #12
  %tobool11.not.i649.i = icmp eq ptr %call9.i.i.i646.i, null
  br i1 %tobool11.not.i649.i, label %do.end7.i628.i.if.then92_crit_edge, label %if.end13.i651.i

do.end7.i628.i.if.then92_crit_edge:               ; preds = %do.end7.i628.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

if.end13.i651.i:                                  ; preds = %do.end7.i628.i
  %912 = ptrtoint ptr %906 to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load i32, ptr %906, align 4
  %914 = ptrtoint ptr %call9.i.i.i646.i to i32
  call void @__asan_store4_noabort(i32 %914)
  store i32 %913, ptr %call9.i.i.i646.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %913)
  %cmp1.not.i.i = icmp eq i32 %913, 0
  br i1 %cmp1.not.i.i, label %if.end13.i651.i.for.end.i655.i_crit_edge, label %if.end13.i651.i.for.body.i654.i_crit_edge

if.end13.i651.i.for.body.i654.i_crit_edge:        ; preds = %if.end13.i651.i
  br label %for.body.i654.i

if.end13.i651.i.for.end.i655.i_crit_edge:         ; preds = %if.end13.i651.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i655.i

for.body.i654.i:                                  ; preds = %for.body.i654.i.for.body.i654.i_crit_edge, %if.end13.i651.i.for.body.i654.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i653.i, %for.body.i654.i.for.body.i654.i_crit_edge ], [ 0, %if.end13.i651.i.for.body.i654.i_crit_edge ]
  %arrayidx.i652.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %906, i32 0, i32 1, i32 %i.02.i.i
  %915 = ptrtoint ptr %arrayidx.i652.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load i32, ptr %arrayidx.i652.i, align 4
  %arrayidx17.i.i = getelementptr %struct.phm_clock_array, ptr %call9.i.i.i646.i, i32 0, i32 1, i32 %i.02.i.i
  %917 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %917)
  store i32 %916, ptr %arrayidx17.i.i, align 4
  %inc.i653.i = add nuw i32 %i.02.i.i, 1
  %918 = ptrtoint ptr %call9.i.i.i646.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load i32, ptr %call9.i.i.i646.i, align 128
  %cmp.i.i = icmp ult i32 %inc.i653.i, %919
  br i1 %cmp.i.i, label %for.body.i654.i.for.body.i654.i_crit_edge, label %for.body.i654.i.for.end.i655.i_crit_edge

for.body.i654.i.for.end.i655.i_crit_edge:         ; preds = %for.body.i654.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i655.i

for.body.i654.i.for.body.i654.i_crit_edge:        ; preds = %for.body.i654.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i654.i

for.end.i655.i:                                   ; preds = %for.body.i654.i.for.end.i655.i_crit_edge, %if.end13.i651.i.for.end.i655.i_crit_edge
  %920 = ptrtoint ptr %valid_socclk_values.i to i32
  call void @__asan_store4_noabort(i32 %920)
  store ptr %call9.i.i.i646.i, ptr %valid_socclk_values.i, align 4
  br label %land.lhs.true138.i

land.lhs.true138.i:                               ; preds = %for.end.i655.i, %land.lhs.true130.i.land.lhs.true138.i_crit_edge, %land.lhs.true127.i.land.lhs.true138.i_crit_edge
  %921 = ptrtoint ptr %313 to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %313, align 4
  %tobool140.not.i = icmp eq ptr %922, null
  br i1 %tobool140.not.i, label %land.lhs.true138.i.land.lhs.true150.i_crit_edge, label %land.lhs.true141.i

land.lhs.true138.i.land.lhs.true150.i_crit_edge:  ; preds = %land.lhs.true138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true150.i

land.lhs.true141.i:                               ; preds = %land.lhs.true138.i
  %923 = ptrtoint ptr %922 to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load i32, ptr %922, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %924)
  %tobool144.not.i = icmp eq i32 %924, 0
  br i1 %tobool144.not.i, label %land.lhs.true141.i.land.lhs.true150.i_crit_edge, label %do.end7.i665.i

land.lhs.true141.i.land.lhs.true150.i_crit_edge:  ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true150.i

do.end7.i665.i:                                   ; preds = %land.lhs.true141.i
  %valid_sclk_values.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 9
  %925 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %924, i32 4) #7
  %926 = extractvalue { i32, i1 } %925, 1
  %927 = extractvalue { i32, i1 } %925, 0
  %spec.select.i.i663.i = call i32 @llvm.uadd.sat.i32(i32 %927, i32 4) #7
  %retval.0.i.i664.i = select i1 %926, i32 -1, i32 %spec.select.i.i663.i
  %call9.i.i.i689.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i664.i, i32 noundef 3520) #12
  %tobool11.not.i692.i = icmp eq ptr %call9.i.i.i689.i, null
  br i1 %tobool11.not.i692.i, label %do.end7.i665.i.if.then92_crit_edge, label %if.end13.i695.i

do.end7.i665.i.if.then92_crit_edge:               ; preds = %do.end7.i665.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

if.end13.i695.i:                                  ; preds = %do.end7.i665.i
  %928 = ptrtoint ptr %922 to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load i32, ptr %922, align 4
  %930 = ptrtoint ptr %call9.i.i.i689.i to i32
  call void @__asan_store4_noabort(i32 %930)
  store i32 %929, ptr %call9.i.i.i689.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %929)
  %cmp1.not.i694.i = icmp eq i32 %929, 0
  br i1 %cmp1.not.i694.i, label %if.end13.i695.i.for.end.i702.i_crit_edge, label %if.end13.i695.i.for.body.i701.i_crit_edge

if.end13.i695.i.for.body.i701.i_crit_edge:        ; preds = %if.end13.i695.i
  br label %for.body.i701.i

if.end13.i695.i.for.end.i702.i_crit_edge:         ; preds = %if.end13.i695.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i702.i

for.body.i701.i:                                  ; preds = %for.body.i701.i.for.body.i701.i_crit_edge, %if.end13.i695.i.for.body.i701.i_crit_edge
  %i.02.i696.i = phi i32 [ %inc.i699.i, %for.body.i701.i.for.body.i701.i_crit_edge ], [ 0, %if.end13.i695.i.for.body.i701.i_crit_edge ]
  %arrayidx.i697.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %922, i32 0, i32 1, i32 %i.02.i696.i
  %931 = ptrtoint ptr %arrayidx.i697.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load i32, ptr %arrayidx.i697.i, align 4
  %arrayidx17.i698.i = getelementptr %struct.phm_clock_array, ptr %call9.i.i.i689.i, i32 0, i32 1, i32 %i.02.i696.i
  %933 = ptrtoint ptr %arrayidx17.i698.i to i32
  call void @__asan_store4_noabort(i32 %933)
  store i32 %932, ptr %arrayidx17.i698.i, align 4
  %inc.i699.i = add nuw i32 %i.02.i696.i, 1
  %934 = ptrtoint ptr %call9.i.i.i689.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load i32, ptr %call9.i.i.i689.i, align 128
  %cmp.i700.i = icmp ult i32 %inc.i699.i, %935
  br i1 %cmp.i700.i, label %for.body.i701.i.for.body.i701.i_crit_edge, label %for.body.i701.i.for.end.i702.i_crit_edge

for.body.i701.i.for.end.i702.i_crit_edge:         ; preds = %for.body.i701.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i702.i

for.body.i701.i.for.body.i701.i_crit_edge:        ; preds = %for.body.i701.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i701.i

for.end.i702.i:                                   ; preds = %for.body.i701.i.for.end.i702.i_crit_edge, %if.end13.i695.i.for.end.i702.i_crit_edge
  %936 = ptrtoint ptr %valid_sclk_values.i to i32
  call void @__asan_store4_noabort(i32 %936)
  store ptr %call9.i.i.i689.i, ptr %valid_sclk_values.i, align 4
  br label %land.lhs.true150.i

land.lhs.true150.i:                               ; preds = %for.end.i702.i, %land.lhs.true141.i.land.lhs.true150.i_crit_edge, %land.lhs.true138.i.land.lhs.true150.i_crit_edge
  %937 = ptrtoint ptr %vdd_dep_on_dcefclk.i to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %vdd_dep_on_dcefclk.i, align 4
  %tobool152.not.i = icmp eq ptr %938, null
  br i1 %tobool152.not.i, label %land.lhs.true150.i.land.lhs.true162.i_crit_edge, label %land.lhs.true153.i

land.lhs.true150.i.land.lhs.true162.i_crit_edge:  ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true162.i

land.lhs.true153.i:                               ; preds = %land.lhs.true150.i
  %939 = ptrtoint ptr %938 to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load i32, ptr %938, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %940)
  %tobool156.not.i = icmp eq i32 %940, 0
  br i1 %tobool156.not.i, label %land.lhs.true153.i.land.lhs.true162.i_crit_edge, label %do.end7.i713.i

land.lhs.true153.i.land.lhs.true162.i_crit_edge:  ; preds = %land.lhs.true153.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true162.i

do.end7.i713.i:                                   ; preds = %land.lhs.true153.i
  %valid_dcefclk_values.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 12
  %941 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %940, i32 4) #7
  %942 = extractvalue { i32, i1 } %941, 1
  %943 = extractvalue { i32, i1 } %941, 0
  %spec.select.i.i711.i = call i32 @llvm.uadd.sat.i32(i32 %943, i32 4) #7
  %retval.0.i.i712.i = select i1 %942, i32 -1, i32 %spec.select.i.i711.i
  %call9.i.i.i737.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i712.i, i32 noundef 3520) #12
  %tobool11.not.i740.i = icmp eq ptr %call9.i.i.i737.i, null
  br i1 %tobool11.not.i740.i, label %do.end7.i713.i.if.then92_crit_edge, label %if.end13.i743.i

do.end7.i713.i.if.then92_crit_edge:               ; preds = %do.end7.i713.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

if.end13.i743.i:                                  ; preds = %do.end7.i713.i
  %944 = ptrtoint ptr %938 to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load i32, ptr %938, align 4
  %946 = ptrtoint ptr %call9.i.i.i737.i to i32
  call void @__asan_store4_noabort(i32 %946)
  store i32 %945, ptr %call9.i.i.i737.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %945)
  %cmp1.not.i742.i = icmp eq i32 %945, 0
  br i1 %cmp1.not.i742.i, label %if.end13.i743.i.for.end.i750.i_crit_edge, label %if.end13.i743.i.for.body.i749.i_crit_edge

if.end13.i743.i.for.body.i749.i_crit_edge:        ; preds = %if.end13.i743.i
  br label %for.body.i749.i

if.end13.i743.i.for.end.i750.i_crit_edge:         ; preds = %if.end13.i743.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i750.i

for.body.i749.i:                                  ; preds = %for.body.i749.i.for.body.i749.i_crit_edge, %if.end13.i743.i.for.body.i749.i_crit_edge
  %i.02.i744.i = phi i32 [ %inc.i747.i, %for.body.i749.i.for.body.i749.i_crit_edge ], [ 0, %if.end13.i743.i.for.body.i749.i_crit_edge ]
  %arrayidx.i745.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %938, i32 0, i32 1, i32 %i.02.i744.i
  %947 = ptrtoint ptr %arrayidx.i745.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load i32, ptr %arrayidx.i745.i, align 4
  %arrayidx17.i746.i = getelementptr %struct.phm_clock_array, ptr %call9.i.i.i737.i, i32 0, i32 1, i32 %i.02.i744.i
  %949 = ptrtoint ptr %arrayidx17.i746.i to i32
  call void @__asan_store4_noabort(i32 %949)
  store i32 %948, ptr %arrayidx17.i746.i, align 4
  %inc.i747.i = add nuw i32 %i.02.i744.i, 1
  %950 = ptrtoint ptr %call9.i.i.i737.i to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load i32, ptr %call9.i.i.i737.i, align 128
  %cmp.i748.i = icmp ult i32 %inc.i747.i, %951
  br i1 %cmp.i748.i, label %for.body.i749.i.for.body.i749.i_crit_edge, label %for.body.i749.i.for.end.i750.i_crit_edge

for.body.i749.i.for.end.i750.i_crit_edge:         ; preds = %for.body.i749.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i750.i

for.body.i749.i.for.body.i749.i_crit_edge:        ; preds = %for.body.i749.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i749.i

for.end.i750.i:                                   ; preds = %for.body.i749.i.for.end.i750.i_crit_edge, %if.end13.i743.i.for.end.i750.i_crit_edge
  %952 = ptrtoint ptr %valid_dcefclk_values.i to i32
  call void @__asan_store4_noabort(i32 %952)
  store ptr %call9.i.i.i737.i, ptr %valid_dcefclk_values.i, align 4
  br label %land.lhs.true162.i

land.lhs.true162.i:                               ; preds = %for.end.i750.i, %land.lhs.true153.i.land.lhs.true162.i_crit_edge, %land.lhs.true150.i.land.lhs.true162.i_crit_edge
  %953 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %vdd_dep_on_mclk.i, align 4
  %tobool164.not.i = icmp eq ptr %954, null
  br i1 %tobool164.not.i, label %land.lhs.true162.i.do.end104_crit_edge, label %land.lhs.true165.i

land.lhs.true162.i.do.end104_crit_edge:           ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

land.lhs.true165.i:                               ; preds = %land.lhs.true162.i
  %955 = ptrtoint ptr %954 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load i32, ptr %954, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %956)
  %tobool168.not.i = icmp eq i32 %956, 0
  br i1 %tobool168.not.i, label %land.lhs.true165.i.do.end104_crit_edge, label %do.end7.i761.i

land.lhs.true165.i.do.end104_crit_edge:           ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

do.end7.i761.i:                                   ; preds = %land.lhs.true165.i
  %valid_mclk_values.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %313, i32 0, i32 10
  %957 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %956, i32 4) #7
  %958 = extractvalue { i32, i1 } %957, 1
  %959 = extractvalue { i32, i1 } %957, 0
  %spec.select.i.i759.i = call i32 @llvm.uadd.sat.i32(i32 %959, i32 4) #7
  %retval.0.i.i760.i = select i1 %958, i32 -1, i32 %spec.select.i.i759.i
  %call9.i.i.i785.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i760.i, i32 noundef 3520) #12
  %tobool11.not.i788.i = icmp eq ptr %call9.i.i.i785.i, null
  br i1 %tobool11.not.i788.i, label %do.end7.i761.i.if.then92_crit_edge, label %if.end13.i791.i

do.end7.i761.i.if.then92_crit_edge:               ; preds = %do.end7.i761.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

if.end13.i791.i:                                  ; preds = %do.end7.i761.i
  %960 = ptrtoint ptr %954 to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load i32, ptr %954, align 4
  %962 = ptrtoint ptr %call9.i.i.i785.i to i32
  call void @__asan_store4_noabort(i32 %962)
  store i32 %961, ptr %call9.i.i.i785.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %961)
  %cmp1.not.i790.i = icmp eq i32 %961, 0
  br i1 %cmp1.not.i790.i, label %if.end13.i791.i.for.end.i798.i_crit_edge, label %if.end13.i791.i.for.body.i797.i_crit_edge

if.end13.i791.i.for.body.i797.i_crit_edge:        ; preds = %if.end13.i791.i
  br label %for.body.i797.i

if.end13.i791.i.for.end.i798.i_crit_edge:         ; preds = %if.end13.i791.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i798.i

for.body.i797.i:                                  ; preds = %for.body.i797.i.for.body.i797.i_crit_edge, %if.end13.i791.i.for.body.i797.i_crit_edge
  %i.02.i792.i = phi i32 [ %inc.i795.i, %for.body.i797.i.for.body.i797.i_crit_edge ], [ 0, %if.end13.i791.i.for.body.i797.i_crit_edge ]
  %arrayidx.i793.i = getelementptr %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %954, i32 0, i32 1, i32 %i.02.i792.i
  %963 = ptrtoint ptr %arrayidx.i793.i to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load i32, ptr %arrayidx.i793.i, align 4
  %arrayidx17.i794.i = getelementptr %struct.phm_clock_array, ptr %call9.i.i.i785.i, i32 0, i32 1, i32 %i.02.i792.i
  %965 = ptrtoint ptr %arrayidx17.i794.i to i32
  call void @__asan_store4_noabort(i32 %965)
  store i32 %964, ptr %arrayidx17.i794.i, align 4
  %inc.i795.i = add nuw i32 %i.02.i792.i, 1
  %966 = ptrtoint ptr %call9.i.i.i785.i to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load i32, ptr %call9.i.i.i785.i, align 128
  %cmp.i796.i = icmp ult i32 %inc.i795.i, %967
  br i1 %cmp.i796.i, label %for.body.i797.i.for.body.i797.i_crit_edge, label %for.body.i797.i.for.end.i798.i_crit_edge

for.body.i797.i.for.end.i798.i_crit_edge:         ; preds = %for.body.i797.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i798.i

for.body.i797.i.for.body.i797.i_crit_edge:        ; preds = %for.body.i797.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i797.i

for.end.i798.i:                                   ; preds = %for.body.i797.i.for.end.i798.i_crit_edge, %if.end13.i791.i.for.end.i798.i_crit_edge
  %968 = ptrtoint ptr %valid_mclk_values.i to i32
  call void @__asan_store4_noabort(i32 %968)
  store ptr %call9.i.i.i785.i, ptr %valid_mclk_values.i, align 4
  br label %do.end104

if.then92:                                        ; preds = %do.end7.i761.i.if.then92_crit_edge, %do.end7.i713.i.if.then92_crit_edge, %do.end7.i665.i.if.then92_crit_edge, %do.end7.i628.i.if.then92_crit_edge, %if.end110.i.if.then92_crit_edge
  %result.14.i198 = phi i32 [ -12, %do.end7.i761.i.if.then92_crit_edge ], [ -12, %do.end7.i713.i.if.then92_crit_edge ], [ -12, %do.end7.i665.i.if.then92_crit_edge ], [ -12, %do.end7.i628.i.if.then92_crit_edge ], [ %result.10.i, %if.end110.i.if.then92_crit_edge ]
  %call93 = call i32 @___ratelimit(ptr noundef nonnull @vega10_pp_tables_initialize._rs.43, ptr noundef nonnull @__func__.vega10_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then92.cleanup_crit_edge, label %do.end98

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end98:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46) #11
  br label %cleanup

do.end104:                                        ; preds = %for.end.i798.i, %land.lhs.true165.i.do.end104_crit_edge, %land.lhs.true162.i.do.end104_crit_edge
  %969 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %pptable, align 4
  %usUlvVoltageOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 10
  %971 = ptrtoint ptr %usUlvVoltageOffset.i to i32
  call void @__asan_loadN_noabort(i32 %971, i32 2)
  %972 = load i16, ptr %usUlvVoltageOffset.i, align 1
  %973 = call i16 @llvm.bswap.i16(i16 %972) #7
  %us_ulv_voltage_offset.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 23
  %974 = ptrtoint ptr %us_ulv_voltage_offset.i to i32
  call void @__asan_store2_noabort(i32 %974)
  store i16 %973, ptr %us_ulv_voltage_offset.i, align 4
  %usUlvSmnclkDid.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 11
  %975 = ptrtoint ptr %usUlvSmnclkDid.i to i32
  call void @__asan_loadN_noabort(i32 %975, i32 2)
  %976 = load i16, ptr %usUlvSmnclkDid.i, align 1
  %977 = call i16 @llvm.bswap.i16(i16 %976) #7
  %us_ulv_smnclk_did.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 24
  %978 = ptrtoint ptr %us_ulv_smnclk_did.i to i32
  call void @__asan_store2_noabort(i32 %978)
  store i16 %977, ptr %us_ulv_smnclk_did.i, align 2
  %usUlvMp1clkDid.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 12
  %979 = ptrtoint ptr %usUlvMp1clkDid.i to i32
  call void @__asan_loadN_noabort(i32 %979, i32 2)
  %980 = load i16, ptr %usUlvMp1clkDid.i, align 1
  %981 = call i16 @llvm.bswap.i16(i16 %980) #7
  %us_ulv_mp1clk_did.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 25
  %982 = ptrtoint ptr %us_ulv_mp1clk_did.i to i32
  call void @__asan_store2_noabort(i32 %982)
  store i16 %981, ptr %us_ulv_mp1clk_did.i, align 4
  %usUlvGfxclkBypass.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 13
  %983 = ptrtoint ptr %usUlvGfxclkBypass.i to i32
  call void @__asan_loadN_noabort(i32 %983, i32 2)
  %984 = load i16, ptr %usUlvGfxclkBypass.i, align 1
  %985 = call i16 @llvm.bswap.i16(i16 %984) #7
  %us_ulv_gfxclk_bypass.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 26
  %986 = ptrtoint ptr %us_ulv_gfxclk_bypass.i to i32
  call void @__asan_store2_noabort(i32 %986)
  store i16 %985, ptr %us_ulv_gfxclk_bypass.i, align 2
  %usGfxclkSlewRate.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 14
  %987 = ptrtoint ptr %usGfxclkSlewRate.i to i32
  call void @__asan_loadN_noabort(i32 %987, i32 2)
  %988 = load i16, ptr %usGfxclkSlewRate.i, align 1
  %989 = call i16 @llvm.bswap.i16(i16 %988) #7
  %us_gfxclk_slew_rate.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 27
  %990 = ptrtoint ptr %us_gfxclk_slew_rate.i to i32
  call void @__asan_store2_noabort(i32 %990)
  store i16 %989, ptr %us_gfxclk_slew_rate.i, align 4
  %uc_gfx_dpm_voltage_mode.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 29
  %ppm_parameter_table.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 15
  %991 = ptrtoint ptr %ppm_parameter_table.i to i32
  call void @__asan_store4_noabort(i32 %991)
  store ptr null, ptr %ppm_parameter_table.i, align 4
  %vddc_lookup_table.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 18
  %992 = ptrtoint ptr %vddc_lookup_table.i to i32
  call void @__asan_store4_noabort(i32 %992)
  store ptr null, ptr %vddc_lookup_table.i, align 4
  %vddmem_lookup_table.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 20
  %993 = ptrtoint ptr %vddmem_lookup_table.i to i32
  call void @__asan_store4_noabort(i32 %993)
  store ptr null, ptr %vddmem_lookup_table.i, align 4
  %vddci_lookup_table.i = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %970, i32 0, i32 21
  %994 = ptrtoint ptr %vddci_lookup_table.i to i32
  call void @__asan_store4_noabort(i32 %994)
  store ptr null, ptr %vddci_lookup_table.i, align 4
  %usPowerControlLimit.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 9
  %995 = call ptr @memset(ptr %uc_gfx_dpm_voltage_mode.i, i32 0, i32 7)
  %996 = ptrtoint ptr %usPowerControlLimit.i to i32
  call void @__asan_loadN_noabort(i32 %996, i32 2)
  %997 = load i16, ptr %usPowerControlLimit.i, align 1
  %998 = call i16 @llvm.bswap.i16(i16 %997) #7
  %TDPODLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 16
  %999 = ptrtoint ptr %TDPODLimit.i to i32
  call void @__asan_store2_noabort(i32 %999)
  store i16 %998, ptr %TDPODLimit.i, align 4
  %TDPAdjustment.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 17
  %1000 = ptrtoint ptr %TDPAdjustment.i to i32
  call void @__asan_store4_noabort(i32 %1000)
  store i32 0, ptr %TDPAdjustment.i, align 4
  %VidAdjustment.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 23
  %1001 = ptrtoint ptr %VidAdjustment.i to i32
  call void @__asan_store4_noabort(i32 %1001)
  store i32 0, ptr %VidAdjustment.i, align 4
  %VidAdjustmentPolarity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 24
  %1002 = ptrtoint ptr %VidAdjustmentPolarity.i to i32
  call void @__asan_store1_noabort(i32 %1002)
  store i8 0, ptr %VidAdjustmentPolarity.i, align 4
  %VidMinLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 20
  %1003 = ptrtoint ptr %VidMinLimit.i to i32
  call void @__asan_store4_noabort(i32 %1003)
  store i32 0, ptr %VidMinLimit.i, align 4
  %VidMaxLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 21
  %1004 = ptrtoint ptr %VidMaxLimit.i to i32
  call void @__asan_store4_noabort(i32 %1004)
  store i32 1500000, ptr %VidMaxLimit.i, align 4
  %VidStep.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 22
  %1005 = ptrtoint ptr %VidStep.i to i32
  call void @__asan_store4_noabort(i32 %1005)
  store i32 6250, ptr %VidStep.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %997)
  %tobool22.not.i = icmp eq i16 %997, 0
  br i1 %tobool22.not.i, label %do.end104.if.end25.i_crit_edge, label %if.then23.i

do.end104.if.end25.i_crit_edge:                   ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then23.i:                                      ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  %1006 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load i32, ptr %arrayidx.i8.i.i, align 4
  %or.i.i167 = or i32 %1007, 262144
  store i32 %or.i.i167, ptr %arrayidx.i8.i.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %do.end104.if.end25.i_crit_edge
  %usVddcLookupTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 29
  %1008 = ptrtoint ptr %usVddcLookupTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %1008, i32 2)
  %1009 = load i16, ptr %usVddcLookupTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1009)
  %tobool26.not.i168 = icmp eq i16 %1009, 0
  br i1 %tobool26.not.i168, label %if.end25.i.if.end31.i_crit_edge, label %if.then27.i173

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then27.i173:                                   ; preds = %if.end25.i
  %1010 = call i16 @llvm.bswap.i16(i16 %1009) #7
  %conv29.i169 = zext i16 %1010 to i32
  %add.i170 = add i32 %conv29.i169, %26
  %1011 = inttoptr i32 %add.i170 to ptr
  %ucNumEntries.i.i171 = getelementptr inbounds %struct._ATOM_Vega10_Voltage_Lookup_Table, ptr %1011, i32 0, i32 1
  %1012 = ptrtoint ptr %ucNumEntries.i.i171 to i32
  call void @__asan_load1_noabort(i32 %1012)
  %1013 = load i8, ptr %ucNumEntries.i.i171, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1013)
  %cmp.not.i.i172 = icmp eq i8 %1013, 0
  br i1 %cmp.not.i.i172, label %if.then.i.i176, label %do.end7.i.i180

if.then.i.i176:                                   ; preds = %if.then27.i173
  %call.i.i174 = call i32 @___ratelimit(ptr noundef nonnull @get_vddc_lookup_table._rs, ptr noundef nonnull @__func__.get_vddc_lookup_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i174)
  %tobool.not.i.i175 = icmp eq i32 %call.i.i174, 0
  br i1 %tobool.not.i.i175, label %if.then.i.i176.if.end31.i_crit_edge, label %do.end.i.i178

if.then.i.i176.if.end31.i_crit_edge:              ; preds = %if.then.i.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

do.end.i.i178:                                    ; preds = %if.then.i.i176
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.64) #11
  br label %if.end31.i

do.end7.i.i180:                                   ; preds = %if.then27.i173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1014 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i179 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1014, i32 noundef 3520, i32 noundef 84) #10
  %tobool10.not.i.i = icmp eq ptr %call7.i.i.i.i179, null
  br i1 %tobool10.not.i.i, label %do.end7.i.i180.if.end31.i_crit_edge, label %if.end12.i.i

do.end7.i.i180.if.end31.i_crit_edge:              ; preds = %do.end7.i.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.end12.i.i:                                     ; preds = %do.end7.i.i180
  %1015 = ptrtoint ptr %ucNumEntries.i.i171 to i32
  call void @__asan_load1_noabort(i32 %1015)
  %1016 = load i8, ptr %ucNumEntries.i.i171, align 1
  %conv14.i.i = zext i8 %1016 to i32
  %1017 = ptrtoint ptr %call7.i.i.i.i179 to i32
  call void @__asan_store4_noabort(i32 %1017)
  store i32 %conv14.i.i, ptr %call7.i.i.i.i179, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1016)
  %cmp171.not.i.i = icmp eq i8 %1016, 0
  br i1 %cmp171.not.i.i, label %if.end12.i.i.for.end.i.i185_crit_edge, label %if.end12.i.i.for.body.i.i184_crit_edge

if.end12.i.i.for.body.i.i184_crit_edge:           ; preds = %if.end12.i.i
  br label %for.body.i.i184

if.end12.i.i.for.end.i.i185_crit_edge:            ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i185

for.body.i.i184:                                  ; preds = %for.body.i.i184.for.body.i.i184_crit_edge, %if.end12.i.i.for.body.i.i184_crit_edge
  %i.02.i.i181 = phi i32 [ %inc.i.i182, %for.body.i.i184.for.body.i.i184_crit_edge ], [ 0, %if.end12.i.i.for.body.i.i184_crit_edge ]
  %arrayidx.i101.i = getelementptr %struct._ATOM_Vega10_Voltage_Lookup_Table, ptr %1011, i32 0, i32 2, i32 %i.02.i.i181
  %1018 = ptrtoint ptr %arrayidx.i101.i to i32
  call void @__asan_loadN_noabort(i32 %1018, i32 2)
  %1019 = load i16, ptr %arrayidx.i101.i, align 1
  %1020 = call i16 @llvm.bswap.i16(i16 %1019) #7
  %us_vdd.i.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %call7.i.i.i.i179, i32 0, i32 1, i32 %i.02.i.i181, i32 1
  %1021 = ptrtoint ptr %us_vdd.i.i to i32
  call void @__asan_store2_noabort(i32 %1021)
  store i16 %1020, ptr %us_vdd.i.i, align 2
  %inc.i.i182 = add nuw nsw i32 %i.02.i.i181, 1
  %exitcond.not.i.i183 = icmp eq i32 %inc.i.i182, %conv14.i.i
  br i1 %exitcond.not.i.i183, label %for.body.i.i184.for.end.i.i185_crit_edge, label %for.body.i.i184.for.body.i.i184_crit_edge

for.body.i.i184.for.body.i.i184_crit_edge:        ; preds = %for.body.i.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i184

for.body.i.i184.for.end.i.i185_crit_edge:         ; preds = %for.body.i.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i185

for.end.i.i185:                                   ; preds = %for.body.i.i184.for.end.i.i185_crit_edge, %if.end12.i.i.for.end.i.i185_crit_edge
  %1022 = ptrtoint ptr %vddc_lookup_table.i to i32
  call void @__asan_store4_noabort(i32 %1022)
  store ptr %call7.i.i.i.i179, ptr %vddc_lookup_table.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %for.end.i.i185, %do.end7.i.i180.if.end31.i_crit_edge, %do.end.i.i178, %if.then.i.i176.if.end31.i_crit_edge, %if.end25.i.if.end31.i_crit_edge
  %result.0.i = phi i32 [ 0, %if.end25.i.if.end31.i_crit_edge ], [ 0, %for.end.i.i185 ], [ 1, %do.end.i.i178 ], [ 1, %if.then.i.i176.if.end31.i_crit_edge ], [ -12, %do.end7.i.i180.if.end31.i_crit_edge ]
  %usVddmemLookupTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 30
  %1023 = ptrtoint ptr %usVddmemLookupTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %1023, i32 2)
  %1024 = load i16, ptr %usVddmemLookupTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1024)
  %tobool32.not.i = icmp eq i16 %1024, 0
  br i1 %tobool32.not.i, label %if.end31.i.if.end39.i_crit_edge, label %if.then33.i

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then33.i:                                      ; preds = %if.end31.i
  %1025 = call i16 @llvm.bswap.i16(i16 %1024) #7
  %conv35.i = zext i16 %1025 to i32
  %add36.i = add i32 %conv35.i, %26
  %1026 = inttoptr i32 %add36.i to ptr
  %ucNumEntries.i102.i = getelementptr inbounds %struct._ATOM_Vega10_Voltage_Lookup_Table, ptr %1026, i32 0, i32 1
  %1027 = ptrtoint ptr %ucNumEntries.i102.i to i32
  call void @__asan_load1_noabort(i32 %1027)
  %1028 = load i8, ptr %ucNumEntries.i102.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1028)
  %cmp.not.i103.i = icmp eq i8 %1028, 0
  br i1 %cmp.not.i103.i, label %if.then.i106.i, label %do.end7.i109.i

if.then.i106.i:                                   ; preds = %if.then33.i
  %call.i104.i = call i32 @___ratelimit(ptr noundef nonnull @get_vddc_lookup_table._rs, ptr noundef nonnull @__func__.get_vddc_lookup_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i)
  %tobool.not.i105.i = icmp eq i32 %call.i104.i, 0
  br i1 %tobool.not.i105.i, label %if.then.i106.i.if.end39.i_crit_edge, label %do.end.i108.i

if.then.i106.i.if.end39.i_crit_edge:              ; preds = %if.then.i106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

do.end.i108.i:                                    ; preds = %if.then.i106.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.64) #11
  br label %if.end39.i

do.end7.i109.i:                                   ; preds = %if.then33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1029 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i110.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1029, i32 noundef 3520, i32 noundef 44) #10
  %tobool10.not.i111.i = icmp eq ptr %call7.i.i.i110.i, null
  br i1 %tobool10.not.i111.i, label %do.end7.i109.i.if.end39.i_crit_edge, label %if.end12.i114.i

do.end7.i109.i.if.end39.i_crit_edge:              ; preds = %do.end7.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.end12.i114.i:                                  ; preds = %do.end7.i109.i
  %1030 = ptrtoint ptr %ucNumEntries.i102.i to i32
  call void @__asan_load1_noabort(i32 %1030)
  %1031 = load i8, ptr %ucNumEntries.i102.i, align 1
  %conv14.i112.i = zext i8 %1031 to i32
  %1032 = ptrtoint ptr %call7.i.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %1032)
  store i32 %conv14.i112.i, ptr %call7.i.i.i110.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1031)
  %cmp171.not.i113.i = icmp eq i8 %1031, 0
  br i1 %cmp171.not.i113.i, label %if.end12.i114.i.if.end39.i.thread_crit_edge, label %if.end12.i114.i.for.body.i120.i_crit_edge

if.end12.i114.i.for.body.i120.i_crit_edge:        ; preds = %if.end12.i114.i
  br label %for.body.i120.i

if.end12.i114.i.if.end39.i.thread_crit_edge:      ; preds = %if.end12.i114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.thread

for.body.i120.i:                                  ; preds = %for.body.i120.i.for.body.i120.i_crit_edge, %if.end12.i114.i.for.body.i120.i_crit_edge
  %i.02.i115.i = phi i32 [ %inc.i118.i, %for.body.i120.i.for.body.i120.i_crit_edge ], [ 0, %if.end12.i114.i.for.body.i120.i_crit_edge ]
  %arrayidx.i116.i = getelementptr %struct._ATOM_Vega10_Voltage_Lookup_Table, ptr %1026, i32 0, i32 2, i32 %i.02.i115.i
  %1033 = ptrtoint ptr %arrayidx.i116.i to i32
  call void @__asan_loadN_noabort(i32 %1033, i32 2)
  %1034 = load i16, ptr %arrayidx.i116.i, align 1
  %1035 = call i16 @llvm.bswap.i16(i16 %1034) #7
  %us_vdd.i117.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %call7.i.i.i110.i, i32 0, i32 1, i32 %i.02.i115.i, i32 1
  %1036 = ptrtoint ptr %us_vdd.i117.i to i32
  call void @__asan_store2_noabort(i32 %1036)
  store i16 %1035, ptr %us_vdd.i117.i, align 2
  %inc.i118.i = add nuw nsw i32 %i.02.i115.i, 1
  %exitcond.not.i119.i = icmp eq i32 %inc.i118.i, %conv14.i112.i
  br i1 %exitcond.not.i119.i, label %for.body.i120.i.if.end39.i.thread_crit_edge, label %for.body.i120.i.for.body.i120.i_crit_edge

for.body.i120.i.for.body.i120.i_crit_edge:        ; preds = %for.body.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i120.i

for.body.i120.i.if.end39.i.thread_crit_edge:      ; preds = %for.body.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.thread

if.end39.i:                                       ; preds = %do.end7.i109.i.if.end39.i_crit_edge, %do.end.i108.i, %if.then.i106.i.if.end39.i_crit_edge, %if.end31.i.if.end39.i_crit_edge
  %result.1.i = phi i32 [ %result.0.i, %if.end31.i.if.end39.i_crit_edge ], [ 1, %do.end.i108.i ], [ 1, %if.then.i106.i.if.end39.i_crit_edge ], [ -12, %do.end7.i109.i.if.end39.i_crit_edge ]
  %usVddciLookupTableOffset.i = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 36
  %1037 = ptrtoint ptr %usVddciLookupTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %1037, i32 2)
  %1038 = load i16, ptr %usVddciLookupTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1038)
  %tobool40.not.i = icmp eq i16 %1038, 0
  br i1 %tobool40.not.i, label %init_dpm_2_parameters.exit, label %if.end39.i.if.then41.i_crit_edge

if.end39.i.if.then41.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

if.end39.i.thread:                                ; preds = %for.body.i120.i.if.end39.i.thread_crit_edge, %if.end12.i114.i.if.end39.i.thread_crit_edge
  %1039 = ptrtoint ptr %vddmem_lookup_table.i to i32
  call void @__asan_store4_noabort(i32 %1039)
  store ptr %call7.i.i.i110.i, ptr %vddmem_lookup_table.i, align 4
  %usVddciLookupTableOffset.i212 = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i190, i32 0, i32 36
  %1040 = ptrtoint ptr %usVddciLookupTableOffset.i212 to i32
  call void @__asan_loadN_noabort(i32 %1040, i32 2)
  %1041 = load i16, ptr %usVddciLookupTableOffset.i212, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1041)
  %tobool40.not.i213 = icmp eq i16 %1041, 0
  br i1 %tobool40.not.i213, label %if.end39.i.thread.cleanup_crit_edge, label %if.end39.i.thread.if.then41.i_crit_edge

if.end39.i.thread.if.then41.i_crit_edge:          ; preds = %if.end39.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

if.end39.i.thread.cleanup_crit_edge:              ; preds = %if.end39.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41.i:                                      ; preds = %if.end39.i.thread.if.then41.i_crit_edge, %if.end39.i.if.then41.i_crit_edge
  %1042 = phi i16 [ %1041, %if.end39.i.thread.if.then41.i_crit_edge ], [ %1038, %if.end39.i.if.then41.i_crit_edge ]
  %1043 = call i16 @llvm.bswap.i16(i16 %1042) #7
  %conv43.i186 = zext i16 %1043 to i32
  %add44.i187 = add i32 %conv43.i186, %26
  %1044 = inttoptr i32 %add44.i187 to ptr
  %ucNumEntries.i124.i = getelementptr inbounds %struct._ATOM_Vega10_Voltage_Lookup_Table, ptr %1044, i32 0, i32 1
  %1045 = ptrtoint ptr %ucNumEntries.i124.i to i32
  call void @__asan_load1_noabort(i32 %1045)
  %1046 = load i8, ptr %ucNumEntries.i124.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1046)
  %cmp.not.i125.i = icmp eq i8 %1046, 0
  br i1 %cmp.not.i125.i, label %if.then.i128.i, label %do.end7.i131.i

if.then.i128.i:                                   ; preds = %if.then41.i
  %call.i126.i = call i32 @___ratelimit(ptr noundef nonnull @get_vddc_lookup_table._rs, ptr noundef nonnull @__func__.get_vddc_lookup_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126.i)
  %tobool.not.i127.i = icmp eq i32 %call.i126.i, 0
  br i1 %tobool.not.i127.i, label %if.then.i128.i.if.then108_crit_edge, label %do.end.i130.i

if.then.i128.i.if.then108_crit_edge:              ; preds = %if.then.i128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

do.end.i130.i:                                    ; preds = %if.then.i128.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.64) #11
  br label %if.then108

do.end7.i131.i:                                   ; preds = %if.then41.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1047 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i132.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1047, i32 noundef 3520, i32 noundef 44) #10
  %tobool10.not.i133.i = icmp eq ptr %call7.i.i.i132.i, null
  br i1 %tobool10.not.i133.i, label %do.end7.i131.i.if.then108_crit_edge, label %if.end12.i136.i

do.end7.i131.i.if.then108_crit_edge:              ; preds = %do.end7.i131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

if.end12.i136.i:                                  ; preds = %do.end7.i131.i
  %1048 = ptrtoint ptr %ucNumEntries.i124.i to i32
  call void @__asan_load1_noabort(i32 %1048)
  %1049 = load i8, ptr %ucNumEntries.i124.i, align 1
  %conv14.i134.i = zext i8 %1049 to i32
  %1050 = ptrtoint ptr %call7.i.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %1050)
  store i32 %conv14.i134.i, ptr %call7.i.i.i132.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1049)
  %cmp171.not.i135.i = icmp eq i8 %1049, 0
  br i1 %cmp171.not.i135.i, label %if.end12.i136.i.init_dpm_2_parameters.exit.thread206_crit_edge, label %if.end12.i136.i.for.body.i142.i_crit_edge

if.end12.i136.i.for.body.i142.i_crit_edge:        ; preds = %if.end12.i136.i
  br label %for.body.i142.i

if.end12.i136.i.init_dpm_2_parameters.exit.thread206_crit_edge: ; preds = %if.end12.i136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_dpm_2_parameters.exit.thread206

for.body.i142.i:                                  ; preds = %for.body.i142.i.for.body.i142.i_crit_edge, %if.end12.i136.i.for.body.i142.i_crit_edge
  %i.02.i137.i = phi i32 [ %inc.i140.i, %for.body.i142.i.for.body.i142.i_crit_edge ], [ 0, %if.end12.i136.i.for.body.i142.i_crit_edge ]
  %arrayidx.i138.i = getelementptr %struct._ATOM_Vega10_Voltage_Lookup_Table, ptr %1044, i32 0, i32 2, i32 %i.02.i137.i
  %1051 = ptrtoint ptr %arrayidx.i138.i to i32
  call void @__asan_loadN_noabort(i32 %1051, i32 2)
  %1052 = load i16, ptr %arrayidx.i138.i, align 1
  %1053 = call i16 @llvm.bswap.i16(i16 %1052) #7
  %us_vdd.i139.i = getelementptr %struct.phm_ppt_v1_voltage_lookup_table, ptr %call7.i.i.i132.i, i32 0, i32 1, i32 %i.02.i137.i, i32 1
  %1054 = ptrtoint ptr %us_vdd.i139.i to i32
  call void @__asan_store2_noabort(i32 %1054)
  store i16 %1053, ptr %us_vdd.i139.i, align 2
  %inc.i140.i = add nuw nsw i32 %i.02.i137.i, 1
  %exitcond.not.i141.i = icmp eq i32 %inc.i140.i, %conv14.i134.i
  br i1 %exitcond.not.i141.i, label %for.body.i142.i.init_dpm_2_parameters.exit.thread206_crit_edge, label %for.body.i142.i.for.body.i142.i_crit_edge

for.body.i142.i.for.body.i142.i_crit_edge:        ; preds = %for.body.i142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i142.i

for.body.i142.i.init_dpm_2_parameters.exit.thread206_crit_edge: ; preds = %for.body.i142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_dpm_2_parameters.exit.thread206

init_dpm_2_parameters.exit.thread206:             ; preds = %for.body.i142.i.init_dpm_2_parameters.exit.thread206_crit_edge, %if.end12.i136.i.init_dpm_2_parameters.exit.thread206_crit_edge
  %1055 = ptrtoint ptr %vddci_lookup_table.i to i32
  call void @__asan_store4_noabort(i32 %1055)
  store ptr %call7.i.i.i132.i, ptr %vddci_lookup_table.i, align 4
  br label %cleanup

init_dpm_2_parameters.exit:                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1.i)
  %cmp107 = icmp eq i32 %result.1.i, 0
  br i1 %cmp107, label %init_dpm_2_parameters.exit.cleanup_crit_edge, label %init_dpm_2_parameters.exit.if.then108_crit_edge

init_dpm_2_parameters.exit.if.then108_crit_edge:  ; preds = %init_dpm_2_parameters.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

init_dpm_2_parameters.exit.cleanup_crit_edge:     ; preds = %init_dpm_2_parameters.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then108:                                       ; preds = %init_dpm_2_parameters.exit.if.then108_crit_edge, %do.end7.i131.i.if.then108_crit_edge, %do.end.i130.i, %if.then.i128.i.if.then108_crit_edge
  %result.2.i205 = phi i32 [ %result.1.i, %init_dpm_2_parameters.exit.if.then108_crit_edge ], [ -12, %do.end7.i131.i.if.then108_crit_edge ], [ 1, %if.then.i128.i.if.then108_crit_edge ], [ 1, %do.end.i130.i ]
  %call109 = call i32 @___ratelimit(ptr noundef nonnull @vega10_pp_tables_initialize._rs.47, ptr noundef nonnull @__func__.vega10_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then108.cleanup_crit_edge, label %do.end114

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end114:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.50) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end114, %if.then108.cleanup_crit_edge, %init_dpm_2_parameters.exit.cleanup_crit_edge, %init_dpm_2_parameters.exit.thread206, %if.end39.i.thread.cleanup_crit_edge, %do.end98, %if.then92.cleanup_crit_edge, %do.end66, %if.then60.cleanup_crit_edge, %do.end34, %if.then28.cleanup_crit_edge, %do.end18, %if.then12.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ -1, %do.end18 ], [ -1, %if.then12.cleanup_crit_edge ], [ -1, %do.end34 ], [ -1, %if.then28.cleanup_crit_edge ], [ -22, %do.end66 ], [ -22, %if.then60.cleanup_crit_edge ], [ %result.14.i198, %do.end98 ], [ %result.14.i198, %if.then92.cleanup_crit_edge ], [ %result.2.i205, %do.end114 ], [ %result.2.i205, %if.then108.cleanup_crit_edge ], [ 0, %init_dpm_2_parameters.exit.cleanup_crit_edge ], [ 0, %init_dpm_2_parameters.exit.thread206 ], [ 0, %if.end39.i.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega10_pp_tables_uninitialize(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %0 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pptable, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  %vdd_dep_on_mclk = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %vdd_dep_on_mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdd_dep_on_mclk, align 4
  tail call void @kfree(ptr noundef %6) #7
  %7 = ptrtoint ptr %vdd_dep_on_mclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vdd_dep_on_mclk, align 4
  %valid_mclk_values = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %valid_mclk_values to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %valid_mclk_values, align 4
  tail call void @kfree(ptr noundef %9) #7
  %10 = ptrtoint ptr %valid_mclk_values to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %valid_mclk_values, align 4
  %valid_sclk_values = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %valid_sclk_values to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %valid_sclk_values, align 4
  tail call void @kfree(ptr noundef %12) #7
  %13 = ptrtoint ptr %valid_sclk_values to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %valid_sclk_values, align 4
  %vddc_lookup_table = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %vddc_lookup_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vddc_lookup_table, align 4
  tail call void @kfree(ptr noundef %15) #7
  %16 = ptrtoint ptr %vddc_lookup_table to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %vddc_lookup_table, align 4
  %vddmem_lookup_table = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %vddmem_lookup_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vddmem_lookup_table, align 4
  tail call void @kfree(ptr noundef %18) #7
  %19 = ptrtoint ptr %vddmem_lookup_table to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vddmem_lookup_table, align 4
  %vddci_lookup_table = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 21
  %20 = ptrtoint ptr %vddci_lookup_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vddci_lookup_table, align 4
  tail call void @kfree(ptr noundef %21) #7
  %22 = ptrtoint ptr %vddci_lookup_table to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %vddci_lookup_table, align 4
  %ppm_parameter_table = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %ppm_parameter_table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ppm_parameter_table, align 4
  tail call void @kfree(ptr noundef %24) #7
  %25 = ptrtoint ptr %ppm_parameter_table to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ppm_parameter_table, align 4
  %mm_dep_table = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %mm_dep_table to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mm_dep_table, align 4
  tail call void @kfree(ptr noundef %27) #7
  %28 = ptrtoint ptr %mm_dep_table to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %mm_dep_table, align 4
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cac_dtp_table, align 4
  tail call void @kfree(ptr noundef %30) #7
  %31 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cac_dtp_table, align 4
  %cac_dtp_table11 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %32 = ptrtoint ptr %cac_dtp_table11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cac_dtp_table11, align 4
  tail call void @kfree(ptr noundef %33) #7
  %34 = ptrtoint ptr %cac_dtp_table11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %cac_dtp_table11, align 4
  %tdp_table = getelementptr inbounds %struct.phm_ppt_v2_information, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %tdp_table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tdp_table, align 4
  tail call void @kfree(ptr noundef %36) #7
  %37 = ptrtoint ptr %tdp_table to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %tdp_table, align 4
  %38 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pptable, align 4
  tail call void @kfree(ptr noundef %39) #7
  %40 = ptrtoint ptr %pptable to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %pptable, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_get_number_of_powerplay_table_entries(ptr nocapture noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #7
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %size.i, align 2, !annotation !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #7
  %1 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev.i, align 1, !annotation !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #7
  %2 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev.i, align 1, !annotation !185
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %3 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %get_powerplay_table.exit, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  br label %do.body8

get_powerplay_table.exit:                         ; preds = %entry
  %5 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %6, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #7
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %9 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %10 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %if.then, label %get_powerplay_table.exit.do.body8_crit_edge

get_powerplay_table.exit.do.body8_crit_edge:      ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

if.then:                                          ; preds = %get_powerplay_table.exit
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @vega10_get_number_of_powerplay_table_entries._rs, ptr noundef nonnull @__func__.vega10_get_number_of_powerplay_table_entries) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.body8:                                         ; preds = %get_powerplay_table.exit.do.body8_crit_edge, %get_powerplay_table.exit.thread
  %table_address.0.i32 = phi ptr [ %4, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.body8_crit_edge ]
  %format_revision = getelementptr inbounds %struct.atom_common_table_header, ptr %table_address.0.i32, i32 0, i32 1
  %11 = ptrtoint ptr %format_revision to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %format_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp9 = icmp ugt i8 %12, 7
  br i1 %cmp9, label %do.end23, label %if.then11

if.then11:                                        ; preds = %do.body8
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @vega10_get_number_of_powerplay_table_entries._rs.4, ptr noundef nonnull @__func__.vega10_get_number_of_powerplay_table_entries) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

do.end23:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %table_address.0.i32 to i32
  %usStateArrayOffset = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i32, i32 0, i32 22
  %14 = ptrtoint ptr %usStateArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usStateArrayOffset, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv24 = zext i16 %16 to i32
  %add = add i32 %conv24, %13
  %17 = inttoptr i32 %add to ptr
  %ucNumEntries = getelementptr inbounds %struct._ATOM_Vega10_State_Array, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ucNumEntries to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucNumEntries, align 1
  %conv25 = zext i8 %19 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %if.then11.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv25, %do.end23 ], [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.end17 ], [ -1, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_get_powerplay_table_entry(ptr noundef %hwmgr, i32 noundef %entry_index, ptr noundef %power_state, ptr nocapture noundef readonly %call_back_func) local_unnamed_addr #0 align 64 {
entry:
  %size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #7
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %size.i, align 2, !annotation !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #7
  %1 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev.i, align 1, !annotation !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #7
  %2 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev.i, align 1, !annotation !185
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %3 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %get_powerplay_table.exit, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  br label %do.end8

get_powerplay_table.exit:                         ; preds = %entry
  %5 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %6, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #7
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %9 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %10 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %get_powerplay_table.exit.do.end8_crit_edge

get_powerplay_table.exit.do.end8_crit_edge:       ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.then:                                          ; preds = %get_powerplay_table.exit
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @vega10_get_powerplay_table_entry._rs, ptr noundef nonnull @__func__.vega10_get_powerplay_table_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end8:                                          ; preds = %get_powerplay_table.exit.do.end8_crit_edge, %get_powerplay_table.exit.thread
  %table_address.0.i99 = phi ptr [ %4, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.end8_crit_edge ]
  %bios_index = getelementptr inbounds %struct.pp_power_state, ptr %power_state, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %bios_index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %entry_index, ptr %bios_index, align 4
  %format_revision = getelementptr inbounds %struct.atom_common_table_header, ptr %table_address.0.i99, i32 0, i32 1
  %12 = ptrtoint ptr %format_revision to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %format_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cmp = icmp ugt i8 %13, 7
  br i1 %cmp, label %if.then10, label %do.end8.land.lhs.true_crit_edge

do.end8.land.lhs.true_crit_edge:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then10:                                        ; preds = %do.end8
  %14 = ptrtoint ptr %table_address.0.i99 to i32
  %usStateArrayOffset = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i99, i32 0, i32 22
  %15 = ptrtoint ptr %usStateArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usStateArrayOffset, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv11 = zext i16 %17 to i32
  %add = add i32 %conv11, %14
  %18 = inttoptr i32 %add to ptr
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp15.not = icmp eq i16 %16, 0
  br i1 %cmp15.not, label %if.then17, label %do.body30

if.then17:                                        ; preds = %if.then10
  %call18 = call i32 @___ratelimit(ptr noundef nonnull @vega10_get_powerplay_table_entry._rs.8, ptr noundef nonnull @__func__.vega10_get_powerplay_table_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %do.end23

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #11
  br label %cleanup

do.body30:                                        ; preds = %if.then10
  %ucNumEntries = getelementptr inbounds %struct._ATOM_Vega10_State_Array, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ucNumEntries to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ucNumEntries, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp32.not = icmp eq i8 %20, 0
  br i1 %cmp32.not, label %if.then34, label %do.body47

if.then34:                                        ; preds = %do.body30
  %call35 = call i32 @___ratelimit(ptr noundef nonnull @vega10_get_powerplay_table_entry._rs.12, ptr noundef nonnull @__func__.vega10_get_powerplay_table_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.cleanup_crit_edge, label %do.end40

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #11
  br label %cleanup

do.body47:                                        ; preds = %do.body30
  %conv31 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31, i32 %entry_index)
  %cmp50.not = icmp ult i32 %conv31, %entry_index
  br i1 %cmp50.not, label %if.then52, label %if.end67

if.then52:                                        ; preds = %do.body47
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @vega10_get_powerplay_table_entry._rs.16, ptr noundef nonnull @__func__.vega10_get_powerplay_table_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.cleanup_crit_edge, label %do.end58

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end67:                                         ; preds = %do.body47
  %arrayidx = getelementptr %struct._ATOM_Vega10_State_Array, ptr %18, i32 0, i32 2, i32 %entry_index
  %usClassification = getelementptr %struct._ATOM_Vega10_State_Array, ptr %18, i32 0, i32 2, i32 %entry_index, i32 6
  %21 = ptrtoint ptr %usClassification to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %usClassification, align 1
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %usClassification2 = getelementptr %struct._ATOM_Vega10_State_Array, ptr %18, i32 0, i32 2, i32 %entry_index, i32 8
  %24 = ptrtoint ptr %usClassification2 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %usClassification2, align 1
  %26 = lshr i16 %25, 8
  %conv.i96 = zext i16 %23 to i32
  %and.i = lshr i32 %conv.i96, 3
  %and26.i = lshr i32 %conv.i96, 1
  %27 = and i32 %and26.i, 2048
  %28 = and i16 %26, 1
  %29 = zext i16 %28 to i32
  %30 = shl nuw nsw i32 %29, 18
  %31 = and i32 %and.i, 31
  %32 = or i32 %31, %27
  %33 = or i32 %32, %30
  %call66 = call i32 %call_back_func(ptr noundef %hwmgr, ptr noundef %arrayidx, ptr noundef %power_state, ptr noundef nonnull %table_address.0.i99, i32 noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool68.not = icmp eq i32 %call66, 0
  br i1 %tobool68.not, label %if.end67.land.lhs.true_crit_edge, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67.land.lhs.true_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end67.land.lhs.true_crit_edge, %do.end8.land.lhs.true_crit_edge
  %flags = getelementptr inbounds %struct.pp_power_state, ptr %power_state, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %land.lhs.true.cleanup_crit_edge, label %if.then71

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %36 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwmgr_func, align 4
  %patch_boot_state = getelementptr inbounds %struct.pp_hwmgr_func, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %patch_boot_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %patch_boot_state, align 4
  %hardware = getelementptr inbounds %struct.pp_power_state, ptr %power_state, i32 0, i32 11
  %call72 = call i32 %39(ptr noundef %hwmgr, ptr noundef %hardware) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %land.lhs.true.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %do.end58, %if.then52.cleanup_crit_edge, %do.end40, %if.then34.cleanup_crit_edge, %do.end23, %if.then17.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.end23 ], [ -1, %if.then17.cleanup_crit_edge ], [ -1, %do.end40 ], [ -1, %if.then34.cleanup_crit_edge ], [ -1, %do.end58 ], [ -1, %if.then52.cleanup_crit_edge ], [ %call66, %if.end67.cleanup_crit_edge ], [ %call72, %if.then71 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega10_baco_set_cap(ptr nocapture noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #7
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %size.i, align 2, !annotation !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #7
  %1 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev.i, align 1, !annotation !185
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #7
  %2 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev.i, align 1, !annotation !185
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %3 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %get_powerplay_table.exit, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  br label %do.end7

get_powerplay_table.exit:                         ; preds = %entry
  %5 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %6, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #7
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %9 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %10 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %if.then, label %get_powerplay_table.exit.do.end7_crit_edge

get_powerplay_table.exit.do.end7_crit_edge:       ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %get_powerplay_table.exit
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @vega10_baco_set_cap._rs, ptr noundef nonnull @__func__.vega10_baco_set_cap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end7:                                          ; preds = %get_powerplay_table.exit.do.end7_crit_edge, %get_powerplay_table.exit.thread
  %table_address.0.i35 = phi ptr [ %4, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.end7_crit_edge ]
  %call8 = call fastcc i32 @check_powerplay_tables(ptr noundef nonnull %table_address.0.i35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp eq i32 %call8, 0
  br i1 %cmp10, label %do.end23, label %if.then11

if.then11:                                        ; preds = %do.end7
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @vega10_baco_set_cap._rs.20, ptr noundef nonnull @__func__.vega10_baco_set_cap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #11
  br label %cleanup

do.end23:                                         ; preds = %do.end7
  %ulPlatformCaps = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %table_address.0.i35, i32 0, i32 6
  %11 = ptrtoint ptr %ulPlatformCaps to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ulPlatformCaps, align 1
  %13 = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp24.not = icmp eq i32 %13, 0
  %arrayidx.i8.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i8.i, align 4
  br i1 %cmp24.not, label %if.else.i, label %if.then.i32

if.then.i32:                                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %15, 8
  %16 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i, ptr %arrayidx.i8.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i.i = and i32 %15, -9
  %17 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and1.i.i, ptr %arrayidx.i8.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i32, %do.end17, %if.then11.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.end17 ], [ -1, %if.then11.cleanup_crit_edge ], [ 0, %if.then.i32 ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_powerplay_tables(ptr noundef %powerplay_table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %powerplay_table to i32
  %usStateArrayOffset = getelementptr inbounds %struct._ATOM_Vega10_POWERPLAYTABLE, ptr %powerplay_table, i32 0, i32 22
  %1 = ptrtoint ptr %usStateArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %usStateArrayOffset, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  %add = add i32 %conv, %0
  %4 = inttoptr i32 %add to ptr
  %format_revision = getelementptr inbounds %struct.atom_common_table_header, ptr %powerplay_table, i32 0, i32 1
  %5 = ptrtoint ptr %format_revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %format_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp = icmp ugt i8 %6, 7
  br i1 %cmp, label %do.body9, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool11.not = icmp eq i16 %2, 0
  br i1 %tobool11.not, label %if.then12, label %do.body25

if.then12:                                        ; preds = %do.body9
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs.66, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %if.then12.cleanup.sink.split_crit_edge

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body25:                                        ; preds = %do.body9
  %7 = ptrtoint ptr %powerplay_table to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %powerplay_table, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp28.not = icmp eq i16 %8, 0
  br i1 %cmp28.not, label %if.then30, label %do.body43

if.then30:                                        ; preds = %do.body25
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs.70, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.cleanup_crit_edge, label %if.then30.cleanup.sink.split_crit_edge

if.then30.cleanup.sink.split_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body43:                                        ; preds = %do.body25
  %ucNumEntries = getelementptr inbounds %struct._ATOM_Vega10_State_Array, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %ucNumEntries to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ucNumEntries, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp45.not = icmp eq i8 %10, 0
  br i1 %cmp45.not, label %if.then47, label %do.body43.cleanup_crit_edge

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %do.body43
  %call48 = tail call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs.73, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.cleanup_crit_edge, label %if.then47.cleanup.sink.split_crit_edge

if.then47.cleanup.sink.split_crit_edge:           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then47.cleanup.sink.split_crit_edge, %if.then30.cleanup.sink.split_crit_edge, %if.then12.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.56.sink = phi ptr [ @.str.65, %if.then.cleanup.sink.split_crit_edge ], [ @.str.69, %if.then12.cleanup.sink.split_crit_edge ], [ @.str.56, %if.then30.cleanup.sink.split_crit_edge ], [ @.str.56, %if.then47.cleanup.sink.split_crit_edge ]
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.56.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then47.cleanup_crit_edge, %do.body43.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then.cleanup_crit_edge ], [ -1, %if.then12.cleanup_crit_edge ], [ -1, %if.then30.cleanup_crit_edge ], [ -1, %if.then47.cleanup_crit_edge ], [ 0, %do.body43.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smu_atom_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !157, !159, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @vega10_pptable_funcs, !1, !"vega10_pptable_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1244, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1254, i32 2}
!4 = !{ptr @vega10_get_number_of_powerplay_table_entries._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.vega10_get_number_of_powerplay_table_entries, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vega10_get_number_of_powerplay_table_entries._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vega10_get_number_of_powerplay_table_entries._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vega10_get_number_of_powerplay_table_entries._rs.4, !12, !"_rs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1256, i32 2}
!13 = !{ptr @vega10_get_number_of_powerplay_table_entries._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @vega10_get_number_of_powerplay_table_entries._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vega10_get_powerplay_table_entry._rs, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1306, i32 2}
!18 = !{ptr @__func__.vega10_get_powerplay_table_entry, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vega10_get_powerplay_table_entry._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @vega10_get_powerplay_table_entry._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @vega10_get_powerplay_table_entry._rs.8, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1316, i32 3}
!23 = !{ptr @vega10_get_powerplay_table_entry._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @vega10_get_powerplay_table_entry._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vega10_get_powerplay_table_entry._rs.12, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1319, i32 3}
!28 = !{ptr @vega10_get_powerplay_table_entry._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vega10_get_powerplay_table_entry._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vega10_get_powerplay_table_entry._rs.16, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1322, i32 3}
!33 = !{ptr @vega10_get_powerplay_table_entry._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @vega10_get_powerplay_table_entry._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @vega10_baco_set_cap._rs, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1350, i32 2}
!38 = !{ptr @__func__.vega10_baco_set_cap, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vega10_baco_set_cap._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @vega10_baco_set_cap._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @vega10_baco_set_cap._rs.20, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1355, i32 2}
!43 = !{ptr @vega10_baco_set_cap._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vega10_baco_set_cap._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vega10_pp_tables_initialize._rs, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1155, i32 2}
!48 = !{ptr @__func__.vega10_pp_tables_initialize, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vega10_pp_tables_initialize._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @vega10_pp_tables_initialize._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vega10_pp_tables_initialize._rs.25, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1160, i32 2}
!54 = !{ptr @vega10_pp_tables_initialize._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @vega10_pp_tables_initialize._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @vega10_pp_tables_initialize._rs.28, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1165, i32 2}
!58 = !{ptr @vega10_pp_tables_initialize._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @vega10_pp_tables_initialize._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1171, i32 2}
!62 = !{ptr @vega10_pp_tables_initialize._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @vega10_pp_tables_initialize._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @vega10_pp_tables_initialize._rs.35, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1176, i32 2}
!67 = !{ptr @vega10_pp_tables_initialize._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @vega10_pp_tables_initialize._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1181, i32 2}
!72 = !{ptr @vega10_pp_tables_initialize._entry.40, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vega10_pp_tables_initialize._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @vega10_pp_tables_initialize._rs.43, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1186, i32 2}
!77 = !{ptr @vega10_pp_tables_initialize._entry.44, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @vega10_pp_tables_initialize._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @vega10_pp_tables_initialize._rs.47, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1191, i32 2}
!82 = !{ptr @vega10_pp_tables_initialize._entry.48, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @vega10_pp_tables_initialize._entry_ptr.49, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.50, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @init_thermal_controller._rs, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 133, i32 2}
!87 = !{ptr @__func__.init_thermal_controller, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @init_thermal_controller._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @init_thermal_controller._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 171, i32 3}
!93 = !{ptr @init_thermal_controller._entry.53, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @init_thermal_controller._entry_ptr.54, !92, !"_entry_ptr", i1 false, i1 false}
!95 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @get_mm_clock_voltage_table._rs, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 351, i32 2}
!98 = !{ptr @__func__.get_mm_clock_voltage_table, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @get_mm_clock_voltage_table._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @get_mm_clock_voltage_table._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @get_socclk_voltage_dependency_table._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 574, i32 2}
!104 = !{ptr @__func__.get_socclk_voltage_dependency_table, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @get_socclk_voltage_dependency_table._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @get_socclk_voltage_dependency_table._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @get_gfxclk_voltage_dependency_table._rs, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 641, i32 2}
!109 = !{ptr @__func__.get_gfxclk_voltage_dependency_table, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @get_gfxclk_voltage_dependency_table._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @get_gfxclk_voltage_dependency_table._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @get_gfxclk_voltage_dependency_table._rs.57, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 683, i32 3}
!114 = !{ptr @get_gfxclk_voltage_dependency_table._entry.58, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @get_gfxclk_voltage_dependency_table._entry_ptr.59, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @get_pix_clk_voltage_dependency_table._rs, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 703, i32 2}
!119 = !{ptr @__func__.get_pix_clk_voltage_dependency_table, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @get_pix_clk_voltage_dependency_table._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @get_pix_clk_voltage_dependency_table._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @get_dcefclk_voltage_dependency_table._rs, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 739, i32 2}
!124 = !{ptr @__func__.get_dcefclk_voltage_dependency_table, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @get_dcefclk_voltage_dependency_table._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @get_dcefclk_voltage_dependency_table._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @get_mclk_voltage_dependency_table._rs, !128, !"_rs", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 604, i32 2}
!129 = !{ptr @__func__.get_mclk_voltage_dependency_table, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @get_mclk_voltage_dependency_table._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @get_mclk_voltage_dependency_table._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @get_pcie_table._rs, !133, !"_rs", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 794, i32 2}
!134 = !{ptr @__func__.get_pcie_table, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @get_pcie_table._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @get_pcie_table._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 807, i32 3}
!139 = !{ptr @get_pcie_table._entry.61, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @get_pcie_table._entry_ptr.63, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @get_hard_limits._rs, !142, !"_rs", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 832, i32 2}
!143 = !{ptr @__func__.get_hard_limits, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @get_hard_limits._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @get_hard_limits._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"_rs", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 854, i32 2}
!148 = !{ptr @__func__.get_valid_clk, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @get_valid_clk._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @get_valid_clk._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @get_vddc_lookup_table._rs, !152, !"_rs", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 1042, i32 2}
!153 = !{ptr @__func__.get_vddc_lookup_table, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @get_vddc_lookup_table._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @get_vddc_lookup_table._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @check_powerplay_tables._rs, !158, !"_rs", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 76, i32 2}
!159 = !{ptr @__func__.check_powerplay_tables, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @check_powerplay_tables._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @check_powerplay_tables._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @check_powerplay_tables._rs.66, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 79, i32 2}
!165 = !{ptr @check_powerplay_tables._entry.67, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @check_powerplay_tables._entry_ptr.68, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @check_powerplay_tables._rs.70, !169, !"_rs", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 81, i32 2}
!170 = !{ptr @check_powerplay_tables._entry.71, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @check_powerplay_tables._entry_ptr.72, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @check_powerplay_tables._rs.73, !173, !"_rs", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c", i32 83, i32 2}
!174 = !{ptr @check_powerplay_tables._entry.74, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @check_powerplay_tables._entry_ptr.75, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{!"auto-init"}
